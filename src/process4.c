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