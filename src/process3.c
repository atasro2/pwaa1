#include "global.h"
#include "background.h"
#include "animation.h"
#include "script.h"
#include "sound.h"
#include "ewram.h"
#include "court_record.h"
#include "constants/script.h"

void SetCurrentEpisodeBit()
{
    struct Main * main = &gMain;
    switch(main->scenarioIdx)
    {
        case 1:
        case 2:
        case 3:
        case 4:
            main->unk8E |= 2;
            break;
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
            main->unk8E |= 4;
            break;
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
            main->unk8E |= 8;
            break;
        case 0:
        default:
            main->unk8E |= 1;
    }
}

extern void (*gProcess3SubProcesses[])(struct Main *);

void GameProcess03(struct Main * main)
{
    gProcess3SubProcesses[main->process[GAME_SUBPROCESS]](main);
}

void sub_800A3EC(struct Main * main)
{
    struct IORegisters * ioRegs = &gIORegisters;
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
    DmaCopy16(3, &gUnknown_081942C0[0], OBJ_PLTT+0x100, 0x20);
    DmaCopy16(3, gUnknown_0818C040, OBJ_VRAM0 + 0x3780, 0x80);
    DmaCopy16(3, gUnknown_081940E0, OBJ_PLTT+0x60, 0x20);
    sub_8001830(1);
    sub_8001A9C(1);
    sub_8001A9C(0xFF);
    ioRegs->lcd_bg1vofs = ~80; // ??????
    ioRegs->lcd_dispcnt &= ~DISPCNT_BG1_ON; // what the fuck is this doing
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
    main->health = 5;
    main->previousHealth = 0xFF;
    SetCurrentEpisodeBit();
    SetTimedKeysAndDelay(DPAD_RIGHT | DPAD_LEFT, 15);
    StartHardwareBlend(1, 1, 1, 0x1F);
    ioRegs->lcd_bldy = 0x10;
    SET_PROCESS(3, 1, 0, 0); // please increase the subprocess instead thank you :^)
}

void sub_800A5B0(struct Main * main)
{
    struct TestimonyStruct * testimony = &gTestimony;
    if(main->blendMode)
        return;
    if((gJoypad.pressedKeys & START_BUTTON) &&
    !(main->gameStateFlags & 0x10) &&
    gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
    {
        PauseBGM();
        DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
        DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
        PlaySE(49);
        main->gameStateFlags &= -2; // -2??
        BACKUP_PROCESS_PTR(main);
        SET_PROCESS_PTR(0xA, 0, 0, 0, main);
    }
    else if((gJoypad.pressedKeys & R_BUTTON) &&
    !(main->gameStateFlags & 0x10) &&
    gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
    {
        PlaySE(49);
        BACKUP_PROCESS_PTR(main);
        SET_PROCESS_PTR(7, 0, 0, 0, main);
    }
    if(main->gameStateFlags & 0x400)
    {
        if(testimony->unk4 > 160)
            testimony->unk4 -= 4;
        sub_800B638(main, testimony);
    }
}

void sub_800A6AC(struct Main * main)
{
    DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
    SET_PROCESS_PTR(0xA, 0, 0, 1, main);
    if(main->scenarioIdx == 1)
    {
        if(!(main->unk8E & 2))
            SET_PROCESS_PTR(0xB, 0, 0, 1, main);
    }
    else if(main->scenarioIdx == 5)
    {
        if(!(main->unk8E & 4))
            SET_PROCESS_PTR(0xB, 0, 0, 2, main);
    }
    else if(main->scenarioIdx == 11)
    {
        if(!(main->unk8E & 8))
            SET_PROCESS_PTR(0xB, 0, 0, 3, main);
    }
}
