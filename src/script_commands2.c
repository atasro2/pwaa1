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

bool32 Command42(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
    {
        gMain.unk198 &= ~4;
    }
    else
    {
        gMain.unk198 |= 4;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command43(struct ScriptContext * scriptCtx)
{
    u32 i;
    struct OamAttrs *oam;
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
    {
        gUnknown_03003AB0.unk4 = 0xF0;
        gMain.unkB4 |= 0x400;
    }
    else
    {
        gUnknown_03003AB0.unk4 = 0xF0;
        gMain.unkB4 &= ~0x400;
        oam = &gOamObjects[35];
        for(i = 0; i < 5; i++)
	{
            oam->attr0 = SPRITE_ATTR0(0, 2, 0, 0, 0, 0);
            oam++;
        }
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command44(struct ScriptContext * scriptCtx)
{
    u32 i;
    struct OamAttrs *oam;
    oam = &gOamObjects[49];
    scriptCtx->scriptPtr++;
    gMain.unk84 = 0x280;
    SET_UNK8_AS_UNK4();
    if(*scriptCtx->scriptPtr) {
        DmaCopy16(3, gUnknown_08191CA0, VRAM+0x13400, 0x1000);
        DmaCopy16(3, gUnknown_08194520, OBJ_PLTT+0xA0, 0x20);
        SET_UNK4(0,0,0,9);
    }
    else {
        DmaCopy16(3, gUnknown_081914A0, VRAM+0x13400, 0x800);
        DmaCopy16(3, gUnknown_081924A0, VRAM+0x13C00, 0x800);
        DmaCopy16(3, gUnknown_08194540, OBJ_PLTT+0xA0, 0x20);
        SET_UNK4(1,0,0,9);
    }
    scriptCtx->scriptPtr++;
    // SPRITE_ATTR2(416, 0, 5);
    oam->attr0 = SPRITE_ATTR0(239, 3, 0, 0, 0, 0);
    oam->attr1 = SPRITE_ATTR1_AFFINE(495, 0, 3);
    oam->attr2 = SPRITE_ATTR2(416, 0, 5);
    oam++;
    oam->attr0 = SPRITE_ATTR0(0, 2, 0, 0, 0, 0);
    return 0;
}
