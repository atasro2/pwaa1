#include "global.h"
#include "script.h"
#include "ewram.h"

#define VWF_RENDERER (struct FontRenderData *)(EWRAM_START+0x5000)
#define VWF_CHARDATA (struct NewTextBoxCharacter *)(EWRAM_START+0x5080)

typedef u8 Glyph[256]; // The font in the translation is 8bpp

struct FontRenderData {
	struct NewTextBoxCharacter *saveCharCounter;
	
    Glyph const *arialGlyphsAddr;

	u16 characterCode;
	u16 xCol;
	u16 yRow;
	
	s16 xOffset;	
	u32 x;
	u32 y;
	u32 tileNum;
	u32 tileXOfs; // Pixel offset into the current tile (0 thru 7)
	u32 tileYOfs;

	u32 oamBaseTile;
	u32 oamNum;

	u32 permanentXPos;

	u32 fsBaseTile;
	u32 fsBaseOamNum;
	u32 fsCurLine;

	bool8 oamNecessary;
	bool8 saveCharUse;
	bool8 fsUsed;
	
	u8 soundCueCounter;
	// ScriptContext *gameRamBase3; -- this is a pointer to gScriptContext
};

struct NewTextBoxCharacter {
    u16 charCode:12;
    u16 color:4;
	u8 xPos;
	u8 yPos;
};

extern Glyph const gArialGlyphs[0xE0];
extern u32 const gArialGlyphWidths[0xE0];

void SaveVWFCharacters(void)
{
    struct NewTextBoxCharacter * charBuffer = (struct NewTextBoxCharacter *)&gSaveDataBuffer.textBoxCharacters;
    struct NewTextBoxCharacter * nCharacters = VWF_CHARDATA;
    DmaFill16(3, 0, gTextBoxCharacters, sizeof(gTextBoxCharacters));
    nCharacters--;
    do
    {
        nCharacters++;
        DmaCopy16(3, nCharacters, charBuffer, sizeof(struct NewTextBoxCharacter));
        charBuffer++;
    }
    while(nCharacters->charCode != 0xFFF);
}

void RedrawVWFCharacters(void)
{
    u32 oldColor = gScriptContext.textColor;
    struct NewTextBoxCharacter * nCharacters = VWF_CHARDATA;
    while(nCharacters->charCode != 0xFFF)
    {
        gScriptContext.textColor = nCharacters->color;
        PutVwfCharInTextbox(nCharacters->charCode, nCharacters->yPos, nCharacters->xPos);
        nCharacters++;
    }
    gScriptContext.textColor = oldColor;
}

void RedrawVWFCharactersFromSave(void)
{
    u32 oldColor = gScriptContext.textColor;
	u32 oldY = 0;
    struct NewTextBoxCharacter * nCharacters = (struct NewTextBoxCharacter *)&gSaveDataBuffer.textBoxCharacters;
	DmaFill16(3, 0, gTextBoxCharacters, sizeof(gTextBoxCharacters));
    if(gSaveDataBuffer.textBoxCharacters[0].state & 0x8000 || gSaveDataBuffer.textBoxCharacters[0].objAttr2 & 0x400)
	{
		u8 * ptr = (u8 *)&gSaveDataBuffer.textBoxCharacters;
		if(ptr[9] == 0 && ptr[10] == 0 && ptr[11] == 0)
			return;
	}
    if(gScriptContext.unk0 & 4)
		gScriptContext.fullscreenTextX = 0;
	while(nCharacters->charCode != 0xFFF)
    {
		if(nCharacters->yPos < 2)
		{
			if(gScriptContext.unk0 & 4)
				gScriptContext.unk0 &= ~4;
		}
		else
		{
			if(oldY != nCharacters->yPos)
				gScriptContext.fullscreenTextX = 0;
			if(!(gScriptContext.unk0 & 4))
				gScriptContext.unk0 |= 4;
		}
        gScriptContext.textColor = nCharacters->color;
        PutVwfCharInTextbox(nCharacters->charCode, nCharacters->yPos, nCharacters->xPos);
		gScriptContext.fullscreenTextX++;
		oldY = nCharacters->yPos;
        nCharacters++;
    }
    gScriptContext.textColor = oldColor;
}

void PutVwfCharInTextbox(u32 charCode, u32 y, u32 x) {
	// BEGIN
	struct FontRenderData *renderer = VWF_RENDERER;
	struct ScriptContext *ctx = &gScriptContext;
	struct NewTextBoxCharacter *newTBC = VWF_CHARDATA;
    bool32 lineHasChanged = renderer->yRow != y;
    u32 processedCharCode;
    u32 characterWidth;

	if(renderer->saveCharCounter == NULL)
		renderer->saveCharCounter = newTBC;
	
	renderer->characterCode = charCode;
	renderer->xCol = x;
	renderer->yRow = y;
	
    renderer->saveCharUse = !(gMain.process[GAME_PROCESS] == 0xA);
    
    if (charCode < 0x600) {
        if (renderer->xCol == 0 || lineHasChanged) {
		    if (renderer->yRow == 0) {
                if (renderer->saveCharUse) {
                    renderer->saveCharCounter = newTBC;
                }
		    }
        }
		PutCharInTextbox(charCode, y, x);
        if (renderer->saveCharUse) {
            renderer->saveCharCounter->charCode = renderer->characterCode;
            renderer->saveCharCounter->xPos = renderer->xCol;
            renderer->saveCharCounter->yPos = renderer->yRow;
            renderer->saveCharCounter->color = ctx->textColor;
            renderer->saveCharCounter++;
            renderer->saveCharCounter->charCode = 0xFFF;
            renderer->saveCharCounter->xPos = 0;
            renderer->saveCharCounter->yPos = 0;
            renderer->saveCharCounter->color = 0;
	    }
        return;
	}
	
	processedCharCode = renderer->characterCode - 0x6A0;
	
	if (renderer->xCol == 0 || lineHasChanged) {
		renderer->permanentXPos = 0;
		if (renderer->yRow == 0) {
			renderer->soundCueCounter = 0;
			if (renderer->saveCharUse) {
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
	renderer->arialGlyphsAddr = &(gArialGlyphs[processedCharCode]);
	characterWidth = gArialGlyphWidths[processedCharCode];
	
	if (renderer->saveCharUse) {
		renderer->saveCharCounter->charCode = renderer->characterCode;
		renderer->saveCharCounter->xPos = renderer->xCol;
		renderer->saveCharCounter->yPos = renderer->yRow;
		renderer->saveCharCounter->color = ctx->textColor;
		renderer->saveCharCounter++;
		renderer->saveCharCounter->charCode = 0xFFF;
		renderer->saveCharCounter->xPos = 0;
		renderer->saveCharCounter->yPos = 0;
		renderer->saveCharCounter->color = 0;
	}
	
	// fill loop
	for (y = 0; y < 16; y++) {
		for (x = renderer->permanentXPos; x - renderer->permanentXPos < characterWidth; x++) {
			// tile numbers go
			// 0 1
			// 2 3
			// meaning 4 tiles per 16x16 OAM
			u32 tileNum;
			u32 *vram;
			u8 pixel;
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
			vram = (u32*)(OBJ_VRAM0 + renderer->tileNum*32 + renderer->tileYOfs*4);
			pixel = (*renderer->arialGlyphsAddr)[y*16 + (x - renderer->permanentXPos)];
			numBitsIntoTile = renderer->tileXOfs*4;
			// Clear the existing pixel
			*vram &= ~(0xF << numBitsIntoTile);
			if (pixel != 0) {
				*vram |= ((ctx->textColor & 0xF) * 3 + 3) << numBitsIntoTile;
			}
		}
	}
	if (renderer->oamNecessary) {
		// Generate a TextBoxCharacter, which is now just used as a glorified OAM thing
		struct TextBoxCharacter *oamProxy = &gTextBoxCharacters[renderer->oamNum];
		int r0 = 0;
		int r2;
		oamProxy->state = renderer->characterCode | 0x8000;
		oamProxy->objAttr2 = renderer->oamBaseTile | 0x400;
		
		r2 = renderer->oamNum;
		
		if (renderer->yRow >= 2) {
			r2 -= renderer->fsBaseOamNum;
			r0 += 4;
		}
		r0 += (r2 & 0xF) << 4;
		oamProxy->x = r0 + renderer->xOffset; 
		
		// r2 = renderer->yRow;
		r0 = (renderer->yRow - (renderer->yRow >= 2 ? 2 : 0)) * 18;

		oamProxy->y = r0;
		
		// The assembly also zeroes out the struct's padding
		oamProxy->color = 0;
	}
	
	renderer->permanentXPos += characterWidth;
	
	// If it's in typewriter mode, make the sound only play every other non-space character
	//if (ctx->currentSoundCue == 2 && ctx->textColor == 3) {
		//if ((renderer->characterCode == (0x720 - 0x80)) || ((renderer->soundCueCounter ^= 1) == 1)) {
			//ctx->currentToken = 0xFF; // old space - 0x80	
		//}
	//}
}
