#include "global.h"

void sub_800F7F0()
{
    gAnimation[0].unk0 = 1;
    gAnimation[0].unk8 = NULL;
    gAnimation[0].unk4 = 0;
}

void sub_800F804()
{
    struct AnimationStruct * iwstruct800p = gAnimation;
    DmaFill16(3, 0, &gAnimation, sizeof(gAnimation));
    gMain.unk1F |= 3;
    iwstruct800p = &gAnimation[1];
    iwstruct800p->unkC = 0xFF;
    iwstruct800p->personId = 0;
    sub_800F7F0();
}

void sub_800F84C() 
{
    struct AnimationStruct * iwstruct800p;
    for (iwstruct800p = &gAnimation[1]; iwstruct800p < &gAnimation[0x20]; iwstruct800p++)
    {
        if (iwstruct800p->unk0 & 0x10000000) 
        {
            if (&gOamObjects[iwstruct800p->unk3A] < &gOamObjects[iwstruct800p->unk3B]) 
            {
                struct OamAttrs* oam;
                for (oam = &gOamObjects[iwstruct800p->unk3A]; oam < &gOamObjects[iwstruct800p->unk3B]; oam++)
                {
                    oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_ERASE, 0, 0, 0, 0);
                }
            }
        }
    }
}

struct AnimationStruct * sub_800F8BC(u32 arg0)
{
    struct AnimationStruct * iwstruct800p = &gAnimation[0x1F];
    s32 i = 0x1f;
    do
    {
        if (iwstruct800p->unkC == arg0 && iwstruct800p->unk0 & 0x10000000)
        {
            return iwstruct800p;
        }
        iwstruct800p--;
        i--;
    } while (i != -1);
    return NULL;
}

struct AnimationStruct * sub_800F8F4(u32 arg0)
{
    u32 flags;
    s32 r1, i;
    struct AnimationStruct * iwstruct800p = sub_800F8BC(arg0);
    if (iwstruct800p != NULL) 
    {
        r1 = -(iwstruct800p->unk0 & 0x02000000);
        flags = r1 >> 0x1f;
        flags = flags & 0x02000000;
        if (iwstruct800p->unk0 & 0x08000000)
        {
            flags = 0x08000000;
        }
        sub_8010960(iwstruct800p);
        DmaFill16(3, 0, iwstruct800p, 0x40)
        iwstruct800p->unk0 = 0xF1000000 | flags;
        iwstruct800p->unk28 = 0xffff;
        if (flags & 0x08000000)
        {
            iwstruct800p->unk0 &= ~0x20000000;
        }
        iwstruct800p->unkC = arg0;
        return iwstruct800p;
    }
    else 
    {
        iwstruct800p = &gAnimation[0x1F];
        for (i = 0x1f; i != -1; i--)
        {
            r1 = iwstruct800p->unk0 & 0x10000000;
            if (r1 == 0)
            {
                if (iwstruct800p != &gAnimation[1])
                {
                    DmaFill16(3, r1, iwstruct800p, 0x40)
                    iwstruct800p->unk0 = 0xf1000000;
                    iwstruct800p->unkC = arg0;
                    return iwstruct800p;
                }
            }
            iwstruct800p--;
        }
        return 0;
    }
}

void sub_800F9C4(struct AnimationStruct * iwstruct800p, u32 x, u32 y)
{
    if (iwstruct800p != NULL)
    {
        iwstruct800p->xOrigin = x;
        iwstruct800p->yOrigin = y;
    }
}

void sub_800F9D0(struct AnimationStruct * iwstruct800p, u32 arg1)
{
    s32 r0; 
    s32 r4;
    u32 r5;
    r5 = arg1 << 2;
    if (iwstruct800p != NULL)
    {
        if (arg1 > 0x1f)
        {
            arg1 = 0x1f;
        }
        iwstruct800p->unk0 = (iwstruct800p->unk0 & ~1) | 0x100000;
        iwstruct800p->unk3C &= 0xff;
        iwstruct800p->unk3E &= 0xff00; 
        iwstruct800p->unk3E |= arg1;
        r4 = _Cos(iwstruct800p->unk3C);
        r0 = -_Sin(iwstruct800p->unk3C);
        gOamObjects[r5++].attr3 = r4;
        gOamObjects[r5++].attr3 = -r0;
        gOamObjects[r5++].attr3 = r0;
        gOamObjects[r5++].attr3 = r4;
    }
}

void sub_800FA50(struct AnimationStruct * iwstruct800p, u32 arg1, u32 arg2)
{
    if (iwstruct800p != NULL)
    {
        iwstruct800p->unk3C = arg2;
        sub_800F9D0(iwstruct800p, arg1);
    }
}

void sub_800FA60(struct AnimationStruct * iwstruct800p)
{
    if (iwstruct800p != NULL)
    {
        iwstruct800p->unk0 &= ~0x100000;
    }
}

void sub_800FA74(struct AnimationStruct * iwstruct800p, bool32 arg1)
{
    u32 i;
    if (iwstruct800p != 0 && (iwstruct800p->unk0 & 0x10000000))
    {
        if (arg1)
        {
            iwstruct800p->unk0 &= ~0x8000000;
            iwstruct800p->unk0 |= 0x20000000;
        }
        else
        {
            iwstruct800p->unk0 &= ~0x20000000;
            iwstruct800p->unk0 |= 0x08000000;
            for(i = iwstruct800p->unk3A; i < iwstruct800p->unk3B; i++)
            {
                gOamObjects[i].attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_ERASE, 0, 0, 0, 0);
            }
        }
        if (iwstruct800p->unkC == 0xff && iwstruct800p->personId == 0x16)
        {
            if ((iwstruct800p = sub_800F8BC(0x17)) != NULL || (iwstruct800p = sub_800F8BC(0x18)) != NULL)
            {
                if (arg1)
                {
                    iwstruct800p->unk0 &= ~0x8000000;
                    iwstruct800p->unk0 |= 0x20000000;
                }
                else
                {
                    iwstruct800p->unk0 &= ~0x20000000;
                    iwstruct800p->unk0 |= 0x08000000;
                    for(i = iwstruct800p->unk3A; i < iwstruct800p->unk3B; i++)
                    {
                        gOamObjects[i].attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_ERASE, 0, 0, 0, 0);
                    }
                }
            }
        }
    }
}

void sub_800FB64(struct AnimationStruct * iwstruct800p, bool32 arg1)
{
    if (iwstruct800p != NULL)
    {
        if (arg1)
        {
            iwstruct800p->unk0 |= 1;
        }
        else
        {
            iwstruct800p->unk0 &= ~1;
        }
    }
}

void sub_800FB84(struct AnimationStruct * iwstruct800p, u32 arg1)
{
    if (iwstruct800p != NULL)
    {
        if (arg1 > 3)
        {
            arg1 = 3;
        }
        iwstruct800p->unk3E &= 0xff;
        iwstruct800p->unk3E |= arg1 << 8;
    }
}

void sub_800FBA0(struct AnimationStruct * iwstruct800p, u32 arg1)
{
    if(iwstruct800p != NULL)
    {
        if(iwstruct800p->unkC == 0xFF)
        {
            u8 * ptr1;
            ptr1 = gUnknown_08018DD4[iwstruct800p->personId].unk4 + arg1;
            if(iwstruct800p->animFrameDataStartPtr == ptr1)
            {
                return;
            }
            iwstruct800p->animFrameDataStartPtr = ptr1;
            iwstruct800p->animGfxDataStartPtr = gUnknown_08018DD4[iwstruct800p->personId].unk0;
        }
        else
        {
            if(iwstruct800p->unkC > 0xb)
            {
                if(iwstruct800p->unkC <= 0x10)
                {
                    iwstruct800p->animFrameDataStartPtr = (u8 *)0x871FCF4 + arg1; // ! FOR THE LOVE OF GOD CAPCOM
                    iwstruct800p->animGfxDataStartPtr = (u8 *)0x871EBBC;
                }
                else
                {
                    if(iwstruct800p->unkC > 0x18)
                    {
                        return;
                    }
                    iwstruct800p->animFrameDataStartPtr = (u8 *)0x8748218 + arg1;
                    iwstruct800p->animGfxDataStartPtr = (u8 *)0x871FDF8;
                }
            }
            else
            {
                iwstruct800p->animFrameDataStartPtr = (u8 *)0x8748218 + arg1;
                iwstruct800p->animGfxDataStartPtr = (u8 *)0x871FDF8;
            }
        }
        iwstruct800p->unk0 |= 0xC0000000; 
        iwstruct800p->unk28 = 0xFFFF;
        // comments mostly based on h3rmit docs
        // iwstruct800p->animFrameDataStartPtr animation block beginning 
        iwstruct800p->animGfxDataStartPtr += 1[(u32 *)iwstruct800p->animFrameDataStartPtr]; // offsets the graphics pointer
        iwstruct800p->unk18 = iwstruct800p->animGfxDataStartPtr + 4 + (*(u32 *)iwstruct800p->animGfxDataStartPtr) * 0x20; // skip first u32 (number of palettes) and the palettes, pointer to tiles
        iwstruct800p->unk34 = iwstruct800p->animFrameDataStartPtr+8; // skips animation block header, pointer to frame data
        iwstruct800p->unk30 = iwstruct800p->animFrameDataStartPtr + *(u16 *)iwstruct800p->unk34; // Frame tilemap pointer
    }
}

#ifdef NONMATCHING
u32 sub_800FC40(struct Rect * p) // NOPE
{
    /*
    u32 unk0 = 0; // sp
    u32 unk1;
    void * unk2, * unk3;
    struct AnimationStruct * iwstruct800p;
    for(iwstruct800p = gAnimation.unk8; iwstruct800p != NULL; iwstruct800p = iwstruct800p->unk8)
    {
        u32 i;
        *(struct Point2 *)0x200AFC0 = *p;
        ((struct Point2 *)0x200AFC0)->x1 += p->x0;
        ((struct Point2 *)0x200AFC0)->y1 += p->y0;
        unk2 = iwstruct800p->unk1C; // s1
        unk3 = iwstruct800p->unk30; // r8
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
NAKED u32 sub_800FC40(struct Rect * p) 
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

bool32 sub_800FE24(struct Point * pt0, struct Point * pt1, struct Point * pt2, struct Point * pt3)
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

bool32 CheckRectCollisionWithArea(struct Rect * rect, struct Point4 * area)
{
    u32 i, j, k;
    struct Point4 p;
    struct Point * p1 = &area->points[0];
    struct Point * p2 = &area->points[1];
    struct Point * p3 = &p.points[0];
    struct Point * p4 = &p.points[1];
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

void sub_800FFB0(struct AnimationStruct * iwstruct800p)
{
    struct AnimationStruct * variwstruct800p = gAnimation;
    u32 i;
    for(i = 0; ; i++)
    {
        if(i > 0x1F)
            return;
        if(variwstruct800p->unk8 == NULL)
        {
            iwstruct800p->unk4 = variwstruct800p;
            variwstruct800p->unk8 = iwstruct800p;
            return;
        }
        variwstruct800p = variwstruct800p->unk8;
        if(variwstruct800p->unk26 >= iwstruct800p->unk26)
            continue; // ! WTF? is this a do while()? couldn't match with one
        break;
    }
    iwstruct800p->unk4 = variwstruct800p->unk4;
    iwstruct800p->unk8 = variwstruct800p;
    variwstruct800p->unk4->unk8 = iwstruct800p;
    variwstruct800p->unk4 = iwstruct800p;
}

void sub_800FFF8(u32 arg0)
{
    switch(arg0)
    {
        case 1:
            if((gMain.gameStateFlags & 1) == 0)
            {
                gMain.shakeTimer = 30;
                gMain.gameStateFlags |= 1;
                gMain.shakeIntensity = 1;
            }
            break;
        case 2:
            if(gMain.blendMode == 0)
            {
                StartHardwareBlend(3, 1, 8, 0x1F);
            }
            break;
        default:
            break;
    }
}

struct AnimationStruct * sub_8010048(u32 arg0, u32 arg1, u32 talkingAnimOff, u32 arg3)
{
    u32 xOrigin = 120;
    struct Main * main = &gMain;
    if(arg0 & 0x8000 && main->unk3A & 0x10)
    {
        xOrigin -= 240;
    }
    if(arg0 & 0x4000 && main->unk3A & 0x20)
    {
        xOrigin += 240;
    }
    if(arg0 & 0x2000)
    {
        arg1 |= 1;
    }
    return sub_80100A8(arg0, talkingAnimOff, xOrigin, 0x50, arg1);
}

struct AnimationStruct * sub_80100A8(u32 arg0, u32 talkingAnimOff, u32 xOrigin, u32 yOrigin, u32 arg4)
{
    struct Main * main = &gMain;
    struct AnimationStruct * iwstruct800p = &gAnimation[1];
    struct Struct300080C struct80C;
    u32 personId = arg0 & 0xFF;
    if(personId == 0)
    {
        if(iwstruct800p->unk0 & 0x10000000)
            sub_8010960(iwstruct800p);
        return NULL;
    }
    struct80C.unk0 = 0xFF;
    struct80C.unk2 = arg0;
    struct80C.unk10 = OBJ_VRAM0 + 0x5800; 
    struct80C.unk14 = gUnknown_08018DD4[personId].unk0;
    struct80C.unk8 = gUnknown_08018DD4[personId].unk4 + talkingAnimOff;
    struct80C.unk18 = 14;
    if(main->process[GAME_PROCESS] == 3) // trial
        struct80C.unk19 = 0x27;
    else
        struct80C.unk19 = gUnknown_08018DD4[personId].unk8;
    struct80C.unk1A = 0x21;
    struct80C.xOrigin = xOrigin;
    struct80C.yOrigin = yOrigin;
    if((iwstruct800p->unk0 & 0x10000000) == 0)
    {
        DmaFill16(3, 0, iwstruct800p, sizeof(gAnimation[1]));
        iwstruct800p->unk0 |= 0x10000000;
        iwstruct800p->unkC = 0xFF;
        sub_800FFB0(iwstruct800p);
    }
    iwstruct800p->unk2C |= 0;
    sub_8010468(&struct80C, 0xFF, arg4);
    iwstruct800p->unk2C = main->currentBG;
    if(iwstruct800p->personId == 0x16 && main->process[GAME_PROCESS] == 4) // person id 0x16 investigation
    {
        struct AnimationStruct * ptr;
        u32 var0 = iwstruct800p->unk0 & 0x02000000;
        switch(talkingAnimOff)
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
    return iwstruct800p;
}