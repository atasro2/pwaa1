#include "global.h"
#include "animation.h"
#include "sound.h"
#include "ewram.h"
#include "save.h"
#include "constants/script.h"
#include "constants/animation.h"

void sub_800A730(struct Main * main)
{
    struct AnimationStruct * animation;
    struct AnimationStruct * animation2;
    struct AnimationStruct * animation3;
    switch(main->process[GAME_PROCESSUNK2])
    {
        case 0:
            PlayAnimation(0x13);
            PlayAnimation(0x14);
            PlaySE(0x53);
            gTestimony.unk6 = 0;
            main->process[GAME_PROCESSUNK2]++;
            break;
        case 1:
            animation = FindAnimationFromAnimId(0x13);
            animation2 = FindAnimationFromAnimId(0x14);
            animation->unkC.xOrigin += 10;
            animation->flags |= ANIM_ACTIVE;
            animation2->unkC.xOrigin -= 10;
            animation2->flags |= ANIM_ACTIVE;
            if(animation->unkC.xOrigin >= 120)
            {
                StartHardwareBlend(3, 1, 8, 0x1F);
                DestroyAnimation(animation);
                DestroyAnimation(animation2);
                PlayAnimation(0x11);
                main->process[GAME_PROCESSUNK2]++;
            }
            break;
        case 2: // why not just do it in the next case like please
            if(main->blendMode == 0)
                main->process[GAME_PROCESSUNK2]++;
            break;
        case 3:
            animation3 = FindAnimationFromAnimId(0x11);
            if(!(animation3->flags & ANIM_PLAYING))
            {
                DestroyAnimation(animation3);
                PlayAnimationAtCustomOrigin(0x13, 120, 60);
                PlayAnimationAtCustomOrigin(0x14, 120, 60);
                main->process[GAME_PROCESSUNK2]++;
            }
            break;
        case 4:
            animation = FindAnimationFromAnimId(0x13);
            animation2 = FindAnimationFromAnimId(0x14);
            animation->unkC.xOrigin += gTestimony.unk6;
            animation->flags |= ANIM_ACTIVE;
            animation2->unkC.xOrigin -= gTestimony.unk6;
            animation2->flags |= ANIM_ACTIVE;
            gTestimony.unk6++;
            if(gTestimony.unk6 > 12)
                gTestimony.unk6 = 12;
            if(animation->unkC.xOrigin > 300)
            {
                DestroyAnimation(animation);
                DestroyAnimation(animation2);
                main->process[GAME_SUBPROCESS] = 1;
            }
        default:
            break;
    }
}

extern void (*gProcess5SubProcesses[])(struct Main *);

void GameProcess05(struct Main * main)
{
    gProcess5SubProcesses[main->process[GAME_SUBPROCESS]](main);
}

void sub_800A894(struct Main * main)
{
    DmaCopy16(3, gUnknown_0818F8C0, OBJ_VRAM0+0x3000, 0x800);
    DmaCopy16(3, gUnknown_08194280, OBJ_PLTT+0xA0, 0x20);
    gTestimony.unk1 = 0;
    main->process[GAME_SUBPROCESS] = 3;
}

void sub_800A8E0(struct Main * main)
{
    struct OamAttrs * oam;
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
    gTestimony.unk1++;
    if(gTestimony.unk1 > 100)
        gTestimony.unk1 = 0;
    oam = &gOamObjects[49];
    if(gTestimony.unk1 <= 80)
    {
        oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x180, 2, 5);
    }
    else
        oam->attr0 = SPRITE_ATTR0_CLEAR;
}

void sub_800A9FC(struct Main * main)
{
    struct OamAttrs * oam = &gOamObjects[49];
    oam->attr0 = SPRITE_ATTR0_CLEAR;
    SET_PROCESS_PTR(3, 1, 0, 0, main);
}