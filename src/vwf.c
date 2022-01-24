#include "global.h"
#include "script.h"
#include "ewram.h"
#include "save.h"
#include "graphics.h"
#include "mgba.h"

#define VWF_RENDERER ((struct FontRenderData *)(EWRAM_START+0x5000))
#define VWF_CHARDATA (struct NewTextBoxCharacter *)(EWRAM_START+0x5080)

extern u8 gTextColorTileBuffer[0x80];
static const u8 sCharCodeArgCount[] =
{
	0, 0, 0, 1, 1, 2, 1, 0,
	2, 3, 1, 1, 1, 0, 1, 2,
	1, 0, 3, 1, 0, 0, 0, 1,
	1, 2, 4, 1, 1, 1, 3, 0,
	1, 0, 2, 2, 0, 1, 1, 2,
	1, 1, 3, 0, 1, 0, 0, 2,
	1, 2, 2, 5, 1, 2, 1, 2,
	1, 1, 2, 2, 1, 1, 1, 0,
	0, 0, 1, 1, 1, 0, 1, 2,
	2, 0, 1, 1, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 1, 0, 0
};

const s8 gPersianForms[127][4] = {
	{0x0, -1, -1, -1},
 	{0x1, -1, -1, -1},
	{0x2, -1, -1, -1},
	{0x3, -1, -1, -1},
	{0x4, -1, -1, -1},
	{0x5, -1, -1, -1},
	{0x6, -1, -1, -1},
	{0x7, -1, -1, -1},
	{0x8, -1, -1, -1},
	{0x9, -1, -1, -1},
	{0xA, -1, -1, -1},
	{0xB, 0xB, 0xB, 0xB},
	{0xC, -1, -1, -1},
	{0xD, -1, -1, -1},
	{-1, 0xE, 0xE, -1},
	{0xF, -1, -1, -1},
	{0x10, -1, -1, 0x11},
	{0x12, 0x13, 0x13, 0x12},
	{0x14, 0x15, 0x15, 0x14},
	{0x16, 0x17, 0x17, 0x16},
	{0x18, 0x19, 0x19, 0x18},
	{0x1A, 0x1B, 0x1B, 0x1A},
	{0x1C, 0x1D, 0x1D, 0x1C},
	{0x1E, 0x1F, 0x1F, 0x1F},
	{0x20, 0x21, 0x21, 0x20},
	{0x22, -1, -1, 0x22},
	{0x23, -1, -1, 0x23},
	{0x24, -1, -1, 0x24},
	{0x25, -1, -1, 0x25},
	{0x26, -1, -1, 0x26},
	{0x27, 0x28, 0x28, 0x27},
	{0x29, 0x2A, 0x2A, 0x29},
	{0x2B, 0x2C, 0x2C, 0x2B},
	{0x2D, 0x2E, 0x2E, 0x2D},
	{0x2F, 0x2F, 0x2F, 0x2F},
	{0x30, 0x30, 0x30, 0x30},
	{0x31, 0x34, 0x33, 0x32},
	{0x35, 0x38, 0x37, 0x36},
	{0x39, 0x3A, 0x3A, 0x39},
	{0x3B, 0x3C, 0x3C, 0x3B},
	{0x3D, 0x3E, 0x3E, 0x3D},
	{0x3F, 0x40, 0x40, 0x3F},
	{0x41, 0x43, 0x43, 0x41},
	{0x42, -1, -1, 0x42},
	{0x44, 0x45, 0x45, 0x44},
	{0x46, 0x47, 0x47, 0x46},
	{0x48, -1, -1, 0x48},
	{0x49, 0x4B, 0x4A, 0x49},
	{0x4D, 0x4E, 0x4E, 0x4C},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
	{0x0, 0x0, 0x0, 0x0},
};

const u8 gPersianGlyphAdvance[128] = {
    3,
    3,
    6,
    7,
    8,
    8,
    7,
    8,
    8,
    6,
    3,
    4,
    7,
    5,
    4,
    6,
    2,
    4,
    9,
    4,
    9,
    4,
    9,
    4,
    9,
    4,
    9,
    8,
    9,
    8,
    9,
    8,
    9,
    8,
    5,
    5,
    6,
    6,
    6,
    15,
    9,
    15,
    9,
    16,
    11,
    16,
    11,
    8,
    8,
    8,
    7,
    6,
    6,
    8,
    7,
    6,
    6,
    11,
    5,
    9,
    5,
    9,
    5,
    9,
    5,
    8,
    6,
    4,
    7,
    7,
    9,
    4,
    6,
    6,
    8,
    9,
    9,
    10,
    4
};

#define PRINT_DEBUG

// the next comment is lying the font is 4bpp
typedef u8 Glyph[128]; // The font in the translation is 8bpp.... ~~Not anymore there is a blanket~~
// typedef u8 Glyph[256];
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
	u8 oldLetter;
	u8 oldLetterForm;
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
extern Glyph const gArialGlyphs4bpp[0xE0];

#define DivRoundNearest(divisor, dividend) (((divisor) + ((dividend)/2)) / (dividend))
#define DivRoundCeil(divisor, dividend) (((divisor) + ((dividend)-1)) / (dividend))

#define MAX_TILES 252
#define MAX_CHARACTERS 192

void profile_start()
{
    REG_TM2CNT_L = 0;    
	REG_TM3CNT_L = 0;
    REG_TM2CNT_H = 0;  
	REG_TM3CNT_H = 0;
    REG_TM3CNT_H = TIMER_ENABLE | 0x4;
    REG_TM2CNT_H = TIMER_ENABLE;
}

u32 profile_stop()
{
   REG_TM2CNT_H = 0;
   return (REG_TM3CNT_L<<16)|REG_TM2CNT_L;
}

u32 IsLineEndingToken(u32 token) {
	return(token == 1 //newline
		|| token == 2 //pagebreak
		|| token == 7 //fullscreen page
		|| token == 8 //fullscreen input 2
		|| token == 9 //fullscreen input 3
		|| token == 10 //pagebreak change section
		|| token == 13 //next section
		|| token == 21 //give player control
		|| token == 42 //next section ifelse
		|| token == 45 //page break no talk anim
		|| token == 46 
		|| token == 69); //give player control no idle anim
}

void SaveVWFCharacters(void)
{
    struct NewTextBoxCharacter * charBuffer = (struct NewTextBoxCharacter *)&gSaveDataBuffer.textBoxCharacters;
    struct NewTextBoxCharacter * nCharacters = VWF_CHARDATA;
	u32 charCount = 0;
    DmaFill16(3, 0, gTextBoxCharacters, sizeof(gTextBoxCharacters));
    nCharacters--;
    do
    {
        nCharacters++;
        DmaCopy16(3, nCharacters, charBuffer, sizeof(struct NewTextBoxCharacter));
        charBuffer++;
		charCount++;
    }
    while(nCharacters->charCode != 0xFFF && charCount < MAX_CHARACTERS);
	if(charCount >= MAX_CHARACTERS)
		(charBuffer-1)->charCode = 0xFFF;
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
	u32 startTime, endTime, totalScanLines = 0;
    struct NewTextBoxCharacter * nCharacters = (struct NewTextBoxCharacter *)&gSaveDataBuffer.textBoxCharacters;
	DmaFill16(3, 0, gTextBoxCharacters, sizeof(gTextBoxCharacters));
    VWF_RENDERER->isReloading = TRUE;
	if(gSaveDataBuffer.textBoxCharacters[0].state & 0x8000 || gSaveDataBuffer.textBoxCharacters[0].objAttr2 & 0x400)
	{
		u8 * ptr = (u8 *)&gSaveDataBuffer.textBoxCharacters;
		if(ptr[9] == 0 && ptr[10] == 0 && ptr[11] == 0)
			return;
	}
    if(gScriptContext.flags & 4)
		gScriptContext.fullscreenTextX = 0;
	#ifdef PRINT_DEBUG
	profile_start();
	#endif
	while(nCharacters->charCode != 0xFFF)
    {
		if(nCharacters->xPos == 0 || oldY != nCharacters->yPos)
		{
			if(gSaveDataBuffer.scriptCtx.flags & 0x8000 || nCharacters->shouldCenter)
			{
				u32 stringWidth = 0;
				struct NewTextBoxCharacter * oldnCharacters = nCharacters;
				gScriptContext.flags |= 0x8000;
				*(u32*)0x03007000 = 0x69696969;
				oldY = nCharacters->yPos;
				while(1)
				{
					if(nCharacters->charCode == 0xFFF || oldY != nCharacters->yPos)
					{
						nCharacters--;
						break;
					}
					if(nCharacters->charCode > 0x600)
						stringWidth += gArialGlyphWidths[nCharacters->charCode - 0x6A0];
					oldY = nCharacters->yPos;
					nCharacters++;
				}
				*(u32*)0x03007000 = stringWidth | 0x69000000;
				VWF_RENDERER->xOffset = (DISPLAY_WIDTH/2) - DivRoundNearest(stringWidth, 2) - ((nCharacters->yPos >= 2) ? (gSaveDataBuffer.scriptCtx.fullscreenTextXOffset + 4) : gSaveDataBuffer.scriptCtx.textXOffset);
				nCharacters = oldnCharacters;
				oldY = nCharacters->yPos;
			}
			else
			{
				gScriptContext.flags &= ~0x8000;
				VWF_RENDERER->xOffset = 0;
			}
		}
		/*
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
		*/
        gScriptContext.textColor = nCharacters->color;
		startTime = REG_VCOUNT;
        
        PutVwfCharInTextbox(nCharacters->charCode, nCharacters->yPos, nCharacters->xPos);
        
        //debug
        endTime = REG_VCOUNT;
        if (endTime < startTime)
            endTime += 228;
        totalScanLines += endTime - startTime;
        //PutVwfCharInTextbox(nCharacters->charCode, nCharacters->yPos, nCharacters->xPos);
		gScriptContext.fullscreenTextX++;
		oldY = nCharacters->yPos;
        nCharacters++;
    }
	#ifdef PRINT_DEBUG
	{
	u32 profiling = profile_stop();
	u32 xBGPos = 29;
	u32 remaining = totalScanLines;
	while (remaining > 0) {
		u32 digit = remaining % 10;
		u32 ascii = 464 + digit;
		remaining /= 10;
		gSaveDataBuffer.bg0Map[xBGPos--] = ascii;
	}
	xBGPos--;
	remaining = profiling;
	while (remaining > 0) {
		u32 digit = remaining % 10;
		u32 ascii = 464 + digit;
		remaining /= 10;
		gSaveDataBuffer.bg0Map[xBGPos--] = ascii;
	}
	
	mgba_printf(MGBA_LOG_DEBUG, "redraw totalScanLines 0x%X, profileResult: %u", totalScanLines, profiling);
	}
	#endif

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
	if(!renderer->isReloading && (renderer->xCol == 0 || (renderer->yRow >= 2 && lineHasChanged)))
	{
		u32 charCode2;
		const u16 * oldScriptPtr; 
		u32 stringWidth = 0;
		//*(u32*)0x03007000 = renderer->yRow;
		//*(u32*)0x03007004 = renderer->xCol;

		if(ctx->flags & 0x8000)
		{
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
					else
						stringWidth += 14;
				}
				else if(token == 1 || token == 2 || token == 7 || token == 8 || token == 9 || token == 10 || token == 13 || token == 21 || token == 42 || token == 45 || token == 46 || token == 69)
					break;
				else
					ctx->scriptPtr += sCharCodeArgCount[token]; // skip command
			}
			renderer->xOffset = (DISPLAY_WIDTH/2) - DivRoundNearest(stringWidth, 2) - ((renderer->yRow >= 2) ? (ctx->fullscreenTextXOffset + 4) : ctx->textXOffset);
			ctx->scriptPtr = oldScriptPtr;
		}
		else
			renderer->xOffset = 0;
		//*(u32*)0x03007000 = stringWidth | 0x69000000;
	}
	processedCharCode = renderer->characterCode - 0x6A0;
	
	if (renderer->xCol == 0 || lineHasChanged) {
		renderer->permanentXPos = 0;
		if (renderer->yRow == 0) {
			//renderer->soundCueCounter = 0;
			if (isCharSaveNeeded) {
				renderer->saveCharCounter = newTBC;
			}
		}
		renderer->saveCharCounter->shouldCenter = !!(ctx->flags & 0x8000);
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
	if (charCode >= 0x700) 
	{
		const u16 * ptr = gScriptContext.scriptPtr+1;
		int form = 0;
		int glyphId;
		while (1) 
		{
			int token = *ptr++;
			if(token == 0x80+0xFF) {
				if((renderer->oldLetterForm == 1 
				|| renderer->oldLetterForm == 2)) { // previous was medial or initial forms
					form = 3; // final form
				} else {
					form = 0; // isolated
				}
				break;
			}
			if(token >= 0x700+0x80) {
				if(renderer->oldLetterForm == 0 
				|| renderer->oldLetterForm == 3) { // previous was final or isolated forms
					if((gPersianForms[token-0x700-0x80][2] > 0 || gPersianForms[token-0x700-0x80][3] > 0) && gPersianForms[charCode-0x700][1] > 0) // next has final or medial forms
						form = 1; // initial form
					else
						form = 0; // isolated form
				} else { // previous was medial or initial forms
					if((gPersianForms[token-0x700-0x80][2] > 0 || gPersianForms[token-0x700-0x80][3] > 0) && gPersianForms[charCode-0x700][2] > 0)
						form = 2; // medial form
					else
						form = 3; // final form
				}
				break;
			}
			if(IsLineEndingToken(token)) {
				if((renderer->oldLetterForm == 1 
				|| renderer->oldLetterForm == 2)) { // previous was medial or initial forms
					form = 3; // final form
				} else {
					form = 0; // isolated
				}
				break;
			}
		}
		//if(renderer->oldLetter == 42
		//&& charCode-0x700 == 16)
		//glyphId = 0x42;
		//else
		
		glyphId = gPersianForms[charCode-0x700][form];
		renderer->oldLetterForm = form;
		renderer->oldLetter = charCode-0x700;
		renderer->arialGlyphsAddr = &gArialGlyphs4bpp[glyphId];
		characterWidth += gPersianGlyphAdvance[glyphId];
	}
	else
	{
		renderer->arialGlyphsAddr = (const Glyph *)gCharSet+charCode;
		characterWidth = 2;
	}
	
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
	{
	u32 tileNum;
	u32 tileX;
	u32 tileY;
	u32 oldPixel;
	u32 neededTilesX;
	u32 baseTileNum;
	u16 numBitsIntoTile;
	u32 clearPixels;
	u32 colorLine;
	u32 permanentXPos;
	u32 * pixelPtr;
	u32 tileNumTable[4];

	permanentXPos = renderer->permanentXPos;
	neededTilesX = DivRoundCeil(((permanentXPos % 8) + characterWidth), 8);
	numBitsIntoTile = (permanentXPos % 8) * 4;

	// precalculation of 8-pixel lines, cleared pixels and colored ones
	clearPixels = ~(0xFFFFFFFF << numBitsIntoTile);
	colorLine = (ctx->textColor & 0xF) * 0x33333333;

	renderer->tileXOfs = permanentXPos % 8;

	if (renderer->yRow >= 2)
		baseTileNum = renderer->fsBaseTile;
	else
		baseTileNum = renderer->yRow * 16 * 4;

	// check if we are going to cross the current oam boundary and need a new one
	{
	u32 startOamNum = permanentXPos >> 4;
	u32 endOamNum = (permanentXPos + characterWidth) >> 4;
	if (permanentXPos % 16 == 0 || endOamNum > startOamNum) {
		tileNum = baseTileNum + endOamNum * 4;
		
		if (tileNum < MAX_TILES) {
			renderer->oamBaseTile = tileNum;
			renderer->oamNum = tileNum >> 2;
			renderer->oamNecessary = 1;
					
			// clean up the next 4 tiles (32 bytes per 4bpp tile)
			// 32 x 4 bytes (u32) = 128 bytes (4 tiles)
			DmaFill32(3, 0, (u32*)((u8*)OBJ_VRAM0 + tileNum * 32), 128);
		}
	}
	}
	// copy over the character from the rom into the tile buffer already used by the game
	
	// color the character in the tile buffer
	// if the target color is not white
	pixelPtr = (u32 *)renderer->arialGlyphsAddr;
	if (ctx->textColor != 0) {
		u32 i;
		pixelPtr = (u32 *)gTextColorTileBuffer;
		DmaCopy32(3, (u32*) *renderer->arialGlyphsAddr, pixelPtr, 128);
		for (i = 0; i < 32; i++) {
			// read 8 pixels from the tile buffer
			u32 *pixel = &pixelPtr[i];
			
			// make a mask for every non-zero color (1, 2, 3)
			// convert all "1", "2" and "3" digits to "F" to use them as a bitmask
			u32 mask1 = *pixel & 0x11111111;
			u32 mask2 = (*pixel & 0x22222222) >> 1;
			u32 pixelMask = (mask1 | mask2) * 0xF;
			
			// batch operation on all pixels (color * 3 + 3)
			*pixel = (colorLine + *pixel) & pixelMask;
		}
	}
	
	// pre-calculate the top tile numbers for every X
	// tile numbers go
	// 0 1
	// 2 3
	// meaning 4 tiles per 16x16 OAM
	for (tileX = 0; tileX < neededTilesX; tileX++) {
		x = permanentXPos + tileX * 8;
		tileNumTable[tileX] = baseTileNum + (x / 16) * 4 + ((x % 16) / 8);
	}

	// draw the character
	for (tileY = 0; tileY < 2; tileY++) {
		for (y = 0; y < 8; y++) {

			oldPixel = 0;
			//renderer->tileYOfs = y;  // not used anymore
			
			for (tileX = 0; tileX < neededTilesX; tileX++) {
				u32 *vram;
				u32 pixel;
				u32 movedPixel;
				u32 index;

				tileNum = tileNumTable[tileX] + tileY * 2;
				
				// truncate tiles that would overwrite the hand cursor
				if (tileNum >= MAX_TILES)
					break;
				
				//renderer->tileNum = tileNum;  // not used anymore

				// Write to VRAM
				vram = (u32*)((u8*)OBJ_VRAM0 + tileNum * 32) + y;

				// read 8 pixels from the font
				if (tileX < 2) {
					index = y + tileY * 16 + tileX * 8;
					pixel = pixelPtr[index];
				}
				else
					pixel = 0;

				// move the pixels by shifting their bits
				movedPixel = (pixel << numBitsIntoTile) | (oldPixel >> (32 - numBitsIntoTile));
				
				// Clear the existing pixel
				// batch operation on all pixels (*vram &= ~(0xF << numBitsIntoTile))
				*vram &= clearPixels;
				
				if (movedPixel != 0)
					*vram |= movedPixel;
				
				oldPixel = pixel;
			}
		}
	}
	}
	if (renderer->oamNecessary) {
		// Generate a TextBoxCharacter, which is now just used as a glorified OAM thing
		struct TextBoxCharacter *oamProxy = &gTextBoxCharacters[renderer->oamNum];
		int r0 = 0;
		int r2;
		oamProxy->state = 0x8000;
		oamProxy->objAttr2 = renderer->oamBaseTile | 0x400;
		
		r2 = renderer->oamNum;
		
		if (renderer->yRow >= 2) {
			r2 -= renderer->fsBaseOamNum;
			r0 += 4;
		}
		r0 += (r2 & 0xF) << 4;
		oamProxy->x = DISPLAY_WIDTH - 32 - r0 - renderer->xOffset;
		oamProxy->x |= 0x1000; 
		
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

