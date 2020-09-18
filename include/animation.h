#ifndef GUARD_ANIMATION_H
#define GUARD_ANIMATION_H

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
struct Struct2002650 * RestoreAnimationsFromBuffer(struct Struct2002650 * ewStruct2650); // ! does not return a value UB
struct Struct2002650 * SaveAnimationDataToBuffer(struct Struct2002650 * ewStruct2650);

void OffsetAllAnimations(s32 xOffset, s32 yOffset);
void StartAnimationBlend(u32 arg0, u32 arg1);
void DestroyAnimation(struct AnimationStruct * animation);
void MoveAnimationTilesToRam(bool32 arg0);
void UpdateAnimations(u32 arg0);
void sub_8011108(u32 arg0, u32 arg1, u32 arg2, u32 arg3);

#endif//GUARD_ANIMATION_H