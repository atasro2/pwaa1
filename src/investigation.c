#include "global.h"
#include "main.h"
#include "investigation.h"
#include "save.h"
#include "court.h"
#include "ewram.h"
#include "utils.h"
#include "script.h"
#include "background.h"
#include "animation.h"
#include "court_record.h"
#include "sound.h"
#include "case_data.h"
#include "graphics.h"
#include "constants/animation.h"
#include "constants/script.h"
#include "constants/bg.h"
#include "constants/songs.h"
#include "constants/process.h"

void (*gInvestigationProcessStates[])(struct Main *, struct InvestigationStruct *) = {
	sub_800B808, // RNO1_TANTEI_INIT
	sub_800BAD4, // RNO1_TANTEI_MAIN
	sub_800BD74, // RNO1_TANTEI_EXIT
	sub_800BDF8, // RNO1_TANTEI_BG_WAIT
	sub_800BE58, // RNO1_TANTEI_MW_WAIT
	sub_800BE7C, // RNO1_TANTEI_ROOM_INIT
	sub_800BF90, // RNO1_TANTEI_INSPECT
	sub_800C334, // RNO1_TANTEI_MOVE
	sub_800C8B8, // RNO1_TANTEI_TALK
	sub_800D2B0  // RNO1_TANTEI_SHOW
};

extern void SetCurrentEpisodeBit();
extern void sub_800D530(struct Main *, u32);
extern void sub_800D3C8(struct InvestigationStruct *);

void SetInactiveActionButtons(struct InvestigationStruct * investigation, u32 arg1) // menu_mv_flag_set
{
    investigation->inactiveActions = arg1;
    if(investigation->personActive == 0)
        investigation->inactiveActions &= ~0xC;
}

void InvestigationProcess(struct Main * main) // Tantei_part
{
    if(main->process[GAME_PROCESS_STATE] != 5)
        gInvestigationRoomUpdateFunctions[main->scenarioIdx](main);
    gInvestigationProcessStates[main->process[GAME_PROCESS_STATE]](main, &gInvestigation);
    sub_800D3C8(&gInvestigation);
}

void sub_800B808(struct Main * main, struct InvestigationStruct * investigation) // tantei_init
{
    struct IORegisters * ioRegs = &gIORegisters;
    struct OamAttrs * oam;
    u32 bgId;
    u32 i;
    DmaFill16(3, 0, &gTestimony, sizeof(gTestimony));
    DmaFill16(3, 0, &gInvestigation, sizeof(gInvestigation));
    HideAllSprites();
    InitBGs();
    ResetAnimationSystem();
    LoadCurrentScriptIntoRam();
    ioRegs->lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON;
    ioRegs->lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    ioRegs->lcd_bg1cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    ioRegs->lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    ioRegs->lcd_bg3cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    DmaCopy16(3, gUnusedAsciiCharSet, VRAM + 0x3800, 0x800);
    DmaCopy16(3, gUnknown_08186540, VRAM, 0x1000);
    DmaCopy16(3, gGfx4bppInvestigationActions, OBJ_VRAM0 + 0x2000, 0x1000);
    DmaCopy16(3, gUnknown_08194200, OBJ_PLTT+0xA0, 0x40);
    DmaCopy16(3, gGfx4bppInvestigationScrollButton, OBJ_VRAM0 + 0x3000, 0x200);
    DmaCopy16(3, gUnknown_08194260, OBJ_PLTT+0xE0, 0x20);
    DmaCopy16(3, gUnknown_08190AC0, OBJ_VRAM0 + 0x3200, 0x200);
    DmaCopy16(3, gUnknown_081942C0, OBJ_PLTT+0x100, 0x20);
    DmaCopy16(3, gGfxPalChoiceSelected, OBJ_PLTT+0x120, 0x40);
    oam = &gOamObjects[49];
    for(i = 0; i < 4; i++)
    {
        oam->attr0 = SPRITE_ATTR0(-32 & 0xFF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(i*60, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x100 + i*0x20, 0, 5);
        oam++;
    }
    SetInactiveActionButtons(investigation, 0xF);
    investigation->inactiveActionButtonY = 0xE0;
    investigation->selectedActionYOffset = 0;
    investigation->lastActionYOffset = 8;
    investigation->selectedAction = 0;
    investigation->lastAction = 0;
    gInvestigationSegmentSetupFunctions[main->scenarioIdx](main);
    bgId = main->roomData[main->currentRoomId][0];
    DecompressBackgroundIntoBuffer(bgId);
    CopyBGDataToVram(bgId);
    CopyBGDataToVram(0xFF);
    ioRegs->lcd_bg1vofs = ~80;
    ioRegs->lcd_dispcnt &= ~DISPCNT_BG1_ON;
    InitializeCourtRecordForScenario(main, &gCourtRecord);
    DmaFill32(3, 0, main->scriptFlags, sizeof(main->scriptFlags));
    if(main->scenarioIdx > 1)
       ChangeFlag(0, 0x41, TRUE); 
    main->gameStateFlags = 0;
    main->tilemapUpdateBits = 0xF;
    main->advanceScriptContext = TRUE;
    main->showTextboxCharacters = TRUE;
    gScriptContext.currentSection = 0xFFFF;
    ChangeScriptSection(0x80);
    SlideTextbox(1);
    gInvestigationRoomSetupFunctions[main->scenarioIdx](main);
    sub_800D530(main, 0);
    SetCurrentEpisodeBit();
    SetTimedKeysAndDelay(DPAD_RIGHT | DPAD_LEFT, 15);
    StartHardwareBlend(1, 1, 1, 0x1F);
    ioRegs->lcd_bldy = 0x10;
    main->health = 5;
    if(main->scenarioIdx == 11)
    {
        ioRegs->lcd_dispcnt &= ~DISPCNT_BG1_ON;
        ioRegs->lcd_bg1vofs = 0;
    }
    SET_PROCESS_PTR(INVESTIGATION_PROCESS, 1, 0, 0, main);
}

//FIXME: tail merge causes register diffs
void sub_800BAD4(struct Main * main, struct InvestigationStruct * investigation) // tantei_main
{
    if(main->blendMode)
    {
        sub_800D530(main, 0);
        return;
    }

    if(gJoypad.pressedKeys & START_BUTTON)
    {
        if(!(main->gameStateFlags & 0x10))
        {
            if(gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
            {
                /*
                PauseBGM();
                DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
                DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
                PlaySE(SE007_MENU_OPEN_SUBMENU);
                main->gameStateFlags &= ~1;
                BACKUP_PROCESS_PTR(main);
                SET_PROCESS_PTR(10, 0, 0, 0, main);
                return;
                */
                goto s;
            }
        }
    }

    if(gJoypad.pressedKeys & R_BUTTON)
    {
        if(!(main->gameStateFlags & 0x10))
        {
            if(gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
            {
                /*
                PlaySE(SE007_MENU_OPEN_SUBMENU);
                BACKUP_PROCESS_PTR(main);
                SET_PROCESS_PTR(7, 0, 0, 0, main);
                sub_800D530(main, 0);
                investigation->selectedActionYOffset = 0;
                investigation->lastActionYOffset = 8;
                investigation->lastAction = investigation->selectedAction;
                return;
                */
                goto r;
            }
        }
    }
    if(gScriptContext.textboxState != 1 || 
    main->advanceScriptContext || 
    main->showTextboxCharacters)
    {
        sub_800D530(main, 0);
        return;
    }
    sub_800D530(main, 1);
    if(gJoypad.pressedKeys & START_BUTTON)
    {
        if(!(main->gameStateFlags & 0x10))
        {
            s:
            PauseBGM();
            DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
            DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
            PlaySE(SE007_MENU_OPEN_SUBMENU);
            main->gameStateFlags &= ~1;
            BACKUP_PROCESS_PTR(main);
            SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
            return;
        }
    }

    if(gJoypad.pressedKeys & R_BUTTON)
    {
        if(!(main->gameStateFlags & 0x10))
        {
            r:
            PlaySE(SE007_MENU_OPEN_SUBMENU);
            BACKUP_PROCESS_PTR(main);
            SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_STATE_INIT, 0, 0, main);
            sub_800D530(main, 0);
            investigation->selectedActionYOffset = 0;
            investigation->lastActionYOffset = 8;
            investigation->lastAction = investigation->selectedAction;
            return;
        }
    }
    else if(gJoypad.activeTimedKeys & (DPAD_RIGHT | DPAD_LEFT))
    {
        investigation->lastAction = investigation->selectedAction;
        if(gJoypad.activeTimedKeys & DPAD_LEFT)
            investigation->selectedAction--;
        else
            investigation->selectedAction++;
        if(investigation->personActive == 0)
            investigation->selectedAction &= 1;
        else
            investigation->selectedAction &= 3;
        PlaySE(SE000_MENU_CHANGE);
        investigation->selectedActionYOffset = 0;
        investigation->lastActionYOffset = 8;
    }
    else if(gJoypad.pressedKeys & A_BUTTON)
    {
        PlaySE(SE001_MENU_CONFIRM);
        investigation->pointerX = 120;
        investigation->pointerY = 50;
        SetInactiveActionButtons(investigation, 0xF);
        investigation->inactiveActions -= 1 << investigation->selectedAction;
        investigation->inactiveActionButtonY = 240;
        investigation->selectedActionYOffset = 8;
        investigation->lastActionYOffset = 0;
        investigation->lastAction = investigation->selectedAction;
        investigation->actionState = 3;
        sub_800D530(main, 0);
        if(investigation->selectedAction == 0)
        {
            StartAnimationBlend(0xC, 1);
            investigation->pointerColorCounter = 0;
            investigation->pointerColor = 0;
            DmaCopy16(3, gUnknown_081942C0, OBJ_PLTT+0x100, 0x20);
        }
        main->process[GAME_PROCESS_STATE] = investigation->selectedAction+6;
        main->process[GAME_PROCESS_VAR2] = 0;
        main->process[GAME_PROCESS_VAR1] = 0;
        return;
    }
    else
    {
        u32 bgBits = GetBGControlBits(main->currentBG);
        if((bgBits & 1 || bgBits & 2) && 
        gJoypad.pressedKeys & L_BUTTON)
        {
            if(main->Bg256_pos_x == 0 || 
            main->Bg256_pos_x == 120 ||
            main->Bg256_pos_x == 240)
            {
                PlaySE(SE001_MENU_CONFIRM);
                main->isBGScrolling = TRUE;
                if(main->Bg256_pos_x == 0)
                    main->horizontolBGScrollSpeed = 6;
                else if(main->Bg256_pos_x == 120 || main->Bg256_pos_x == 240)
                    main->horizontolBGScrollSpeed = -6;
                main->process[GAME_PROCESS_STATE] = 3;
                main->process[GAME_PROCESS_VAR2] = 0;
                main->process[GAME_PROCESS_VAR1] = 0;
                investigation->actionState = 3;
                SetInactiveActionButtons(investigation, 0xF);
            }
        }
    }
    if(investigation->selectedActionYOffset < 8)
        investigation->selectedActionYOffset++;
    if(investigation->lastActionYOffset > 0)
        investigation->lastActionYOffset--;
}

// ! same as sub_800A6AC, thanks capcom
void sub_800BD74(struct Main * main, struct InvestigationStruct * investigation) // tantei_exit
{
    DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
    SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 1, main);
    if(main->scenarioIdx == 1)
    {
        if(!(main->caseEnabledFlags & 2))
            SET_PROCESS_PTR(EPISODE_CLEAR_PROCESS, 0, 0, 1, main);
    }
    else if(main->scenarioIdx == 5)
    {
        if(!(main->caseEnabledFlags & 4))
            SET_PROCESS_PTR(EPISODE_CLEAR_PROCESS, 0, 0, 2, main);
    }
    else if(main->scenarioIdx == 11)
    {
        if(!(main->caseEnabledFlags & 8))
            SET_PROCESS_PTR(EPISODE_CLEAR_PROCESS, 0, 0, 3, main);
    }
}

void sub_800BDF8(struct Main * main, struct InvestigationStruct * investigation) // tantei_bg_scroll_wait
{
    bool32 flag; // TODO: find a name for this
    sub_800D530(main, 0);
    if(main->process[GAME_PROCESS_VAR1] == 0)
    {
        if(GetBGControlBits(main->currentBG) & 1)
        {
            if(main->Bg256_pos_x == 0 || main->Bg256_pos_x == 240)
                flag = TRUE;
            else
                flag = FALSE;
        }
        else 
        {
            if(main->Bg256_pos_x == 0 || main->Bg256_pos_x == 120)
                flag = TRUE;
            else
                flag = FALSE;
        }
        if(flag)
        {
            investigation->selectedActionYOffset = 0;
            investigation->lastActionYOffset = 0;
            investigation->actionState = 1;
            main->process[GAME_PROCESS_VAR1]++;
        }
        return;
    }
    if(investigation->actionState == 0)
        SET_PROCESS_PTR(INVESTIGATION_PROCESS, 1, 0, 0, main);
}

void sub_800BE58(struct Main * main, struct InvestigationStruct * investigation) // tantei_mw_scroll_wait
{
    sub_800D530(main, 0);
    if(gScriptContext.textboxState == 0)
        SET_PROCESS_PTR(INVESTIGATION_PROCESS, 1, 0, 0, main);
}

void sub_800BE7C(struct Main * main, struct InvestigationStruct * investigation) // tantei_room_init
{
    u32 i, j;
    u8 * roomData;
    struct OamAttrs * oam;

    if(gScriptContext.textboxState != 1)
        return;
    if(main->blendMode)
        return;
    roomData = main->roomData[main->currentRoomId];
    if(main->process[GAME_PROCESS_VAR1] == 0)
    {
        ResetSoundControl();
        DecompressBackgroundIntoBuffer(roomData[0]);
        main->process[GAME_PROCESS_VAR1] = 1;
        return;
    }
    CopyBGDataToVram(roomData[0]);
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        for(j = 0; j < 2; oam++, j++)
            oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
    oam = &gOamObjects[49];
    for(i = 0; i < 4; i++)
    {
        oam->attr0 = SPRITE_ATTR0(224, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(i*60, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x100+i*0x20, 0, 5);
        oam++;
    }
    SetInactiveActionButtons(investigation, 0xF);
    investigation->inactiveActionButtonY = 0xE0;
    investigation->selectedActionYOffset = 0;
    investigation->lastActionYOffset = 8;
    investigation->selectedAction = 0;
    investigation->lastAction = 0;
    investigation->actionState = 1;
    ClearAllAnimationSprites();
    //TODO: MACROS BITCH!!! these exact 3 lines exist elsewhere in the code so this is 100% a macro in the original code considering it doesn't use the investigation struct ptr 
    DestroyAnimation(&gAnimation[1]);
    gInvestigation.personActive = 0;
    SetInactiveActionButtons(&gInvestigation, 0xF);
    
    gInvestigationRoomSetupFunctions[main->scenarioIdx](main);
    sub_800D530(main, 0);
    StartHardwareBlend(1, 1, 1, 0x1F);
    SET_PROCESS_PTR(INVESTIGATION_PROCESS, 1, 0, 0, main);
}

void sub_800BF90(struct Main * main, struct InvestigationStruct * investigation) // tantei_inspect // ! goto
{
    u32 temp;
    struct OamAttrs * oam = &gOamObjects[88];
    if(gAnimation[1].flags & ANIM_BLEND_ACTIVE)
        return;
    if(main->blendMode)
        return;
    
    if(gJoypad.pressedKeys & START_BUTTON
    && !(main->gameStateFlags & 0x10)
    && gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
        goto s;
    else if(gJoypad.pressedKeys & R_BUTTON
    && !(main->gameStateFlags & 0x10)
    && gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
        goto r;
    else if(investigation->unk6)
        return;
    else if(gScriptContext.textboxState != 1)
        return;
    else if(!(main->advanceScriptContext == FALSE && main->showTextboxCharacters == FALSE))
        return;
    else
    {
        switch(main->process[GAME_PROCESS_VAR1])
        {
            default:
                break;
            case 0:
                if(investigation->selectedActionYOffset <= 0xF)
                    investigation->selectedActionYOffset++;
                investigation->lastActionYOffset = 0;
                if (investigation->selectedActionYOffset > 0xF)
                    main->process[GAME_PROCESS_VAR1]++;
                break;
            case 1:
                temp = 3;
                if(gJoypad.pressedKeys & START_BUTTON
                && !(main->gameStateFlags & 0x10))
                {
                    s:
                    PauseBGM();
                    DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
                    DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
                    PlaySE(SE007_MENU_OPEN_SUBMENU);
                    main->gameStateFlags &= ~1;
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
                    return;
                }
                else if(gJoypad.pressedKeys & R_BUTTON
                && !(main->gameStateFlags & 0x10))
                {
                    r:
                    PlaySE(SE007_MENU_OPEN_SUBMENU);
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_STATE_INIT, 0, 0, main);
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    return;
                }
                if(gJoypad.pressedKeys & A_BUTTON)
                {
                    PlaySE(SE001_MENU_CONFIRM);
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    temp = GetExaminedAreaSection(investigation);
                    ChangeScriptSection(temp);
                    SlideTextbox(1);
                    investigation->unk6 = 1;
                    investigation->pointerFrame = 0;
                    investigation->pointerFrameCounter = 0;
                    investigation->inactiveActions = 1;
                    investigation->actionState = 3;
                    investigation->inactiveActionButtonY = 0xF0;
                    investigation->selectedActionYOffset = 0;
                    investigation->lastActionYOffset = 0;
                    return;
                }
                if(gJoypad.pressedKeys & B_BUTTON)
                {
                    PlaySE(SE002_MENU_CANCEL);
                    main->process[GAME_PROCESS_VAR1] = 2;
                    SetInactiveActionButtons(investigation, 0xE);
                    investigation->actionState = 2;
                    investigation->inactiveActionButtonY = 0xE0;
                    investigation->selectedActionYOffset = 0x10;
                    investigation->lastActionYOffset = 0;
                    return;
                }
                
                if(gJoypad.heldKeys & DPAD_LEFT)
                {
                    investigation->pointerX -= temp;
                    if(investigation->pointerY < 16 && investigation->pointerX < 60)
                        investigation->pointerX = 60;
                    if(investigation->pointerX > 224)
                        investigation->pointerX = 0;
                }
                if(gJoypad.heldKeys & DPAD_RIGHT)
                {
                    investigation->pointerX += temp;
                    if(investigation->pointerY < 16 && investigation->pointerX < 60)
                        investigation->pointerX = 60;
                    if(investigation->pointerX > 224)
                        investigation->pointerX = 224;
                }
                if(gJoypad.heldKeys & DPAD_UP)
                {
                    investigation->pointerY -= temp;
                    if(investigation->pointerX < 60 && investigation->pointerY < 16)
                        investigation->pointerY = 16;
                    if(investigation->pointerY > 144)
                        investigation->pointerY = 0;
                }
                if(gJoypad.heldKeys & DPAD_DOWN)
                {
                    investigation->pointerY += temp;
                    if(investigation->pointerX < 60 && investigation->pointerY < 16)
                        investigation->pointerY = 16;
                    if(investigation->pointerY > 144)
                        investigation->pointerY = 144;
                }
                temp = GetExaminedAreaSection(investigation);
                if(temp == 0x18 || temp == 0x19) // ! come one just a little more hardcoding please :(
                {
                    investigation->pointerFrame = 0;
                    investigation->pointerFrameCounter = 0;
                }
                else
                {
                    investigation->pointerFrameCounter++;
                    if(investigation->pointerFrameCounter > 8)
                    {
                        investigation->pointerFrameCounter = 0;
                        investigation->pointerFrame += 4;
                        investigation->pointerFrame &= 0xF;
                    }
                }
                oam->attr0 = SPRITE_ATTR0(investigation->pointerY, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                if(investigation->pointerX < 120)
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(investigation->pointerX, TRUE, FALSE, 1);
                else
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(investigation->pointerX, FALSE, FALSE, 1);
                oam->attr2 = SPRITE_ATTR2(0x190+investigation->pointerFrame, 0, 8);
                investigation->pointerColorCounter++;
                if(investigation->pointerColorCounter > 1)
                {
                    investigation->pointerColorCounter = 0;
                    investigation->pointerColor += 1;
                    investigation->pointerColor &= 0xF;
                    DmaCopy16(3, gUnknown_081942C0+investigation->pointerColor*32, OBJ_PLTT+0x100, 0x20);
                }
                break;
            case 2:
                if(investigation->selectedActionYOffset > 8)
                    investigation->selectedActionYOffset--;
                if(investigation->actionState == 0)
                {
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    ChangeAnimationActivity(&gAnimation[1], TRUE);
                    StartAnimationBlend(1, 1);
                    SET_PROCESS_PTR(INVESTIGATION_PROCESS, 1, 0, 0, main);
                    investigation->inactiveActions += 1 << investigation->selectedAction;
                    investigation->selectedActionYOffset = 8;
                    investigation->lastActionYOffset = 0;
                }
                break;
        }
    }
}

void sub_800C334(struct Main * main, struct InvestigationStruct * investigation) // tantei_move
{
    u16 attr1;
    u32 i;
    u32 j;
    u8 * moveLocations;
    #ifndef NONMATCHING
    register u8 * moveButtonTiles asm("r5"); // ! fakematch
    #else
    u8 * moveButtonTiles;
    #endif
    u8 * vram;
    struct OamAttrs * oam;
    struct OamAttrs * oam2;
    switch(main->process[GAME_PROCESS_VAR1])
    {
        default:
            break;
        case 0:
            if(investigation->selectedActionYOffset < 16)
                investigation->selectedActionYOffset++;
            investigation->lastActionYOffset = 0;
            if (investigation->selectedActionYOffset >= 16)
                main->process[GAME_PROCESS_VAR1]++;
            break;
        case 1: // _0800C39C
            oam = &gOamObjects[38];
            moveLocations = main->roomData[main->currentRoomId];
            moveLocations += 4;
            for(i = 0; i < 4; i++)
            {
                u8 * vram = OBJ_VRAM0 + 0x3400;
                vram += i * 0x800;
                if(*moveLocations != 0xFF)
                {
                    investigation->activeOptions[i] = TRUE;
                    moveButtonTiles = gUnknown_081FD96C+*moveLocations*0x800; //TODO: label vs value?
                    DmaCopy16(3, moveButtonTiles, vram, 0x800);
                    for(j = 0; j < 2; j++)
                    {
                        u32 baseTile = 0x1A0;
                        oam->attr0 = i * 4 + 0x4080;
                        oam->attr1 = j * 64 + 0xC038;
                        oam->attr2 = (j * 0x20 + baseTile + i * 0x40) | 0x9000; // priority 0, palette 9 
                        oam++;
                    }
                }
                else
                {
                    investigation->activeOptions[i] = FALSE;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                }
                moveLocations++;
            }
            investigation->selectedOption = 0;
            main->process[GAME_PROCESS_VAR1]++;
            main->process[GAME_PROCESS_VAR2] = 0;
            break;
        case 2: // _0800C464
            oam2 = &gOamObjects[50];
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 -= (4-i) << 1;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            oam = oam2;
            attr1 = oam->attr1 & ~0x1ff;
            oam->attr1 -= 6;
            oam->attr1 &= 0x1FF;
            if(oam->attr1 >= 0x100)
                oam->attr1 = 0;
            if(oam->attr1 == 0 && main->process[GAME_PROCESS_VAR2] > 0xC)
            {
                main->process[GAME_PROCESS_VAR1]++;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            oam->attr1 |= attr1;
            break;
        case 3: // _0800C4DC
            if(main->blendMode)
                break;
            if(gJoypad.pressedKeys & START_BUTTON)
            {
                if(!(main->gameStateFlags & 0x10))
                {
                    PauseBGM();
                    DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
                    DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
                    PlaySE(SE007_MENU_OPEN_SUBMENU);
                    main->gameStateFlags &= ~1;
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
                }
                break;
            }
            else if(gJoypad.pressedKeys & R_BUTTON)
            {
                if(!(main->gameStateFlags & 0x10))
                {
                    PlaySE(SE007_MENU_OPEN_SUBMENU);
                    main->process[GAME_PROCESS_VAR1] = 6; //! tries opening court record from switch case 6 but fails spectacularly
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_STATE_INIT, 0, 0, main);
                    oam = &gOamObjects[38];
                    for(i = 0; i < 8; oam++, i++)
                        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                }
                break;
            }
            if(gJoypad.pressedKeys & DPAD_UP)
            {
                u32 temp;
                i = 0;
                j = investigation->selectedOption-1;
                temp = investigation->selectedOption;
                do
                {
                    j &= 3;
                    if(investigation->activeOptions[j] != FALSE)
                    {
                        investigation->selectedOption = j;
                        break;                    
                    }
                    j--;
                }
                while(++i < 4);
                if(temp != investigation->selectedOption)
                    PlaySE(SE000_MENU_CHANGE);
                break;
            }
            else if(gJoypad.pressedKeys & DPAD_DOWN)
            {
                u32 temp;
                i = 0;
                j = investigation->selectedOption+1;
                temp = investigation->selectedOption;
                do
                {
                    j &= 3;
                    if(investigation->activeOptions[j] != FALSE)
                    {
                        investigation->selectedOption = j;
                        break;                    
                    }
                    j++;
                }
                while(++i < 4);
                if(temp != investigation->selectedOption)
                    PlaySE(SE000_MENU_CHANGE);
                break;
            }
            else if(gJoypad.pressedKeys & A_BUTTON)
            {
                u32 roomId;
                PlaySE(SE001_MENU_CONFIRM);
                roomId = main->currentRoomId;
                j = investigation->selectedOption+4;
                main->currentRoomId = main->roomData[roomId][j];
                FadeOutBGM(20);
                StartHardwareBlend(2, 1, 1, 0x1F);
                SET_PROCESS_PTR(INVESTIGATION_PROCESS, 5, 0, 0, main);
                break;
            }
            else if(gJoypad.pressedKeys & B_BUTTON)
            {
                PlaySE(SE002_MENU_CANCEL);
                main->process[GAME_PROCESS_VAR1]++;
                main->process[GAME_PROCESS_VAR2] = 0;
                break;
            }
            break;
        case 4: // _0800C690
            oam2 = &gOamObjects[50];
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += ((4-i) << 1) + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            oam = oam2;
            attr1 = oam->attr1 & ~0x1ff;
            oam->attr1 += 6;
            oam->attr1 &= 0x1FF;
            if(oam->attr1 >= 60)
            {
                oam->attr1 = 60;
                SetInactiveActionButtons(investigation, 13);
                investigation->actionState = 2;
                investigation->inactiveActionButtonY = 0xE0;
                investigation->selectedActionYOffset = 0x10;
                investigation->lastActionYOffset = 0;
                main->process[GAME_PROCESS_VAR1]++;
            }
            oam->attr1 |= attr1;
            break;
        case 5: // _0800C714
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += ((4-i) << 1) + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            if(investigation->selectedActionYOffset > 8)
                investigation->selectedActionYOffset--;
            if(investigation->actionState == 0 && main->process[GAME_PROCESS_VAR2] > 12)
            {
                SET_PROCESS_PTR(INVESTIGATION_PROCESS, 1, 0, 0, main);
                investigation->inactiveActions += 1 << investigation->selectedAction;
                investigation->selectedActionYOffset = 8;
                investigation->lastActionYOffset = 0;
            }
            break;
        case 6: // _0800C784
            oam = &gOamObjects[38];
            moveLocations = main->roomData[main->currentRoomId];
            moveLocations+= 4;
            for(i = 0; i < 4; i++)
            {
                u8 * vram = OBJ_VRAM0 + 0x3400;
                vram += i * 0x800;
                if(*moveLocations != 0xFF)
                {
                    investigation->activeOptions[i] = TRUE;
                    moveButtonTiles = gUnknown_081FD96C+*moveLocations*0x800; //TODO: label vs value?
                    DmaCopy16(3, moveButtonTiles, vram, 0x800);
                    for(j = 0; j < 2; j++)
                    {
                        u32 baseTile = 0x1A0;
                        oam->attr0 = i * 30 + 0x4018;
                        oam->attr1 = j * 64 + 0xC038;
                        oam->attr2 = (j * 0x20 + baseTile + i * 0x40) | 0x9000; // priority 0, palette 9
                        oam++;
                    }
                }
                else
                {
                    investigation->activeOptions[i] = FALSE;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                }
                moveLocations++;
            }
            main->process[GAME_PROCESS_VAR1] = 3;
            break;
    }
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        if(i == investigation->selectedOption)
        {
            for(j = 0; j < 2; j++)
            {
                oam->attr2 &= ~0xF000;
                oam->attr2 += 0x9000;
                oam++;
            }
        }
        else
        {
            for(j = 0; j < 2; j++)
            {
                oam->attr2 &= ~0xF000;
                oam->attr2 += 0xA000;
                oam++;
            }
        }
    }
}

#ifdef NONMATCHING
void sub_800C8B8(struct Main * main, struct InvestigationStruct * investigation) // tantei_talk
{
    struct OamAttrs * oam2;
    struct OamAttrs * oam;
    u16 attr1;
    u32 i, j;
    u8 * icons;
    uintptr_t temp;
    u8 * vram;
    struct TalkData * talkData;
    switch(main->process[GAME_PROCESS_VAR1])
    {
        case 0:
            if(investigation->selectedActionYOffset < 16)
                investigation->selectedActionYOffset++;
            investigation->lastActionYOffset = 0;
            if(investigation->selectedActionYOffset >= 16)
                main->process[GAME_PROCESS_VAR1]++;
            break;
        case 1:
        {
            for(talkData = gTalkData; talkData->roomId != 0xFF; talkData++)
            {
                if(main->currentRoomId == talkData->roomId
                && gAnimation[1].animationInfo.personId == talkData->personId
                && talkData->enableFlag == TRUE)
                    break;
            }
            oam = &gOamObjects[38];
            icons = talkData->iconId;
            for(i = 0; i < 4; i++)
            {
                vram = OBJ_VRAM0 + 0x3400;
                vram += i * 0x800;
                if(*icons != 0xFF)
                {
                    investigation->activeOptions[i] = TRUE;
                    temp = (uintptr_t)gUnknown_0820816C + *icons * 0x800;
                    DmaCopy16(3, temp, vram, 0x800);
                    for(j = 0; j < 2; j++)
                    {
                        u32 baseTile = 0x1A0;
                        oam->attr0 = i * 4 + 0x4080;
                        oam->attr1 = j * 64 + 0xC038;
                        oam->attr2 = (j * 0x20 + baseTile + i * 0x40) | 0x9000; // priority 0, palette 9 
                        oam++;
                    }
                }
                else
                {
                    investigation->activeOptions[i] = FALSE;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                }
                icons++;
            }
            DmaCopy16(3, gUnknown_08190FC0, OBJ_VRAM0+0x5400, 0x200);
            DmaCopy16(3, gUnknown_081944E0, PLTT+0x360, 0x20);
            investigation->selectedOption = 0;
            main->process[GAME_PROCESS_VAR1]++;
            main->process[GAME_PROCESS_VAR2] = 0;
            break;
        }
        case 2:
        {
            struct OamAttrs * oam2 = &gOamObjects[51];
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 -= ((4-i) << 1);
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            oam = oam2;
            attr1 = oam->attr1 & ~0x1ff;
            oam->attr1 -= 9;
            oam->attr1 &= 0x1FF;
            if(oam->attr1 >= 256)
                oam->attr1 = 0;
            if(oam->attr1 == 0 && main->process[GAME_PROCESS_VAR2] > 12)
            {
                main->process[GAME_PROCESS_VAR1]++;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            oam->attr1 |= attr1;
            break;
        }
        case 3:
        {
            bool32 showTalkTick;
            DmaCopy16(3, gUnknown_08190FC0, OBJ_VRAM0+0x5400, 0x200);
            DmaCopy16(3, gUnknown_081944E0, OBJ_PLTT+0x160, 0x20);
            for(talkData = gTalkData; talkData->roomId != 0xFF; talkData++)
            {
                if(main->currentRoomId == talkData->roomId
                && gAnimation[1].animationInfo.personId == talkData->personId
                && talkData->enableFlag == TRUE)
                    break;
            }
            showTalkTick = TRUE;
            if(main->blendMode == 0)
            {
                if(gJoypad.pressedKeys & START_BUTTON)
                {
                    if(!(main->gameStateFlags & 0x10))
                    {
                        PauseBGM();
                        DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
                        DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
                        PlaySE(SE007_MENU_OPEN_SUBMENU);
                        main->gameStateFlags &= ~1;
                        BACKUP_PROCESS_PTR(main);
                        SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
                    }
                }
                else if(gJoypad.pressedKeys & R_BUTTON)
                {
                    if(!(main->gameStateFlags & 0x10))
                    {
                        PlaySE(SE007_MENU_OPEN_SUBMENU);
                        main->process[GAME_PROCESS_VAR1] = 8;
                        BACKUP_PROCESS_PTR(main);
                        SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_STATE_INIT, 0, 0, main);
                        oam = &gOamObjects[38];
                        for(i = 0; i < 8; oam++, i++)
                            oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                        showTalkTick = FALSE;
                    }
                }
                else if(gJoypad.pressedKeys & DPAD_UP)
                {
                    i = 0;
                    j = investigation->selectedOption-1;
                    temp = investigation->selectedOption;
                    do
                    {
                        j &= 3;
                        if(investigation->activeOptions[j] != FALSE)
                        {
                            investigation->selectedOption = j;
                            break;                    
                        }
                        j--;
                    }
                    while(++i < 4);
                    if(temp != investigation->selectedOption)
                        PlaySE(SE000_MENU_CHANGE);
                }
                else if(gJoypad.pressedKeys & DPAD_DOWN)
                {
                    i = 0;
                    j = investigation->selectedOption+1;
                    temp = investigation->selectedOption;
                    do
                    {
                        j &= 3;
                        if(investigation->activeOptions[j] != FALSE)
                        {
                            investigation->selectedOption = j;
                            break;                    
                        }
                        j++;
                    }
                    while(++i < 4);
                    if(temp != investigation->selectedOption)
                        PlaySE(SE000_MENU_CHANGE);
                }
                else if(gJoypad.pressedKeys & A_BUTTON)
                {
                    PlaySE(SE001_MENU_CONFIRM);
                    temp = talkData->talkSection[investigation->selectedOption];
                    ChangeScriptSection(temp);
                    SlideTextbox(1);
                    if(GetFlag(2, talkData->talkFlagId[investigation->selectedOption]))
                        gScriptContext.textSkip = 1;
                    else
                    {
                        gScriptContext.textSkip = 0;
                        ChangeFlag(2, talkData->talkFlagId[investigation->selectedOption], TRUE);
                    }
                    SetInactiveActionButtons(investigation, 4);
                    investigation->inactiveActionButtonY = 0xF0;
                    investigation->actionState = 3;
                    main->process[GAME_PROCESS_VAR1] = 6;
                    main->process[GAME_PROCESS_VAR2] = 0;
                    showTalkTick = FALSE;
                }
                else if(gJoypad.pressedKeys & B_BUTTON)
                {
                    PlaySE(SE002_MENU_CANCEL);
                    main->process[GAME_PROCESS_VAR1]++;
                    main->process[GAME_PROCESS_VAR2] = 0;
                    showTalkTick = FALSE;
                }
                oam = &gOamObjects[34];
                if(showTalkTick)
                {
                    for(i = 0; i < 4; i++)
                    {
                        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                        for(j = 0; j < 4; j++)
                        {
                            if(GetFlag(2, talkData->talkFlagId[i]))
                            {
                                oam->attr0 = 0x10 + i * 30;
                                oam->attr1 = 0x8030;
                                oam->attr2 = 0xB2A0;
                                break;
                            }
                        }
                        oam++;
                    }
                }
                else
                {
                    for(i = 0; i < 4; i++)
                    {
                        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                        oam++;
                    }
                }
            }
            break;
        }
        case 4:
        {
            struct OamAttrs * oam2 = &gOamObjects[51];
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += ((4-i) << 1) + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            oam = oam2;
            attr1 = oam->attr1 & ~0x1ff;
            oam->attr1 += 9;
            oam->attr1 &= 0x1FF;
            if(oam->attr1 >= 120)
            {
                oam->attr1 = 120;
                SetInactiveActionButtons(investigation, 0xB);
                investigation->actionState = 2;
                investigation->inactiveActionButtonY = 0xE0;
                investigation->selectedActionYOffset = 0x10;
                investigation->lastActionYOffset = 0;
                main->process[GAME_PROCESS_VAR1]++;
            }
            oam->attr1 |= attr1;
            break;
        }
        case 5:
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += ((4-i) << 1) + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            if(investigation->selectedActionYOffset > 8)
                investigation->selectedActionYOffset--;
            if(investigation->actionState == 0 && main->process[GAME_PROCESS_VAR2] > 12)
            {
                SET_PROCESS_PTR(INVESTIGATION_PROCESS, 1, 0, 0, main);
                investigation->inactiveActions += 1 << investigation->selectedAction;
                investigation->selectedActionYOffset = 8;
                investigation->lastActionYOffset = 0;
            }
            break;
        case 6:
            if(main->blendMode)
                return;
            if(gJoypad.pressedKeys & START_BUTTON)
            {
                if(!(main->gameStateFlags & 0x10))
                {
                    if(gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
                    {
                        PauseBGM();
                        DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
                        DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
                        PlaySE(SE007_MENU_OPEN_SUBMENU);
                        main->gameStateFlags &= ~1;
                        BACKUP_PROCESS_PTR(main);
                        SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
                        return;
                    }
                }
            }
            if(gJoypad.pressedKeys & R_BUTTON)
            {
                if(!(main->gameStateFlags & 0x10))
                {
                    if(gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
                    {
                        PlaySE(SE007_MENU_OPEN_SUBMENU);
                        BACKUP_PROCESS_PTR(main);
                        SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_STATE_INIT, 0, 0, main);
                        return;
                    }
                }
            }
            oam2 = &gOamObjects[38];
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = oam2;
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += ((4-i) << 1) + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            if(gScriptContext.textboxState == 1)
            {
                oam = &gOamObjects[51];
                oam->attr1 &= ~0x1FF;
                for(talkData = gTalkData; talkData->roomId != 0xFF; talkData++)
                {
                    if(main->currentRoomId == talkData->roomId
                    && gAnimation[1].animationInfo.personId == talkData->personId
                    && talkData->enableFlag == TRUE)
                        break;
                }
                oam = oam2;
                icons = talkData->iconId;
                for(i = 0; i < 4; i++)
                {
                    vram = OBJ_VRAM0 + 0x3400;
                    vram += i * 0x800;
                    if(*icons != 0xFF)
                    {
                        investigation->activeOptions[i] = TRUE;
                        temp = (uintptr_t)gUnknown_0820816C + *icons * 0x800;
                        DmaCopy16(3, temp, vram, 0x800);
                        for(j = 0; j < 2; j++)
                        {
                            u32 baseTile = 0x1A0;
                            oam->attr0 = i * 4 + 0x4080;
                            oam->attr1 = j * 64 + 0xC038;
                            oam->attr2 = (j * 0x20 + baseTile + i * 0x40) | 0x9000; // priority 0, palette 9 
                            oam++;
                        }
                    }
                    else
                    {
                        investigation->activeOptions[i] = FALSE;
                        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                        oam++;
                        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                        oam++;
                    }
                    icons++;
                }
                SetInactiveActionButtons(investigation, 4);
                investigation->actionState = 1;
                investigation->selectedActionYOffset = 0;
                investigation->lastActionYOffset = 0;
                main->process[GAME_PROCESS_VAR1]++;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            break;
        case 7:
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 -= ((4-i) << 1);
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            if(investigation->actionState == 0 && main->process[GAME_PROCESS_VAR2] > 12)
            {
                main->process[GAME_PROCESS_VAR1] = 3;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            break;
        case 8:
        {
            //oam2 = &gOamObjects[38];
            for(talkData = gTalkData; talkData->roomId != 0xFF; talkData++)
            {
                if(main->currentRoomId == talkData->roomId
                && gAnimation[1].animationInfo.personId == talkData->personId
                && talkData->enableFlag == TRUE)
                    break;
            }
            oam = &gOamObjects[38];
            icons = talkData->iconId;
            for(i = 0; i < 4; i++)
            {
                vram = OBJ_VRAM0 + 0x3400;
                vram += i * 0x800;
                if(*icons != 0xFF)
                {
                    investigation->activeOptions[i] = TRUE;
                    temp = (uintptr_t)gUnknown_0820816C + *icons * 0x800;
                    DmaCopy16(3, temp, vram, 0x800);
                    for(j = 0; j < 2; j++)
                    {
                        u32 baseTile = 0x1A0;
                        oam->attr0 = i * 30 + 0x4018;
                        oam->attr1 = j * 64 + 0xC038;
                        oam->attr2 = (j * 0x20 + baseTile + i * 0x40) | 0x9000; // priority 0, palette 9 
                        oam++;
                    }
                }
                else
                {
                    investigation->activeOptions[i] = FALSE;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                }
                icons++;
            }
            main->process[GAME_PROCESS_VAR1] = 3;
            break;
        }
    }
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        if(i == investigation->selectedOption)
        {
            for(j = 0; j < 2; j++)
            {
                oam->attr2 &= ~0xF000;
                oam->attr2 += 0x9000;
                oam++;
            }
        }
        else
        {
            for(j = 0; j < 2; j++)
            {
                oam->attr2 &= ~0xF000;
                oam->attr2 += 0xA000;
                oam++;
            }
        }
    }
}
#else
NAKED void sub_800C8B8(struct Main * main, struct InvestigationStruct * investigation)
{
    asm_unified("\tpush {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x14\n\
	mov sl, r0\n\
	str r1, [sp]\n\
	ldrb r0, [r0, #6]\n\
	cmp r0, #8\n\
	bls _0800C8D2\n\
	bl _0800D242\n\
_0800C8D2:\n\
	lsls r0, r0, #2\n\
	ldr r1, _0800C8DC\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	mov pc, r0\n\
	.align 2, 0\n\
_0800C8DC: .4byte _0800C8E0\n\
_0800C8E0: @ jump table\n\
	.4byte _0800C904 @ case 0\n\
	.4byte _0800C92C @ case 1\n\
	.4byte _0800CA68 @ case 2\n\
	.4byte _0800CAE0 @ case 3\n\
	.4byte _0800CDB0 @ case 4\n\
	.4byte _0800CE34 @ case 5\n\
	.4byte _0800CEAC @ case 6\n\
	.4byte _0800D0EC @ case 7\n\
	.4byte _0800D140 @ case 8\n\
_0800C904:\n\
	ldr r1, [sp]\n\
	ldrb r0, [r1, #0xe]\n\
	cmp r0, #0xf\n\
	bhi _0800C910\n\
	adds r0, #1\n\
	strb r0, [r1, #0xe]\n\
_0800C910:\n\
	movs r0, #0\n\
	ldr r2, [sp]\n\
	strb r0, [r2, #0xf]\n\
	ldrb r3, [r2, #0xe]\n\
	cmp r3, #0xf\n\
	bhi _0800C920\n\
	bl _0800D242\n\
_0800C920:\n\
	mov r5, sl\n\
	ldrb r0, [r5, #6]\n\
	adds r0, #1\n\
	strb r0, [r5, #6]\n\
	bl _0800D242\n\
_0800C92C:\n\
	ldr r6, _0800C9D8\n\
	mov r8, r6\n\
	ldrb r1, [r6]\n\
	adds r0, r1, #0\n\
	ldr r5, _0800C9DC\n\
	ldr r3, [sp]\n\
	adds r3, #0x10\n\
	cmp r0, #0xff\n\
	beq _0800C96A\n\
	mov r0, sl\n\
	adds r0, #0x8c\n\
	ldrb r2, [r0]\n\
	ldr r4, _0800C9E0\n\
_0800C946:\n\
	cmp r2, r1\n\
	bne _0800C95C\n\
	ldrb r1, [r4]\n\
	mov r0, r8\n\
	ldrb r0, [r0, #1]\n\
	cmp r1, r0\n\
	bne _0800C95C\n\
	mov r1, r8\n\
	ldrb r1, [r1, #3]\n\
	cmp r1, #1\n\
	beq _0800C96A\n\
_0800C95C:\n\
	movs r6, #0x14\n\
	add r8, r6\n\
	mov r0, r8\n\
	ldrb r1, [r0]\n\
	adds r0, r1, #0\n\
	cmp r0, #0xff\n\
	bne _0800C946\n\
_0800C96A:\n\
	adds r6, r5, #0\n\
	mov r1, r8\n\
	adds r1, #4\n\
	movs r7, #0\n\
	mov r8, r3\n\
_0800C974:\n\
	lsls r0, r7, #0xb\n\
	ldr r2, _0800C9E4\n\
	adds r3, r0, r2\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xff\n\
	beq _0800C9F8\n\
	movs r0, #1\n\
	mov r5, r8\n\
	strb r0, [r5]\n\
	ldrb r0, [r1]\n\
	lsls r5, r0, #0xb\n\
	ldr r2, _0800C9E8\n\
	adds r5, r5, r2\n\
	ldr r0, _0800C9EC\n\
	str r5, [r0]\n\
	str r3, [r0, #4]\n\
	ldr r0, _0800C9F0\n\
	ldr r2, _0800C9EC\n\
	str r0, [r2, #8]\n\
	ldr r0, [r2, #8]\n\
	movs r4, #0\n\
	lsls r0, r7, #2\n\
	adds r2, r1, #1\n\
	movs r3, #0x81\n\
	lsls r3, r3, #7\n\
	adds r3, r3, r0\n\
	mov ip, r3\n\
	movs r3, #0xd0\n\
	lsls r3, r3, #1\n\
	lsls r5, r7, #6\n\
	str r5, [sp, #0x10]\n\
	movs r0, #0x90\n\
	lsls r0, r0, #8\n\
	mov sb, r0\n\
	ldr r1, _0800C9F4\n\
_0800C9BA:\n\
	mov r5, ip\n\
	strh r5, [r6]\n\
	strh r1, [r6, #2]\n\
	ldr r5, [sp, #0x10]\n\
	adds r0, r3, r5\n\
	mov r5, sb\n\
	orrs r0, r5\n\
	strh r0, [r6, #4]\n\
	adds r6, #8\n\
	adds r3, #0x20\n\
	adds r1, #0x40\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800C9BA\n\
	b _0800CA0E\n\
	.align 2, 0\n\
_0800C9D8: .4byte gTalkData\n\
_0800C9DC: .4byte gOamObjects+0x130\n\
_0800C9E0: .4byte gAnimation+0x4E\n\
_0800C9E4: .4byte 0x06013400\n\
_0800C9E8: .4byte gUnknown_0820816C\n\
_0800C9EC: .4byte 0x040000D4\n\
_0800C9F0: .4byte 0x80000400\n\
_0800C9F4: .4byte 0x0000C038\n\
_0800C9F8:\n\
	movs r0, #0\n\
	mov r2, r8\n\
	strb r0, [r2]\n\
	movs r3, #0x96\n\
	lsls r3, r3, #1\n\
	strh r3, [r6, #2]\n\
	adds r6, #8\n\
	adds r5, r3, #0\n\
	strh r5, [r6, #2]\n\
	adds r6, #8\n\
	adds r2, r1, #1\n\
_0800CA0E:\n\
	adds r1, r2, #0\n\
	movs r0, #1\n\
	add r8, r0\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800C974\n\
	ldr r1, _0800CA4C\n\
	ldr r0, _0800CA50\n\
	str r0, [r1]\n\
	ldr r0, _0800CA54\n\
	str r0, [r1, #4]\n\
	ldr r0, _0800CA58\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	ldr r0, _0800CA5C\n\
	str r0, [r1]\n\
	ldr r0, _0800CA60\n\
	str r0, [r1, #4]\n\
	ldr r0, _0800CA64\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	movs r1, #0\n\
	ldr r2, [sp]\n\
	strb r1, [r2, #4]\n\
	mov r3, sl\n\
	ldrb r0, [r3, #6]\n\
	adds r0, #1\n\
	strb r0, [r3, #6]\n\
	strb r1, [r3, #7]\n\
	bl _0800D242\n\
	.align 2, 0\n\
_0800CA4C: .4byte 0x040000D4\n\
_0800CA50: .4byte gUnknown_08190FC0\n\
_0800CA54: .4byte 0x06015400\n\
_0800CA58: .4byte 0x80000100\n\
_0800CA5C: .4byte gUnknown_081944E0\n\
_0800CA60: .4byte 0x05000360\n\
_0800CA64: .4byte 0x80000010\n\
_0800CA68:\n\
	ldr r3, _0800CAD8\n\
	mov r5, sl\n\
	ldrb r5, [r5, #7]\n\
	cmp r5, #0xc\n\
	bhi _0800CA9C\n\
	adds r6, r3, #0\n\
	subs r6, #0x68\n\
	movs r7, #0\n\
	movs r2, #4\n\
_0800CA7A:\n\
	movs r4, #0\n\
	subs r0, r2, r7\n\
	lsls r1, r0, #1\n\
_0800CA80:\n\
	ldrh r5, [r6]\n\
	subs r0, r5, r1\n\
	strh r0, [r6]\n\
	adds r6, #8\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800CA80\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800CA7A\n\
	mov r6, sl\n\
	ldrb r0, [r6, #7]\n\
	adds r0, #1\n\
	strb r0, [r6, #7]\n\
_0800CA9C:\n\
	adds r6, r3, #0\n\
	ldrh r0, [r6, #2]\n\
	movs r5, #0xfe\n\
	lsls r5, r5, #8\n\
	ands r5, r0\n\
	subs r0, #9\n\
	ldr r1, _0800CADC\n\
	ands r0, r1\n\
	strh r0, [r6, #2]\n\
	cmp r0, #0xff\n\
	bls _0800CAB6\n\
	movs r0, #0\n\
	strh r0, [r6, #2]\n\
_0800CAB6:\n\
	ldrh r0, [r6, #2]\n\
	cmp r0, #0\n\
	beq _0800CABE\n\
	b _0800CE22\n\
_0800CABE:\n\
	mov r0, sl\n\
	ldrb r0, [r0, #7]\n\
	cmp r0, #0xc\n\
	bhi _0800CAC8\n\
	b _0800CE22\n\
_0800CAC8:\n\
	mov r1, sl\n\
	ldrb r0, [r1, #6]\n\
	adds r0, #1\n\
	strb r0, [r1, #6]\n\
	movs r0, #0\n\
	strb r0, [r1, #7]\n\
	b _0800CE22\n\
	.align 2, 0\n\
_0800CAD8: .4byte gOamObjects+0x198\n\
_0800CADC: .4byte 0x000001FF\n\
_0800CAE0:\n\
	ldr r1, _0800CBA4\n\
	ldr r0, _0800CBA8\n\
	str r0, [r1]\n\
	ldr r0, _0800CBAC\n\
	str r0, [r1, #4]\n\
	ldr r0, _0800CBB0\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	ldr r0, _0800CBB4\n\
	str r0, [r1]\n\
	ldr r0, _0800CBB8\n\
	str r0, [r1, #4]\n\
	ldr r0, _0800CBBC\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	ldr r3, _0800CBC0\n\
	mov r8, r3\n\
	ldrb r1, [r3]\n\
	adds r0, r1, #0\n\
	mov r4, sl\n\
	adds r4, #0x76\n\
	cmp r0, #0xff\n\
	beq _0800CB3A\n\
	mov r0, sl\n\
	adds r0, #0x8c\n\
	ldrb r2, [r0]\n\
	ldr r3, _0800CBC4\n\
_0800CB16:\n\
	cmp r2, r1\n\
	bne _0800CB2C\n\
	ldrb r6, [r3]\n\
	mov r5, r8\n\
	ldrb r5, [r5, #1]\n\
	cmp r6, r5\n\
	bne _0800CB2C\n\
	mov r6, r8\n\
	ldrb r6, [r6, #3]\n\
	cmp r6, #1\n\
	beq _0800CB3A\n\
_0800CB2C:\n\
	movs r0, #0x14\n\
	add r8, r0\n\
	mov r5, r8\n\
	ldrb r1, [r5]\n\
	adds r0, r1, #0\n\
	cmp r0, #0xff\n\
	bne _0800CB16\n\
_0800CB3A:\n\
	movs r3, #1\n\
	ldrh r0, [r4]\n\
	cmp r0, #0\n\
	beq _0800CB44\n\
	b _0800CD42\n\
_0800CB44:\n\
	ldr r0, _0800CBC8\n\
	ldrh r1, [r0, #2]\n\
	movs r0, #8\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800CBE4\n\
	mov r5, sl\n\
	adds r5, #0xb4\n\
	ldr r0, [r5]\n\
	movs r1, #0x10\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800CB60\n\
	b _0800CD42\n\
_0800CB60:\n\
	str r3, [sp, #0xc]\n\
	bl PauseBGM\n\
	ldr r1, _0800CBA4\n\
	ldr r0, _0800CBCC\n\
	str r0, [r1]\n\
	ldr r2, _0800CBD0\n\
	str r2, [r1, #4]\n\
	ldr r0, _0800CBD4\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	ldr r4, _0800CBD8\n\
	str r4, [r1]\n\
	ldr r6, _0800CBDC\n\
	adds r2, r2, r6\n\
	str r2, [r1, #4]\n\
	ldr r0, _0800CBE0\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	movs r0, #0x31\n\
	bl PlaySE\n\
	ldr r0, [r5]\n\
	movs r1, #2\n\
	rsbs r1, r1, #0\n\
	ands r0, r1\n\
	str r0, [r5]\n\
	ldr r0, [r4, #4]\n\
	mov r1, sl\n\
	str r0, [r1, #8]\n\
	movs r0, #0xa\n\
	str r0, [r1, #4]\n\
	ldr r3, [sp, #0xc]\n\
	b _0800CD42\n\
	.align 2, 0\n\
_0800CBA4: .4byte 0x040000D4\n\
_0800CBA8: .4byte gUnknown_08190FC0\n\
_0800CBAC: .4byte 0x06015400\n\
_0800CBB0: .4byte 0x80000100\n\
_0800CBB4: .4byte gUnknown_081944E0\n\
_0800CBB8: .4byte 0x05000360\n\
_0800CBBC: .4byte 0x80000010\n\
_0800CBC0: .4byte gTalkData\n\
_0800CBC4: .4byte gAnimation+0x4E\n\
_0800CBC8: .4byte gJoypad\n\
_0800CBCC: .4byte gOamObjects\n\
_0800CBD0: .4byte gSaveDataBuffer+0x750\n\
_0800CBD4: .4byte 0x80000200\n\
_0800CBD8: .4byte gMain\n\
_0800CBDC: .4byte 0xFFFFF8E4\n\
_0800CBE0: .4byte 0x800000D0\n\
_0800CBE4:\n\
	movs r0, #0x80\n\
	lsls r0, r0, #1\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800CC30\n\
	mov r0, sl\n\
	adds r0, #0xb4\n\
	ldr r0, [r0]\n\
	movs r1, #0x10\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800CBFE\n\
	b _0800CD42\n\
_0800CBFE:\n\
	movs r0, #0x31\n\
	bl PlaySE\n\
	movs r0, #8\n\
	mov r2, sl\n\
	strb r0, [r2, #6]\n\
	ldr r0, _0800CC28\n\
	ldr r0, [r0]\n\
	str r0, [r2, #8]\n\
	movs r0, #7\n\
	str r0, [r2, #4]\n\
	ldr r6, _0800CC2C\n\
	movs r7, #0\n\
	movs r0, #0x96\n\
	lsls r0, r0, #1\n\
_0800CC1C:\n\
	strh r0, [r6, #2]\n\
	adds r6, #8\n\
	adds r7, #1\n\
	cmp r7, #7\n\
	bls _0800CC1C\n\
	b _0800CD40\n\
	.align 2, 0\n\
_0800CC28: .4byte gMain+0x4\n\
_0800CC2C: .4byte gOamObjects+0x130\n\
_0800CC30:\n\
	movs r0, #0x40\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800CC60\n\
	movs r7, #0\n\
	ldr r1, [sp]\n\
	ldrb r0, [r1, #4]\n\
	subs r4, r0, #1\n\
	adds r5, r0, #0\n\
	movs r2, #3\n\
	adds r1, #0x10\n\
_0800CC46:\n\
	ands r4, r2\n\
	adds r0, r1, r4\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _0800CC5A\n\
	subs r4, #1\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800CC46\n\
	b _0800CC88\n\
_0800CC5A:\n\
	ldr r6, [sp]\n\
	strb r4, [r6, #4]\n\
	b _0800CC88\n\
_0800CC60:\n\
	movs r0, #0x80\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800CC9C\n\
	movs r7, #0\n\
	ldr r1, [sp]\n\
	ldrb r0, [r1, #4]\n\
	adds r4, r0, #1\n\
	adds r5, r0, #0\n\
	movs r2, #3\n\
	adds r1, #0x10\n\
_0800CC76:\n\
	ands r4, r2\n\
	adds r0, r1, r4\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _0800CC5A\n\
	adds r4, #1\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800CC76\n\
_0800CC88:\n\
	ldr r2, [sp]\n\
	ldrb r2, [r2, #4]\n\
	cmp r5, r2\n\
	beq _0800CD42\n\
	movs r0, #0x2a\n\
	str r3, [sp, #0xc]\n\
	bl PlaySE\n\
	ldr r3, [sp, #0xc]\n\
	b _0800CD42\n\
_0800CC9C:\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	cmp r4, #0\n\
	beq _0800CD28\n\
	movs r0, #0x2b\n\
	bl PlaySE\n\
	ldr r3, [sp]\n\
	ldrb r3, [r3, #4]\n\
	lsls r1, r3, #1\n\
	mov r0, r8\n\
	adds r0, #0xc\n\
	adds r0, r0, r1\n\
	ldrh r5, [r0]\n\
	adds r0, r5, #0\n\
	bl ChangeScriptSection\n\
	movs r0, #1\n\
	bl SlideTextbox\n\
	mov r4, r8\n\
	adds r4, #8\n\
	ldr r5, [sp]\n\
	ldrb r5, [r5, #4]\n\
	adds r0, r5, r4\n\
	ldrb r1, [r0]\n\
	movs r0, #2\n\
	bl GetFlag\n\
	adds r1, r0, #0\n\
	adds r2, r4, #0\n\
	cmp r1, #0\n\
	beq _0800CCF0\n\
	ldr r1, _0800CCEC\n\
	movs r0, #1\n\
	strb r0, [r1, #0x13]\n\
	b _0800CD04\n\
	.align 2, 0\n\
_0800CCEC: .4byte gScriptContext\n\
_0800CCF0:\n\
	ldr r0, _0800CD24\n\
	strb r1, [r0, #0x13]\n\
	ldr r6, [sp]\n\
	ldrb r6, [r6, #4]\n\
	adds r0, r6, r2\n\
	ldrb r1, [r0]\n\
	movs r0, #2\n\
	movs r2, #1\n\
	bl ChangeFlag\n\
_0800CD04:\n\
	ldr r0, [sp]\n\
	movs r1, #4\n\
	bl SetInactiveActionButtons\n\
	movs r1, #0\n\
	movs r0, #0xf0\n\
	ldr r2, [sp]\n\
	strb r0, [r2, #0xd]\n\
	movs r0, #3\n\
	strb r0, [r2, #0xc]\n\
	movs r0, #6\n\
	mov r3, sl\n\
	strb r0, [r3, #6]\n\
	strb r1, [r3, #7]\n\
	b _0800CD40\n\
	.align 2, 0\n\
_0800CD24: .4byte gScriptContext\n\
_0800CD28:\n\
	movs r0, #2\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800CD42\n\
	movs r0, #0x2c\n\
	bl PlaySE\n\
	mov r5, sl\n\
	ldrb r0, [r5, #6]\n\
	adds r0, #1\n\
	strb r0, [r5, #6]\n\
	strb r4, [r5, #7]\n\
_0800CD40:\n\
	movs r3, #0\n\
_0800CD42:\n\
	ldr r6, _0800CD80\n\
	cmp r3, #0\n\
	beq _0800CD9E\n\
	movs r7, #0\n\
	mov r2, r8\n\
	adds r2, #8\n\
	ldr r0, _0800CD84\n\
	mov sb, r0\n\
	movs r5, #0x10\n\
	ldr r1, _0800CD88\n\
	mov r8, r1\n\
_0800CD58:\n\
	movs r0, #0x96\n\
	lsls r0, r0, #1\n\
	strh r0, [r6, #2]\n\
	movs r4, #0\n\
_0800CD60:\n\
	adds r0, r2, r7\n\
	ldrb r1, [r0]\n\
	movs r0, #2\n\
	str r2, [sp, #8]\n\
	bl GetFlag\n\
	ldr r2, [sp, #8]\n\
	cmp r0, #0\n\
	beq _0800CD8C\n\
	strh r5, [r6]\n\
	mov r3, sb\n\
	strh r3, [r6, #2]\n\
	mov r0, r8\n\
	strh r0, [r6, #4]\n\
	b _0800CD92\n\
	.align 2, 0\n\
_0800CD80: .4byte gOamObjects+0x110\n\
_0800CD84: .4byte 0x00008030\n\
_0800CD88: .4byte 0x0000B2A0\n\
_0800CD8C:\n\
	adds r4, #1\n\
	cmp r4, #3\n\
	bls _0800CD60\n\
_0800CD92:\n\
	adds r6, #8\n\
	adds r5, #0x1e\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800CD58\n\
	b _0800D242\n\
_0800CD9E:\n\
	movs r7, #0\n\
	movs r0, #0x96\n\
	lsls r0, r0, #1\n\
_0800CDA4:\n\
	strh r0, [r6, #2]\n\
	adds r6, #8\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800CDA4\n\
	b _0800D242\n\
_0800CDB0:\n\
	ldr r3, _0800CE2C\n\
	mov r1, sl\n\
	ldrb r1, [r1, #7]\n\
	cmp r1, #0xc\n\
	bhi _0800CDE6\n\
	adds r6, r3, #0\n\
	subs r6, #0x68\n\
	movs r7, #0\n\
	movs r2, #4\n\
_0800CDC2:\n\
	movs r4, #0\n\
	subs r0, r2, r7\n\
	lsls r1, r0, #1\n\
_0800CDC8:\n\
	ldrh r0, [r6]\n\
	adds r0, #4\n\
	adds r0, r0, r1\n\
	strh r0, [r6]\n\
	adds r6, #8\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800CDC8\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800CDC2\n\
	mov r2, sl\n\
	ldrb r0, [r2, #7]\n\
	adds r0, #1\n\
	strb r0, [r2, #7]\n\
_0800CDE6:\n\
	adds r6, r3, #0\n\
	ldrh r0, [r6, #2]\n\
	movs r5, #0xfe\n\
	lsls r5, r5, #8\n\
	ands r5, r0\n\
	adds r0, #9\n\
	ldr r1, _0800CE30\n\
	ands r0, r1\n\
	strh r0, [r6, #2]\n\
	cmp r0, #0x77\n\
	bls _0800CE22\n\
	movs r0, #0x78\n\
	strh r0, [r6, #2]\n\
	ldr r0, [sp]\n\
	movs r1, #0xb\n\
	bl SetInactiveActionButtons\n\
	movs r0, #2\n\
	ldr r3, [sp]\n\
	strb r0, [r3, #0xc]\n\
	movs r0, #0xe0\n\
	strb r0, [r3, #0xd]\n\
	movs r0, #0x10\n\
	strb r0, [r3, #0xe]\n\
	movs r0, #0\n\
	strb r0, [r3, #0xf]\n\
	mov r1, sl\n\
	ldrb r0, [r1, #6]\n\
	adds r0, #1\n\
	strb r0, [r1, #6]\n\
_0800CE22:\n\
	ldrh r2, [r6, #2]\n\
	orrs r5, r2\n\
	strh r5, [r6, #2]\n\
	b _0800D242\n\
	.align 2, 0\n\
_0800CE2C: .4byte gOamObjects+0x198\n\
_0800CE30: .4byte 0x000001FF\n\
_0800CE34:\n\
	mov r3, sl\n\
	ldrb r3, [r3, #7]\n\
	cmp r3, #0xc\n\
	bhi _0800CE66\n\
	ldr r6, _0800CEA8\n\
	movs r7, #0\n\
	movs r2, #4\n\
_0800CE42:\n\
	movs r4, #0\n\
	subs r0, r2, r7\n\
	lsls r1, r0, #1\n\
_0800CE48:\n\
	ldrh r0, [r6]\n\
	adds r0, #4\n\
	adds r0, r0, r1\n\
	strh r0, [r6]\n\
	adds r6, #8\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800CE48\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800CE42\n\
	mov r5, sl\n\
	ldrb r0, [r5, #7]\n\
	adds r0, #1\n\
	strb r0, [r5, #7]\n\
_0800CE66:\n\
	ldr r6, [sp]\n\
	ldrb r0, [r6, #0xe]\n\
	cmp r0, #8\n\
	bls _0800CE72\n\
	subs r0, #1\n\
	strb r0, [r6, #0xe]\n\
_0800CE72:\n\
	ldr r0, [sp]\n\
	ldrb r1, [r0, #0xc]\n\
	cmp r1, #0\n\
	beq _0800CE7C\n\
	b _0800D242\n\
_0800CE7C:\n\
	mov r2, sl\n\
	ldrb r2, [r2, #7]\n\
	cmp r2, #0xc\n\
	bhi _0800CE86\n\
	b _0800D242\n\
_0800CE86:\n\
	movs r0, #0x82\n\
	lsls r0, r0, #1\n\
	mov r3, sl\n\
	str r0, [r3, #4]\n\
	movs r0, #1\n\
	ldr r5, [sp]\n\
	ldrb r5, [r5, #0xa]\n\
	lsls r0, r5\n\
	ldr r6, [sp]\n\
	ldrb r6, [r6, #7]\n\
	adds r0, r6, r0\n\
	ldr r2, [sp]\n\
	strb r0, [r2, #7]\n\
	movs r0, #8\n\
	strb r0, [r2, #0xe]\n\
	strb r1, [r2, #0xf]\n\
	b _0800D242\n\
	.align 2, 0\n\
_0800CEA8: .4byte gOamObjects+0x130\n\
_0800CEAC:\n\
	mov r0, sl\n\
	adds r0, #0x76\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	beq _0800CEB8\n\
	b _0800D29C\n\
_0800CEB8:\n\
	ldr r1, _0800CF24\n\
	movs r0, #8\n\
	ldrh r3, [r1, #2]\n\
	ands r0, r3\n\
	adds r2, r1, #0\n\
	ldr r5, _0800CF28\n\
	mov r8, r5\n\
	cmp r0, #0\n\
	beq _0800CF48\n\
	mov r5, sl\n\
	adds r5, #0xb4\n\
	ldr r0, [r5]\n\
	movs r1, #0x10\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0800CF48\n\
	movs r0, #5\n\
	mov r6, r8\n\
	ldrh r6, [r6]\n\
	ands r0, r6\n\
	cmp r0, #0\n\
	beq _0800CF48\n\
	bl PauseBGM\n\
	ldr r1, _0800CF2C\n\
	ldr r0, _0800CF30\n\
	str r0, [r1]\n\
	ldr r2, _0800CF34\n\
	str r2, [r1, #4]\n\
	ldr r0, _0800CF38\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	ldr r4, _0800CF3C\n\
	str r4, [r1]\n\
	ldr r0, _0800CF40\n\
	adds r2, r2, r0\n\
	str r2, [r1, #4]\n\
	ldr r0, _0800CF44\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	movs r0, #0x31\n\
	bl PlaySE\n\
	ldr r0, [r5]\n\
	movs r1, #2\n\
	rsbs r1, r1, #0\n\
	ands r0, r1\n\
	str r0, [r5]\n\
	ldr r0, [r4, #4]\n\
	mov r1, sl\n\
	str r0, [r1, #8]\n\
	movs r0, #0xa\n\
	str r0, [r1, #4]\n\
	b _0800D29C\n\
	.align 2, 0\n\
_0800CF24: .4byte gJoypad\n\
_0800CF28: .4byte gScriptContext\n\
_0800CF2C: .4byte 0x040000D4\n\
_0800CF30: .4byte gOamObjects\n\
_0800CF34: .4byte gSaveDataBuffer+0x750\n\
_0800CF38: .4byte 0x80000200\n\
_0800CF3C: .4byte gMain\n\
_0800CF40: .4byte 0xFFFFF8E4\n\
_0800CF44: .4byte 0x800000D0\n\
_0800CF48:\n\
	movs r0, #0x80\n\
	lsls r0, r0, #1\n\
	ldrh r2, [r2, #2]\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	beq _0800CF88\n\
	mov r0, sl\n\
	adds r0, #0xb4\n\
	ldr r0, [r0]\n\
	movs r1, #0x10\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0800CF88\n\
	movs r0, #5\n\
	mov r2, r8\n\
	ldrh r2, [r2]\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	beq _0800CF88\n\
	movs r0, #0x31\n\
	bl PlaySE\n\
	ldr r0, _0800CF84\n\
	ldr r0, [r0]\n\
	mov r3, sl\n\
	str r0, [r3, #8]\n\
	movs r0, #7\n\
	str r0, [r3, #4]\n\
	b _0800D29C\n\
	.align 2, 0\n\
_0800CF84: .4byte gMain+0x4\n\
_0800CF88:\n\
	ldr r5, _0800D080\n\
	mov r6, sl\n\
	ldrb r6, [r6, #7]\n\
	cmp r6, #0xc\n\
	bhi _0800CFBE\n\
	adds r6, r5, #0\n\
	movs r7, #0\n\
	movs r3, #4\n\
_0800CF98:\n\
	movs r4, #0\n\
	adds r2, r7, #1\n\
	subs r0, r3, r7\n\
	lsls r1, r0, #1\n\
_0800CFA0:\n\
	ldrh r0, [r6]\n\
	adds r0, #4\n\
	adds r0, r0, r1\n\
	strh r0, [r6]\n\
	adds r6, #8\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800CFA0\n\
	adds r7, r2, #0\n\
	cmp r7, #3\n\
	bls _0800CF98\n\
	mov r1, sl\n\
	ldrb r0, [r1, #7]\n\
	adds r0, #1\n\
	strb r0, [r1, #7]\n\
_0800CFBE:\n\
	mov r0, r8\n\
	adds r0, #0x38\n\
	ldrb r0, [r0]\n\
	cmp r0, #1\n\
	beq _0800CFCA\n\
	b _0800D242\n\
_0800CFCA:\n\
	ldr r6, _0800D084\n\
	movs r0, #0xfe\n\
	lsls r0, r0, #8\n\
	ldrh r2, [r6, #2]\n\
	ands r0, r2\n\
	strh r0, [r6, #2]\n\
	ldr r3, _0800D088\n\
	mov r8, r3\n\
	ldrb r1, [r3]\n\
	adds r0, r1, #0\n\
	ldr r3, [sp]\n\
	adds r3, #0x10\n\
	cmp r0, #0xff\n\
	beq _0800D012\n\
	mov r0, sl\n\
	adds r0, #0x8c\n\
	ldrb r2, [r0]\n\
	ldr r4, _0800D08C\n\
_0800CFEE:\n\
	cmp r2, r1\n\
	bne _0800D004\n\
	ldrb r0, [r4]\n\
	mov r6, r8\n\
	ldrb r6, [r6, #1]\n\
	cmp r0, r6\n\
	bne _0800D004\n\
	mov r0, r8\n\
	ldrb r0, [r0, #3]\n\
	cmp r0, #1\n\
	beq _0800D012\n\
_0800D004:\n\
	movs r1, #0x14\n\
	add r8, r1\n\
	mov r6, r8\n\
	ldrb r1, [r6]\n\
	adds r0, r1, #0\n\
	cmp r0, #0xff\n\
	bne _0800CFEE\n\
_0800D012:\n\
	adds r6, r5, #0\n\
	mov r1, r8\n\
	adds r1, #4\n\
	movs r7, #0\n\
	mov r8, r3\n\
_0800D01C:\n\
	lsls r0, r7, #0xb\n\
	ldr r2, _0800D090\n\
	adds r3, r0, r2\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xff\n\
	beq _0800D0A4\n\
	movs r0, #1\n\
	mov r5, r8\n\
	strb r0, [r5]\n\
	ldrb r0, [r1]\n\
	lsls r5, r0, #0xb\n\
	ldr r2, _0800D094\n\
	adds r5, r5, r2\n\
	ldr r0, _0800D098\n\
	str r5, [r0]\n\
	str r3, [r0, #4]\n\
	ldr r0, _0800D09C\n\
	ldr r2, _0800D098\n\
	str r0, [r2, #8]\n\
	ldr r0, [r2, #8]\n\
	movs r4, #0\n\
	lsls r0, r7, #2\n\
	adds r2, r1, #1\n\
	movs r3, #0x81\n\
	lsls r3, r3, #7\n\
	adds r3, r3, r0\n\
	mov ip, r3\n\
	movs r3, #0xd0\n\
	lsls r3, r3, #1\n\
	lsls r5, r7, #6\n\
	str r5, [sp, #0x10]\n\
	movs r0, #0x90\n\
	lsls r0, r0, #8\n\
	mov sb, r0\n\
	ldr r1, _0800D0A0\n\
_0800D062:\n\
	mov r5, ip\n\
	strh r5, [r6]\n\
	strh r1, [r6, #2]\n\
	ldr r5, [sp, #0x10]\n\
	adds r0, r3, r5\n\
	mov r5, sb\n\
	orrs r0, r5\n\
	strh r0, [r6, #4]\n\
	adds r6, #8\n\
	adds r3, #0x20\n\
	adds r1, #0x40\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800D062\n\
	b _0800D0BA\n\
	.align 2, 0\n\
_0800D080: .4byte gOamObjects+0x130\n\
_0800D084: .4byte gOamObjects+0x198\n\
_0800D088: .4byte gTalkData\n\
_0800D08C: .4byte gAnimation+0x4E\n\
_0800D090: .4byte 0x06013400\n\
_0800D094: .4byte gUnknown_0820816C\n\
_0800D098: .4byte 0x040000D4\n\
_0800D09C: .4byte 0x80000400\n\
_0800D0A0: .4byte 0x0000C038\n\
_0800D0A4:\n\
	movs r0, #0\n\
	mov r2, r8\n\
	strb r0, [r2]\n\
	movs r3, #0x96\n\
	lsls r3, r3, #1\n\
	strh r3, [r6, #2]\n\
	adds r6, #8\n\
	adds r5, r3, #0\n\
	strh r5, [r6, #2]\n\
	adds r6, #8\n\
	adds r2, r1, #1\n\
_0800D0BA:\n\
	adds r1, r2, #0\n\
	movs r0, #1\n\
	add r8, r0\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800D01C\n\
	ldr r0, _0800D0E8\n\
	movs r1, #4\n\
	bl SetInactiveActionButtons\n\
	movs r0, #0\n\
	movs r1, #1\n\
	ldr r2, _0800D0E8\n\
	strb r1, [r2, #0xc]\n\
	strb r0, [r2, #0xe]\n\
	strb r0, [r2, #0xf]\n\
	mov r3, sl\n\
	ldrb r1, [r3, #6]\n\
	adds r1, #1\n\
	strb r1, [r3, #6]\n\
	strb r0, [r3, #7]\n\
	b _0800D242\n\
	.align 2, 0\n\
_0800D0E8: .4byte gInvestigation\n\
_0800D0EC:\n\
	mov r5, sl\n\
	ldrb r5, [r5, #7]\n\
	cmp r5, #0xc\n\
	bhi _0800D11C\n\
	ldr r6, _0800D13C\n\
	movs r7, #0\n\
	movs r2, #4\n\
_0800D0FA:\n\
	movs r4, #0\n\
	subs r0, r2, r7\n\
	lsls r1, r0, #1\n\
_0800D100:\n\
	ldrh r3, [r6]\n\
	subs r0, r3, r1\n\
	strh r0, [r6]\n\
	adds r6, #8\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800D100\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800D0FA\n\
	mov r5, sl\n\
	ldrb r0, [r5, #7]\n\
	adds r0, #1\n\
	strb r0, [r5, #7]\n\
_0800D11C:\n\
	ldr r6, [sp]\n\
	ldrb r1, [r6, #0xc]\n\
	cmp r1, #0\n\
	beq _0800D126\n\
	b _0800D242\n\
_0800D126:\n\
	mov r0, sl\n\
	ldrb r0, [r0, #7]\n\
	cmp r0, #0xc\n\
	bhi _0800D130\n\
	b _0800D242\n\
_0800D130:\n\
	movs r0, #3\n\
	mov r2, sl\n\
	strb r0, [r2, #6]\n\
	strb r1, [r2, #7]\n\
	b _0800D242\n\
	.align 2, 0\n\
_0800D13C: .4byte gOamObjects+0x130\n\
_0800D140:\n\
	ldr r3, _0800D1F0\n\
	mov r8, r3\n\
	ldrb r1, [r3]\n\
	adds r0, r1, #0\n\
	ldr r5, _0800D1F4\n\
	ldr r3, [sp]\n\
	adds r3, #0x10\n\
	cmp r0, #0xff\n\
	beq _0800D17E\n\
	mov r0, sl\n\
	adds r0, #0x8c\n\
	ldrb r2, [r0]\n\
	ldr r4, _0800D1F8\n\
_0800D15A:\n\
	cmp r2, r1\n\
	bne _0800D170\n\
	ldrb r0, [r4]\n\
	mov r6, r8\n\
	ldrb r6, [r6, #1]\n\
	cmp r0, r6\n\
	bne _0800D170\n\
	mov r0, r8\n\
	ldrb r0, [r0, #3]\n\
	cmp r0, #1\n\
	beq _0800D17E\n\
_0800D170:\n\
	movs r1, #0x14\n\
	add r8, r1\n\
	mov r6, r8\n\
	ldrb r1, [r6]\n\
	adds r0, r1, #0\n\
	cmp r0, #0xff\n\
	bne _0800D15A\n\
_0800D17E:\n\
	adds r6, r5, #0\n\
	mov r1, r8\n\
	adds r1, #4\n\
	movs r7, #0\n\
	mov r8, r3\n\
	movs r0, #0\n\
	str r0, [sp, #4]\n\
_0800D18C:\n\
	lsls r0, r7, #0xb\n\
	ldr r2, _0800D1FC\n\
	adds r3, r0, r2\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xff\n\
	beq _0800D214\n\
	movs r0, #1\n\
	mov r5, r8\n\
	strb r0, [r5]\n\
	ldrb r0, [r1]\n\
	lsls r5, r0, #0xb\n\
	ldr r2, _0800D200\n\
	adds r5, r5, r2\n\
	ldr r0, _0800D204\n\
	str r5, [r0]\n\
	str r3, [r0, #4]\n\
	ldr r0, _0800D208\n\
	ldr r2, _0800D204\n\
	str r0, [r2, #8]\n\
	ldr r0, [r2, #8]\n\
	movs r4, #0\n\
	adds r2, r1, #1\n\
	ldr r3, [sp, #4]\n\
	ldr r5, _0800D20C\n\
	adds r3, r3, r5\n\
	mov ip, r3\n\
	movs r3, #0xd0\n\
	lsls r3, r3, #1\n\
	lsls r0, r7, #6\n\
	str r0, [sp, #0x10]\n\
	movs r1, #0x90\n\
	lsls r1, r1, #8\n\
	mov sb, r1\n\
	ldr r1, _0800D210\n\
_0800D1D0:\n\
	mov r5, ip\n\
	strh r5, [r6]\n\
	strh r1, [r6, #2]\n\
	ldr r5, [sp, #0x10]\n\
	adds r0, r3, r5\n\
	mov r5, sb\n\
	orrs r0, r5\n\
	strh r0, [r6, #4]\n\
	adds r6, #8\n\
	adds r3, #0x20\n\
	adds r1, #0x40\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800D1D0\n\
	b _0800D22A\n\
	.align 2, 0\n\
_0800D1F0: .4byte gTalkData\n\
_0800D1F4: .4byte gOamObjects+0x130\n\
_0800D1F8: .4byte gAnimation+0x4E\n\
_0800D1FC: .4byte 0x06013400\n\
_0800D200: .4byte gUnknown_0820816C\n\
_0800D204: .4byte 0x040000D4\n\
_0800D208: .4byte 0x80000400\n\
_0800D20C: .4byte 0x00004018\n\
_0800D210: .4byte 0x0000C038\n\
_0800D214:\n\
	movs r0, #0\n\
	mov r2, r8\n\
	strb r0, [r2]\n\
	movs r3, #0x96\n\
	lsls r3, r3, #1\n\
	strh r3, [r6, #2]\n\
	adds r6, #8\n\
	adds r5, r3, #0\n\
	strh r5, [r6, #2]\n\
	adds r6, #8\n\
	adds r2, r1, #1\n\
_0800D22A:\n\
	adds r1, r2, #0\n\
	movs r0, #1\n\
	add r8, r0\n\
	ldr r2, [sp, #4]\n\
	adds r2, #0x1e\n\
	str r2, [sp, #4]\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _0800D18C\n\
	movs r0, #3\n\
	mov r3, sl\n\
	strb r0, [r3, #6]\n\
_0800D242:\n\
	ldr r6, _0800D270\n\
	movs r7, #0\n\
_0800D246:\n\
	ldr r5, [sp]\n\
	ldrb r5, [r5, #4]\n\
	cmp r7, r5\n\
	bne _0800D278\n\
	movs r4, #0\n\
	adds r2, r7, #1\n\
	ldr r3, _0800D274\n\
	movs r0, #0x90\n\
	lsls r0, r0, #8\n\
	adds r1, r0, #0\n\
_0800D25A:\n\
	adds r0, r3, #0\n\
	ldrh r5, [r6, #4]\n\
	ands r0, r5\n\
	adds r0, r0, r1\n\
	strh r0, [r6, #4]\n\
	adds r6, #8\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800D25A\n\
	b _0800D296\n\
	.align 2, 0\n\
_0800D270: .4byte gOamObjects+0x130\n\
_0800D274: .4byte 0x00000FFF\n\
_0800D278:\n\
	movs r4, #0\n\
	adds r2, r7, #1\n\
	ldr r3, _0800D2AC\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #8\n\
	adds r1, r0, #0\n\
_0800D284:\n\
	adds r0, r3, #0\n\
	ldrh r5, [r6, #4]\n\
	ands r0, r5\n\
	adds r0, r0, r1\n\
	strh r0, [r6, #4]\n\
	adds r6, #8\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800D284\n\
_0800D296:\n\
	adds r7, r2, #0\n\
	cmp r7, #3\n\
	bls _0800D246\n\
_0800D29C:\n\
	add sp, #0x14\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800D2AC: .4byte 0x00000FFF\n");
}
#endif

void sub_800D2B0(struct Main * main, struct InvestigationStruct * investigation) // tantei_show
{
    struct OamAttrs * oam;
    u32 i;

    switch(main->process[GAME_PROCESS_VAR1])
    {
        case 0:
            if(investigation->selectedActionYOffset < 16)
                investigation->selectedActionYOffset++;
            investigation->lastActionYOffset = 0;
            if (investigation->selectedActionYOffset >= 16)
                main->process[GAME_PROCESS_VAR1]++;
            break;
        case 1:
            if(investigation->inactiveActionButtonY == 0xE0)
            {
                main->process[GAME_PROCESS_VAR1]++;
                BACKUP_PROCESS_PTR(main);
                SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_STATE_INIT, 0, 2, main);
            }
            break;
        case 2:
            if(investigation->inactiveActionButtonY == 0xE0
            && !gScriptContext.textboxState)
            {
                oam = &gOamObjects[49];
                for(i = 0; i < 4; i++)
                {
                    oam->attr0 = 0x40E0;
                    oam->attr1 = i * 60 + 0xC000;
                    oam->attr2 = i * 0x20 + 0x5100;
                    oam++;
                }
                SetInactiveActionButtons(investigation, 0xF);
                investigation->inactiveActionButtonY = 0xE0; // inactiveActionButtonY is already 0xE0 wtf
                investigation->selectedActionYOffset = 0x40;
                investigation->lastActionYOffset = 8;
                investigation->selectedAction = 3;
                investigation->lastAction = 3;
                SET_PROCESS_PTR(INVESTIGATION_PROCESS, 1, 0, 0, main);
            }
            break;
        case 3:
            SetInactiveActionButtons(investigation, 7);
            investigation->actionState = 2;
            investigation->inactiveActionButtonY = 0xE0;
            investigation->selectedActionYOffset = 0x10;
            investigation->lastActionYOffset = 0;
            main->process[GAME_PROCESS_VAR1]++;
            break;
        case 4:
            if(investigation->selectedActionYOffset > 8)
                investigation->selectedActionYOffset--;
            if(investigation->actionState == 0)
            {
                investigation->selectedActionYOffset = 8;
                investigation->lastActionYOffset = 0;
                investigation->inactiveActions += 1 << investigation->selectedAction;
                SET_PROCESS_PTR(INVESTIGATION_PROCESS, 1, 0, 0, main);
            }
            break;
    }
}

void sub_800D3C8(struct InvestigationStruct * investigation)
{
    struct OamAttrs * oam = &gOamObjects[49];
    u32 i;
    u32 y;

    switch(investigation->actionState)
    {
        case 0:
            for(i = 0; i < 4; i++)
            {
                if(investigation->selectedAction == i)
                {
                    oam->attr0 = 0x4000;
                    y = investigation->selectedActionYOffset + 240;
                    y &= 0xFF;
                    oam->attr0 += y; 
                    oam->attr2 = i * 0x20 + 0x6500;
                }
                else if(investigation->lastAction == i)
                {
                    oam->attr0 &= ~0xFF;
                    oam->attr0 |= investigation->inactiveActionButtonY;
                    oam->attr0 += investigation->lastActionYOffset;
                    oam->attr2 = i * 0x20 + 0x5500;
                }
                else if((investigation->inactiveActions >> i) & 1)
                {
                    oam->attr0 &= ~0xFF;
                    oam->attr0 |= investigation->inactiveActionButtonY;
                    oam->attr2 = i * 0x20 + 0x5500;
                }
                else
                {
                    oam->attr2 = i * 0x20 + 0x5500;
                }
                oam++;
            }
            return;
        case 1:
            i = investigation->selectedAction; // ! variable re(ab)use
            oam += i;
            oam->attr2 = 0x6500 + i * 0x20;
            investigation->inactiveActionButtonY = 0xE0;
            investigation->actionState++;
            break;
        case 2:
            investigation->inactiveActionButtonY += 2;
            if(investigation->inactiveActionButtonY >= 0xF0)
            {
                investigation->inactiveActionButtonY = 0xF0;
                investigation->actionState = 0;
            }
            break;
        case 3:
            investigation->inactiveActionButtonY -= 2;
            if(investigation->inactiveActionButtonY <= 0xE0)
            {
                investigation->inactiveActionButtonY = 0xE0;
                investigation->actionState = 4;
            }
        case 4:
            break;
    }
    i = gMain.roomData[gMain.currentRoomId][0]; //! re(ab)use
    if(i != gMain.currentBG)
        investigation->selectedActionYOffset = 0x40;
    for(i = 0; i < 4; i++)
    {
        if(investigation->inactiveActions >> i & 1)
        {
            oam->attr0 &= 0xFF00;
            oam->attr0 |= investigation->inactiveActionButtonY;
        }
        else if(investigation->selectedAction == i)
        {
            oam->attr0 &= 0xFF00;
            y = 0x100 - investigation->selectedActionYOffset;
            y &= 0xFF;
            oam->attr0 += y;
        }
        oam++;
    }
}

void sub_800D530(struct Main * main, u32 show)
{
    struct OamAttrs * oam = &gOamObjects[53];
    u32 r6 = 0; // ! UNUSED, This is present in the assembly for this function somehow
    oam->attr0 = SPRITE_ATTR0_CLEAR;
    if(show && gScriptContext.textboxState == 1 
    && GetBGControlBits(main->currentBG) & (BG_MODE_SIZE_480x160 | BG_MODE_SIZE_360x160))
    {
        if(gMain.Bg256_pos_x == 0) // ! inconsistent use of global vs pointer
        {
            oam->attr0 = 0x4020;
            oam->attr1 = 0x80D0;
            oam->attr2 = 0x7188;
        }
        else if(main->Bg256_pos_x == 240 || main->Bg256_pos_x == 120)
        {
            oam->attr0 = 0x4020;
            oam->attr1 = 0x8000;
            oam->attr2 = 0x7180;
        }
    }
}

u32 GetExaminedAreaSection(struct InvestigationStruct * investigation) // finger_pos_check
{
    struct Rect rect;
    u32 animId;
    struct ExaminationData * examData;
    if(investigation->pointerX < 120)
        rect.x = gMain.Bg256_pos_x + investigation->pointerX;
    else
        rect.x = gMain.Bg256_pos_x + investigation->pointerX + 12;
    rect.y = gMain.Bg256_pos_y + investigation->pointerY;
    rect.w = 4;
    rect.h = 16;
    if(GetFlag(0, 0x41) == FALSE)
        return 0x19;
    animId = CheckRectCollisionWithAnim(&rect);
    for(examData = gExaminationData; examData->unk2 != 0xFF; examData++)
    {
        if(examData->unk2 == 0xFE && animId == examData->unk3)
            return examData->examinationSection;
    }
    for(examData = gExaminationData; examData->unk2 != 0xFF; examData++)
    {
        if(examData->unk2 == 0xFE)
            continue;
        if(CheckRectCollisionWithArea(&rect, &examData->area))
            return examData->examinationSection;
    } 
    return 0x18;
}

void LoadLocationChoiceGraphics(void)
{
    u32 i;
    u8 *roomptr = gMain.roomData[gMain.currentRoomId];
    roomptr += 4;
    for(i = 0; i < 4; i++)
    {
        u8 *src;
        void *destination = (void *)VRAM+0x13400;
        destination += i*0x800;
        if(*roomptr != 0xFF)
	    {
            src = gUnknown_081FD96C+*roomptr*0x800;
            DmaCopy16(3, src, destination, 0x800);
        }
        roomptr++;
    }
}

void LoadTalkChoiceGraphics(void)
{
    u32 i;
    struct TalkData *talkdata;
    u8 *icons;
    for(talkdata = gTalkData; talkdata->roomId != 0xFF; talkdata++)
    {
        if(gMain.currentRoomId == talkdata->roomId)
	    {
            if(gAnimation[1].animationInfo.personId == talkdata->personId)
	        {
                if(talkdata->enableFlag == 1)
		            break;
            }
        }
    }
    icons = talkdata->iconId;
    for(i = 0; i < 4; i++)
    {
        void *src;
        void *destination = (void *)VRAM+0x13400;
        destination += i*0x800;
        if(*icons != 0xFF)
	    {
            src = gUnknown_0820816C + *icons*0x800;
            DmaCopy16(3, src, destination, 0x800);
        }
        icons++;
    }
    DmaCopy16(3, gUnknown_08190FC0, (void *)VRAM+0x15400, 0x200);
    DmaCopy16(3, gUnknown_081944E0, (void *)PLTT+0x360, 0x20);
}
