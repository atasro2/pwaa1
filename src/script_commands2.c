#include "global.h"
#include "script.h"
#include "sound.h"
#include "ewram.h"
#include "utils.h"
#include "background.h"
#include "animation.h"
#include "court.h"
#include "case_data.h"
#include "investigation.h"
#include "graphics.h"
#include "constants/script.h"
#include "constants/songs.h"

struct MapMarkerSprite
{
    /* +0x00 */ u8 * tiles;
    /* +0x04 */ u16 size;
    /* +0x06 */ u16 attr0;
    /* +0x08 */ u16 attr1;
    /* +0x0A */ u16 attr2;
};

struct Struct8018870
{
    /* +0x00 */ struct Point4 firstArea;
    /* +0x10 */ struct Point4 secondArea;
    /* +0x20 */ u16 firstAreaSection;
    /* +0x22 */ u16 secondAreaSection;
    /* +0x24 */ u16 defaultSection;
    /* +0x26 */ u16 unk26; // Unused, called a dummy in unity
    /* +0x28 */ u8 left;
    /* +0x29 */ u8 top;
    /* +0x2A */ u8 right;
    /* +0x2B */ u8 bottom;
};

static const struct MapMarkerSprite sMapMarkerSprites[] = {
    {
        .tiles = gUnknown_0824698C,
        .size = 0x80,
        .attr0 = 0x0000,
        .attr1 = 0x4000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_08246A0C,
        .size = 0x80,
        .attr0 = 0x0000,
        .attr1 = 0x4000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_08246A8C,
        .size = 0x400,
        .attr0 = 0x8038,
        .attr1 = 0xC086,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_08246E8C,
        .size = 0x0040,
        .attr0 = 0x8050,
        .attr1 = 0x00A0,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_08246ECC,
        .size = 0x800,
        .attr0 = 0x0008,
        .attr1 = 0xC000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_082476CC,
        .size = 0x800,
        .attr0 = 0x0050,
        .attr1 = 0xC048,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_08247ECC,
        .size = 0x800,
        .attr0 = 0x0028,
        .attr1 = 0xC0B0,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_082486CC,
        .size = 0x80,
        .attr0 = 0x8010,
        .attr1 = 0x4068,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_0824874C,
        .size = 0x100,
        .attr0 = 0x4000,
        .attr1 = 0x8090,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_0824884C,
        .size = 0x80,
        .attr0 = 0x0010,
        .attr1 = 0x4098,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_082488CC,
        .size = 0x40,
        .attr0 = 0x4030,
        .attr1 = 0x0050,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_0824890C,
        .size = 0x200,
        .attr0 = 0x0018,
        .attr1 = 0xC048,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_08248B0C,
        .size = 0x100,
        .attr0 = 0x4008,
        .attr1 = 0x8068,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_08248C0C,
        .size = 0x40,
        .attr0 = 0x8030,
        .attr1 = 0x0050,
        .attr2 = 0x0000,
    },  
};

static const struct Struct8018870 gUnknown_08018870[] = {
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x76,
                    .y = 0x31,
                },
                {
                    .x = 0x86,
                    .y = 0x31,
                },
                {
                    .x = 0x86,
                    .y = 0x41,
                },
                {
                    .x = 0x76,
                    .y = 0x41,
                }
            }
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x78,
                    .y = 0x50,
                },
                {
                    .x = 0x88,
                    .y = 0x50,
                },
                {
                    .x = 0x88,
                    .y = 0x60,
                },
                {
                    .x = 0x78,
                    .y = 0x60,
                },
            }
        },
        .firstAreaSection = 0xA3,
        .secondAreaSection = 0xA2,
        .defaultSection = 0xA1,
        .unk26 = 0,
        .left = 26,
        .top = 4,
        .right = 188,
        .bottom = 93,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x9B,
                    .y = 0,
                },
                {
                    .x = 0xC8,
                    .y = 0,
                },
                {
                    .x = 0xC8,
                    .y = 0x12,
                },
                {
                    .x = 0x9B,
                    .y = 0x12,
                }
            }
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x93,
                    .y = 0x3A,
                },
                {
                    .x = 0xB1,
                    .y = 0x3A,
                },
                {
                    .x = 0xBF,
                    .y = 0xA0,
                },
                {
                    .x = 0x99,
                    .y = 0xA0,
                },
            }
        },
        .firstAreaSection = 0xE9,
        .secondAreaSection = 0xE8,
        .defaultSection = 0xE7,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x4B,
                    .y = 0x53,
                },
                {
                    .x = 0x84,
                    .y = 0x53,
                },
                {
                    .x = 0x84,
                    .y = 0x8C,
                },
                {
                    .x = 0x4B,
                    .y = 0x8C,
                }
            }
        },
        .secondArea = {
            .points = {
                {
                    .x = 0,
                    .y = 0,
                },
                {
                    .x = 1,
                    .y = 0,
                },
                {
                    .x = 1,
                    .y = 1,
                },
                {
                    .x = 0,
                    .y = 1,
                },
            }
        },
        .firstAreaSection = 0xEC,
        .secondAreaSection = 0xEB,
        .defaultSection = 0xEB,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x87,
                    .y = 0x41,
                },
                {
                    .x = 0x96,
                    .y = 0x41,
                },
                {
                    .x = 0x96,
                    .y = 0x4E,
                },
                {
                    .x = 0x87,
                    .y = 0x4E,
                }
            }
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x9E,
                    .y = 0x14,
                },
                {
                    .x = 0xB4,
                    .y = 0x14,
                },
                {
                    .x = 0xC8,
                    .y = 0x96,
                },
                {
                    .x = 0xA0,
                    .y = 0x96,
                },
            }
        },
        .firstAreaSection = 0xEF,
        .secondAreaSection = 0xEC,
        .defaultSection = 0xED,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x4A,
                    .y = 0x20,
                },
                {
                    .x = 0x5F,
                    .y = 0x20,
                },
                {
                    .x = 0x5F,
                    .y = 0x32,
                },
                {
                    .x = 0x4A,
                    .y = 0x32,
                }
            }
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x6E,
                    .y = 0xA,
                },
                {
                    .x = 0x82,
                    .y = 0xA,
                },
                {
                    .x = 0x82,
                    .y = 0x14,
                },
                {
                    .x = 0x6E,
                    .y = 0x14,
                },
            }
        },
        .firstAreaSection = 0xDD,
        .secondAreaSection = 0xDB,
        .defaultSection = 0xDC,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x7F,
                    .y = 0x6,
                },
                {
                    .x = 0xA3,
                    .y = 0x6,
                },
                {
                    .x = 0xA1,
                    .y = 0x30,
                },
                {
                    .x = 0x7D,
                    .y = 0x20,
                }
            }
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x15,
                    .y = 0x50,
                },
                {
                    .x = 0x45,
                    .y = 0x48,
                },
                {
                    .x = 0x78,
                    .y = 0x8C,
                },
                {
                    .x = 0x15,
                    .y = 0x9C,
                },
            }
        },
        .firstAreaSection = 0xD8,
        .secondAreaSection = 0xD6,
        .defaultSection = 0xD7,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x7F,
                    .y = 0x6,
                },
                {
                    .x = 0xA3,
                    .y = 0x6,
                },
                {
                    .x = 0xA1,
                    .y = 0x30,
                },
                {
                    .x = 0x7D,
                    .y = 0x20,
                }
            }
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x15,
                    .y = 0x50,
                },
                {
                    .x = 0x45,
                    .y = 0x48,
                },
                {
                    .x = 0x78,
                    .y = 0x8C,
                },
                {
                    .x = 0x15,
                    .y = 0x9C,
                },
            }    
        },
        .firstAreaSection =0xC4,
        .secondAreaSection = 0xC2,
        .defaultSection = 0xC3,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
};

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
    PlaySE(SE007_MENU_OPEN_SUBMENU);
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
        gMain.process[GAME_PROCESS_STATE]++;
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
    gMain.damageFrame = 1; // damage related
    gMain.damageFrameTimer = 3; // damage related
    PlaySE(SE022_LOST_A_TRY);
    if(gMain.health <= 0)
        scriptCtx->nextSection = gCaseGameoverSections[gMain.scenarioIdx];
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
    scriptCtx->textboxDownArrowIndex = 0;
    scriptCtx->textboxDownArrowDelayCounter = 0;
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
        ChangeAnimationActivity(&gAnimation[1], 1);
    }
    else
    {
        ChangeAnimationActivity(&gAnimation[1], 0);
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
            mapMarker->vramPtr = scriptCtx->mapMarkerVramPtr;
            DmaCopy16(3, sMapMarkerSprites[id].tiles, mapMarker->vramPtr, size = sMapMarkerSprites[id].size); // weird shit going on here
            DmaCopy16(3, gUnknown_0824696C, OBJ_PLTT + 0xC0, 0x20);
            mapMarker->oamIdx = oamIdx;
            oamObject = &gOamObjects[oamIdx];
            
            oamObject->attr0 = sMapMarkerSprites[id].attr0;
            mapMarker->attr0 = oamObject->attr0;
            
            oamObject->attr1 = sMapMarkerSprites[id].attr1;
            mapMarker->attr1 = oamObject->attr1;

            oamIdx = ((uintptr_t)mapMarker->vramPtr - ((uintptr_t)OBJ_VRAM0+0x1800));
            oamIdx /= 32;
            oamObject->attr2 = SPRITE_ATTR2(oamIdx + 0xC0, 2, 6);
            mapMarker->attr2 = oamObject->attr2;

            scriptCtx->mapMarkerVramPtr += size;
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
    const struct Struct8018870 * struct8018870p;
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
            PlaySE(SE007_MENU_OPEN_SUBMENU);
            scriptCtx->flags &= ~SCRIPT_SPOTSELECT_PLAY_SPAWN_SOUND;
        }
    }
    else if(scriptCtx->flags & SCRIPT_SPOTSELECT_INPUT)
    {
        struct8018870p = &gUnknown_08018870[investigation->unk9];
        if(gJoypad.heldKeys & DPAD_LEFT)
        {
            investigation->unk0 -= 3;
            if(investigation->unk0 < struct8018870p->left)
                investigation->unk0 = struct8018870p->left;
            if(investigation->unk0 > DISPLAY_WIDTH-16)
                investigation->unk0 = 0;
        }
        if(gJoypad.heldKeys & DPAD_RIGHT)
        {
            investigation->unk0 += 3;
            if(investigation->unk0 > struct8018870p->right)
                investigation->unk0 = struct8018870p->right;
            if(investigation->unk0 > DISPLAY_WIDTH-16)
                investigation->unk0 = DISPLAY_WIDTH-16;
        }
        if(gJoypad.heldKeys & DPAD_UP)
        {
            investigation->unk2 -= 3;
            if(investigation->unk2 < struct8018870p->top)
                investigation->unk2 = struct8018870p->top;
            if(investigation->unk2 > DISPLAY_HEIGHT-16)
                investigation->unk2 = 0;
        }
        if(gJoypad.heldKeys & DPAD_DOWN)
        {
            investigation->unk2 += 3;
            if(investigation->unk2 > struct8018870p->bottom)
                investigation->unk2 = struct8018870p->bottom;
            if(investigation->unk2 > DISPLAY_HEIGHT-16)
                investigation->unk2 = DISPLAY_HEIGHT-16;
        }
        if(gJoypad.pressedKeys & A_BUTTON)
        {
            scriptCtx->flags &= ~(SCRIPT_SPOTSELECT_INPUT | SCRIPT_LOOP);
            rect.x = gMain.Bg256_pos_x + investigation->unk0 + 12;
            rect.y = gMain.Bg256_pos_y + investigation->unk2;
            rect.w = 4;
            rect.h = 4;
            if(CheckRectCollisionWithArea(&rect, &struct8018870p->firstArea))
                ChangeScriptSection(struct8018870p->firstAreaSection);
            else if(CheckRectCollisionWithArea(&rect, &struct8018870p->secondArea))
                ChangeScriptSection(struct8018870p->secondAreaSection);
            else 
                ChangeScriptSection(struct8018870p->defaultSection);
            scriptCtx->flags |= SCRIPT_SPOTSELECT_SELECTION_MADE;
            DmaCopy16(3, &gUnknown_081942C0[0], OBJ_PLTT+0x100, 0x20);
            PlaySE(SE001_MENU_CONFIRM);
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

void MakeMapMarkerSprites()
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
        DmaCopy16(3, sMapMarkerSprites[id].tiles, (gMapMarker+i)->vramPtr, sMapMarkerSprites[id].size);
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
