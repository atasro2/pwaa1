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
            struct EvidenceProfileData * evidence;
            struct OamAttrs * oam;
            u32 evidenceId;
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
                u32 evidenceId = courtRecord->unk14[courtRecord->unkD];
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
            courtRecord = &gCourtRecord; // what??????????
            sub_8002878(courtRecord);
            sub_800E9D4(courtRecord);
            main->process[GAME_PROCESSUNK2]++;
            break;
        }
        case 4:
            sub_80020B0(main->currentBG);
            StartHardwareBlend(1, 1, 2, 0x1F);
            main->process[GAME_PROCESSUNK2]++;
            break;
        case 5:
            if(main->blendMode == 0)
            {
                UnpauseBGM();
                main->process[GAME_SUBPROCESS] = 1;
                main->process[GAME_PROCESSUNK2] = 0;
            }
            courtRecord = &gCourtRecord; // what??????????
            sub_8002878(courtRecord);
            sub_800E9D4(courtRecord);
            break;
        case 6:
        {
            u32 evidenceId;

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
            sub_80020B0(main->currentBG);
            StartHardwareBlend(1, 1, 2, 0x1F);
            main->process[GAME_PROCESSUNK2] = 1;
            break;
        }
        default:
            break;
    }
}
