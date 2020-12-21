#include "global.h"
#include "main.h"
#include "animation.h"
#include "script.h"
#include "sound_control.h"
#include "m4a.h"
#include "constants/bg.h"
#include "ewram.h"
#include "background.h"

bool32 CommandDummy(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command00(struct ScriptContext * scriptCtx)
{
    InitScriptSection(scriptCtx);
    sub_80028B4(0, FALSE);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command01(struct ScriptContext * scriptCtx)
{
    if(scriptCtx->unk0 & 4)
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

    if(scriptCtx->unk0 & 0x20)
    {
        if(scriptCtx->unk32 != 0)
        {
            scriptCtx->unk32--;
            return 1;
        }
        else
        {
            scriptCtx->unk0 &= ~0x20;
            scriptCtx->scriptPtr++; 
            if(scriptCtx->currentToken == 0xA) // if script cmd is 0xA
                scriptCtx->scriptPtr++;
            return 1;
        }
    }
    if(gMain.process[GAME_PROCESS] >= 3 && gMain.process[GAME_PROCESS] <= 6)
    {
        if(scriptCtx->unk0 & 1)
            if(gJoypad.pressedKeysRaw & A_BUTTON)
                scriptCtx->unk0 |= 2;
        if(scriptCtx->unk14 > 0)
            scriptCtx->unk14--;
        if(gJoypad.heldKeysRaw & B_BUTTON && scriptCtx->unk13 != 0 && scriptCtx->unk14 == 0)
            scriptCtx->unk0 |= 2;
    }
    if(scriptCtx->unk0 & 2)
    {
        PlaySE(47);
        gBG1MapBuffer[622] = 9;
        gBG1MapBuffer[623] = 9;
        scriptCtx->unk0 &= ~3;
        if(scriptCtx->unk13 > 0)
        {
            scriptCtx->textSpeed = 3;
            scriptCtx->unk13 = 1;
        }
        scriptCtx->unk14 = 8;
        if(scriptCtx->currentToken == 7)
        {
            scriptCtx->scriptPtr++;
            DmaCopy16(3, gCharSet[226], OBJ_VRAM0 + 0x1F80, sizeof(gCharSet[0]));
            scriptCtx->unk39 = 0;
            scriptCtx->unk0 |= 4;
            scriptCtx->unk26 = scriptCtx->textSpeed;
            scriptCtx->textSpeed = 0;
            scriptCtx->unk35 = 0x18;
            scriptCtx->textYOffset = 0x14;
            scriptCtx->textX = 0;
            scriptCtx->textY = 2;
            scriptCtx->fullscreenCharCount = 0;
            scriptCtx->fullscreenTextY = 2;
            scriptCtx->fullscreenTextX = 0;
            gMain.showTextboxCharacters = FALSE;
            sub_8002244(1);
            for (i = 0; i < ARRAY_COUNT(gMapMarker); i++)
            {
                gMapMarker[i].id |= 0xFF;
            }
            return 0;
        }
        scriptCtx->unk32 = 0xA;
        scriptCtx->unk0 |= 0x20;
        if(scriptCtx->currentToken == 0xA) // if script cmd is 0xA ?
        {
            if(gMain.health > 0)
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+1);
        }
        else
        {
            scriptCtx->unk36 = 0;
            scriptCtx->unk37 = 0;
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
        if((scriptCtx->unk0 & 1) == 0)
        {
            SetAnimationFrameOffset(&gAnimation[1], gMain.idleAnimationOffset);
            scriptCtx->unk0 |= 1;
        }
        if(gMain.process[GAME_PROCESS] != 9)
        {
            scriptCtx->unk37++;
            if(scriptCtx->unk37 > 1)
            {
                scriptCtx->unk37 = 0;
                if(scriptCtx->unk36 == 0 && gMain.process[GAME_PROCESS] == 7)
                {
                    scriptCtx->unk36 = scriptCtx->unk37;
                }
                else
                {
                    scriptCtx->unk36++;
                    if(scriptCtx->unk36 > 5)
                    {
                        scriptCtx->unk36 = 0;
                    }
                }
            }
            gBG1MapBuffer[622] = gTextboxDownArrowTileIndexes[scriptCtx->unk36];
            gBG1MapBuffer[623] = gTextboxDownArrowTileIndexes[scriptCtx->unk36]+1;
            return 1;
        }
        scriptCtx->unk36 = 0;
        scriptCtx->unk37 = 0;
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

    if(gJoypad.pressedKeysRaw & scriptCtx->scriptPtr[1]) 
        scriptCtx->scriptPtr+=2;
    return 1;
}

bool32 Command05(struct ScriptContext * scriptCtx)
{
    u16 bgmNum;
    scriptCtx->scriptPtr++;
    bgmNum = *scriptCtx->scriptPtr; 
    scriptCtx->scriptPtr++;
    PlayBGM(*scriptCtx->scriptPtr, bgmNum);
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
    if(scriptCtx->unk0 & 0x20)
    {
        if(scriptCtx->unk32 > 0)
        {
            scriptCtx->unk32--;
            return TRUE;
        }
        scriptCtx->unk0 &= ~0x20;
        scriptCtx->scriptPtr += 3;
        return TRUE;
    }
    if(gMain.process[GAME_PROCESS] == 7)
    {
        gOamObjects[88].attr0 = SPRITE_ATTR0_CLEAR;
        return TRUE;
    }
    if(scriptCtx->unk35 > 0)
    {
        scriptCtx->unk35--;
        return TRUE;
    }

#if REVISION == 1
    if(gMain.process[GAME_PROCESS] > 2 && gMain.process[GAME_PROCESS] < 7)
#endif
    {
        if(gJoypad.pressedKeysRaw & DPAD_UP)
        {
            PlaySE(0x2A);
            scriptCtx->unk39--;
            if(scriptCtx->unk39 > 1)
            {
                scriptCtx->unk39 = 1;
            }
        }
        else if(gJoypad.pressedKeysRaw & DPAD_DOWN)
        {
            PlaySE(0x2A);
            scriptCtx->unk39++;
            if(scriptCtx->unk39 > 1)
            {
                scriptCtx->unk39 = 0;
            }
        }
        else if(gJoypad.pressedKeysRaw & A_BUTTON)
        {
            PlaySE(0x2B);
            scriptCtx->unk32 = 10;
            scriptCtx->unk0 |= 0x20;
            if(scriptCtx->unk39 == 0)
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+1);
            else
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+2);
            scriptCtx->textX = 0;
            scriptCtx->textY = 0;
            scriptCtx->unk0 &= ~0x4;
            scriptCtx->textYOffset = 0x74;
            scriptCtx->textSpeed = scriptCtx->unk26;
            scriptCtx->textboxNameId = 0;
            sub_8002244(0);
            for(i = 0; i < 32; i++)
                gTextBoxCharacters[i].state &= ~0x8000;
            for(i = 57; i < 88; i++)
                gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
            gOamObjects[88].attr0 = SPRITE_ATTR0_CLEAR;
            return FALSE;
        }
    }
    gOamObjects[88].attr0 = SPRITE_ATTR0(scriptCtx->unk39*20 + scriptCtx->unk2A, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[88].attr1 = SPRITE_ATTR1_NONAFFINE(scriptCtx->unk28-13, FALSE, FALSE, 1);
    gOamObjects[88].attr2 = SPRITE_ATTR2(0xFC, 1, 0);
    return TRUE;
}

bool32 Command09(struct ScriptContext * scriptCtx)
{
    u32 i;
    u8 process;
    if(scriptCtx->unk0 & 0x20)
    {
        if(scriptCtx->unk32 > 0)
        {
            scriptCtx->unk32--;
            return TRUE;
        }
        scriptCtx->unk0 &= ~0x20;
        scriptCtx->scriptPtr += 4;
        return TRUE;
    }
    if(gMain.process[GAME_PROCESS] == 7)
    {
        gOamObjects[88].attr0 = SPRITE_ATTR0_CLEAR;
        return TRUE;
    }
    if(scriptCtx->unk35 > 0)
    {
        scriptCtx->unk35--;
        return TRUE;
    }
    
#if REVISION == 1
    if(gMain.process[GAME_PROCESS] > 2 && gMain.process[GAME_PROCESS] < 7)
#endif
    {
        if(gJoypad.pressedKeysRaw & DPAD_UP)
        {
            PlaySE(0x2A);
            scriptCtx->unk39--;
            if(scriptCtx->unk39 > 2)
            {
                scriptCtx->unk39 = 2;
            }
        }
        else if(gJoypad.pressedKeysRaw & DPAD_DOWN)
        {
            PlaySE(0x2A);
            scriptCtx->unk39++;
            if(scriptCtx->unk39 > 2)
            {
                scriptCtx->unk39 = 0;
            }
        }
        else if(gJoypad.pressedKeysRaw & A_BUTTON)
        {
            PlaySE(0x2B);
            scriptCtx->unk32 = 10;
            scriptCtx->unk0 |= 0x20;
            if(scriptCtx->unk39 == 0)
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+1);
            else if (scriptCtx->unk39 == 1)
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+2);
            else
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+3);
            scriptCtx->textX = 0;
            scriptCtx->textY = 0;
            scriptCtx->unk0 &= ~0x4;
            scriptCtx->textYOffset = 0x74;
            scriptCtx->textSpeed = scriptCtx->unk26;
            scriptCtx->textboxNameId = 0;
            sub_8002244(0);
            for(i = 0; i < 32; i++)
                gTextBoxCharacters[i].state &= ~0x8000;
            for(i = 57; i < 88; i++)
                gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
            gOamObjects[88].attr0 = SPRITE_ATTR0_CLEAR;
            return FALSE;
        }
    }
    gOamObjects[88].attr0 = SPRITE_ATTR0(scriptCtx->unk39*20 + scriptCtx->unk2A, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[88].attr1 = SPRITE_ATTR1_NONAFFINE(scriptCtx->unk28-13, FALSE, FALSE, 1);
    gOamObjects[88].attr2 = SPRITE_ATTR2(0xFC, 1, 0);
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
    if(scriptCtx->unk13 > 1)
    {
        scriptCtx->textSpeed = 0;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command0C(struct ScriptContext * scriptCtx)
{
    if(!gMain.blendMode != 0 && scriptCtx->unk13 > 1)
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
    sub_80028B4(scriptCtx->textboxNameId, *scriptCtx->scriptPtr & 0xFF);
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
    PlaySE(49);
    scriptCtx->unk0 |= 0x10;
    gMain.gameStateFlags |= 0x100;
    BACKUP_PROCESS();
    SET_PROCESS(7, 0, 0, 1);
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
    gMain.unk7D = 3;
    gMain.unk7C = *scriptCtx->scriptPtr;
    gMain.unk7E = *scriptCtx->scriptPtr >> 8;
    scriptCtx->scriptPtr++;
    PlaySE(51);
    return 0;
}

bool32 Command14(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.unk7D = 1;
    PlaySE(51);
    return 0;
} 

bool32 Command15(struct ScriptContext * scriptCtx)
{
    if(scriptCtx->unk0 & 8)
    {
        return 1;
    }
    if(*scriptCtx->scriptPtr == 0x15)
    {
        SetAnimationFrameOffset(&gAnimation[1], gMain.idleAnimationOffset);
    }
    scriptCtx->unk0 |= 8;
    return 1;
}

bool32 Command16(struct ScriptContext * scriptCtx)
{
    struct Main *main = &gMain;
    scriptCtx->scriptPtr++;
    main->advanceScriptContext = FALSE;
    main->showTextboxCharacters = FALSE;
    SET_PROCESS(3, 2, 0, 0);
    gInvestigation.unkA = 0;
    gInvestigation.unkB = 0;
    main->scenarioIdx++;
    ChangeBGM(16);
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
                gCourtRecord.unk11++;
            }
            else
            {
                gCourtRecord.evidenceList[evidenceSlot] = evidenceId;
                gCourtRecord.unk10++;
            }
            
            if(*scriptCtx->scriptPtr & 0x4000) // should play animation for getting evidence
            {
                gMain.unk26 = isProfile;
                gMain.unk27 = evidenceId;
                BACKUP_PROCESS();
                SET_PROCESS(8, 0, 0, 0);
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
        sub_800ED68(&gCourtRecord);
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
            gMain.unk26 = isProfile;
            gMain.unk27 = evidenceId;
            BACKUP_PROCESS();
            SET_PROCESS(8, 0, 0, 0);
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
    
    sub_8011108(var0, var1, var2, *scriptCtx->scriptPtr);
    var0 = (u32)gCourtScrollGfxPointers[var0];
    var2 = var1 & 1 ? 30 : 0;
    InitCourtScroll((u8 *)var0, var2, 31, var1);
    scriptCtx->scriptPtr++;
    return 0;
}

u32 Command1B(struct ScriptContext * scriptCtx) // probably fakematch
{
    scriptCtx->scriptPtr++;
    if(gMain.currentBG != *scriptCtx->scriptPtr)
    {
        changeBG:
        gMain.previousBG = gMain.currentBG;
        gMain.currentBG = *scriptCtx->scriptPtr;
        gMain.unk2C = 1;
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
            if(gMain.process[GAME_PROCESS] == 3)
            {
                DestroyAnimation(&gAnimation[1]);
                gInvestigation.unk5 = 0;
                sub_800B7A8(&gInvestigation, 15);
            }
            sub_800244C(1);
            break;
        case 3:
            if(gMain.process[GAME_PROCESS] == 3)
            {
                DestroyAnimation(&gAnimation[1]);
                gInvestigation.unk5 = 0;
                sub_800B7A8(&gInvestigation, 15);
            }
            sub_800244C(0);
            if(gMain.process[GAME_PROCESS] == 4)
            {
                gInvestigation.unkE = 0;
                if(gMain.process[GAME_SUBPROCESS] == 6)
                {
                    sub_800B7A8(&gInvestigation, 1);
                }
                if(gMain.process[GAME_SUBPROCESS] == 8)
                {
                    sub_800B7A8(&gInvestigation, 4);
                    gInvestigation.unkC = 4;
                    gInvestigation.unkD = 0xE0;
                }
                if(gMain.process[GAME_SUBPROCESS] == 9)
                {
                    sub_800B7A8(&gInvestigation, 8);
                }
            }
            break;
        default:
            break;
    }
    scriptCtx->scriptPtr++;
    gInvestigation.unk6 = 0;
    return 0;
}

u32 Command1D(struct ScriptContext * scriptCtx)
{
    u32 bits;
    u32 var1;
    scriptCtx->scriptPtr++;
    bits = GetBGControlBits(gMain.currentBG);
    if(bits & 0xF)
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
        gInvestigation.unk5 = 1;
        sub_800B7A8(&gInvestigation, 15);
    }
    else
    {
        DestroyAnimation(&gAnimation[1]);
        gInvestigation.unk5 = 0;
        sub_800B7A8(&gInvestigation, 15);
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
    scriptCtx->unk0 &= ~0x40;
    return 0;
}

u32 Command20(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->nextSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command21(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    PlaySE(0x31);
    scriptCtx->unk0 |= 0x10;
    gMain.gameStateFlags |= 0x300;
    BACKUP_PROCESS();
    SET_PROCESS(7, 0, 0, 1);
    return 0;
}

bool32 Command22(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    // skips a token
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
        FadeOutBGM(*scriptCtx->scriptPtr);
    else
        StopBGM();
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command23(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    // skips a token
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
        UnpauseBGM();
    else
        PauseBGM();
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command24(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.advanceScriptContext = FALSE;
    gMain.showTextboxCharacters = FALSE;
    SET_PROCESS(2, 0, 0, 0);
    return 1;
}

bool32 Command25(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->previousSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command26(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0)
        gMain.gameStateFlags |= 0x10;
    else
        gMain.gameStateFlags &= ~0x10;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command27(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.shakeTimer = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.gameStateFlags |= 1;
    gMain.shakeIntensity = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command28(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
    {
        BACKUP_PROCESS();
        SET_PROCESS(5, 0, 0, 0); // start testimony
    }
    else
    {
        gMain.process[GAME_SUBPROCESS]++;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command29(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr == 3)
    {
        gTestimony.unk4 = 0xF0;
        gTestimony.unk2 = 0xE0;
        gTestimony.unk3 = 0xE0;
        gTestimony.unk0 = 2;
        gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
    }
    else if(*scriptCtx->scriptPtr == 2)
    {
        u32 i;
        struct OamAttrs * oam;
        gTestimony.unk4 = 0xF0;
        gTestimony.unk2 = 0xE0;
        gTestimony.unk3 = 0xE0;
        gTestimony.unk0 = 0;
        gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
        oam = &gOamObjects[35];
        for(i = 0; i < 5; oam++, i++)
        {
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        }
    }
    else if(*scriptCtx->scriptPtr != 0)
    {
        BACKUP_PROCESS();
        SET_PROCESS(6, 0, 0, 0); // return to testimony
    }
    else
    {
        SET_PROCESS(3, 1, 0, 0); // goes back into trial process
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command2A(struct ScriptContext * scriptCtx)
{
    u32 nextSection;
    scriptCtx->scriptPtr++;
    if(GetFlag(0, *scriptCtx->scriptPtr))
    {
        nextSection = *(scriptCtx->scriptPtr+1);
    }
    else
    {
        nextSection = *(scriptCtx->scriptPtr+2);
    }
    scriptCtx->nextSection = nextSection;
    scriptCtx->scriptPtr+=3;
    return 0;
}

bool32 Command2B(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.previousHealth = gMain.health;
    gMain.health--;
    gMain.unk88 = 1; // damage related
    gMain.unk89 = 3; // damage related
    PlaySE(0x4C);
    if(gMain.health <= 0)
        scriptCtx->nextSection = gUnknown_08014D82[gMain.scenarioIdx];
    return 0;
}

bool32 Command2C(struct ScriptContext * scriptCtx)
{
    u32 i;
    scriptCtx->scriptPtr++;
    scriptCtx->nextSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    scriptCtx->textX = 0;
    scriptCtx->textY = 0;
    for(i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
    {
        gTextBoxCharacters[i].state &= ~0x8000;
    }
    gBG1MapBuffer[622] = 9; // clear downward arrow in text box
    gBG1MapBuffer[623] = 9; // clear downward arrow in text box
    SetAnimationFrameOffset(&gAnimation[1], gMain.idleAnimationOffset); 
    return 0;
}

bool32 Command2E(struct ScriptContext * scriptCtx)
{
    u32 i;
    scriptCtx->unk0 &= ~(0x2 | 0x1);
    scriptCtx->scriptPtr++;
    scriptCtx->textX = 0;
    scriptCtx->textY = 0;
    scriptCtx->unk36 = 0;
    scriptCtx->unk37 = 0;
    for(i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
    {
        gTextBoxCharacters[i].state &= ~0x8000;
    }
    gBG1MapBuffer[622] = 9; // clear downward arrow in text box
    gBG1MapBuffer[623] = 9; // clear downward arrow in text box
    return 1;
}

bool32 Command2F(struct ScriptContext * scriptCtx)
{
    u32 temp;
    scriptCtx->scriptPtr++;
    temp = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
        PlayAnimation(temp);
    else
        DestroyAnimation(FindAnimationFromAnimId(temp));
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command30(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->currentSoundCue = *scriptCtx->scriptPtr;
    if(scriptCtx->currentSoundCue == 2)
    {
        scriptCtx->soundCueSkip = 0;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command31(struct ScriptContext * scriptCtx)
{
    u32 unk0, unk1;
    scriptCtx->scriptPtr++;
    unk0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    unk1 = *scriptCtx->scriptPtr;
    StartAnimationBlend(unk0, unk1);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command32(struct ScriptContext * scriptCtx)
{
    u32 location, bgId;
    scriptCtx->scriptPtr++;
    location = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    bgId = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.roomData[location][0] = bgId;
    return 0;
}

bool32 Command33(struct ScriptContext * scriptCtx)
{
    u32 startingLocation;

    scriptCtx->scriptPtr++;
    startingLocation = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.roomData[startingLocation][4] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.roomData[startingLocation][5] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.roomData[startingLocation][6] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.roomData[startingLocation][7] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command34(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.currentRoomId = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    StartHardwareBlend(2, 0, 2, 0x1F);
    SET_PROCESS(4, 5, 0, 0);
    return 0;
}

bool32 Command35(struct ScriptContext *scriptCtx)
{
    u32 offset;
    u32 temp;
    u16 * jmpArgs;

    scriptCtx->scriptPtr++;
    temp = *scriptCtx->scriptPtr >> 8;

    if(*scriptCtx->scriptPtr & 1) 
    {
        if(!GetFlag(0, temp)) 
        {
            scriptCtx->scriptPtr += 2;
            return 0;
        }
        
    }
    else 
    {
        if(GetFlag(0, temp)) 
        {
            scriptCtx->scriptPtr += 2;
            return 0;
        }
    }
    if(*(scriptCtx->scriptPtr) & 0x80) 
    {
        u32 * heapPtr;
        scriptCtx->scriptPtr++;
        temp = *scriptCtx->scriptPtr;
        heapPtr = eScriptHeap;
        heapPtr += temp+1;
        jmpArgs = (u16*)heapPtr;
        offset = jmpArgs[0] / 2;
        temp = jmpArgs[1];
        scriptCtx->currentSection = temp + 0x80;
        heapPtr = eScriptHeap;
        heapPtr += temp+1;
        scriptCtx->scriptSectionPtr = eScriptHeap + *heapPtr;
        scriptCtx->scriptPtr = scriptCtx->scriptSectionPtr + offset;
    }
    else 
    {
        scriptCtx->scriptPtr++;
        temp = *scriptCtx->scriptPtr / 2;
        scriptCtx->scriptPtr = scriptCtx->scriptSectionPtr + temp;
    }
    return 0;
}

bool32 Command36(struct ScriptContext * scriptCtx)
{
    u32 idx;
    u32 offset;
    u32 * heapPtr;
    u16 * ptr;
    scriptCtx->scriptPtr++;
    idx = *scriptCtx->scriptPtr;
    heapPtr = eScriptHeap;
    ptr = (u16*)(heapPtr+idx+1);
    offset = ptr[0] / 2;
    idx = ptr[1];
    scriptCtx->currentSection = idx + 0x80;
    scriptCtx->scriptSectionPtr = eScriptHeap + ((u32*)eScriptHeap)[idx+1];
    scriptCtx->scriptPtr = scriptCtx->scriptSectionPtr + offset;
    return 0;
}

bool32 Command37(struct ScriptContext * scriptCtx)
{
    u32 temp;
    scriptCtx->scriptPtr++;
    temp = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gTalkData[temp].enableFlag = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command38(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
    {
        sub_800FA74(&gAnimation[1], 1);
    }
    else
    {
        sub_800FA74(&gAnimation[1], 0);
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command39(struct ScriptContext * scriptCtx)
{
    u32 id;
    u32 oamIdx;
    struct MapMarker * mapMarker;
    struct OamAttrs * oamObject;
    scriptCtx->scriptPtr++;
    id = *scriptCtx->scriptPtr >> 8;
    if(*scriptCtx->scriptPtr & 1)
    {
        oamIdx = GetMapMarkerIndexFromId(id);
        if(oamIdx == 0xFF)
        {
            u32 size;
            oamIdx = GetMapMarkerIndexFromId(0xFF);
            mapMarker = &gMapMarker[oamIdx];
            oamIdx += 0x39;
            mapMarker->id = id;
            mapMarker->vramPtr = scriptCtx->unk3C;
            DmaCopy16(3, gUnknown_080187C8[id].tiles, mapMarker->vramPtr, size = gUnknown_080187C8[id].size); // weird shit going on here
            DmaCopy16(3, gUnknown_0824696C, OBJ_PLTT + 0xC0, sizeof(gUnknown_0824696C));
            mapMarker->oamIdx = oamIdx;
            oamObject = &gOamObjects[oamIdx];
            
            oamObject->attr0 = gUnknown_080187C8[id].attr0;
            mapMarker->attr0 = oamObject->attr0;
            
            oamObject->attr1 = gUnknown_080187C8[id].attr1;
            mapMarker->attr1 = oamObject->attr1;

            oamIdx = ((u32)mapMarker->vramPtr - 0x6011800);
            oamIdx /= 32;
            oamObject->attr2 = SPRITE_ATTR2(oamIdx + 0xC0, 2, 6);
            mapMarker->attr2 = oamObject->attr2;

            scriptCtx->unk3C += size;
        }
        else
        {
            mapMarker = &gMapMarker[oamIdx];
            oamObject = &gOamObjects[mapMarker->oamIdx];
            oamObject->attr0 = mapMarker->attr0;
            oamObject->attr1 = mapMarker->attr1;
            oamObject->attr2 = mapMarker->attr2;
            mapMarker->unk5 &= ~0x4;
        }
    }
    else
    {   
        // TODO: BUGFIX
        // ! Capcom forgot to check for 0xFF here..this will slightly corrupt the sound buffer in gSoundInfo
        oamIdx = GetMapMarkerIndexFromId(id); 
        gMapMarker[oamIdx].unk5 |= 4;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command3A(struct ScriptContext * scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = GetMapMarkerIndexFromId(*scriptCtx->scriptPtr >> 8);
    if(oamIdx != 0xFF)
    {
        scriptCtx->scriptPtr++;
        gMapMarker[oamIdx].attr0 &= ~0xFF;
        gMapMarker[oamIdx].attr0 |= (u8)*scriptCtx->scriptPtr;
        gMapMarker[oamIdx].attr1 &= ~0x1FF;
        gMapMarker[oamIdx].attr1 |= (u8)(*scriptCtx->scriptPtr >> 8);
        scriptCtx->scriptPtr++;
    }
    else
    {
        scriptCtx->scriptPtr++;
        scriptCtx->scriptPtr++;
    }
    return 0;
}

bool32 Command3B(struct ScriptContext * scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = GetMapMarkerIndexFromId(*scriptCtx->scriptPtr >> 8);
    if(oamIdx != 0xFF)
    {
        gMapMarker[oamIdx].direction = (u8)*scriptCtx->scriptPtr & 3;
        scriptCtx->scriptPtr++;
        gMapMarker[oamIdx].speed = (u8)(*scriptCtx->scriptPtr >> 8);
        gMapMarker[oamIdx].distanceToMove = (u8)*scriptCtx->scriptPtr;
        scriptCtx->scriptPtr++;
        gMapMarker[oamIdx].unk5 |= 2;
        gMapMarker[oamIdx].distanceMoved = 0;
    }
    else
    {
        scriptCtx->scriptPtr++;
        scriptCtx->scriptPtr++;
    }
    return 0;
}

bool32 Command3C(struct ScriptContext * scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = GetMapMarkerIndexFromId(*scriptCtx->scriptPtr >> 8);
    if(oamIdx != 0xFF)
    {
        gMapMarker[oamIdx].isBlinking = *scriptCtx->scriptPtr;
        if(!(*scriptCtx->scriptPtr & 1))
        {
            gOamObjects[oamIdx+0x39].attr1 = gMapMarker[oamIdx].attr1;
        }
    }
    gMapMarker[oamIdx].blinkTimer = 0;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command3D(struct ScriptContext * scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = GetMapMarkerIndexFromId(*scriptCtx->scriptPtr >> 8);
    if(oamIdx != 0xFF)
    {
        if(gMapMarker[oamIdx].unk5 & 2)
        {
            scriptCtx->scriptPtr--;
            return 1;
        }
    }
    scriptCtx->scriptPtr++;
    return 0; 
}

bool32 Command3E(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    DmaCopy16(3, gUnknown_08190AC0, OBJ_VRAM0 + 0x1F80, 0x80);
    DmaCopy16(3, &gUnknown_081942C0[0], OBJ_PLTT + 0x100, 0x20);
    gInvestigation.unk0 = 0xF0;
    gInvestigation.unk2 = 0x30;
    gInvestigation.unk17 = 0;
    gInvestigation.unk16 = 8;
    gInvestigation.unk8 = 0xF;
    gInvestigation.unk9 = *scriptCtx->scriptPtr;
    scriptCtx->unk0 |= 0x280;
    scriptCtx->scriptPtr++;
    return 0; 
}

bool32 Command3F(struct ScriptContext *scriptCtx)
{
    struct InvestigationStruct * investigation = &gInvestigation;
    struct Struct8018870 * struct8018870p;
    struct Rect rect;

    if(scriptCtx->unk0 & 0x80)
    {
        investigation->unk0 += investigation->unk8;
        investigation->unk0 &= 0xFF;
        investigation->unk8--;
        if(investigation->unk8 == 0)
        {
            scriptCtx->unk0 &= ~0x80;
            scriptCtx->unk0 |= 0x108;
        }
        if(scriptCtx->unk0 & 0x200)
        {
            PlaySE(49);
            scriptCtx->unk0 &= ~0x200;
        }
    }
    else if(scriptCtx->unk0 & 0x100)
    {
        struct8018870p = &gUnknown_08018870[investigation->unk9];
        if(gJoypad.heldKeysRaw & DPAD_LEFT)
        {
            investigation->unk0 -= 3;
            if(investigation->unk0 < struct8018870p->unk28)
                investigation->unk0 = struct8018870p->unk28;
            if(investigation->unk0 > DISPLAY_WIDTH-16)
                investigation->unk0 = 0;
        }
        if(gJoypad.heldKeysRaw & DPAD_RIGHT)
        {
            investigation->unk0 += 3;
            if(investigation->unk0 > struct8018870p->unk2A)
                investigation->unk0 = struct8018870p->unk2A;
            if(investigation->unk0 > DISPLAY_WIDTH-16)
                investigation->unk0 = DISPLAY_WIDTH-16;
        }
        if(gJoypad.heldKeysRaw & DPAD_UP)
        {
            investigation->unk2 -= 3;
            if(investigation->unk2 < struct8018870p->unk29)
                investigation->unk2 = struct8018870p->unk29;
            if(investigation->unk2 > DISPLAY_HEIGHT-16)
                investigation->unk2 = 0;
        }
        if(gJoypad.heldKeysRaw & DPAD_DOWN)
        {
            investigation->unk2 += 3;
            if(investigation->unk2 > struct8018870p->unk2B)
                investigation->unk2 = struct8018870p->unk2B;
            if(investigation->unk2 > DISPLAY_HEIGHT-16)
                investigation->unk2 = DISPLAY_HEIGHT-16;
        }
        if(gJoypad.pressedKeysRaw & A_BUTTON)
        {
            scriptCtx->unk0 &= ~0x108;
            rect.origin.x = gMain.unk34 + investigation->unk0 + 12;
            rect.origin.y = gMain.unk36 + investigation->unk2;
            rect.w = 4;
            rect.h = 4;
            if(CheckRectCollisionWithArea(&rect, &struct8018870p->unk0))
                ChangeScriptSection(struct8018870p->unk20);
            else if(CheckRectCollisionWithArea(&rect, &struct8018870p->unk10))
                ChangeScriptSection(struct8018870p->unk22);
            else ChangeScriptSection(struct8018870p->unk24);
            scriptCtx->unk0 |= 0x400;
            DmaCopy16(3, &gUnknown_081942C0[0], OBJ_PLTT+0x100, 0x20);
            PlaySE(43);
            scriptCtx->unk0 |= 0x400;
            gOamObjects[88].attr0 = SPRITE_ATTR0(investigation->unk2, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            gOamObjects[88].attr1 = SPRITE_ATTR1_NONAFFINE(investigation->unk0, FALSE, FALSE, 1);
            gOamObjects[88].attr2 = SPRITE_ATTR2(0xFC, 1, 8);
            return 0;
        }
        investigation->unk17++;
        if(investigation->unk17 > 1)
        {
            investigation->unk17 = 0;
            investigation->unk16++;
            investigation->unk16 &= 0xF;
            DmaCopy16(3, &gUnknown_081942C0[investigation->unk16*0x20], OBJ_PLTT+0x100, 0x20);
        }
    }
    scriptCtx->unk0 |= 0x400;
    gOamObjects[88].attr0 = SPRITE_ATTR0(investigation->unk2, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[88].attr1 = SPRITE_ATTR1_NONAFFINE(investigation->unk0, FALSE, FALSE, 1);
    gOamObjects[88].attr2 = SPRITE_ATTR2(0xFC, 1, 8);
    return 1;
}

void sub_80074E8()
{
    u32 i = 0;
    u32 id; 
    struct MapMarker *mapMarker;
    struct OamAttrs *oam;
    for (i = 0; i < 8; i++)
    {
        if (gMapMarker[i].id == 0xFF)
            continue;

        id = gMapMarker[i].id;
        DmaCopy16(3, gUnknown_080187C8[id].tiles, (gMapMarker+i)->vramPtr, gUnknown_080187C8[id].size);
        mapMarker = &gMapMarker[i];
        if (!(mapMarker->unk5 & 4))
        {
            oam = &gOamObjects[mapMarker->oamIdx];
            oam->attr0 = mapMarker->attr0;
            oam->attr1 = mapMarker->attr1;
            oam->attr2 = mapMarker->attr2;
        }

        if (mapMarker->id); // needed for matching wtf
    }
}
