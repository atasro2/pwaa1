#include "global.h"
#include "animation.h"
#include "ewram.h"
#include "sound_control.h"
#include "constants/animation.h"

static struct AnimationStruct * sub_8010468(struct AnimationStructFieldC *animationFieldC, u32 arg1, u32 arg2);
static void sub_80110E4(struct AnimationStruct * animation);

static void InitCurrentAnimationToNull()
{
    gAnimation[0].flags = ANIM_ENABLE_XFLIP;
    gAnimation[0].nextAnimation = NULL;
    gAnimation[0].prevAnimation = NULL;
}

void ResetAnimationSystem()
{
    struct AnimationStruct *animation = gAnimation;
    DmaFill16(3, 0, gAnimation, sizeof(gAnimation));
    gMain.unk1F |= 3;
    animation = &gAnimation[1];
    animation->unkC.animId = 0xFF;
    animation->unkC.unk2[0] = 0;
    InitCurrentAnimationToNull();
}

void ClearAllAnimationSprites()
{
    struct AnimationStruct *animation;
    for (animation = &gAnimation[1]; animation < &gAnimation[0x20]; animation++)
    {
        if (animation->flags & ANIM_ALLOCATED)
        {
            if (&gOamObjects[animation->animtionOamStartIdx] < &gOamObjects[animation->animtionOamEndIdx])
            {
                struct OamAttrs *oam;
                for (oam = &gOamObjects[animation->animtionOamStartIdx]; oam < &gOamObjects[animation->animtionOamEndIdx]; oam++)
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
            }
        }
    }
}

struct AnimationStruct * FindAnimationFromAnimId(u32 animId)
{
    struct AnimationStruct *animation = &gAnimation[0x1F];
    s32 i;
    for(i = 0x1F; i != -1; i--) // ! Might read first element in gAnimation array 
    {
        if (animation->unkC.animId == animId && animation->flags & ANIM_ALLOCATED)
            return animation;
        animation--;
    }
    return NULL;
}

static struct AnimationStruct *AllocateAnimationWithId(u32 animId)
{
    u32 flags = 0;
    s32 i;
    struct AnimationStruct *animation = FindAnimationFromAnimId(animId);
    if (animation != NULL)
    {
        flags = (animation->flags & 0x02000000) ? 0x02000000 : flags;
        flags = (animation->flags & ANIM_INACTIVE) ? ANIM_INACTIVE : flags;
        DestroyAnimation(animation);
        DmaFill16(3, 0, animation, 0x40)
        animation->flags = (ANIM_PLAYING | ANIM_QUEUED_TILE_UPLOAD | ANIM_ACTIVE | ANIM_ALLOCATED | ANIM_QUEUED_PAL_UPLOAD) | flags;
        animation->frameDurationCounter = 0xffff;
        if (flags & ANIM_INACTIVE)
            animation->flags &= ~ANIM_ACTIVE;
        animation->unkC.animId = animId;
        return animation;
    }
    else
    {
        animation = &gAnimation[0x1F];
        for (i = 0x1f; i != -1; i--)
        {
            if (!(animation->flags & ANIM_ALLOCATED))
            {
                if (animation != &gAnimation[1])
                {
                    DmaFill16(3, 0, animation, 0x40)
                    animation->flags = (ANIM_PLAYING | ANIM_QUEUED_TILE_UPLOAD | ANIM_ACTIVE | ANIM_ALLOCATED | ANIM_QUEUED_PAL_UPLOAD);
                    animation->unkC.animId = animId;
                    return animation;
                }
            }
            animation--;
        }
        return NULL;
    }
}

void SetAnimationOriginCoords(struct AnimationStruct *animation, u32 xOrigin, u32 yOrigin) // unused
{
    if (animation != NULL)
    {
        animation->unkC.xOrigin = xOrigin;
        animation->unkC.yOrigin = yOrigin;
    }
}

static void SetAnimationRotScaleParams(struct AnimationStruct *animation, u32 rotscaleIdx)
{
    s32 sin, cos;
    u32 oamIdx;
    oamIdx = rotscaleIdx << 2;
    if (animation != NULL)
    {
        if (rotscaleIdx > 0x1f)
            rotscaleIdx = 0x1f;
        animation->flags = (animation->flags & ~ANIM_ENABLE_XFLIP) | ANIM_ENABLE_ROTATION;
        animation->rotationAmount &= 0xff;
        animation->unk3E &= 0xff00;
        animation->unk3E |= rotscaleIdx;
        cos = _Cos(animation->rotationAmount);
        sin = -_Sin(animation->rotationAmount);
        gOamObjects[oamIdx++].attr3 = cos;
        gOamObjects[oamIdx++].attr3 = -sin;
        gOamObjects[oamIdx++].attr3 = sin;
        gOamObjects[oamIdx++].attr3 = cos;
    }
}

void SetAnimationRotation(struct AnimationStruct *animation, u32 rotscaleIdx, u32 rotation)
{
    if (animation != NULL)
    {
        animation->rotationAmount = rotation;
        SetAnimationRotScaleParams(animation, rotscaleIdx);
    }
}

void DisableAnimationRotation(struct AnimationStruct *animation)
{
    if (animation != NULL)
        animation->flags &= ~ANIM_ENABLE_ROTATION;
}

void sub_800FA74(struct AnimationStruct *animation, bool32 arg1)
{
    u32 i;
    if (animation != 0 && (animation->flags & ANIM_ALLOCATED))
    {
        if (arg1)
        {
            animation->flags &= ~ANIM_INACTIVE;
            animation->flags |= ANIM_ACTIVE;
        }
        else
        {
            animation->flags &= ~ANIM_ACTIVE;
            animation->flags |= ANIM_INACTIVE;
            for (i = animation->animtionOamStartIdx; i < animation->animtionOamEndIdx; i++)
                gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
        }
        if (animation->unkC.animId == 0xff && animation->unkC.unk2[0] == 0x16)
        {
            if ((animation = FindAnimationFromAnimId(0x17)) != NULL || (animation = FindAnimationFromAnimId(0x18)) != NULL)
            {
                if (arg1)
                {
                    animation->flags &= ~ANIM_INACTIVE;
                    animation->flags |= ANIM_ACTIVE;
                }
                else
                {
                    animation->flags &= ~ANIM_ACTIVE;
                    animation->flags |= ANIM_INACTIVE;
                    for (i = animation->animtionOamStartIdx; i < animation->animtionOamEndIdx; i++)
                        gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
                }
            }
        }
    }
}

void SetAnimationXFlip(struct AnimationStruct *animation, bool32 flipX)
{
    if (animation != NULL)
    {
        if (flipX)
            animation->flags |= 1;
        else
            animation->flags &= ~1;
    }
}

void SetAnimationPriority(struct AnimationStruct *animation, u32 priority)
{
    if (animation != NULL)
    {
        if (priority > 3)
            priority = 3;
        animation->unk3E &= 0xff;
        animation->unk3E |= priority << 8;
    }
}

void SetAnimationFrameOffset(struct AnimationStruct *animation, u32 animOffset)
{
    if (animation != NULL)
    {
        if (animation->unkC.animId == 0xFF)
        {
            u8 *framePtr;
            framePtr = gPersonAnimData[animation->unkC.unk2[0]].frameData + animOffset;
            if (animation->unkC.animFrameDataStartPtr == framePtr)
                return;
            animation->unkC.animFrameDataStartPtr = framePtr;
            animation->unkC.animGfxDataStartPtr = gPersonAnimData[animation->unkC.unk2[0]].gfxData;
        }
        else
        {
            if (animation->unkC.animId > 0xb)
            {
                if (animation->unkC.animId <= 0x10)
                {
                    animation->unkC.animFrameDataStartPtr = gUnknown_0871FCF4 + animOffset; // ! These globals are defines *sob*
                    animation->unkC.animGfxDataStartPtr = gUnknown_0871EBBC;
                }
                else
                {
                    if (animation->unkC.animId > 0x18)
                    {
                        return;
                    }
                    animation->unkC.animFrameDataStartPtr = gUnknown_08748218 + animOffset;
                    animation->unkC.animGfxDataStartPtr = gUnknown_0871FDF8;
                }
            }
            else
            {
                animation->unkC.animFrameDataStartPtr = gUnknown_08748218 + animOffset;
                animation->unkC.animGfxDataStartPtr = gUnknown_0871FDF8;
            }
        }
        animation->flags |= (ANIM_PLAYING | ANIM_QUEUED_TILE_UPLOAD);
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
_0800FD94: .4byte gSpriteSizeTable\n\
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

bool32 CheckIfLinesIntersect(struct Point *pt0, struct Point *pt1, struct Point *pt2, struct Point *pt3)
{
    // check if the lines through pt0-pt1 and pt2-pt3 intersect on the screen
    s32 xd01, yd01, xd23, yd23, cp0123, xd13, yd13, cp2313, cp0113;
    xd01 = pt0->x - pt1->x;
    yd01 = pt0->y - pt1->y;
    xd23 = pt2->x - pt3->x;
    yd23 = pt2->y - pt3->y;
    cp0123 = xd01 * yd23 - yd01 * xd23;
    // are 0->1 and 2->3 collinear or 0? if yes bail
    if (cp0123 == 0)
    {
        return FALSE;
    }
    xd13 = pt1->x - pt3->x;
    yd13 = pt1->y - pt3->y;
    cp2313 = yd13 * xd23 - xd13 * yd23;
    cp0113 = yd13 * xd01 - xd13 * yd01;
    // does an intersection between the two lines exist on screen? return true if yes...
    if (((cp0123 > 0 && cp2313 >= 0 && cp2313 <= cp0123) || (cp0123 < 0 && cp2313 >= cp0123 && cp2313 <= 0)) &&
	((cp0123 > 0 && cp0113 >= 0 && cp0113 <= cp0123) || (cp0123 < 0 && cp0113 >= cp0123 && cp0113 <= 0)))
    {
        return TRUE;
    }
    // ...else false
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
    // see if any part of the rect is in area
    for (i = 0; i < 3; i++)
    {
        p1 = &area->points[0];
        p2 = &area->points[1];
        for (j = 0; j < 3; j++)
        {
            if (CheckIfLinesIntersect(p1, p2, p3, p4))
                return TRUE;
            p1++;
            p2++;
        }
        p2 = &area->points[0];
        if (CheckIfLinesIntersect(p1, p2, p3, p4))
            return TRUE;
        p3++;
        p4++;
    }
    p4 = &p.points[0];
    p1 = &area->points[0];
    p2 = &area->points[1];
    for (k = 0; k < 3; k++)
    {
        if (CheckIfLinesIntersect(p1, p2, p3, p4))
            return TRUE;
        p1++;
        p2++;
    }
    p2 = &area->points[0];
    if (CheckIfLinesIntersect(p1, p2, p3, p4))
        return TRUE;

    return FALSE;
}

static void PutAnimationInAnimList(struct AnimationStruct *animation)
{
    struct AnimationStruct *animation2 = gAnimation;
    u32 i;
    for (i = 0; i < 0x20; i++)
    {
        if (animation2->nextAnimation == NULL)
        {
            animation->prevAnimation = animation2;
            animation2->nextAnimation = animation;
            break;
        }
        animation2 = animation2->nextAnimation;
        if (animation2->unkC.priority < animation->unkC.priority)
        {
            animation->prevAnimation = animation2->prevAnimation;
            animation->nextAnimation = animation2;
            animation2->prevAnimation->nextAnimation = animation;
            animation2->prevAnimation = animation;
            break;
        }
    }
}

static void DoAnimationAction(u32 action)
{
    switch (action)
    {
    case 1:
        if (!(gMain.gameStateFlags & 1))
        {
            gMain.shakeTimer = 30;
            gMain.gameStateFlags |= 1;
            gMain.shakeIntensity = 1;
        }
        break;
    case 2:
        if (gMain.blendMode == 0)
            StartHardwareBlend(3, 1, 8, 0x1F);
        break;
    default:
        break;
    }
}

struct AnimationStruct *PlayPersonAnimation(u32 arg0, u32 arg1, u32 talkingAnimOff, u32 arg3)
{
    u32 xOrigin = 120;
    struct Main *main = &gMain;
    if (arg0 & 0x8000 && main->unk3A & 0x10)
        xOrigin -= DISPLAY_WIDTH;
    if (arg0 & 0x4000 && main->unk3A & 0x20)
        xOrigin += DISPLAY_WIDTH;
    if (arg0 & 0x2000)
        arg1 |= 1;
    return PlayPersonAnimationAtCustomOrigin(arg0, talkingAnimOff, xOrigin, DISPLAY_HEIGHT/2, arg1);
}

struct AnimationStruct *PlayPersonAnimationAtCustomOrigin(u32 arg0, u32 talkingAnimOff, u32 xOrigin, u32 yOrigin, u32 arg4)
{
    struct Main *main = &gMain;
    struct AnimationStruct *animation = &gAnimation[1];
    struct AnimationStructFieldC animationStructFieldC;
    u32 personId = arg0 & 0xFF;
    if (personId == 0)
    {
        if (animation->flags & ANIM_ALLOCATED)
            DestroyAnimation(animation);
        return NULL;
    }
    animationStructFieldC.animId = 0xFF;
    *(u16 *)animationStructFieldC.unk2 = arg0;
    animationStructFieldC.vramPtr = OBJ_VRAM0 + 0x5800;
    animationStructFieldC.animGfxDataStartPtr = gPersonAnimData[personId].gfxData;
    animationStructFieldC.animFrameDataStartPtr = gPersonAnimData[personId].frameData + talkingAnimOff;
    animationStructFieldC.paletteSlot = 14;
    if (main->process[GAME_PROCESS] == 3) // trial
        animationStructFieldC.spriteCount = 0x27;
    else
        animationStructFieldC.spriteCount = gPersonAnimData[personId].spriteCount;
    animationStructFieldC.priority = 0x21;
    animationStructFieldC.xOrigin = xOrigin;
    animationStructFieldC.yOrigin = yOrigin;
    if (!(animation->flags & ANIM_ALLOCATED))
    {
        DmaFill16(3, 0, animation, sizeof(gAnimation[1]));
        animation->flags |= ANIM_ALLOCATED;
        animation->unkC.animId = 0xFF;
        PutAnimationInAnimList(animation);
    }
    animation->unk2C |= 0;
    sub_8010468(&animationStructFieldC, 0xFF, arg4);
    animation->unk2C = main->currentBG;
    if (animation->unkC.unk2[0] == 0x16 && main->process[GAME_PROCESS] == 4) // person id 0x16 investigation
    {
        struct AnimationStruct *ptr;
        u32 var0 = animation->flags & 0x02000000;
        switch (talkingAnimOff)
        {
        case 0x6BC:
        case 0x4A0:
        case 0x184:
        case 0:
            ptr = FindAnimationFromAnimId(0x18);
            if (ptr != NULL)
                DestroyAnimation(ptr);
            ptr = PlayAnimation(0x17);
            ptr->flags |= var0;
            break;
        case 0x1060:
        case 0xF38:
            ptr = FindAnimationFromAnimId(0x17);
            if (ptr != NULL)
                DestroyAnimation(ptr);
            ptr = PlayAnimation(0x18);
            ptr->flags |= var0;
            break;
        default:
            break;
        }
    }
    return animation;
}

struct AnimationStruct *PlayAnimation(u32 arg0)
{
    s32 xOrigin, yOrigin;
    struct Main *main = &gMain;
    struct AnimationData *ptr = &gAnimationData[arg0];
    xOrigin = ptr->xOrigin;
    yOrigin = ptr->yOrigin;
    if (main->unk3A & 0x10 && arg0 > 0xB)
        xOrigin -= DISPLAY_WIDTH;
    return PlayAnimationAtCustomOrigin(arg0, xOrigin, yOrigin);
}

struct AnimationStruct *PlayAnimationAtCustomOrigin(u32 arg0, s32 xOrigin, s32 yOrigin)
{
    struct AnimationStruct *animationStruct;
    struct AnimationStructFieldC animationStructFieldC;
    struct Main *main = &gMain;
    struct AnimationData *animData = &gAnimationData[arg0];
    u32 var1;
    u32 var0;
#ifndef NONMATCHING
    register u32 var2 asm("r0");
#else
    u32 var2;
#endif

    animationStructFieldC.animId = arg0;
    animationStructFieldC.vramPtr = animData->vramPtr;
    animationStructFieldC.animGfxDataStartPtr = animData->gfxData;
    animationStructFieldC.animFrameDataStartPtr = animData->frameData;
    animationStructFieldC.paletteSlot = animData->paletteSlot;
    animationStructFieldC.spriteCount = animData->spriteCount;
    animationStructFieldC.priority = animData->priority;
    animationStructFieldC.xOrigin = xOrigin;
    animationStructFieldC.yOrigin = yOrigin;
    animationStruct = sub_8010468(&animationStructFieldC, arg0, animData->flags);
    var1 = animationStruct->unkC.paletteSlot - 6;
    var0 = (1 << var1);
    var1++;
    var1--;
    if (!(main->unk1E & var0) && animationStruct->unkC.paletteSlot < 10)
    {
#ifndef NONMATCHING
        register void *src asm("r5");
#else
        void *src;
#endif
        void *dest;

        u32 size;
        main->unk1E |= var0;
        var2 = animationStruct->unkC.paletteSlot * 0x20;
        src = (u16 *)(OBJ_PLTT + var2);
        dest = gObjPaletteBuffer[var1];
        var1 = *(u32 *)animationStruct->unkC.animGfxDataStartPtr;
        size = var1 * 0x20;
        DmaCopy16(3, src, dest, size);
    }
    animationStruct->unk2C = main->currentBG;
    animationStruct->unk2D = main->currentRoomId;
    animationStruct->flags |= ANIM_QUEUED_PAL_UPLOAD;
    return animationStruct;
}

struct AnimationBackupStruct * RestoreAnimationsFromBuffer(struct AnimationBackupStruct * backupAnimation) // ! UB: this function doesn't return anything
{
    u32 i;
    struct AnimationStruct *animation = &gAnimation[1];
    struct AnimationStructFieldC animationStructFieldC;
    ResetAnimationSystem();
    if (backupAnimation->flags & ANIM_ALLOCATED)
    {
        animationStructFieldC.animId = 0xFF;
        animationStructFieldC.unk2[0] = backupAnimation->unk2;
        animationStructFieldC.vramPtr = OBJ_VRAM0 + 0x5800;
        animationStructFieldC.animGfxDataStartPtr = gPersonAnimData[backupAnimation->unk2].gfxData;
        animationStructFieldC.animFrameDataStartPtr = backupAnimation->animFrameDataStartPtr;
        animationStructFieldC.paletteSlot = 0xE;
        animationStructFieldC.spriteCount = gPersonAnimData[backupAnimation->unk2].spriteCount;
        animationStructFieldC.priority = 0x21;
        animationStructFieldC.xOrigin = backupAnimation->xOrigin;
        animationStructFieldC.yOrigin = backupAnimation->yOrigin;
        DmaCopy16(3, &animationStructFieldC, &animation->unkC, sizeof(animationStructFieldC));
        animation->frameData = (struct AnimationFrame *)(animation->unkC.animFrameDataStartPtr);
        animation->unkC.animGfxDataStartPtr += 1 [(u32 *)animation->frameData]; // offsets the graphics pointer
        animation->unkC.tileDataPtr = animation->unkC.animGfxDataStartPtr + 4 + (*(u32 *)animation->unkC.animGfxDataStartPtr) * 0x20;
        animation->frameData = backupAnimation->frameData;
        animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
        animation->flags = backupAnimation->flags | (ANIM_QUEUED_TILE_UPLOAD | ANIM_QUEUED_PAL_UPLOAD);
        animation->tileNum |= (uintptr_t)animation->unkC.vramPtr / TILE_SIZE_4BPP; // get OAM tile num from VRAM address
        animation->unk3E = 0x300;
        SetAnimationPriority(animation, animation->unkC.priority >> 4);
        animation->unkC.priority &= 0xF;
        animation->unk2C = backupAnimation->unk10;
        PutAnimationInAnimList(animation);
    }
    backupAnimation++;
    for (i = 2; i < 0x20; i++, backupAnimation++)
    {
        if (backupAnimation->flags & ANIM_ALLOCATED)
        {
            animation = PlayAnimationAtCustomOrigin(backupAnimation->animId, backupAnimation->xOrigin, backupAnimation->yOrigin);
            animation->flags = backupAnimation->flags | (ANIM_QUEUED_TILE_UPLOAD | ANIM_QUEUED_PAL_UPLOAD);
            animation->frameData = backupAnimation->frameData;
            animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
            DataCopy32(&animation->unk2C, &backupAnimation->unk10);
        }
    }
}

struct AnimationBackupStruct * SaveAnimationDataToBuffer(struct AnimationBackupStruct * backupAnimation)
{
    struct AnimationStruct *animation;
    for (animation = &gAnimation[1]; animation < &gAnimation[0x20]; animation++, backupAnimation++)
    {
        DataCopy32(&backupAnimation->animId, &animation->unkC.animId);
        DataCopy32(&backupAnimation->xOrigin, &animation->unkC.xOrigin);
        DataCopy32(&backupAnimation->frameDurationCounter, &animation->frameDurationCounter);
        DataCopy32(&backupAnimation->unk10, &animation->unk2C);
        backupAnimation->animFrameDataStartPtr = animation->unkC.animFrameDataStartPtr;
        backupAnimation->flags = animation->flags;
        backupAnimation->frameData = animation->frameData;
    }
    return backupAnimation;
}

static struct AnimationStruct * sub_8010468(struct AnimationStructFieldC * animationFieldC, u32 arg1, u32 arg2)
{
    struct AnimationStruct *animation = AllocateAnimationWithId(animationFieldC->animId);
    if (animation == NULL)
        return NULL;
    DmaCopy16(3, animationFieldC, &animation->unkC, sizeof(animation->unkC));
    animation->unkC.animGfxDataStartPtr += 1 [(u32 *)animation->unkC.animFrameDataStartPtr];                                      // offsets the graphics pointer
    animation->unkC.tileDataPtr = animation->unkC.animGfxDataStartPtr + 4 + (*(u32 *)animation->unkC.animGfxDataStartPtr) * 0x20; // skip first u32(number of palettes) and the palettes, pointer to tiles
    animation->frameData = (struct AnimationFrame *)(animation->unkC.animFrameDataStartPtr + 8);                                  // skips animation block header, pointer to frame data
    animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);                  // Frame tilemap pointer
    animation->flags |= arg2;
    if (arg2 & 0x10)
        animation->flags &= ~ANIM_PLAYING;
    animation->tileNum |= (uintptr_t)animation->unkC.vramPtr / TILE_SIZE_4BPP; // get OAM tile num from VRAM address
    animation->rotationAmount = 0;
    animation->unk3E = 0x300;
    SetAnimationPriority(animation, animation->unkC.priority >> 4);
    animation->unkC.priority &= 0xF;
    PutAnimationInAnimList(animation);
    if (animation->frameData->flags & 0x2)
        PlaySE(animation->frameData->songId);
    if (animation->frameData->flags & 0x4)
        DoAnimationAction(animation->frameData->action);
    return animation;
}

static u32 AdvanceAnimationFrame(struct AnimationStruct * animation)
{
    u32 retVal = 4;
    if (gScriptContext.unk32 && animation->unkC.animId == 0xFF)
        return retVal;
    if (animation->frameData->frameDuration > ++animation->frameDurationCounter)
        return retVal;
    animation->frameDurationCounter = 0;
    animation->frameData++;
    if (animation->frameData->flags & 0x2)
        PlaySE(animation->frameData->songId);
    if (animation->frameData->flags & 0x4)
        DoAnimationAction(animation->frameData->action);
    switch (animation->frameData->frameDuration)
    {
    case ANIM_LOOP:
        animation->frameData = (struct AnimationFrame *)(animation->unkC.animFrameDataStartPtr + 8);
        animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
        animation->flags |= ANIM_QUEUED_TILE_UPLOAD;
        retVal = 7;
        break;
    case ANIM_STOP:
        animation->flags &= ~ANIM_PLAYING;
        retVal = 0;
        animation->frameData--;
        break;
    case ANIM_DESTROY:
        DestroyAnimation(animation);
        retVal = 0;
        break;
    default:
        animation->unk30 = (void *)(animation->unkC.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
        animation->flags |= ANIM_QUEUED_TILE_UPLOAD;
        retVal = 5;
        break;
    }
    return retVal;
}

void OffsetAllAnimations(s32 xOffset, s32 yOffset)
{
    struct AnimationStruct *animation;
    for (animation = gAnimation[0].nextAnimation; animation != NULL; animation = animation->nextAnimation)
    {
        struct OamAttrs *oam;
        if (animation->flags & 8)
            continue;
        animation->unkC.xOrigin += xOffset;
        animation->unkC.yOrigin += yOffset;
        for (oam = &gOamObjects[animation->animtionOamStartIdx]; oam < &gOamObjects[animation->animtionOamEndIdx]; oam++)
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
    }
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
        animation2 = FindAnimationFromAnimId(animationId);
    }
    else
        animation2 = &gAnimation[1];

    if (ioRegsp->lcd_bldy == 0x10 || (!(animation2->flags & ANIM_ALLOCATED) && !(arg0 & 2)))
        return;

    if (animation2->unkC.unk2[0] == 0x16)
    {
        animation = FindAnimationFromAnimId(0x17);
        if (animation == NULL)
            animation = FindAnimationFromAnimId(0x18);
    }

    if (arg0 & 1)
    {
        if ((animation2->flags & 0x02000000) && !(animation2->flags & 0x4))
            return;
        animation2->flags &= ~(ANIM_INACTIVE | 0x04000000 | 4);
        if (animation != NULL)
            animation->flags &= ~(ANIM_INACTIVE | 0x04000000 | 4);
        main->blendDeltaY = 0x10;
    }
    else if (arg0 & 4)
    {
        if ((animation2->flags & 0x02000000) && (animation2->flags & 0x4))
            return;
        animation2->flags |= 0x4;
        if (animation != NULL)
            animation->flags |= 0x4;
        main->blendDeltaY = 0;
        if (arg0 & (4 | 8))
        {
            animation2->flags |= 0x04000000;
            if (animation != NULL)
                animation->flags |= 0x04000000;
        }
    }
    else
        return;
    animation2->flags |= (ANIM_ACTIVE | 0x2000000);
    if (animation != NULL)
        animation->flags |= (ANIM_ACTIVE | 0x2000000);
    main->blendDelay = arg1;
    main->blendCounter = 0;
    ioRegsp->lcd_bldcnt = BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG3;
    ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x10 - main->blendDeltaY, main->blendDeltaY);
    REG_BLDCNT = ioRegsp->lcd_bldcnt;
    REG_BLDALPHA = ioRegsp->lcd_bldalpha;
}

static void UpdateAnimationBlend(struct AnimationStruct *animation)
{
    struct Main *main = &gMain;
    struct IORegisters *ioRegsp = &gIORegisters;
    struct AnimationStruct *animation2 = NULL;
    if (main->blendMode)
    {
        animation->flags &= ~0x2000000;
        return;
    }

    if (animation->unkC.unk2[0] == 0x16)
    {
        animation2 = FindAnimationFromAnimId(0x17);
        if (animation2 == NULL)
            animation2 = FindAnimationFromAnimId(0x18);
    }

    if (++main->blendCounter >= main->blendDelay)
    {
        main->blendCounter = 0;
        if (animation->flags & 4)
        {
            main->blendDeltaY++;
            if (main->blendDeltaY == 0x10)
            {
                ioRegsp->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ;
                ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
                animation->flags &= ~0x2000000;
                if (animation->flags & 0x04000000)
                {
                    sub_800FA74(animation, 0);
                    if (animation2 != NULL)
                        sub_800FA74(animation2, 0);
                    return;
                }
                DestroyAnimation(animation);
                if (animation2 != NULL)
                    DestroyAnimation(animation2);
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
                animation->flags &= ~0x2000000;
                if (animation2 != NULL)
                    animation2->flags &= ~0x2000000;
                return;
            }
        }
    }
    ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x10 - main->blendDeltaY, main->blendDeltaY);
}

void sub_8010928() // unused
{
    struct AnimationStruct *animation = gAnimation;

    for (; animation < &gAnimation[ARRAY_COUNT(gAnimation)]; animation++)
    {
        if (animation->flags & ANIM_ALLOCATED)
            animation->flags |= (ANIM_ACTIVE | ANIM_QUEUED_TILE_UPLOAD);
    }
}

#ifdef NONMATCHING
void DestroyAnimation(struct AnimationStruct *animation)
{
    struct AnimationStruct *animation2;
    struct Main *main = &gMain;
    struct OamAttrs *oam;
    u32 var0;
    if (animation == NULL)
        return;

    if (animation->unkC.animId == 0xFF && animation->unkC.unk2[0] == 0x16)
    {
        animation2 = FindAnimationFromAnimId(0x17);
        if (animation2 != NULL)
            DestroyAnimation(animation2);
        animation2 = FindAnimationFromAnimId(0x18);
        if (animation2 != NULL)
            DestroyAnimation(animation2);
    }
    if (animation->flags & ANIM_ALLOCATED)
    {
        u32 var1;
        u16 *src;
        u16 *dest;
        u32 size;
        for (oam = &gOamObjects[animation->animtionOamStartIdx]; oam < &gOamObjects[animation->animtionOamEndIdx]; oam++)
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        main->unk1F |= 4;
        animation->flags = 0;
        animation->prevAnimation->nextAnimation = animation->nextAnimation;
        animation->nextAnimation->prevAnimation = animation->prevAnimation;
        if (animation->unkC.animId == 0xFF)
            return;
        if (animation->unkC.paletteSlot > 9)
            return;
        var0 = animation->unkC.paletteSlot - 6;
        main->unk1E &= ~(1 << var0);
        src = gObjPaletteBuffer[var0];
        var1 = animation->unkC.paletteSlot * 16;
        dest = (u16 *)OBJ_PLTT;
        dest += var1;
        size = *(u32 *)animation->unkC.animGfxDataStartPtr * 32;
        DmaCopy16(3, src, dest, size);
    }
}
#else
NAKED void DestroyAnimation(struct AnimationStruct *animation)
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
	bl FindAnimationFromAnimId\n\
	cmp r0, #0\n\
	beq _08010984\n\
	bl DestroyAnimation\n\
_08010984:\n\
	movs r0, #0x18\n\
	bl FindAnimationFromAnimId\n\
	cmp r0, #0\n\
	beq _08010992\n\
	bl DestroyAnimation\n\
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

static void UpdateAllAnimationSprites()
{
    u32 var0 = 0x80;
    struct OamAttrs *oam = &gOamObjects[ARRAY_COUNT(gOamObjects)];
    struct AnimationStruct *animation;
    for (animation = gAnimation[0].nextAnimation; animation != NULL; animation = animation->nextAnimation)
    {
        u32 i, j;
        if ((animation->flags & ANIM_ALLOCATED) == 0)
            continue;
        animation->animtionOamEndIdx = var0;
        if ((gMain.unk1F & 2) && (animation->flags & ANIM_ACTIVE))
        {
            void *ptr = (void *)animation->unk30;
            struct SpriteTemplate *spriteTemplates = animation->unk30;
            s32 xOrigin = animation->unkC.xOrigin - gMain.shakeAmountX;
            s32 yOrigin = animation->unkC.yOrigin - gMain.shakeAmountY;
            u32 tileNum = animation->tileNum & 0xFFF;
            s32 spriteCount = *(u16 *)ptr;
            struct SpriteSizeData *spriteSizeData = eUnknown_0200AFC0;
            spriteSizeData += var0;
            for (i = 0; i < spriteCount; i++)
            {
                s32 y;
                var0--;
                oam--;
                spriteSizeData--;
                spriteTemplates++;
                *spriteSizeData = gSpriteSizeTable[spriteTemplates->data >> 0xC];
                oam->attr0 = (spriteTemplates->data & 0x3000) << 2; // Sprite Shape
                y = yOrigin + spriteTemplates->y;
                if (y < -64)
                    y = -64;
                if (y > 224)
                    y = 224;
                oam->attr0 |= y & 0xFF;
                if (animation->flags & 0x2000000)
                    oam->attr0 |= 0x400;
                oam->attr1 = spriteTemplates->data & 0xC000;
                if (animation->flags & ANIM_ENABLE_XFLIP)
                {
                    u16 x = (xOrigin - (spriteTemplates->x + spriteSizeData->width)) & 0x1FF;
                    oam->attr1 |= 0x1000 | x;
                }
                else
                {
                    u16 x = (xOrigin + spriteTemplates->x) & 0x1FF;
                    oam->attr1 |= (*(u8 *)(&animation->unk3E)) << 9 | x;
                }
                oam->attr2 = tileNum | *((u8 *)(&animation->unk3E) + 1) << 10;
                if (animation->frameData->flags & 1)
                    oam->attr2 |= (animation->unkC.paletteSlot + ((spriteTemplates->data >> 9) & 7)) << 12;
                else
                    oam->attr2 |= (animation->unkC.paletteSlot + ((spriteTemplates->data >> 11) & 1)) << 12;
                tileNum += spriteSizeData->tileSize / TILE_SIZE_4BPP;
            }
        }
        animation->animtionOamStartIdx = animation->animtionOamEndIdx - animation->unkC.spriteCount;
        var0 -= animation->animtionOamStartIdx;
        for (var0 -= 1; var0 != -1; var0--)
        {
            oam--;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        }
        var0 = animation->animtionOamStartIdx;
    }
}

#ifdef NONMATCHING
void MoveAnimationTilesToRam(bool32 arg0)
{
    struct AnimationStruct *animation;

    for (animation = gAnimation[0].nextAnimation; animation != NULL; animation = animation->nextAnimation)
    {
        u8 * tileDest;
        u32 i;
        u32 spriteCount;
        u32 palCount;
        struct SpriteTemplate * spriteTemplates;
        struct SpriteSizeData * spriteSizeData;
        struct AnimationStructFieldC * animC;
        if(!(animation->flags & ANIM_QUEUED_TILE_UPLOAD))
            continue;
        if(!(animation->flags & ANIM_ACTIVE))
            continue;
        tileDest = arg0 ? (u8*)0x200B1C0 : animation->unkC.vramPtr;
        spriteTemplates = animation->unk30;
        spriteCount = *(u16*)animation->unk30;
        spriteSizeData = eUnknown_0200AFC0;
        spriteSizeData += animation->animtionOamEndIdx;
        animation->flags &= ~ANIM_QUEUED_TILE_UPLOAD;
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
                spriteSizeData--;
                ptr = tileDest + spriteSizeData->tileSize;
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
                spriteSizeData--;
                tileNum = spriteTemplates->data & mask;
                tilePtr = animation->unkC.tileDataPtr + tileNum * 32;
                what = &spriteSizeData->tileSize;
                DmaCopy16(3, tilePtr, tileDest, *what);
                tileDest += *what;
            }
        }
        if(animation->flags & ANIM_QUEUED_PAL_UPLOAD)
        {
            void * dest;
            u8 * src;
            u32 size;
            u32 palOffset;
            palOffset = animation->unkC.paletteSlot & 0xF;

            dest = (u8*)OBJ_PLTT + palOffset*32;
            palCount *= 32;
            src = animation->unkC.animGfxDataStartPtr+4;
            DmaCopy16(3, src, dest, palCount);
            animation->flags &= ~ANIM_QUEUED_PAL_UPLOAD;
        }
    }
}
#else
NAKED void MoveAnimationTilesToRam(bool32 arg0)
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

void UpdateAnimations(u32 arg0)
{
    struct Main * main = &gMain;
    struct AnimationStruct *animation2 = gAnimation;
    struct CourtScroll * courtScroll = &gCourtScroll;
    if(main->unk1F & 1)
    {
        struct AnimationStruct *animation;
        for (animation = animation2->nextAnimation; animation != NULL; animation = animation->nextAnimation)
        {
            if(animation->unkC.animId >= 12 && animation->unkC.animId <= 16)
            {
                if(main->currentBG != animation->unk2C)
                { 
                    if(main->currentRoomId == animation->unk2D)
                        sub_800FA74(animation, 0);
                    else
                        DestroyAnimation(animation);
                    continue;
                }
                else
                {
                    if(!(animation->flags & ANIM_ACTIVE))
                    {
                        if(main->unk2C == 0)
                        {
                            PlayAnimation(animation->unkC.animId);
                            sub_800FA74(animation, 1);
                        }
                    }
                }
            }
            else if(animation->unkC.animId >= 31 && animation->unkC.animId <= 61)
            {
                if(arg0 != animation->unk2C)
                {
                    DestroyAnimation(animation);
                    continue;
                }
            }
            else if(animation->unkC.animId >= 25 && animation->unkC.animId <= 61)
            {
                if(main->currentBG != animation->unk2C)
                    DestroyAnimation(animation);
            }
            if(animation->flags & 0x2000000)
            {
                if(!(animation->unkC.animId <= 24 && animation->unkC.animId >= 17))
                    UpdateAnimationBlend(animation);
                continue;
            }
            if(animation->flags < 0) // what the fuck
            {
                if(main->blendMode == 0)
                {
                    if(AdvanceAnimationFrame(animation) == 0)
                        continue;
                }
            }
            if(animation->unkC.animId <= 0xB)
                gUnknown_0811DFD0[animation->unkC.animId - 1](animation);
            if(courtScroll->state)
            {
                if(animation->unkC.animId == 0xFF)
                    sub_80110E4(animation);
            }
        }
    }
    if(main->unk1F & 0x4)
    {
        main->unk1F &= ~0x4;
        ClearAllAnimationSprites();
    }
    UpdateAllAnimationSprites();
}

void sub_8010F68(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin += gUnknown_0801948C[courtScroll->unkC];
    if(courtScroll->unkC == 0xF)
        PlayPersonAnimationAtCustomOrigin(courtScroll->unk8, courtScroll->unkA, -110, 80, 0);
}

void sub_8010FA8(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin -= gUnknown_0801948C[0x1E - courtScroll->unkC];
    if(courtScroll->unkC == 0xF)
        PlayPersonAnimationAtCustomOrigin(courtScroll->unk8, courtScroll->unkA, 350, 80, 0);
}

void sub_8010FEC(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin += gUnknown_080194AB[courtScroll->unkC];
    if(courtScroll->unkC == 0xE)
        PlayPersonAnimationAtCustomOrigin(courtScroll->unk8, courtScroll->unkA, -84, 80, 0);
}

void sub_801102C(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin -= gUnknown_080194CA[courtScroll->unkC];
    if(courtScroll->unkC == 0xE)
        PlayPersonAnimationAtCustomOrigin(courtScroll->unk8, courtScroll->unkA, 220, 80, 0);
}

void sub_8011068(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin -= gUnknown_080194AB[courtScroll->unkC];
    if(courtScroll->unkC == 0xE)
        PlayPersonAnimationAtCustomOrigin(courtScroll->unk8, courtScroll->unkA, 324, 80, 0);
}

void sub_80110A8(struct AnimationStruct * animation, struct CourtScroll * courtScroll)
{
    animation->unkC.xOrigin += gUnknown_080194CA[courtScroll->unkC];
    if(courtScroll->unkC == 0xE)
        PlayPersonAnimationAtCustomOrigin(courtScroll->unk8, courtScroll->unkA, 20, 80, 0);
}

static void sub_80110E4(struct AnimationStruct * animation)
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
    s32 rand = (Random() & 3) + 1; // 1 to 4
    s32 rand2 = (Random() & 7) - 4; // -4 to 3
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
    if(main->currentBG == 0xFF)
    {
        sub_800FA74(animation, 0);
        return;
    }
    sub_800FA74(animation, 1);
    if(main->currentBG == 0x4A)
    {
        if(animation->unkC.animId == 5)
            animation->unk2E += 3;
        else if(animation->unkC.animId == 6)
            animation->unk2E -= 5;
        else
            animation->unk2E += 1;
    }
    else
    {
        if(animation->unkC.animId == 5)
            animation->unk2E -= 3;
        else if(animation->unkC.animId == 6)
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
