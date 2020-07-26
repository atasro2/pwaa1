#include "global.h"
#include "main.h"
#include "sound_control.h"
#include "background.h"

void MoveSpritesToOAM()
{
    DmaCopy16(3, gOamObjects, OAM, sizeof(gOamObjects));
}

bool32 CheckPointInArea(struct Point * point, struct Point4 * area)
{
    s32 num;
    s32 num2;
    s32 num3;
    s32 num4;
    s32 num5;
    s32 num6;
    s32 x;
    s32 y;

    x = area->points[0].x;
    y = area->points[0].y;
    num = point->x - x;
    num2 = point->y - y;
    num3 = area->points[1].x - x;
    num4 = area->points[1].y - y;
    num5 = area->points[3].x - x;
    num6 = area->points[3].y - y;
    if (num3 * num2 < num4 * num || num5 * num2 > num6 * num)
    {
        return FALSE;
    }

    num -= area->points[2].x - x;
    num2 -= area->points[2].y - y;
    num3 -= area->points[2].x - x;
    num4 -= area->points[2].y - y;
    num5 -= area->points[2].x - x;
    num6 -= area->points[2].y - y;
    
    if (num3 * num2 > num4 * num || num5 * num2 < num6 * num)
    {
        return FALSE;
    }
    return TRUE;
}

s16 fix_mul(s16 a, s16 b)
{
    s32 tmp;
    tmp = a;
    tmp *= b;
    tmp /= 0x100;
    return tmp;
}

s16 fix_div(s16 a, s16 b)
{
    s32 tmp;
    tmp = a;
    tmp *= 0x100;
    tmp /= b;
    return tmp;
}

s16 fix_inverse(s16 b)
{
    s32 tmp;
    tmp = 0x10000;
    tmp /= b;
    return tmp;
}

union s32asBitfields
{
    struct
    {
        s32 low:8;
        s32 high:8;
    } bytes;
    struct
    {
        s32 low:16;
        s32 high:16;
    } shorts;
    s32 w:32;
};

u8 Random()
{
    struct Main * main = &gMain;
    union s32asBitfields unk0;
    union s32asBitfields unk1;

    unk0.shorts.low = (s16)main->rngSeed;

    unk1.shorts.low = (s16)main->rngSeed * 3;

    unk0.bytes.low += (u8)unk1.bytes.high;
    
    unk0.bytes.high = unk1.bytes.high;

    main->rngSeed = unk0.w;
    return unk0.w;
}

void ChangeFlag(u32 flagType, u32 id, bool32 set)
{
    u32 * flagPtr = gFlagPtrs[flagType];
    flagPtr += id / 32;
    if(set)
    {
        u32 flag = 1 << (id & 0x1F);
        *flagPtr |= flag;
    }
    else
    {
        u32 flag = 1 << (id & 0x1F);
        *flagPtr &= ~flag;
    }
}

bool32 GetFlag(u32 flagType, u32 id)
{
    u32 * flagPtr = gFlagPtrs[flagType];
    u32 flag;
    flagPtr += id / 32;
    flag = 1 << (id & 0x1F);

    return (*flagPtr & flag) ? TRUE : FALSE;
}

// unreferenced // bm_rotate ?

void sub_8002BF8(s16 scale)
{
    struct LCDIORegisters * lcdIoRegsp = &gLCDIORegisters;
    s16 cos = _Cos(0);

    lcdIoRegsp->lcd_bg2pa = fix_mul(cos, scale);
    lcdIoRegsp->lcd_bg2pb = fix_mul(_Sin(0), scale);
    lcdIoRegsp->lcd_bg2pc = fix_mul(-_Sin(0), scale);
    lcdIoRegsp->lcd_bg2pd = fix_mul(cos, scale);
    lcdIoRegsp->lcd_bg2x = (((120 * 0x100 - 120) - lcdIoRegsp->lcd_bg2pa * 120) - (lcdIoRegsp->lcd_bg2pb * 80)) & 0x0FFFFFFF;
    lcdIoRegsp->lcd_bg2y = (((80 * 0x100 - 80) - lcdIoRegsp->lcd_bg2pc * 120) - (lcdIoRegsp->lcd_bg2pd * 80)) & 0x0FFFFFFF;
}

void sub_8002C98(u32 arg0, u32 arg1, u32 arg2)
{
    struct Main * main = &gMain;
    main->talkingAnimationOffset = arg1;
    main->idleAnimationOffset = arg2;
    sub_8010048(arg0, 0, arg1, 0);
    gInvestigation.unk5 = 1;
    sub_800B7A8(&gInvestigation, 0xF);
}

void sub_8002CCC(u32 section, u32 flagId)
{
    ChangeFlag(0, flagId, TRUE);
    ChangeScriptSection(section);
    sub_800244C(1);
    PauseBGM();
}

void sub_8002CF0(u32 section, u32 flagId) // unused?
{
    struct OamAttrs * sprite = &gOamObjects[49];
    u32 i = 0;

    for(i = 0; i < 4; sprite++, i++)
    {
        sprite->attr0 = SPRITE_ATTR0((-64 & 255), ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        //64x32 sprite
        sprite->attr1 = SPRITE_ATTR1_NONAFFINE(60 * i, 0, 0, 3);
        sprite->attr2 = SPRITE_ATTR2((0x100 + i * 0x20), 0, 5);
    }
    SET_PROCESS(4, 1, 0, 0);
    ChangeFlag(0, flagId, TRUE);
    ChangeScriptSection(section);
    sub_800244C(1);
    sub_800B7A8(&gInvestigation, 0xF);
    gInvestigation.unkE = 0x40;
}