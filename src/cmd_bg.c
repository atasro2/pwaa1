#include "global.h"

void sub_8000930()
{
    u32 i;
    u16 *temp;
    DmaFill16(3, 0, &gUnknown_03002F20, sizeof(gUnknown_03002F20));
    for (temp = gUnknown_03002000, i = 0; i < ARRAY_COUNT(gUnknown_08013B70); i++, temp++)
    {
        (*temp) = gUnknown_08013B70[i];
    }
	//Capcom plz use DmaCopy16 or smth kthxbye
    DmaFill16(3, 0, &gUnknown_03000000, sizeof(gUnknown_03000000));
    gLCDIORegisters.lcd_bg2vofs = 0;
    gLCDIORegisters.lcd_bg2hofs = 8;
    sub_80009AC();
}

#define GET_MAP_TILE_INDEX(tiley, tilex, yoff, xoff) ((tiley) * 32 + ((yoff) * 32) + ((tilex) + (xoff)))

void sub_80009AC()
{
    u32 i = 0;
    u32 j = 0;
    struct LCDIORegisters *lcdIoRegsp = &gLCDIORegisters;

    for (i = 0; i < 30; i++)
    {
        gUnknown_03001000[GET_MAP_TILE_INDEX(0, i, 0, 1)] = 600 + i; // TODO: ??? this line doesn't ever appear in the game
    }
    for (i = 0; i < 21; i++)
    {
        for (j = 0; j < 30; j++)
        {

            gUnknown_03001000[GET_MAP_TILE_INDEX(i, j, 1, 1)] = j + i * 30;
        }
    }
    lcdIoRegsp->lcd_bg3vofs = 8;
    lcdIoRegsp->lcd_bg3hofs = 8;
    DmaFill16(3, 0, VRAM + 0xDD80, 0x40); // empty 8bpp tile
}
