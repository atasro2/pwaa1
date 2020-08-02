#include "global.h"
#include "script.h"
#include "ewram.h"

#define VWF_RENDERER ((struct FontRenderData *)(EWRAM_START+0x5000))
#define VWF_CHARDATA (struct NewTextBoxCharacter *)(EWRAM_START+0x5080)

static const u8 sCharCodeArgCount[] =
{
	0,
	0,
	0,
	1,
	1,
	2,
	1,
	0,
	2,
	3,
	1,
	1,
	1,
	0,
	1,
	2,
	1,
	0,
	3,
	1,
	0,
	0,
	0,
	1,
	1,
	2,
	4,
	1,
	1,
	1,
	3,
	0,
	1,
	0,
	2,
	2,
	0,
	1,
	1,
	2,
	1,
	1,
	3,
	0,
	1,
	0,
	0,
	2,
	1,
	2,
	2,
	5,
	1,
	2,
	1,
	2,
	1,
	1,
	2,
	2,
	1,
	1,
	1,
	0,
	0,
	0,
	1,
	1,
	1,
	0,
	1,
	2,
	2,
	0,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	0,
	0
};

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
	bool8 isReloading;
	bool8 fsUsed;
	
	u8 soundCueCounter;
	// ScriptContext *gameRamBase3; -- this is a pointer to gScriptContext
};

struct NewTextBoxCharacter {
	u16 charCode:12;
	u16 color:4;
	u8 xPos;
	u8 yPos:7;
	u8 shouldCenter:1;
};

extern Glyph const gArialGlyphs[0xE0];
extern u32 const gArialGlyphWidths[0xE0];

#define DivRoundNearest(divisor, dividend) (((divisor) + ((dividend)/2)) / (dividend))

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
    VWF_RENDERER->isReloading = TRUE;
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
		if(nCharacters->xPos == 0 || oldY != nCharacters->yPos)
		{
			if(gSaveDataBuffer.scriptCtx.unk0 & 0x8000 || nCharacters->shouldCenter)
			{
				u32 stringWidth = 0;
				struct NewTextBoxCharacter * oldnCharacters = nCharacters;
				gScriptContext.unk0 |= 0x8000;
				*(u32*)0x03007000 = 0x69696969;
				oldY = nCharacters->yPos;
				while(1)
				{
					if(nCharacters->charCode == 0xFFF || oldY != nCharacters->yPos)
						break;
					if(nCharacters->charCode > 0x600)
						stringWidth += gArialGlyphWidths[nCharacters->charCode - 0x6A0];
					oldY = nCharacters->yPos;
					nCharacters++;
				}
				*(u32*)0x03007000 = stringWidth | 0x69000000;
				VWF_RENDERER->xOffset = (DISPLAY_WIDTH/2) - DivRoundNearest(stringWidth, 2) - gSaveDataBuffer.scriptCtx.textXOffset;
				nCharacters = oldnCharacters;
				oldY = nCharacters->yPos;
			}
			else
				gScriptContext.unk0 &= ~0x8000;
		}
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
	VWF_RENDERER->isReloading = FALSE;
}

void PutVwfCharInTextbox(u32 charCode, u32 y, u32 x) {
	// BEGIN
	struct FontRenderData *renderer = VWF_RENDERER;
	struct ScriptContext *ctx = &gScriptContext;
	struct NewTextBoxCharacter *newTBC = VWF_CHARDATA;
    bool32 lineHasChanged = renderer->yRow != y;
    u32 processedCharCode;
    u32 characterWidth;
	bool32 isCharSaveNeeded;

	if(renderer->saveCharCounter == NULL)
		renderer->saveCharCounter = newTBC;
	
	renderer->characterCode = charCode;
	renderer->xCol = x;
	renderer->yRow = y;
	
	isCharSaveNeeded = !(gMain.process[GAME_PROCESS] == 0xA);

    if (charCode < 0x600) {
        if (renderer->xCol == 0 || lineHasChanged) {
		    if (renderer->yRow == 0) {
                if (isCharSaveNeeded) {
                    renderer->saveCharCounter = newTBC;
                }
		    }
        }
		PutCharInTextbox(charCode, y, x);
        if (isCharSaveNeeded) {
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

	if(!renderer->isReloading && renderer->xCol == 0 && ctx->unk0 & 0x8000)
	{
		u32 charCode2;
		u16 * oldScriptPtr; 
		u32 stringWidth = 0;

		renderer->xOffset = 0;

		oldScriptPtr = ctx->scriptPtr;
		while(1)
		{
			u32 token;
			token = *ctx->scriptPtr;
			ctx->scriptPtr++;
			if(token >= 0x80)
			{
				charCode2 = token - 0x80;
				if(charCode2 > 0x600)
					stringWidth += gArialGlyphWidths[charCode2 - 0x6A0];
			}
			else if(token == 1 || token == 2 || token == 7 || token == 8 || token == 9 || token == 10 || token == 13 || token == 21 || token == 42 || token == 45 || token == 46 || token == 69)
				break;
			else
				ctx->scriptPtr += sCharCodeArgCount[token]; // skip command
		}
		renderer->xOffset = (DISPLAY_WIDTH/2) - DivRoundNearest(stringWidth, 2) - ctx->textXOffset;
		ctx->scriptPtr = oldScriptPtr;
	}
	else if(!(ctx->unk0 & 0x8000))
		renderer->xOffset = 0;
	
	processedCharCode = renderer->characterCode - 0x6A0;
	
	if (renderer->xCol == 0 || lineHasChanged) {
		renderer->permanentXPos = 0;
		if (renderer->yRow == 0) {
			//renderer->soundCueCounter = 0;
			if (isCharSaveNeeded) {
				renderer->saveCharCounter = newTBC;
			}
		}
		renderer->saveCharCounter->shouldCenter = !!(ctx->unk0 & 0x8000);
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
	
	if (isCharSaveNeeded) {
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

	if ((renderer->characterCode == (0x720 - 0x80)))
		ctx->currentToken = 0xFF; // old space - 0x80	
	else if(renderer->soundCueCounter == 0 || (ctx->textSpeed >= 2 && renderer->soundCueCounter <= 1))
	{
		renderer->soundCueCounter = 2;
		ctx->soundCueSkip = 0;
	}
	else
	{
		if(ctx->textSpeed > 4)
			ctx->currentToken = 0xFF;
		ctx->soundCueSkip = 0xFF;
		renderer->soundCueCounter--;
	}
}
