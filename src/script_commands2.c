#include "global.h"
#include "script.h"

bool32 Command40(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->unk0 &= ~0x400;
    gOamObjects[88].attr0 = 0x200;
    return 0;
}

bool32 Command41(struct ScriptContext * scriptCtx)
{
    u32 i;
    struct OamAttrs *oam;
    scriptCtx->scriptPtr++;
    // this has to be outside of the loop, else the load order breaks...
    oam = &gOamObjects[49];
    for(i = 0; i < 4; i++)
    {
        oam->attr0 = SPRITE_ATTR0(224, 0, 0, 0, 0, 1);
        // double check this, the value doesnt show if affine or not
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(0x3C*i, 0, 0, 3);
        oam->attr2 = SPRITE_ATTR2(256+0x20*i, 0, 5);
        oam++;
    }
    sub_800B7A8(&gUnknown_03003A50, 0xF);
    gUnknown_03003A50.unkD = 0xE0;
    gUnknown_03003A50.unkE = 0;
    gUnknown_03003A50.unkF = 8;
    gUnknown_03003A50.unkA = 0;
    gUnknown_03003A50.unkB = 0;
    
    SET_UNK4(0,0,1,4);
    return 0;
}
