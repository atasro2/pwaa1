#include "global.h"
#include "ewram.h"
#include "background.h"
#include "animation.h"
#include "court_record.h"
#include "sound_control.h"
#include "constants/script.h"
#include "constants/bg.h"
#include "main.h"

extern void SetCurrentEpisodeBit();
extern void sub_800D530(struct Main *, u32);

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

    if(gJoypad.pressedKeysRaw & START_BUTTON)
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

    if(gJoypad.pressedKeysRaw & R_BUTTON)
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
    if(gJoypad.pressedKeysRaw & START_BUTTON)
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

    if(gJoypad.pressedKeysRaw & R_BUTTON)
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
    else if(gJoypad.activeTimedKeysRaw & (DPAD_RIGHT | DPAD_LEFT))
    {
        investigation->unkB = investigation->unkA;
        if(gJoypad.activeTimedKeysRaw & DPAD_LEFT)
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
    else if(gJoypad.pressedKeysRaw & A_BUTTON)
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
        gJoypad.pressedKeysRaw & L_BUTTON)
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