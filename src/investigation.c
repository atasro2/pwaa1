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
#include "constants/animation.h"
#include "constants/script.h"
#include "constants/bg.h"

extern void SetCurrentEpisodeBit();
extern void sub_800D530(struct Main *, u32);
extern void sub_800D3C8(struct InvestigationStruct *);

void sub_800B7A8(struct InvestigationStruct * investigation, u32 arg1)
{
    investigation->unk7 = arg1;
    if(investigation->unk5 == 0)
        investigation->unk7 &= ~0xC;
}

extern void (*gUnknown_0811DD64[])(struct Main *);
extern void (*gProcess4SubProcesses[])(struct Main *, struct InvestigationStruct *);

void GameProcess04(struct Main * main)
{
    if(main->process[GAME_SUBPROCESS] != 5)
        gUnknown_0811DD64[main->scenarioIdx](main);
    gProcess4SubProcesses[main->process[GAME_SUBPROCESS]](main, &gInvestigation);
    sub_800D3C8(&gInvestigation);
}

void sub_800B808(struct Main * main, struct InvestigationStruct * investigation)
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
    DmaCopy16(3, gUnusedAsciiCharSet, VRAM + 0x3800, sizeof(gUnusedAsciiCharSet));
    DmaCopy16(3, gUnknown_08186540, VRAM, sizeof(gUnknown_08186540));
    DmaCopy16(3, gUnknown_0818E4C0, OBJ_VRAM0 + 0x2000, 0x1000);
    DmaCopy16(3, gUnknown_08194200, OBJ_PLTT+0xA0, 0x40);
    DmaCopy16(3, gUnknown_0818F6C0, OBJ_VRAM0 + 0x3000, 0x200);
    DmaCopy16(3, gUnknown_08194260, OBJ_PLTT+0xE0, 0x20);
    DmaCopy16(3, gUnknown_08190AC0, OBJ_VRAM0 + 0x3200, 0x200);
    DmaCopy16(3, gUnknown_081942C0, OBJ_PLTT+0x100, 0x20);
    DmaCopy16(3, gUnknown_081FD92C, OBJ_PLTT+0x120, 0x40);
    oam = &gOamObjects[49];
    for(i = 0; i < 4; i++)
    {
        oam->attr0 = SPRITE_ATTR0(-32 & 0xFF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(i*60, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x100 + i*0x20, 0, 5);
        oam++;
    }
    sub_800B7A8(investigation, 0xF);
    investigation->unkD = 0xE0;
    investigation->unkE = 0;
    investigation->unkF = 8;
    investigation->unkA = 0;
    investigation->unkB = 0;
    gUnknown_0811DCDC[main->scenarioIdx](main);
    bgId = main->roomData[main->currentRoomId][0];
    sub_8001830(bgId);
    sub_8001A9C(bgId);
    sub_8001A9C(0xFF);
    ioRegs->lcd_bg1vofs = ~80;
    ioRegs->lcd_dispcnt &= ~DISPCNT_BG1_ON;
    sub_800D77C(main, &gCourtRecord);
    DmaFill32(3, 0, main->unk94, sizeof(main->unk94));
    if(main->scenarioIdx > 1)
       ChangeFlag(0, 0x41, TRUE); 
    main->gameStateFlags = 0;
    main->tilemapUpdateBits = 0xF;
    main->advanceScriptContext = TRUE;
    main->showTextboxCharacters = TRUE;
    gScriptContext.currentSection = 0xFFFF;
    ChangeScriptSection(0x80);
    sub_800244C(1);
    gUnknown_0811DD20[main->scenarioIdx](main);
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
    SET_PROCESS_PTR(4, 1, 0, 0, main);
}

//FIXME: tail merge causes register diffs
void sub_800BAD4(struct Main * main, struct InvestigationStruct * investigation)
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
                PlaySE(49);
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
                PlaySE(49);
                BACKUP_PROCESS_PTR(main);
                SET_PROCESS_PTR(7, 0, 0, 0, main);
                sub_800D530(main, 0);
                investigation->unkE = 0;
                investigation->unkF = 8;
                investigation->unkB = investigation->unkA;
                return;
                */
                goto r;
            }
        }
    }
    if(gScriptContext.unk38 != 1 || 
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
            PlaySE(49);
            main->gameStateFlags &= ~1;
            BACKUP_PROCESS_PTR(main);
            SET_PROCESS_PTR(10, 0, 0, 0, main);
            return;
        }
    }

    if(gJoypad.pressedKeys & R_BUTTON)
    {
        if(!(main->gameStateFlags & 0x10))
        {
            r:
            PlaySE(49);
            BACKUP_PROCESS_PTR(main);
            SET_PROCESS_PTR(7, 0, 0, 0, main);
            sub_800D530(main, 0);
            investigation->unkE = 0;
            investigation->unkF = 8;
            investigation->unkB = investigation->unkA;
            return;
        }
    }
    else if(gJoypad.activeTimedKeys & (DPAD_RIGHT | DPAD_LEFT))
    {
        investigation->unkB = investigation->unkA;
        if(gJoypad.activeTimedKeys & DPAD_LEFT)
            investigation->unkA--;
        else
            investigation->unkA++;
        if(investigation->unk5 == 0)
            investigation->unkA &= 1;
        else
            investigation->unkA &= 3;
        PlaySE(42);
        investigation->unkE = 0;
        investigation->unkF = 8;
    }
    else if(gJoypad.pressedKeys & A_BUTTON)
    {
        PlaySE(43);
        investigation->unk0 = 120;
        investigation->unk2 = 50;
        sub_800B7A8(investigation, 0xF);
        investigation->unk7 -= 1 << investigation->unkA;
        investigation->unkD = 240;
        investigation->unkE = 8;
        investigation->unkF = 0;
        investigation->unkB = investigation->unkA;
        investigation->unkC = 3;
        sub_800D530(main, 0);
        if(investigation->unkA == 0)
        {
            StartAnimationBlend(0xC, 1);
            investigation->unk17 = 0;
            investigation->unk16 = 0;
            DmaCopy16(3, gUnknown_081942C0, OBJ_PLTT+0x100, 0x20);
        }
        main->process[GAME_SUBPROCESS] = investigation->unkA+6;
        main->process[GAME_PROCESSUNK3] = 0;
        main->process[GAME_PROCESSUNK2] = 0;
        return;
    }
    else
    {
        u32 bgBits = GetBGControlBits(main->currentBG);
        if((bgBits & 1 || bgBits & 2) && 
        gJoypad.pressedKeys & L_BUTTON)
        {
            if(main->unk34 == 0 || 
            main->unk34 == 120 ||
            main->unk34 == 240)
            {
                PlaySE(43);
                main->isBGScrolling = TRUE;
                if(main->unk34 == 0)
                    main->horizontolBGScrollSpeed = 6;
                else if(main->unk34 == 120 || main->unk34 == 240)
                    main->horizontolBGScrollSpeed = -6;
                main->process[GAME_SUBPROCESS] = 3;
                main->process[GAME_PROCESSUNK3] = 0;
                main->process[GAME_PROCESSUNK2] = 0;
                investigation->unkC = 3;
                sub_800B7A8(investigation, 0xF);
            }
        }
    }
    if(investigation->unkE < 8)
        investigation->unkE++;
    if(investigation->unkF > 0)
        investigation->unkF--;
}

// ! same as sub_800A6AC, thanks capcom
void sub_800BD74(struct Main * main, struct InvestigationStruct * investigation)
{
    DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
    SET_PROCESS_PTR(10, 0, 0, 1, main);
    if(main->scenarioIdx == 1)
    {
        if(!(main->unk8E & 2))
            SET_PROCESS_PTR(11, 0, 0, 1, main);
    }
    else if(main->scenarioIdx == 5)
    {
        if(!(main->unk8E & 4))
            SET_PROCESS_PTR(11, 0, 0, 2, main);
    }
    else if(main->scenarioIdx == 11)
    {
        if(!(main->unk8E & 8))
            SET_PROCESS_PTR(11, 0, 0, 3, main);
    }
}

void sub_800BDF8(struct Main * main, struct InvestigationStruct * investigation)
{
    bool32 flag; // TODO: find a name for this
    sub_800D530(main, 0);
    if(main->process[GAME_PROCESSUNK2] == 0)
    {
        if(GetBGControlBits(main->currentBG) & 1)
        {
            if(main->unk34 == 0 || main->unk34 == 240)
                flag = TRUE;
            else
                flag = FALSE;
        }
        else 
        {
            if(main->unk34 == 0 || main->unk34 == 120)
                flag = TRUE;
            else
                flag = FALSE;
        }
        if(flag)
        {
            investigation->unkE = 0;
            investigation->unkF = 0;
            investigation->unkC = 1;
            main->process[GAME_PROCESSUNK2]++;
        }
        return;
    }
    if(investigation->unkC == 0)
        SET_PROCESS_PTR(4, 1, 0, 0, main);
}

void sub_800BE58(struct Main * main, struct InvestigationStruct * investigation)
{
    sub_800D530(main, 0);
    if(gScriptContext.unk38 == 0)
        SET_PROCESS_PTR(4, 1, 0, 0, main);
}

void sub_800BE7C(struct Main * main, struct InvestigationStruct * investigation)
{
    u32 i, j;
    u8 * roomData;
    struct OamAttrs * oam;

    if(gScriptContext.unk38 != 1)
        return;
    if(main->blendMode)
        return;
    roomData = main->roomData[main->currentRoomId];
    if(main->process[GAME_PROCESSUNK2] == 0)
    {
        ResetSoundControl();
        sub_8001830(roomData[0]);
        main->process[GAME_PROCESSUNK2] = 1;
        return;
    }
    sub_8001A9C(roomData[0]);
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
    sub_800B7A8(investigation, 0xF);
    investigation->unkD = 0xE0;
    investigation->unkE = 0;
    investigation->unkF = 8;
    investigation->unkA = 0;
    investigation->unkB = 0;
    investigation->unkC = 1;
    ClearAllAnimationSprites();
    //TODO: MACROS BITCH!!! these exact 3 lines exist elsewhere in the code so this is 100% a macro in the original code considering it doesn't use the investigation struct ptr 
    DestroyAnimation(&gAnimation[1]);
    gInvestigation.unk5 = 0;
    sub_800B7A8(&gInvestigation, 0xF);
    
    gUnknown_0811DD20[main->scenarioIdx](main);
    sub_800D530(main, 0);
    StartHardwareBlend(1, 1, 1, 0x1F);
    SET_PROCESS_PTR(4, 1, 0, 0, main);
}

void sub_800BF90(struct Main * main, struct InvestigationStruct * investigation) // ! goto
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
    else if(gScriptContext.unk38 != 1)
        return;
    else if(!(main->advanceScriptContext == FALSE && main->showTextboxCharacters == FALSE))
        return;
    else
    {
        switch(main->process[GAME_PROCESSUNK2])
        {
            default:
                break;
            case 0:
                if(investigation->unkE <= 0xF)
                    investigation->unkE++;
                investigation->unkF = 0;
                if (investigation->unkE > 0xF)
                    main->process[GAME_PROCESSUNK2]++;
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
                    PlaySE(49);
                    main->gameStateFlags &= ~1;
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(10, 0, 0, 0, main);
                    return;
                }
                else if(gJoypad.pressedKeys & R_BUTTON
                && !(main->gameStateFlags & 0x10))
                {
                    r:
                    PlaySE(49);
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(7, 0, 0, 0, main);
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    return;
                }
                if(gJoypad.pressedKeys & A_BUTTON)
                {
                    PlaySE(43);
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    temp = sub_800D5B0(investigation);
                    ChangeScriptSection(temp);
                    sub_800244C(1);
                    investigation->unk6 = 1;
                    investigation->unk14 = 0;
                    investigation->unk15 = 0;
                    investigation->unk7 = 1;
                    investigation->unkC = 3;
                    investigation->unkD = 0xF0;
                    investigation->unkE = 0;
                    investigation->unkF = 0;
                    return;
                }
                if(gJoypad.pressedKeys & B_BUTTON)
                {
                    PlaySE(44);
                    main->process[GAME_PROCESSUNK2] = 2;
                    sub_800B7A8(investigation, 0xE);
                    investigation->unkC = 2;
                    investigation->unkD = 0xE0;
                    investigation->unkE = 0x10;
                    investigation->unkF = 0;
                    return;
                }
                
                if(gJoypad.heldKeys & DPAD_LEFT)
                {
                    investigation->unk0 -= temp;
                    if(investigation->unk2 < 16 && investigation->unk0 < 60)
                        investigation->unk0 = 60;
                    if(investigation->unk0 > 224)
                        investigation->unk0 = 0;
                }
                if(gJoypad.heldKeys & DPAD_RIGHT)
                {
                    investigation->unk0 += temp;
                    if(investigation->unk2 < 16 && investigation->unk0 < 60)
                        investigation->unk0 = 60;
                    if(investigation->unk0 > 224)
                        investigation->unk0 = 224;
                }
                if(gJoypad.heldKeys & DPAD_UP)
                {
                    investigation->unk2 -= temp;
                    if(investigation->unk0 < 60 && investigation->unk2 < 16)
                        investigation->unk2 = 16;
                    if(investigation->unk2 > 144)
                        investigation->unk2 = 0;
                }
                if(gJoypad.heldKeys & DPAD_DOWN)
                {
                    investigation->unk2 += temp;
                    if(investigation->unk0 < 60 && investigation->unk2 < 16)
                        investigation->unk2 = 16;
                    if(investigation->unk2 > 144)
                        investigation->unk2 = 144;
                }
                temp = sub_800D5B0(investigation);
                if(temp >= 0x18 && temp <= 0x19) // ! come one just a little more hardcoding please :(
                {
                    investigation->unk14 = 0;
                    investigation->unk15 = 0;
                }
                else
                {
                    investigation->unk15++;
                    if(investigation->unk15 > 8)
                    {
                        investigation->unk15 = 0;
                        investigation->unk14 += 4;
                        investigation->unk14 &= 0xF;
                    }
                }
                oam->attr0 = SPRITE_ATTR0(investigation->unk2, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                if(investigation->unk0 < 120)
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(investigation->unk0, TRUE, FALSE, 1);
                else
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(investigation->unk0, FALSE, FALSE, 1);
                oam->attr2 = SPRITE_ATTR2(0x190+investigation->unk14, 0, 8);
                investigation->unk17++;
                if(investigation->unk17 > 1)
                {
                    investigation->unk17 = 0;
                    investigation->unk16 += 1;
                    investigation->unk16 &= 0xF;
                    DmaCopy16(3, gUnknown_081942C0+investigation->unk16*32, OBJ_PLTT+0x100, 0x20);
                }
                break;
            case 2:
                if(investigation->unkE > 8)
                    investigation->unkE--;
                if(investigation->unkC == 0)
                {
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    sub_800FA74(&gAnimation[1], TRUE);
                    StartAnimationBlend(1, 1);
                    SET_PROCESS_PTR(4, 1, 0, 0, main);
                    investigation->unk7 += 1 << investigation->unkA;
                    investigation->unkE = 8;
                    investigation->unkF = 0;
                }
                break;
        }
    }
}

/*
void sub_800C334(struct Main * main, struct InvestigationStruct * investigation)
{
    u32 attr;
    u32 i;
    u32 j;
    u8 * moveLocations;
    u8 * moveButtonTiles;
    u8 * vram;
    struct OamAttrs * oam;
    struct OamAttrs * oam2;
    switch(main->process[GAME_PROCESSUNK2])
    {
        default:
            return;
        case 0:
            if(investigation->unkE <= 0xF)
                investigation->unkE++;
            investigation->unkF = 0;
            if (investigation->unkE > 0xF)
                main->process[GAME_PROCESSUNK2]++;
            break;
        case 1: // _0800C39C
            oam = &gOamObjects[38];
            moveLocations = &main->roomData[main->currentRoomId][4];
            for(i = 0; i < 4; i++)
            {
                u8 * vram = OBJ_VRAM0 + 0x3400;
                vram += i * 0x800;
                if(*moveLocations != 0xFF)
                {
                    investigation->unk10[i] = TRUE;
                    moveButtonTiles = ((u8 *)0x81FD96C)+*moveLocations*0x800; //TODO: label vs value?
                    DmaCopy16(3, moveButtonTiles, vram, 0x800);
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 = SPRITE_ATTR0(128+i*4, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                        oam->attr1 = SPRITE_ATTR1_NONAFFINE(j*64+56, FALSE, FALSE, 3);
                        oam->attr2 = (i*0x40 + j*0x20 + 0x1A0) | 0x9000; // priority 0, palette 9 
                        oam++;
                    }
                }
                else
                {
                    investigation->unk10[i] = FALSE;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                }
                moveLocations++;
            }
            investigation->unk4 = 0;
            main->process[GAME_PROCESSUNK2]++;
            main->process[GAME_PROCESSUNK3] = 0;
            break;
        case 2: // _0800C464
            oam2 = &gOamObjects[50];
            if(main->process[GAME_PROCESSUNK3] < 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 -= (4-i) * 2;
                        oam++;
                    }
                }
                main->process[GAME_PROCESSUNK3]++;
            }
            oam = oam2;
            attr = oam->attr1 & ~0x1FF;
            oam->attr1 -= 6;
            oam->attr1 &= 0x1FF;
            if(oam->attr1 > 0x100)
                oam->attr1 = 0;
            if(oam->attr1 == 0 && main->process[GAME_PROCESSUNK3] >= 0xC)
            {
                main->process[GAME_PROCESSUNK2]++;
                main->process[GAME_PROCESSUNK3] = 0;
            }
            oam->attr1 |= attr;
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
                    PlaySE(49);
                    main->gameStateFlags &= ~1;
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(10, 0, 0, 0, main);
                    return;
                }
            }
            else if(gJoypad.pressedKeys & R_BUTTON)
            {
                if(!(main->gameStateFlags & 0x10))
                {
                    PlaySE(49);
                    main->process[GAME_PROCESSUNK2] = 6; //! tries opening court record from case 6 but fails spectacularly
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(7, 0, 0, 0, main);
                    oam = &gOamObjects[38];
                    for(i = 0; i < 8; oam++, i++)
                        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    return;
                }
            }
            if(gJoypad.pressedKeys & DPAD_UP)
            {
                u32 temp;
                i = 0;
                j = investigation->unk4-1;
                temp = investigation->unk4;
                do
                {
                    j &= 3;
                    if(investigation->unk10[j] != FALSE)
                    {
                        investigation->unk4 = j;
                        break;                    
                    }
                    j--;
                }
                while(++i < 4);
                if(investigation->unk4 != temp)
                    PlaySE(42);
                break;
            }
            else if(gJoypad.pressedKeys & DPAD_DOWN)
            {
                u32 temp;
                i = 0;
                j = investigation->unk4+1;
                temp = investigation->unk4;
                do
                {
                    j &= 3;
                    if(investigation->unk10[j] != FALSE)
                    {
                        investigation->unk4 = j;
                        break;                    
                    }
                    j++;
                }
                while(++i < 4);
                if(investigation->unk4 != temp)
                    PlaySE(42);
                break;
            }
            else if(gJoypad.pressedKeys & A_BUTTON)
            {
                u32 roomId;
                PlaySE(43);
                roomId = main->currentRoomId;
                j = investigation->unk4+4;
                main->currentRoomId = main->roomData[roomId][j];
                FadeOutBGM(20);
                StartHardwareBlend(2, 1, 1, 0x1F);
                SET_PROCESS_PTR(4, 5, 0, 0, main);
                break;
            }
            else if(gJoypad.pressedKeys & B_BUTTON)
            {
                PlaySE(44);
                main->process[GAME_PROCESSUNK2]++;
                main->process[GAME_PROCESSUNK3] = 0;
                break;
            }
            break;
        case 4: // _0800C690
            oam2 = &gOamObjects[50];
            if(main->process[GAME_PROCESSUNK3] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += (4-i) * 2 + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESSUNK3]++;
            }
            oam = oam2;
            attr = oam->attr1 & ~0x1FF;
            oam->attr1 += 6;
            oam->attr1 &= 0x1FF;
            if(oam->attr1 >= 60)
            {
                oam->attr1 = 60;
                sub_800B7A8(investigation, 13);
                investigation->unkC = 2;
                investigation->unkD = 0xE0;
                investigation->unkE = 0x10;
                investigation->unkF = 0;
                main->process[GAME_PROCESSUNK2]++;
            }
            oam->attr1 |= attr;
            break;
        case 5: // _0800C714
            if(main->process[GAME_PROCESSUNK3] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += (4-i) * 2 + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESSUNK3]++;
            }
            if(investigation->unkE > 8)
                investigation->unkE--;
            if(investigation->unkC == 0 && main->process[GAME_PROCESSUNK3] > 12)
            {
                SET_PROCESS_PTR(4, 1, 0, 0, main);
                investigation->unk7 += 1 << investigation->unkA;
                investigation->unkE = 8;
                investigation->unkF = 0;
            }
            break;
        case 6: // _0800C784
        oam = &gOamObjects[38];
        moveLocations = &main->roomData[main->currentRoomId][4];
        for(i = 0; i < 4; i++)
        {
            u8 * moveButtonTiles;
            u8 * vram = OBJ_VRAM0 + 0x3400;
            vram += i * 0x800;
            if(*moveLocations != 0xFF)
            {
                investigation->unk10[i] = TRUE;
                moveButtonTiles = gUnknown_081FD96C+*moveLocations*0x800; //TODO: label vs value?
                DmaCopy16(3, moveButtonTiles, vram, 0x800);
                for(j = 0; j < 2; j++)
                {
                    oam->attr0 = SPRITE_ATTR0(24, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE) + i*30;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(56, FALSE, FALSE, 3) + j*64;
                    attr = 0x1A0;
                    oam->attr2 = (attr + j*0x20 + i*0x40) | 0x9000; // priority 0, palette 9 
                    oam++;
                }
            }
            else
            {
                investigation->unk10[i] = FALSE;
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                oam++;
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                oam++;
            }
            moveLocations++;
        }
        main->process[GAME_PROCESSUNK2] = 3;
        break;
    }
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        if(investigation->unk4 == i)
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
*/
