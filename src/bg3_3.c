#include "global.h"
#include "background.h"
#include "constants/bg.h"

extern void sub_8000B7C(struct Main * main, u32 sp0);
extern void sub_8000E44(struct Main * main, u32 sp0);
extern void sub_80010AC(struct Main * main, u32 sp0);
extern void sub_80012C0(struct Main * main, u32 sp0);

void sub_80020B0(u32 bgId)
{
    struct Main * main = &gMain;
    u16 sp0 = main->previousBG;
    bool32 r8 = main->isBGScrolling;
    u16 sl = main->unk34;
    u16 spC = main->unk36;
    u8 r6 = main->horizontolBGScrollSpeed;
    u8 r5 = main->verticalBGScrollSpeed;
    u32 unk0;
    sub_8001A9C(bgId);
    main->previousBG = sp0;
    main->isBGScrolling = r8;
    main->horizontolBGScrollSpeed = r6;
    main->verticalBGScrollSpeed = r5;
    main->unk30 = main->unk34 - sl;
    main->unk32 = main->unk36 - spC;
    unk0 = gBackgroundTable[main->currentBG].controlBits;
    if(unk0 & BG_MODE_SPECIAL_SPEEDLINE)
        return;
    unk0 &= BG_MODE_4BPP;
    if(main->unk30 > 0)
    {
        main->unk34 = sl;
        main->unk30 *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_480x160)
            unk0 |= 480;
        else
            unk0 |= 360;
        sub_8000B7C(main, unk0);
    }
    else if(main->unk30 < 0)
    {
        main->unk34 = sl;
        main->unk30 *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_480x160)
            unk0 |= 480;
        else
            unk0 |= 360;
        sub_8000E44(main, unk0);
    }
    else if(main->unk32 > 0)
    {
        main->unk36 = spC;
        main->unk32 *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_240x320)
            unk0 |= 320;
        else
            unk0 |= 240;
        sub_80010AC(main, unk0);
    }
    else if(main->unk32 < 0)
    {
        main->unk36 = spC;
        main->unk32 *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_240x320)
            unk0 |= 320;
        else
            unk0 |= 240;
        sub_80012C0(main, unk0);
    }
}

u32 GetBGControlBits(u32 bgId)
{
    return gBackgroundTable[bgId].controlBits;
}

u8 * GetBGPalettePtr(u32 bgId)
{
    return gBackgroundTable[bgId].bgData + 0x28;
}
