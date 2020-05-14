#include "global.h"
#include "main.h"
#include "background.h"
#include "ewram.h"
#include "sound_control.h"
#include "agb_sram.h"

void CapcomLogoProcess(struct Main *main)
{
    struct LCDIORegisters *lcdIoRegsp = &gLCDIORegisters;
    switch (main->process[GAME_SUBPROCESS])
    {
    case 0:
        lcdIoRegsp->lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        lcdIoRegsp->lcd_bg1cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        lcdIoRegsp->lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        lcdIoRegsp->lcd_bg3cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        sub_8001830(0x44);
        sub_8001A9C(0x44);
        lcdIoRegsp->lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_BG3_ON;
        lcdIoRegsp->lcd_bldy = 0x10;
        StartHardwareBlend(1, 1, 1, 0x1F);
        main->unk16 = 8;
        main->process[GAME_SUBPROCESS]++;
        main->process[GAME_PROCESSUNK3] = 0x78; // Timer for showing Capcom logo
        break;
    case 1:
        if (main->blendMode == 0)
        {
            if (main->process[GAME_PROCESSUNK3] != 0)
            {
                main->process[GAME_PROCESSUNK3]--;
                break;
            }
            StartHardwareBlend(2, 1, 1, 0x1F);
            main->unk16 = 0;
            main->process[GAME_SUBPROCESS]++;
        }
        break;
    case 2:
        if (main->blendMode == 0)
        {
            SET_PROCESS_PTR(1, 0, 0, 0, main);
        }
        break;
    default:
        break;
    }
}

void TitleScreenProcess(struct Main *main)
{
    u32 temp;
    struct LCDIORegisters *lcdIoRegsp = &gLCDIORegisters;
    struct OamAttrs * oam;
    switch (main->process[GAME_SUBPROCESS])
    {
    case 0:
        ResetGameState();
        LoadSaveData();
        SET_PROCESS_PTR(1, 1, 0, 0, main); // ? main->process[GAME_SUBPROCESS]++; hello?
        break;
    case 1:
        DmaCopy16(3, gUnknown_08185D20, VRAM + 0x3800, 0x800);
        DmaCopy16(3, gUnknown_08180000, PLTT, sizeof(gUnknown_08180000));
        LZ77UnCompWram(gUnknown_08180200, eUnknown_0202CFC0);
        DmaCopy16(3, eUnknown_0202CFC0, BG_CHAR_ADDR(1), 0x9600);
        DmaCopy16(3, gUnknown_08194580, PLTT + 0x240, 0xC0);
        DmaCopy16(3, gUnknown_08193CA0, OBJ_VRAM0 + 0x400, 0x400);
        oam = &gOamObjects[49];
        oam->attr0 = SPRITE_ATTR0(112, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(88, FALSE, FALSE, 2);
        oam->attr2 = SPRITE_ATTR2(0x20, 1, 2);
        oam++;
        oam->attr0 = SPRITE_ATTR0(112, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(120, FALSE, FALSE, 2);
        oam->attr2 = SPRITE_ATTR2(0x28, 1, 2);
        oam++;
        if(main->unk17 & 0xF0)
        {
            oam->attr0 = SPRITE_ATTR0(132, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(88, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x30, 0, 2);
            oam++;
            oam->attr0 = SPRITE_ATTR0(132, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(120, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x38, 0, 2);
        }
        lcdIoRegsp->lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
        gUnknown_03003A50.unk15 = 0;
        gUnknown_03003A50.unk14 = 2;
        main->selectedButton = 0;
        main->unk19C |= 4;
        main->unk16 = 9;
        StartHardwareBlend(1, 1, 1, 0x1F);
        SET_PROCESS_PTR(1, 2, 0, 0, main); // ? main->process[GAME_SUBPROCESS]++; hello?
        break;
    case 2:
        if(gJoypad.pressedKeysRaw & (A_BUTTON | START_BUTTON))
        {
            PlaySE(0x3A);
            gScriptContext.unk2A = 0;
            SET_PROCESS_PTR(1, 3, 0, 0, main); // ? main->process[GAME_SUBPROCESS]++; hello?
        }
        else if(main->unk17 & 0xF0 && gJoypad.pressedKeysRaw & (DPAD_DOWN | DPAD_UP))
        {
            gUnknown_03003A50.unk15 = 0;
            gUnknown_03003A50.unk14 = 2;
            main->selectedButton ^= 1; // selected button on title screen
            PlaySE(0x2A);
        }
        gUnknown_03003A50.unk15++;
        if(gUnknown_03003A50.unk15 > 7)
        {
            gUnknown_03003A50.unk15 = 0;
            gUnknown_03003A50.unk14++;
        }
        if(gUnknown_03003A50.unk14 > 6)
        {
            gUnknown_03003A50.unk14 = 2;
        }
        if(main->selectedButton == 0)
        {
            oam = &gOamObjects[49];
            oam->attr2 = SPRITE_ATTR2(0x20, 1, gUnknown_03003A50.unk14);
            oam++;
            oam->attr2 = SPRITE_ATTR2(0x28, 1, gUnknown_03003A50.unk14);
            oam++;
            if(main->unk17 & 0xF0)
            {
                oam->attr2 = SPRITE_ATTR2(0x30, 0, 5);
                oam++;
                oam->attr2 = SPRITE_ATTR2(0x38, 0, 5);
            }
        }
        else
        {
            oam = &gOamObjects[49];
            oam->attr2 = SPRITE_ATTR2(0x20, 1, 5);
            oam++;
            oam->attr2 = SPRITE_ATTR2(0x28, 1, 5);
            oam++;
            if(main->unk17 & 0xF0)
            {
                oam->attr2 = SPRITE_ATTR2(0x30, 0, gUnknown_03003A50.unk14);
                oam++;
                oam->attr2 = SPRITE_ATTR2(0x38, 0, gUnknown_03003A50.unk14);
            }
        }
        break;
    case 3:
        main->process[GAME_PROCESSUNK3]++;
        if(main->process[GAME_PROCESSUNK3] >= 40)
        {
            if(main->selectedButton == 0)
            {
                SET_PROCESS_PTR(12, 0, 0, 0, main);
            }
            else
            {
                SET_PROCESS_PTR(13, 0, 0, 0, main);
            }
        }
        if(main->selectedButton == 0)
        {
            main->process[GAME_PROCESSUNK2]++;
            if(main->process[GAME_PROCESSUNK2] > 4)
            {
                oam = &gOamObjects[49];
                oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_ERASE, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                oam->attr2 = SPRITE_ATTR2(0x20, 0, 2);
                oam++;
                oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_ERASE, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                oam->attr2 = SPRITE_ATTR2(0x28, 0, 2);
                oam++;
                if(main->process[GAME_PROCESSUNK2] > 8)
                {
                    main->process[GAME_PROCESSUNK2] = 0;
                }
            }
            else
            {
                oam = &gOamObjects[49];
                oam->attr0 = SPRITE_ATTR0(112, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                oam->attr2 = SPRITE_ATTR2(0x20, 0, 2);
                oam++;
                oam->attr0 = SPRITE_ATTR0(112, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                oam->attr2 = SPRITE_ATTR2(0x28, 0, 2);
                oam++;
            }
            if(main->unk17 & 0xF0)
            {
                if((oam->attr0 & 0xFF) <= DISPLAY_WIDTH - 16)
                {
                    oam->attr0 += gScriptContext.unk2A;
                }
                oam++;
                if((oam->attr0 & 0xFF) <= DISPLAY_WIDTH - 16)
                {
                    oam->attr0 += gScriptContext.unk2A;
                }
            }
        }
        else
        {
            oam = &gOamObjects[49];
            if((oam->attr0 & 0xFF) <= DISPLAY_WIDTH - 16)
            {
                oam->attr0 += gScriptContext.unk2A;
            }
            oam++;
            if((oam->attr0 & 0xFF) <= DISPLAY_WIDTH - 16)
            {
                oam->attr0 += gScriptContext.unk2A;
            }
            oam++;
            if(main->unk17 & 0xF0)
            {
                main->process[GAME_PROCESSUNK2]++;
                if(main->process[GAME_PROCESSUNK2] > 4)
                {
                    oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_ERASE, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                    oam->attr2 = SPRITE_ATTR2(0x30, 0, 2);
                    oam++;
                    oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_ERASE, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                    oam->attr2 = SPRITE_ATTR2(0x38, 0, 2);
                    oam++;
                    if(main->process[GAME_PROCESSUNK2] > 8)
                    {
                        main->process[GAME_PROCESSUNK2] = 0;
                    }
                }
                else
                {
                    oam->attr0 = SPRITE_ATTR0(132, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                    oam->attr2 = SPRITE_ATTR2(0x30, 0, 2);
                    oam++;
                    oam->attr0 = SPRITE_ATTR0(132, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                    oam->attr2 = SPRITE_ATTR2(0x38, 0, 2);
                    oam++;
                }
            }
        }
        gScriptContext.unk2A++;
        break;
    default:
        break;
    }
}

//TODO: this is the most important TODO here plase finish the decomp for this function
#ifdef NONMATCHING
void GameOverScreenProcess(struct Main *main)
{
    struct LCDIORegisters *lcdIoRegsp = &gLCDIORegisters; // r4
    struct OamAttrs * oam = &gOamObjects[49]; // r3 
    u32 i;
    switch (main->process[GAME_SUBPROCESS])
    {
    case 0:
        oam->attr0 = SPRITE_ATTR0(48, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE((-64-24) & 0x1FF, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 5);
        oam++;
        oam->attr0 = SPRITE_ATTR0(48, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+24, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 5);
        DmaCopy16(3, gUnknown_081911C0, VRAM+0x1400, 0x2E0);
        DmaCopy16(3, gUnknown_08194500, PLTT+0x20, 0x20);
        DmaCopy16(3, gUnknown_08192CA0, VRAM+0x13400, 0x1000);
        DmaCopy16(3, gUnknown_08194560, PLTT+0x2A0, 0x20);
        for(i = 0; i < 0x400; i++)
        {
            gBG2MapBuffer[i] = 0;
        }
        lcdIoRegsp->lcd_bg2vofs = 0;
        lcdIoRegsp->lcd_bg2hofs = 8;
        lcdIoRegsp->lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        lcdIoRegsp->lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
        main->unk16 = 13;
        main->process[GAME_SUBPROCESS]++;
        main->process[GAME_PROCESSUNK2] = 0;
        break;
    case 1:
        oam->attr1 = (((oam->attr1 & 0x1FF) + 8) & 0x1FF) + (oam->attr1 & ~0x1FF); // shitty way to add 8 to the X coordinate but ok
        oam++;
        oam->attr1 -= 8;
        for(i = 0; i < 10; i++)
        {
            // i will leave this for someone else 
        }
        for(i = 0; i < 10; i++)
        {
            // i will leave this for someone else 
        }
        if(main->process[GAME_PROCESSUNK2] > 16)
        {
            PlaySE(0x56);
            main->process[GAME_SUBPROCESS]++;
            main->process[GAME_PROCESSUNK2] = 0;
        }
        else
        {
            main->process[GAME_PROCESSUNK2]++;
        }
        break;
    case 2:
        if(main->process[GAME_PROCESSUNK2] > 120) // 2 seconds?
        {
            StartHardwareBlend(2, 3, 1, 0x1F);
            main->process[GAME_SUBPROCESS]++;
        }
        else
        {
            main->process[GAME_PROCESSUNK2]++;
        }
        break;
    case 3:
        if(main->blendMode == 0)
        {
            DmaFill16(3, 0, PLTT, 0x400);
            SET_PROCESS_PTR(1, 0, 0, 0, main);
        }
        break;
    default:
        break;
    }
}
#else
NAKED
void GameOverScreenProcess(struct Main * main)
{
    asm_unified("GameOverScreenProcess: @ 0x08007E78\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	adds r6, r0, #0\n\
	ldr r4, _08007E9C\n\
	ldr r3, _08007EA0\n\
	ldrb r0, [r6, #5]\n\
	cmp r0, #1\n\
	beq _08007F80\n\
	cmp r0, #1\n\
	bgt _08007EA4\n\
	cmp r0, #0\n\
	beq _08007EB2\n\
	b _0800809E\n\
	.align 2, 0\n\
_08007E9C: .4byte gLCDIORegisters\n\
_08007EA0: .4byte gOamObjects+0x188\n\
_08007EA4:\n\
	cmp r0, #2\n\
	bne _08007EAA\n\
	b _0800805C\n\
_08007EAA:\n\
	cmp r0, #3\n\
	bne _08007EB0\n\
	b _0800807C\n\
_08007EB0:\n\
	b _0800809E\n\
_08007EB2:\n\
	movs r1, #0x30\n\
	strh r1, [r3]\n\
	ldr r0, _08007F38\n\
	strh r0, [r3, #2]\n\
	ldr r0, _08007F3C\n\
	strh r0, [r3, #4]\n\
	adds r3, #8\n\
	strh r1, [r3]\n\
	ldr r0, _08007F40\n\
	strh r0, [r3, #2]\n\
	ldr r0, _08007F44\n\
	strh r0, [r3, #4]\n\
	ldr r0, _08007F48\n\
	ldr r1, _08007F4C\n\
	str r1, [r0]\n\
	ldr r1, _08007F50\n\
	str r1, [r0, #4]\n\
	ldr r1, _08007F54\n\
	str r1, [r0, #8]\n\
	ldr r1, [r0, #8]\n\
	ldr r1, _08007F58\n\
	str r1, [r0]\n\
	ldr r1, _08007F5C\n\
	str r1, [r0, #4]\n\
	ldr r2, _08007F60\n\
	str r2, [r0, #8]\n\
	ldr r1, [r0, #8]\n\
	ldr r1, _08007F64\n\
	str r1, [r0]\n\
	ldr r1, _08007F68\n\
	str r1, [r0, #4]\n\
	ldr r1, _08007F6C\n\
	str r1, [r0, #8]\n\
	ldr r1, [r0, #8]\n\
	ldr r1, _08007F70\n\
	str r1, [r0]\n\
	ldr r1, _08007F74\n\
	str r1, [r0, #4]\n\
	str r2, [r0, #8]\n\
	ldr r0, [r0, #8]\n\
	movs r5, #0\n\
	ldr r2, _08007F78\n\
	adds r3, r4, #0\n\
	adds r3, #0x4a\n\
	movs r1, #0\n\
	ldr r0, _08007F7C\n\
_08007F0E:\n\
	strh r1, [r0]\n\
	adds r0, #2\n\
	adds r5, #1\n\
	cmp r5, r2\n\
	bls _08007F0E\n\
	movs r1, #0\n\
	movs r0, #0\n\
	strh r0, [r4, #0x12]\n\
	movs r0, #8\n\
	strh r0, [r4, #0x10]\n\
	movs r0, #0xf8\n\
	lsls r0, r0, #6\n\
	strh r0, [r4, #4]\n\
	movs r0, #0xea\n\
	lsls r0, r0, #5\n\
	strh r0, [r3]\n\
	movs r0, #0xd\n\
	strb r0, [r6, #0x16]\n\
	ldrb r0, [r6, #5]\n\
	adds r0, #1\n\
	b _0800804A\n\
	.align 2, 0\n\
_08007F38: .4byte 0x0000C1A8\n\
_08007F3C: .4byte 0x000051A0\n\
_08007F40: .4byte 0x0000C108\n\
_08007F44: .4byte 0x000051E0\n\
_08007F48: .4byte 0x040000D4\n\
_08007F4C: .4byte gUnknown_081911C0\n\
_08007F50: .4byte 0x06001400\n\
_08007F54: .4byte 0x80000170\n\
_08007F58: .4byte gUnknown_08194500\n\
_08007F5C: .4byte 0x05000020\n\
_08007F60: .4byte 0x80000010\n\
_08007F64: .4byte gUnknown_08192CA0\n\
_08007F68: .4byte 0x06013400\n\
_08007F6C: .4byte 0x80000800\n\
_08007F70: .4byte gUnknown_08194560\n\
_08007F74: .4byte 0x050002A0\n\
_08007F78: .4byte 0x000003FF\n\
_08007F7C: .4byte gBG2MapBuffer\n\
_08007F80:\n\
	ldrh r1, [r3, #2]\n\
	ldr r0, _08008050\n\
	adds r2, r0, #0\n\
	ands r2, r1\n\
	adds r2, #8\n\
	ands r2, r0\n\
	movs r0, #0xfe\n\
	lsls r0, r0, #8\n\
	ands r0, r1\n\
	adds r0, r0, r2\n\
	strh r0, [r3, #2]\n\
	ldrh r0, [r3, #0xa]\n\
	subs r0, #8\n\
	strh r0, [r3, #0xa]\n\
	movs r5, #0\n\
	ldr r0, _08008054\n\
	mov sb, r0\n\
	mov r8, r5\n\
	ldr r0, _08008058\n\
	adds r0, #0xe\n\
	mov sl, r0\n\
_08007FAA:\n\
	lsls r0, r5, #6\n\
	mov r1, sb\n\
	adds r3, r0, r1\n\
	ldrb r1, [r6, #6]\n\
	lsls r0, r1, #1\n\
	adds r3, r3, r0\n\
	movs r4, #0\n\
	cmp r4, r1\n\
	bhs _08007FE0\n\
	mov r1, r8\n\
	add r1, sl\n\
	movs r2, #0x85\n\
	lsls r2, r2, #5\n\
	mov ip, r2\n\
	movs r7, #0xa0\n\
	lsls r7, r7, #2\n\
_08007FCA:\n\
	ldrb r2, [r1]\n\
	add r2, ip\n\
	strh r2, [r3]\n\
	adds r0, r3, r7\n\
	strh r2, [r0]\n\
	subs r3, #2\n\
	subs r1, #1\n\
	adds r4, #1\n\
	ldrb r0, [r6, #6]\n\
	cmp r4, r0\n\
	blo _08007FCA\n\
_08007FE0:\n\
	movs r1, #0xf\n\
	add r8, r1\n\
	adds r5, #1\n\
	cmp r5, #9\n\
	bls _08007FAA\n\
	movs r5, #0\n\
	ldr r0, _08008058\n\
	adds r0, #0xe\n\
	mov r8, r0\n\
_08007FF2:\n\
	lsls r0, r5, #6\n\
	mov r2, sb\n\
	adds r3, r0, r2\n\
	ldrb r1, [r6, #6]\n\
	movs r0, #0x1f\n\
	subs r0, r0, r1\n\
	lsls r0, r0, #1\n\
	adds r3, r3, r0\n\
	movs r4, #0\n\
	adds r7, r5, #1\n\
	cmp r4, r1\n\
	bhs _08008032\n\
	lsls r0, r5, #4\n\
	subs r0, r0, r5\n\
	mov r2, r8\n\
	adds r1, r0, r2\n\
	movs r0, #0xa5\n\
	lsls r0, r0, #5\n\
	mov ip, r0\n\
	movs r5, #0xa0\n\
	lsls r5, r5, #2\n\
_0800801C:\n\
	ldrb r2, [r1]\n\
	add r2, ip\n\
	strh r2, [r3]\n\
	adds r0, r3, r5\n\
	strh r2, [r0]\n\
	adds r3, #2\n\
	subs r1, #1\n\
	adds r4, #1\n\
	ldrb r2, [r6, #6]\n\
	cmp r4, r2\n\
	blo _0800801C\n\
_08008032:\n\
	adds r5, r7, #0\n\
	cmp r5, #9\n\
	bls _08007FF2\n\
	ldrb r0, [r6, #6]\n\
	cmp r0, #0xe\n\
	bls _08008076\n\
	movs r0, #0x56\n\
	bl PlaySE\n\
	ldrb r0, [r6, #5]\n\
	adds r0, #1\n\
	movs r1, #0\n\
_0800804A:\n\
	strb r0, [r6, #5]\n\
	strb r1, [r6, #6]\n\
	b _0800809E\n\
	.align 2, 0\n\
_08008050: .4byte 0x000001FF\n\
_08008054: .4byte gBG2MapBuffer\n\
_08008058: .4byte gUnknown_080189A4\n\
_0800805C:\n\
	ldrb r0, [r6, #6]\n\
	cmp r0, #0x77\n\
	bls _08008076\n\
	movs r0, #2\n\
	movs r1, #3\n\
	movs r2, #1\n\
	movs r3, #0x1f\n\
	bl StartHardwareBlend\n\
	ldrb r0, [r6, #5]\n\
	adds r0, #1\n\
	strb r0, [r6, #5]\n\
	b _0800809E\n\
_08008076:\n\
	adds r0, #1\n\
	strb r0, [r6, #6]\n\
	b _0800809E\n\
_0800807C:\n\
	adds r0, r6, #0\n\
	adds r0, #0x76\n\
	ldrh r1, [r0]\n\
	cmp r1, #0\n\
	bne _0800809E\n\
	mov r0, sp\n\
	strh r1, [r0]\n\
	ldr r1, _080080B0\n\
	str r0, [r1]\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #0x13\n\
	str r0, [r1, #4]\n\
	ldr r0, _080080B4\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	movs r0, #1\n\
	str r0, [r6, #4]\n\
_0800809E:\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080080B0: .4byte 0x040000D4\n\
_080080B4: .4byte 0x81000200\n");
}
#endif

u32 SaveGameData()
{
    gSaveDataBuffer.main.unk17 |= 0x10;
    DmaCopy16(3, gSaveVersion, gSaveDataBuffer.saveDataVer, 0x30);
    CalculateSaveChecksum();
    return WriteSramEx((void*)&gSaveDataBuffer, SRAM_START, sizeof(gSaveDataBuffer));
}

u32 LoadSaveData()
{
    u32 i;
    char * sramVer;
    ReadSram(SRAM_START, (void*)&gSaveDataBuffer, 0x29D0);
    sramVer = gSaveDataBuffer.saveDataVer;
    for(i = 0; i < 0x30; i++)
    {
        if(gSaveVersion[i] != *sramVer)
        {
            gMain.unk17 = 0;
            return 2;
        }
        sramVer++;
    }
    gMain.unk8E = gSaveDataBuffer.main.unk8E;
    if(CheckSaveChecksum() == FALSE)
    {
        gMain.unk17 = 0;
        return 1;
    }
    gMain.unk17 = 0x10;
    return 0;
}

void CalculateSaveChecksum()
{
    u8 * saveData; 
    #ifndef NONMATCHING
    register u32 magic asm("r2");
    #else
    u32 magic;
    #endif
    gSaveDataBuffer.magic = 0;
    magic = 0;
    saveData = (void *)&gSaveDataBuffer.main;
    while(saveData < (u8 *)&gSaveDataBuffer + sizeof(gSaveDataBuffer))
    {
        magic += saveData[0];
        saveData += 4;
    }
    gSaveDataBuffer.magic = magic + 2343; 
}

bool32 CheckSaveChecksum()
{
    u32 magic = 0;
    u8 * saveData = (u8 *)&gSaveDataBuffer.main;
    while(saveData < (u8 *)&gSaveDataBuffer+sizeof(gSaveDataBuffer))
    {
        magic += *saveData;
        saveData += 4;
    }
    magic += 2343;
    if(magic == gSaveDataBuffer.magic)
    {
        return TRUE;
    }
    return FALSE;
}

void ClearSaveProcess(struct Main *main)
{
    struct OamAttrs * oam;
    u32 i;
    switch (main->process[GAME_SUBPROCESS])
    {
    case 0:
        DmaCopy16(3, gUnknown_08185D20, VRAM + 0x3800, 0x800);
        DmaCopy16(3, GetBGPalettePtr(0), PLTT, 0x200);
        DmaCopy16(3, gUnknown_08186540, VRAM, 0x1000);
        DmaCopy16(3, gUnknown_081964A8, VRAM + 0x13C00, 0x800);
        DmaCopy16(3, gUnknown_081FD92C, PLTT + 0x320, 0x40);
        DmaCopy16(3, gTextPal, PLTT + 0x200, 0x20);
        gLCDIORegisters.lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        gLCDIORegisters.lcd_bg1cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        gLCDIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        i = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP | BGCNT_TXT256x256; // scrub scrub CC!!11
        gLCDIORegisters.lcd_bg3cnt = i;
        sub_8001830(0x43);
        sub_8001A9C(0x43);
        for(i = 0; i < 0x400; i++)
        {
            gBG2MapBuffer[i] = 0;
        }
        sub_80024C8(6, 8);
        gLCDIORegisters.lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
        main->unk16 = 0xC;
        gLCDIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        gLCDIORegisters.lcd_bldy = 0x10;
        main->selectedButton = 1;
        StartHardwareBlend(1, 1, 1, 0x1F);
        main->process[GAME_SUBPROCESS]++;
        break;
    case 1:
        if(main->blendMode != 0)
        {
            break;
        }
        sub_8002878(&gUnknown_03002840);
        if(gUnknown_03002840.unk1 != 0)
        {
            break;
        }
        main->unk14 = 1;
        main->unk15 = 1;
        gScriptContext.currentSection = 0xFFFF;
        ChangeScriptSection(4);
        gScriptContext.textXOffset = 9;
        gScriptContext.textYOffset = 52;
        oam = &gOamObjects[40];
        oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_BLEND, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(48, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 10);
        oam++;
        oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_BLEND, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(128, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x200, 0, 10); 
        main->blendCounter = 0;
        main->blendDelay = 1;
        main->blendY = 0x10;
        gLCDIORegisters.lcd_bldcnt = BLDCNT_TGT2_BG3 | BLDCNT_EFFECT_BLEND;
        gLCDIORegisters.lcd_bldalpha = BLDALPHA_BLEND(0, main->blendY);
        main->process[GAME_SUBPROCESS]++;
        break;
    case 2:
        if(gScriptContext.unk0 & 0x8)
        {
            if(gJoypad.pressedKeysRaw & (DPAD_RIGHT|DPAD_LEFT))
            {
                PlaySE(0x2A);
                main->selectedButton ^= 1;
            }
            else if(gJoypad.pressedKeysRaw & A_BUTTON)
            {
                PlaySE(0x2B);
                StartHardwareBlend(2, 1, 1, 0x1F);
                main->unk16 = 0;
                main->process[GAME_SUBPROCESS]++;
            }
        }
        oam = &gOamObjects[40];
        if(main->selectedButton == 0)
        {
            oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 9);
            oam++;
            oam->attr2 = SPRITE_ATTR2(0x200, 0, 10);
        }
        else
        {
            oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 10);
            oam++;
            oam->attr2 = SPRITE_ATTR2(0x200, 0, 9);
        }
        if(main->process[GAME_SUBPROCESS] == 2)
        {
            if(main->blendY > 0)
            {
                main->blendCounter++;
                if(main->blendCounter >= main->blendDelay)
                {
                    main->blendCounter = 0;
                    main->blendY--;
                }
                gLCDIORegisters.lcd_bldalpha = BLDALPHA_BLEND(0x10-main->blendY, main->blendY);
            }
        }
        break;
    case 3:
        if(main->blendMode == 0)
        {
            if(main->selectedButton == 0)
            {
                DmaFill32(3, 0, &gSaveDataBuffer, sizeof(gSaveDataBuffer));
                WriteSramEx((void*)&gSaveDataBuffer, SRAM_START, sizeof(gSaveDataBuffer));
            }
            SET_PROCESS_PTR(0, 0, 0, 0, main);
        }
        break;
    default:
        break;
    }
}