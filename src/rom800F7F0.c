#include "global.h"
#include "ewram.h"
#include "sound_control.h"
#include "constants/animation.h"

void sub_800F7F0()
{
    gAnimation[0].unk0 = 1;
    gAnimation[0].unk8 = NULL;
    gAnimation[0].unk4 = 0;
}

void sub_800F804()
{
    struct AnimationStruct *animation = gAnimation;
    DmaFill16(3, 0, &gAnimation, sizeof(gAnimation));
    gMain.unk1F |= 3;
    animation = &gAnimation[1];
    animation->unkC.unk0 = 0xFF;
    animation->unkC.unk2[0] = 0;
    sub_800F7F0();
}

void sub_800F84C()
{
    struct AnimationStruct *animation;
    for (animation = &gAnimation[1]; animation < &gAnimation[0x20]; animation++)
    {
        if (animation->unk0 & 0x10000000)
        {
            if (&gOamObjects[animation->unk3A] < &gOamObjects[animation->unk3B])
            {
                struct OamAttrs *oam;
                for (oam = &gOamObjects[animation->unk3A]; oam < &gOamObjects[animation->unk3B]; oam++)
                {
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                }
            }
        }
    }
}

struct AnimationStruct *sub_800F8BC(u32 arg0)
{
    struct AnimationStruct *animation = &gAnimation[0x1F];
    s32 i = 0x1f;
    do
    {
        if (animation->unkC.unk0 == arg0 && animation->unk0 & 0x10000000)
        {
            return animation;
        }
        animation--;
        i--;
    } while (i != -1);
    return NULL;
}

struct AnimationStruct *sub_800F8F4(u32 arg0)
{
    u32 flags;
    s32 r1, i;
    struct AnimationStruct *animation = sub_800F8BC(arg0);
    if (animation != NULL)
    {
        r1 = -(animation->unk0 & 0x02000000);
        flags = r1 >> 0x1f;
        flags = flags & 0x02000000;
        if (animation->unk0 & 0x08000000)
        {
            flags = 0x08000000;
        }
        sub_8010960(animation);
        DmaFill16(3, 0, animation, 0x40)
            animation->unk0 = 0xF1000000 | flags;
        animation->frameDurationCounter = 0xffff;
        if (flags & 0x08000000)
        {
            animation->unk0 &= ~0x20000000;
        }
        animation->unkC.unk0 = arg0;
        return animation;
    }
    else
    {
        animation = &gAnimation[0x1F];
        for (i = 0x1f; i != -1; i--)
        {
            r1 = animation->unk0 & 0x10000000;
            if (r1 == 0)
            {
                if (animation != &gAnimation[1])
                {
                    DmaFill16(3, r1, animation, 0x40)
                        animation->unk0 = 0xf1000000;
                    animation->unkC.unk0 = arg0;
                    return animation;
                }
            }
            animation--;
        }
        return 0;
    }
}

void sub_800F9C4(struct AnimationStruct *animation, u32 x, u32 y)
{
    if (animation != NULL)
    {
        animation->unkC.xOrigin = x;
        animation->unkC.yOrigin = y;
    }
}

void sub_800F9D0(struct AnimationStruct *animation, u32 arg1)
{
    s32 r0;
    s32 r4;
    u32 r5;
    r5 = arg1 << 2;
    if (animation != NULL)
    {
        if (arg1 > 0x1f)
        {
            arg1 = 0x1f;
        }
        animation->unk0 = (animation->unk0 & ~1) | 0x100000;
        animation->unk3C &= 0xff;
        animation->unk3E &= 0xff00;
        animation->unk3E |= arg1;
        r4 = _Cos(animation->unk3C);
        r0 = -_Sin(animation->unk3C);
        gOamObjects[r5++].attr3 = r4;
        gOamObjects[r5++].attr3 = -r0;
        gOamObjects[r5++].attr3 = r0;
        gOamObjects[r5++].attr3 = r4;
    }
}

void sub_800FA50(struct AnimationStruct *animation, u32 arg1, u32 arg2)
{
    if (animation != NULL)
    {
        animation->unk3C = arg2;
        sub_800F9D0(animation, arg1);
    }
}

void sub_800FA60(struct AnimationStruct *animation)
{
    if (animation != NULL)
    {
        animation->unk0 &= ~0x100000;
    }
}

void sub_800FA74(struct AnimationStruct *animation, bool32 arg1)
{
    u32 i;
    if (animation != 0 && (animation->unk0 & 0x10000000))
    {
        if (arg1)
        {
            animation->unk0 &= ~0x8000000;
            animation->unk0 |= 0x20000000;
        }
        else
        {
            animation->unk0 &= ~0x20000000;
            animation->unk0 |= 0x08000000;
            for (i = animation->unk3A; i < animation->unk3B; i++)
            {
                gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
            }
        }
        if (animation->unkC.unk0 == 0xff && animation->unkC.unk2[0] == 0x16)
        {
            if ((animation = sub_800F8BC(0x17)) != NULL || (animation = sub_800F8BC(0x18)) != NULL)
            {
                if (arg1)
                {
                    animation->unk0 &= ~0x8000000;
                    animation->unk0 |= 0x20000000;
                }
                else
                {
                    animation->unk0 &= ~0x20000000;
                    animation->unk0 |= 0x08000000;
                    for (i = animation->unk3A; i < animation->unk3B; i++)
                    {
                        gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
                    }
                }
            }
        }
    }
}

void sub_800FB64(struct AnimationStruct *animation, bool32 arg1)
{
    if (animation != NULL)
    {
        if (arg1)
        {
            animation->unk0 |= 1;
        }
        else
        {
            animation->unk0 &= ~1;
        }
    }
}

void sub_800FB84(struct AnimationStruct *animation, u32 arg1)
{
    if (animation != NULL)
    {
        if (arg1 > 3)
        {
            arg1 = 3;
        }
        animation->unk3E &= 0xff;
        animation->unk3E |= arg1 << 8;
    }
}

void sub_800FBA0(struct AnimationStruct *animation, u32 arg1)
{
    if (animation != NULL)
    {
        if (animation->unkC.unk0 == 0xFF)
        {
            u8 *ptr1;
            ptr1 = gUnknown_08018DD4[animation->unkC.unk2[0]].unk4 + arg1;
            if (animation->unkC.animFrameDataStartPtr == ptr1)
            {
                return;
            }
            animation->unkC.animFrameDataStartPtr = ptr1;
            animation->unkC.animGfxDataStartPtr = gUnknown_08018DD4[animation->unkC.unk2[0]].unk0;
        }
        else
        {
            if (animation->unkC.unk0 > 0xb)
            {
                if (animation->unkC.unk0 <= 0x10)
                {
                    animation->unkC.animFrameDataStartPtr = (u8 *)0x871FCF4 + arg1; // ! FOR THE LOVE OF GOD CAPCOM
                    animation->unkC.animGfxDataStartPtr = (u8 *)0x871EBBC;
                }
                else
                {
                    if (animation->unkC.unk0 > 0x18)
                    {
                        return;
                    }
                    animation->unkC.animFrameDataStartPtr = (u8 *)0x8748218 + arg1;
                    animation->unkC.animGfxDataStartPtr = (u8 *)0x871FDF8;
                }
            }
            else
            {
                animation->unkC.animFrameDataStartPtr = (u8 *)0x8748218 + arg1;
                animation->unkC.animGfxDataStartPtr = (u8 *)0x871FDF8;
            }
        }
        animation->unk0 |= 0xC0000000;
        animation->frameDurationCounter = 0xFFFF;
        // comments mostly based on h3rmit docs
        // animation->animFrameDataStartPtr animation block beginning
        animation->unkC.animGfxDataStartPtr += 1 [(u32 *)animation->unkC.animFrameDataStartPtr];                                      // offsets the graphics pointer
        animation->unkC.tileDataPtr = animation->unkC.animGfxDataStartPtr + 4 + (*(u32 *)animation->unkC.animGfxDataStartPtr) * 0x20; // skip first u32(number of palettes) and the palettes, pointer to tiles
        animation->frameData = (struct AnimationFrame *)(animation->unkC.animFrameDataStartPtr + 8);                                  // skips animation block header, pointer to frame data
        animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);                  // Frame tilemap pointer
    }
}

#ifdef NONMATCHING
u32 sub_800FC40(struct Rect *p) // NOPE
{
    /*
    u32 unk0 = 0; // sp
    u32 unk1;
    void * unk2, * unk3;
    struct AnimationStruct * animation;
    for(animation = gAnimation.unk8; animation != NULL; animation = animation->unk8)
    {
        u32 i;
        *(struct Point2 *)0x200AFC0 = *p;
        ((struct Point2 *)0x200AFC0)->x1 += p->x0;
        ((struct Point2 *)0x200AFC0)->y1 += p->y0;
        unk2 = animation->unk1C; // s1
        unk3 = animation->unk30; // r8
        unk1 = *(u16 *)unk3;
        for(i = 0; i < unk1; i++)
        {
            unk3 += 4;
            *(struct Point2 *)0x200AFC8 = *(struct Point2 *)0x200AFC0;
        }
        //*((u32 *)0x200AFC4) = *(arg0+1);
    }
    return 0;
    */
}
#else
NAKED u32 sub_800FC40(struct Rect *p)
{
    asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x14\n\
	str r0, [sp, #4]\n\
	movs r0, #0\n\
	str r0, [sp]\n\
	ldr r0, _0800FD80\n\
	ldr r0, [r0, #8]\n\
	mov ip, r0\n\
	cmp r0, #0\n\
	bne _0800FC5E\n\
	b _0800FE12\n\
_0800FC5E:\n\
	ldr r5, _0800FD84\n\
	ldr r0, _0800FD88\n\
	mov sb, r0\n\
_0800FC64:\n\
	ldr r2, [sp, #4]\n\
	ldr r0, [r2]\n\
	ldr r1, [r2, #4]\n\
	ldr r3, _0800FD8C\n\
	str r0, [r3]\n\
	str r1, [r3, #4]\n\
	ldrh r0, [r3, #4]\n\
	ldrh r4, [r2]\n\
	adds r0, r4, r0\n\
	strh r0, [r3, #4]\n\
	ldrh r0, [r3, #6]\n\
	ldrh r6, [r2, #2]\n\
	adds r0, r6, r0\n\
	strh r0, [r3, #6]\n\
	mov r0, ip\n\
	ldr r0, [r0, #0x1c]\n\
	mov sl, r0\n\
	mov r1, ip\n\
	ldr r1, [r1, #0x30]\n\
	mov r8, r1\n\
	ldrh r2, [r1]\n\
	str r2, [sp, #0xc]\n\
	movs r3, #0\n\
	str r3, [sp, #8]\n\
	cmp r3, r2\n\
	blo _0800FC9A\n\
	b _0800FE06\n\
_0800FC9A:\n\
	mov r4, sp\n\
	str r4, [sp, #0x10]\n\
_0800FC9E:\n\
	movs r6, #4\n\
	add r8, r6\n\
	ldr r2, _0800FD8C\n\
	ldr r0, [r2]\n\
	ldr r1, [r2, #4]\n\
	str r0, [r5]\n\
	str r1, [r5, #4]\n\
	ldr r1, _0800FD90\n\
	ldr r0, [sp]\n\
	ands r0, r1\n\
	add sl, r0\n\
	mov r3, r8\n\
	ldrh r3, [r3, #2]\n\
	lsrs r0, r3, #0xc\n\
	lsls r0, r0, #2\n\
	ldr r4, _0800FD94\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	str r0, [sp]\n\
	mov r6, r8\n\
	movs r0, #0\n\
	ldrsb r0, [r6, r0]\n\
	mov r1, ip\n\
	ldrh r1, [r1, #0x10]\n\
	adds r3, r1, r0\n\
	mov r2, sb\n\
	strh r3, [r2, #4]\n\
	strh r3, [r2]\n\
	ldr r4, [sp, #0x10]\n\
	ldrb r0, [r4, #3]\n\
	adds r4, r3, r0\n\
	strh r4, [r2, #4]\n\
	movs r0, #1\n\
	ldrsb r0, [r6, r0]\n\
	mov r6, ip\n\
	ldrh r6, [r6, #0x12]\n\
	adds r2, r6, r0\n\
	mov r0, sb\n\
	strh r2, [r0, #6]\n\
	strh r2, [r0, #2]\n\
	ldr r1, [sp, #0x10]\n\
	ldrb r0, [r1, #2]\n\
	adds r6, r2, r0\n\
	mov r0, sb\n\
	strh r6, [r0, #6]\n\
	ldrh r0, [r5, #4]\n\
	lsls r1, r3, #0x10\n\
	lsls r0, r0, #0x10\n\
	cmp r1, r0\n\
	bge _0800FDF8\n\
	ldrh r7, [r5]\n\
	lsls r1, r4, #0x10\n\
	adds r4, r7, #0\n\
	lsls r0, r4, #0x10\n\
	cmp r0, r1\n\
	bge _0800FDF8\n\
	ldrh r0, [r5, #6]\n\
	lsls r1, r2, #0x10\n\
	lsls r0, r0, #0x10\n\
	cmp r1, r0\n\
	bge _0800FDF8\n\
	ldrh r2, [r5, #2]\n\
	lsls r1, r2, #0x10\n\
	lsls r0, r6, #0x10\n\
	cmp r1, r0\n\
	bge _0800FDF8\n\
	subs r0, r7, r3\n\
	strh r0, [r5]\n\
	lsls r0, r0, #0x10\n\
	cmp r0, #0\n\
	bge _0800FD30\n\
	movs r6, #0\n\
	strh r6, [r5]\n\
_0800FD30:\n\
	mov r0, sb\n\
	ldrh r3, [r0, #2]\n\
	subs r0, r2, r3\n\
	strh r0, [r5, #2]\n\
	lsls r0, r0, #0x10\n\
	cmp r0, #0\n\
	bge _0800FD42\n\
	movs r1, #0\n\
	strh r1, [r5, #2]\n\
_0800FD42:\n\
	ldrh r1, [r5, #4]\n\
	mov r4, sb\n\
	ldrh r2, [r4, #4]\n\
	lsls r1, r1, #0x10\n\
	lsls r0, r2, #0x10\n\
	cmp r1, r0\n\
	ble _0800FD52\n\
	strh r2, [r5, #4]\n\
_0800FD52:\n\
	ldrh r0, [r5, #4]\n\
	mov r6, sb\n\
	ldrh r6, [r6]\n\
	subs r0, r0, r6\n\
	strh r0, [r5, #4]\n\
	ldrh r1, [r5, #6]\n\
	mov r0, sb\n\
	ldrh r2, [r0, #6]\n\
	lsls r1, r1, #0x10\n\
	lsls r0, r2, #0x10\n\
	cmp r1, r0\n\
	ble _0800FD6C\n\
	strh r2, [r5, #6]\n\
_0800FD6C:\n\
	ldrh r0, [r5, #6]\n\
	subs r0, r0, r3\n\
	strh r0, [r5, #6]\n\
	ldr r1, [sp, #0x10]\n\
	ldrb r0, [r1, #3]\n\
	lsrs r6, r0, #3\n\
	movs r3, #2\n\
	ldrsh r2, [r5, r3]\n\
	b _0800FDF0\n\
	.align 2, 0\n\
_0800FD80: .4byte gAnimation\n\
_0800FD84: .4byte gUnknown_0200AFC0+0x8\n\
_0800FD88: .4byte gUnknown_0200AFC0+0x10\n\
_0800FD8C: .4byte gUnknown_0200AFC0\n\
_0800FD90: .4byte 0x0000FFFF\n\
_0800FD94: .4byte gUnknown_08019450\n\
_0800FD98:\n\
	asrs r0, r2, #3\n\
	muls r0, r6, r0\n\
	lsls r1, r0, #5\n\
	adds r0, r2, #0\n\
	cmp r2, #0\n\
	bge _0800FDA6\n\
	adds r0, r2, #7\n\
_0800FDA6:\n\
	asrs r0, r0, #3\n\
	lsls r0, r0, #3\n\
	subs r0, r2, r0\n\
	lsls r0, r0, #2\n\
	adds r0, r1, r0\n\
	mov r1, sl\n\
	adds r4, r0, r1\n\
	movs r3, #0\n\
	ldrsh r1, [r5, r3]\n\
	b _0800FDE6\n\
_0800FDBA:\n\
	asrs r0, r1, #3\n\
	lsls r3, r0, #5\n\
	adds r0, r1, #0\n\
	cmp r1, #0\n\
	bge _0800FDC6\n\
	adds r0, r1, #7\n\
_0800FDC6:\n\
	asrs r0, r0, #3\n\
	lsls r0, r0, #3\n\
	subs r0, r1, r0\n\
	cmp r0, #1\n\
	ble _0800FDD6\n\
	adds r0, r4, #1\n\
	adds r0, r3, r0\n\
	b _0800FDD8\n\
_0800FDD6:\n\
	adds r0, r3, r4\n\
_0800FDD8:\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	beq _0800FDE4\n\
	mov r4, ip\n\
	ldrh r0, [r4, #0xc]\n\
	b _0800FE14\n\
_0800FDE4:\n\
	adds r1, #2\n\
_0800FDE6:\n\
	movs r3, #4\n\
	ldrsh r0, [r5, r3]\n\
	cmp r1, r0\n\
	blt _0800FDBA\n\
	adds r2, #2\n\
_0800FDF0:\n\
	movs r4, #6\n\
	ldrsh r0, [r5, r4]\n\
	cmp r2, r0\n\
	blt _0800FD98\n\
_0800FDF8:\n\
	ldr r6, [sp, #8]\n\
	adds r6, #1\n\
	str r6, [sp, #8]\n\
	ldr r0, [sp, #0xc]\n\
	cmp r6, r0\n\
	bhs _0800FE06\n\
	b _0800FC9E\n\
_0800FE06:\n\
	mov r1, ip\n\
	ldr r1, [r1, #8]\n\
	mov ip, r1\n\
	cmp r1, #0\n\
	beq _0800FE12\n\
	b _0800FC64\n\
_0800FE12:\n\
	movs r0, #0\n\
_0800FE14:\n\
	add sp, #0x14\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n");
}
#endif

bool32 sub_800FE24(struct Point *pt0, struct Point *pt1, struct Point *pt2, struct Point *pt3)
{
    s32 num, num2, num3, num4, num5, num6, num7, num8, num9;
    num = pt0->x - pt1->x;
    num2 = pt0->y - pt1->y;
    num3 = pt2->x - pt3->x;
    num4 = pt2->y - pt3->y;
    num5 = num * num4 - num2 * num3;
    if (num5 == 0)
    {
        return FALSE;
    }
    num6 = pt1->x - pt3->x;
    num7 = pt1->y - pt3->y;
    num8 = num7 * num3 - num6 * num4;
    num9 = num7 * num - num6 * num2;
    if (((num5 > 0 && num8 >= 0 && num8 <= num5) || (num5 < 0 && num8 >= num5 && num8 <= 0)) && ((num5 > 0 && num9 >= 0 && num9 <= num5) || (num5 < 0 && num9 >= num5 && num9 <= 0)))
    {
        return TRUE;
    }
    return FALSE;
}

bool32 CheckRectCollisionWithArea(struct Rect *rect, struct Point4 *area)
{
    u32 i, j, k;
    struct Point4 p;
    struct Point *p1 = &area->points[0];
    struct Point *p2 = &area->points[1];
    struct Point *p3 = &p.points[0];
    struct Point *p4 = &p.points[1];
    if (CheckPointInArea(&rect->origin, area))
        return TRUE;

    p.points[0].x = p.points[3].x = rect->origin.x;
    p.points[0].y = p.points[1].y = rect->origin.y;
    p.points[1].x = p.points[2].x = rect->origin.x + rect->w;
    p.points[2].y = p.points[3].y = rect->origin.y + rect->h;

    for (i = 0; i < 3; i++)
    {
        p1 = &area->points[0];
        p2 = &area->points[1];
        for (j = 0; j < 3; j++)
        {
            if (sub_800FE24(p1, p2, p3, p4))
                return TRUE;
            p1++;
            p2++;
        }
        p2 = &area->points[0];
        if (sub_800FE24(p1, p2, p3, p4))
            return TRUE;
        p3++;
        p4++;
    }
    p4 = &p.points[0];
    p1 = &area->points[0];
    p2 = &area->points[1];
    for (k = 0; k < 3; k++)
    {
        if (sub_800FE24(p1, p2, p3, p4))
            return TRUE;
        p1++;
        p2++;
    }
    p2 = &area->points[0];
    if (sub_800FE24(p1, p2, p3, p4))
        return TRUE;

    return FALSE;
}

void sub_800FFB0(struct AnimationStruct *animation)
{
    struct AnimationStruct *variwstruct800p = gAnimation;
    u32 i;
    for (i = 0;; i++)
    {
        if (i > 0x1F)
            return;
        if (variwstruct800p->unk8 == NULL)
        {
            animation->unk4 = variwstruct800p;
            variwstruct800p->unk8 = animation;
            return;
        }
        variwstruct800p = variwstruct800p->unk8;
        if (variwstruct800p->unkC.unk1A < animation->unkC.unk1A)
            break; // ! WTF? is this a do while()? couldn't match with one
    }
    animation->unk4 = variwstruct800p->unk4;
    animation->unk8 = variwstruct800p;
    variwstruct800p->unk4->unk8 = animation;
    variwstruct800p->unk4 = animation;
}

void sub_800FFF8(u32 arg0)
{
    switch (arg0)
    {
    case 1:
        if ((gMain.gameStateFlags & 1) == 0)
        {
            gMain.shakeTimer = 30;
            gMain.gameStateFlags |= 1;
            gMain.shakeIntensity = 1;
        }
        break;
    case 2:
        if (gMain.blendMode == 0)
        {
            StartHardwareBlend(3, 1, 8, 0x1F);
        }
        break;
    default:
        break;
    }
}

struct AnimationStruct *sub_8010048(u32 arg0, u32 arg1, u32 talkingAnimOff, u32 arg3)
{
    u32 xOrigin = 120;
    struct Main *main = &gMain;
    if (arg0 & 0x8000 && main->unk3A & 0x10)
    {
        xOrigin -= DISPLAY_WIDTH;
    }
    if (arg0 & 0x4000 && main->unk3A & 0x20)
    {
        xOrigin += DISPLAY_WIDTH;
    }
    if (arg0 & 0x2000)
    {
        arg1 |= 1;
    }
    return sub_80100A8(arg0, talkingAnimOff, xOrigin, 0x50, arg1);
}

struct AnimationStruct *sub_80100A8(u32 arg0, u32 talkingAnimOff, u32 xOrigin, u32 yOrigin, u32 arg4)
{
    struct Main *main = &gMain;
    struct AnimationStruct *animation = &gAnimation[1];
    struct AnimationStructFieldC animationStructFieldC;
    u32 personId = arg0 & 0xFF;
    if (personId == 0)
    {
        if (animation->unk0 & 0x10000000)
            sub_8010960(animation);
        return NULL;
    }
    animationStructFieldC.unk0 = 0xFF;
    *(u16 *)animationStructFieldC.unk2 = arg0;
    animationStructFieldC.vramPtr = OBJ_VRAM0 + 0x5800;
    animationStructFieldC.animGfxDataStartPtr = gUnknown_08018DD4[personId].unk0;
    animationStructFieldC.animFrameDataStartPtr = gUnknown_08018DD4[personId].unk4 + talkingAnimOff;
    animationStructFieldC.unk18 = 14;
    if (main->process[GAME_PROCESS] == 3) // trial
        animationStructFieldC.unk19 = 0x27;
    else
        animationStructFieldC.unk19 = gUnknown_08018DD4[personId].unk8;
    animationStructFieldC.unk1A = 0x21;
    animationStructFieldC.xOrigin = xOrigin;
    animationStructFieldC.yOrigin = yOrigin;
    if ((animation->unk0 & 0x10000000) == 0)
    {
        DmaFill16(3, 0, animation, sizeof(gAnimation[1]));
        animation->unk0 |= 0x10000000;
        animation->unkC.unk0 = 0xFF;
        sub_800FFB0(animation);
    }
    animation->unk2C |= 0;
    sub_8010468(&animationStructFieldC, 0xFF, arg4);
    animation->unk2C = main->currentBG;
    if (animation->unkC.unk2[0] == 0x16 && main->process[GAME_PROCESS] == 4) // person id 0x16 investigation
    {
        struct AnimationStruct *ptr;
        u32 var0 = animation->unk0 & 0x02000000;
        switch (talkingAnimOff)
        {
        case 0x6BC:
        case 0x4A0:
        case 0x184:
        case 0:
            ptr = sub_800F8BC(0x18);
            if (ptr != NULL)
                sub_8010960(ptr);
            ptr = sub_8010204(0x17);
            ptr->unk0 |= var0;
            break;
        case 0x1060:
        case 0xF38:
            ptr = sub_800F8BC(0x17);
            if (ptr != NULL)
                sub_8010960(ptr);
            ptr = sub_8010204(0x18);
            ptr->unk0 |= var0;
            break;
        default:
            break;
        }
    }
    return animation;
}

struct AnimationStruct *sub_8010204(u32 arg0)
{
    s32 xOrigin, yOrigin;
    struct Main *main = &gMain;
    struct Struct8018F78 *ptr = &gUnknown_08018F78[arg0];
    xOrigin = ptr->xOrigin;
    yOrigin = ptr->yOrigin;
    if (main->unk3A & 0x10 && arg0 > 0xB)
        xOrigin -= DISPLAY_WIDTH;
    return sub_8010244(arg0, xOrigin, yOrigin);
}

struct AnimationStruct *sub_8010244(u32 arg0, s32 xOrigin, s32 yOrigin)
{
    struct AnimationStruct *animationStruct;
    struct AnimationStructFieldC animationStructFieldC;
    struct Main *main = &gMain;
    struct Struct8018F78 *ptr = &gUnknown_08018F78[arg0];
    u32 var1;
    u32 var0;
#ifndef NONMATCHING
    register u32 var2 asm("r0");
#else
    u32 var2;
#endif

    animationStructFieldC.unk0 = arg0;
    animationStructFieldC.vramPtr = ptr->vramPtr;
    animationStructFieldC.animGfxDataStartPtr = ptr->unk0;
    animationStructFieldC.animFrameDataStartPtr = ptr->unk8;
    animationStructFieldC.unk18 = ptr->unk10;
    animationStructFieldC.unk19 = ptr->unk11;
    animationStructFieldC.unk1A = ptr->unk12;
    animationStructFieldC.xOrigin = xOrigin;
    animationStructFieldC.yOrigin = yOrigin;
    animationStruct = sub_8010468(&animationStructFieldC, arg0, ptr->unk13);
    var1 = animationStruct->unkC.unk18 - 6;
    var0 = (1 << var1);
    var1++;
    var1--;
    if (!(main->unk1E & var0) && animationStruct->unkC.unk18 < 10)
    {
#ifndef NONMATCHING
        register void *src asm("r5");
#else
        void *src;
#endif
        void *dest;

        u32 size;
        main->unk1E |= var0;
        var2 = animationStruct->unkC.unk18 * 0x20;
        src = (u16 *)(OBJ_PLTT + var2);
        dest = gObjPaletteBuffer[var1];
        var1 = *(u32 *)animationStruct->unkC.animGfxDataStartPtr;
        size = var1 * 0x20;
        DmaCopy16(3, src, dest, size);
    }
    animationStruct->unk2C = main->currentBG;
    animationStruct->unk2D = main->currentRoomId;
    animationStruct->unk0 |= 0x1000000;
    return animationStruct;
}

struct Struct2002650 *sub_8010304(struct Struct2002650 *ewStruct2650) // ! UB: this function doesn't return anything
{
    u32 i;
    struct AnimationStruct *animation = &gAnimation[1];
    struct AnimationStructFieldC animationStructFieldC;
    sub_800F804();
    if (ewStruct2650->unk14 & 0x10000000)
    {
        animationStructFieldC.unk0 = 0xFF;
        animationStructFieldC.unk2[0] = ewStruct2650->unk2;
        animationStructFieldC.vramPtr = OBJ_VRAM0 + 0x5800;
        animationStructFieldC.animGfxDataStartPtr = gUnknown_08018DD4[ewStruct2650->unk2].unk0;
        animationStructFieldC.animFrameDataStartPtr = ewStruct2650->unk8;
        animationStructFieldC.unk18 = 0xE;
        animationStructFieldC.unk19 = gUnknown_08018DD4[ewStruct2650->unk2].unk8;
        animationStructFieldC.unk1A = 0x21;
        animationStructFieldC.xOrigin = ewStruct2650->xOrigin;
        animationStructFieldC.yOrigin = ewStruct2650->yOrigin;
        DmaCopy16(3, &animationStructFieldC, &animation->unkC, sizeof(animationStructFieldC));
        animation->frameData = (struct AnimationFrame *)(animation->unkC.animFrameDataStartPtr);
        animation->unkC.animGfxDataStartPtr += 1 [(u32 *)animation->frameData]; // offsets the graphics pointer
        animation->unkC.tileDataPtr = animation->unkC.animGfxDataStartPtr + 4 + (*(u32 *)animation->unkC.animGfxDataStartPtr) * 0x20;
        animation->frameData = ewStruct2650->frameData;
        animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
        animation->unk0 = ewStruct2650->unk14 | (0x40000000 | 0x01000000);
        animation->tileNum |= (uintptr_t)animation->unkC.vramPtr / TILE_SIZE_4BPP; // get OAM tile num from VRAM address
        animation->unk3E = 0x300;
        sub_800FB84(animation, animation->unkC.unk1A / 16);
        animation->unkC.unk1A &= 0xF;
        animation->unk2C = ewStruct2650->unk10;
        sub_800FFB0(animation);
    }
    ewStruct2650++;
    for (i = 2; i < 0x20; i++, ewStruct2650++)
    {
        if (ewStruct2650->unk14 & 0x10000000)
        {
            animation = sub_8010244(ewStruct2650->unk0, ewStruct2650->xOrigin, ewStruct2650->yOrigin);
            animation->unk0 = ewStruct2650->unk14 | (0x40000000 | 0x01000000);
            animation->frameData = ewStruct2650->frameData;
            animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
            DataCopy32(&animation->unk2C, &ewStruct2650->unk10);
        }
    }
}

struct Struct2002650 *sub_801042C(struct Struct2002650 *ewStruct2650)
{
    struct AnimationStruct *animation;
    for (animation = &gAnimation[1]; animation < &gAnimation[0x20]; animation++, ewStruct2650++)
    {
        DataCopy32(&ewStruct2650->unk0, &animation->unkC.unk0);
        DataCopy32(&ewStruct2650->xOrigin, &animation->unkC.xOrigin);
        DataCopy32(&ewStruct2650->unkC, &animation->frameDurationCounter);
        DataCopy32(&ewStruct2650->unk10, &animation->unk2C);
        ewStruct2650->unk8 = animation->unkC.animFrameDataStartPtr;
        ewStruct2650->unk14 = animation->unk0;
        ewStruct2650->frameData = animation->frameData;
    }
    return ewStruct2650;
}

struct AnimationStruct *sub_8010468(struct AnimationStructFieldC *animationFieldC, u32 arg1, u32 arg2)
{
    struct AnimationStruct *animation = sub_800F8F4(animationFieldC->unk0);
    if (animation == NULL)
        return NULL;
    DmaCopy16(3, animationFieldC, &animation->unkC, sizeof(animation->unkC));
    animation->unkC.animGfxDataStartPtr += 1 [(u32 *)animation->unkC.animFrameDataStartPtr];                                      // offsets the graphics pointer
    animation->unkC.tileDataPtr = animation->unkC.animGfxDataStartPtr + 4 + (*(u32 *)animation->unkC.animGfxDataStartPtr) * 0x20; // skip first u32(number of palettes) and the palettes, pointer to tiles
    animation->frameData = (struct AnimationFrame *)(animation->unkC.animFrameDataStartPtr + 8);                                  // skips animation block header, pointer to frame data
    animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);                  // Frame tilemap pointer
    animation->unk0 |= arg2;
    if (arg2 & 0x10)
    {
        animation->unk0 &= ~0x80000000;
    }
    animation->tileNum |= (uintptr_t)animation->unkC.vramPtr / TILE_SIZE_4BPP; // get OAM tile num from VRAM address
    animation->unk3C = 0;
    animation->unk3E = 0x300;
    sub_800FB84(animation, animation->unkC.unk1A / 16);
    animation->unkC.unk1A &= 0xF;
    sub_800FFB0(animation);
    if (animation->frameData->flags & 0x2)
        PlaySE(animation->frameData->songId);
    if (animation->frameData->flags & 0x4)
        sub_800FFF8(animation->frameData->action);
    return animation;
}

u32 sub_801052C(struct AnimationStruct *animation)
{
    u32 retVal = 4;
    if (gScriptContext.unk32 && animation->unkC.unk0 == 0xFF)
        return retVal;
    if (animation->frameData->frameDuration > ++animation->frameDurationCounter)
        return retVal;
    animation->frameDurationCounter = 0;
    animation->frameData++;
    if (animation->frameData->flags & 0x2)
        PlaySE(animation->frameData->songId);
    if (animation->frameData->flags & 0x4)
        sub_800FFF8(animation->frameData->action);
    switch (animation->frameData->frameDuration)
    {
    case ANIM_LOOP:
        animation->frameData = (struct AnimationFrame *)(animation->unkC.animFrameDataStartPtr + 8);
        animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
        animation->unk0 |= 0x40000000;
        retVal = 7;
        break;
    case ANIM_STOP:
        animation->unk0 &= ~0x80000000;
        retVal = 0;
        animation->frameData--;
        break;
    case ANIM_DESTROY:
        sub_8010960(animation);
        retVal = 0;
        break;
    default:
        animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
        animation->unk0 |= 0x40000000;
        retVal = 5;
        break;
    }
    return retVal;
}

void sub_80105FC(u32 xOffset, u32 yOffset)
{
    u32 i;
    struct AnimationStruct *animation = gAnimation[0].unk8;
    if (animation == NULL)
        return;
    do
    {
        struct OamAttrs *oam;
        if (animation->unk0 & 8)
            continue;
        animation->unkC.xOrigin += xOffset;
        animation->unkC.yOrigin += yOffset;
        for (oam = &gOamObjects[animation->unk3A]; oam < &gOamObjects[animation->unk3B]; oam++)
        {
            u32 y;
            u32 x;
            u32 xMask;
            u32 yMask = 0xFF;
            y = (u8)oam->attr0;
            oam->attr0 &= ~0xFF;
            y += yOffset;
            y &= yMask; // lulwut
            oam->attr0 |= y;

            xMask = 0x1FF;
            x = oam->attr1 & 0x1FF;
            oam->attr1 &= ~0x1FF;
            x += xOffset;
            x &= xMask;
            oam->attr1 |= x;
        }
    } while ((animation = animation->unk8) != NULL);
}

void StartAnimationBlend(u32 arg0, u32 arg1)
{
    struct AnimationStruct *animation = NULL;
    struct AnimationStruct *animation2;
    struct IORegisters *ioRegsp = &gIORegisters;
    struct Main *main = &gMain;
    if (arg0 & 0xFF00)
    {
        u32 animationId = arg0 >> 8;
        arg0 &= 0xFF;
        animation2 = sub_800F8BC(animationId);
    }
    else
    {
        animation2 = &gAnimation[1];
    }

    if (ioRegsp->lcd_bldy == 0x10 || (!(animation2->unk0 & 0x10000000) && !(arg0 & 2)))
        return;

    if (animation2->unkC.unk2[0] == 0x16)
    {
        animation = sub_800F8BC(0x17);
        if (animation == NULL)
            animation = sub_800F8BC(0x18);
    }

    if (arg0 & 1)
    {
        if ((animation2->unk0 & 0x02000000) && !(animation2->unk0 & 0x4))
            return;
        animation2->unk0 &= ~0x0C000004;
        if (animation != NULL)
            animation->unk0 &= ~0x0C000004;
        main->blendDeltaY = 0x10;
    }
    else if (arg0 & 4)
    {
        if ((animation2->unk0 & 0x02000000) && (animation2->unk0 & 0x4))
            return;
        animation2->unk0 |= 0x4;
        if (animation != NULL)
            animation->unk0 |= 0x4;
        main->blendDeltaY = 0;
        if (arg0 & (4 | 8))
        {
            animation2->unk0 |= 0x04000000;
            if (animation != NULL)
                animation->unk0 |= 0x04000000;
        }
    }
    else
    {
        return;
    }
    animation2->unk0 |= (0x20000000 | 0x2000000);
    if (animation != NULL)
        animation->unk0 |= (0x20000000 | 0x2000000);
    main->blendDelay = arg1;
    main->blendCounter = 0;
    ioRegsp->lcd_bldcnt = BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG3;
    ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x10 - main->blendDeltaY, main->blendDeltaY);
    REG_BLDCNT = ioRegsp->lcd_bldcnt;
    REG_BLDALPHA = ioRegsp->lcd_bldalpha;
}

void UpdateAnimationBlend(struct AnimationStruct *animation)
{
    struct Main *main = &gMain;
    struct IORegisters *ioRegsp = &gIORegisters;
    struct AnimationStruct *animation2 = NULL;
    if (main->blendMode)
    {
        animation->unk0 &= ~0x2000000;
        return;
    }

    if (animation->unkC.unk2[0] == 0x16)
    {
        animation2 = sub_800F8BC(0x17);
        if (animation2 == NULL)
            animation2 = sub_800F8BC(0x18);
    }

    if (++main->blendCounter >= main->blendDelay)
    {
        main->blendCounter = 0;
        if (animation->unk0 & 4)
        {
            main->blendDeltaY++;
            if (main->blendDeltaY == 0x10)
            {
                ioRegsp->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ;
                ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
                animation->unk0 &= ~0x2000000;
                if (animation->unk0 & 0x04000000)
                {
                    sub_800FA74(animation, 0);
                    if (animation2 != NULL)
                        sub_800FA74(animation2, 0);
                    return;
                }
                sub_8010960(animation);
                if (animation2 != NULL)
                    sub_8010960(animation2);
                return;
            }
        }
        else
        {
            main->blendDeltaY--;
            if (main->blendDeltaY == 0)
            {
                ioRegsp->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ;
                ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
                animation->unk0 &= ~0x2000000;
                if (animation2 != NULL)
                    animation2->unk0 &= ~0x2000000;
                return;
            }
        }
    }
    ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x10 - main->blendDeltaY, main->blendDeltaY);
}

void sub_8010928()
{
    struct AnimationStruct *animation = gAnimation;

    for (; animation < &gAnimation[ARRAY_COUNT(gAnimation)]; animation++)
    {
        if (animation->unk0 & 0x10000000)
        {
            animation->unk0 |= (0x20000000 | 0x40000000);
        }
    }
}

#ifdef NONMATCHING
void sub_8010960(struct AnimationStruct *animation)
{
    struct AnimationStruct *animation2;
    struct Main *main = &gMain;
    struct OamAttrs *oam;
    u32 var0;
    if (animation == NULL)
        return;

    if (animation->unkC.unk0 == 0xFF && animation->unkC.unk2[0] == 0x16)
    {
        animation2 = sub_800F8BC(0x17);
        if (animation2 != NULL)
            sub_8010960(animation2);
        animation2 = sub_800F8BC(0x18);
        if (animation2 != NULL)
            sub_8010960(animation2);
    }
    if (animation->unk0 & 0x10000000)
    {
        u32 var1;
        u16 *src;
        u16 *dest;
        u32 size;
        for (oam = &gOamObjects[animation->unk3A]; oam < &gOamObjects[animation->unk3B]; oam++)
        {
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        }
        main->unk1F |= 4;
        animation->unk0 = 0;
        animation->unk4->unk8 = animation->unk8;
        animation->unk8->unk4 = animation->unk4;
        if (animation->unkC.unk0 == 0xFF)
            return;
        if (animation->unkC.unk18 > 9)
            return;
        var0 = animation->unkC.unk18 - 6;
        main->unk1E &= ~(1 << var0);
        var1 = var0 * 16;
        src = gObjPaletteBuffer;
        src += var1;
        var1 = animation->unkC.unk18 * 16;
        dest = (u16 *)OBJ_PLTT;
        dest += var1;
        size = *(u32 *)animation->unkC.animGfxDataStartPtr * 32;
        DmaCopy16(3, src, dest, size);
    }
}
#else
NAKED void sub_8010960(struct AnimationStruct *animation)
{
    asm_unified("push {r4, r5, r6, r7, lr}\n\
	adds r4, r0, #0\n\
	ldr r6, _08010A30\n\
	cmp r4, #0\n\
	beq _08010A28\n\
	ldr r0, [r4, #0xc]\n\
	ldr r1, _08010A34\n\
	ands r0, r1\n\
	ldr r1, _08010A38\n\
	cmp r0, r1\n\
	bne _08010992\n\
	movs r0, #0x17\n\
	bl sub_800F8BC\n\
	cmp r0, #0\n\
	beq _08010984\n\
	bl sub_8010960\n\
_08010984:\n\
	movs r0, #0x18\n\
	bl sub_800F8BC\n\
	cmp r0, #0\n\
	beq _08010992\n\
	bl sub_8010960\n\
_08010992:\n\
	ldr r0, [r4]\n\
	movs r1, #0x80\n\
	lsls r1, r1, #0x15\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08010A28\n\
	adds r0, r4, #0\n\
	adds r0, #0x3a\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #3\n\
	ldr r3, _08010A3C\n\
	adds r1, r0, r3\n\
	adds r2, r4, #0\n\
	adds r2, #0x3b\n\
	ldrb r5, [r2]\n\
	lsls r0, r5, #3\n\
	adds r0, r0, r3\n\
	cmp r1, r0\n\
	bhs _080109CA\n\
	movs r5, #0x80\n\
	lsls r5, r5, #2\n\
_080109BC:\n\
	strh r5, [r1]\n\
	adds r1, #8\n\
	ldrb r7, [r2]\n\
	lsls r0, r7, #3\n\
	adds r0, r0, r3\n\
	cmp r1, r0\n\
	blo _080109BC\n\
_080109CA:\n\
	movs r0, #4\n\
	movs r1, #0\n\
	ldrb r2, [r6, #0x1f]\n\
	orrs r0, r2\n\
	strb r0, [r6, #0x1f]\n\
	str r1, [r4]\n\
	ldr r1, [r4, #4]\n\
	ldr r0, [r4, #8]\n\
	str r0, [r1, #8]\n\
	ldr r1, [r4, #8]\n\
	ldr r0, [r4, #4]\n\
	str r0, [r1, #4]\n\
	ldrh r3, [r4, #0xc]\n\
	cmp r3, #0xff\n\
	beq _08010A28\n\
	adds r2, r4, #0\n\
	adds r2, #0x24\n\
	ldrb r5, [r2]\n\
	cmp r5, #9\n\
	bhi _08010A28\n\
	adds r1, r5, #0\n\
	subs r1, #6\n\
	movs r0, #1\n\
	lsls r0, r1\n\
	ldrb r7, [r6, #0x1e]\n\
	bics r7, r0\n\
	adds r0, r7, #0\n\
	strb r0, [r6, #0x1e]\n\
	lsls r1, r1, #5\n\
	ldr r0, _08010A40\n\
	adds r3, r1, r0\n\
	ldrb r2, [r2]\n\
	lsls r1, r2, #5\n\
	ldr r0, _08010A44\n\
	adds r1, r1, r0\n\
	ldr r0, [r4, #0x20]\n\
	ldr r0, [r0]\n\
	lsls r0, r0, #5\n\
	ldr r2, _08010A48\n\
	str r3, [r2]\n\
	str r1, [r2, #4]\n\
	lsrs r0, r0, #1\n\
	movs r1, #0x80\n\
	lsls r1, r1, #0x18\n\
	orrs r0, r1\n\
	str r0, [r2, #8]\n\
	ldr r0, [r2, #8]\n\
_08010A28:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08010A30: .4byte gMain\n\
_08010A34: .4byte 0x00FFFFFF\n\
_08010A38: .4byte 0x001600FF\n\
_08010A3C: .4byte gOamObjects\n\
_08010A40: .4byte gObjPaletteBuffer\n\
_08010A44: .4byte 0x05000200\n\
_08010A48: .4byte 0x040000D4\n");
}
#endif

void sub_8010A4C()
{
    u32 var0 = 0x80;
    struct OamAttrs *oam = &gOamObjects[ARRAY_COUNT(gOamObjects)];
    struct AnimationStruct *animation;
    for (animation = gAnimation[0].unk8; animation != NULL; animation = animation->unk8)
    {
        u32 i, j;
        if ((animation->unk0 & 0x10000000) == 0)
            continue;
        animation->unk3B = var0;
        if ((gMain.unk1F & 2) && (animation->unk0 & 0x20000000))
        {
            void *ptr = (void *)animation->unk30;
            struct SpriteTemplate *spriteTemplates = animation->unk30;
            s32 xOrigin = animation->unkC.xOrigin - gMain.shakeAmountX;
            s32 yOrigin = animation->unkC.yOrigin - gMain.shakeAmountY;
            u32 tileNum = animation->tileNum & 0xFFF;
            s32 spriteCount = *(u16 *)ptr;
            struct Struct8019450 *ewram = eUnknown_0200AFC0;
            ewram += var0;
            for (i = 0; i < spriteCount; i++)
            {
                s32 y;
                var0--;
                oam--;
                ewram--;
                spriteTemplates++;
                *ewram = gUnknown_08019450[spriteTemplates->data >> 0xC];
                oam->attr0 = (spriteTemplates->data & 0x3000) << 2; // Sprite Shape
                y = yOrigin + spriteTemplates->y;
                if (y < -64)
                    y = -64;
                if (y > 224)
                    y = 224;
                oam->attr0 |= y & 0xFF;
                if (animation->unk0 & 0x2000000)
                    oam->attr0 |= 0x400;
                oam->attr1 = spriteTemplates->data & 0xC000;
                if (animation->unk0 & 1)
                {
                    u16 x = (xOrigin - (spriteTemplates->x + ewram->unk3)) & 0x1FF;
                    oam->attr1 |= 0x1000 | x;
                }
                else
                {
                    u16 x = (xOrigin + spriteTemplates->x) & 0x1FF;
                    oam->attr1 |= (*(u8 *)(&animation->unk3E)) << 9 | x;
                }
                oam->attr2 = tileNum | *((u8 *)(&animation->unk3E) + 1) << 10;
                if (animation->frameData->flags & 1)
                    oam->attr2 |= (animation->unkC.unk18 + ((spriteTemplates->data >> 9) & 7)) << 12;
                else
                    oam->attr2 |= (animation->unkC.unk18 + ((spriteTemplates->data >> 11) & 1)) << 12;
                tileNum += ewram->unk0 / TILE_SIZE_4BPP;
            }
        }
        animation->unk3A = animation->unk3B - animation->unkC.unk19;
        var0 -= animation->unk3A;
        for (var0 -= 1; var0 != -1; var0--)
        {
            oam--;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        }
        var0 = animation->unk3A;
    }
}

#ifdef NONMATCHING
void sub_8010C4C(bool32 arg0)
{
    struct AnimationStruct *animation;

    for (animation = gAnimation[0].unk8; animation != NULL; animation = animation->unk8)
    {
        u8 * tileDest;
        u32 i;
        u32 spriteCount;
        u32 palCount;
        struct SpriteTemplate * spriteTemplates;
        struct Struct8019450 * ewram;
        struct AnimationStructFieldC * animC;
        if(!(animation->unk0 & 0x40000000))
            continue;
        if(!(animation->unk0 & 0x20000000))
            continue;
        tileDest = arg0 ? (u8*)0x200B1C0 : animation->unkC.vramPtr;
        spriteTemplates = animation->unk30;
        spriteCount = *(u16*)animation->unk30;
        ewram = eUnknown_0200AFC0;
        ewram += animation->unk3B;
        animation->unk0 &= ~0x40000000;
        palCount = *(u32*)animation->unkC.animGfxDataStartPtr;
        if(palCount & 0x80000000)
        {
            for(i = 0; i < spriteCount; i++)
            {
                u8 * ptr;
                void * ptr2;
                u8 * ptr3;
                u32 tileNum;
                u32 compressedTileOffset;
                spriteTemplates++;
                ewram--;
                ptr = tileDest + ewram->unk0;
                tileNum = spriteTemplates->data & 0x1FF;
                ptr3 = animation->unkC.tileDataPtr;
                compressedTileOffset = ((u32 *)ptr3)[tileNum];
                ptr2 = ptr3 + compressedTileOffset;
                while(ptr > tileDest)
                {
                    if(*(u16*)ptr2 & 0x8000)
                    {
                        u32 size = (*(u16*)ptr2 & 0x7FFF) * 2; 
                        DmaFill16(3, *((u16*)ptr2+1), tileDest, size);
                        tileDest += size;
                        ptr2 += 4;
                    }
                    else
                    {
                        u32 size = *(u16*)ptr2 * 2;
                        ptr2 += 2;
                        DmaCopy16(3, ptr2, tileDest, size);
                        tileDest += size;
                        ptr2 += size;
                    }
                }
            }
        }
        else
        {
            u32 mask = animation->frameData->flags & 1 ? 0x1FF : 0x7FF;
            for(i = 0; i < spriteCount; i++)
            {
                u32 tileNum;
                u32 size;
                u32 offset;
                u8 * tilePtr;
                u16 * what;
                spriteTemplates++;
                ewram--;
                tileNum = spriteTemplates->data & mask;
                tilePtr = animation->unkC.tileDataPtr + tileNum * 32;
                what = &ewram->unk0;
                DmaCopy16(3, tilePtr, tileDest, *what);
                tileDest += *what;
            }
        }
        if(animation->unk0 & 0x1000000)
        {
            void * dest;
            u8 * src;
            u32 size;
            u32 palOffset;
            palOffset = animation->unkC.unk18 & 0xF;

            dest = (u8*)OBJ_PLTT + palOffset*32;
            palCount *= 32;
            src = animation->unkC.animGfxDataStartPtr+4;
            DmaCopy16(3, src, dest, palCount);
            animation->unk0 &= ~0x1000000;
        }
    }
}
#else
NAKED void sub_8010C4C(bool32 arg0)
{
    asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x14\n\
	str r0, [sp, #4]\n\
	ldr r0, _08010D14\n\
	ldr r5, [r0, #8]\n\
	cmp r5, #0\n\
	bne _08010C64\n\
	b _08010DEE\n\
_08010C64:\n\
	ldr r1, [r5]\n\
	movs r0, #0x80\n\
	lsls r0, r0, #0x17\n\
	ands r0, r1\n\
	ldr r2, [r5, #8]\n\
	str r2, [sp, #0xc]\n\
	cmp r0, #0\n\
	bne _08010C76\n\
	b _08010DE6\n\
_08010C76:\n\
	movs r0, #0x80\n\
	lsls r0, r0, #0x16\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _08010C82\n\
	b _08010DE6\n\
_08010C82:\n\
	ldr r6, _08010D18\n\
	ldr r3, [sp, #4]\n\
	cmp r3, #0\n\
	bne _08010C8C\n\
	ldr r6, [r5, #0x1c]\n\
_08010C8C:\n\
	ldr r0, [r5, #0x30]\n\
	mov ip, r0\n\
	ldrh r2, [r0]\n\
	mov sl, r2\n\
	adds r0, r5, #0\n\
	adds r0, #0x3b\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #2\n\
	ldr r3, _08010D1C\n\
	adds r7, r0, r3\n\
	ldr r0, _08010D20\n\
	ands r1, r0\n\
	str r1, [r5]\n\
	ldr r0, [r5, #0x20]\n\
	ldr r0, [r0]\n\
	str r0, [sp, #8]\n\
	movs r1, #0x80\n\
	lsls r1, r1, #0x18\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08010D56\n\
	movs r2, #0\n\
	cmp r2, sl\n\
	bhs _08010DA4\n\
_08010CBC:\n\
	movs r3, #4\n\
	add ip, r3\n\
	subs r7, #4\n\
	ldrh r0, [r7]\n\
	adds r0, r0, r6\n\
	mov r8, r0\n\
	ldr r0, _08010D24\n\
	mov r1, ip\n\
	ldrh r1, [r1, #2]\n\
	ands r0, r1\n\
	ldr r1, [r5, #0x18]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	adds r3, r1, r0\n\
	adds r2, #1\n\
	str r2, [sp, #0x10]\n\
	cmp r8, r6\n\
	bls _08010D4E\n\
	ldr r4, _08010D28\n\
	mov sb, sp\n\
_08010CE6:\n\
	ldrh r2, [r3]\n\
	movs r0, #0x80\n\
	lsls r0, r0, #8\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	beq _08010D30\n\
	ldr r1, _08010D2C\n\
	ands r1, r2\n\
	ldrh r0, [r3, #2]\n\
	mov r2, sb\n\
	strh r0, [r2]\n\
	mov r0, sp\n\
	str r0, [r4]\n\
	str r6, [r4, #4]\n\
	lsls r2, r1, #1\n\
	movs r0, #0x81\n\
	lsls r0, r0, #0x18\n\
	orrs r1, r0\n\
	str r1, [r4, #8]\n\
	ldr r0, [r4, #8]\n\
	adds r6, r6, r2\n\
	adds r3, #4\n\
	b _08010D4A\n\
	.align 2, 0\n\
_08010D14: .4byte gAnimation\n\
_08010D18: .4byte gUnknown_0200B1C0\n\
_08010D1C: .4byte gUnknown_0200AFC0\n\
_08010D20: .4byte 0xBFFFFFFF\n\
_08010D24: .4byte 0x000001FF\n\
_08010D28: .4byte 0x040000D4\n\
_08010D2C: .4byte 0x00007FFF\n\
_08010D30:\n\
	ldrh r1, [r3]\n\
	lsls r0, r1, #1\n\
	adds r3, #2\n\
	str r3, [r4]\n\
	str r6, [r4, #4]\n\
	lsrs r1, r0, #1\n\
	movs r2, #0x80\n\
	lsls r2, r2, #0x18\n\
	orrs r1, r2\n\
	str r1, [r4, #8]\n\
	ldr r1, [r4, #8]\n\
	adds r6, r6, r0\n\
	adds r3, r3, r0\n\
_08010D4A:\n\
	cmp r8, r6\n\
	bhi _08010CE6\n\
_08010D4E:\n\
	ldr r2, [sp, #0x10]\n\
	cmp r2, sl\n\
	blo _08010CBC\n\
	b _08010DA4\n\
_08010D56:\n\
	ldr r1, [r5, #0x34]\n\
	movs r0, #1\n\
	ldrb r1, [r1, #3]\n\
	ands r0, r1\n\
	ldr r3, _08010E00\n\
	mov sb, r3\n\
	cmp r0, #0\n\
	beq _08010D6A\n\
	ldr r0, _08010E04\n\
	mov sb, r0\n\
_08010D6A:\n\
	movs r2, #0\n\
	cmp r2, sl\n\
	bhs _08010DA4\n\
	ldr r4, _08010E08\n\
	movs r1, #0x80\n\
	lsls r1, r1, #0x18\n\
	mov r8, r1\n\
_08010D78:\n\
	movs r3, #4\n\
	add ip, r3\n\
	subs r7, #4\n\
	mov r0, sb\n\
	mov r1, ip\n\
	ldrh r1, [r1, #2]\n\
	ands r0, r1\n\
	lsls r0, r0, #5\n\
	ldr r1, [r5, #0x18]\n\
	adds r3, r1, r0\n\
	str r3, [r4]\n\
	str r6, [r4, #4]\n\
	ldrh r3, [r7]\n\
	lsrs r0, r3, #1\n\
	mov r1, r8\n\
	orrs r0, r1\n\
	str r0, [r4, #8]\n\
	ldr r0, [r4, #8]\n\
	adds r6, r3, r6\n\
	adds r2, #1\n\
	cmp r2, sl\n\
	blo _08010D78\n\
_08010DA4:\n\
	ldr r0, [r5]\n\
	movs r1, #0x80\n\
	lsls r1, r1, #0x11\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08010DE6\n\
	adds r0, r5, #0\n\
	adds r0, #0x24\n\
	movs r1, #0xf\n\
	ldrb r0, [r0]\n\
	ands r1, r0\n\
	lsls r1, r1, #5\n\
	ldr r0, _08010E0C\n\
	adds r1, r1, r0\n\
	ldr r0, [sp, #8]\n\
	lsls r0, r0, #5\n\
	str r0, [sp, #8]\n\
	ldr r0, [r5, #0x20]\n\
	adds r3, r0, #4\n\
	ldr r2, _08010E08\n\
	str r3, [r2]\n\
	str r1, [r2, #4]\n\
	ldr r1, [sp, #8]\n\
	lsrs r0, r1, #1\n\
	movs r3, #0x80\n\
	lsls r3, r3, #0x18\n\
	orrs r0, r3\n\
	str r0, [r2, #8]\n\
	ldr r0, [r2, #8]\n\
	ldr r0, [r5]\n\
	ldr r1, _08010E10\n\
	ands r0, r1\n\
	str r0, [r5]\n\
_08010DE6:\n\
	ldr r5, [sp, #0xc]\n\
	cmp r5, #0\n\
	beq _08010DEE\n\
	b _08010C64\n\
_08010DEE:\n\
	add sp, #0x14\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08010E00: .4byte 0x000007FF\n\
_08010E04: .4byte 0x000001FF\n\
_08010E08: .4byte 0x040000D4\n\
_08010E0C: .4byte 0x05000200\n\
_08010E10: .4byte 0xFEFFFFFF\n");
}
#endif

void sub_8010E14(u32 arg0)
{
    struct Main * main = &gMain;
    struct AnimationStruct *animation2 = gAnimation;
    struct CourtScroll * courtScroll = &gCourtScroll;
    if(main->unk1F & 1)
    {
        struct AnimationStruct *animation;
        for (animation = animation2->unk8; animation != NULL; animation = animation->unk8)
        {
            if(animation->unkC.unk0 >= 12 && animation->unkC.unk0 <= 16)
            {
                if(main->currentBG != animation->unk2C)
                { 
                    if(main->currentRoomId == animation->unk2D)
                        sub_800FA74(animation, 0);
                    else
                        sub_8010960(animation);
                    continue;
                }
                else
                {
                    if(!(animation->unk0 & 0x20000000))
                    {
                        if(main->unk2C == 0)
                        {
                            sub_8010204(animation->unkC.unk0);
                            sub_800FA74(animation, 1);
                        }
                    }
                }
            }
            else if(animation->unkC.unk0 >= 31 && animation->unkC.unk0 <= 61)
            {
                if(arg0 != animation->unk2C)
                {
                    sub_8010960(animation);
                    continue;
                }
            }
            else if(animation->unkC.unk0 >= 25 && animation->unkC.unk0 <= 61)
            {
                if(main->currentBG != animation->unk2C)
                    sub_8010960(animation);
            }
            if(animation->unk0 & 0x2000000)
            {
                if(!(animation->unkC.unk0 <= 24 && animation->unkC.unk0 >= 17))
                    UpdateAnimationBlend(animation);
                continue;
            }
            if(animation->unk0 < 0) // what the fuck
            {
                if(main->blendMode == 0)
                {
                    if(sub_801052C(animation) == 0)
                        continue;
                }
            }
            if(animation->unkC.unk0 <= 0xB)
                gUnknown_0811DFD0[animation->unkC.unk0 - 1](animation);
            if(courtScroll->state)
            {
                if(animation->unkC.unk0 == 0xFF)
                    sub_80110E4(animation);
            }
        }
    }
    if(main->unk1F & 0x4)
    {
        main->unk1F &= ~0x4;
        sub_800F84C();
    }
    sub_8010A4C();
}

void sub_8010F68(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin += gUnknown_0801948C[courtScroll->unkC];
    if(courtScroll->unkC == 0xF)
        sub_80100A8(courtScroll->unk8, courtScroll->unkA, -110, 80, 0);
}

void sub_8010FA8(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin -= gUnknown_0801948C[0x1E - courtScroll->unkC];
    if(courtScroll->unkC == 0xF)
        sub_80100A8(courtScroll->unk8, courtScroll->unkA, 350, 80, 0);
}

void sub_8010FEC(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin += gUnknown_080194AB[courtScroll->unkC];
    if(courtScroll->unkC == 0xE)
        sub_80100A8(courtScroll->unk8, courtScroll->unkA, -84, 80, 0);
}

void sub_801102C(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin -= gUnknown_080194CA[courtScroll->unkC];
    if(courtScroll->unkC == 0xE)
        sub_80100A8(courtScroll->unk8, courtScroll->unkA, 220, 80, 0);
}

void sub_8011068(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin -= gUnknown_080194AB[courtScroll->unkC];
    if(courtScroll->unkC == 0xE)
        sub_80100A8(courtScroll->unk8, courtScroll->unkA, 324, 80, 0);
}

void sub_80110A8(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin += gUnknown_080194CA[courtScroll->unkC];
    if(courtScroll->unkC == 0xE)
        sub_80100A8(courtScroll->unk8, courtScroll->unkA, 20, 80, 0);
}

void sub_80110E4(struct AnimationStruct * animation)
{
    struct CourtScroll * courtScroll = &gCourtScroll;
    gUnknown_0811DFFC[courtScroll->unk6](&gAnimation[1], courtScroll);
}

void sub_8011108(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    gCourtScroll.unk6 = arg0 * 2;
    if(arg1 & 1)
        gCourtScroll.unk6++;
    gCourtScroll.unk8 = arg2;
    gCourtScroll.unkA = arg3;
}

void sub_8011130(struct AnimationStruct * animation)
{
    s32 rand = (Random() & 3) + 1;
    s32 rand2 = (Random() & 7) - 4;
    if(animation->unk2B == 0)
        animation->unk2E = animation->unkC.xOrigin;
    animation->unk2B++;
    if(animation->unk2B < 0x1F)
    {
        if((animation->unk2B & 1) != 0)
            animation->unkC.xOrigin = animation->unk2E + rand;
        else
            animation->unkC.xOrigin = animation->unk2E - rand;
        animation->unkC.yOrigin += rand2;
        if(animation->unkC.yOrigin > 90)
            animation->unkC.yOrigin = 90;
        else if(animation->unkC.yOrigin < 70)
            animation->unkC.yOrigin = 70;
    }
    else
        animation->unk2B = 40;
}

void sub_80111A0(struct AnimationStruct * animation)
{
    struct Main * main = &gMain;
    //u32 var0;
    if(main->currentBG == 0xFF)
    {
        sub_800FA74(animation, 0);
        return;
    }
    sub_800FA74(animation, 1);
    if(main->currentBG == 0x4A)
    {
        if(animation->unkC.unk0 == 5)
            animation->unk2E += 3;
        else if(animation->unkC.unk0 == 6)
            animation->unk2E -= 5;
        else
            animation->unk2E += 1;
    }
    else
    {
        if(animation->unkC.unk0 == 5)
            animation->unk2E -= 3;
        else if(animation->unkC.unk0 == 6)
            animation->unk2E += 5;
        else
            animation->unk2E -= 1;
    }
    animation->unkC.xOrigin += animation->unk2E / 20;
    if(animation->unk2E > 20)
        animation->unk2E -= 20;
    else if(animation->unk2E < -20)
        animation->unk2E += 20;
}
