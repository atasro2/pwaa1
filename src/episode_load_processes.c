#include "global.h"
#include "background.h"
#include "ewram.h"
#include "sound.h"
#include "agb_sram.h"
#include "save.h"
#include "graphics.h"
#include "constants/script.h"
#include "constants/songs.h"
#include "constants/process.h"

void sub_8008DF4(struct Main * main)
{
    main->advanceScriptContext = FALSE;
    main->showTextboxCharacters = FALSE;
    StartHardwareBlend(2, 0, 1, 0x1F);
    main->process[GAME_PROCESS_STATE]++;
}

void sub_8008E18(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;

    LZ77UnCompWram(gUnknown_081946C0, eBGDecompBuffer);
    DmaCopy16(3, eBGDecompBuffer, OBJ_VRAM0+0x3400, 0x2800);
    DmaCopy16(3, gGfxPalChoiceSelected, OBJ_PLTT+0x120, 0x40);
    DmaCopy16(3, gUnknown_08186540, VRAM, 0x1000);
    DecompressBackgroundIntoBuffer(0x43);
    CopyBGDataToVram(0x43);
    gMain.animationFlags &= ~3;
    oam = gOamObjects;
    for(i = 0; i < ARRAY_COUNT(gOamObjects); i++)
        oam++->attr0 = SPRITE_ATTR0_CLEAR;
    gIORegisters.lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG1_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON; 
    main->tilemapUpdateBits = 0xA;
    SetTextboxSize(2);
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        for(j = 0; j < 2; j++)
        {
            oam->attr0 = SPRITE_ATTR0(i*32, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, 1);
            if((main->caseEnabledFlags >> i) & 1)
                oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 9) + j*0x20 + i*0x40; // increases tileNum outside macro ajfjshdfjshdf
            else
                oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 9) + j*0x20; 
            oam++;
        }
    }
    main->xPosCounter = 0;
    PlaySE(SE007_MENU_OPEN_SUBMENU);
    StartHardwareBlend(1, 0, 1, 0x1F);
    main->process[GAME_PROCESS_STATE]++;
}

void sub_8008F68(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;
    
    main->xPosCounter += 6;
    main->xPosCounter &= 0x1FF;
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        for(j = 0; j < 2; j++)
        {
            u16 x;
            x = main->xPosCounter + 0x170;
            x &= 0x1FF;
            oam->attr1 = SPRITE_ATTR1_AFFINE(x, 0, 3) + j * 0x40;
            oam++;
        }
    }
    if(main->xPosCounter >= 152)
    {
        oam = &gOamObjects[38];
        oam->attr1 = SPRITE_ATTR1_AFFINE(8, 0, 3);
        oam++;
        oam->attr1 = SPRITE_ATTR1_AFFINE(72, 0, 3);
        main->process[GAME_PROCESS_STATE]++;
    }
}

void sub_8008FE8(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;
    
    main->xPosCounter += 6;
    main->xPosCounter &= 0x1FF;
    oam = &gOamObjects[40];
    for(i = 1; i < 4; i++)
    {
        for(j = 0; j < 2; j++)
        {
            u16 x;
            x = main->xPosCounter + 0x170;
            x &= 0x1FF;
            oam->attr1 = SPRITE_ATTR1_AFFINE(x, 0, 3) + j * 0x40;
            oam++;
        }
    }
    if(main->xPosCounter >= 184)
    {
        oam = &gOamObjects[40];
        oam->attr1 = SPRITE_ATTR1_AFFINE(40, 0, 3);
        oam++;
        oam->attr1 = SPRITE_ATTR1_AFFINE(104, 0, 3);
        main->process[GAME_PROCESS_STATE]++;
    }
}

void sub_8009068(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;
    
    main->xPosCounter += 6;
    main->xPosCounter &= 0x1FF;
    oam = &gOamObjects[42];
    for(i = 2; i < 4; i++)
    {
        for(j = 0; j < 2; j++)
        {
            u16 x;
            x = main->xPosCounter + 0x170;
            x &= 0x1FF;
            oam->attr1 = SPRITE_ATTR1_AFFINE(x, 0, 3) + j * 0x40;
            oam++;
        }
    }
    if(main->xPosCounter >= 216)
    {
        oam = &gOamObjects[42];
        oam->attr1 = SPRITE_ATTR1_AFFINE(72, 0, 3);
        oam++;
        oam->attr1 = SPRITE_ATTR1_AFFINE(136, 0, 3);
        main->process[GAME_PROCESS_STATE]++;
    }
}

void EpisodeClearedProcess(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;
    u32 temp;
    switch(main->process[GAME_PROCESS_STATE])
    {
        case 0:
            sub_8008DF4(main);
            break;
        case 1:
            if(main->blendMode != 0)
                break;
            sub_8008E18(main);
            if(gMain.saveContinueFlags & 0xF0)
            {
                ReadSram(SRAM_START, (void*)&gSaveDataBuffer, sizeof(gSaveDataBuffer));
                gSaveDataBuffer.main.caseEnabledFlags |= 1 << main->process[GAME_PROCESS_VAR2];
                SaveGameData();
            }
            else
            {
                DmaCopy16(3, gSaveVersion, gSaveDataBuffer.saveDataVer, sizeof(gSaveVersion));
                gSaveDataBuffer.magic = 0;
                gSaveDataBuffer.main.caseEnabledFlags |= 1 << main->process[GAME_PROCESS_VAR2];
                WriteSramEx((void*)&gSaveDataBuffer, SRAM_START, sizeof(gSaveDataBuffer));
            }
            break;
        case 2:
            sub_8008F68(main);
            break;
        case 3:
            sub_8008FE8(main);
            break;
        case 4:
            sub_8009068(main);
            break;
        case 5:
            main->xPosCounter += 6;
            main->xPosCounter &= 0x1FF;
            oam = &gOamObjects[44];
            for(i = 3; i < 4; i++)
            {
                for(j = 0; j < 2; j++)
                {
                    temp = main->xPosCounter + 0x170;
                    temp &= 0x1FF;
                    oam->attr1 = (0xC000 + temp + j * 0x40);
                    oam++;
                }
            }
            if(main->xPosCounter >= 248)
            {
                oam = &gOamObjects[44];
                oam->attr1 = SPRITE_ATTR1_AFFINE(104, 0, 3);
                oam++;
                oam->attr1 = SPRITE_ATTR1_AFFINE(168, 0, 3);
                main->caseEnabledFlags |= 1 << main->process[GAME_PROCESS_VAR2];
                main->affineScale = 0x100;
                main->process[GAME_PROCESS_STATE]++;
            }
            break;
        case 6:
            main->affineScale -= 0x10;
            oam = &gOamObjects[38];
            oam += main->process[GAME_PROCESS_VAR2]*2;
            if(main->affineScale != 0)
            {
                gOamObjects[0].attr3 = fix_mul(_Cos(0), fix_inverse(0x100));
                gOamObjects[1].attr3 = fix_mul(_Sin(0), fix_inverse(0x100));
                gOamObjects[2].attr3 = fix_mul(-_Sin(0), fix_inverse(main->affineScale));
                gOamObjects[3].attr3 = fix_mul(_Cos(0), fix_inverse(main->affineScale));
                for(i = 3; i < 4; i++) // copy paste intensifies
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 = SPRITE_ATTR0(main->process[GAME_PROCESS_VAR2]*32, ST_OAM_AFFINE_NORMAL, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, 1);
                        oam++;
                    }
                }
                break;
            }
            for(i = 3; i < 4; i++) // copy paste intensifies
            {
                for(j = 0; j < 2; j++)
                {
                    oam->attr0 = SPRITE_ATTR0(main->process[GAME_PROCESS_VAR2]*32, ST_OAM_AFFINE_NORMAL, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, 1);
                    oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 9) + j * 0x20;
                    oam++;
                }
            }
            main->process[GAME_PROCESS_STATE]++;
            break;
        case 7:
            oam = &gOamObjects[38];
            oam += main->process[GAME_PROCESS_VAR2]*2;
            main->affineScale += 0x10;
            if(main->affineScale >= 0x100)
            {
                main->advanceScriptContext = TRUE;
                main->showTextboxCharacters = TRUE;
                gScriptContext.currentSection = 0xFFFF;
                ChangeScriptSection(5);
                for(j = 0; j < 2; j++)
                {
                    oam->attr0 = SPRITE_ATTR0(main->process[GAME_PROCESS_VAR2]*32, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, 1);
                    oam++;
                }
                main->process[GAME_PROCESS_STATE]++;
            }
            else
            {
                gOamObjects[0].attr3 = fix_mul(_Cos(0), fix_inverse(0x100));
                gOamObjects[1].attr3 = fix_mul(_Sin(0), fix_inverse(0x100));
                gOamObjects[2].attr3 = fix_mul(-_Sin(0), fix_inverse(main->affineScale));
                gOamObjects[3].attr3 = fix_mul(_Cos(0), fix_inverse(main->affineScale));
                for(j = 0; j < 2; j++)
                {
                    oam->attr0 = SPRITE_ATTR0(main->process[GAME_PROCESS_VAR2]*32, ST_OAM_AFFINE_NORMAL, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, 1);
                    temp = main->caseEnabledFlags >> main->process[GAME_PROCESS_VAR2];
                    if(temp & 1)
                        oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 9) + j*0x20 + main->process[GAME_PROCESS_VAR2]*0x40; // increases tileNum outside macro ajfjshdfjshdf
                    else
                        oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 9) + j*0x20;
                    oam++;
                }
            }
            break;
        case 8:
            if(gScriptContext.flags & 8)
            {
                if(gJoypad.pressedKeys & (A_BUTTON|B_BUTTON|SELECT_BUTTON|START_BUTTON))
                {
                    PauseBGM();
                    PlaySE(SE001_MENU_CONFIRM);
                    gSaveDataBuffer.main.scenarioIdx = main->scenarioIdx;
                    gSaveDataBuffer.main.caseEnabledFlags = main->caseEnabledFlags;
                    SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 1, main);
                }
            }
            break;
        default:
            break;
    }
}

void SelectEpisodeProcess(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;
    u32 temp;
    bool32 buttonEnabled;
    switch(main->process[GAME_PROCESS_STATE])
    {
        case 0: // _0800953C
            sub_8008DF4(main);
            break;
        case 1: // _08009544
            if(main->blendMode)
                return;
            sub_8008E18(main);
            if(main->saveContinueFlags & 0xF0)
                main->caseEnabledFlags = gSaveDataBuffer.main.caseEnabledFlags;
            main->selectedButton = main->process[GAME_PROCESS_VAR2];
            oam = &gOamObjects[38];
            for(i = 0; i < 4; i++)
            {
                buttonEnabled = main->caseEnabledFlags >> i;
                for(j = 0; j < 2; j++)
                {
                    if(main->selectedButton == i)
                        oam->attr2 = 0x91E0 + j * 0x20 + i * 0x40;
                    else if(buttonEnabled & 1)
                        oam->attr2 = 0xA1E0 + j * 0x20 + i * 0x40;
                    else
                        oam->attr2 = 0xA1A0 + j * 0x20; 
                    oam++;
                }
            }
            break;
        case 2: // _080095E4
            sub_8008F68(main);
            break;
        case 3: // _080095EC
            sub_8008FE8(main);
            break;
        case 4: // _080095F4
            sub_8009068(main);
            break;
        case 5: // _080095FC
            main->xPosCounter += 6;
            main->xPosCounter &= 0x1FF;
            oam = &gOamObjects[44];
            for(i = 3; i < 4; i++)
            {
                for(j = 0; j < 2; j++)
                {
                    u32 attr1 = 0xC000 + j * 64;
                    temp = main->xPosCounter + 0x170;
                    temp &= 0x1FF;
                    oam->attr1 = temp + attr1;
                    oam++;
                }
            }
            if(main->xPosCounter >= 248)
            {
                oam = &gOamObjects[44];
                oam->attr1 = 0xC068;
                oam++;
                oam->attr1 = 0xC0A8;
                main->advanceScriptContext = TRUE;
                main->showTextboxCharacters = TRUE;
                gScriptContext.currentSection = 0xFFFF;
                ChangeScriptSection(2);
                SetTimedKeysAndDelay(DPAD_UP | DPAD_DOWN, 20);
                main->process[GAME_PROCESS_STATE]++;
            }
            break;
        case 6: // _08009688
            if(gScriptContext.flags & SCRIPT_LOOP)
            {
                if(gJoypad.activeTimedKeys & DPAD_UP)
                {
                    j = main->selectedButton;
                    for(i = 0; i < 4; i++)
                    {
                        main->selectedButton--;
                        main->selectedButton &= 3;
                        temp = main->caseEnabledFlags >> main->selectedButton;
                        if(temp & 1)
                        {
                            if(!(j == main->selectedButton))
                            {
                                PlaySE(SE000_MENU_CHANGE);
                                break;
                            }
                        }
                    }
                }
                else if(gJoypad.activeTimedKeys & DPAD_DOWN)
                {
                    j = main->selectedButton;
                    for(i = 0; i < 4; i++)
                    {
                        main->selectedButton++;
                        main->selectedButton &= 3;
                        temp = main->caseEnabledFlags >> main->selectedButton;
                        if(temp & 1)
                        {
                            if(!(j == main->selectedButton))
                            {
                                PlaySE(SE000_MENU_CHANGE);
                                break;
                            }
                        }
                    }
                }
                else if(gJoypad.pressedKeys & A_BUTTON)
                {
                    PlaySE(SE001_MENU_CONFIRM);
                    main->xPosCounter = 0;
                    main->advanceScriptContext = FALSE;
                    main->showTextboxCharacters = FALSE;
                    gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
                    main->tilemapUpdateBits &= ~2;
                    main->process[GAME_PROCESS_STATE]++;
                    main->process[GAME_PROCESS_VAR2] = 0;
                    main->process[GAME_PROCESS_VAR1] = 0;
                }
                else if(gJoypad.pressedKeys & B_BUTTON)
                {
                    PlaySE(SE002_MENU_CANCEL);
                    StartHardwareBlend(2, 0, 1, 0x1F);
                    main->process[GAME_PROCESS_STATE] = 12;
                }
            }
            oam = &gOamObjects[38];
            for(i = 0; i < 4; i++)
            {
                if(i == main->selectedButton)
                {
                    for(j = 0; j < 2; j++)
                    {
                        temp = main->caseEnabledFlags >> i; 
                        if(temp & 1)
                            oam->attr2 = j * 0x20 + 0x91E0 + i * 0x40;
                        else
                            oam->attr2 = j * 0x20 + 0x91A0;
                        oam++;
                    }
                }
                else
                {
                    for(j = 0; j < 2; j++)
                    {
                        temp = main->caseEnabledFlags >> i; 
                        if(temp & 1)
                            oam->attr2 = j * 0x20 + 0xA1E0 + i * 0x40;
                        else
                            oam->attr2 = j * 0x20 + 0xA1A0;
                        oam++;
                    }
                }
            }
            break;
        case 7: // _0800981E
            main->process[GAME_PROCESS_VAR1]++;
            if(main->process[GAME_PROCESS_VAR1] > 0x28)
            {
                main->xPosCounter = 0;
                main->process[GAME_PROCESS_STATE]++;
                main->process[GAME_PROCESS_VAR2] = 0;   
                main->process[GAME_PROCESS_VAR1] = 0;
            }
            oam = &gOamObjects[38];
            for(i = 0; i < 4; i++)
            {
                for(j = 0; j < 2; j++)
                {
                    if(i == main->selectedButton)
                    {
                        temp = oam->attr1 & 0x1FF;
                        oam->attr1 &= ~0x1FF;
                        if(j == 0)
                        {
                            if(temp < 56)
                                temp += 4;
                            if(temp > 56)
                                temp -= 4;

                        }
                        else
                        {
                            if(temp < 120)
                                temp += 4;
                            if(temp > 120)
                                temp -= 4;   
                        }
                        oam->attr1 += temp;
                    }
                    else
                    {
                        temp = oam->attr1 & 0x1FF;
                        oam->attr1 &= ~0x1FF;
                        temp += main->xPosCounter;
                        temp &= 0x1FF;
                        if(temp > 0xF0)
                            oam->attr0 = SPRITE_ATTR0_CLEAR;
                        else
                            oam->attr1 += temp;
                    }
                    oam++;
                }
            }
            if(main->xPosCounter < 8)
                main->xPosCounter++;
            break;
        case 8: // _080098D8
            oam = &gOamObjects[38];
            for(i = 0; i < 4; i++)
            {
                for(j = 0; j < 2; j++)
                {
                    if(i == main->selectedButton)
                    {
                        temp = oam->attr0 & 0xFF;
                        oam->attr0 &= ~0xFF;
                        if((temp < 56 && (temp += 4) >= 56) || (temp > 56 && (temp -= 4) <= 56))
                         {
                            main->process[GAME_PROCESS_STATE] = 9;
                            main->process[GAME_PROCESS_VAR2] = 0;
                            main->process[GAME_PROCESS_VAR1] = 0;
                            temp = 56;
                        }
                        oam->attr0 += temp;
                    }
                    else
                        oam->attr0 = SPRITE_ATTR0_CLEAR;
                    oam++;
                }
            }
            if(main->xPosCounter < 8)
                main->xPosCounter++;
            break;
        case 9: // _0800994C
            main->process[GAME_PROCESS_VAR1]++;
            if(main->process[GAME_PROCESS_VAR1] > 20)
            {
                main->process[GAME_PROCESS_STATE] = 10;
                main->process[GAME_PROCESS_VAR2] = 0;
                main->process[GAME_PROCESS_VAR1] = 0;
            }
            break;
        case 10: // _08009966
            main->process[GAME_PROCESS_VAR1]++;
            if(main->process[GAME_PROCESS_VAR1] > 50)
            {
                StartHardwareBlend(2, 4, 1, 0x1F);
                main->process[GAME_PROCESS_STATE]++;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            else
            {
                if(main->process[GAME_PROCESS_VAR2] > 5)
                    main->process[GAME_PROCESS_VAR2] = 0;
                main->process[GAME_PROCESS_VAR2]++;
            } 
            oam = &gOamObjects[38];
            for(i = 0; i < 4; i++)
            {
                u32 attr2_2 = 0xA1E0;
                u32 attr2 = 0x91E0;
                for(j = 0; j < 2; j++)
                {
                    if(i == main->selectedButton)
                    {
                        if(main->process[GAME_PROCESS_VAR2] > 2)
                            oam->attr2 = i * 0x40 + attr2_2 + j * 0x20;
                        else
                            oam->attr2 = i * 0x40 + attr2 + j * 0x20;   
                    }
                    else
                        oam->attr0 = SPRITE_ATTR0_CLEAR;
                    oam++;
                }
            }
            break;
        case 11: // _080099EE
            if(main->blendMode) 
                return;
            switch(main->selectedButton)
            {
                case 0:
                    main->scenarioIdx = 0;
                    break;
                case 1:
                    main->scenarioIdx = 1;
                    break;
                case 2:
                    main->scenarioIdx = 5;
                    break;
                case 3:
                    main->scenarioIdx = 11;
                    break;
                default:
                    main->scenarioIdx = 0;
            }
            SET_PROCESS_PTR(gCaseStartProcess[main->scenarioIdx], 0, 0, 0, main);
            break;
        case 12: // _08009A44
            if(main->blendMode) 
                return;
            SET_PROCESS_PTR(TITLE_SCREEN_PROCESS, 0, 0, 0, main);
            break;
    }
}

void ContinueSaveProcess(struct Main * main) {
    struct OamAttrs * oam;
    uintptr_t i, j;
    
    switch (main->process[GAME_PROCESS_STATE]) {
        case 0: // 9AAC
            sub_8008DF4(main);
            break;
        case 1: // 9AB6
            if (main->blendMode == 0) {
                main->saveContinueFlags = gSaveDataBuffer.main.saveContinueFlags;
                main->scenarioIdx = gSaveDataBuffer.main.scenarioIdx;
                DmaCopy16(3, gUnknown_08186540, BG_CHAR_ADDR(0), 0x1000);
                DmaCopy16(3, gUnknown_081954A8, OBJ_VRAM0 + 0x3400, 0x1000);
                DmaCopy16(3, gGfxPalChoiceSelected, OBJ_PLTT + 0x120, 0x40);
                DecompressBackgroundIntoBuffer(0x43);
                CopyBGDataToVram(0x43);
                main->animationFlags &= ~3;
                oam = gOamObjects;
                for (i = 0; i < 128; ++i) {
                    oam->attr0 = 0x200;
                    ++oam;
                }
                for (i = 0; i < 0x400; ++i) {
                    gBG2MapBuffer[i] = 0;
                }
                SlideInBG2Window(5, 8);
                PlaySE(SE007_MENU_OPEN_SUBMENU);
                gIORegisters.lcd_dispcnt = 0x1C40;
                main->tilemapUpdateBits = 0xC;
                gIORegisters.lcd_bg2cnt = 0x3E01;
                main->selectedButton = 0;
                StartHardwareBlend(1, 0, 1, 0x1F);
                ++main->process[GAME_PROCESS_STATE];
            }
            break;
        case 2: // 9BA8
            UpdateBG2Window(&gCourtRecord);
            if (gCourtRecord.unk1 == 0) { // 9BBA
                main->advanceScriptContext = TRUE;
                main->showTextboxCharacters = TRUE;
                gScriptContext.currentSection = 0xFFFF;
                ChangeScriptSection(main->scenarioIdx + 7);
                gScriptContext.textXOffset = 9;
                gScriptContext.textYOffset = 52;
                main->blendCounter = 0;
                main->blendDelay = 1;
                main->blendDeltaY = 16;
                gIORegisters.lcd_bldcnt = 0x840;
                gIORegisters.lcd_bldalpha = BLDALPHA_BLEND(0, main->blendDeltaY);
                ++main->process[GAME_PROCESS_STATE];
            }
            break;
        case 3: // 9C14
            if (gScriptContext.flags & 8) {
                if (main->saveContinueFlags & 1 && gJoypad.pressedKeys & 0xC0) {
                    PlaySE(SE000_MENU_CHANGE);
                    main->selectedButton ^= 1;
                } else /* 9C50 */ if (gJoypad.pressedKeys & 1) {
                    PlaySE(SE001_MENU_CONFIRM);
                    main->advanceScriptContext = FALSE;
                    main->showTextboxCharacters = TRUE;
                    if ((main->saveContinueFlags & 1) == 0) {
                        StartHardwareBlend(2, 0, 1, 0x1F);
                        main->process[GAME_PROCESS_STATE] = 5;
                    } else {
                        // 9C84
                        main->blendCounter = 0;
                        main->blendDelay = 1;
                        main->blendDeltaY = 0;
                        main->process[GAME_PROCESS_STATE] = 7;
                        main->process[GAME_PROCESS_VAR1] = 0;
                    }
                } else /* 9C9C */ if (gJoypad.pressedKeys & 2) {
                    PlaySE(SE002_MENU_CANCEL);
                    StartHardwareBlend(2, 0, 1, 0x1F);
                    main->process[GAME_PROCESS_STATE] += 3;
                }
            }
            // 9CBC
            if (main->saveContinueFlags & 1) {
                oam = gOamObjects + 38;
                // sl = r3 = 0xA1A0
                // sb = r4 = 0xC038
                for (i = 0; i < 2; ++i) {
                    // 9CD2
                    for (j = 0; j < 2; ++j) {
                        oam->attr0 = 0x4462 + i * 32;
                        oam->attr1 = 0xC038 + j * 64;
                        if (main->selectedButton == i) {
                            oam->attr2 = j * 0x20 + 0x91A0 + i * 0x40;
                        } else {
                            oam->attr2 = j * 0x20 + 0xA1A0 + i * 0x40;
                        }
                        ++oam;
                    }
                }
            } else /* 9D28 */ {
                oam = gOamObjects + 38;
                // 9D32
                for (j = 0; j < 2; ++j) {
                    oam->attr0 = 0x4462;
                    oam->attr1 = 0xC038 + j * 64;
                    oam->attr2 = 0x91E0 + j * 32;
                    ++oam;
                }
            }
            // 9D44
            if (main->process[GAME_PROCESS_STATE] == 3 && main->blendDeltaY != 0) {
                // 9D58
                ++main->blendCounter;
                if (main->blendCounter >= main->blendDelay) {
                    // 9D72
                    main->blendCounter = 0;
                    --main->blendDeltaY;
                }
                // A312
                gIORegisters.lcd_bldalpha = BLDALPHA_BLEND(0x10 - main->blendDeltaY, main->blendDeltaY);
            }
            break;
        case 4: // 9D98
            if(main->blendMode != 0)
                return;
            HideAllSprites();
            InitBGs();
            ResetAnimationSystem();
            ResetSoundControl();
            LoadCurrentScriptIntoRam();
            DmaCopy16(3, gUnusedAsciiCharSet, BG_VRAM + 0x3800, 0x800);
            DmaCopy16(3, gUnknown_08186540, BG_VRAM, 0x1000);
            i = (uintptr_t)GetBGPalettePtr(0); // ! BAD FAKEMATCH?
            DmaCopy16(3, i, BG_PLTT, 0x200);
            DmaCopy16(3, &gSaveDataBuffer.main, &gMain, sizeof(gMain));
            LoadCurrentScriptIntoRam();
            DmaCopy16(3, gUnknown_081942C0, OBJ_PLTT + 0x100, 0x20);
            DmaCopy16(3, &gSaveDataBuffer.talkData, &gTalkData, sizeof(gTalkData));
            RestoreAnimationsFromBuffer(gSaveDataBuffer.backupAnimations);

            if (main->process[GAME_PROCESS] == INVESTIGATION_PROCESS) {
                DmaCopy16(3, gGfx4bppInvestigationActions, OBJ_VRAM0 + 0x2000, 0x1000);
                DmaCopy16(3, gUnknown_08194200, OBJ_PLTT + 0xA0, 0x40);
                DmaCopy16(3, gGfx4bppInvestigationScrollButton, OBJ_VRAM0 + 0x3000, 0x200);
                DmaCopy16(3, gUnknown_08194260, OBJ_PLTT + 0xE0, 0x20);
                DmaCopy16(3, gUnknown_08190AC0, OBJ_VRAM0 + 0x3200, 0x200);
                DmaCopy16(3, gGfxPalChoiceSelected, OBJ_PLTT + 0x120, 0x40);

                if (main->process[GAME_PROCESS_VAR1] == 3) {
                    // 9E82
                    if (main->process[GAME_PROCESS_STATE] == TANTEI_MOVE) {
                        LoadLocationChoiceGraphics();
                    } else if (main->process[GAME_PROCESS_STATE] == TANTEI_TALK) {
                        LoadTalkChoiceGraphics();
                    }
                }
            } else {
                // 9F0E
                DmaCopy16(3, gGfx4bppTrialLife, OBJ_VRAM0 + 0x3780, 0x80);
                DmaCopy16(3, gUnknown_081940E0, OBJ_PLTT + 0x60, 0x20);
                DmaCopy16(3, gUnknown_0824696C, OBJ_PLTT + 0xC0, 0x20);
                if (main->process[GAME_PROCESS] == TESTIMONY_PROCESS) {
                    DmaCopy16(3, gGfx4bppTestimonyTextTiles, OBJ_VRAM0 + 0x3000, 0x800);
                    DmaCopy16(3, gUnknown_08194280, OBJ_PLTT + 0xA0, 0x20);
                } else /* 9F84 */ if (main->process[GAME_PROCESS] == QUESTIONING_PROCESS) {
                    // thonk
                    DmaCopy16(3, gGfx4bppTrialLife, OBJ_VRAM0 + 0x3780, 0x80);
                    // double thonk
                    DmaCopy16(3, gUnknown_081940E0, OBJ_PLTT + 0x60, 0x20);
                    DmaCopy16(3, gUnknown_081900C0, OBJ_VRAM0 + 0x3000, 0x400);
                    DmaCopy16(3, gUnknown_081942A0, OBJ_PLTT + 0xA0, 0x20);
                    // mega thonk
                    DmaCopy16(3, gGfx4bppTestimonyArrows, 0x1A0, 0x80);
                    DmaCopy16(3, gGfx4bppTestimonyArrows + TILE_SIZE_4BPP*4 * 3, 0x220, 0x80);
                }
            }
            // 9FD0
            // sizeof(gTextBoxCharacters) != sizeof(gSaveDataBuffer.textBoxCharacters)
            DmaCopy16(3, gSaveDataBuffer.textBoxCharacters, gTextBoxCharacters, sizeof(gTextBoxCharacters));
            RedrawTextboxCharacters();
            DmaCopy16(3, &gSaveDataBuffer.scriptCtx, &gScriptContext, sizeof(gScriptContext));
            DmaCopy16(3, &gSaveDataBuffer.ioRegs, &gIORegisters, sizeof(gIORegisters));
            DmaCopy16(3, &gSaveDataBuffer.courtRecord, &gCourtRecord, sizeof(gCourtRecord));
            DmaCopy16(3, &gSaveDataBuffer.investigation, &gInvestigation, sizeof(gInvestigation));
            DmaCopy16(3, &gSaveDataBuffer.testimony, &gTestimony, sizeof(gTestimony));
            DmaCopy16(3, &gSaveDataBuffer.courtScroll, &gCourtScroll, sizeof(gCourtScroll));
            DmaCopy16(3, gSaveDataBuffer.examinationData, gExaminationData, sizeof(gExaminationData));
            DmaCopy16(3, gSaveDataBuffer.mapMarker, gMapMarker, sizeof(gMapMarker));
            MakeMapMarkerSprites();
            SetTextboxNametag(gScriptContext.textboxNameId & 0x7F, gScriptContext.textboxNameId & 0x80);
            DmaCopy16(3, gSaveDataBuffer.bg1Map, gBG1MapBuffer, sizeof(gBG1MapBuffer));
            DmaCopy16(3, gSaveDataBuffer.bg0Map, gBG0MapBuffer, sizeof(gBG0MapBuffer));
            DecompressBackgroundIntoBuffer(main->currentBG);
            CopyBGDataToVramAndScrollBG(main->currentBG);
            if (gScriptContext.flags & 4) {
                DmaCopy16(3, gCharSet + 0x7100, OBJ_VRAM0 + 0x1F80, 0x80);
            }
            // A0C4
            if (gScriptContext.flags & 0x400) {
                DmaCopy16(3, gUnknown_08190AC0, OBJ_VRAM0 + 0x1F80, 0x80);
            }
            // A0DE
            DmaCopy16(3, gSaveDataBuffer.oam, gOamObjects, sizeof(gOamObjects));
            gJoypad.heldKeys = gJoypad.pressedKeys = gJoypad.previousHeldKeys = gJoypad.previousPressedKeys = 0;
            SetTimedKeysAndDelay(0x30, 0xF);
            if (main->itemPlateState > 3) {
                LoadItemPlateGfx(main);
            }
            // A112
            FadeInBGM(20, main->currentPlayingBgm);
            StartHardwareBlend(1, 1, 1, 0x1F);
            break;
        case 5: // A1C4
            if (main->blendMode == 0) {
                // A1D0
                SET_PROCESS_PTR(gCaseStartProcess[main->scenarioIdx], 0, 0, 0, main);
            }
            break;
        case 6: // A1E4
            if (main->blendMode == 0) {
                // A1F0
                SET_PROCESS_PTR(TITLE_SCREEN_PROCESS, 0, 0, 0, main);
            }
            break;
        case 7: // A1F6
            ++main->process[GAME_PROCESS_VAR1];
            if (main->process[GAME_PROCESS_VAR1] >= 0x30) {
                if (main->selectedButton == 0) {
                    main->process[GAME_PROCESS_STATE] = 4;
                } else {
                    // A210
                    main->process[GAME_PROCESS_STATE] = 5;
                }
                main->process[GAME_PROCESS_VAR1] = 0;
                oam = gOamObjects + 38;
                if (main->selectedButton == 0) {
                    // A222
                    oam += 2;
                }
                for (i = 0; i < 2; ++i) {
                    // A228
                    oam->attr0 = 0x200;
                    ++oam;
                }
                StartHardwareBlend(2, 0, 1, 0x1F);
                break;
            } else /* A244 */ if (main->saveContinueFlags & 1) {
                oam = gOamObjects + 38;
                for (i = 0; i < 2; ++i) {
                    // A252
                    // r0 = i * 32
                    // r1 = i * 64
                    // sl = 0x4062 + i * 32
                    // sb = 0x4462 + i * 32
                    // sp4 = 0
                    // r3 = 0x91A0 + i * 64
                    // ip = 0xA1A0 + i * 64
                    for (j = 0; j < 2; ++j) {
                        // A278
                        oam->attr1 = 0xC038 + j * 64;
                        if (main->selectedButton == i) {
                            oam->attr0 = 0x4062 + i * 32;
                            oam->attr2 = j * 32 + 0x91A0 + i * 64;
                        } else {
                            // A2A0
                            oam->attr0 = 0x4462 + i * 32;
                            oam->attr2 = j * 32 + 0xA1A0 + i * 64;
                        }
                        // A2AA
                        ++oam;
                    }
                }
                // goto A2E0
            } else {
                oam = gOamObjects + 38;
                for (j = 0; j < 2; ++j) {
                    // A278
                    oam->attr0 = 0x4062;
                    oam->attr1 = 0xC038 + j * 64;
                    oam->attr2 = 0x91E0 + j * 32;
                    ++oam;
                }
            }
            if(main->process[GAME_PROCESS_STATE] == 7 && main->blendDeltaY < 0x10) {
                    ++main->blendCounter;
                    if (main->blendCounter >= main->blendDelay) {
                        // 9D72
                        main->blendCounter = 0;
                        ++main->blendDeltaY;
                    }
                gIORegisters.lcd_bldalpha = BLDALPHA_BLEND(0x10 - main->blendDeltaY, main->blendDeltaY);
            }
    }
}