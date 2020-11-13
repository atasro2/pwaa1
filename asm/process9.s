	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START GameProcess09
GameProcess09: @ 0x0800B038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _0800B05C
	mov sl, r0
	ldrb r0, [r7, #5]
	cmp r0, #8
	bls _0800B050
	b _0800B50A
_0800B050:
	lsls r0, r0, #2
	ldr r1, _0800B060
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B05C: .4byte gOamObjects+0x188
_0800B060: .4byte _0800B064
_0800B064: @ jump table
	.4byte _0800B088 @ case 0
	.4byte _0800B164 @ case 1
	.4byte _0800B1FC @ case 2
	.4byte _0800B2E4 @ case 3
	.4byte _0800B300 @ case 4
	.4byte _0800B3C8 @ case 5
	.4byte _0800B404 @ case 6
	.4byte _0800B460 @ case 7
	.4byte _0800B504 @ case 8
_0800B088:
	ldr r0, _0800B0FC
	adds r0, #0x84
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0800B108
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B100
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B104
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x56
	bl PlaySE
	b _0800B320
	.align 2, 0
_0800B0FC: .4byte gMain
_0800B100: .4byte gSineTable
_0800B104: .4byte gOamObjects
_0800B108:
	adds r0, r7, #0
	adds r0, #0x84
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B15C
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B160
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	b _0800B50A
	.align 2, 0
_0800B15C: .4byte gSineTable
_0800B160: .4byte gOamObjects
_0800B164:
	ldrb r0, [r7, #6]
	adds r1, r0, #1
	strb r1, [r7, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bhi _0800B174
	b _0800B50A
_0800B174:
	ldr r0, _0800B1E4
	adds r0, #0x84
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0]
	movs r2, #8
	add sl, r2
	ldr r0, _0800B1E8
	mov r1, sl
	strh r0, [r1]
	ldr r0, _0800B1EC
	strh r0, [r1, #2]
	ldr r0, _0800B1F0
	strh r0, [r1, #4]
	adds r0, r7, #0
	adds r0, #0x84
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B1F4
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B1F8
	strh r0, [r5, #0x26]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	b _0800B4FC
	.align 2, 0
_0800B1E4: .4byte gMain
_0800B1E8: .4byte 0x000003EF
_0800B1EC: .4byte 0x0000C280
_0800B1F0: .4byte 0x000051E0
_0800B1F4: .4byte gSineTable
_0800B1F8: .4byte gOamObjects
_0800B1FC:
	ldr r0, _0800B27C
	adds r0, #0x84
	mov sl, r0
	ldrh r0, [r0]
	subs r0, #0x10
	mov r2, sl
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	cmp r0, sb
	bgt _0800B288
	mov r0, sb
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B280
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r8, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B284
	strh r0, [r5, #0x26]
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x56
	bl PlaySE
	mov r1, sb
	mov r0, sl
	strh r1, [r0]
	b _0800B320
	.align 2, 0
_0800B27C: .4byte gMain
_0800B280: .4byte gSineTable
_0800B284: .4byte gOamObjects
_0800B288:
	adds r0, r7, #0
	adds r0, #0x84
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B2DC
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B2E0
	strh r0, [r5, #0x26]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	b _0800B50A
	.align 2, 0
_0800B2DC: .4byte gSineTable
_0800B2E0: .4byte gOamObjects
_0800B2E4:
	ldrb r0, [r7, #6]
	adds r1, r0, #1
	strb r1, [r7, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bhi _0800B2F4
	b _0800B50A
_0800B2F4:
	ldrb r0, [r7, #5]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #5]
	strb r1, [r7, #6]
	b _0800B50A
_0800B300:
	ldrb r0, [r7, #6]
	adds r1, r0, #1
	strb r1, [r7, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bls _0800B32C
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, sl
	strh r0, [r2]
	strh r0, [r2, #8]
	ldrb r0, [r7, #7]
	cmp r0, #0
	bne _0800B320
	b _0800B504
_0800B320:
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	movs r0, #0
	strb r0, [r7, #6]
	b _0800B50A
_0800B32C:
	adds r0, r7, #0
	adds r0, #0x84
	ldrh r1, [r0]
	adds r1, #8
	strh r1, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B3C0
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r8, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B3C4
	strh r0, [r5, #6]
	movs r0, #0
	ldrsh r2, [r6, r0]
	mov sb, r2
	mov r0, sb
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r6, r6, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x26]
	mov r0, sb
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	mov r1, sl
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	b _0800B50A
	.align 2, 0
_0800B3C0: .4byte gSineTable
_0800B3C4: .4byte gOamObjects
_0800B3C8:
	ldr r1, _0800B3E8
	ldr r0, _0800B3EC
	str r0, [r1]
	ldr r0, _0800B3F0
	str r0, [r1, #4]
	ldr r0, _0800B3F4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800B3F8
	str r0, [r1]
	ldr r0, _0800B3FC
	str r0, [r1, #4]
	ldr r0, _0800B400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800B4FC
	.align 2, 0
_0800B3E8: .4byte 0x040000D4
_0800B3EC: .4byte gUnknown_081940A0
_0800B3F0: .4byte 0x06011F80
_0800B3F4: .4byte 0x80000010
_0800B3F8: .4byte gUnknown_08194640
_0800B3FC: .4byte 0x050002A0
_0800B400: .4byte 0x80000040
_0800B404:
	ldr r2, _0800B458
	mov sl, r2
	movs r6, #0
_0800B40A:
	bl Random
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r4, r6, #5
	adds r5, r5, r4
	movs r0, #0x7f
	ands r5, r0
	mov r0, sl
	strh r5, [r0]
	bl Random
	movs r5, #0x1f
	ands r5, r0
	adds r5, r5, r4
	movs r0, #0xff
	ands r5, r0
	mov r1, sl
	strh r5, [r1, #2]
	bl Random
	movs r1, #3
	ands r1, r0
	adds r5, r1, #5
	lsls r5, r5, #0xc
	ldr r2, _0800B45C
	adds r0, r2, #0
	adds r0, r5, r0
	mov r1, sl
	strh r0, [r1, #4]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800B40A
	movs r0, #0x66
	bl PlaySE
	b _0800B4FC
	.align 2, 0
_0800B458: .4byte gOamObjects+0x1C8
_0800B45C: .4byte 0x000004FC
_0800B460:
	ldr r0, _0800B4B8
	mov sl, r0
	ldrb r0, [r7, #6]
	adds r1, r0, #1
	strb r1, [r7, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bhi _0800B4E8
	movs r6, #0
	movs r4, #3
_0800B476:
	mov r1, sl
	ldrh r5, [r1]
	bl Random
	adds r1, r4, #0
	ands r1, r0
	adds r5, r5, r1
	cmp r5, #0xa3
	bls _0800B48A
	movs r5, #0
_0800B48A:
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	mov r1, sl
	ldrh r1, [r1]
	ands r0, r1
	adds r0, r0, r5
	mov r2, sl
	strh r0, [r2]
	ldrh r5, [r2, #2]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800B4BC
	bl Random
	adds r1, r4, #0
	ands r1, r0
	adds r5, r5, r1
	b _0800B4C6
	.align 2, 0
_0800B4B8: .4byte gOamObjects+0x1C8
_0800B4BC:
	bl Random
	adds r1, r4, #0
	ands r1, r0
	subs r5, r5, r1
_0800B4C6:
	movs r0, #0xff
	ands r5, r0
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	mov r2, sl
	ldrh r2, [r2, #2]
	ands r0, r2
	adds r0, r0, r5
	mov r1, sl
	strh r0, [r1, #2]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800B476
	b _0800B50A
_0800B4E8:
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800B4EE:
	mov r1, sl
	strh r0, [r1]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800B4EE
_0800B4FC:
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	b _0800B50A
_0800B504:
	ldr r1, _0800B518
	ldr r0, [r7, #8]
	str r0, [r1]
_0800B50A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B518: .4byte gMain+0x4