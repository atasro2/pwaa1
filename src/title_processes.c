#include "global.h"
#include "background.h"
#include "ewram.h"
#include "script.h"
#include "utils.h"
#include "save.h"
#include "sound.h"
#include "graphics.h"

void CapcomLogoProcess(struct Main *main)
{
    struct IORegisters *ioRegsp = &gIORegisters;
    switch (main->process[GAME_SUBPROCESS])
    {
    case 0:
        ioRegsp->lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        ioRegsp->lcd_bg1cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        ioRegsp->lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        ioRegsp->lcd_bg3cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        sub_8001830(0x44);
        sub_8001A9C(0x44);
        ioRegsp->lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_BG3_ON;
        ioRegsp->lcd_bldy = 0x10;
        StartHardwareBlend(1, 1, 1, 0x1F);
        main->tilemapUpdateBits = 8;
        main->process[GAME_SUBPROCESS]++;
        main->process[GAME_PROCESSUNK3] = 120; // 2 second timer for showing Capcom logo
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
            main->tilemapUpdateBits = 0;
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
    struct IORegisters *ioRegsp = &gIORegisters;
    struct OamAttrs * oam;
    switch (main->process[GAME_SUBPROCESS])
    {
    case 0:
        ResetGameState();
        LoadSaveData();
        SET_PROCESS_PTR(1, 1, 0, 0, main); // ? main->process[GAME_SUBPROCESS]++; hello?
        break;
    case 1:
        DmaCopy16(3, gUnusedAsciiCharSet, VRAM + 0x3800, sizeof(gUnusedAsciiCharSet));
        DmaCopy16(3, gUnknown_08180000, PLTT, sizeof(gUnknown_08180000));
        LZ77UnCompWram(gUnknown_08180200, eBGDecompBuffer);
        DmaCopy16(3, eBGDecompBuffer, BG_CHAR_ADDR(1), 30*20*TILE_SIZE_8BPP);
        DmaCopy16(3, gUnknown_08194580, OBJ_PLTT + 0x40, sizeof(gUnknown_08194580));
        DmaCopy16(3, gUnknown_08193CA0, OBJ_VRAM0 + 0x400, sizeof(gUnknown_08193CA0));
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
        ioRegsp->lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
        gInvestigation.unk15 = 0;
        gInvestigation.unk14 = 2;
        main->selectedButton = 0;
        main->unk19C |= 4;
        main->tilemapUpdateBits = 9;
        StartHardwareBlend(1, 1, 1, 0x1F);
        SET_PROCESS_PTR(1, 2, 0, 0, main); // ? main->process[GAME_SUBPROCESS]++; hello?
        break;
    case 2:
        if(gJoypad.pressedKeys & (A_BUTTON | START_BUTTON))
        {
            PlaySE(0x3A);
            gScriptContext.unk2A = 0;
            SET_PROCESS_PTR(1, 3, 0, 0, main); // ? main->process[GAME_SUBPROCESS]++; hello?
        }
        else if(main->unk17 & 0xF0 && gJoypad.pressedKeys & (DPAD_DOWN | DPAD_UP))
        {
            gInvestigation.unk15 = 0;
            gInvestigation.unk14 = 2;
            main->selectedButton ^= 1; // selected button on title screen
            PlaySE(0x2A);
        }
        gInvestigation.unk15++;
        if(gInvestigation.unk15 > 7)
        {
            gInvestigation.unk15 = 0;
            gInvestigation.unk14++;
        }
        if(gInvestigation.unk14 > 6)
        {
            gInvestigation.unk14 = 2;
        }
        if(main->selectedButton == 0)
        {
            oam = &gOamObjects[49];
            oam->attr2 = SPRITE_ATTR2(0x20, 1, gInvestigation.unk14);
            oam++;
            oam->attr2 = SPRITE_ATTR2(0x28, 1, gInvestigation.unk14);
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
                oam->attr2 = SPRITE_ATTR2(0x30, 0, gInvestigation.unk14);
                oam++;
                oam->attr2 = SPRITE_ATTR2(0x38, 0, gInvestigation.unk14);
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
                oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam->attr2 = SPRITE_ATTR2(0x20, 0, 2);
                oam++;
                oam->attr0 = SPRITE_ATTR0_CLEAR;
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
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    oam->attr2 = SPRITE_ATTR2(0x30, 0, 2);
                    oam++;
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
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
