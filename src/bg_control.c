#include "global.h"
#include "background.h"

void sub_8002244(u32 unk0)
{
    struct ScriptContext * scriptCtx = &gScriptContext;
    u16 * map;
    u32 i;
    switch(unk0)
    {
    case 0:
        map = gBG1MapBuffer;
        for(i = 0; i < 0x2C0; i++, map++)
        {
            *map = gUnknown_08013B70[i];
        }
        scriptCtx->unk38 = 0;
        sub_80028B4(scriptCtx->textboxNameId & 0x7F, (u8)(scriptCtx->textboxNameId & 0x80));
        break;
    case 1:
        scriptCtx->unk3A = 0;
        scriptCtx->unk3B = 0xE;
        scriptCtx->unk38 = 2;
        sub_80028B4(0, FALSE);
        break;
    case 2:
        map = gBG1MapBuffer;
        for(i = 0; i < 0x1C0; i++, map++)
        {
            *map = gUnknown_08013B70[i];
        }
        map = gBG1MapBuffer + 0x1C0;
        for(i = 0x1C0; i < 0x220; i++, map++)
        {
            *map = 0;
        }
        map = gBG1MapBuffer + 0x200;
        for(i = 0x1C0; i < 0x1E0; i++, map++)
        {
            *map = gUnknown_08013B70[i];
        }
        scriptCtx->unk38 = 0;
        break;
    default:
        break;
    }
}

void sub_800232C()
{
    struct ScriptContext * scriptCtx = &gScriptContext;
    u32 tiley;
    u32 i;
    switch(scriptCtx->unk38)
    {
    case 0:
    case 1:
        break;
    case 2:
        scriptCtx->unk3A += 2;
        if(scriptCtx->unk3A < 2)
            break;
        scriptCtx->unk3A = 0;
        tiley = scriptCtx->unk3B * 32;
        for(i = 0; i < 32; i++)
        {
            u16 * dest = &gBG1MapBuffer[tiley - 32 + i];
            u16 * src = &gBG1MapBuffer[tiley + i];
            *dest = *src;
        }
        for(i = 0; i < 32; i++)
        {
            u16 * dest = &gBG1MapBuffer[tiley + i];
            u16 * src = &gBG1MapBuffer[tiley + 32 + i];
            *dest = *src;
        }
        scriptCtx->unk3B--;
        if(scriptCtx->unk3B == 0)
        {
            gMain.showTextboxCharacters = TRUE;
            scriptCtx->unk38 = 0;
        }
        break;
    case 3:
        gIORegisters.lcd_bg1vofs += 4;
        if(gIORegisters.lcd_bg1vofs < (u16)-80u)
        {
            gMain.advanceScriptContext = TRUE;
            gMain.showTextboxCharacters = TRUE;
            gIORegisters.lcd_bg1vofs = 0;
            scriptCtx->unk38 = 0;
        }
        break;
    case 4:
        gIORegisters.lcd_bg1vofs -= 4;
        if(gIORegisters.lcd_bg1vofs < (u16)-80u)
        {
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            scriptCtx->unk38 = 1;
        }
        break;
    }
}

void sub_800244C(u32 unk0)
{
    gMain.advanceScriptContext = 0;
    gMain.showTextboxCharacters = 0;
    sub_80028B4(0, FALSE);
    if(unk0)
    {
        gScriptContext.unk38 = 3;
        gInvestigation.unkC = 3;
        gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
        gBG1MapBuffer[622] = 9;
        gBG1MapBuffer[623] = 9;
    }
    else
    {
        gScriptContext.unk38 = 4;
        gInvestigation.unkC = 1;
    }
}

void sub_80024C8(u32 mode, u32 speed)
{
    struct CourtRecord * courtRecord = &gCourtRecord;
    if(mode > 4) // is for save screens
    {
        courtRecord->isSaveScreen = TRUE;
        mode -= 4;
    }
    else
    {
        courtRecord->isSaveScreen = FALSE;
    }
    courtRecord->unk3 = mode;
    courtRecord->unk0 = 0;
    courtRecord->unk6 = courtRecord->unk4;
    courtRecord->unkC &= ~0x4;
    switch(mode)
    {
    case 0:
        break;
    case 1:
        courtRecord->unk1 = speed;
        courtRecord->unk2 = 0;
        courtRecord->unk4 = 0x100;
        break;
    case 2:
        courtRecord->unk1 = -speed;
        courtRecord->unk2 = 31;
        courtRecord->unk4 = 0x110;
        break;
    case 3:
        courtRecord->unk1 = speed;
        break;
    case 4:
        courtRecord->unk1 = -speed;
        break;
    default:
        break;
    }
}

void nullsub_1(struct CourtRecord * courtRecord)
{

}

void sub_800254C(struct CourtRecord * courtRecord)
{
    u32 i;
    courtRecord->unk0 += courtRecord->unk1;
    courtRecord->unk4 -= courtRecord->unk1;
    courtRecord->unk4 &= 0x1FF;
    courtRecord->unk6 -= courtRecord->unk1;
    courtRecord->unk6 &= 0x1FF;
    while(courtRecord->unk0 >= 8)
    {
        courtRecord->unk0 -= 8;
        courtRecord->unk2++;
        courtRecord->unk2 &= 0x1F;
        if(courtRecord->unk2 == 0x1F)
        {
            courtRecord->unk0 = 0;
            courtRecord->unk1 = 0;
            courtRecord->unk4 = 8;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gBG3MapBufferCopy, 0x40);
            DmaCopy16(3, gBG3MapBufferCopy+1, &gBG2MapBuffer[i*0x20], 0x3E);
        }
        if(courtRecord->isSaveScreen)
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i + 31] = gUnknown_08014270[courtRecord->unk2 + i];
            }
        }
        else
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i + 31] = gUnknown_08013F70[courtRecord->unk2 + i];
            }
        }
    }
    while(courtRecord->unk0 <= -8)
    {
        courtRecord->unk0 += 8;
        courtRecord->unk2--;
        courtRecord->unk2 &= 0x1F;
        if(courtRecord->unk2 == 0)
        {
            courtRecord->unk0 = 0;
            courtRecord->unk1 = 0;
            courtRecord->unk4 = 8;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gBG3MapBufferCopy, 0x40);
            DmaCopy16(3, gBG3MapBufferCopy, &gBG2MapBuffer[i*0x20+1], 0x3E);
        }
        if(courtRecord->isSaveScreen)
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i] = gUnknown_08014270[courtRecord->unk2 + i];
            }
        }
        else
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i] = gUnknown_08013F70[courtRecord->unk2 + i];
            }
        }
    }
}

void sub_8002734(struct CourtRecord * courtRecord)
{
    u32 i;
    courtRecord->unk0 += courtRecord->unk1;
    courtRecord->unk4 -= courtRecord->unk1;
    courtRecord->unk4 &= 0x1FF;
    while(courtRecord->unk0 >= 8)
    {
        courtRecord->unk0 -= 8;
        courtRecord->unk2++;
        courtRecord->unk2 &= 0x1F;
        if(courtRecord->unk2 == 0x1F)
        {
            courtRecord->unk0 = 0;
            courtRecord->unk1 = 0;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gBG3MapBufferCopy, 0x40);
            DmaCopy16(3, gBG3MapBufferCopy+1, &gBG2MapBuffer[i*0x20], 0x3E);
        }
        for(i = 0x40; i < 0x180; i += 0x20)
        {
            gBG2MapBuffer[i+31] = 0;
        }
    }
    while(courtRecord->unk0 <= -8)
    {
        courtRecord->unk0 += 8;
        courtRecord->unk2--;
        courtRecord->unk2 &= 0x1F;
        if(courtRecord->unk2 == 0)
        {
            courtRecord->unk0 = 0;
            courtRecord->unk1 = 0;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gBG3MapBufferCopy, 0x40);
            DmaCopy16(3, gBG3MapBufferCopy, &gBG2MapBuffer[i*0x20+1], 0x3E);
        }
        for(i = 0x40; i < 0x180; i += 0x20)
        {
            gBG2MapBuffer[i] = 0;
        }
    }
}

void sub_8002878(struct CourtRecord * courtRecord)
{
    if(gMain.blendMode == 0)
    {
        gUnknown_0811DBF0[courtRecord->unk3](courtRecord);
        gIORegisters.lcd_bg2hofs = courtRecord->unk0 + 8;
    }
}

#ifdef NONMATCHING
void sub_80028B4(u32 arg0, u32 arg1)
{
    u32 i;
    u32 unk0, unk1;
    u32 unk2;
    u8 * src;
    u16 * map;
    if(arg0 == 0)
    {
        for(i = 0x180; i < 0x1E0; i++)
            gBG1MapBuffer[i] = gUnknown_08013B70[i];
        return;
    }
    unk0 = (arg0 / 5);
    unk1 = (arg0 % 5);
    unk0 *= 0x800;
    unk1 *= 0xC0;
    src = gUnknown_08187540;
    src += unk0;
    src += unk1;
    DmaCopy16(3, src, VRAM+0xA80, 0xC0);
    DmaCopy16(3, src+0x400, VRAM+0xB40, 0xC0);
    if(arg1)
    {
        arg1 = 24;
        src = gUnknown_08013B64+0x6;
    }
    else
    {
        arg1 = 0;
        src = gUnknown_08013B64; // could be 2d array
    }
    map = gBG1MapBuffer + 0x1C0;
    map += arg1;
    for(i = 0; i < 6; i++)
    {
        *map = *src;
        map++;
        src++;
    }
    map = gBG1MapBuffer + 0x180;
    map += arg1;
    src = gUnknown_08013B58;
    for(i = 0; i < 6; i++)
    {
        *map = *src;
        map++;
        src++;
    }
    map = gBG1MapBuffer + 0x1A0;
    map += arg1;
    src = gUnknown_08013B58+6;
    for(i = 0; i < 6; i++)
    {
        *map = *src;
        map++;
        src++;
    }
}
#else
NAKED
void sub_80028B4(u32 arg0, u32 arg1)
{
    asm_unified("	push {r4, r5, r6, r7, lr}\n\
	adds r5, r0, #0\n\
	adds r6, r1, #0\n\
	cmp r5, #0\n\
	bne _080028EC\n\
	movs r4, #0xc0\n\
	lsls r4, r4, #1\n\
	ldr r3, _080028E0\n\
	ldr r0, _080028E4\n\
	ldr r2, _080028E8\n\
	movs r5, #0xc0\n\
	lsls r5, r5, #2\n\
	adds r1, r0, r5\n\
_080028CE:\n\
	adds r0, r4, r2\n\
	ldrb r0, [r0]\n\
	strh r0, [r1]\n\
	adds r1, #2\n\
	adds r4, #1\n\
	cmp r4, r3\n\
	bls _080028CE\n\
	b _0800299A\n\
	.align 2, 0\n\
_080028E0: .4byte 0x000001DF\n\
_080028E4: .4byte gBG1MapBuffer\n\
_080028E8: .4byte gUnknown_08013B70\n\
_080028EC:\n\
	adds r0, r5, #0\n\
	movs r1, #5\n\
	bl __udivsi3\n\
	adds r4, r0, #0\n\
	adds r0, r5, #0\n\
	movs r1, #5\n\
	bl __umodsi3\n\
	lsls r4, r4, #0xb\n\
	lsls r1, r0, #1\n\
	adds r1, r1, r0\n\
	lsls r1, r1, #6\n\
	ldr r2, _08002934\n\
	adds r0, r4, r2\n\
	adds r1, r1, r0\n\
	ldr r0, _08002938\n\
	str r1, [r0]\n\
	ldr r2, _0800293C\n\
	str r2, [r0, #4]\n\
	ldr r2, _08002940\n\
	str r2, [r0, #8]\n\
	ldr r3, [r0, #8]\n\
	movs r3, #0x80\n\
	lsls r3, r3, #3\n\
	adds r1, r1, r3\n\
	str r1, [r0]\n\
	ldr r1, _08002944\n\
	str r1, [r0, #4]\n\
	str r2, [r0, #8]\n\
	ldr r0, [r0, #8]\n\
	cmp r6, #0\n\
	beq _0800294C\n\
	movs r6, #0x18\n\
	ldr r2, _08002948\n\
	b _0800294E\n\
	.align 2, 0\n\
_08002934: .4byte gUnknown_08187540\n\
_08002938: .4byte 0x040000D4\n\
_0800293C: .4byte 0x06000A80\n\
_08002940: .4byte 0x80000060\n\
_08002944: .4byte 0x06000B40\n\
_08002948: .4byte gUnknown_08013B64+0x6\n\
_0800294C:\n\
	ldr r2, _080029A0\n\
_0800294E:\n\
	ldr r3, _080029A4\n\
	lsls r0, r6, #1\n\
	adds r3, r0, r3\n\
	movs r4, #0\n\
	adds r1, r0, #0\n\
	ldr r5, _080029A8\n\
	ldr r6, _080029AC\n\
	adds r7, r5, #0\n\
	adds r7, #0x40\n\
	adds r0, r6, #6\n\
	mov ip, r0\n\
_08002964:\n\
	ldrb r0, [r2]\n\
	strh r0, [r3]\n\
	adds r3, #2\n\
	adds r2, #1\n\
	adds r4, #1\n\
	cmp r4, #5\n\
	bls _08002964\n\
	adds r3, r1, r5\n\
	adds r2, r6, #0\n\
	movs r4, #0\n\
_08002978:\n\
	ldrb r0, [r2]\n\
	strh r0, [r3]\n\
	adds r3, #2\n\
	adds r2, #1\n\
	adds r4, #1\n\
	cmp r4, #5\n\
	bls _08002978\n\
	adds r3, r1, r7\n\
	mov r2, ip\n\
	movs r4, #0\n\
_0800298C:\n\
	ldrb r0, [r2]\n\
	strh r0, [r3]\n\
	adds r3, #2\n\
	adds r2, #1\n\
	adds r4, #1\n\
	cmp r4, #5\n\
	bls _0800298C\n\
_0800299A:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080029A0: .4byte gUnknown_08013B64\n\
_080029A4: .4byte gBG1MapBuffer+0x380\n\
_080029A8: .4byte gBG1MapBuffer+0x300\n\
_080029AC: .4byte gUnknown_08013B58\n");
}
#endif

void UpdateBGTilemaps()
{
    if(gMain.tilemapUpdateBits & 1)
        DmaCopy16(3, gBG0MapBuffer, BG_SCREEN_ADDR(28), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 2)
        DmaCopy16(3, gBG1MapBuffer, BG_SCREEN_ADDR(29), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 4)
        DmaCopy16(3, gBG2MapBuffer, BG_SCREEN_ADDR(30), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 8)
        DmaCopy16(3, gBG3MapBuffer, BG_SCREEN_ADDR(31), BG_SCREEN_SIZE);
}
