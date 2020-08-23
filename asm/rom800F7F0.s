	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_8010960
sub_8010960: @ 0x08010960
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08010A30
	cmp r4, #0
	beq _08010A28
	ldr r0, [r4, #0xc]
	ldr r1, _08010A34
	ands r0, r1
	ldr r1, _08010A38
	cmp r0, r1
	bne _08010992
	movs r0, #0x17
	bl sub_800F8BC
	cmp r0, #0
	beq _08010984
	bl sub_8010960
_08010984:
	movs r0, #0x18
	bl sub_800F8BC
	cmp r0, #0
	beq _08010992
	bl sub_8010960
_08010992:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08010A28
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r3, _08010A3C
	adds r1, r0, r3
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r5, [r2]
	lsls r0, r5, #3
	adds r0, r0, r3
	cmp r1, r0
	bhs _080109CA
	movs r5, #0x80
	lsls r5, r5, #2
_080109BC:
	strh r5, [r1]
	adds r1, #8
	ldrb r7, [r2]
	lsls r0, r7, #3
	adds r0, r0, r3
	cmp r1, r0
	blo _080109BC
_080109CA:
	movs r0, #4
	movs r1, #0
	ldrb r2, [r6, #0x1f]
	orrs r0, r2
	strb r0, [r6, #0x1f]
	str r1, [r4]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r1, #8]
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
	ldrh r3, [r4, #0xc]
	cmp r3, #0xff
	beq _08010A28
	adds r2, r4, #0
	adds r2, #0x24
	ldrb r5, [r2]
	cmp r5, #9
	bhi _08010A28
	adds r1, r5, #0
	subs r1, #6
	movs r0, #1
	lsls r0, r1
	ldrb r7, [r6, #0x1e]
	bics r7, r0
	adds r0, r7, #0
	strb r0, [r6, #0x1e]
	lsls r1, r1, #5
	ldr r0, _08010A40
	adds r3, r1, r0
	ldrb r2, [r2]
	lsls r1, r2, #5
	ldr r0, _08010A44
	adds r1, r1, r0
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	lsls r0, r0, #5
	ldr r2, _08010A48
	str r3, [r2]
	str r1, [r2, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08010A28:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010A30: .4byte gMain
_08010A34: .4byte 0x00FFFFFF
_08010A38: .4byte 0x001600FF
_08010A3C: .4byte gOamObjects
_08010A40: .4byte gObjPaletteBuffer
_08010A44: .4byte 0x05000200
_08010A48: .4byte 0x040000D4

	THUMB_FUNC_START sub_8010A4C
sub_8010A4C: @ 0x08010A4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r7, #0x80
	ldr r5, _08010B70
	ldr r0, _08010B74
	ldr r0, [r0, #8]
	mov ip, r0
	cmp r0, #0
	bne _08010A68
	b _08010C3C
_08010A68:
	mov r1, ip
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _08010A78
	b _08010C30
_08010A78:
	mov r1, ip
	adds r1, #0x3b
	strb r7, [r1]
	movs r0, #2
	ldr r2, _08010B78
	ldrb r2, [r2, #0x1f]
	ands r0, r2
	str r1, [sp, #0x10]
	mov r3, ip
	adds r3, #0x25
	str r3, [sp, #8]
	subs r1, #1
	str r1, [sp, #0xc]
	cmp r0, #0
	bne _08010A98
	b _08010C04
_08010A98:
	mov r2, ip
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _08010AA8
	b _08010C04
_08010AA8:
	ldr r4, [r2, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	ldr r2, _08010B78
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	subs r1, r1, r0
	mov r8, r1
	mov r3, ip
	movs r0, #0x12
	ldrsh r1, [r3, r0]
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	subs r1, r1, r0
	str r1, [sp]
	ldr r1, _08010B7C
	ldrh r2, [r3, #0x38]
	ands r2, r1
	mov sb, r2
	ldrh r3, [r4]
	str r3, [sp, #4]
	lsls r0, r7, #2
	ldr r1, _08010B80
	adds r6, r0, r1
	movs r2, #0
	mov sl, r2
	cmp sl, r3
	blo _08010AE2
	b _08010C04
_08010AE2:
	subs r7, #1
	subs r5, #8
	subs r6, #4
	adds r4, #4
	ldrh r3, [r4, #2]
	lsrs r0, r3, #0xc
	lsls r0, r0, #2
	ldr r1, _08010B84
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	movs r0, #0xc0
	lsls r0, r0, #6
	ldrh r2, [r4, #2]
	ands r0, r2
	lsls r3, r0, #2
	strh r3, [r5]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldr r2, [sp]
	adds r1, r2, r0
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08010B16
	adds r1, r0, #0
_08010B16:
	cmp r1, #0xe0
	ble _08010B1C
	movs r1, #0xe0
_08010B1C:
	movs r0, #0xff
	adds r2, r1, #0
	ands r2, r0
	orrs r2, r3
	strh r2, [r5]
	mov r3, ip
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _08010B3E
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r5]
_08010B3E:
	movs r2, #0xc0
	lsls r2, r2, #8
	ldrh r3, [r4, #2]
	ands r2, r3
	strh r2, [r5, #2]
	mov r1, ip
	ldr r0, [r1]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08010B8C
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrb r1, [r6, #3]
	adds r0, r1, r0
	mov r3, r8
	subs r0, r3, r0
	ldr r3, _08010B88
	adds r1, r3, #0
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	b _08010BA0
	.align 2, 0
_08010B70: .4byte gBG0MapBuffer
_08010B74: .4byte gAnimation
_08010B78: .4byte gMain
_08010B7C: .4byte 0x00000FFF
_08010B80: .4byte gUnknown_0200AFC0
_08010B84: .4byte gUnknown_08019450
_08010B88: .4byte 0x000001FF
_08010B8C:
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	ldr r3, _08010BD8
	adds r1, r3, #0
	ands r0, r1
	mov r1, ip
	adds r1, #0x3e
	ldrb r1, [r1]
	lsls r1, r1, #9
_08010BA0:
	orrs r0, r1
	orrs r2, r0
	strh r2, [r5, #2]
	mov r0, ip
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r3, r0, #0xa
	mov r0, sb
	orrs r3, r0
	strh r3, [r5, #4]
	mov r2, ip
	ldr r1, [r2, #0x34]
	movs r0, #1
	ldrb r1, [r1, #3]
	ands r0, r1
	cmp r0, #0
	beq _08010BDC
	mov r0, ip
	adds r0, #0x24
	ldrh r2, [r4, #2]
	lsrs r1, r2, #9
	movs r2, #7
	ands r1, r2
	ldrb r0, [r0]
	adds r1, r0, r1
	lsls r1, r1, #0xc
	orrs r3, r1
	b _08010BF0
	.align 2, 0
_08010BD8: .4byte 0x000001FF
_08010BDC:
	mov r1, ip
	adds r1, #0x24
	ldrh r2, [r4, #2]
	lsrs r0, r2, #0xb
	movs r2, #1
	ands r0, r2
	ldrb r1, [r1]
	adds r0, r1, r0
	lsls r0, r0, #0xc
	orrs r3, r0
_08010BF0:
	strh r3, [r5, #4]
	ldrh r3, [r6]
	lsrs r0, r3, #5
	add sb, r0
	movs r0, #1
	add sl, r0
	ldr r1, [sp, #4]
	cmp sl, r1
	bhs _08010C04
	b _08010AE2
_08010C04:
	ldr r2, [sp, #0x10]
	ldrb r3, [r2]
	ldr r2, [sp, #8]
	ldrb r2, [r2]
	subs r0, r3, r2
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	subs r7, r7, r0
	subs r7, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _08010C2C
	movs r1, #0x80
	lsls r1, r1, #2
_08010C22:
	subs r5, #8
	strh r1, [r5]
	subs r7, #1
	cmp r7, r0
	bne _08010C22
_08010C2C:
	ldr r1, [sp, #0xc]
	ldrb r7, [r1]
_08010C30:
	mov r2, ip
	ldr r2, [r2, #8]
	mov ip, r2
	cmp r2, #0
	beq _08010C3C
	b _08010A68
_08010C3C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8010C4C
sub_8010C4C: @ 0x08010C4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	ldr r0, _08010D14
	ldr r5, [r0, #8]
	cmp r5, #0
	bne _08010C64
	b _08010DEE
_08010C64:
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	ldr r2, [r5, #8]
	str r2, [sp, #0xc]
	cmp r0, #0
	bne _08010C76
	b _08010DE6
_08010C76:
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r0, r1
	cmp r0, #0
	bne _08010C82
	b _08010DE6
_08010C82:
	ldr r6, _08010D18
	ldr r3, [sp, #4]
	cmp r3, #0
	bne _08010C8C
	ldr r6, [r5, #0x1c]
_08010C8C:
	ldr r0, [r5, #0x30]
	mov ip, r0
	ldrh r2, [r0]
	mov sl, r2
	adds r0, r5, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08010D1C
	adds r7, r0, r3
	ldr r0, _08010D20
	ands r1, r0
	str r1, [r5]
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	str r0, [sp, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	beq _08010D56
	movs r2, #0
	cmp r2, sl
	bhs _08010DA4
_08010CBC:
	movs r3, #4
	add ip, r3
	subs r7, #4
	ldrh r0, [r7]
	adds r0, r0, r6
	mov r8, r0
	ldr r0, _08010D24
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	ldr r1, [r5, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r3, r1, r0
	adds r2, #1
	str r2, [sp, #0x10]
	cmp r8, r6
	bls _08010D4E
	ldr r4, _08010D28
	mov sb, sp
_08010CE6:
	ldrh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08010D30
	ldr r1, _08010D2C
	ands r1, r2
	ldrh r0, [r3, #2]
	mov r2, sb
	strh r0, [r2]
	mov r0, sp
	str r0, [r4]
	str r6, [r4, #4]
	lsls r2, r1, #1
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	adds r6, r6, r2
	adds r3, #4
	b _08010D4A
	.align 2, 0
_08010D14: .4byte gAnimation
_08010D18: .4byte gUnknown_0200B1C0
_08010D1C: .4byte gUnknown_0200AFC0
_08010D20: .4byte 0xBFFFFFFF
_08010D24: .4byte 0x000001FF
_08010D28: .4byte 0x040000D4
_08010D2C: .4byte 0x00007FFF
_08010D30:
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r3, #2
	str r3, [r4]
	str r6, [r4, #4]
	lsrs r1, r0, #1
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	adds r6, r6, r0
	adds r3, r3, r0
_08010D4A:
	cmp r8, r6
	bhi _08010CE6
_08010D4E:
	ldr r2, [sp, #0x10]
	cmp r2, sl
	blo _08010CBC
	b _08010DA4
_08010D56:
	ldr r1, [r5, #0x34]
	movs r0, #1
	ldrb r1, [r1, #3]
	ands r0, r1
	ldr r3, _08010E00
	mov sb, r3
	cmp r0, #0
	beq _08010D6A
	ldr r0, _08010E04
	mov sb, r0
_08010D6A:
	movs r2, #0
	cmp r2, sl
	bhs _08010DA4
	ldr r4, _08010E08
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov r8, r1
_08010D78:
	movs r3, #4
	add ip, r3
	subs r7, #4
	mov r0, sb
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, [r5, #0x18]
	adds r3, r1, r0
	str r3, [r4]
	str r6, [r4, #4]
	ldrh r3, [r7]
	lsrs r0, r3, #1
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r6, r3, r6
	adds r2, #1
	cmp r2, sl
	blo _08010D78
_08010DA4:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08010DE6
	adds r0, r5, #0
	adds r0, #0x24
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _08010E0C
	adds r1, r1, r0
	ldr r0, [sp, #8]
	lsls r0, r0, #5
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	adds r3, r0, #4
	ldr r2, _08010E08
	str r3, [r2]
	str r1, [r2, #4]
	ldr r1, [sp, #8]
	lsrs r0, r1, #1
	movs r3, #0x80
	lsls r3, r3, #0x18
	orrs r0, r3
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r5]
	ldr r1, _08010E10
	ands r0, r1
	str r0, [r5]
_08010DE6:
	ldr r5, [sp, #0xc]
	cmp r5, #0
	beq _08010DEE
	b _08010C64
_08010DEE:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010E00: .4byte 0x000007FF
_08010E04: .4byte 0x000001FF
_08010E08: .4byte 0x040000D4
_08010E0C: .4byte 0x05000200
_08010E10: .4byte 0xFEFFFFFF

	THUMB_FUNC_START sub_8010E14
sub_8010E14: @ 0x08010E14
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, _08010E68
	ldr r1, _08010E6C
	ldr r7, _08010E70
	movs r0, #1
	ldrb r2, [r5, #0x1f]
	ands r0, r2
	cmp r0, #0
	bne _08010E2A
	b _08010F44
_08010E2A:
	ldr r4, [r1, #8]
	cmp r4, #0
	bne _08010E32
	b _08010F44
_08010E32:
	ldrh r1, [r4, #0xc]
	adds r0, r1, #0
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08010E9E
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r5, #0x28]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08010E74
	adds r0, r5, #0
	adds r0, #0x8c
	adds r1, r4, #0
	adds r1, #0x2d
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08010EB4
	adds r0, r4, #0
	movs r1, #0
	bl sub_800FA74
	b _08010F3C
	.align 2, 0
_08010E68: .4byte gMain
_08010E6C: .4byte gAnimation
_08010E70: .4byte gCourtScroll
_08010E74:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _08010EDA
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08010EDA
	ldrh r0, [r4, #0xc]
	bl sub_8010204
	adds r0, r4, #0
	movs r1, #1
	bl sub_800FA74
	b _08010EDA
_08010E9E:
	adds r0, r1, #0
	subs r0, #0x1f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bhi _08010EBC
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r6, r0
	beq _08010EDA
_08010EB4:
	adds r0, r4, #0
	bl sub_8010960
	b _08010F3C
_08010EBC:
	adds r0, r1, #0
	subs r0, #0x19
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x24
	bhi _08010EDA
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r2, [r5, #0x28]
	ldrb r0, [r0]
	cmp r2, r0
	beq _08010EDA
	adds r0, r4, #0
	bl sub_8010960
_08010EDA:
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r1
	cmp r0, #0
	beq _08010EFA
	ldrh r0, [r4, #0xc]
	subs r0, #0x11
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08010F3C
	adds r0, r4, #0
	bl UpdateAnimationBlend
	b _08010F3C
_08010EFA:
	cmp r1, #0
	bge _08010F12
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08010F12
	adds r0, r4, #0
	bl sub_801052C
	cmp r0, #0
	beq _08010F3C
_08010F12:
	ldrh r0, [r4, #0xc]
	cmp r0, #0xb
	bhi _08010F2A
	ldr r0, _08010F64
	ldrh r1, [r4, #0xc]
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08010F2A:
	ldrh r0, [r7, #4]
	cmp r0, #0
	beq _08010F3C
	ldrh r1, [r4, #0xc]
	cmp r1, #0xff
	bne _08010F3C
	adds r0, r4, #0
	bl sub_80110E4
_08010F3C:
	ldr r4, [r4, #8]
	cmp r4, #0
	beq _08010F44
	b _08010E32
_08010F44:
	ldrb r1, [r5, #0x1f]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08010F58
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r5, #0x1f]
	bl sub_800F84C
_08010F58:
	bl sub_8010A4C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010F64: .4byte gUnknown_0811DFD0

	THUMB_FUNC_START sub_8010F68
sub_8010F68: @ 0x08010F68
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	ldr r2, _08010FA4
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	adds r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r4, [r3, #0xc]
	cmp r4, #0xf
	bne _08010F9A
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	movs r2, #0x6e
	rsbs r2, r2, #0
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_80100A8
_08010F9A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010FA4: .4byte gUnknown_0801948C

	THUMB_FUNC_START sub_8010FA8
sub_8010FA8: @ 0x08010FA8
	push {r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r3, _08010FE8
	movs r1, #0xc
	ldrsh r2, [r4, r1]
	movs r1, #0x1e
	subs r1, r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	subs r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r0, [r4, #0xc]
	cmp r0, #0xf
	bne _08010FDE
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0xaf
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_80100A8
_08010FDE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010FE8: .4byte gUnknown_0801948C

	THUMB_FUNC_START sub_8010FEC
sub_8010FEC: @ 0x08010FEC
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	ldr r2, _08011028
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	adds r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r4, [r3, #0xc]
	cmp r4, #0xe
	bne _0801101E
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	movs r2, #0x54
	rsbs r2, r2, #0
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_80100A8
_0801101E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011028: .4byte gUnknown_080194AB

	THUMB_FUNC_START sub_801102C
sub_801102C: @ 0x0801102C
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	ldr r2, _08011064
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	subs r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r4, [r3, #0xc]
	cmp r4, #0xe
	bne _0801105C
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	movs r2, #0
	str r2, [sp]
	movs r2, #0xdc
	movs r3, #0x50
	bl sub_80100A8
_0801105C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011064: .4byte gUnknown_080194CA

	THUMB_FUNC_START sub_8011068
sub_8011068: @ 0x08011068
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	ldr r2, _080110A4
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	subs r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r4, [r3, #0xc]
	cmp r4, #0xe
	bne _0801109A
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	movs r2, #0xa2
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_80100A8
_0801109A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080110A4: .4byte gUnknown_080194AB

	THUMB_FUNC_START sub_80110A8
sub_80110A8: @ 0x080110A8
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	ldr r2, _080110E0
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	adds r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r4, [r3, #0xc]
	cmp r4, #0xe
	bne _080110D8
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	movs r2, #0
	str r2, [sp]
	movs r2, #0x14
	movs r3, #0x50
	bl sub_80100A8
_080110D8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080110E0: .4byte gUnknown_080194CA

	THUMB_FUNC_START sub_80110E4
sub_80110E4: @ 0x080110E4
	push {lr}
	ldr r1, _080110FC
	ldr r0, _08011100
	ldrb r3, [r1, #6]
	lsls r2, r3, #2
	adds r2, r2, r0
	ldr r0, _08011104
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080110FC: .4byte gCourtScroll
_08011100: .4byte gUnknown_0811DFFC
_08011104: .4byte gAnimation+0x40

	THUMB_FUNC_START sub_8011108
sub_8011108: @ 0x08011108
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r2, _0801112C
	lsls r3, r0, #1
	strb r3, [r2, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011120
	adds r0, r3, #1
	strb r0, [r2, #6]
_08011120:
	strh r4, [r2, #8]
	strh r5, [r2, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801112C: .4byte gCourtScroll

	THUMB_FUNC_START sub_8011130
sub_8011130: @ 0x08011130
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #3
	ands r1, r0
	adds r5, r1, #1
	bl Random
	movs r1, #7
	ands r1, r0
	subs r1, #4
	adds r3, r4, #0
	adds r3, #0x2b
	ldrb r0, [r3]
	cmp r0, #0
	bne _08011156
	ldrh r0, [r4, #0x10]
	strh r0, [r4, #0x2e]
_08011156:
	ldrb r2, [r3]
	adds r2, #1
	strb r2, [r3]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _08011196
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08011172
	ldrh r2, [r4, #0x2e]
	adds r0, r2, r5
	b _08011176
_08011172:
	ldrh r2, [r4, #0x2e]
	subs r0, r2, r5
_08011176:
	strh r0, [r4, #0x10]
	ldrh r2, [r4, #0x12]
	adds r0, r2, r1
	strh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _0801118C
	movs r0, #0x5a
	strh r0, [r4, #0x12]
	b _0801119A
_0801118C:
	cmp r0, #0x45
	bgt _0801119A
	movs r0, #0x46
	strh r0, [r4, #0x12]
	b _0801119A
_08011196:
	movs r0, #0x28
	strb r0, [r3]
_0801119A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80111A0
sub_80111A0: @ 0x080111A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080111B8
	ldrh r0, [r5, #0x28]
	cmp r0, #0xff
	bne _080111BC
	adds r0, r4, #0
	movs r1, #0
	bl sub_800FA74
	b _08011230
	.align 2, 0
_080111B8: .4byte gMain
_080111BC:
	adds r0, r4, #0
	movs r1, #1
	bl sub_800FA74
	ldrh r5, [r5, #0x28]
	cmp r5, #0x4a
	bne _080111E6
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	bne _080111D6
	ldrh r0, [r4, #0x2e]
	adds r0, #3
	b _08011200
_080111D6:
	cmp r0, #6
	bne _080111E0
	ldrh r0, [r4, #0x2e]
	subs r0, #5
	b _08011200
_080111E0:
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	b _08011200
_080111E6:
	ldrh r0, [r4, #0xc]
	cmp r0, #5
	bne _080111F2
	ldrh r0, [r4, #0x2e]
	subs r0, #3
	b _08011200
_080111F2:
	cmp r0, #6
	bne _080111FC
	ldrh r0, [r4, #0x2e]
	adds r0, #5
	b _08011200
_080111FC:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
_08011200:
	strh r0, [r4, #0x2e]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r1, #0x14
	bl __divsi3
	ldrh r1, [r4, #0x10]
	adds r0, r1, r0
	strh r0, [r4, #0x10]
	ldrh r2, [r4, #0x2e]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	cmp r1, #0x14
	ble _08011222
	adds r0, r2, #0
	subs r0, #0x14
	b _0801122E
_08011222:
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08011230
	adds r0, r2, #0
	adds r0, #0x14
_0801122E:
	strh r0, [r4, #0x2e]
_08011230:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
