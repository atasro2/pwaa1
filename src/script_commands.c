#include "global.h"
#include "main.h"
#include "animation.h"
#include "script.h"
#include "sound.h"
#include "utils.h"
#include "m4a.h"
#include "ewram.h"
#include "background.h"
#include "investigation.h"
#include "court_record.h"
#include "graphics.h"
#include "constants/bg.h"
#include "constants/script.h"
#include "constants/songs.h"
#include "constants/process.h"
#include "constants/oam_allocations.h"

const u8 gSoundCueTable[] = {
    0, 0, 0, 0, 1, 1, 1, 1,
	0, 0, 0, 0, 0, 0, 0, 1,
	1, 1, 0, 0, 0, 0, 1, 0,
	0, 0, 0, 0, 0, 0, 0, 1,
    0, 0, 0, 0, 0, 0, 1, 1,
	1, 1, 0, 0, 0, 0, 0, 0,
};

u8 * const gCourtScrollGfxPointers[] = {
    gGfxCourtscroll01,
    gGfxCourtscroll02,
    gGfxCourtscroll03,
};

const u8 gTextboxDownArrowTileIndexes[] = {
    0x20, 0x22, 0x24, 0x26, 0x24, 0x22,
};

bool32 CommandDummy(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command00(struct ScriptContext * scriptCtx)
{
    InitScriptSection(scriptCtx);
    SetTextboxNametag(0, FALSE);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command01(struct ScriptContext * scriptCtx)
{
    if(scriptCtx->flags & SCRIPT_FULLSCREEN)
    {
        scriptCtx->fullscreenTextX = 0;
        scriptCtx->fullscreenTextY++;
    }
    else
    {
        scriptCtx->textX = 0;
        scriptCtx->textY++;
    }
    
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command02(struct ScriptContext * scriptCtx)
{
    u32 i;
    u32 temp;

    if(scriptCtx->flags & 0x20)
    {
        if(scriptCtx->personAnimPauseCounter != 0)
        {
            scriptCtx->personAnimPauseCounter--;
            return 1;
        }
        else
        {
            scriptCtx->flags &= ~0x20;
            scriptCtx->scriptPtr++; 
            if(scriptCtx->currentToken == 0xA) // if script cmd is 0xA
                scriptCtx->scriptPtr++;
            return 1;
        }
    }
    if(gMain.process[GAME_PROCESS] >= COURT_PROCESS && gMain.process[GAME_PROCESS] <= QUESTIONING_PROCESS)
    {
        if(scriptCtx->flags & 1)
            if(gJoypad.pressedKeys & A_BUTTON)
                scriptCtx->flags |= 2;
        if(scriptCtx->paragraphSkipDelayCounter > 0)
            scriptCtx->paragraphSkipDelayCounter--;
        if(gJoypad.heldKeys & B_BUTTON && scriptCtx->textSkip != 0 && scriptCtx->paragraphSkipDelayCounter == 0)
            scriptCtx->flags |= 2;
    }
    if(scriptCtx->flags & 2)
    {
        PlaySE(SE005_TEXT_ADVANCE);
        gBG1MapBuffer[622] = 9;
        gBG1MapBuffer[623] = 9;
        scriptCtx->flags &= ~(2 | 1);
        if(scriptCtx->textSkip > 0)
        {
            scriptCtx->textSpeed = 3;
            scriptCtx->textSkip = 1;
        }
        scriptCtx->paragraphSkipDelayCounter = 8;
        if(scriptCtx->currentToken == 7)
        {
            scriptCtx->scriptPtr++;
            DmaCopy16(3, &gCharSet[226*0x80], OBJ_VRAM0 + 0x1F80, 0x80);
            scriptCtx->fullscreenCursorPos = 0;
            scriptCtx->flags |= SCRIPT_FULLSCREEN;
            scriptCtx->prevTextSpeed = scriptCtx->textSpeed;
            scriptCtx->textSpeed = 0;
            scriptCtx->fullscreenInputDelayCounter = 0x18;
            scriptCtx->textYOffset = 0x14;
            scriptCtx->textX = 0;
            scriptCtx->textY = 2;
            scriptCtx->fullscreenCharCount = 0;
            scriptCtx->fullscreenTextY = 2;
            scriptCtx->fullscreenTextX = 0;
            gMain.showTextboxCharacters = FALSE;
            SetTextboxSize(1);
            for (i = 0; i < ARRAY_COUNT(gMapMarker); i++)
            {
                gMapMarker[i].id |= 0xFF;
            }
            return 0;
        }
        scriptCtx->personAnimPauseCounter = 10;
        scriptCtx->flags |= 0x20;
        if(scriptCtx->currentToken == 0xA) // if script cmd is 0xA ?
        {
            if(gMain.health > 0)
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+1);
        }
        else
        {
            scriptCtx->textboxDownArrowIndex = 0;
            scriptCtx->textboxDownArrowDelayCounter = 0;
        }
        scriptCtx->textX = 0;
        scriptCtx->textY = 0;
        for (i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
        {
            gTextBoxCharacters[i].state &= ~0x8000;
        }
        if(scriptCtx->currentToken == 0x2)
            SetAnimationFrameOffset(&gAnimation[1], gMain.talkingAnimationOffset);
    }
    else
    {
        if((scriptCtx->flags & 1) == 0)
        {
            SetAnimationFrameOffset(&gAnimation[1], gMain.idleAnimationOffset);
            scriptCtx->flags |= 1;
        }
        if(gMain.process[GAME_PROCESS] != VERDICT_PROCESS)
        {
            scriptCtx->textboxDownArrowDelayCounter++;
            if(scriptCtx->textboxDownArrowDelayCounter > 1)
            {
                scriptCtx->textboxDownArrowDelayCounter = 0;
                if(scriptCtx->textboxDownArrowIndex == 0 && gMain.process[GAME_PROCESS] == COURT_RECORD_PROCESS)
                {
                    scriptCtx->textboxDownArrowIndex = 0;
                }
                else
                {
                    scriptCtx->textboxDownArrowIndex++;
                    if(scriptCtx->textboxDownArrowIndex > 5)
                    {
                        scriptCtx->textboxDownArrowIndex = 0;
                    }
                }
            }
            gBG1MapBuffer[622] = gTextboxDownArrowTileIndexes[scriptCtx->textboxDownArrowIndex];
            gBG1MapBuffer[623] = gTextboxDownArrowTileIndexes[scriptCtx->textboxDownArrowIndex]+1;
            return 1;
        }
        scriptCtx->textboxDownArrowIndex = 0;
        scriptCtx->textboxDownArrowDelayCounter = 0;
        gBG1MapBuffer[622] = 9;
        gBG1MapBuffer[623] = 9;
    }
    return 1;
}

bool32 Command03(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->textColor = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command04(struct ScriptContext * scriptCtx)
{

    if(gJoypad.pressedKeys & scriptCtx->scriptPtr[1]) 
        scriptCtx->scriptPtr+=2;
    return 1;
}

bool32 Command05(struct ScriptContext * scriptCtx)
{
    u16 bgmNum;
    scriptCtx->scriptPtr++;
    bgmNum = *scriptCtx->scriptPtr; 
    scriptCtx->scriptPtr++;
    FadeInBGM(*scriptCtx->scriptPtr, bgmNum);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command06(struct ScriptContext * scriptCtx)
{
    u32 soundNum;
    u32 flag;
    scriptCtx->scriptPtr++;
    soundNum = *scriptCtx->scriptPtr >> 8;
    flag = *scriptCtx->scriptPtr & 1;
    if(flag)
    {
        PlaySE(soundNum);
    }
    else
    {
        m4aSongNumStop(soundNum);
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command08(struct ScriptContext * scriptCtx)
{
    u32 i;
    u8 process;
    if(scriptCtx->flags & 0x20)
    {
        if(scriptCtx->personAnimPauseCounter > 0)
        {
            scriptCtx->personAnimPauseCounter--;
            return TRUE;
        }
        scriptCtx->flags &= ~0x20;
        scriptCtx->scriptPtr += 3;
        return TRUE;
    }
    if(gMain.process[GAME_PROCESS] == COURT_RECORD_PROCESS)
    {
        gOamObjects[OAM_IDX_POINTER].attr0 = SPRITE_ATTR0_CLEAR;
        return TRUE;
    }
    if(scriptCtx->fullscreenInputDelayCounter > 0)
    {
        scriptCtx->fullscreenInputDelayCounter--;
        return TRUE;
    }

#if REVISION == 1
    if(gMain.process[GAME_PROCESS] >= COURT_PROCESS && gMain.process[GAME_PROCESS] <= QUESTIONING_PROCESS)
#endif
    {
        if(gJoypad.pressedKeys & DPAD_UP)
        {
            PlaySE(SE000_MENU_CHANGE);
            scriptCtx->fullscreenCursorPos--;
            if(scriptCtx->fullscreenCursorPos > 1)
            {
                scriptCtx->fullscreenCursorPos = 1;
            }
        }
        else if(gJoypad.pressedKeys & DPAD_DOWN)
        {
            PlaySE(SE000_MENU_CHANGE);
            scriptCtx->fullscreenCursorPos++;
            if(scriptCtx->fullscreenCursorPos > 1)
            {
                scriptCtx->fullscreenCursorPos = 0;
            }
        }
        else if(gJoypad.pressedKeys & A_BUTTON)
        {
            PlaySE(SE001_MENU_CONFIRM);
            scriptCtx->personAnimPauseCounter = 10;
            scriptCtx->flags |= 0x20;
            if(scriptCtx->fullscreenCursorPos == 0)
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+1);
            else
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+2);
            scriptCtx->textX = 0;
            scriptCtx->textY = 0;
            scriptCtx->flags &= ~SCRIPT_FULLSCREEN;
            scriptCtx->textYOffset = 0x74;
            scriptCtx->textSpeed = scriptCtx->prevTextSpeed;
            scriptCtx->textboxNameId = 0;
            SetTextboxSize(0);
            for(i = 0; i < 32; i++)
                gTextBoxCharacters[i].state &= ~0x8000;
            for(i = 57; i < 88; i++)
                gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
            gOamObjects[OAM_IDX_POINTER].attr0 = SPRITE_ATTR0_CLEAR;
            return FALSE;
        }
    }
    gOamObjects[OAM_IDX_POINTER].attr0 = SPRITE_ATTR0(scriptCtx->fullscreenCursorPos*20 + scriptCtx->fullscreenTextYOffset, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[OAM_IDX_POINTER].attr1 = SPRITE_ATTR1_NONAFFINE(scriptCtx->fullscreenTextXOffset-13, FALSE, FALSE, 1);
    gOamObjects[OAM_IDX_POINTER].attr2 = SPRITE_ATTR2(0xFC, 1, 0);
    return TRUE;
}

bool32 Command09(struct ScriptContext * scriptCtx)
{
    u32 i;
    u8 process;
    if(scriptCtx->flags & 0x20)
    {
        if(scriptCtx->personAnimPauseCounter > 0)
        {
            scriptCtx->personAnimPauseCounter--;
            return TRUE;
        }
        scriptCtx->flags &= ~0x20;
        scriptCtx->scriptPtr += 4;
        return TRUE;
    }
    if(gMain.process[GAME_PROCESS] == COURT_RECORD_PROCESS)
    {
        gOamObjects[OAM_IDX_POINTER].attr0 = SPRITE_ATTR0_CLEAR;
        return TRUE;
    }
    if(scriptCtx->fullscreenInputDelayCounter > 0)
    {
        scriptCtx->fullscreenInputDelayCounter--;
        return TRUE;
    }
    
#if REVISION == 1
    if(gMain.process[GAME_PROCESS] >= COURT_PROCESS && gMain.process[GAME_PROCESS] <= QUESTIONING_PROCESS)
#endif
    {
        if(gJoypad.pressedKeys & DPAD_UP)
        {
            PlaySE(SE000_MENU_CHANGE);
            scriptCtx->fullscreenCursorPos--;
            if(scriptCtx->fullscreenCursorPos > 2)
            {
                scriptCtx->fullscreenCursorPos = 2;
            }
        }
        else if(gJoypad.pressedKeys & DPAD_DOWN)
        {
            PlaySE(SE000_MENU_CHANGE);
            scriptCtx->fullscreenCursorPos++;
            if(scriptCtx->fullscreenCursorPos > 2)
            {
                scriptCtx->fullscreenCursorPos = 0;
            }
        }
        else if(gJoypad.pressedKeys & A_BUTTON)
        {
            PlaySE(SE001_MENU_CONFIRM);
            scriptCtx->personAnimPauseCounter = 10;
            scriptCtx->flags |= 0x20;
            if(scriptCtx->fullscreenCursorPos == 0)
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+1);
            else if (scriptCtx->fullscreenCursorPos == 1)
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+2);
            else
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+3);
            scriptCtx->textX = 0;
            scriptCtx->textY = 0;
            scriptCtx->flags &= ~SCRIPT_FULLSCREEN;
            scriptCtx->textYOffset = 0x74;
            scriptCtx->textSpeed = scriptCtx->prevTextSpeed;
            scriptCtx->textboxNameId = 0;
            SetTextboxSize(0);
            for(i = 0; i < 32; i++)
                gTextBoxCharacters[i].state &= ~0x8000;
            for(i = 57; i < 88; i++)
                gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
            gOamObjects[OAM_IDX_POINTER].attr0 = SPRITE_ATTR0_CLEAR;
            return FALSE;
        }
    }
    gOamObjects[OAM_IDX_POINTER].attr0 = SPRITE_ATTR0(scriptCtx->fullscreenCursorPos*20 + scriptCtx->fullscreenTextYOffset, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[OAM_IDX_POINTER].attr1 = SPRITE_ATTR1_NONAFFINE(scriptCtx->fullscreenTextXOffset-13, FALSE, FALSE, 1);
    gOamObjects[OAM_IDX_POINTER].attr2 = SPRITE_ATTR2(0xFC, 1, 0);
    return TRUE;
}

bool32 Command0B(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->textSpeed = *scriptCtx->scriptPtr;
    if(scriptCtx->textSpeed == 0xFF)
    {
        scriptCtx->textSpeed = 3;
    }
    if(scriptCtx->textSkip > 1)
    {
        scriptCtx->textSpeed = 0;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command0C(struct ScriptContext * scriptCtx)
{
    if(!gMain.blendMode != 0 && scriptCtx->textSkip > 1)
    {
        scriptCtx->scriptPtr++;
        scriptCtx->waitTimer = *scriptCtx->scriptPtr;
        scriptCtx->scriptPtr++;
        return 0;      
    }
    if(scriptCtx->waitTimer > 0)
    {
        scriptCtx->waitTimer--;
        if(scriptCtx->waitTimer != 0) 
            return 1;   
        scriptCtx->scriptPtr += 2;
        return 0;        
    }
    scriptCtx->scriptPtr++;
    scriptCtx->waitTimer = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr--;
    return 1;
}

bool32 Command0D(struct ScriptContext * scriptCtx)
{
    scriptCtx->previousSection = scriptCtx->currentSection;
    scriptCtx->currentSection = scriptCtx->nextSection;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command0E(struct ScriptContext * scriptCtx)
{
    u8 soundCue;
    scriptCtx->scriptPtr++;
    scriptCtx->textboxNameId = (*scriptCtx->scriptPtr >> 8);
    scriptCtx->textboxNameId &= ~0x80; // side bit
    SetTextboxNametag(scriptCtx->textboxNameId, *scriptCtx->scriptPtr & 0xFF);
    soundCue = gSoundCueTable[scriptCtx->textboxNameId];
    scriptCtx->currentSoundCue = soundCue;
    if(soundCue == 2)
        scriptCtx->soundCueSkip = 0;
    if(*scriptCtx->scriptPtr & 0xFF)
    {
        scriptCtx->textboxNameId |= 0x80;
    }
    else
    {
        scriptCtx->textboxNameId &= ~0x80;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command0F(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->holdItSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    scriptCtx->holdItFlag = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command10(struct ScriptContext * scriptCtx)
{
    u32 flagType;
    u32 id;
    bool32 setFlag;
    scriptCtx->scriptPtr++;
    flagType = id = (setFlag = *scriptCtx->scriptPtr);
    scriptCtx->scriptPtr++;
    flagType = (flagType & 0x7F00) >> 8;
    id &= 0xFF;
    setFlag >>= 15;
    ChangeFlag(flagType, id, setFlag);
    return 0;
}

bool32 Command11(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    PlaySE(SE007_MENU_OPEN_SUBMENU);
    scriptCtx->flags |= 0x10;
    gMain.gameStateFlags |= 0x100;
    BACKUP_PROCESS();
    SET_PROCESS(COURT_RECORD_PROCESS, RECORD_INIT, 0, 1);
    return 0;
}

bool32 Command12(struct ScriptContext * scriptCtx)
{
    u32 var0;
    u32 var1;
    u32 var2;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    StartHardwareBlend(var0 >> 8, var0 & 0xFF, var1, *scriptCtx->scriptPtr);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command13(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.itemPlateState = 3;
    gMain.itemPlateEvidenceId = *scriptCtx->scriptPtr;
    gMain.itemPlateSide = *scriptCtx->scriptPtr >> 8;
    scriptCtx->scriptPtr++;
    PlaySE(SE009_DISPLAY_EVIDENCE);
    return 0;
}

bool32 Command14(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.itemPlateState = 1;
    PlaySE(SE009_DISPLAY_EVIDENCE);
    return 0;
} 

bool32 Command15(struct ScriptContext * scriptCtx)
{
    if(scriptCtx->flags & SCRIPT_LOOP)
    {
        return 1;
    }
    if(*scriptCtx->scriptPtr == 0x15)
    {
        SetAnimationFrameOffset(&gAnimation[1], gMain.idleAnimationOffset);
    }
    scriptCtx->flags |= SCRIPT_LOOP;
    return 1;
}

bool32 Command16(struct ScriptContext * scriptCtx)
{
    struct Main *main = &gMain;
    scriptCtx->scriptPtr++;
    main->advanceScriptContext = FALSE;
    main->showTextboxCharacters = FALSE;
    SET_PROCESS(COURT_PROCESS, COURT_EXIT, 0, 0);
    gInvestigation.selectedAction = 0;
    gInvestigation.lastAction = 0;
    main->scenarioIdx++;
    PlayBGM(BGM016_JINGLE_SAVE);
    return 1;
}

bool32 Command17(struct ScriptContext * scriptCtx)
{
    u16 evidenceId;
    u16 isProfile;
    s32 evidenceSlot;
    scriptCtx->scriptPtr++;
    evidenceId = *scriptCtx->scriptPtr & 0x3FFF;
    isProfile = *scriptCtx->scriptPtr & 0x8000;
    evidenceSlot = FindEvidenceInCourtRecord(isProfile, evidenceId);
    if(evidenceSlot < 0)
    {
        evidenceSlot = FindFirstEmptySlotInCourtRecord(isProfile);
        if(evidenceSlot >= 0)
        {
            if(isProfile)
            {
                gCourtRecord.profileList[evidenceSlot] = evidenceId;
                gCourtRecord.profileCount++;
            }
            else
            {
                gCourtRecord.evidenceList[evidenceSlot] = evidenceId;
                gCourtRecord.evidenceCount++;
            }
            
            if(*scriptCtx->scriptPtr & 0x4000) // should play animation for getting evidence
            {
                gMain.gottenEvidenceType = isProfile;
                gMain.gottenEvidenceId = evidenceId;
                BACKUP_PROCESS();
                SET_PROCESS(EVIDENCE_ADDED_PROCESS, EVIDENCE_ADD_INIT, 0, 0);
            }
            
        }
    }
    scriptCtx->scriptPtr++;
    return 1;
}

bool32 Command18(struct ScriptContext * scriptCtx)
{
    u16 evidenceId;
    u16 isProfile;
    s32 evidenceSlot;
    scriptCtx->scriptPtr++;
    evidenceId = *scriptCtx->scriptPtr & 0x3FFF;
    isProfile = *scriptCtx->scriptPtr & 0x8000;
    evidenceSlot = FindEvidenceInCourtRecord(isProfile, evidenceId);
    if(evidenceSlot >= 0)
    {
        if(isProfile)
        {
            gCourtRecord.profileList[evidenceSlot] = 0xFF;
        }
        else
        {
            gCourtRecord.evidenceList[evidenceSlot] = 0xFF;
        }
        SortCourtRecordAndSyncListCount(&gCourtRecord);
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command19(struct ScriptContext * scriptCtx)
{
    u16 evidenceId;
    u16 isProfile;
    s32 evidenceSlot;
    scriptCtx->scriptPtr++;
    evidenceId = *scriptCtx->scriptPtr & 0x3FFF;
    isProfile = *scriptCtx->scriptPtr & 0x8000;
    scriptCtx->scriptPtr++;
    evidenceSlot = FindEvidenceInCourtRecord(isProfile, evidenceId);
    if(evidenceSlot >= 0)
    {
        evidenceId = *scriptCtx->scriptPtr & 0x3FFF;
        if(isProfile)
        {
            gCourtRecord.profileList[evidenceSlot] = evidenceId;
        }
        else
        {
            gCourtRecord.evidenceList[evidenceSlot] = evidenceId;
        }
        if(*scriptCtx->scriptPtr & 0x4000) // should play animation for getting evidence
        {
            gMain.gottenEvidenceType = isProfile;
            gMain.gottenEvidenceId = evidenceId;
            BACKUP_PROCESS();
            SET_PROCESS(EVIDENCE_ADDED_PROCESS, EVIDENCE_ADD_INIT, 0, 0);
        }
    }
    scriptCtx->scriptPtr++;
    return 0;
}

u32 Command1A(struct ScriptContext * scriptCtx)
{
    u32 var0;
    u32 var1;
    u32 var2;
    u32 var3;

    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var2 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    
    SetCourtScrollPersonAnim(var0, var1, var2, *scriptCtx->scriptPtr);
    var0 = (u32)gCourtScrollGfxPointers[var0];
    var2 = var1 & 1 ? 30 : 0;
    InitCourtScroll((u8 *)var0, var2, 31, var1);
    scriptCtx->scriptPtr++;
    return 0;
}

u32 Command1B(struct ScriptContext * scriptCtx) // ! probably fakematch
{
    scriptCtx->scriptPtr++;
    if(gMain.currentBG != *scriptCtx->scriptPtr)
    {
        changeBG:
        gMain.previousBG = gMain.currentBG;
        gMain.currentBG = *scriptCtx->scriptPtr;
        gMain.currentBgStripe = 1;
        scriptCtx->scriptPtr++;
        return 1;
    }
    if(gMain.currentBG != 0x42)
    {
        scriptCtx->scriptPtr++;
        return 0;
    }
    else
    {
        goto changeBG;
    }
}

u32 Command1C(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    switch(*scriptCtx->scriptPtr)
    {
        case 0: // enable textbox
            gMain.showTextboxCharacters = TRUE;
            gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
            gIORegisters.lcd_bg1vofs = 0;
            break;
        case 1: // disable textbox
            gMain.showTextboxCharacters = FALSE;
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            gIORegisters.lcd_bg1vofs = 0;
            break;
        case 2:
            if(gMain.process[GAME_PROCESS] == COURT_PROCESS)
            {
                DestroyAnimation(&gAnimation[1]);
                gInvestigation.personActive = 0;
                SetInactiveActionButtons(&gInvestigation, 15);
            }
            SlideTextbox(1);
            break;
        case 3:
            if(gMain.process[GAME_PROCESS] == COURT_PROCESS)
            {
                DestroyAnimation(&gAnimation[1]);
                gInvestigation.personActive = 0;
                SetInactiveActionButtons(&gInvestigation, 15);
            }
            SlideTextbox(0);
            if(gMain.process[GAME_PROCESS] == INVESTIGATION_PROCESS)
            {
                gInvestigation.selectedActionYOffset = 0;
                if(gMain.process[GAME_PROCESS_STATE] == INVESTIGATION_INSPECT)
                {
                    SetInactiveActionButtons(&gInvestigation, 1);
                }
                if(gMain.process[GAME_PROCESS_STATE] == INVESTIGATION_TALK)
                {
                    SetInactiveActionButtons(&gInvestigation, 4);
                    gInvestigation.actionState = 4;
                    gInvestigation.inactiveActionButtonY = 0xE0;
                }
                if(gMain.process[GAME_PROCESS_STATE] == INVESTIGATION_PRESENT)
                {
                    SetInactiveActionButtons(&gInvestigation, 8);
                }
            }
            break;
        default:
            break;
    }
    scriptCtx->scriptPtr++;
    gInvestigation.inspectionPaused = FALSE;
    return 0;
}

u32 Command1D(struct ScriptContext * scriptCtx)
{
    u32 bits;
    u32 var1;
    scriptCtx->scriptPtr++;
    bits = GetBGControlBits(gMain.currentBG);
    if(bits & BG_MODE_SIZE_MASK)
        gMain.isBGScrolling = 1;
    else
        gMain.isBGScrolling = 0;
    var1 = *scriptCtx->scriptPtr;
    switch(var1 >> 8)
    {
        case BG_SHIFT_LEFT:
            gMain.horizontolBGScrollSpeed = -(u8)var1;
            break;
        case BG_SHIFT_RIGHT:
            gMain.horizontolBGScrollSpeed = (u8)var1;
            break;
        case BG_SHIFT_UP:
            gMain.verticalBGScrollSpeed = -(u8)var1;
            break;
        case BG_SHIFT_DOWN:
            gMain.verticalBGScrollSpeed = (u8)var1;
            break;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

u32 Command1E(struct ScriptContext * scriptCtx)
{
    u32 var0;
    u32 var1;
    u32 var2;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    gMain.talkingAnimationOffset = var1;
    scriptCtx->scriptPtr++;
    var2 = *scriptCtx->scriptPtr;
    gMain.idleAnimationOffset = var2;
    scriptCtx->scriptPtr++;
    if(var0 != 0)
    {
        PlayPersonAnimation(var0, 0, var1, 0);
        gInvestigation.personActive = 1;
        SetInactiveActionButtons(&gInvestigation, 15);
    }
    else
    {
        DestroyAnimation(&gAnimation[1]);
        gInvestigation.personActive = 0;
        SetInactiveActionButtons(&gInvestigation, 15);
    }
    return 0;
}

u32 Command1F(struct ScriptContext * scriptCtx)
{
    u32 i;
    u16 * tilemapBuffer;
    scriptCtx->scriptPtr++;
    gIORegisters.lcd_dispcnt &= ~DISPCNT_BG2_ON;
    tilemapBuffer = gBG2MapBuffer;
    for(i = 0; i < 0x2A0; i++, tilemapBuffer++)
       *tilemapBuffer = 0;
    gIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP; // TODO: add TXT/AFF macro once known which one is used
    scriptCtx->flags &= ~0x40;
    return 0;
}
