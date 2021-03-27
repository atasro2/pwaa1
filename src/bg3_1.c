#include "global.h"
#include "background.h"
#include "ewram.h"
#include "animation.h"
#include "constants/bg.h"

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

void sub_8000A28(struct Main * main, u32 sp0) // holy shit my braincells
{
    u32 i;
    u32 r8; //r8
    u32 sp4; // sp4
    u32 sl; // sl
    u8 * r6; // r6
    main->unk3E = 30;
    main->unk3F++;
    if(main->unk3F > 30)
        main->unk3F = 0;
    r8 = sp0 & 0x80000000 ? 4 : 8;
    sp4 = sp0 & ~0x80000000;
    sp0 = sp4 * r8;
    sl = r8 * 8;
    r8 *= 248;
    r6 = eBGDecompBuffer;
    r6 += main->unk3E * 0x40;
    for(i = 1; i < 21; i++)
    {
        void * ptr;
        u16 * mapbuffer;
        u32 size;
        mapbuffer = gBG3MapBuffer;
        ptr = mapbuffer;
        ptr += i*64;
        size = 2;
        DmaCopy16(3, ptr, &mapbuffer[i*32+31], size); // dear capcom dev who wrote a dma copy with size of 2 here, i am sincerely sorry but fuck you
        ptr = (void*)BG_CHAR_ADDR(1) + (main->unk3F * sl) + (i-1) * r8;
        DmaCopy16(3, r6, ptr, sl);
        r6 += sp0;
    }
    if(++main->unk3F > 30)
        main->unk3F = 0;
    if(sp4 == 360)
        main->unk2F = 0x2F;
    else
        main->unk2F = 1;
    main->unk3E++;
    main->isBGScrolling = FALSE;
    main->unk3A &= ~0x10;
    main->unk3A |= 0x20;
    if(main->unk34 < 0)
        main->horizontolBGScrollSpeed -= main->unk34;
    main->unk34 = 0;
    main->unk30 = 0;
}

void sub_8000B7C(struct Main * main, u32 sp0)
{
    u32 i;
    u32 sp4; // sp4
    u32 sp8; // sp8
    u32 spC; // sl
    u32 sp10;
    u8 * r6; // r6
    sp4 = main->unk30 / -8;
    sp8 = sp0 & 0x80000000 ? 4 : 8;
    sp10 = sp0;
    sp0 *= sp8;
    spC = sp8 * 8;
    sp8 *= 248;
    do
    {
        u8 * buf;
        buf = eBGDecompBuffer;
        buf += main->unk3E * 0x40;
        for(i = 1; i < 21; i++)
        {
            void * ptr1;
            void * ptr2;
            ptr1 = &gBG3MapBuffer[i*32];
            ptr2 = &gBG3MapBufferCopy[i*32];
            DmaCopy16(3, ptr1, ptr2, 30*2); // copy row of tiles to buffer copy
            ptr2 = &gBG3MapBuffer[i*32+30];
            DmaCopy16(3, ptr2, ptr1, 2); // stop with the size 2 dmacopies
            ptr1 = &gBG3MapBufferCopy[i*32];
            ptr2 = &gBG3MapBuffer[i*32+1];
            DmaCopy16(3, ptr1, ptr2, 30*2);
            ptr1 = (void*)BG_CHAR_ADDR(1) + (main->unk3F * spC) + (i-1) * sp8;
            DmaCopy16(3, buf, ptr1, spC);
            buf += sp0;
        }
        if(--main->unk3F < 0)
            main->unk3F = 30;
        if(--main->unk3E < 0)
            main->unk3E = 59;
        if(main->unk3E == main->unk2F)
        {
            sub_8000A28(main, sp10);
            break;
        }
    }
    while(--sp4);
    main->unk30 %= 8;
}

void sub_8000CE4(struct Main * main, u32 r6)
{
    u32 i;
    u32 sl;
    u32 sp0;
    u32 sp4;
    u8 * r5;
    sl = r6 & 0x80000000 ? 4 : 8;
    r6 &= ~0x80000000;
    sp4 = r6 / 2;
    r6 *= sl;
    sp0 = sl * 8;
    sl *= 248;
    if(sp4 == 360) // i have no idea what this code is doing but the assembly didn't do the decrements but it makes the code match
    {
        main->unk3E = 15;
        main->unk3E--;
    }
    else
    {
        main->unk3E = 30;
        main->unk3E--;
    }
    if(--main->unk3F < 0)
        main->unk3F = 30;
    r5 = eBGDecompBuffer;
    r5 += main->unk3E * 0x40;
    for(i = 1; i < 21; i++)
    {
        void * ptr1;
        void * ptr2;
        ptr1 = &gBG3MapBuffer[i*32+31];
        ptr2 = &gBG3MapBuffer[i*32];
        DmaCopy16(3, ptr1, ptr2, 2);
        ptr1 = (void*)BG_CHAR_ADDR(1) + (main->unk3F * sp0) + (i-1) * sl;
        DmaCopy16(3, r5, ptr1, sp0);
        r5 += r6;
    }
    if(--main->unk3F < 0)
        main->unk3F = 30;
    main->unk3E--;
    main->unk2F = 58;
    main->isBGScrolling = FALSE;
    main->unk3A &= ~0x20;
    main->unk3A |= 0x10;
    if(main->unk34 > sp4)
        main->horizontolBGScrollSpeed -= main->unk34 - sp4;
    main->unk34 = sp4;
    main->unk30 = 0;
}

void sub_8000E44(struct Main * main, u32 sp0)
{
    u32 i;
    u32 sp4;
    u32 sp8;
    u32 spC;
    u32 sp10;
    u8 * buf;
    
    sp4 = main->unk30 / 8;
    sp8 = sp0 & 0x80000000 ? 4 : 8;
    sp10 = sp0;
    sp0 *= sp8; // this doesn't clear the MSB hmm
    spC = sp8 * 8;
    sp8 *= 248;
    do
    {
        buf = eBGDecompBuffer;
        buf += main->unk3E * 0x40;
        for(i = 1; i < 21; i++)
        {
            void * ptr1;
            void * ptr2;
            ptr1 = &gBG3MapBuffer[i*32+1];
            ptr2 = &gBG3MapBufferCopy[i*32];
            DmaCopy16(3, ptr1, ptr2, 62);
            ptr1 = &gBG3MapBuffer[i*32];
            DmaCopy16(3, ptr2, ptr1, 62);
            ptr2 = &gBG3MapBuffer[i*32+31];
            DmaCopy16(3, ptr1, ptr2, 2);
            ptr1 = (void*)BG_CHAR_ADDR(1) + (main->unk3F * spC) + (i-1) * sp8;
            DmaCopy16(3, buf, ptr1, spC);
            buf += sp0;
        }
        if(++main->unk3F > 30)
            main->unk3F = 0;
        if(++main->unk3E > 59)
            main->unk3E = 0;
        if(main->unk3E == main->unk2F)
        {
            sub_8000CE4(main, sp10);
            break;
        }
    }
    while(--sp4);
    main->unk30 %= 8;
}

void sub_8000FAC(struct Main * main, u32 r1)
{
    u32 i;
    u32 r5;
    u32 r6;
    void * ptr1;
    void * ptr2;
    main->unk3E = 21;
    r5 = r1 & 0x80000000 ? 4 : 8;
    r6 = r1 & ~0x80000000; // r1 -> r6
    r5 *= 240;
    if(++main->unk3F > 20)
        main->unk3F = 0;
    ptr1 = &gBG3MapBuffer[0];
    ptr2 = &gBG3MapBuffer[0x2A0];
    DmaCopy16(3, ptr1, ptr2, 64);
    ptr1 = (void*)BG_CHAR_ADDR(1) + main->unk3F * r5;
    ptr2 = eBGDecompBuffer + main->unk3E * r5;
    ptr2 -= r5;
    DmaCopy16(3, ptr2, ptr1, r5);
    if(++main->unk3F > 20)
        main->unk3F = 0;
    if(r6 == 320)
        main->unk2F = 1;
    else
        main->unk2F = 0x20;
    main->isBGScrolling = 0;
    main->unk3A &= ~0x40;
    main->unk3A |= 0x80;
    if(main->unk36 < 0)
        main->verticalBGScrollSpeed -= main->unk36;
    main->unk36 = 0;
    main->unk32 = 0;
}

void sub_80010AC(struct Main * main, u32 sp0)
{
    u32 i;
    u32 r8;
    u32 r6;
    u16 * map;
    r8 = main->unk32 / -8;
    r6 = sp0 & 0x80000000 ? 4 : 8;
    r6 *= 240;
    do
    {
        void * ptr;
        void * buf;
        DmaCopy16(3, gBG3MapBuffer, gBG3MapBufferCopy, 0x540);
        ptr = gBG3MapBuffer + 0x20;
        DmaCopy16(3, gBG3MapBufferCopy, ptr, 0x540);;
        DmaCopy16(3, gBG3MapBuffer + 0x2A0, gBG3MapBuffer, 0x40);
        buf = eBGDecompBuffer;
        buf += main->unk3E * r6;
        ptr = (void*)BG_CHAR_ADDR(1) + main->unk3F * r6;
        DmaCopy16(3, buf, ptr, r6);
        if(--main->unk3F < 0)
            main->unk3F = 20;
        if(--main->unk3E < 0)
            main->unk3E = 39;
        if(main->unk3E == main->unk2F)
        {
            sub_8000FAC(main, sp0);
            break;
        }
    }
    while(--r8);
    main->unk32 %= 8;
}

void sub_80011D0(struct Main * main, u32 r4)
{
    u32 r5;
    void * buf;
    void * ptr1;
    void * ptr2;
    r5 = r4 & 0x80000000 ? 4 : 8;
    r4 &= ~0x80000000;
    r5 *= 240;
    if(r4 == 320)
        main->unk3E = 18;
    else
        main->unk3E = 8;
    if(--main->unk3F < 0)
        main->unk3F = 20;
    ptr1 = gBG3MapBuffer + 0x2A0;
    ptr2 = gBG3MapBuffer;
    DmaCopy16(3, ptr1, ptr2, 0x40);
    buf = eBGDecompBuffer + main->unk3E * r5;
    buf += r5;
    ptr1 = (void*)BG_CHAR_ADDR(1) + main->unk3F * r5;
    DmaCopy16(3, buf, ptr1, r5);
    if(--main->unk3F < 0)
        main->unk3F = 20;
    main->unk2F = 0x26;
    main->isBGScrolling = FALSE;
    main->unk3A &= ~0x80;
    main->unk3A |= 0x40;
    r4 /= 2;
    if(main->unk36 > r4)
        main->verticalBGScrollSpeed -= main->unk36 - r4;
    main->unk36 = r4;
    main->unk32 = 0;
}

void sub_80012C0(struct Main * main, u32 arg0)
{
    u32 i;
    u32 sp0;
    u32 r8;
    u32 r6;
    r8 = main->unk32 >> 3; // oh yeah you know all those divisions we did in those function before this? yeah forget about them just do a fucking right shift 
    r6 = arg0 & 0x80000000 ? 4 : 8;
    sp0 = arg0;
    r6 *= 240;
    do
    {
        void * ptr1;
        void * ptr2;
        void * buf;

        ptr1 = gBG3MapBuffer + 0x20;
        ptr2 = gBG3MapBuffer + 0x2C0;
        DmaCopy16(3, ptr1, ptr2, 0x40);
        DmaCopy16(3, gBG3MapBuffer, gBG3MapBufferCopy, 0x5C0);
        ptr2 = gBG3MapBufferCopy + 0x20;
        do{}while(0); // TODO: find actual match, gBG3MapBuffer gets loaded from the pool instead of ptr1 - 0x40
        DmaCopy16(3, ptr2, gBG3MapBuffer, 0x580);
        buf = eBGDecompBuffer;
        buf += main->unk3E * r6;
        ptr2 = (void*)BG_CHAR_ADDR(1) + main->unk3F * r6;
        DmaCopy16(3, buf, ptr2, r6);
        if(++main->unk3F > 20)
            main->unk3F = 0;
        if(++main->unk3E > 39)
            main->unk3E = 0;
        if(main->unk3E == main->unk2F)
        {
            sub_80011D0(main, sp0);
            break;
        }
    }
    while(--r8);
    main->unk32 %= 8;
}


void sub_80013EC()
{
    struct Main * main = &gMain;
    struct IORegisters * ioRegs = &gIORegisters;
    u32 unk0;
    u32 unk1;

    if(gCourtScroll.state != 0 && (gCourtScroll.unkC & 1) == 0) // unkC divisible by 2?
    {
        u8 * ptr = gCourtScroll.unk0;
        ioRegs->lcd_bg3cnt &= ~BGCNT_256COLOR;
        ptr += gCourtScroll.unkC / 2 * (0x4B00 + 0x20);
        DmaCopy16(3, ptr, PLTT+0x40, 0x20);
        ptr += 0x20;
        DmaCopy16(3, ptr, BG_CHAR_ADDR(1), 0x4B00);
    }
    if(main->isBGScrolling == FALSE)
        return;
    unk0 = gBackgroundTable[main->currentBG].controlBits;
    if(unk0 & BG_MODE_SPECIAL_SPEEDLINE)
    {
        ioRegs->lcd_bg3hofs += main->horizontolBGScrollSpeed;
        ioRegs->lcd_bg3hofs &= 0x1FF;
        return;
    }
    else if(unk0 & BG_MODE_SCROLL_SPECIAL_SLOW)
    {
        if(main->currentBG == 0x4A)
            ioRegs->lcd_bg2hofs += 1;
        else
            ioRegs->lcd_bg2hofs -= 1;
        ioRegs->lcd_bg2hofs &= 0x1FF;
        main->unk36 += 1;
        ioRegs->lcd_bg3vofs = main->unk36 / 40 + 8;
        return;
    }
    unk0 = main->unk3A;
    if(unk0 & 0x10)
    {
        if(main->horizontolBGScrollSpeed > 0)
        {
            main->isBGScrolling = FALSE;
            return;
        }
        main->unk30 += main->horizontolBGScrollSpeed;
        main->unk34 += main->horizontolBGScrollSpeed;
        unk0 = gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_480x160 ? 480 : 360;
        unk1 = gBackgroundTable[main->currentBG].controlBits & 0x80000000;
        unk0 |= unk1;
        if(main->unk30 <= -8)
            sub_8000B7C(main, unk0);
        else if(main->unk34 < 0)
        {
            if(--main->unk3F < 0)
                main->unk3F = 30;
            sub_8000A28(main, unk0);
        }
        OffsetAllAnimations(-main->horizontolBGScrollSpeed, 0);
    }
    else if(unk0 & 0x20)
    {
        if(main->horizontolBGScrollSpeed < 0)
        {
            main->isBGScrolling = FALSE;
            return;
        }
        main->unk30 += main->horizontolBGScrollSpeed;
        main->unk34 += main->horizontolBGScrollSpeed;
        unk0 = gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_480x160 ? 480 : 360;
        unk1 = gBackgroundTable[main->currentBG].controlBits & 0x80000000;
        unk0 |= unk1;
        if(main->unk30 >= 8)
            sub_8000E44(main, unk0);
        if(main->unk34 > unk0/2)
        {
            if(++main->unk3F > 30)
                main->unk3F = 0;
            sub_8000CE4(main, unk0);
        }
        OffsetAllAnimations(-main->horizontolBGScrollSpeed, 0);
    }
    else if(unk0 & 0x40)
    {
        if(main->verticalBGScrollSpeed > 0)
        {
            main->isBGScrolling = FALSE;
            return;
        }
        main->unk32 += main->verticalBGScrollSpeed;
        main->unk36 += main->verticalBGScrollSpeed;
        unk0 = gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_240x320 ? 320 : 240;
        unk1 = gBackgroundTable[main->currentBG].controlBits & 0x80000000;
        unk0 |= unk1;
        if(main->unk32 <= -8)
            sub_80010AC(main, unk0);
        else if(main->unk36 <= 0)
        {
            if(--main->unk3F < 0)
                main->unk3F = 20;
            sub_8000FAC(main, unk0);
        }
        OffsetAllAnimations(0, -main->verticalBGScrollSpeed);
    }
    else if(unk0 & 0x80)
    {
        if(main->horizontolBGScrollSpeed < 0) // why horizontolBGScrollSpeed?
        {
            main->isBGScrolling = FALSE;
            return;
        }
        main->unk32 += main->verticalBGScrollSpeed;
        main->unk36 += main->verticalBGScrollSpeed;
        unk0 = gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_240x320 ? 320 : 240;
        unk1 = gBackgroundTable[main->currentBG].controlBits & 0x80000000;
        unk0 |= unk1;
        if(main->unk32 >= 8)
            sub_80012C0(main, unk0);
        else if(main->unk36 > unk0/2)
        {
            if(++main->unk3F > 20)
                main->unk3F = 0;
            sub_80011D0(main, unk0*2);
        }
        OffsetAllAnimations(0, -main->verticalBGScrollSpeed);
    }
    ioRegs->lcd_bg3vofs = main->unk32 + 8;
    ioRegs->lcd_bg3hofs = main->unk30 + 8;
}

void sub_8001744(u32 bgId)
{
    u32 i;
    u32 size;
    u32 flags;
    u8 * bgData;
    bgId &= ~0x8000;
    if(bgId == 0xFF)
    {
        gMain.unk2C = 11;
        UpdateAnimations(gMain.previousBG);
        return;
    }
    bgData = (void*)gBackgroundTable[bgId].bgData;
    if(gMain.unk2C == 1)
    {
        u32 * ptr;
        ptr = (u32 *)bgData;
        for(i = 1; i < 11; i++)
            gMain.unk44[i] = *ptr++;
        UpdateAnimations(gMain.previousBG);
    }
    bgData += gMain.unk44[gMain.unk2C];
    flags = gBackgroundTable[bgId].controlBits; 
    if(flags & BG_MODE_SIZE_480x160)
        size = 0x1E00;
    else if(flags & BG_MODE_SIZE_240x320)
        size = 0x1E00;
    else
        size = 0xF00;
    if(flags & BG_MODE_4BPP)
        size /= 2;
    if(gMain.unk2C == 1)
    {
        if(flags & BG_MODE_4BPP)
            bgData += 0x20;
        else
            bgData += 0x200;
        gMain.unk40 = eBGDecompBuffer;
    }
    else
        gMain.unk40 += size;
    LZ77UnCompWram(bgData, gMain.unk40);
    gMain.unk2C++;
}

void sub_8001830(u32 bgId)
{
    u32 i;
    u32 size;
    u32 flags;
    u8 * bgData;
    u32 * ptr;
    UpdateAnimations(gMain.previousBG);
    bgId &= ~0x8000;
    if(bgId == 0xFF) 
        return;
    bgData = (void*)gBackgroundTable[bgId].bgData;
    ptr = (u32 *)bgData;
    for(i = 1; i < 11; i++)
        gMain.unk44[i] = *ptr++;
    flags = gBackgroundTable[bgId].controlBits;
    if(flags & BG_MODE_SIZE_480x160)
        size = 0x1E00;
    else if(flags & BG_MODE_SIZE_240x320)
        size = 0x1E00;
    else
        size = 0xF00;
    if(flags & BG_MODE_4BPP)
        size /= 2;
    if(flags & BG_MODE_4BPP)
        bgData += 0x20;
    else
        bgData += 0x200;
    bgData += gMain.unk44[1];
    gMain.unk40 = eBGDecompBuffer;
    LZ77UnCompWram(bgData, gMain.unk40);
    for(i = 2; i < 11; i++)
    {
        gMain.unk40 += size;
        bgData = gBackgroundTable[bgId].bgData;
        bgData += gMain.unk44[i];
        LZ77UnCompWram(bgData, gMain.unk40);
    }
}

#define gUnknown_083899C4 ((u8*)(GFX_BASE_ADDR + 0x2099C4))

void sub_80018F8()
{
    struct Main * main = &gMain;
    struct IORegisters * ioRegs = &gIORegisters;
    void * bgPtr;
    void * tempPtr;
    u32 * ptr;
    u32 stripeSize;
    u32 i, j;
    bgPtr = gUnknown_08369890;
    bgPtr+=0x28;
    DmaCopy16(3, bgPtr, PLTT+0x40, 0x20);
    ioRegs->lcd_bg3cnt &= ~BGCNT_256COLOR;
    *(u16*)&REG_BG3CNT &= ~BGCNT_256COLOR; // volatile causes code diff lol
    bgPtr = gUnknown_083899C4;
    ptr = bgPtr;
    stripeSize = 0xF00;
    stripeSize /= 2;
    for(i = 1; i < 11; i++)
        main->unk44[i] = *ptr++;
    tempPtr = bgPtr + 0x20;
    tempPtr += main->unk44[1]; 
    bgPtr = tempPtr;
    main->unk40 = eBGDecompBuffer+0x5000;
    LZ77UnCompWram(bgPtr, main->unk40);
    for(i = 2; i < 11; i++)
    {
        main->unk40 += stripeSize;
        bgPtr = gUnknown_083899C4 + main->unk44[i]; 
        LZ77UnCompWram(bgPtr, main->unk40);
    }
    bgPtr = gUnknown_083899C4;
    bgPtr += 0x28;
    DmaCopy16(3, bgPtr, PLTT+0x60, 0x20);
    gIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP;
    gIORegisters.lcd_dispcnt |= DISPCNT_BG2_ON;
    for(i = 0; i < 20; i++)
    {
        for (j = 0; j < 30; j++)
        {
            gBG3MapBuffer[j + i * 32 + 0x1 + 0x20] = (j + i * 30) | 0x2000;
            gBG2MapBuffer[j + i * 32 + 0x1] = ((j + i * 30) + 0x80) | 0x3000;
        }
        gBG2MapBuffer[i * 32] = gBG2MapBuffer[i * 32 + 31] = 0x80 | 0x3000;
    }
    for(i = 20; i < 25; i++)
    {
        for (j = 0; j < 30; j++)
            gBG3MapBuffer[GET_MAP_TILE_INDEX(i, j, 1, 1)] = 0x2000;
    }
    DmaCopy16(3, eBGDecompBuffer, BG_CHAR_ADDR(1), 0x9B00);
    gMain.isBGScrolling = TRUE;
}