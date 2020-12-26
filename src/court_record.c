#include "global.h"
#include "background.h"
#include "sound_control.h"
#include "animation.h"
#include "ewram.h"

void sub_800D77C(struct Main * main, struct CourtRecord * courtRecord)
{
    u8 * recordIds;
    u32 i;

    for(i = 0; i < 32; i++)
        courtRecord->profileList[i] |= 0xFF;
    courtRecord->unk11 = 0;
    for(i = 0; i < 32; i++)
        courtRecord->evidenceList[i] |= 0xFF;
    courtRecord->unk10 = 0;
    recordIds = gUnknown_0811DC10[main->scenarioIdx];
    for(i = 0; *recordIds != 0xFE; i++)
    {
        courtRecord->profileList[i] = *recordIds;
        courtRecord->unk11++;
        recordIds++;
    }
    recordIds++;
    for(i = 0; *recordIds != 0xFF; i++)
    {
        courtRecord->evidenceList[i] = *recordIds;
        courtRecord->unk10++;
        recordIds++;
    }
}

extern void (*gUnknown_0811DFA4[8])(struct Main *, struct CourtRecord *);

void CourtRecordProcess(struct Main * main)
{
    gBG1MapBuffer[622] = 9;
    gBG1MapBuffer[623] = 9;
    gUnknown_0811DFA4[main->process[GAME_SUBPROCESS]](main, &gCourtRecord);
}

extern void (*gUnknown_0811DFC4[3])(struct Main *, struct CourtRecord *);

void GameProcess08(struct Main * main)
{
    gUnknown_0811DFC4[main->process[GAME_SUBPROCESS]](main, &gCourtRecord);
}

void sub_800D880(struct Main * main, struct CourtRecord * courtRecord)
{
    u32 i;
    struct OamAttrs * oam;
    struct IORegisters * io;
    do
    {
        u16 * map = gBG2MapBuffer; 
        for(i = 0; i < 0x400; i++, map++)
            *map = 0;
    }
    while(0);

    io = &gIORegisters;
    if(main->processCopy[GAME_PROCESS] != 6)
    {
        if(main->processCopy[GAME_PROCESS] == 4 && main->processCopy[GAME_SUBPROCESS] <= 5)
        {
            oam = &gOamObjects[49];
            for(i = 0; i < 4; i++)
            {
                oam->attr2 = SPRITE_ATTR2(0x100+i*0x20, 1, 5);
                oam++;
            }
        }
    }
    if(main->processCopy[GAME_PROCESS] == 5)
    {
        oam = &gOamObjects[49];
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
    if(main->process[GAME_PROCESSUNK3] == 2)
    {
        oam = &gOamObjects[52];
        gOamObjects[52].attr2 = SPRITE_ATTR2(0x160, 1, 6);
    }
    io->lcd_dispcnt |= DISPCNT_BG2_ON;
    io->lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_WRAP | BGCNT_TXT256x256;
    main->tilemapUpdateBits |= 0x4;
    courtRecord->unkC = 0;
    courtRecord->unkD = 0;
    courtRecord->unk12 = 0;
    courtRecord->unkE = courtRecord->unk10;
    courtRecord->unk14 = courtRecord->evidenceList;
    sub_800E914();
    sub_800EA80(courtRecord->unk14[courtRecord->unkD]);
    if(main->process[GAME_PROCESSUNK3] == 1)
        sub_80024C8(2, 0xC);
    courtRecord->unkF = 1;
    main->process[GAME_SUBPROCESS] = 3;
}

//TODO: fix shit control flow
void sub_800D94C(struct Main * main, struct CourtRecord * courtRecord)
{
    struct Joypad * joypad = &gJoypad;
    struct OamAttrs * oam;
    u32 section;

    if(joypad->pressedKeysRaw & L_BUTTON)
    {
        u32 evidenceId = courtRecord->unk14[courtRecord->unkD];
        if(gUnknown_08018A6C[evidenceId].unk6)
        {
            PauseBGM();
            PlaySE(0x2B);
            main->process[GAME_SUBPROCESS] = 5;
            main->process[GAME_PROCESSUNK2] = 0;
            StartHardwareBlend(2, 1, 1, 0x1F);
            return;
        }
    }
    
    if(joypad->heldKeysRaw & DPAD_RIGHT && courtRecord->unkE > 1)
    {
        sub_80024C8(1, 0xC);
        if(--courtRecord->unkD > courtRecord->unkE)
            courtRecord->unkD = courtRecord->unkE-1;
        goto tailMerge; // compiler can do this but the if(main->process[GAME_PROCESSUNK3] == 1) fucks up
        /*
        PlaySE(0x36);
        courtRecord->unkF = 1;
        courtRecord->unkC |= 2;
        DmaCopy16(3, OBJ_VRAM0+0x3C00, VRAM+0x1400, 0x1C00);
        DmaCopy16(3, OBJ_PLTT+0x20, PLTT+0x20, 0x20);
        sub_800EAF8(courtRecord);
        DmaCopy16(3, &gOamObjects[34], OAM + 34*8, 17*8);
        main->process[GAME_SUBPROCESS] = 6;
        if(main->process[GAME_PROCESSUNK3] == 1)
        {
            //goto label;
            
            if(main->processCopy[GAME_PROCESS] != 4)
                sub_800B51C(main, &gTestimony, 0);
            oam = &gOamObjects[55];
            if(!(main->gameStateFlags & 0x100))
            {
                oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(186, FALSE, FALSE, 2);
                oam->attr2 = SPRITE_ATTR2(0x190, 1, 5);
                oam++;
                oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(218, FALSE, FALSE, 2);
                oam->attr2 = SPRITE_ATTR2(0x198, 1, 5);
            }
            else
            {
                oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam++;
                oam->attr0 = SPRITE_ATTR0_CLEAR;
            }
            
        }
        */
    }
    else if (joypad->heldKeysRaw & DPAD_LEFT && courtRecord->unkE > 1)
    {
        sub_80024C8(2, 0xC);
        if(++courtRecord->unkD >= courtRecord->unkE)
            courtRecord->unkD = 0;
        tailMerge:
        PlaySE(0x36);
        courtRecord->unkF = 1;
        courtRecord->unkC |= 2;
        DmaCopy16(3, OBJ_VRAM0+0x3C00, VRAM+0x1400, 0x1C00);
        DmaCopy16(3, OBJ_PLTT+0x20, PLTT+0x20, 0x20);
        sub_800EAF8(courtRecord);
        DmaCopy16(3, &gOamObjects[34], OAM + 34*8, 11*8);
        main->process[GAME_SUBPROCESS] = 6;
        if(main->process[GAME_PROCESSUNK3] == 1)
        {
        /*
            if(main->processCopy[GAME_PROCESS] != 4)
                sub_800B51C(main, &gTestimony, 0);
            oam = &gOamObjects[55];
            if(!(main->gameStateFlags & 0x100))
            {
                oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(186, FALSE, FALSE, 2);
                oam->attr2 = SPRITE_ATTR2(0x190, 1, 5);
                oam++;
                oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(218, FALSE, FALSE, 2);
                oam->attr2 = SPRITE_ATTR2(0x198, 1, 5);
            }
            else
            {
                oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam++;
                oam->attr0 = SPRITE_ATTR0_CLEAR;
            }
        */
            goto label; // idk how to get the compiler to do this
        }
    }
    else if(main->process[GAME_PROCESSUNK3] == 1)
    {
        if(joypad->pressedKeysRaw & A_BUTTON)
        {
            //u32 section;
            sub_800EB88(0);
            sub_800EBF0(0);
            oam = gOamObjects;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            if(main->gameStateFlags & 0x200)
            {
                sub_80024C8(4, 0x12);
                SET_PROCESS_PTR(7, 7, 0, 0, main);
                sub_80028B4(0, FALSE);
                main->gameStateFlags &= ~0x300;
                return;
            }
            if(main->gameStateFlags & 0x100)
            {
                PlayAnimation(4);
                PlaySE(0x37);
            }
            else
            {
                PlayAnimation(2);
                PlaySE(0x51);
            }
            StartHardwareBlend(3, 1, 4, 0x1F);
            gTestimony.unk1 = 0xA;
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            main->advanceScriptContext = FALSE;
            main->showTextboxCharacters = FALSE;
            main->shakeTimer = 30;
            main->shakeIntensity = 1;
            main->gameStateFlags |= 1;
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG2_ON;
            sub_800EB6C(courtRecord);
            section = sub_800EE20(gScriptContext.currentSection, courtRecord->unk14[courtRecord->unkD]);
            if(section != 0)
            {
                StopBGM();
                ChangeScriptSection(section);
                SET_PROCESS_BACKUP_PTR(3, 1, 0, 0, main);
            }
            else
            {
                u32 section = gScriptContext.currentSection;
                if(gScriptContext.unk0 & 0x10)
                    ChangeScriptSection(++section);
                else
                {
                    u32 rand = Random() & 3;
                    switch(rand)
                    {
                        case 0:
                            // could be a macro which would be cool
                            do {
                                ChangeScriptSection(0x1A);
                                gScriptContext.unk33 = 1;
                            } while(0); // lolwut? needed for matching
                            break;
                        case 1:
                            ChangeScriptSection(0x1B);
                            gScriptContext.unk33 = 1;
                            break;
                        case 2:
                            ChangeScriptSection(0x1C);
                            break;
                        case 3:
                            ChangeScriptSection(0x1D);
                            break;
                        default:
                            break;
                    }
                    gScriptContext.nextSection = section;
                }
                gScriptContext.unk0 &= ~0x10;
                SET_PROCESS_BACKUP_PTR(6, 1, 0, 0, main);
            }
            SET_PROCESS_PTR(6, 5, 0, 0, main);
            sub_80028B4(0, FALSE);
            main->gameStateFlags &= ~0x300;
            return;
        }
        if(!(main->gameStateFlags & 0x100))
        {
            if(joypad->pressedKeysRaw & B_BUTTON)
            {
                PlaySE(0x2C);
                sub_80024C8(4, 0xC);
                main->process[GAME_SUBPROCESS] = 2;
            }
        }
        label:
        if(main->processCopy[GAME_PROCESS] != 4)
            sub_800B51C(main, &gTestimony, 0);
        oam = &gOamObjects[55];
        if(!(main->gameStateFlags & 0x100))
        {
            oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(186, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x190, 1, 5);
            oam++;
            oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(218, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x198, 1, 5);
        }
        else
        {
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        }
    }
    else if(main->process[GAME_PROCESSUNK3] == 2)
    {
        //u32 section;
        if(joypad->pressedKeysRaw & A_BUTTON)
        {
            PlaySE(0x2B);
            section = sub_800EEA4(main, courtRecord->unk14[courtRecord->unkD]);
            ChangeScriptSection(section);
            sub_800244C(1);
            sub_800EB6C(courtRecord);
            sub_800EB88(0);
            sub_800EBF0(0);
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG2_ON;
            oam = gOamObjects;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            gInvestigation.unkC = 3;
            gInvestigation.unk7 = 8;
            gInvestigation.unkD = 0xF0;
            RESTORE_PROCESS_PTR(main);
            return;
        }
        else if(joypad->pressedKeysRaw & B_BUTTON)
        {
            PlaySE(0x2C);
            sub_80024C8(3, 0xC);
            SET_PROCESS_BACKUP_PTR(4, 9, 3, 0, main);
            main->process[GAME_SUBPROCESS] = 2;
        }
    }
    else 
    {
        if(joypad->pressedKeysRaw & R_BUTTON)
        {
            PlaySE(0x34);
            sub_80024C8(0x3, 0xC);
            courtRecord->unkF = 4;
            main->process[GAME_SUBPROCESS] = 4;
        }
        else if(joypad->pressedKeysRaw & B_BUTTON)
        {
            PlaySE(0x2C);
            sub_80024C8(0x3, 0xC);
            main->process[GAME_SUBPROCESS] = 2;
        }
    }
    sub_8002878(&gCourtRecord);
    sub_800E9D4(&gCourtRecord);
}

void sub_800DD88(struct Main * main, struct CourtRecord * courtRecord)
{
    struct OamAttrs * oam;
    if(main->process[GAME_PROCESSUNK3] == 2 && courtRecord->unk2 > 8)
    {
        u16 attr1;
        oam = &gOamObjects[52];
        attr1 = oam->attr1 & ~0x1FF;
        oam->attr1 += 12;
        oam->attr1 &= 0x1FF;
        if(oam->attr1 >= 0xB4)
            oam->attr1 = 0xB4;
        oam->attr1 |= attr1;
    }
    sub_8002878(courtRecord);
    sub_800E9D4(courtRecord);
    if(courtRecord->unk1 == 0)
    {
        courtRecord->unkC |= 4;
        courtRecord->unkC &= ~2;
        if(main->process[GAME_PROCESSUNK3] == 0 && !(gScriptContext.unk0 & 4))
        {
            gBG1MapBuffer[622] = 0x20;
            gBG1MapBuffer[623] = 0x21;
        }
        RESTORE_PROCESS_PTR(main);
    }
}

void sub_800DE28(struct Main * main, struct CourtRecord * courtRecord)
{
    struct OamAttrs * oam;
    if(main->process[GAME_PROCESSUNK3] == 2 && courtRecord->unk2 > 8)
    {
        u16 attr1;
        oam = &gOamObjects[52];
        attr1 = oam->attr1 & ~0x1FF;
        oam->attr1 -= 12;
        oam->attr1 &= 0x1FF;
        if(oam->attr1 >= 0x100) // what the fuck
            oam->attr1 = 0;
        oam->attr1 |= attr1;
    }
    sub_8002878(courtRecord);
    sub_800E9D4(courtRecord);
    if(courtRecord->unk1 == 0)
    {
        courtRecord->unkC |= 4;
        courtRecord->unkC &= ~2;
        main->process[GAME_SUBPROCESS] = courtRecord->unkF;
    }
}

void sub_800DE8C(struct Main * main, struct CourtRecord * courtRecord)
{
    sub_8002878(courtRecord);
    sub_800E9D4(courtRecord);
    if(courtRecord->unk1 == 0)
    {
        u32 temp;
        courtRecord->unkC &= ~2;
        sub_80024C8(2, 0xC);
        courtRecord->unkF = 1;
        main->process[GAME_SUBPROCESS] = 3;
        temp = courtRecord->unkD;
        courtRecord->unkD = courtRecord->unk12;
        courtRecord->unk12 = temp;
        if(courtRecord->unkC & 1)
        {
            courtRecord->unkC &= ~1;
            DmaCopy16(3, gUnknown_081906C0, OBJ_VRAM0+0x3500, sizeof(gUnknown_081906C0));
            courtRecord->unkE = courtRecord->unk10;
            courtRecord->unk14 = courtRecord->evidenceList;
        }
        else
        {
            courtRecord->unkC |= 1;
            DmaCopy16(3, gUnknown_081908C0, OBJ_VRAM0+0x3500, sizeof(gUnknown_081908C0));
            courtRecord->unkE = courtRecord->unk11;
            courtRecord->unk14 = courtRecord->profileList;
        }

        sub_800EA80(courtRecord->unk14[courtRecord->unkD]);
    }
}

void sub_800DF44(struct Main * main, struct CourtRecord * courtRecord)
{
    u32 evidenceId;
    if(main->gameStateFlags & 1)
    {
        gIORegisters.lcd_bg3vofs = 8;
        gIORegisters.lcd_bg3hofs = 8;
        gIORegisters.lcd_bg1vofs = 0;
        gIORegisters.lcd_bg1hofs = 0;
    }
    switch(main->process[GAME_PROCESSUNK2])
    {
        case 0:
        {
            struct OamAttrs * oam;
            u32 i;
            
            if(main->blendMode != 0)
                break;
            courtRecord->unk13 = 0;
            evidenceId = courtRecord->unk14[courtRecord->unkD];
            DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(struct Main));
            switch(gUnknown_08018A6C[evidenceId].unk6)
            {
                case 0:
                    break;
                case 1:
                    main->currentBG = 0x1D;
                    break;
                case 2:
                    main->currentBG = 0x2D;
                    break;
                case 3:
                    main->currentBG = 0x31;
                    break;
                case 4:
                    main->currentBG = 0x3D;
                    break;
                case 5:
                    main->currentBG = 0x39;
                    break;
                case 6:
                    main->currentBG = 0x5E;
                    break;
                case 7:
                    main->currentBG = 0x57;
                    break;
                case 8:
                    main->currentBG = 0x56;
                    break;
                case 9:
                    main->currentBG = 0x52;
                    break;
                case 10:
                    main->currentBG = 0x58;
                    break;
                case 11:
                    main->currentBG = 0x59;
                    break;
                default: 
                    break;
            }
            sub_8001830(main->currentBG);
            DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
            DmaCopy16(3, gMapMarker, gSaveDataBuffer.mapMarker, sizeof(gMapMarker));
            for(i = 0; i < 8; i++)
                gMapMarker[i].id |= 0xFF;
            if(main->processCopy[GAME_PROCESS] == 4)
            {
                oam = &gOamObjects[49];
                for(i = 0; i < 4; i++)
                {
                    oam->attr0 &= ~0x300;
                    oam->attr0 |= (ST_OAM_AFFINE_ERASE << 8);
                    oam++;
                }
            }
            else if(main->processCopy[GAME_PROCESS] == 5)
            {
                oam = &gOamObjects[49];
                oam->attr0 = SPRITE_ATTR0_CLEAR;
            }
            else if(main->processCopy[GAME_PROCESS] == 6)
            {
                oam = &gOamObjects[55];
                oam->attr0 &= ~0x300;
                oam->attr0 |= (ST_OAM_AFFINE_ERASE << 8);
                oam++;
                oam->attr0 &= ~0x300;
                oam->attr0 |= (ST_OAM_AFFINE_ERASE << 8);
            }
            if(gScriptContext.unk0 & 0x400)
            {
                oam = &gOamObjects[88];
                oam->attr0 = SPRITE_ATTR0_CLEAR;
            }
            gSaveDataBuffer.main.showTextboxCharacters = main->showTextboxCharacters;
            main->showTextboxCharacters = FALSE;
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG2_ON;
            main->unk1F &= ~(2 | 1);
            sub_800EB6C(courtRecord);
            sub_800EB88(0);
            sub_800ECA8(1);
            oam = gOamObjects;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            main->process[GAME_PROCESSUNK2]++;
            break;
        }
        case 1:
            sub_8001A9C(main->currentBG);
            StartHardwareBlend(1, 1, 2, 0x1F);
            main->process[GAME_PROCESSUNK2]++;
            break;
        case 2:
            if(main->blendMode != 0)
                break;
            if(gJoypad.pressedKeysRaw & (L_BUTTON | B_BUTTON))
            {
                PlaySE(0x2C);
                StartHardwareBlend(2, 1, 1, 0x1F);
                main->process[GAME_PROCESSUNK2]++;
            }
            else if(gJoypad.pressedKeysRaw & (DPAD_DOWN | A_BUTTON))
            {
                evidenceId = courtRecord->unk14[courtRecord->unkD];
                if(gUnknown_08018A6C[evidenceId].unk6 == 9 || gUnknown_08018A6C[evidenceId].unk6 == 2)
                {
                    PlaySE(0x2B);
                    courtRecord->unk13++;
                    if(courtRecord->unk13 > 2)
                        courtRecord->unk13 = 0;
                    StartHardwareBlend(2, 1, 2, 0x1F);
                    main->process[GAME_PROCESSUNK2] = 6;
                }
            }
            break;
        case 3:
        {
            u32 i;
            if(main->blendMode != 0)
                break;
            main->currentBG = gSaveDataBuffer.main.currentBG;
            main->previousBG = gSaveDataBuffer.main.previousBG;
            main->unk2C = gSaveDataBuffer.main.unk2C;
            main->isBGScrolling = gSaveDataBuffer.main.isBGScrolling;
            main->unk2F = gSaveDataBuffer.main.unk2F;
            main->unk30 = gSaveDataBuffer.main.unk30;
            main->unk32 = gSaveDataBuffer.main.unk32;
            main->unk34 = gSaveDataBuffer.main.unk34;
            main->unk36 = gSaveDataBuffer.main.unk36;
            main->unk38 = gSaveDataBuffer.main.unk38;
            main->unk3A = gSaveDataBuffer.main.unk3A;
            main->horizontolBGScrollSpeed = gSaveDataBuffer.main.horizontolBGScrollSpeed;
            main->verticalBGScrollSpeed = gSaveDataBuffer.main.verticalBGScrollSpeed;
            main->unk3E = gSaveDataBuffer.main.unk3E;
            main->unk3F = gSaveDataBuffer.main.unk3F;
            main->unk40 = gSaveDataBuffer.main.unk40;
            for(i = 0; i < 12; i++)
            {
                main->unk44[i] = gSaveDataBuffer.main.unk44[i];
            }
            sub_8001830(main->currentBG);
            sub_80020B0(main->currentBG);
            main->showTextboxCharacters = gSaveDataBuffer.main.showTextboxCharacters;
            gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
            gIORegisters.lcd_dispcnt |= DISPCNT_BG2_ON;
            DmaCopy16(3, gSaveDataBuffer.oam, gOamObjects, sizeof(gOamObjects));
            DmaCopy16(3, gSaveDataBuffer.mapMarker, gMapMarker, sizeof(gMapMarker));
            sub_80074E8();
            if(main->processCopy[GAME_PROCESS] == 5)
                gTestimony.unk1 = 0;
            main->unk1F |= (2 | 1);
            sub_8002878(&gCourtRecord);
            sub_800E9D4(&gCourtRecord);
            main->process[GAME_PROCESSUNK2]++;
            break;
        }
        case 4:
            sub_80020B0(main->currentBG);
            StartHardwareBlend(1, 1, 2, 0x1F);
            main->process[GAME_PROCESSUNK2]++;
            break;
        case 5:
        {
            if(main->blendMode == 0)
            {
                UnpauseBGM();
                main->process[GAME_SUBPROCESS] = 1;
                main->process[GAME_PROCESSUNK2] = 0;
            }
            sub_8002878(&gCourtRecord);
            sub_800E9D4(&gCourtRecord);
            break;
        }
        case 6:
        {
            if(main->blendMode != 0)
                break;
            evidenceId = courtRecord->unk14[courtRecord->unkD];
            if(gUnknown_08018A6C[evidenceId].unk6 == 2)
            {
                switch(courtRecord->unk13)
                {
                    case 0:
                        main->currentBG = 0x2D;
                        break;
                    case 1:
                        main->currentBG = 0x2E;
                        break;
                    case 2:
                        main->currentBG = 0x30;
                        break;
                }
            }
            else
            {
                switch(courtRecord->unk13)
                {
                    case 0:
                        main->currentBG = 0x52;
                        break;
                    case 1:
                        main->currentBG = 0x53;
                        break;
                    case 2:
                        main->currentBG = 0x54;
                        break;
                }
            }
            sub_8001830(main->currentBG);
            sub_8001A9C(main->currentBG);
            StartHardwareBlend(1, 1, 2, 0x1F);
            main->process[GAME_PROCESSUNK2] = 1;
            break;
        }
        default:
            break;
    }
}

void sub_800E488(struct Main * main, struct CourtRecord * courtRecord)
{
    sub_800EA80(courtRecord->unk14[courtRecord->unkD]);
    main->process[GAME_SUBPROCESS] = 3;
}

void sub_800E4A4(struct Main * main, struct CourtRecord * courtRecord)
{
    struct OamAttrs * oam = &gOamObjects[57];
    u32 evidenceId;
    u32 temp;

    switch(main->process[GAME_PROCESSUNK2])
    {
        case 0:
            main->unk84 = 0;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            if(courtRecord->unk1 == 0)
            {
                u32 offset;
                PlayAnimation(4);
                PlaySE(0x37);
                gTestimony.unk1 = 6;
                evidenceId = courtRecord->unk14[courtRecord->unkD];
                offset = gUnknown_08018A6C[evidenceId].unk4 * (TILE_SIZE_4BPP * 64 + 0x20);
                temp = 0x81B290C + offset;
                DmaCopy16(3, temp, OBJ_PLTT+0x20, 0x20);
                temp = 0x81B290C + offset + 0x20;
                DmaCopy16(3, temp, OBJ_VRAM0+0x1000, TILE_SIZE_4BPP * 64);
                oam->attr0 = SPRITE_ATTR0(16, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(88, FALSE, FALSE, 3);
                oam->attr2 = SPRITE_ATTR2(0x80, 0, 1);
                main->unk7F = 0;
                main->unk84 = 0x100;
                gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
                main->advanceScriptContext = FALSE;
                main->showTextboxCharacters = FALSE;
                main->process[GAME_PROCESSUNK2]++;
                main->process[GAME_PROCESSUNK3] = 0;
            }
            break;
        case 1:
        case 2:
            if(main->process[GAME_PROCESSUNK3] >= 8)
            {
                StartHardwareBlend(3, 1, 6, 0x1F);
                main->process[GAME_PROCESSUNK2]++;
                main->process[GAME_PROCESSUNK3] = 0;
            }
            else
                main->process[GAME_PROCESSUNK3]++;
            break;
        case 3:
            if(main->process[GAME_PROCESSUNK3] >= 56)
            {
                u32 section;
                oam->attr0 = SPRITE_ATTR0_CLEAR;
                gInvestigation.unkE = 0;
                gInvestigation.unkF = 8;
                gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
                main->advanceScriptContext = TRUE;
                main->showTextboxCharacters = TRUE;
                section = sub_800EE20(gScriptContext.currentSection, courtRecord->unk14[courtRecord->unkD]);
                if(section)
                {
                    ChangeScriptSection(section);
                    RESTORE_PROCESS_PTR(main);
                    return;
                }
                temp = gScriptContext.currentSection;
                if(gScriptContext.unk0 & 0x10)
                {
                    temp++;
                    ChangeScriptSection(temp);
                }
                else
                {
                    u32 rand = Random() & 3; 
                    switch(rand)
                    {
                        case 0:
                            ChangeScriptSection(0x1A);
                            break;
                        case 1:
                            ChangeScriptSection(0x1B);
                            break;
                        case 2:
                            ChangeScriptSection(0x1C);
                            break;
                        case 3:
                            ChangeScriptSection(0x1D);
                            break;
                        default:
                            break;
                    }
                    gScriptContext.nextSection = temp;
                }
                gScriptContext.unk0 &= ~0x10;
                RESTORE_PROCESS_PTR(main);
                return;
            }
            main->process[GAME_PROCESSUNK3]++;
            main->unk7F += 12;
            main->unk84 -= 8;
            break;
        default:
            break;
    }
    if(main->unk84 <= 4)
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    else
    {
        s32 scale;
        scale = fix_inverse(main->unk84);
        gOamObjects[0].attr3 = fix_mul(_Cos(main->unk7F), scale);
        gOamObjects[1].attr3 = fix_mul(_Sin(main->unk7F), scale);
        gOamObjects[2].attr3 = fix_mul(-_Sin(main->unk7F), scale);
        gOamObjects[3].attr3 = fix_mul(_Cos(main->unk7F), scale);
        oam->attr0 = SPRITE_ATTR0(16, ST_OAM_AFFINE_NORMAL, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_AFFINE(88, 0, 3);
        oam->attr2 = SPRITE_ATTR2(0x80, 0, 1);
    }
    sub_8002878(&gCourtRecord);
    sub_800E9D4(&gCourtRecord);
}

void sub_800E75C(struct Main * main, struct CourtRecord * courtRecord)
{
    u32 i;
    u16 * map = gBG2MapBuffer;
    for(i = 0; i < 0x400; i++, map++)
        *map = 0;
    gIORegisters.lcd_dispcnt |= DISPCNT_BG2_ON;
    sub_800E914();
    sub_800EA80(main->unk27);
    ChangeBGMVolume(main->bgmVolume >> 1, 4);
    PlaySE(0xF);
    main->process[GAME_SUBPROCESS]++;
    main->process[GAME_PROCESSUNK2] = 0;
}

void sub_800E7C0(struct Main * main, struct CourtRecord * courtRecord)
{
    sub_8002878(courtRecord);
    sub_800EAF8(courtRecord);
    if(courtRecord->unk1 == 0 && gScriptContext.unk0 & 1)
    {
        if(main->process[GAME_PROCESSUNK2] == 0)
        {
            ChangeBGMVolume(0x100, 0x1E);
            main->process[GAME_PROCESSUNK2] = 1;
        }
        if(gJoypad.pressedKeysRaw & (A_BUTTON|B_BUTTON))
        {
            PlaySE(0x2B);
            sub_80024C8(3, 0xE);
            main->process[GAME_SUBPROCESS] = 2; //! ADD 1 IDIOT
        }
    }
}

void sub_800E828(struct Main * main, struct CourtRecord * courtRecord)
{
    sub_8002878(courtRecord);
    sub_800EAF8(courtRecord);
    if(courtRecord->unk1 == 0)
    {
        RESTORE_PROCESS_PTR(main);
        if(gMain.process[GAME_PROCESS] == 4)
        {
            if(gMain.process[GAME_SUBPROCESS] == 6)
                sub_800B7A8(&gInvestigation, 1);
            else if(main->process[GAME_SUBPROCESS] == 8) //! why?? why???? why are you using that pointer when the other ones are noooot
                sub_800B7A8(&gInvestigation, 4);
            else if(gMain.process[GAME_SUBPROCESS] == 9)
                sub_800B7A8(&gInvestigation, 8);
        }
        gScriptContext.unk0 |= 2;
    }
}

void sub_800E8A0(struct CourtRecord * courtRecord)
{
    courtRecord->unk9++;
    if(courtRecord->unk9 > 4)
    {
        courtRecord->unk9 = 0;
        courtRecord->unk8++;
        courtRecord->unk8 &= 3;
        DmaCopy16(3, (u8*)0x818BD40 + gUnknown_08018DCC[courtRecord->unk8] * 32, OBJ_VRAM0+0x3400, TILE_SIZE_4BPP*4);
        DmaCopy16(3, (u8*)0x818BD40 + gUnknown_08018DD0[courtRecord->unk8] * 32, OBJ_VRAM0+0x3480, TILE_SIZE_4BPP*4);
    }
}

void sub_800E914()
{
    sub_80024C8(1, 0xC);
    DmaCopy16(3, (u8*)0x818BD40, OBJ_VRAM0+0x3400, TILE_SIZE_4BPP*4);
    DmaCopy16(3, (u8*)0x818BD40 + TILE_SIZE_4BPP*4 * 3, OBJ_VRAM0+0x3480, TILE_SIZE_4BPP*4);
    DmaCopy16(3, (u8*)0x818F4C0, OBJ_VRAM0+0x3800, TILE_SIZE_4BPP*16);
    DmaCopy16(3, (u8*)0x81904C0, OBJ_VRAM0+0x3A00, TILE_SIZE_4BPP*16);
    DmaCopy16(3, (u8*)0x81906C0, OBJ_VRAM0+0x3500, TILE_SIZE_4BPP*16);
    DmaCopy16(3, (u8*)0x81940E0, OBJ_PLTT+0x60, 0x20);
    DmaCopy16(3, (u8*)0x8194240, OBJ_PLTT+0x80, 0x20);
    DmaCopy16(3, (u8*)0x8186520, OBJ_PLTT+0x40, 0x20);
}

void sub_800E9D4(struct CourtRecord * courtRecord)
{
    struct OamAttrs * oam;
    sub_800EAF8(courtRecord);
    if(courtRecord->unkC & 4)
    {
        sub_800E8A0(courtRecord);
        oam = gOamObjects;
        if(courtRecord->unkE > 1)
            oam->attr0 = SPRITE_ATTR0(48, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        else
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 1);
        oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 3);
        oam++;
        if(courtRecord->unkE > 1)
            oam->attr0 = SPRITE_ATTR0(48, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        else
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-16, FALSE, FALSE, 1);
        oam->attr2 = SPRITE_ATTR2(0x1A4, 0, 3);
        if(gMain.process[GAME_PROCESSUNK3] == 0)
            sub_800EB88(1);
        else
            sub_800EBF0(1);
        return;
    }
    else
    {
        oam = gOamObjects;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        if(gMain.process[GAME_PROCESSUNK3] == 0)
            sub_800EB88(0);
        else
            sub_800EBF0(0);
    }
}

void sub_800EA80(u32 evidenceId)
{
    u32 offset;
    u8 * src;

    offset = gUnknown_08018A6C[evidenceId].unk4 * (TILE_SIZE_4BPP * 64 + 0x20);
    src = (u8*)0x81B290C + offset;
    DmaCopy16(3, src, OBJ_PLTT+0x20, 0x20);
    src = (u8*)0x81B290C + offset + 0x20;
    DmaCopy16(3, src, OBJ_VRAM0+0x5000, TILE_SIZE_4BPP * 64);
    src = gUnknown_08018A6C[evidenceId].descriptionTiles;
    LZ77UnCompWram(src, eUnknown_0200AFC0);
    DmaCopy16(3, eUnknown_0200AFC0, (void *)OBJ_VRAM0+0x3C00, TILE_SIZE_4BPP * 160);
}

void sub_800EAF8(struct CourtRecord * courtRecord)
{
    struct OamAttrs * oam = &gOamObjects[34];
    u32 i;

    oam->attr0 = SPRITE_ATTR0(24, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    oam->attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 3);
    oam->attr1 += courtRecord->unk4;
    oam->attr2 = SPRITE_ATTR2(0x280, 0, 1);
    oam++;
    for(i = 0; i < 5; i++)
    {
        oam->attr0 = SPRITE_ATTR0(24, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(72 + i*32, FALSE, FALSE, 2);
        oam->attr1 += courtRecord->unk4;
        oam->attr2 = SPRITE_ATTR2(0x1E0 + i*0x10, 0, 2);
        oam++;
    }
    for(i = 0; i < 5; i++)
    {
        oam->attr0 = SPRITE_ATTR0(56, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(72 + i*32, FALSE, FALSE, 2);
        oam->attr1 += courtRecord->unk4;
        oam->attr2 = SPRITE_ATTR2(0x230 + i*0x10, 0, 2);
        oam++;
    }
}

void sub_800EB6C(struct CourtRecord * courtRecord)
{
    struct OamAttrs * oam = &gOamObjects[34];
    u32 i;
    oam->attr0 = SPRITE_ATTR0_CLEAR;
    oam++;
    for(i = 0; i < 10; i++)
    {
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
    }
}

void sub_800EB88(bool32 showSprites)
{
    struct OamAttrs * oam = &gOamObjects[45];
    if(showSprites)
    {
        oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(160, FALSE, FALSE, 1);
        oam->attr2 = SPRITE_ATTR2(0x1C8, 0, 4);
        oam++;
        oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(176, FALSE, FALSE, 2);
        oam->attr2 = SPRITE_ATTR2(0x1A8, 0, 4);
        oam++;
        oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(208, FALSE, FALSE, 2);
        oam->attr2 = SPRITE_ATTR2(0x1B0, 0, 4);
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
    else
    {
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
}

void sub_800EBF0(bool32 showSprites)
{
    struct OamAttrs * oam = &gOamObjects[45];
    if(showSprites)
    {
        if(gMain.gameStateFlags & 0x100)
        {
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(200, FALSE, FALSE, 1);
            oam->attr2 = SPRITE_ATTR2(0x1C0, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(216, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x1D0, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        }
        else
        {
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(140, FALSE, FALSE, 1);
            oam->attr2 = SPRITE_ATTR2(0x1C0, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(156, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x1D0, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(200, FALSE, FALSE, 1);
            oam->attr2 = SPRITE_ATTR2(0x1C4, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(216, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x1D8, 0, 4);
        }
    }
    else
    {
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
}

void sub_800ECA8(bool32 showSprites)
{
    struct OamAttrs * oam = &gOamObjects[45];
    
    oam->attr0 = SPRITE_ATTR0_CLEAR;
    oam++;
    oam->attr0 = SPRITE_ATTR0(144, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    oam->attr1 = SPRITE_ATTR1_NONAFFINE(184, FALSE, FALSE, 1);
    oam->attr2 = SPRITE_ATTR2(0x1C4, 0, 4);
    oam++;
    oam->attr0 = SPRITE_ATTR0(144, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    oam->attr1 = SPRITE_ATTR1_NONAFFINE(200, FALSE, FALSE, 1);
    oam->attr2 = SPRITE_ATTR2(0x1CC, 0, 4);
    oam++;
    oam->attr0 = SPRITE_ATTR0(144, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
    oam->attr1 = SPRITE_ATTR1_NONAFFINE(216, FALSE, FALSE, 2);
    oam->attr2 = SPRITE_ATTR2(0x1D8, 0, 4);
}

s32 FindEvidenceInCourtRecord(u32 isProfile, u32 evidenceId)
{
    u8 * list;
    u32 evidenceCount;
    u32 i;

    if(isProfile)
    {
        list = gCourtRecord.profileList;
        evidenceCount = gCourtRecord.unk11;
    }
    else
    {
        list = gCourtRecord.evidenceList;
        evidenceCount = gCourtRecord.unk10;
    }
    for(i = 0; i < evidenceCount; i++, list++)
    {
        if(*list == evidenceId)
            return i;
    }
    return -1;
}

s32 FindFirstEmptySlotInCourtRecord(u32 isProfile)
{
    u32 i;
    u8 * list = gCourtRecord.evidenceList;
    if(isProfile)
        list = gCourtRecord.profileList;
    for(i = 0; i < 0x20; i++, list++)
    {
        if(*list == 0xFF)
            return i;
    }
    return -1;
}

void SortCourtRecordAndSyncListCount(struct CourtRecord * courtRecord)
{
    u8 * ewram = eUnknown_0200AFC0;
    u32 i;

    DmaCopy16(3, courtRecord->profileList, ewram, 0x20);
    DmaFill16(3, 0xFFFF, courtRecord->profileList, 0x20);
    courtRecord->unk11 = 0;
    for(i = 0; i < 0x20; i++)
    {
        if(ewram[i] != 0xFF)
        {
            courtRecord->profileList[courtRecord->unk11] = ewram[i];
            courtRecord->unk11++;
        }
    }
    DmaCopy16(3, courtRecord->evidenceList, ewram, 0x20);
    DmaFill16(3, 0xFFFF, courtRecord->evidenceList, 0x20);
    courtRecord->unk10 = 0;
    for(i = 0; i < 0x20; i++)
    {
        if(ewram[i] != 0xFF)
        {
            courtRecord->evidenceList[courtRecord->unk10] = ewram[i];
            courtRecord->unk10++;
        }
    }
}

u32 sub_800EE20(u32 section, u32 evidenceId)
{
    struct Struct811DC54 * struct811DC54p;
    struct811DC54p = gUnknown_0811DC54[gMain.scenarioIdx];
    for(; struct811DC54p->unk0 != 0xFFFF; struct811DC54p++)
    {
        if(struct811DC54p->unk6 != 0xFF)
        {
            if(!GetFlag(0, struct811DC54p->unk6))
                continue;
        }
        if(struct811DC54p->unk0 == section && struct811DC54p->unk2 == evidenceId)
        {
            if(struct811DC54p->unk7)
                gScriptContext.unk33 = 0;
            else
                gScriptContext.unk33 = 1;
            return struct811DC54p->unk4;
        }
    }
    gScriptContext.unk33 = 0;
    return 0;
}

u32 sub_800EEA4(struct Main * main, u32 evidenceId)
{
    struct Struct811DC98 * struct811DC98p;
    u32 retVal; // why just why

    struct811DC98p = gUnknown_0811DC98[main->scenarioIdx];
    retVal = struct811DC98p->unk6;
    for(; struct811DC98p->unk3 != 0xFF; struct811DC98p++)
    {
        if(gAnimation[1].unkC.unk2[0] == struct811DC98p->unk2)
        {
            if(main->currentRoomId == struct811DC98p->unk0)
            {
                retVal = struct811DC98p->unk6;
                if(evidenceId == struct811DC98p->unk1)
                    return struct811DC98p->unk4;
            }
        }
    }

    return retVal;
}

void sub_800EEFC(struct Main * main)
{
    struct OamAttrs * oam = &gOamObjects[88];
    switch(main->unk7D)
    {
        case 0:
        default:
            break;
        case 1:
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            DmaCopy16(3, &gOamObjects[88], OAM+88*8, 0x8);
            if(main->unk7E == 0)
                main->unk82 = 4;
            else
                main->unk82 = 6;
            main->unk7D++;
        case 2: // fallthrough
            sub_800F134(main);
            if(main->unk82 == 2)
            {
                gBG0MapBuffer[GET_MAP_TILE_INDEX(1, 1, 0, 0)] = 0;
                gBG0MapBuffer[GET_MAP_TILE_INDEX(1, 2, 0, 0)] = 0;
                gBG0MapBuffer[GET_MAP_TILE_INDEX(2, 1, 0, 0)] = 0;
                gBG0MapBuffer[GET_MAP_TILE_INDEX(2, 2, 0, 0)] = 0;
                gBG0MapBuffer[GET_MAP_TILE_INDEX(1, 28, 0, 0)] = 0;
                gBG0MapBuffer[GET_MAP_TILE_INDEX(1, 27, 0, 0)] = 0;
                gBG0MapBuffer[GET_MAP_TILE_INDEX(2, 28, 0, 0)] = 0;
                gBG0MapBuffer[GET_MAP_TILE_INDEX(2, 27, 0, 0)] = 0;
                main->unk7D = 0;
            }
            break;
        case 3:
            sub_800F0E0(main);
            if(main->unk7E == 0)
            {
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(16, FALSE, FALSE, 3);
                main->unk82 = 3;
            }
            else
            {
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(160, FALSE, FALSE, 3);
                main->unk82 = 5;
            }
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam->attr2 = SPRITE_ATTR2(0x80, 0, 1);
            main->unk7D++;
        case 4: // fallthrough
            if(main->process[GAME_PROCESS] == 0xA)
            {
                main->unk7D = 6;
                return;
            }    
            sub_800F134(main);
            if(main->unk82 == 1)
                oam->attr0 = SPRITE_ATTR0(16, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            
            if(main->process[GAME_PROCESS] > 6)
            {
                oam->attr0 = SPRITE_ATTR0_CLEAR;
                DmaCopy16(3, &gOamObjects[88], OAM+88*8, 0x8);
                gIORegisters.lcd_dispcnt &= ~DISPCNT_BG0_ON;
                main->unk7D++;
            }
            break;
        case 5:
            if(main->process[GAME_PROCESS] <= 6)
            {
                sub_800F0E0(main);
                oam->attr0 = SPRITE_ATTR0(16, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                if(main->unk7E == 0)
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(16, FALSE, FALSE, 3);
                else
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(160, FALSE, FALSE, 3);
                oam->attr2 = SPRITE_ATTR2(0x80, 0, 1);
                gIORegisters.lcd_dispcnt |= DISPCNT_BG0_ON;
                main->unk7D = 4;
            }
            break;
        case 6:
            if(main->process[GAME_PROCESS] != 0xA)
                main->unk7D = 5;
            break;
    }
}

void sub_800F0E0(struct Main * main)
{
    u32 offset;
    u8 * src;

    offset = gUnknown_08018A6C[main->unk7C].unk4 * (TILE_SIZE_4BPP * 64 + 0x20);
    src = (u8*)0x81B290C + offset;
    DmaCopy16(3, src, OBJ_PLTT+0x20, 0x20);
    src = (u8*)0x81B290C + offset + 0x20;
    DmaCopy16(3, src, OBJ_VRAM0+0x1000, TILE_SIZE_4BPP * 64);
}

void sub_800F134(struct Main * main)
{
    u16 * map;
    u32 i;

    if(main->unk82 > 2)
    {
        map = gBG0MapBuffer+32; // start at y 1
        for(i = 0; i < 0x140; i++, map++)
            *map = 0;
    }
    switch(main->unk82)
    {
        case 0:
        case 1:
        case 2:
        default:
            break;
        case 3:
        case 4:
            map = gBG0MapBuffer+32+1;
            map++;
            for(i = 0; i < main->unk80+1; i++)
            {
                u32 j;
                for(j = 0; j < main->unk80; j++)
                    *map++ = 0x38;
                map += (0x20 - main->unk80);
            }
            map = gBG0MapBuffer+32+1;
            *map++ = 0x30;
            for(i = 0; i < main->unk80; i++)
                *map++ = 0x31;
            *map++ = 0x32;
            map = gBG0MapBuffer+32+1; 
            map += main->unk80*32 + 32;
            *map++ = 0x35;
            for(i = 0; i < main->unk80; i++)
                *map++ = 0x36;
            *map++ = 0x37;
            map = gBG0MapBuffer+32+1;
            map += 32;
            for(i = 0; i < main->unk80; i++)
            {
                *map = 0x33;
                map[main->unk80+1] = 0x34;
                map += 32;
            }
            break;
        case 5:
        case 6:
            map = gBG0MapBuffer+32+28;
            map--;
            for(i = 0; i < main->unk80+1; i++)
            {
                u32 j;
                for(j = 0; j < main->unk80; j++)
                    *map-- = 0x38;
                map += (0x20 + main->unk80);
            }
            map = gBG0MapBuffer+32+28;
            *map-- = 0x32;
            for(i = 0; i < main->unk80; i++)
                *map-- = 0x31;
            *map-- = 0x30;
            map = gBG0MapBuffer+32+28;
            map += main->unk80*32 + 32;
            *map-- = 0x37;
            for(i = 0; i < main->unk80; i++)
                *map-- = 0x36;
            *map-- = 0x35;
            map = gBG0MapBuffer+32+28;
            map += 32;
            for(i = 0; i < main->unk80; i++)
            {
                *map = 0x34;
                map[-main->unk80-1] = 0x33;
                map += 32;
            }
        break;
    }
    main->unk81++;
    if(main->unk81 > 0)
    {
        main->unk81 = 0;
        if(main->unk82 == 4 || main->unk82 == 6)
        {
            if(main->unk80 > 0)
            {
                main->unk80--;
                return;
            }
            main->unk82 = 2;
        }
        else
        {
            if(main->unk80 < 8)
            {
                main->unk80++;
                return;
            }
            main->unk82 = 1;
        }
    }
}
