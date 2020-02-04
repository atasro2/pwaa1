#include "global.h"
#include "cmd_mus.h"

void MoveSpritesToOAM()
{
    DmaCopy16(3, gOamObjects, OAM, sizeof(gOamObjects));
}

#ifdef NONMATCHING // i don't want anything to do with this stupid ass function it's not even close
bool32 sub_8002A68(u16 * arg0, struct unkdatastruct * arg1)
{
    s32 unk0 = arg1->unk0; // r4
    s32 unk1 = arg1->unk2; // ip
    s32 unk2 = arg0[0] - unk1; // r5
    s32 unk3 = arg0[1] - unk1; // r3
    s32 unk4 = arg1->unk4 - unk0; // r8
    s32 unk5 = arg1->unk6 - unk1; // r6
    s32 unk7 = arg1->unkC - unk0; // sb
    s32 unk8 = arg1->unkE - unk1; // r7
    if((unk3 * unk4) >= (unk2 * unk8) && (unk3 * unk7) <= (unk2 * unk8))
    {
        u32 unk9 = arg1->unk8 - unk0; // r1
        u32 unk10; // r0
        unk2 -= unk9;
        unk10 = arg1->unkA - unk1;
        unk3 -= unk10;
        unk4 -= unk9;
        unk5 -= unk10;
        unk7 -= unk9;
        unk8 -= unk10;
        if((unk3 * unk4) <= (unk2 * unk5) && (unk3 * unk7) < (unk2 * unk8))
        {
            return 1;
        }
    }
    return 0;
}
#else
NAKED
bool32 sub_8002A68(u16 * arg0, void * arg1)
{
    asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	adds r2, r1, #0\n\
	ldrh r4, [r2]\n\
	ldrh r1, [r2, #2]\n\
	mov ip, r1\n\
	ldrh r1, [r0]\n\
	subs r5, r1, r4\n\
	ldrh r0, [r0, #2]\n\
	mov r1, ip\n\
	subs r3, r0, r1\n\
	ldrh r0, [r2, #4]\n\
	subs r0, r0, r4\n\
	mov r8, r0\n\
	ldrh r0, [r2, #6]\n\
	subs r6, r0, r1\n\
	ldrh r1, [r2, #0xc]\n\
	subs r1, r1, r4\n\
	mov sb, r1\n\
	ldrh r0, [r2, #0xe]\n\
	mov r1, ip\n\
	subs r7, r0, r1\n\
	mov r1, r8\n\
	muls r1, r3, r1\n\
	adds r0, r6, #0\n\
	muls r0, r5, r0\n\
	cmp r1, r0\n\
	blt _08002AE6\n\
	mov r1, sb\n\
	muls r1, r3, r1\n\
	adds r0, r7, #0\n\
	muls r0, r5, r0\n\
	cmp r1, r0\n\
	bgt _08002AE6\n\
	ldrh r0, [r2, #8]\n\
	subs r1, r0, r4\n\
	subs r5, r5, r1\n\
	ldrh r2, [r2, #0xa]\n\
	mov r4, ip\n\
	subs r0, r2, r4\n\
	subs r3, r3, r0\n\
	mov r2, r8\n\
	subs r2, r2, r1\n\
	mov r8, r2\n\
	subs r6, r6, r0\n\
	mov r4, sb\n\
	subs r4, r4, r1\n\
	mov sb, r4\n\
	subs r7, r7, r0\n\
	mov r1, r8\n\
	muls r1, r3, r1\n\
	adds r0, r6, #0\n\
	muls r0, r5, r0\n\
	cmp r1, r0\n\
	bgt _08002AE6\n\
	mov r1, sb\n\
	muls r1, r3, r1\n\
	adds r0, r7, #0\n\
	muls r0, r5, r0\n\
	cmp r1, r0\n\
	bge _08002AEA\n\
_08002AE6:\n\
	movs r0, #0\n\
	b _08002AEC\n\
_08002AEA:\n\
	movs r0, #1\n\
_08002AEC:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n");
}
#endif

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

u8 sub_8002B40()
{
    struct Struct3003730 * iwstruct3730p = &gUnknown_03003730;
    s32 unk0;
    s32 unk1;
    u16 unk2;
    u8 unk3;
    s8 unk4;
    u16 unk5;

    unk0 &= 0xFFFF0000;
    unk0 |= iwstruct3730p->unk24;

    unk2 = (s16)iwstruct3730p->unk24 * 3;
    
    unk1 &= 0xFFFF0000;
    unk1 |= unk2;

    unk4 = unk1 >> 8;
    unk3 = unk4 + unk0;
    
    unk0 &= 0xFFFFFF00;
    unk0 |= unk3;
    
    unk5 = unk4 << 8;
    
    unk0 &= 0xFFFF00FF;
    unk0 |= unk5;

    iwstruct3730p->unk24 = unk0;
    return unk0;
}

void sub_8002B94(u32 arg0, u32 arg1, bool32 arg2) // set flag?
{
    u32 * unk0 = gUnknown_0811DC04[arg0];
    unk0 += (arg1 / 32);
    if(arg2 != FALSE)
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

bool32 sub_8002BD0(u32 arg0, u32 arg1) // is flag set?
{
    u32 * unk0 = gUnknown_0811DC04[arg0];
    u32 unk1;
    unk0 += (arg1 / 32);
    unk1 = 1 << (arg1 & 0x1F);

    return (*unk0 & unk1) ? TRUE : FALSE;
}

// unreferenced?? // bm_rotate ?

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
    struct Struct3003730 * iwstruct3730p = &gUnknown_03003730;
    iwstruct3730p->unk90 = arg1;
    iwstruct3730p->unk92 = arg2;
    sub_8010048(arg0, 0, arg1, 0);
    gUnknown_03003A50.unk5 = 1;
    sub_800B7A8(&gUnknown_03003A50, 0xF);
}

void sub_8002CCC(u32 arg0, u32 arg1)
{
    sub_8002B94(0, arg1, TRUE);
    sub_800549C(arg0);
    sub_800244C(1);
    sub_800F454();
}

void sub_8002CF0(u32 arg0, u32 arg1)
{
    struct OamAttrs * sprite = &gOamObjects[49];
    u32 i = 0;
    union Union3003734 * union3734 = &gUnknown_03003730.unk4;

    for(i = 0; i < 4; sprite++, i++)
    {
        sprite->attr0 = SPRITE_ATTR0(192, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        sprite->attr1 = 60 * i + (3 << 14); // TODO: NON AFFINE attr1 macro
        sprite->attr2 = SPRITE_ATTR2((256 + i * 32), 0, 5);
    }
    union3734->field1 = 260;
    sub_8002B94(0, arg1, TRUE);
    sub_800549C(arg0);
    sub_800244C(1);
    sub_800B7A8(&gUnknown_03003A50, 0xF);
    gUnknown_03003A50.unkE = 0x40;
}

void nullsub_4(u32 arg0)
{

}

void sub_8002D70(struct Struct3003730 * struct3730p)
{
    DmaCopy16(3, gUnknown_080150D0, &gUnknown_03003730.unkD8, sizeof(gUnknown_080150D0));
    DmaCopy16(3, gUnknown_08014FB8, &gUnknown_030028A0, sizeof(gUnknown_08014FB8));
    struct3730p->unk8C = 0;
}