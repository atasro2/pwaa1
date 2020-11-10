#include "global.h"
#include "animation.h"
#include "sound_control.h"
#include "ewram.h"
#include "background.h"

void sub_800AA10(struct Main * main)
{
    struct AnimationStruct * animation;
    struct AnimationStruct * animation2;
    struct AnimationStruct * animation3;
    switch(main->process[GAME_PROCESSUNK2])
    {
        case 0:
            PlayAnimation(0x15);
            PlayAnimation(0x16);
            PlaySE(0x53);
            //gTestimony.unk6 = 0;
            main->process[GAME_PROCESSUNK2]++;
            break;
        case 1:
            animation = FindAnimationFromAnimId(0x15);
            animation2 = FindAnimationFromAnimId(0x16);
            animation->unkC.xOrigin += 10;
            animation->flags |= 0x20000000;
            animation2->unkC.xOrigin -= 10;
            animation2->flags |= 0x20000000;
            if(animation->unkC.xOrigin >= 120)
            {
                StartHardwareBlend(3, 1, 8, 0x1F);
                DestroyAnimation(animation);
                DestroyAnimation(animation2);
                PlayAnimation(0x12);
                main->process[GAME_PROCESSUNK2]++;
            }
            break;
        case 2: // why not just do it in the next case like please
            if(main->blendMode == 0)
                main->process[GAME_PROCESSUNK2]++;
            break;
        case 3:
            animation3 = FindAnimationFromAnimId(0x12);
            if(!(animation3->flags & 0x80000000))
            {
                DestroyAnimation(animation3);
                PlayAnimationAtCustomOrigin(0x15, 120, 60);
                PlayAnimationAtCustomOrigin(0x16, 120, 60);
                main->process[GAME_PROCESSUNK2]++;
            }
            break;
        case 4:
            animation = FindAnimationFromAnimId(0x15);
            animation2 = FindAnimationFromAnimId(0x16);
            animation->unkC.yOrigin -= 7;
            animation->flags |= 0x20000000;
            animation2->unkC.yOrigin += 7;
            animation2->flags |= 0x20000000;
            if(animation->unkC.yOrigin < -60)
            {
                DestroyAnimation(animation);
                DestroyAnimation(animation2);
                main->process[GAME_SUBPROCESS] = 1;
                main->process[GAME_PROCESSUNK2] = 0;
            }
        default:
            break;
    }
}

extern void (*gProcess6SubProcesses[])(struct Main *);

void GameProcess06(struct Main * main)
{
    gProcess6SubProcesses[main->process[GAME_SUBPROCESS]](main);
}

void sub_800AB58(struct Main * main)
{
    DmaCopy16(3, gUnknown_0818C040, OBJ_VRAM0+0x3780, 0x80);
    DmaCopy16(3, gUnknown_081940E0, OBJ_PLTT+0x60, 0x20);
    DmaCopy16(3, gUnknown_081900C0, OBJ_VRAM0+0x3000, 0x400);
    DmaCopy16(3, gUnknown_081942A0, OBJ_PLTT+0xA0, 0x20);
    DmaCopy16(3, gUnknown_0818BD40, 0x1A0, 0x80); // WHAT, HOW
    DmaCopy16(3, gUnknown_0818BEC0, 0x220, 0x80); // WHAT, HOW
    main->unk18 = gScriptContext.currentSection;
    gCourtRecord.unk9 = 0;
    gCourtRecord.unk8++;
    gTestimony.unk4 = 0xF0;
    gTestimony.unk2 = 0xE0;
    gTestimony.unk3 = 0xE0;
    gTestimony.unk0 = 0;
    main->process[GAME_SUBPROCESS] = 3;
}

void sub_800AC1C(struct Main * main)
{
    struct OamAttrs * oam;

    if(main->blendMode)
        return;
    if((gJoypad.pressedKeysRaw & START_BUTTON))
    {
        if(!(main->gameStateFlags & 0x10) && gScriptContext.unk0 & 0xD)
        {
            PauseBGM();
            DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
            DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
            PlaySE(49);
            main->gameStateFlags &= -2; // -2??
            BACKUP_PROCESS_PTR(main);
            SET_PROCESS_PTR(0xA, 0, 0, 0, main);
        }
    }
    else if(gScriptContext.unk0 & 0x8)
    {
        u32 section;
        if(gJoypad.pressedKeysRaw & (A_BUTTON | DPAD_RIGHT))
        {
            section = gScriptContext.nextSection;
            PlaySE(0x2B);
            ChangeScriptSection(section);
            RunScriptContext();
        }
        else if(gJoypad.pressedKeysRaw & (B_BUTTON | DPAD_LEFT))
        {
            if(gScriptContext.currentSection-1 != main->unk18)
            {
                section = gScriptContext.currentSection-1;
                PlaySE(0x2B);
                ChangeScriptSection(section);
                RunScriptContext();
            }
        }
        else if(gJoypad.pressedKeysRaw & L_BUTTON)
        {
            if(gScriptContext.holdItSection != 0)
            {
                PlayAnimation(1);
                PlaySE(0x47);
                StartHardwareBlend(3, 1, 4, 0x1F);
                gTestimony.unk1 = 0x40;
                gTestimony.unk4 = 0xF0;
                gTestimony.unk2 = 0xE0;
                gTestimony.unk3 = 0xE0;
                gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
                main->advanceScriptContext = FALSE;
                main->showTextboxCharacters = FALSE;
                sub_80028B4(0, 0);
                main->process[GAME_SUBPROCESS] = 4;
                main->process[GAME_PROCESSUNK2] = 0;
                return;
            }
        }
        else if(gJoypad.pressedKeysRaw & R_BUTTON)
        {
            PlaySE(0x31);
            BACKUP_PROCESS_PTR(main);
            SET_PROCESS_PTR(7, 0, 0, 1, main);
        }
    }
    else if((gJoypad.pressedKeysRaw & R_BUTTON) &&
    !(main->gameStateFlags & 0x10) &&
    gScriptContext.unk0 & 5)
    {
        PlaySE(0x31);
        BACKUP_PROCESS_PTR(main);
        SET_PROCESS_PTR(7, 0, 0, 0, main);
    }
    //testimony = &gTestimony;
    sub_800B51C(main, &gTestimony, 1);
    if(main->gameStateFlags & 0x400)
    {
        if(gTestimony.unk4 > 0xA0)
            gTestimony.unk4 -= 4;
        sub_800B638(main, &gTestimony);
    }
    sub_800E8A0(&gCourtRecord);
    oam = gOamObjects;
    if(gScriptContext.unk0 & 8)
    {
        if(gScriptContext.currentSection-1 != main->unk18)
            oam->attr0 = SPRITE_ATTR0(128, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        else
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 1);
        oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 3);
        oam++;
        oam->attr0 = SPRITE_ATTR0(128, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-16, FALSE, FALSE, 1);
        oam->attr2 = SPRITE_ATTR2(0x1A4, 0, 3);
    }
    else
    {
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
}

void nullsub_32(struct Main * main)
{

}

void sub_800AE58(struct Main * main)
{
    switch(main->process[GAME_PROCESSUNK2])
    {
        case 0:
            if(gTestimony.unk1 == 0)
            {
                sub_8011108(0, 1, 2, 0);
                InitCourtScroll(gUnknown_08427D88, 0x1E, 0x1F, 1);
                sub_800244C(0);
                main->process[GAME_PROCESSUNK2]++;
                break;
            }
            gTestimony.unk1--;
            break;
        case 1:
            if(gCourtScroll.state)
                break;
            if(gScriptContext.holdItFlag)
            {
                // you had one job capcom one job
                gMain.advanceScriptContext = TRUE;
                gMain.showTextboxCharacters = TRUE;
                gIORegisters.lcd_bg1vofs = 0;
                gScriptContext.unk38 = 0;
            }
            else
                sub_800244C(1);
            ChangeScriptSection(gScriptContext.holdItSection);
            gTestimony.unk4 = 0xF0;
            gTestimony.unk2 = 0xE0;
            gTestimony.unk3 = 0xE0;
            gTestimony.unk0 = 0;
            main->process[GAME_SUBPROCESS] = 1;
            main->process[GAME_PROCESSUNK2] = 0;
            break;
        default:
            break;
    }
    sub_800B51C(main, &gTestimony, 0);
    gOamObjects[0].attr0 = SPRITE_ATTR0_CLEAR;
    gOamObjects[1].attr0 = SPRITE_ATTR0_CLEAR;
}

void sub_800AF2C(struct Main * main)
{
    switch(main->process[GAME_PROCESSUNK2])
    {
        case 0:
            if(gTestimony.unk1 == 0)
            {
                StartHardwareBlend(3, 1, 4, 0x1F);
                gTestimony.unk1 = 0x40;
                main->process[GAME_PROCESSUNK2]++;
                break;
            }
            gTestimony.unk1--;
            break;
        case 1:
            if(gTestimony.unk1 == 0)
            {
                sub_8011108(0, 1, 2, 0x18D0);
                InitCourtScroll(gUnknown_08427D88, 0x1E, 0x1F, 1);
                sub_800244C(0);
                main->process[GAME_PROCESSUNK2]++;
                break;
            }
            gTestimony.unk1--;
            break;
        case 2:
            if(gCourtScroll.state)
                break;
            gTestimony.unk1 = 0x14;
            main->process[GAME_PROCESSUNK2]++;
            break;
        case 3:
            if(gTestimony.unk1 == 0)
            {
                gTestimony.unk4 = 0xF0;
                gTestimony.unk2 = 0xE0;
                gTestimony.unk3 = 0xE0;
                gTestimony.unk0 = 0;
                if(gScriptContext.unk33)
                {
                    gMain.advanceScriptContext = TRUE;
                    gMain.showTextboxCharacters = TRUE;
                    gIORegisters.lcd_bg1vofs = 0;
                    gScriptContext.unk38 = 0;
                }
                else
                    sub_800244C(1);
                RESTORE_PROCESS_PTR(main);
                break;
            } 
            gTestimony.unk1--;
            break;
        default:
            break;
    }
    sub_800B51C(main, &gTestimony, 0);
}