#include "global.h"
#include "script.h"
#include "sound.h"
#include "ewram.h"
#include "utils.h"
#include "background.h"
#include "animation.h"
#include "court.h"
#include "investigation.h"
#include "constants/script.h"

struct Struct80187C8
{
    /* +0x00 */ u8 * tiles;
    /* +0x04 */ u16 size;
    /* +0x06 */ u16 attr0;
    /* +0x08 */ u16 attr1;
    /* +0x0A */ u16 attr2;
};

struct Struct8018870
{
    /* +0x00 */ struct Point4 unk0;
    /* +0x10 */ struct Point4 unk10;
    /* +0x20 */ u16 unk20;
    /* +0x22 */ u16 unk22;
    /* +0x24 */ u16 unk24;
    /* +0x26 */ u8 pad[2]; // possibly another u16 unused
    /* +0x28 */ u8 unk28;
    /* +0x29 */ u8 unk29;
    /* +0x2A */ u8 unk2A;
    /* +0x2B */ u8 unk2B;
};

extern struct Struct80187C8 gUnknown_080187C8[16];
extern struct Struct8018870 gUnknown_08018870[7];

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
    scriptCtx->flags |= 0x10;
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
    scriptCtx->flags &= ~(0x2 | 0x1);
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

            oamIdx = ((uintptr_t)mapMarker->vramPtr - ((uintptr_t)OBJ_VRAM0+0x1800));
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
    scriptCtx->flags |= (SCRIPT_SPOTSELECT_MOVE_TO_START | SCRIPT_SPOTSELECT_PLAY_SPAWN_SOUND);
    scriptCtx->scriptPtr++;
    return 0; 
}

bool32 Command3F(struct ScriptContext *scriptCtx)
{
    struct InvestigationStruct * investigation = &gInvestigation;
    struct Struct8018870 * struct8018870p;
    struct Rect rect;

    if(scriptCtx->flags & SCRIPT_SPOTSELECT_MOVE_TO_START)
    {
        investigation->unk0 += investigation->unk8;
        investigation->unk0 &= 0xFF;
        investigation->unk8--;
        if(investigation->unk8 == 0)
        {
            scriptCtx->flags &= ~SCRIPT_SPOTSELECT_MOVE_TO_START;
            scriptCtx->flags |= (SCRIPT_SPOTSELECT_INPUT | SCRIPT_LOOP);
        }
        if(scriptCtx->flags & SCRIPT_SPOTSELECT_PLAY_SPAWN_SOUND)
        {
            PlaySE(49);
            scriptCtx->flags &= ~SCRIPT_SPOTSELECT_PLAY_SPAWN_SOUND;
        }
    }
    else if(scriptCtx->flags & SCRIPT_SPOTSELECT_INPUT)
    {
        struct8018870p = &gUnknown_08018870[investigation->unk9];
        if(gJoypad.heldKeys & DPAD_LEFT)
        {
            investigation->unk0 -= 3;
            if(investigation->unk0 < struct8018870p->unk28)
                investigation->unk0 = struct8018870p->unk28;
            if(investigation->unk0 > DISPLAY_WIDTH-16)
                investigation->unk0 = 0;
        }
        if(gJoypad.heldKeys & DPAD_RIGHT)
        {
            investigation->unk0 += 3;
            if(investigation->unk0 > struct8018870p->unk2A)
                investigation->unk0 = struct8018870p->unk2A;
            if(investigation->unk0 > DISPLAY_WIDTH-16)
                investigation->unk0 = DISPLAY_WIDTH-16;
        }
        if(gJoypad.heldKeys & DPAD_UP)
        {
            investigation->unk2 -= 3;
            if(investigation->unk2 < struct8018870p->unk29)
                investigation->unk2 = struct8018870p->unk29;
            if(investigation->unk2 > DISPLAY_HEIGHT-16)
                investigation->unk2 = 0;
        }
        if(gJoypad.heldKeys & DPAD_DOWN)
        {
            investigation->unk2 += 3;
            if(investigation->unk2 > struct8018870p->unk2B)
                investigation->unk2 = struct8018870p->unk2B;
            if(investigation->unk2 > DISPLAY_HEIGHT-16)
                investigation->unk2 = DISPLAY_HEIGHT-16;
        }
        if(gJoypad.pressedKeys & A_BUTTON)
        {
            scriptCtx->flags &= ~(SCRIPT_SPOTSELECT_INPUT | SCRIPT_LOOP);
            rect.origin.x = gMain.unk34 + investigation->unk0 + 12;
            rect.origin.y = gMain.unk36 + investigation->unk2;
            rect.w = 4;
            rect.h = 4;
            if(CheckRectCollisionWithArea(&rect, &struct8018870p->unk0))
                ChangeScriptSection(struct8018870p->unk20);
            else if(CheckRectCollisionWithArea(&rect, &struct8018870p->unk10))
                ChangeScriptSection(struct8018870p->unk22);
            else ChangeScriptSection(struct8018870p->unk24);
            scriptCtx->flags |= SCRIPT_SPOTSELECT_SELECTION_MADE;
            DmaCopy16(3, &gUnknown_081942C0[0], OBJ_PLTT+0x100, 0x20);
            PlaySE(43);
            scriptCtx->flags |= SCRIPT_SPOTSELECT_SELECTION_MADE;
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
    scriptCtx->flags |= SCRIPT_SPOTSELECT_SELECTION_MADE;
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

u32 GetMapMarkerIndexFromId(u32 id) // GetExplCharWorkIndexById
{
    u32 i = 0;
    do 
    {
        if (gMapMarker[i].id == id)
            return i;
        i++;
    } while (i < ARRAY_COUNT(gMapMarker));
    return 0xFF;
}
