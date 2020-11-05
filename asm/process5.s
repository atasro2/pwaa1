	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_800A730
sub_800A730: @ 0x0800A730
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #6]
	cmp r0, #4
	bls _0800A73C
	b _0800A870
_0800A73C:
	lsls r0, r0, #2
	ldr r1, _0800A748
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A748: .4byte _0800A74C
_0800A74C: @ jump table
	.4byte _0800A760 @ case 0
	.4byte _0800A780 @ case 1
	.4byte _0800A7D4 @ case 2
	.4byte _0800A7E0 @ case 3
	.4byte _0800A810 @ case 4
_0800A760:
	movs r0, #0x13
	bl PlayAnimation
	movs r0, #0x14
	bl PlayAnimation
	movs r0, #0x53
	bl PlaySE
	ldr r0, _0800A77C
	movs r1, #0
	strb r1, [r0, #6]
	b _0800A808
	.align 2, 0
_0800A77C: .4byte gTestimony
_0800A780:
	movs r0, #0x13
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	movs r0, #0x14
	bl FindAnimationFromAnimId
	adds r5, r0, #0
	ldrh r0, [r4, #0x10]
	adds r0, #0xa
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0x10]
	subs r0, #0xa
	strh r0, [r5, #0x10]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0x77
	ble _0800A870
	movs r0, #3
	movs r1, #1
	movs r2, #8
	movs r3, #0x1f
	bl StartHardwareBlend
	adds r0, r4, #0
	bl DestroyAnimation
	adds r0, r5, #0
	bl DestroyAnimation
	movs r0, #0x11
	bl PlayAnimation
	b _0800A808
_0800A7D4:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800A870
	b _0800A808
_0800A7E0:
	movs r0, #0x11
	bl FindAnimationFromAnimId
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	blt _0800A870
	adds r0, r1, #0
	bl DestroyAnimation
	movs r0, #0x13
	movs r1, #0x78
	movs r2, #0x3c
	bl PlayAnimationAtCustomOrigin
	movs r0, #0x14
	movs r1, #0x78
	movs r2, #0x3c
	bl PlayAnimationAtCustomOrigin
_0800A808:
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	b _0800A870
_0800A810:
	movs r0, #0x13
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	movs r0, #0x14
	bl FindAnimationFromAnimId
	adds r5, r0, #0
	ldr r2, _0800A878
	ldrh r3, [r4, #0x10]
	ldrb r7, [r2, #6]
	adds r0, r3, r7
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r3, [r5, #0x10]
	ldrb r7, [r2, #6]
	subs r0, r3, r7
	strh r0, [r5, #0x10]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _0800A854
	movs r0, #0xc
	strb r0, [r2, #6]
_0800A854:
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	ble _0800A870
	adds r0, r4, #0
	bl DestroyAnimation
	adds r0, r5, #0
	bl DestroyAnimation
	movs r0, #1
	strb r0, [r6, #5]
_0800A870:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A878: .4byte gTestimony

	THUMB_FUNC_START GameProcess05
GameProcess05: @ 0x0800A87C
	push {lr}
	ldr r2, _0800A890
	ldrb r3, [r0, #5]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800A890: .4byte gUnknown_0811DF54

	THUMB_FUNC_START sub_800A894
sub_800A894: @ 0x0800A894
	ldr r2, _0800A8C0
	ldr r1, _0800A8C4
	str r1, [r2]
	ldr r1, _0800A8C8
	str r1, [r2, #4]
	ldr r1, _0800A8CC
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800A8D0
	str r1, [r2]
	ldr r1, _0800A8D4
	str r1, [r2, #4]
	ldr r1, _0800A8D8
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r2, _0800A8DC
	movs r1, #0
	strb r1, [r2, #1]
	movs r1, #3
	strb r1, [r0, #5]
	bx lr
	.align 2, 0
_0800A8C0: .4byte 0x040000D4
_0800A8C4: .4byte gUnknown_0818F8C0
_0800A8C8: .4byte 0x06013000
_0800A8CC: .4byte 0x80000400
_0800A8D0: .4byte gUnknown_08194280
_0800A8D4: .4byte 0x050002A0
_0800A8D8: .4byte 0x80000010
_0800A8DC: .4byte gTestimony

	THUMB_FUNC_START sub_800A8E0
sub_800A8E0: @ 0x0800A8E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800A8EE
	b _0800A9F6
_0800A8EE:
	ldr r1, _0800A954
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _0800A978
	adds r6, r5, #0
	adds r6, #0xb4
	ldr r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800A978
	ldr r1, _0800A958
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800A978
	bl PauseBGM
	ldr r1, _0800A95C
	ldr r0, _0800A960
	str r0, [r1]
	ldr r2, _0800A964
	str r2, [r1, #4]
	ldr r0, _0800A968
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800A96C
	str r4, [r1]
	ldr r0, _0800A970
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800A974
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r6]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	movs r0, #0xa
	b _0800A9AC
	.align 2, 0
_0800A954: .4byte gJoypad
_0800A958: .4byte gScriptContext
_0800A95C: .4byte 0x040000D4
_0800A960: .4byte gOamObjects
_0800A964: .4byte gSaveDataBuffer+0x750
_0800A968: .4byte 0x80000200
_0800A96C: .4byte gMain
_0800A970: .4byte 0xFFFFF8E4
_0800A974: .4byte 0x800000D0
_0800A978:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800A9AE
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800A9AE
	ldr r1, _0800A9E0
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800A9AE
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800A9E4
	ldr r0, [r0]
	str r0, [r5, #8]
	movs r0, #7
_0800A9AC:
	str r0, [r5, #4]
_0800A9AE:
	ldr r1, _0800A9E8
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x64
	bls _0800A9C2
	movs r0, #0
	strb r0, [r1, #1]
_0800A9C2:
	ldr r2, _0800A9EC
	ldrb r1, [r1, #1]
	cmp r1, #0x50
	bhi _0800A9F0
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r2, #2]
	movs r0, #0xb3
	lsls r0, r0, #7
	strh r0, [r2, #4]
	b _0800A9F6
	.align 2, 0
_0800A9E0: .4byte gScriptContext
_0800A9E4: .4byte gMain+0x4
_0800A9E8: .4byte gTestimony
_0800A9EC: .4byte gOamObjects+0x188
_0800A9F0:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_0800A9F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800A9FC
sub_800A9FC: @ 0x0800A9FC
	ldr r2, _0800AA0C
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r2]
	subs r1, #0xfd
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0800AA0C: .4byte gOamObjects+0x188
