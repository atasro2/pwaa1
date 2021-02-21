// this file was an accident, process 4 was split out incorrectly
// the functions in here aren't for process 9 either which is just fucking weird
// these 2 functions are related to displaying the remaining penalty court, also called credibility in PLvAA
#include "global.h"

void sub_800B51C(struct Main * main, struct TestimonyStruct * testimony, u32 unk2)
{
    u32 i;
    struct OamAttrs * oam;
    if(gScriptContext.holdItSection == 0 || unk2 == 0)
    {
        oam = &gOamObjects[53];
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam = &gOamObjects[35];
        for(i = 0; i < 5; i++)
        {
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
        }
        return;
    }
    if(testimony->unk0 == 1)
    {
        if(testimony->unk2 > 224)
            testimony->unk2 -= 2;
        else
            testimony->unk2 = 224;

        if(testimony->unk3 > 224)
            testimony->unk3 -= 2;
        else
            testimony->unk3 = 224;

        if(testimony->unk4 < 240)
            testimony->unk4 += 8;
    }
    else if(testimony->unk0 == 0)
    {
        if(testimony->unk2 > 0)
            testimony->unk2 += 2;

        if(testimony->unk3 > 0)
            testimony->unk3 += 2;

        if(testimony->unk4 > 160)
            testimony->unk4 -= 4;
    }
    oam = &gOamObjects[53];
    if(gScriptContext.holdItSection < 0x80)
    {
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
    else
    {
        u32 attr1; // needed for matching
        oam->attr0 = testimony->unk2 | 0x4000;
        attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 2);
        oam->attr1 = attr1;
        oam->attr2 = SPRITE_ATTR2(0x180, 1, 5);
        oam++;
        oam->attr0 = testimony->unk2 | 0x4000;
        attr1 = SPRITE_ATTR1_NONAFFINE(32, FALSE, FALSE, 2);
        oam->attr1 = attr1;
        oam->attr2 = SPRITE_ATTR2(0x188, 1, 5);
        oam++;
        oam->attr0 = testimony->unk3 | 0x4000;
        attr1 = SPRITE_ATTR1_NONAFFINE(176, FALSE, FALSE, 2);
        oam->attr1 = attr1;
        oam->attr2 = SPRITE_ATTR2(0x190, 1, 5);
        oam++;
        oam->attr0 = testimony->unk3 | 0x4000;
        attr1 = SPRITE_ATTR1_NONAFFINE(208, FALSE, FALSE, 2);
        oam->attr1 = attr1;
        oam->attr2 = SPRITE_ATTR2(0x198, 1, 5);
    }
    sub_800B638(main, testimony);
}

void sub_800B638(struct Main * main, struct TestimonyStruct * testimony)
{
    struct OamAttrs * oam = &gOamObjects[35];
    u32 i;
    for(i = 0; i < 5; i++)
    {
        if(main->previousHealth != 0xFF && (i == 5-main->previousHealth))
        {
            s32 scale = fix_inverse(0x200);
            gOamObjects[0].attr3 = fix_mul(0x100, scale);
            gOamObjects[1].attr3 = fix_mul(0, scale);
            gOamObjects[2].attr3 = fix_mul(0, scale);
            gOamObjects[3].attr3 = fix_mul(0x100, scale);
            main->unk89++; // doing pre increment in the if here doesn't match, hilarious
            if(main->unk89 > 2)
            {
                main->unk89 = 0;
                if(main->unk88 <= 8)
                {
                    u8 * ptr = gUnknown_0818C040 + main->unk88 * 0x80;
                    DmaCopy16(3, ptr, OBJ_VRAM0+0x3700, 0x80);
                    main->unk88++;
                }
                else
                    main->previousHealth = 0xFF;
            }
            if(main->unk88 > 4)
                oam->attr0 = SPRITE_ATTR0(8, ST_OAM_AFFINE_DOUBLE, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            else
                oam->attr0 = SPRITE_ATTR0(16, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            if(main->unk88 <= 8)
            {
                if(main->unk88 > 4)
                    oam->attr1 = SPRITE_ATTR1_AFFINE(0, 0, 1) + testimony->unk4 + i * 0x10 - 8;
                else
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 1) + testimony->unk4 + i * 0x10;
            }
            else
                oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam->attr2 = SPRITE_ATTR2(0x1B8, 2, 3);
        }
        else if(i >= 5-main->health)
        {
            oam->attr0 = SPRITE_ATTR0(16, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 1) + testimony->unk4 + i * 0x10;
            oam->attr2 = SPRITE_ATTR2(0x1BC, 2, 3);
        }
        else
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
    }
}
