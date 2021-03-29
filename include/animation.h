#ifndef GUARD_ANIMATION_H
#define GUARD_ANIMATION_H

struct AnimationFrame
{
    /* +0x00 */ u16 spriteDataOffset;
    /* +0x02 */ u8 frameDuration;
    /* +0x03 */ u8 flags;
    /* +0x04 */ u8 songId;
    /* +0x05 */ u8 action;
    /* +0x06 */ u8 filler6[2];
};

struct AnimationStructFieldC
{
    /* +0x00 */ u16 animId;
    /* +0x02 */ u8 unk2[2];
    /* +0x04 */ s16 xOrigin;
    /* +0x06 */ s16 yOrigin;
    /* +0x08 */ u8 * animFrameDataStartPtr;
    /* +0x0C */ u8 * tileDataPtr;
    /* +0x10 */ u8 * vramPtr;
    /* +0x14 */ u8 * animGfxDataStartPtr;
    /* +0x18 */ u8 paletteSlot;
    /* +0x19 */ u8 spriteCount;
    /* +0x1A */ u8 priority;
    /* +0x1B */ u8 filler1B[1];
};

struct SpriteTemplate {
    /* +0x00 */ s8 x;
    /* +0x01 */ s8 y;
    /* +0x02 */ u16 data;
};

struct AnimationStruct
{
    /* +0x00 */ s32 flags;
    /* +0x04 */ struct AnimationStruct * prevAnimation;
    /* +0x08 */ struct AnimationStruct * nextAnimation;
    /* +0x0C */ struct AnimationStructFieldC unkC;
    /* +0x28 */ s16 frameDurationCounter;
    /* +0x2A */ u8 unk2A; 
    /* +0x2B */ u8 unk2B; 
    /* +0x2C */ u8 unk2C;
    /* +0x2D */ u8 unk2D;
    /* +0x2E */ s16 unk2E;
    /* +0x30 */ struct SpriteTemplate * unk30;
    /* +0x34 */ struct AnimationFrame * frameData;
    /* +0x38 */ u16 tileNum;
    /* +0x3A */ u8 animtionOamStartIdx;
    /* +0x3B */ u8 animtionOamEndIdx;
    /* +0x3C */ s16 rotationAmount;
    /* +0x3E */ u16 unk3E;
};

struct AnimationBackupStruct
{
    /* +0x00 */ u16 animId;
    /* +0x02 */ u8 unk2; // unkC.unk2[0]
    /* +0x03 */ u8 unk3; // unkC.unk2[1]
    /* +0x04 */ s16 xOrigin;
    /* +0x06 */ s16 yOrigin;
    /* +0x08 */ u8 * animFrameDataStartPtr;
    /* +0x0C */ u16 frameDurationCounter;
    /* +0x0E */ u8 unkE; // unk2A
    /* +0x0F */ u8 unkF; // unk2B
    /* +0x10 */ u8 unk10; // unk2C
    /* +0x11 */ u8 unk11; // unk2D
    /* +0x12 */ u16 unk12; // unk2E
    /* +0x14 */ u32 flags;
    /* +0x18 */ struct AnimationFrame * frameData;
};

extern struct AnimationStruct gAnimation[32];

void ResetAnimationSystem();
void ClearAllAnimationSprites();
struct AnimationStruct * FindAnimationFromAnimId(u32 animId);
void SetAnimationOriginCoords(struct AnimationStruct *animation, u32 xOrigin, u32 yOrigin);
void SetAnimationRotation(struct AnimationStruct *animation, u32 rotscaleIdx, u32 rotation);
void DisableAnimationRotation(struct AnimationStruct *animation);
void sub_800FA74(struct AnimationStruct *animation, bool32 arg1);
void SetAnimationXFlip(struct AnimationStruct *animation, bool32 flipX);
void SetAnimationPriority(struct AnimationStruct* arg0, u32 arg1);
void SetAnimationFrameOffset(struct AnimationStruct *, u32);

struct AnimationStruct * PlayPersonAnimation(u32 arg0, u32 arg1, u32 talkingAnimOff, u32 arg3);
struct AnimationStruct * PlayPersonAnimationAtCustomOrigin(u32 arg0, u32 talkingAnimOff, u32 xOrigin, u32 yOrigin, u32 arg4);
struct AnimationStruct * PlayAnimation(u32 arg0);
struct AnimationStruct * PlayAnimationAtCustomOrigin(u32 arg0, s32 xOrigin, s32 yOrigin);
struct AnimationBackupStruct * RestoreAnimationsFromBuffer(struct AnimationBackupStruct * ewStruct2650); // ! does not return a value UB
struct AnimationBackupStruct * SaveAnimationDataToBuffer(struct AnimationBackupStruct * ewStruct2650);

void OffsetAllAnimations(s32 xOffset, s32 yOffset);
void StartAnimationBlend(u32 arg0, u32 arg1);
void DestroyAnimation(struct AnimationStruct * animation);
void MoveAnimationTilesToRam(bool32 arg0);
void UpdateAnimations(u32 arg0);
void sub_8011108(u32 arg0, u32 arg1, u32 arg2, u32 arg3);

#endif//GUARD_ANIMATION_H