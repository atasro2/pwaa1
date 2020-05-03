#include "global.h"
#include "main.h"
#include "background.h"
#include "ewram.h"
#include "sound_control.h"

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
        sub_8008100();
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
        main->unk13 = 0;
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
            main->unk13 ^= 1; // selected button on title screen
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
        if(main->unk13 == 0)
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
            if(main->unk13 == 0)
            {
                SET_PROCESS_PTR(12, 0, 0, 0, main);
            }
            else
            {
                SET_PROCESS_PTR(13, 0, 0, 0, main);
            }
        }
        if(main->unk13 == 0)
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
