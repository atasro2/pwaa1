#include "global.h"
#include "main.h"
#include "sound_control.h"
#include "m4a.h"
#include "ewram.h"

static void DoGameProcess();
static void VBlankIntr();
static void HBlankIntr();
static void IntrDummy();
static void UpdateHardwareBlend();
static void (*IntrTableFunctionPtrs[])() =
{
    VBlankIntr,
    HBlankIntr,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy
};

void CheckAButtonAndGoToClearSaveScreen()
{
    if ((gMain.unk4[0] == 0) && (A_BUTTON & KEY_NEW()))
        gMain.unk4[0] = 0xE;
}

void AgbMain() // TODO: either get rid of GOTOs or clean it up a bit
{
    DmaFill32(3, 0, IWRAM_START, 0x7E00); // clear IWRAM

    LOOP1:
    {
        sub_80003E0();
        CheckAButtonAndGoToClearSaveScreen();
        LOOP2:
        {
			u32 reset;
            reset = sub_8000744();
            if (reset != 0)
                goto LOOP1;

            gMain.vblankWaitCounter = 0;

            LOOP3:
            {
                if (gMain.vblankWaitCounter != gMain.unkD)
                {
                    goto LOOP3;
                }
            }

            if (gMain.unk2C == 0)
            {
                gMain.unk0++;
                sub_80013EC();
                sub_80029B0();
                sub_8010C4C(0);
                MoveSpritesToOAM();
                SetLCDIORegs();
            }
            if (gMain.unk2C > 10)
            {
                gMain.unk2C = 0;
                sub_8001A9C(gMain.currentBG);
            }
			// fakematch? scrub C? the fuck am i supposed to look at anyways?
            if (gMain.unk2C == 0 && (sub_8005470(), gMain.unk2C == 0))
            {
                sub_800232C(gMain.unk2C);
                sub_800EEFC(&gMain);
                DoGameProcess();
                sub_8010E14(gMain.previousBG);
                UpdateHardwareBlend();
            }
            else
            {
                sub_8001744(gMain.currentBG);
            }
            sub_800F614();
            m4aSoundMain();
            goto LOOP2;
        }
    }
    if (gMain.unk2C == 0 && (sub_8005470(), gMain.unk2C == 0))
    {
        sub_800232C(gMain.unk2C);
        sub_800EEFC(&gMain);
        DoGameProcess();
        sub_8010E14(gMain.previousBG);
        UpdateHardwareBlend();
    }
    else
    {
        sub_8001744(gMain.currentBG);
    }
    sub_800F614();
    m4aSoundMain();
    goto LOOP2;
}

void DoGameProcess()
{
    struct CourtScroll *courtScroll = &gCourtScroll;
    struct Main *main = &gMain;

    u8 amplitude;
    u8 rand;

    if (main->unkB4 & 1)
    {
        switch (main->shakeIntensity)
        {
        case 0:
            amplitude = 1;
            break;
        case 1:
            amplitude = 3;
            break;
        case 2:
            amplitude = 7;
            break;
        default:
            amplitude = 3;
            break;
        }

        rand = Random() & 0xF;

        if (rand > 7)
        {
            main->shakeAmountX = rand & amplitude;
            main->shakeAmountX *= -1;
        }
        else
        {
            main->shakeAmountX = rand & amplitude;
        }

        rand = Random() & 0xF;

        if (rand > 7)
        {
            main->shakeAmountY = rand & amplitude;
            main->shakeAmountY *= -1;
        }
        else
        {
            main->shakeAmountY = rand & amplitude;
        }

        gLCDIORegisters.lcd_bg3vofs = main->shakeAmountY + 8;
        gLCDIORegisters.lcd_bg3hofs = main->shakeAmountX + 8;
        gLCDIORegisters.lcd_bg1vofs = main->shakeAmountX;
        gLCDIORegisters.lcd_bg1hofs = main->shakeAmountY;

        if (main->shakeTimer != 0)
        {
            main->shakeTimer--;
            if (main->shakeTimer == 0)
            {
                main->unkB4 &= ~1;
                gLCDIORegisters.lcd_bg3vofs = 8;
                gLCDIORegisters.lcd_bg3hofs = 8;
                gLCDIORegisters.lcd_bg1vofs = 0;
                gLCDIORegisters.lcd_bg1hofs = 0;
            }
        }
    }
    else
    {
        main->shakeAmountX = 0;
        main->shakeAmountY = 0;
    }

    gGameProcesses[gMain.unk4[0]](&gMain);

    if (courtScroll->state != 0)
    {
        UpdateCourtScroll(courtScroll);
    }
}

void sub_80003E0()
{
    struct Main *main = &gMain;
    struct LCDIORegisters *lcdIoRegsp = &gLCDIORegisters;
    u32 temp = main->unk4[0] ? 1 : 0;

    RegisterRamReset(RESET_SIO_REGS | RESET_SOUND_REGS | RESET_REGS);
    DmaFill32(3, 0, IWRAM_START, 0x7E00);  // Clear IWRAM
    DmaFill32(3, 0, EWRAM_START, 0x40000); // Clear EWRAM

    SET_UNK4(0, 0, 0, temp);

    RegisterRamReset(RESET_OAM | RESET_VRAM | RESET_PALETTE);

    for (temp = 0; temp < ARRAY_COUNT(IntrTableFunctionPtrs); temp++)
    {
        gIntrTable[temp] = IntrTableFunctionPtrs[temp];
    }

    m4aSoundInit();
    REG_WAITCNT = WAITCNT_SRAM_4 | WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1 | WAITCNT_WS1_N_4 | WAITCNT_WS1_S_4 | WAITCNT_WS2_N_4 | WAITCNT_WS2_S_8 | WAITCNT_PHI_OUT_NONE | WAITCNT_PREFETCH_ENABLE;
    lcdIoRegsp->iwp_ie = INTR_FLAG_VBLANK | INTR_FLAG_GAMEPAK;
    lcdIoRegsp->lcd_dispstat = DISPSTAT_VBLANK_INTR;
    lcdIoRegsp->lcd_bldcnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
    lcdIoRegsp->lcd_bldy = 0x10;
    REG_IE = lcdIoRegsp->iwp_ie;
    REG_DISPSTAT = lcdIoRegsp->lcd_dispstat;
    REG_IME = TRUE;
}

void sub_80004B0() // Possibly for initating scripts
{
    struct LCDIORegisters *lcdIoRegsp = &gLCDIORegisters;
    struct Main *main = &gMain;
    DmaFill16(3, 0, VRAM, VRAM_SIZE);
    DmaFill16(3, 0, OAM, OAM_SIZE);
    DmaFill16(3, 0, PLTT, PLTT_SIZE);
    DmaFill16(3, 0, &gMain, sizeof(gMain));
    DmaFill16(3, 0, &gScriptContext, sizeof(gScriptContext));
    DmaFill16(3, 0, &gCourtScroll, sizeof(gCourtScroll));
    DmaFill16(3, 0, &gUnknown_03003AB0, sizeof(gUnknown_03003AB0));
    DmaFill16(3, 0, &gUnknown_03003A50, sizeof(gUnknown_03003A50));
    DmaFill16(3, 0, &gUnknown_03002840, sizeof(gUnknown_03002840));
    DmaFill16(3, 0, &gSaveDataBuffer, sizeof(gSaveDataBuffer));
    main->rngSeed = 0xD37;
    main->unk8D = 0;
    main->unk8E = 1;
    lcdIoRegsp->lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP;                 // TODO: add TXT/AFF macro once known which one is used
    lcdIoRegsp->lcd_bg1cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_WRAP;                 // TODO: add TXT/AFF macro once known which one is used
    lcdIoRegsp->lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP;                 // TODO: add TXT/AFF macro once known which one is used
    lcdIoRegsp->lcd_bg3cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP; // TODO: add TXT/AFF macro once known which one is used
    lcdIoRegsp->lcd_bldcnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
    lcdIoRegsp->lcd_bldy = 0x10;
    HideAllSprites();
    InitBGs();
    sub_800F804(); //init animation system?
    sub_800F3C4();
    sub_8005408();
    sub_8000738(0x30, 0xF);
    m4aMPlayAllStop();
}

void HideAllSprites()
{
    u32 i;
    for (i = 0; i < MAX_OAM_OBJ_COUNT; i++)
    {
        gOamObjects[i].attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_ERASE, 0, 0, 0, 0);
    }
}

void SetLCDIORegs()
{
    struct LCDIORegisters *lcdIoRegsp = &gLCDIORegisters;

    REG_IE = lcdIoRegsp->iwp_ie;
    REG_DISPSTAT = lcdIoRegsp->lcd_dispstat;
    REG_DISPCNT = lcdIoRegsp->lcd_dispcnt;
    // TODO: make these better
    (*(vu32 *)REG_ADDR_BG0CNT) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg0cnt);
    (*(vu32 *)REG_ADDR_BG0HOFS) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg0hofs);
    (*(vu32 *)REG_ADDR_BG1HOFS) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg1hofs);
    (*(vu32 *)REG_ADDR_BG2CNT) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg2cnt);
    (*(vu32 *)REG_ADDR_BG2HOFS) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg2hofs);
    (*(vu32 *)REG_ADDR_BG3HOFS) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg3hofs);
    (*(vu32 *)REG_ADDR_BG2PA) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg2pa);
    (*(vu32 *)REG_ADDR_BG2PC) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg2pc);
    REG_BG2X = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg2x);
    REG_BG2Y = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg2y);
    (*(vu32 *)REG_ADDR_BG3PA) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg3pa);
    (*(vu32 *)REG_ADDR_BG3PC) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg3pc);
    REG_BG3X = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg3x);
    REG_BG3Y = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_bg3y);
    (*(vu32 *)REG_ADDR_WIN0H) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_win0h);
    (*(vu32 *)REG_ADDR_WIN0V) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_win0v);
    (*(vu32 *)REG_ADDR_WININ) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_winin);
    (*(vu32 *)REG_ADDR_MOSAIC) = IO_REG_STRUCT_MEMBER(lcdIoRegsp, lcd_mosaic);
    REG_BLDCNT = lcdIoRegsp->lcd_bldcnt;
    REG_BLDALPHA = lcdIoRegsp->lcd_bldalpha;
    REG_BLDY = lcdIoRegsp->lcd_bldy;
}

void ReadKeys()
{
    struct Joypad *joypadCtrl = &gJoypad;
    u16 keyInput = KEY_NEW();

    joypadCtrl->previousHeldKeys = joypadCtrl->heldKeysRaw;
    joypadCtrl->previousPressedKeys = joypadCtrl->pressedKeysRaw;
    joypadCtrl->heldKeysRaw = KEY_NEW();
    joypadCtrl->pressedKeysRaw = keyInput & ~joypadCtrl->previousHeldKeys;
    
    joypadCtrl->unk8 = 0;

    if (KEY_NEW() & joypadCtrl->unkA)
    {
        if (joypadCtrl->unkE >= joypadCtrl->unkC)
        {
            joypadCtrl->unkE = 0;
            joypadCtrl->unk8 = keyInput & joypadCtrl->unkA;
        }
        else
        {
            joypadCtrl->unkE++;
        }
    }
    else
    {
        joypadCtrl->unkE = joypadCtrl->unkC;
    }
}

void sub_8000738(u16 arg0, u16 arg1)
{
    gJoypad.unkA = arg0;
    gJoypad.unkC = arg1;
}

u32 sub_8000744()
{
    struct Joypad *joypadCtrl = &gJoypad;
    if (gMain.unk2C == 0)
    {
        ReadKeys();
    }

    gMain.unkD = 1;

    if (joypadCtrl->heldKeysRaw == (A_BUTTON|B_BUTTON|START_BUTTON|SELECT_BUTTON))
    {
        return 1;
    }
    return 0;
}

void InitCourtScroll(u8 * arg0, u32 arg1, u32 arg2, u32 arg3) // init court scroll
{
    gCourtScroll.unk0 = arg0;
    gCourtScroll.state = arg3;
    gCourtScroll.unkC = arg1;
    gCourtScroll.unkE = arg2;
    gMain.unk2E = 0;
}

void UpdateCourtScroll(struct CourtScroll * courtScroll) // update court scroll
{
    if (courtScroll->state & 1)
    {
        courtScroll->unkC--;
        if (courtScroll->unkC < 0)
        {
            courtScroll->state = 0;
        }
    }
    else
    {
        courtScroll->unkC++;
        if (courtScroll->unkC >= courtScroll->unkE)
        {
            courtScroll->state &= 1;
        }
    }
}

void StartHardwareBlend(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    gMain.blendTargets = arg3;
    gMain.blendMode = arg0;
    gMain.blendDelay = arg1;
    gMain.blendY = arg2;
    gMain.blendCounter = 0;
}

static void UpdateHardwareBlend()
{
    struct Main *main = &gMain;
    struct LCDIORegisters *lcdIoRegsp = &gLCDIORegisters;
    switch (main->blendMode)
    {
    case 0:
    default:
        break;
    case 1:
        lcdIoRegsp->lcd_bldcnt = main->blendTargets | BLDCNT_EFFECT_DARKEN;
        main->blendCounter++;
        if (main->blendCounter >= main->blendDelay)
        {
            main->blendCounter = 0;
            lcdIoRegsp->lcd_bldy -= main->blendY;
        }
        lcdIoRegsp->lcd_bldy &= 0x1F;
        if (lcdIoRegsp->lcd_bldy == 0) // ! will break with odd numbers
        {
            lcdIoRegsp->lcd_bldy = 0;
            lcdIoRegsp->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ | BLDCNT_EFFECT_BLEND;
            lcdIoRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
            main->blendMode = 0;
        }
        break;
    case 2:
        lcdIoRegsp->lcd_bldcnt = main->blendTargets | BLDCNT_EFFECT_DARKEN;
        main->blendCounter++;
        if (main->blendCounter >= main->blendDelay)
        {
            main->blendCounter = 0;
            lcdIoRegsp->lcd_bldy += main->blendY;
        }
        lcdIoRegsp->lcd_bldy &= 0x1F;
        if (lcdIoRegsp->lcd_bldy == 0x10) // ! will break with odd numbers
        {
            main->blendMode = 0;
        }
        break;
    case 3:
        lcdIoRegsp->lcd_bldcnt = main->blendTargets | BLDCNT_EFFECT_LIGHTEN;
        main->blendCounter++;
        if (main->blendCounter >= main->blendDelay)
        {
            main->blendCounter = 0;
            lcdIoRegsp->lcd_bldy -= main->blendY;
        }
        lcdIoRegsp->lcd_bldy &= 0x1F;
        if (lcdIoRegsp->lcd_bldy == 0) // ! will break with odd numbers
        {
            lcdIoRegsp->lcd_bldy = 0;
            lcdIoRegsp->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ | BLDCNT_EFFECT_BLEND;
            lcdIoRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
            main->blendMode = 0;
        }
        break;
    case 4:
        lcdIoRegsp->lcd_bldcnt = main->blendTargets | BLDCNT_EFFECT_LIGHTEN;
        main->blendCounter++;
        if (main->blendCounter >= main->blendDelay)
        {
            main->blendCounter = 0;
            lcdIoRegsp->lcd_bldy += main->blendY;
        }
        lcdIoRegsp->lcd_bldy &= 0x1F;
        if (lcdIoRegsp->lcd_bldy == 0x10) // ! will break with odd numbers
        {
            main->blendMode = 0;
        }
        break;
    }
}

void VBlankIntr()
{
    m4aSoundVSync();
    gMain.vblankWaitCounter++;
}

void HBlankIntr()
{
}

void IntrDummy()
{
}