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
    DmaFill16(3, 0, &gUnknown_03000000, sizeof(gUnknown_03000000));
    gLCDIORegisters.lcd_bg2vofs = 0;
    gLCDIORegisters.lcd_bg2hofs = 8;
    sub_80009AC();
}

void sub_80009AC()
{
    u32 i = 0;
    u32 j = 0;
    struct LCDIORegisters *lcdIoRegsp = &gLCDIORegisters;

    for (i = 0; i < 0x1E; i++)
    {
        u32 tilex = i;
        gUnknown_03001000[tilex+1] = 0x258 + tilex;
    }
    for (i = 0; i < 0x15; i++)
    {
        for (j = 0; j < 0x1E; j++)
        {
            u32 tiley = i;
            u32 tilex = j;

            gUnknown_03001000[tiley * 32 + 0x21 + tilex] = tilex + tiley * 30;
        }
    }
    lcdIoRegsp->lcd_bg3vofs = 8;
    lcdIoRegsp->lcd_bg3hofs = 8;
    DmaFill16(3, 0, VRAM + 0xDD80, 0x40); // empty tile
}
