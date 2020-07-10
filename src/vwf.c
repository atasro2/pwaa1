#include "global.h"
#include "script.h"

#define eTestArea ((struct NewTextBoxCharacter *)(EWRAM_START+0x29D0))
#define eTestArea2 ((struct NewTextBoxCharacter *)(EWRAM_START+0x6000))

#define VWF_RENDERER (struct FontRenderData *)(EWRAM_START+0x5000)
#define VWF_CHARDATA (struct NewTextBoxCharacter *)(EWRAM_START+0x5080)

typedef u8 Glyph[256]; // The font in the translation is 8bpp

struct FontRenderData {
	u32 characterCode;
	u32 xCol;
	u32 yRow;
	u32 color;
	
	u32 myCode;
	Glyph const *arialGlyphsAddr;
	u32 const *myWidthAddr; // Unused
	u32 myWidth;

	u32 x;
	u32 y;
	u32 tileNum;
	u32 tileXOfs; // Pixel offset into the current tile (0 thru 7)
	u32 tileYOfs;

	bool32 oamNecessary;
	u32 oamBaseTile;
	u32 oamNum;

	u32 permanentXPos;
	u32 paletteColor;

	u32 fsBaseTile;
	u32 fsBaseOamNum;
	u32 fsCurLine;

	u32 saveCharUse;
	struct NewTextBoxCharacter *saveCharCounter;
	bool32 fsUsed;
	
	bool32 lineHasChanged;
	u32 soundCueCounter;
	// ScriptContext *gameRamBase3; -- this is a pointer to gScriptContext
};

struct NewTextBoxCharacter {
	u32 charCode;
	u32 xPos;
	u32 yPos;
	u32 color;
};

extern Glyph const gArialGlyphs[0xE0];
extern u32 const gArialGlyphWidths[0xE0];

void PutVwfCharInTextbox(u32 decodedChar, u32 y, u32 x) {
	// BEGIN
	struct FontRenderData *renderer = VWF_RENDERER;
	struct ScriptContext *ctx = &gScriptContext;
	struct NewTextBoxCharacter *newTBC = VWF_CHARDATA;
	
	renderer->lineHasChanged = (renderer->yRow != y);
	
	renderer->characterCode = decodedChar;
	renderer->xCol = x;
	renderer->yRow = y;
	// renderer->gameRamBase3 = (u32)&gScriptContext;
	
	renderer->color = ctx->textColor;
	
	if ((ctx->textColor >> 4) == 1) {
		renderer->saveCharUse = 2;
	} else {
		renderer->saveCharUse = 0;
	}
	
	if (renderer->yRow == 255) {
		renderer->saveCharUse = 1;
		// r6 = VWF_CHARDATA
		renderer->saveCharCounter = newTBC;
refreshLoop:
		if (newTBC->charCode == 0) {
			// RedrawTextboxCharacters ends here.
			return;
		}
		// 0x6A0 is the first custom/ASCII character
		renderer->characterCode = (newTBC->charCode + 0x6A0 - 32);
		renderer->xCol = newTBC->xPos;
		renderer->yRow = newTBC->yPos;
		renderer->color = newTBC->color;
	}
	
// Blit function

	if (renderer->characterCode < 0x600) {
		PutCharInTextbox(decodedChar, y, x);
		return;
	}
	renderer->myCode = renderer->characterCode - 0x6A0;
	
	if (renderer->xCol == 0 || renderer->lineHasChanged) {
		renderer->permanentXPos = 0;
		if (renderer->yRow == 0) {
			renderer->soundCueCounter = 0;
			if (renderer->saveCharUse == 0) {
				renderer->saveCharCounter = newTBC;
			}
		}
		if (renderer->yRow == 2) {
			renderer->fsUsed = 1;
			renderer->fsBaseTile = 128;
			renderer->oamNum = 32;
			renderer->fsBaseOamNum = 32;
			renderer->fsCurLine = 2;
		}
	}
	if ((renderer->yRow >= 2) && (renderer->fsCurLine != renderer->yRow)) {
		renderer->fsCurLine = renderer->yRow;
		renderer->fsBaseOamNum = renderer->oamNum + 1;
		renderer->fsBaseTile = (renderer->oamNum + 1) * 4;
	}
	
	renderer->oamNecessary = 0;
	renderer->arialGlyphsAddr = &(gArialGlyphs[renderer->myCode]);
	// renderer->myWidthAddr = &gArialGlyphWidths[renderer->myCode];
	renderer->myWidth = gArialGlyphWidths[renderer->myCode];
	
	switch (renderer->color & 0xF) {
		case 0: renderer->paletteColor = 3; break;
		case 1: renderer->paletteColor = 6; break;
		case 2: renderer->paletteColor = 9; break;
		case 3: renderer->paletteColor = 12; break;
	}
	
	if (renderer->saveCharUse == 0) {
		renderer->saveCharCounter->charCode = renderer->myCode + 32;
		renderer->saveCharCounter->xPos = renderer->xCol;
		renderer->saveCharCounter->yPos = renderer->yRow;
		renderer->saveCharCounter->color = renderer->color;
		renderer->saveCharCounter++;
		renderer->saveCharCounter->charCode = 0;
		renderer->saveCharCounter->xPos = 0;
		renderer->saveCharCounter->yPos = 0;
		renderer->saveCharCounter->color = 0;
	}
	
	// fill loop
	for (y = 0; y < 16; y++) {
		for (x = renderer->permanentXPos; x - renderer->permanentXPos < renderer->myWidth; x++) {
			// tile numbers go
			// 0 1
			// 2 3
			// meaning 4 tiles per 16x16 OAM
			u32 tileNum;
			u32 *r5;
			u8 r6;
			u16 numBitsIntoTile;
			
			if (renderer->yRow >= 2) {
				tileNum = renderer->fsBaseTile;
			} else {
				tileNum = renderer->yRow * 16 * 4;
			}
			tileNum += (x >> 4) * 4;
			if ((x & 0xF) >= 8)
				tileNum += 1;
			if (y >= 8)
				tileNum += 2;
			
			renderer->tileNum = tileNum;
			renderer->tileXOfs = x & 7;
			renderer->tileYOfs = y & 7;
			
			if (((x & 0xF) == 0) && !renderer->oamNecessary) {
                u32 *p;
				renderer->oamBaseTile = tileNum;
				renderer->oamNum = tileNum >> 2;
				renderer->oamNecessary = 1;
				
				// 32 bytes in one 4bpp tile
				p = (u32*)(OBJ_VRAM0 + renderer->tileNum * 32);
				while (p != (u32*)(OBJ_VRAM0 + renderer->tileNum * 32 + 128)) {
					*(p++) = 0;
				}
			}
			
			// Write to VRAM
			r5 = (u32*)(OBJ_VRAM0 + renderer->tileNum*32 + renderer->tileYOfs*4);
			r6 = (*renderer->arialGlyphsAddr)[y*16 + (x - renderer->permanentXPos)];
			numBitsIntoTile = renderer->tileXOfs*4;
			// Clear the existing pixel
			// r0 = ((0xF << r2) ^ 0xFFFFFFFF) & *r5;
			*r5 &= (0xF << numBitsIntoTile) ^ 0xFFFFFFFF;
			if (r6) {
				*r5 |= renderer->paletteColor << numBitsIntoTile;
			}
		}
	}
    eTestArea[renderer->xCol + renderer->yRow*16] = *newTBC;
    eTestArea[renderer->xCol + renderer->yRow*16].charCode |= 0x80000000;
	if (renderer->oamNecessary) {
		// Generate a TextBoxCharacter, which is now just used as a glorified OAM thing
		struct TextBoxCharacter *r6 = &gTextBoxCharacters[renderer->oamNum];
		int r0 = 0;
		int r2;
		r6->state = renderer->characterCode | 0x8000;
		r6->objAttr2 = renderer->oamBaseTile | 0x400;
		
		r2 = renderer->oamNum;
		
		if (renderer->yRow >= 2) {
			r2 -= renderer->fsBaseOamNum;
			r0 += 4;
		}
		r0 += (r2 & 0xF) << 4;
		r6->x = r0;
		
		// r2 = renderer->yRow;
		r0 = renderer->yRow * 18;
		if (renderer->yRow >= 2) {
			r0 -= 36;
		} else if (renderer->fsUsed && renderer->saveCharUse == 1) {
			r0 += 12;
		}
		r6->y = r0;
		
		// The assembly also zeroes out the struct's padding
		r6->color = 0;
	}
	
	renderer->permanentXPos += renderer->myWidth;
	
	// If it's in typewriter mode, make the sound only play every other non-space character
	if (ctx->currentSoundCue == 2 && renderer->color == 3) {
		if ((renderer->characterCode == (0x720 - 0x80)) || ((renderer->soundCueCounter ^= 1) == 1)) {
			ctx->currentToken = 0xFF; // old space - 0x80	
		}
	}
	
	if (renderer->saveCharUse == 1) {
		renderer->saveCharCounter = ++newTBC;
		goto refreshLoop;
	}
}
