#include "global.h"
#include "constants/bg.h"
#include "background.h"

#include "data/background.h"

void InitBGs()
{
    u32 i;
    u16 *temp;
    DmaFill16(3, 0, &gBG0MapBuffer, sizeof(gBG0MapBuffer));
	//Capcom plz use DmaCopy16 or smth kthxbye
    for (temp = gBG1MapBuffer, i = 0; i < ARRAY_COUNT(gUnknown_08013B70); i++, temp++)
    {
        (*temp) = gUnknown_08013B70[i];
    }
    DmaFill16(3, 0, &gBG2MapBuffer, sizeof(gBG2MapBuffer));
    gIORegisters.lcd_bg2vofs = 0;
    gIORegisters.lcd_bg2hofs = 8;
    InitBG3();
}

void InitBG3()
{
    u32 i = 0;
    u32 j = 0;
    struct IORegisters *ioRegsp = &gIORegisters;

    for (i = 0; i < 30; i++)
    {
        gBG3MapBuffer[GET_MAP_TILE_INDEX(0, i, 0, 1)] = 600 + i; // TODO: ??? this line doesn't ever appear in the game
    }
    for (i = 0; i < 21; i++)
    {
        for (j = 0; j < 30; j++)
        {

            gBG3MapBuffer[GET_MAP_TILE_INDEX(i, j, 1, 1)] = j + i * 30;
        }
    }
    ioRegsp->lcd_bg3vofs = 8;
    ioRegsp->lcd_bg3hofs = 8;
    DmaFill16(3, 0, VRAM + 0xDD80, 0x40); // empty 8bpp tile
}
