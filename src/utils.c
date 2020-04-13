#include "global.h"
#include "sound_control.h"

void MoveSpritesToOAM()
{
    DmaCopy16(3, gOamObjects, OAM, sizeof(gOamObjects));
}


bool32 sub_8002A68(struct Point * p, struct Point4 * cp)
{
    s32 num;
    s32 num2;
    s32 num3;
    s32 num4;
    s32 num5;
    s32 num6;
    s32 x;
    s32 y;

    x = cp->x0;
    y = cp->y0;
    num = p->x - x;
    num2 = p->y - y;
    num3 = cp->x1 - x;
    num4 = cp->y1 - y;
    num5 = cp->x3 - x;
    num6 = cp->y3 - y;
    if (num3 * num2 < num4 * num || num5 * num2 > num6 * num)
    {
        return FALSE;
    }

    num -= cp->x2 - x;
    num2 -= cp->y2 - y;
    num3 -= cp->x2 - x;
    num4 -= cp->y2 - y;
    num5 -= cp->x2 - x;
    num6 -= cp->y2 - y;
    
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

union u32asBitfields
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
    union u32asBitfields unk0;
    union u32asBitfields unk1;

    unk0.shorts.low = (s16)main->rngSeed;

    unk1.shorts.low = (s16)main->rngSeed * 3;

    unk0.bytes.low += (u8)unk1.bytes.high;
    
    unk0.bytes.high = unk1.bytes.high;

    main->rngSeed = unk0.w;
    return unk0.w;
}

void SetFlag(u32 arg0, u32 arg1, bool32 arg2)
{
    u32 * unk0 = gUnknown_0811DC04[arg0];
    unk0 += (arg1 >> 5);
    if(arg2)
    {
        u32 unk1 = 1 << (arg1 & 0x1F);
        *unk0 |= unk1;
    }
    else
    {
        u32 unk1 = 1 << (arg1 & 0x1F);
        *unk0 &= ~unk1;
    }
}

bool32 GetFlag(u32 arg0, u32 arg1)
{
    u32 * unk0 = gUnknown_0811DC04[arg0];
    u32 unk1;
    unk0 += (arg1 / 32);
    unk1 = 1 << (arg1 & 0x1F);

    return (*unk0 & unk1) ? TRUE : FALSE;
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
    gUnknown_03003A50.unk5 = 1;
    sub_800B7A8(&gUnknown_03003A50, 0xF);
}

void sub_8002CCC(u32 arg0, u32 arg1)
{
    SetFlag(0, arg1, TRUE);
    sub_800549C(arg0);
    sub_800244C(1);
    PauseBGM();
}

void sub_8002CF0(u32 arg0, u32 arg1) // init investigation buttons? // unused?
{
    struct OamAttrs * sprite = &gOamObjects[49];
    u32 i = 0;
    union Union3003734 * union3734 = &gMain.unk4;

    for(i = 0; i < 4; sprite++, i++)
    {
        sprite->attr0 = SPRITE_ATTR0(192, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        sprite->attr1 = 60 * i + (3 << 14); // TODO: NON AFFINE attr1 macro
        sprite->attr2 = SPRITE_ATTR2((256 + i * 32), 0, 5);
    }
    union3734->w1 = 260;
    SetFlag(0, arg1, TRUE);
    sub_800549C(arg0);
    sub_800244C(1);
    sub_800B7A8(&gUnknown_03003A50, 0xF);
    gUnknown_03003A50.unkE = 0x40;
}

void nullsub_4(u32 arg0)
{

}

void sub_8002D70(struct Main * struct3730p)
{
    DmaCopy16(3, gUnknown_080150D0, &gMain.mapData, sizeof(gUnknown_080150D0));
    DmaCopy16(3, gUnknown_08014FB8, &gUnknown_030028A0, sizeof(gUnknown_08014FB8));
    struct3730p->unk8C = 0;
}