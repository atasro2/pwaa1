	.include "asm/macros.inc"
	.syntax unified

    THUMB_FUNC_START sub_8000A28
sub_8000A28: @ 0x08000A28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov ip, r0
	str r1, [sp]
	mov r2, ip
	adds r2, #0x3e
	movs r0, #0x1e
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x3f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	ble _08000A56
	movs r0, #0
	strb r0, [r1]
_08000A56:
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #8
	mov r8, r0
	ldr r4, [sp]
	cmp r4, #0
	bge _08000A68
	movs r5, #4
	mov r8, r5
_08000A68:
	ldr r0, _08000B14
	ldr r4, [sp]
	ands r4, r0
	str r4, [sp, #4]
	mov r5, r8
	muls r5, r4, r5
	str r5, [sp]
	mov r0, r8
	lsls r0, r0, #3
	mov sl, r0
	mov r4, r8
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r0, r0, #3
	mov r8, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #6
	ldr r5, _08000B18
	adds r6, r0, r5
	movs r4, #1
	str r2, [sp, #0xc]
	mov sb, r1
	mov r0, ip
	adds r0, #0x2f
	str r0, [sp, #0x14]
	mov r1, ip
	adds r1, #0x2e
	str r1, [sp, #0x10]
	ldr r2, _08000B1C
	mov r5, sl
	lsrs r5, r5, #1
	orrs r5, r3
	str r5, [sp, #0x18]
	movs r3, #0
	ldr r7, _08000B20
	adds r7, #0x7e
	mov r0, sb
	str r0, [sp, #8]
_08000AB6:
	lsls r0, r4, #6
	ldr r1, _08000B20
	adds r0, r0, r1
	str r0, [r2]
	str r7, [r2, #4]
	ldr r5, _08000B24
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, [sp, #8]
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, sl
	muls r1, r0, r1
	ldr r5, _08000B28
	adds r0, r3, r5
	adds r0, r1, r0
	str r6, [r2]
	str r0, [r2, #4]
	ldr r0, [sp, #0x18]
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, [sp]
	adds r6, r6, r1
	add r3, r8
	adds r7, #0x40
	adds r4, #1
	cmp r4, #0x14
	bls _08000AB6
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	ble _08000B02
	movs r0, #0
	strb r0, [r2]
_08000B02:
	movs r0, #0xb4
	lsls r0, r0, #1
	ldr r4, [sp, #4]
	cmp r4, r0
	bne _08000B2C
	movs r0, #0x2f
	ldr r5, [sp, #0x14]
	strb r0, [r5]
	b _08000B32
	.align 2, 0
_08000B14: .4byte 0x7FFFFFFF
_08000B18: .4byte gUnknown_0202CFC0
_08000B1C: .4byte 0x040000D4
_08000B20: .4byte gBG3MapBuffer
_08000B24: .4byte 0x80000001
_08000B28: .4byte 0x06004000
_08000B2C:
	movs r0, #1
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08000B32:
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	adds r0, #1
	movs r3, #0
	strb r0, [r2]
	ldr r4, [sp, #0x10]
	strb r3, [r4]
	movs r0, #0x11
	rsbs r0, r0, #0
	mov r5, ip
	ldrh r5, [r5, #0x3a]
	ands r0, r5
	movs r1, #0x20
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #0x3a]
	ldrh r2, [r1, #0x34]
	movs r4, #0x34
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _08000B64
	adds r1, #0x3c
	ldrb r5, [r1]
	subs r0, r5, r2
	strb r0, [r1]
_08000B64:
	mov r0, ip
	strh r3, [r0, #0x34]
	strh r3, [r0, #0x30]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8000B7C
sub_8000B7C: @ 0x08000B7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	str r1, [sp]
	movs r1, #0x30
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08000B96
	adds r0, #7
_08000B96:
	asrs r0, r0, #3
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r2, #8
	str r2, [sp, #8]
	ldr r6, [sp]
	cmp r6, #0
	bge _08000BAA
	movs r0, #4
	str r0, [sp, #8]
_08000BAA:
	ldr r1, [sp]
	str r1, [sp, #0x10]
	ldr r6, [sp, #8]
	adds r2, r1, #0
	muls r2, r6, r2
	str r2, [sp]
	lsls r0, r6, #3
	str r0, [sp, #0xc]
	lsls r0, r6, #5
	subs r0, r0, r6
	lsls r0, r0, #3
	str r0, [sp, #8]
	movs r1, #0x3e
	add r1, sb
	mov sl, r1
	movs r2, #0x3f
	add r2, sb
	mov ip, r2
	mov r6, sb
	adds r6, #0x2f
	str r6, [sp, #0x14]
	b _08000BE0
_08000BD6:
	ldr r0, [sp, #4]
	subs r0, #1
	str r0, [sp, #4]
	cmp r0, #0
	beq _08000C9C
_08000BE0:
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #6
	ldr r2, _08000CC4
	adds r5, r0, r2
	movs r7, #1
	ldr r6, [sp, #0xc]
	lsrs r6, r6, #1
	str r6, [sp, #0x18]
	ldr r0, _08000CC8
	mov r8, r0
	ldr r3, _08000CCC
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r6, r0
	str r6, [sp, #0x18]
_08000C04:
	lsls r1, r7, #6
	mov r6, r8
	adds r2, r1, r6
	ldr r6, _08000CD0
	adds r0, r1, r6
	str r2, [r3]
	str r0, [r3, #4]
	ldr r0, _08000CD4
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r0, r8
	adds r0, #0x3c
	adds r0, r1, r0
	str r0, [r3]
	str r2, [r3, #4]
	ldr r0, _08000CD8
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r2, r1, r6
	ldr r6, _08000CDC
	adds r0, r1, r6
	str r2, [r3]
	str r0, [r3, #4]
	ldr r0, _08000CD4
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, ip
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, [sp, #0xc]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r6, _08000CE0
	adds r0, r4, r6
	adds r2, r1, r0
	str r5, [r3]
	str r2, [r3, #4]
	ldr r0, [sp, #0x18]
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [sp]
	adds r5, r5, r1
	ldr r2, [sp, #8]
	adds r4, r4, r2
	adds r7, #1
	cmp r7, #0x14
	bls _08000C04
	mov r6, ip
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08000C74
	movs r0, #0x1e
	strb r0, [r6]
_08000C74:
	mov r1, sl
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08000C86
	movs r0, #0x3b
	strb r0, [r1]
_08000C86:
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, [sp, #0x14]
	ldrb r2, [r2]
	cmp r0, r2
	bne _08000BD6
	mov r0, sb
	ldr r1, [sp, #0x10]
	bl sub_8000A28
_08000C9C:
	mov r6, sb
	movs r0, #0x30
	ldrsh r1, [r6, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _08000CAA
	adds r0, r1, #7
_08000CAA:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	mov r1, sb
	strh r0, [r1, #0x30]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000CC4: .4byte gUnknown_0202CFC0
_08000CC8: .4byte gBG3MapBuffer
_08000CCC: .4byte 0x040000D4
_08000CD0: .4byte gBG3MapBufferCopy
_08000CD4: .4byte 0x8000001E
_08000CD8: .4byte 0x80000001
_08000CDC: .4byte gBG3MapBuffer+0x2
_08000CE0: .4byte 0x06004000

	THUMB_FUNC_START sub_8000CE4
sub_8000CE4: @ 0x08000CE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov ip, r0
	adds r6, r1, #0
	movs r0, #8
	mov sl, r0
	cmp r6, #0
	bge _08000D00
	movs r1, #4
	mov sl, r1
_08000D00:
	ldr r0, _08000D30
	ands r6, r0
	lsrs r3, r6, #1
	str r3, [sp, #4]
	mov r4, sl
	muls r4, r6, r4
	adds r6, r4, #0
	mov r5, sl
	lsls r5, r5, #3
	str r5, [sp]
	mov r7, sl
	lsls r0, r7, #5
	subs r0, r0, r7
	lsls r0, r0, #3
	mov sl, r0
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r3, r0
	bne _08000D34
	mov r1, ip
	adds r1, #0x3e
	movs r0, #0xe
	b _08000D3A
	.align 2, 0
_08000D30: .4byte 0x7FFFFFFF
_08000D34:
	mov r1, ip
	adds r1, #0x3e
	movs r0, #0x1d
_08000D3A:
	strb r0, [r1]
	str r1, [sp, #0x14]
	mov r1, ip
	adds r1, #0x3f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	mov sb, r1
	cmp r0, #0
	bge _08000D54
	movs r0, #0x1e
	strb r0, [r1]
_08000D54:
	ldr r1, [sp, #0x14]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #6
	ldr r3, _08000E30
	adds r5, r0, r3
	movs r4, #1
	ldr r7, [sp]
	lsrs r7, r7, #1
	str r7, [sp, #0x18]
	mov r0, ip
	adds r0, #0x2f
	str r0, [sp, #0x10]
	mov r1, ip
	adds r1, #0x2e
	str r1, [sp, #0xc]
	ldr r2, _08000E34
	movs r0, #0x80
	lsls r0, r0, #0x18
	adds r3, r7, #0
	orrs r3, r0
	str r3, [sp, #0x18]
	movs r3, #0
	ldr r7, _08000E38
	adds r7, #2
	mov r8, r7
	mov r0, sb
	str r0, [sp, #8]
_08000D8C:
	lsls r0, r4, #6
	ldr r1, _08000E38
	adds r0, r0, r1
	str r0, [r2]
	mov r7, r8
	str r7, [r2, #4]
	ldr r0, _08000E3C
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, [sp, #8]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r7, [sp]
	adds r1, r0, #0
	muls r1, r7, r1
	ldr r7, _08000E40
	adds r0, r3, r7
	adds r0, r1, r0
	str r5, [r2]
	str r0, [r2, #4]
	ldr r0, [sp, #0x18]
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r5, r5, r6
	add r3, sl
	movs r1, #0x40
	add r8, r1
	adds r4, #1
	cmp r4, #0x14
	bls _08000D8C
	mov r3, sb
	ldrb r0, [r3]
	subs r0, #1
	movs r2, #0
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08000DDC
	movs r0, #0x1e
	strb r0, [r3]
_08000DDC:
	ldr r4, [sp, #0x14]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #0x3a
	ldr r5, [sp, #0x10]
	strb r0, [r5]
	ldr r7, [sp, #0xc]
	strb r2, [r7]
	subs r0, #0x5b
	mov r1, ip
	ldrh r1, [r1, #0x3a]
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	mov r3, ip
	strh r0, [r3, #0x3a]
	movs r4, #0x34
	ldrsh r0, [r3, r4]
	ldr r5, [sp, #4]
	cmp r0, r5
	bls _08000E16
	mov r1, ip
	adds r1, #0x3c
	ldrh r7, [r3, #0x34]
	subs r0, r7, r5
	ldrb r3, [r1]
	subs r0, r3, r0
	strb r0, [r1]
_08000E16:
	mov r4, sp
	ldrh r5, [r4, #4]
	mov r4, ip
	strh r5, [r4, #0x34]
	strh r2, [r4, #0x30]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000E30: .4byte gUnknown_0202CFC0
_08000E34: .4byte 0x040000D4
_08000E38: .4byte gBG3MapBuffer+0x3E
_08000E3C: .4byte 0x80000001
_08000E40: .4byte 0x06004000

	THUMB_FUNC_START sub_8000E44
sub_8000E44: @ 0x08000E44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	str r1, [sp]
	movs r1, #0x30
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08000E5E
	adds r0, #7
_08000E5E:
	asrs r0, r0, #3
	str r0, [sp, #4]
	movs r2, #8
	str r2, [sp, #8]
	ldr r0, [sp]
	cmp r0, #0
	bge _08000E70
	movs r1, #4
	str r1, [sp, #8]
_08000E70:
	ldr r2, [sp]
	str r2, [sp, #0x10]
	ldr r1, [sp, #8]
	adds r0, r2, #0
	muls r0, r1, r0
	str r0, [sp]
	lsls r2, r1, #3
	str r2, [sp, #0xc]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	str r0, [sp, #8]
	movs r0, #0x3e
	add r0, sb
	mov sl, r0
	movs r1, #0x3f
	add r1, sb
	mov r8, r1
	mov r2, sb
	adds r2, #0x2f
	str r2, [sp, #0x14]
	b _08000EA6
_08000E9C:
	ldr r0, [sp, #4]
	subs r0, #1
	str r0, [sp, #4]
	cmp r0, #0
	beq _08000F5E
_08000EA6:
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #6
	ldr r2, _08000F88
	adds r6, r0, r2
	movs r0, #1
	mov ip, r0
	ldr r1, [sp, #0xc]
	lsrs r7, r1, #1
	ldr r4, _08000F8C
	movs r5, #0
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r7, r0
_08000EC4:
	mov r2, ip
	lsls r1, r2, #6
	ldr r0, _08000F90
	adds r2, r1, r0
	ldr r0, _08000F94
	adds r3, r1, r0
	str r2, [r4]
	str r3, [r4, #4]
	ldr r2, _08000F98
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08000F9C
	adds r2, r1, r0
	str r3, [r4]
	str r2, [r4, #4]
	ldr r0, _08000F98
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08000FA0
	adds r3, r1, r0
	str r2, [r4]
	str r3, [r4, #4]
	ldr r0, _08000FA4
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, [sp, #0xc]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r2, _08000FA8
	adds r0, r5, r2
	adds r2, r1, r0
	str r6, [r4]
	str r2, [r4, #4]
	str r7, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [sp]
	adds r6, r6, r0
	ldr r1, [sp, #8]
	adds r5, r5, r1
	movs r2, #1
	add ip, r2
	mov r0, ip
	cmp r0, #0x14
	bls _08000EC4
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	ble _08000F36
	strb r2, [r1]
_08000F36:
	mov r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _08000F48
	strb r2, [r1]
_08000F48:
	mov r2, sl
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldr r1, [sp, #0x14]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08000E9C
	mov r0, sb
	ldr r1, [sp, #0x10]
	bl sub_8000CE4
_08000F5E:
	mov r2, sb
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _08000F6C
	adds r0, r1, #7
_08000F6C:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	mov r1, sb
	strh r0, [r1, #0x30]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000F88: .4byte gUnknown_0202CFC0
_08000F8C: .4byte 0x040000D4
_08000F90: .4byte gBG3MapBuffer+0x2
_08000F94: .4byte gBG3MapBufferCopy
_08000F98: .4byte 0x8000001F
_08000F9C: .4byte gBG3MapBuffer
_08000FA0: .4byte gBG3MapBuffer+0x3E
_08000FA4: .4byte 0x80000001
_08000FA8: .4byte 0x06004000

	THUMB_FUNC_START sub_8000FAC
sub_8000FAC: @ 0x08000FAC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	movs r0, #0x3e
	adds r0, r0, r3
	mov ip, r0
	movs r2, #0
	mov r8, r2
	movs r0, #0x15
	mov r4, ip
	strb r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #0x18
	mov sb, r5
	movs r5, #8
	cmp r1, #0
	bge _08000FD4
	movs r5, #4
_08000FD4:
	ldr r6, _08001050
	ands r6, r1
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r5, r0, #4
	adds r2, r3, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08000FF4
	mov r7, r8
	strb r7, [r2]
_08000FF4:
	ldr r4, _08001054
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, _08001058
	str r4, [r1]
	str r0, [r1, #4]
	ldr r0, _0800105C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	ldrsb r0, [r2, r0]
	muls r0, r5, r0
	ldr r7, _08001060
	adds r4, r0, r7
	mov r7, ip
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r5, r0
	ldr r7, _08001064
	adds r0, r0, r7
	subs r0, r0, r5
	str r0, [r1]
	str r4, [r1, #4]
	lsrs r0, r5, #1
	mov r4, sb
	orrs r0, r4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08001040
	mov r5, r8
	strb r5, [r2]
_08001040:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r6, r0
	bne _08001068
	adds r1, r3, #0
	adds r1, #0x2f
	movs r0, #1
	b _0800106E
	.align 2, 0
_08001050: .4byte 0x7FFFFFFF
_08001054: .4byte gBG3MapBuffer
_08001058: .4byte 0x040000D4
_0800105C: .4byte 0x80000020
_08001060: .4byte 0x06004000
_08001064: .4byte gUnknown_0202CFC0
_08001068:
	adds r1, r3, #0
	adds r1, #0x2f
	movs r0, #0x20
_0800106E:
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x2e
	movs r4, #0
	strb r4, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ldrh r7, [r3, #0x3a]
	ands r0, r7
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r3, #0x3a]
	ldrh r2, [r3, #0x36]
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _0800109A
	adds r1, r3, #0
	adds r1, #0x3d
	ldrb r5, [r1]
	subs r0, r5, r2
	strb r0, [r1]
_0800109A:
	strh r4, [r3, #0x36]
	strh r4, [r3, #0x32]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_80010AC
sub_80010AC: @ 0x080010AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	str r1, [sp]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080010C6
	adds r0, #7
_080010C6:
	asrs r0, r0, #3
	rsbs r0, r0, #0
	mov r8, r0
	movs r6, #8
	ldr r2, [sp]
	cmp r2, #0
	bge _080010D6
	movs r6, #4
_080010D6:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r6, r0, #4
	ldr r5, _080010F8
	ldr r3, _080010FC
	mov sl, r3
	adds r7, r4, #0
	adds r7, #0x3e
	str r7, [sp, #4]
	movs r0, #0x3f
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0x2f
	adds r1, r1, r4
	mov sb, r1
	b _0800110C
	.align 2, 0
_080010F8: .4byte gBG3MapBuffer
_080010FC: .4byte gBG3MapBufferCopy
_08001100:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r3, r8
	cmp r3, #0
	beq _08001198
_0800110C:
	ldr r2, _080011BC
	str r5, [r2]
	mov r7, sl
	str r7, [r2, #4]
	ldr r1, _080011C0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #0
	adds r0, #0x40
	str r7, [r2]
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r0, r5, r1
	str r0, [r2]
	str r5, [r2, #4]
	ldr r0, _080011C4
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, [sp, #4]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r7, _080011C8
	adds r1, r1, r7
	mov r7, ip
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r6, r0
	ldr r7, _080011CC
	adds r0, r0, r7
	str r1, [r2]
	str r0, [r2, #4]
	lsrs r0, r6, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08001172
	movs r0, #0x14
	strb r0, [r1]
_08001172:
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08001182
	movs r0, #0x27
	strb r0, [r3]
_08001182:
	ldr r2, [sp, #4]
	movs r0, #0
	ldrsb r0, [r2, r0]
	mov r3, sb
	ldrb r3, [r3]
	cmp r0, r3
	bne _08001100
	adds r0, r4, #0
	ldr r1, [sp]
	bl sub_8000FAC
_08001198:
	movs r7, #0x32
	ldrsh r1, [r4, r7]
	adds r0, r1, #0
	cmp r1, #0
	bge _080011A4
	adds r0, r1, #7
_080011A4:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r4, #0x32]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080011BC: .4byte 0x040000D4
_080011C0: .4byte 0x800002A0
_080011C4: .4byte 0x80000020
_080011C8: .4byte gUnknown_0202CFC0
_080011CC: .4byte 0x06004000

	THUMB_FUNC_START sub_80011D0
sub_80011D0: @ 0x080011D0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r4, r1, #0
	movs r5, #8
	cmp r4, #0
	bge _080011DE
	movs r5, #4
_080011DE:
	ldr r0, _080011F8
	ands r4, r0
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r5, r0, #4
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r4, r0
	bne _080011FC
	mov r1, ip
	adds r1, #0x3e
	movs r0, #0x12
	b _08001202
	.align 2, 0
_080011F8: .4byte 0x7FFFFFFF
_080011FC:
	mov r1, ip
	adds r1, #0x3e
	movs r0, #8
_08001202:
	strb r0, [r1]
	adds r6, r1, #0
	mov r3, ip
	adds r3, #0x3f
	ldrb r0, [r3]
	subs r0, #1
	movs r7, #0
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0800121C
	movs r0, #0x14
	strb r0, [r3]
_0800121C:
	ldr r1, _080012A8
	ldr r2, _080012AC
	adds r0, r1, r2
	ldr r2, _080012B0
	str r1, [r2]
	str r0, [r2, #4]
	ldr r0, _080012B4
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0
	ldrsb r0, [r6, r0]
	muls r0, r5, r0
	ldr r6, _080012B8
	adds r0, r0, r6
	adds r0, r0, r5
	movs r1, #0
	ldrsb r1, [r3, r1]
	muls r1, r5, r1
	ldr r6, _080012BC
	adds r1, r1, r6
	str r0, [r2]
	str r1, [r2, #4]
	lsrs r0, r5, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08001264
	movs r0, #0x14
	strb r0, [r3]
_08001264:
	mov r1, ip
	adds r1, #0x2f
	movs r0, #0x26
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x2e
	strb r7, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	mov r1, ip
	ldrh r1, [r1, #0x3a]
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	mov r2, ip
	strh r0, [r2, #0x3a]
	lsrs r4, r4, #1
	movs r3, #0x36
	ldrsh r0, [r2, r3]
	cmp r0, r4
	bls _0800129C
	mov r1, ip
	adds r1, #0x3d
	ldrh r6, [r2, #0x36]
	subs r0, r6, r4
	ldrb r2, [r1]
	subs r0, r2, r0
	strb r0, [r1]
_0800129C:
	mov r3, ip
	strh r4, [r3, #0x36]
	strh r7, [r3, #0x32]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080012A8: .4byte gBG3MapBuffer+0x540
_080012AC: .4byte 0xFFFFFAC0
_080012B0: .4byte 0x040000D4
_080012B4: .4byte 0x80000020
_080012B8: .4byte gUnknown_0202CFC0
_080012BC: .4byte 0x06004000

	THUMB_FUNC_START sub_80012C0
sub_80012C0: @ 0x080012C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldrh r2, [r4, #0x32]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x13
	mov r8, r0
	movs r6, #8
	cmp r1, #0
	bge _080012DE
	movs r6, #4
_080012DE:
	str r1, [sp]
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r6, r0, #4
	ldr r5, _08001300
	ldr r7, _08001304
	mov sl, r7
	adds r0, r4, #0
	adds r0, #0x3e
	str r0, [sp, #4]
	movs r1, #0x3f
	adds r1, r1, r4
	mov ip, r1
	movs r2, #0x2f
	adds r2, r2, r4
	mov sb, r2
	b _08001314
	.align 2, 0
_08001300: .4byte gBG3MapBuffer+0x40
_08001304: .4byte gBG3MapBufferCopy
_08001308:
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	mov r0, r8
	cmp r0, #0
	beq _080013AC
_08001314:
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r2, _080013D0
	str r5, [r2]
	str r0, [r2, #4]
	ldr r0, _080013D4
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #0
	subs r0, #0x40
	str r0, [r2]
	mov r7, sl
	str r7, [r2, #4]
	ldr r0, _080013D8
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, sl
	adds r0, #0x40
	str r0, [r2]
	ldr r0, _080013DC
	str r0, [r2, #4]
	ldr r0, _080013E0
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, [sp, #4]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r7, _080013E4
	adds r1, r1, r7
	mov r7, ip
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r6, r0
	ldr r7, _080013E8
	adds r0, r0, r7
	str r1, [r2]
	str r0, [r2, #4]
	lsrs r0, r6, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	movs r1, #0
	mov r2, ip
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08001386
	strb r1, [r2]
_08001386:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	ble _08001396
	strb r1, [r3]
_08001396:
	ldr r7, [sp, #4]
	movs r0, #0
	ldrsb r0, [r7, r0]
	mov r1, sb
	ldrb r1, [r1]
	cmp r0, r1
	bne _08001308
	adds r0, r4, #0
	ldr r1, [sp]
	bl sub_80011D0
_080013AC:
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _080013B8
	adds r0, r1, #7
_080013B8:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r4, #0x32]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080013D0: .4byte 0x040000D4
_080013D4: .4byte 0x80000020
_080013D8: .4byte 0x800002E0
_080013DC: .4byte gBG3MapBuffer
_080013E0: .4byte 0x800002C0
_080013E4: .4byte gUnknown_0202CFC0
_080013E8: .4byte 0x06004000

	THUMB_FUNC_START sub_80013EC
sub_80013EC: @ 0x080013EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08001484
	ldr r0, _08001488
	mov r8, r0
	ldr r1, _0800148C
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08001444
	movs r0, #1
	ldrh r2, [r1, #0xc]
	ands r0, r2
	cmp r0, #0
	bne _08001444
	ldr r2, [r1]
	ldr r0, _08001490
	mov r3, r8
	ldrh r3, [r3, #6]
	ands r0, r3
	mov r4, r8
	strh r0, [r4, #6]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, _08001494
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r0, _08001498
	str r2, [r0]
	ldr r1, _0800149C
	str r1, [r0, #4]
	ldr r1, _080014A0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, #0x20
	str r2, [r0]
	ldr r1, _080014A4
	str r1, [r0, #4]
	ldr r1, _080014A8
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08001444:
	movs r4, #0x2e
	adds r4, r4, r5
	mov ip, r4
	ldrb r0, [r4]
	cmp r0, #0
	bne _08001452
	b _08001738
_08001452:
	ldr r0, _080014AC
	ldrh r2, [r5, #0x28]
	lsls r1, r2, #3
	adds r0, #4
	adds r7, r1, r0
	ldr r4, [r7]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r4
	cmp r0, #0
	beq _080014B4
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r8
	ldrh r1, [r1, #0x14]
	adds r0, r1, r0
	ldr r1, _080014B0
	ands r0, r1
	mov r2, r8
	strh r0, [r2, #0x14]
	b _08001738
	.align 2, 0
_08001484: .4byte gMain
_08001488: .4byte gLCDIORegisters
_0800148C: .4byte gCourtScroll
_08001490: .4byte 0x0000FF7F
_08001494: .4byte 0x00004B20
_08001498: .4byte 0x040000D4
_0800149C: .4byte 0x05000040
_080014A0: .4byte 0x80000010
_080014A4: .4byte 0x06004000
_080014A8: .4byte 0x80002580
_080014AC: .4byte gBackgroundTable
_080014B0: .4byte 0x000001FF
_080014B4:
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r3, r4
	cmp r3, #0
	beq _080014FC
	cmp r2, #0x4a
	bne _080014CC
	mov r3, r8
	ldrh r0, [r3, #0x10]
	adds r0, #1
	strh r0, [r3, #0x10]
	b _080014D4
_080014CC:
	mov r4, r8
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
_080014D4:
	ldr r0, _080014F8
	mov r1, r8
	ldrh r1, [r1, #0x10]
	ands r0, r1
	mov r2, r8
	strh r0, [r2, #0x10]
	ldrh r0, [r5, #0x36]
	adds r0, #1
	strh r0, [r5, #0x36]
	movs r3, #0x36
	ldrsh r0, [r5, r3]
	movs r1, #0x28
	bl __divsi3
	adds r0, #8
	mov r4, r8
	strh r0, [r4, #0x16]
	b _08001738
	.align 2, 0
_080014F8: .4byte 0x000001FF
_080014FC:
	movs r0, #0x3a
	ldrsh r4, [r5, r0]
	movs r2, #0x10
	ands r2, r4
	cmp r2, #0
	beq _0800157E
	adds r0, r5, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	ble _08001518
	b _08001622
_08001518:
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrh r3, [r5, #0x30]
	adds r2, r3, r0
	strh r2, [r5, #0x30]
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrh r4, [r5, #0x34]
	adds r3, r4, r0
	strh r3, [r5, #0x34]
	ldr r1, [r7]
	movs r0, #1
	ands r0, r1
	movs r4, #0xb4
	lsls r4, r4, #1
	cmp r0, #0
	beq _0800153C
	adds r4, #0x78
_0800153C:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	orrs r4, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _0800155A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8000B7C
	b _080015FE
_0800155A:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _080015FE
	adds r1, r5, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08001574
	movs r0, #0x1e
	strb r0, [r1]
_08001574:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8000A28
	b _080015FE
_0800157E:
	movs r3, #0x20
	ands r3, r4
	cmp r3, #0
	beq _0800160C
	adds r0, r5, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	bge _0800159A
	mov r0, ip
	strb r2, [r0]
	b _08001738
_0800159A:
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrh r1, [r5, #0x30]
	adds r2, r1, r0
	strh r2, [r5, #0x30]
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrh r3, [r5, #0x34]
	adds r0, r3, r0
	strh r0, [r5, #0x34]
	ldr r1, [r7]
	movs r0, #1
	ands r0, r1
	movs r4, #0xb4
	lsls r4, r4, #1
	cmp r0, #0
	beq _080015BE
	adds r4, #0x78
_080015BE:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	orrs r4, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080015D6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8000E44
_080015D6:
	movs r0, #0x34
	ldrsh r1, [r5, r0]
	lsrs r0, r4, #1
	cmp r1, r0
	bls _080015FE
	adds r1, r5, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	ble _080015F6
	movs r0, #0
	strb r0, [r1]
_080015F6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8000CE4
_080015FE:
	movs r0, #0
	ldrsb r0, [r6, r0]
	rsbs r0, r0, #0
	movs r1, #0
	bl sub_80105FC
	b _0800172A
_0800160C:
	movs r1, #0x40
	ands r1, r4
	cmp r1, #0
	beq _08001698
	adds r0, r5, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	ble _08001628
_08001622:
	mov r1, ip
	strb r3, [r1]
	b _08001738
_08001628:
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrh r3, [r5, #0x32]
	adds r2, r3, r0
	strh r2, [r5, #0x32]
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrh r4, [r5, #0x36]
	adds r3, r4, r0
	strh r3, [r5, #0x36]
	ldr r1, [r7]
	movs r0, #4
	ands r0, r1
	movs r4, #0xf0
	cmp r0, #0
	beq _0800164A
	adds r4, #0x50
_0800164A:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	orrs r4, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08001668
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80010AC
	b _0800168A
_08001668:
	lsls r0, r3, #0x10
	cmp r0, #0
	bgt _0800168A
	adds r1, r5, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08001682
	movs r0, #0x14
	strb r0, [r1]
_08001682:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8000FAC
_0800168A:
	movs r1, #0
	ldrsb r1, [r6, r1]
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_80105FC
	b _0800172A
_08001698:
	movs r0, #0x80
	ands r4, r0
	cmp r4, #0
	beq _0800172A
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080016B4
	mov r0, ip
	strb r1, [r0]
	b _08001738
_080016B4:
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r5, #0x32]
	adds r3, r2, r0
	strh r3, [r5, #0x32]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r4, [r5, #0x36]
	adds r0, r4, r0
	strh r0, [r5, #0x36]
	ldr r2, [r7]
	movs r0, #4
	ands r0, r2
	movs r4, #0xf0
	adds r6, r1, #0
	cmp r0, #0
	beq _080016DC
	adds r4, #0x50
_080016DC:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r2, r0
	orrs r4, r2
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080016F6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80012C0
	b _0800171E
_080016F6:
	movs r0, #0x36
	ldrsh r1, [r5, r0]
	lsrs r0, r4, #1
	cmp r1, r0
	bls _0800171E
	adds r1, r5, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08001716
	movs r0, #0
	strb r0, [r1]
_08001716:
	lsls r1, r4, #1
	adds r0, r5, #0
	bl sub_80011D0
_0800171E:
	movs r1, #0
	ldrsb r1, [r6, r1]
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_80105FC
_0800172A:
	ldrh r0, [r5, #0x32]
	adds r0, #8
	mov r1, r8
	strh r0, [r1, #0x16]
	ldrh r0, [r5, #0x30]
	adds r0, #8
	strh r0, [r1, #0x14]
_08001738:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8001744
sub_8001744: @ 0x08001744
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08001764
	ands r2, r0
	cmp r2, #0xff
	bne _0800176C
	ldr r2, _08001768
	adds r1, r2, #0
	adds r1, #0x2c
	movs r0, #0xb
	strb r0, [r1]
	movs r1, #0x2a
	ldrsh r0, [r2, r1]
	bl sub_8010E14
	b _08001828
	.align 2, 0
_08001764: .4byte 0xFFFF7FFF
_08001768: .4byte gMain
_0800176C:
	ldr r0, _080017F8
	lsls r2, r2, #3
	adds r0, r2, r0
	ldr r4, [r0]
	ldr r0, _080017FC
	adds r1, r0, #0
	adds r1, #0x2c
	adds r5, r0, #0
	adds r6, r2, #0
	ldrb r1, [r1]
	cmp r1, #1
	bne _080017A0
	adds r1, r4, #0
	movs r3, #1
	adds r2, r5, #0
	adds r2, #0x48
_0800178C:
	ldm r1!, {r0}
	stm r2!, {r0}
	adds r3, #1
	cmp r3, #0xa
	bls _0800178C
	ldr r0, _080017FC
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bl sub_8010E14
_080017A0:
	ldr r2, _080017FC
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, r4, r0
	ldr r0, _080017F8
	adds r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _080017D6
	movs r0, #4
	ands r0, r1
	movs r3, #0xf0
	lsls r3, r3, #4
	cmp r0, #0
	beq _080017DA
_080017D6:
	movs r3, #0xf0
	lsls r3, r3, #5
_080017DA:
	movs r2, #0x80
	lsls r2, r2, #0x18
	ands r2, r1
	cmp r2, #0
	beq _080017E6
	lsrs r3, r3, #1
_080017E6:
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _08001810
	cmp r2, #0
	beq _08001800
	adds r4, #0x20
	b _08001806
	.align 2, 0
_080017F8: .4byte gBackgroundTable
_080017FC: .4byte gMain
_08001800:
	movs r0, #0x80
	lsls r0, r0, #2
	adds r4, r4, r0
_08001806:
	ldr r0, _0800180C
	b _08001814
	.align 2, 0
_0800180C: .4byte gUnknown_0202CFC0
_08001810:
	ldr r0, [r5, #0x40]
	adds r0, r0, r3
_08001814:
	str r0, [r5, #0x40]
	ldr r1, [r5, #0x40]
	adds r0, r4, #0
	bl LZ77UnCompWram
	adds r1, r5, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08001828:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8001830
sub_8001830: @ 0x08001830
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r6, _08001890
	movs r1, #0x2a
	ldrsh r0, [r6, r1]
	bl sub_8010E14
	ldr r0, _08001894
	ands r4, r0
	cmp r4, #0xff
	beq _080018E0
	ldr r0, _08001898
	lsls r1, r4, #3
	adds r0, r1, r0
	ldr r2, [r0]
	adds r3, r2, #0
	movs r5, #1
	mov r8, r1
	adds r1, r6, #0
	adds r1, #0x48
_0800185C:
	ldm r3!, {r0}
	stm r1!, {r0}
	adds r5, #1
	cmp r5, #0xa
	bls _0800185C
	ldr r0, _08001898
	adds r0, #4
	add r0, r8
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08001882
	movs r0, #4
	ands r0, r1
	movs r7, #0xf0
	lsls r7, r7, #4
	cmp r0, #0
	beq _08001886
_08001882:
	movs r7, #0xf0
	lsls r7, r7, #5
_08001886:
	cmp r1, #0
	bge _0800189C
	lsrs r7, r7, #1
	adds r2, #0x20
	b _080018A2
	.align 2, 0
_08001890: .4byte gMain
_08001894: .4byte 0xFFFF7FFF
_08001898: .4byte gBackgroundTable
_0800189C:
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r2, r3
_080018A2:
	ldr r4, _080018EC
	ldr r0, [r4, #0x48]
	adds r2, r2, r0
	ldr r1, _080018F0
	str r1, [r4, #0x40]
	adds r0, r2, #0
	bl LZ77UnCompWram
	movs r5, #2
	ldr r0, _080018F4
	mov r1, r8
	adds r6, r1, r0
	movs r3, #0x4c
	adds r3, r3, r4
	mov r8, r3
_080018C0:
	ldr r1, [r4, #0x40]
	adds r1, r1, r7
	str r1, [r4, #0x40]
	ldr r2, [r6]
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r0}
	adds r2, r2, r0
	adds r0, r2, #0
	bl LZ77UnCompWram
	adds r5, #1
	cmp r5, #0xa
	bls _080018C0
_080018E0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080018EC: .4byte gMain
_080018F0: .4byte gUnknown_0202CFC0
_080018F4: .4byte gBackgroundTable

	THUMB_FUNC_START sub_80018F8
sub_80018F8: @ 0x080018F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08001A54
	ldr r2, _08001A58
	ldr r3, _08001A5C
	ldr r1, _08001A60
	str r3, [r1]
	ldr r0, _08001A64
	str r0, [r1, #4]
	ldr r0, _08001A68
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08001A6C
	adds r0, r1, #0
	ldrh r3, [r2, #6]
	ands r0, r3
	strh r0, [r2, #6]
	ldr r0, _08001A70
	ldrh r7, [r0]
	ands r1, r7
	strh r1, [r0]
	ldr r3, _08001A74
	adds r2, r3, #0
	movs r7, #0xf0
	lsls r7, r7, #3
	movs r6, #1
	adds r5, r4, #0
	adds r5, #0x44
	adds r1, r4, #0
	adds r1, #0x48
_0800193C:
	ldm r2!, {r0}
	stm r1!, {r0}
	adds r6, #1
	cmp r6, #0xa
	bls _0800193C
	adds r0, r3, #0
	adds r0, #0x20
	ldr r1, [r4, #0x48]
	adds r3, r0, r1
	ldr r1, _08001A78
	str r1, [r4, #0x40]
	adds r0, r3, #0
	bl LZ77UnCompWram
	movs r6, #2
	adds r5, #8
_0800195C:
	ldr r1, [r4, #0x40]
	adds r1, r1, r7
	str r1, [r4, #0x40]
	ldm r5!, {r0}
	ldr r2, _08001A74
	adds r3, r0, r2
	adds r0, r3, #0
	bl LZ77UnCompWram
	adds r6, #1
	cmp r6, #0xa
	bls _0800195C
	ldr r3, _08001A7C
	ldr r1, _08001A60
	str r3, [r1]
	ldr r0, _08001A80
	str r0, [r1, #4]
	ldr r0, _08001A68
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08001A58
	ldr r1, _08001A84
	strh r1, [r0, #4]
	adds r0, #0x4a
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	ldrh r7, [r0]
	orrs r1, r7
	strh r1, [r0]
	movs r6, #0
	mov r8, r6
	ldr r0, _08001A88
	mov ip, r0
	mov sl, r6
	mov sb, r6
_080019A4:
	movs r5, #0
	mov r1, sl
	str r1, [sp]
	mov r2, sb
	lsls r0, r2, #1
	adds r4, r0, #0
	adds r4, #0x80
	mov r3, r8
	adds r3, #1
	mov r2, r8
	adds r2, #0x21
_080019BA:
	lsls r1, r2, #1
	ldr r7, _08001A8C
	adds r1, r1, r7
	ldr r7, [sp]
	adds r0, r5, r7
	movs r7, #0x80
	lsls r7, r7, #6
	orrs r0, r7
	strh r0, [r1]
	lsls r1, r3, #1
	ldr r0, _08001A88
	adds r1, r1, r0
	adds r0, r4, #0
	movs r7, #0xc0
	lsls r7, r7, #6
	orrs r0, r7
	strh r0, [r1]
	adds r4, #1
	adds r3, #1
	adds r2, #1
	adds r5, #1
	cmp r5, #0x1d
	bls _080019BA
	movs r0, #0xc2
	lsls r0, r0, #6
	mov r1, ip
	strh r0, [r1, #0x3e]
	strh r0, [r1]
	movs r2, #0x20
	add r8, r2
	movs r3, #0x40
	add ip, r3
	movs r7, #0x1e
	add sl, r7
	movs r0, #0xf
	add sb, r0
	adds r6, #1
	cmp r6, #0x13
	bls _080019A4
	movs r6, #0x14
	ldr r3, _08001A8C
	movs r2, #0x80
	lsls r2, r2, #6
_08001A10:
	movs r5, #0
	adds r1, r6, #1
	lsls r0, r6, #6
	adds r0, #0x42
	adds r0, r0, r3
_08001A1A:
	strh r2, [r0]
	adds r0, #2
	adds r5, #1
	cmp r5, #0x1d
	bls _08001A1A
	adds r6, r1, #0
	cmp r6, #0x18
	bls _08001A10
	ldr r1, _08001A60
	ldr r0, _08001A90
	str r0, [r1]
	ldr r0, _08001A94
	str r0, [r1, #4]
	ldr r0, _08001A98
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08001A54
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001A54: .4byte gMain
_08001A58: .4byte gLCDIORegisters
_08001A5C: .4byte gUnknown_083698B8
_08001A60: .4byte 0x040000D4
_08001A64: .4byte 0x05000040
_08001A68: .4byte 0x80000010
_08001A6C: .4byte 0x0000FF7F
_08001A70: .4byte 0x0400000E
_08001A74: .4byte gUnknown_083899C4
_08001A78: .4byte gUnknown_02031FC0
_08001A7C: .4byte gUnknown_083899EC
_08001A80: .4byte 0x05000060
_08001A84: .4byte 0x00003E08
_08001A88: .4byte gBG2MapBuffer
_08001A8C: .4byte gBG3MapBuffer
_08001A90: .4byte gUnknown_0202CFC0
_08001A94: .4byte 0x06004000
_08001A98: .4byte 0x80004D80

	THUMB_FUNC_START sub_8001A9C
sub_8001A9C: @ 0x08001A9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08001AC0
	mov r8, r0
	ldr r1, _08001AC4
	mov sb, r1
	adds r0, r4, #0
	subs r0, #0x4a
	cmp r0, #1
	bhi _08001AC8
	bl sub_80018F8
	b _08002088
	.align 2, 0
_08001AC0: .4byte gMain
_08001AC4: .4byte gLCDIORegisters
_08001AC8:
	movs r0, #0
	bl sub_8010C4C
	bl MoveSpritesToOAM
	adds r5, r4, #0
	ldr r4, _08001B30
	ands r4, r5
	movs r0, #0
	movs r2, #0
	movs r1, #8
	mov r3, sb
	strh r1, [r3, #0x16]
	strh r1, [r3, #0x14]
	mov r1, r8
	adds r1, #0x2e
	strb r0, [r1]
	mov r6, r8
	strh r2, [r6, #0x34]
	strh r2, [r6, #0x36]
	strh r4, [r6, #0x28]
	adds r7, r1, #0
	cmp r4, #0xff
	bne _08001B58
	ldr r4, _08001B34
	ldr r6, _08001B38
	ldr r1, _08001B3C
	str r4, [r1]
	str r6, [r1, #4]
	ldr r0, _08001B40
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r2, [r0]
	str r0, [r1]
	ldr r0, _08001B44
	str r0, [r1, #4]
	ldr r0, _08001B48
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r3, _08001B4C
	adds r0, r3, #0
	strh r0, [r2]
	str r2, [r1]
	ldr r0, _08001B50
	str r0, [r1, #4]
	ldr r0, _08001B54
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08002088
	.align 2, 0
_08001B30: .4byte 0xFFFF7FFF
_08001B34: .4byte gUnknown_08014570
_08001B38: .4byte gBG3MapBuffer
_08001B3C: .4byte 0x040000D4
_08001B40: .4byte 0x800002C0
_08001B44: .4byte 0x05000040
_08001B48: .4byte 0x810000E0
_08001B4C: .4byte 0x00002222
_08001B50: .4byte 0x06004000
_08001B54: .4byte 0x81004B00
_08001B58:
	ldr r1, _08001BF8
	lsls r2, r4, #3
	adds r0, r1, #4
	adds r0, r2, r0
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r3
	mov ip, r1
	cmp r0, #0
	beq _08001BD0
	ldr r4, _08001BFC
	ldr r6, _08001C00
	ldr r0, _08001C04
	str r4, [r0]
	str r6, [r0, #4]
	ldr r1, _08001C08
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r4, #0x96
	lsls r4, r4, #2
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r6, r0, #0
	ldr r1, _08001C00
	adds r1, #0x40
_08001B8E:
	adds r0, r4, #0
	orrs r0, r6
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #1
	adds r4, #1
	cmp r3, #0x13
	bls _08001B8E
	movs r3, #0
	ldr r0, _08001C00
	movs r1, #0x80
	lsls r1, r1, #6
	adds r6, r1, #0
	adds r1, r0, #0
	adds r1, #0x7e
_08001BAC:
	adds r0, r4, #0
	orrs r0, r6
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #1
	adds r4, #1
	cmp r3, #0x13
	bls _08001BAC
	movs r0, #1
	strb r0, [r7]
	ldr r1, _08001C04
	ldr r0, _08001C0C
	str r0, [r1]
	ldr r0, _08001C10
	str r0, [r1, #4]
	ldr r0, _08001C14
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08001BD0:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08001C4E
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	ldr r5, [r0]
	movs r1, #0x40
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08001C18
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r5, r0
	movs r0, #0x80
	orrs r5, r0
	b _08001C56
	.align 2, 0
_08001BF8: .4byte gBackgroundTable
_08001BFC: .4byte gUnknown_08014570
_08001C00: .4byte gBG3MapBuffer
_08001C04: .4byte 0x040000D4
_08001C08: .4byte 0x800002C0
_08001C0C: .4byte gUnknown_08427608
_08001C10: .4byte gUnknown_02031AC0
_08001C14: .4byte 0x80000280
_08001C18:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _08001C26
	movs r0, #0x81
	rsbs r0, r0, #0
	b _08001C48
_08001C26:
	movs r1, #0x10
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08001C3C
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r5, r0
	movs r0, #0x20
	orrs r5, r0
	b _08001C56
_08001C3C:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _08001C56
	movs r0, #0x21
	rsbs r0, r0, #0
_08001C48:
	ands r5, r0
	orrs r5, r1
	b _08001C56
_08001C4E:
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	ldr r5, [r0]
_08001C56:
	mov r3, ip
	adds r0, r2, r3
	ldr r0, [r0]
	adds r7, r0, #0
	adds r7, #0x28
	cmp r5, #0
	bge _08001D28
	movs r6, #1
	mov sl, r6
	ldr r0, _08001CD4
	mov r1, sb
	ldrh r1, [r1, #6]
	ands r0, r1
	mov r3, sb
	strh r0, [r3, #6]
	ldr r3, _08001CD8
	str r7, [r3]
	ldr r0, _08001CDC
	str r0, [r3, #4]
	ldr r7, _08001CE0
	str r7, [r3, #8]
	ldr r0, [r3, #8]
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	beq _08001D0C
	ldr r4, _08001CE4
	ldr r6, _08001CE8
	str r4, [r3]
	str r6, [r3, #4]
	str r7, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _08001CEC
	adds r6, #0x20
	str r4, [r3]
	str r6, [r3, #4]
	str r7, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _08001CF0
	ldr r6, _08001CF4
	str r4, [r3]
	str r6, [r3, #4]
	ldr r0, _08001CF8
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _08001CFC
	ldr r6, _08001D00
	str r4, [r3]
	str r6, [r3, #4]
	ldr r0, _08001D04
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _08001D08
	mov r6, sb
	ldrh r0, [r6, #4]
	strh r0, [r1]
	b _08001D48
	.align 2, 0
_08001CD4: .4byte 0x0000FF7F
_08001CD8: .4byte 0x040000D4
_08001CDC: .4byte 0x05000040
_08001CE0: .4byte 0x80000010
_08001CE4: .4byte gUnknown_08360834
_08001CE8: .4byte 0x050001C0
_08001CEC: .4byte gUnknown_08362524
_08001CF0: .4byte gUnknown_02031AC0
_08001CF4: .4byte 0x06008B00
_08001CF8: .4byte 0x80002800
_08001CFC: .4byte gBG2MapBuffer
_08001D00: .4byte 0x0600F000
_08001D04: .4byte 0x800002C0
_08001D08: .4byte 0x0400000C
_08001D0C:
	mov r0, sp
	strh r1, [r0]
	str r0, [r3]
	ldr r0, _08001D20
	str r0, [r3, #4]
	ldr r0, _08001D24
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	b _08001D48
	.align 2, 0
_08001D20: .4byte 0x06008EC0
_08001D24: .4byte 0x81000010
_08001D28:
	movs r0, #0
	mov sl, r0
	movs r0, #0x80
	mov r1, sb
	ldrh r1, [r1, #6]
	orrs r0, r1
	mov r2, sb
	strh r0, [r2, #6]
	ldr r1, _08001DBC
	str r7, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08001DC0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08001D48:
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r3, _08001DC4
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #0xe
	mov r6, sb
	ldrh r0, [r6, #6]
	strh r0, [r1]
	adds r1, #0xe
	ldr r0, [r6, #0x14]
	str r0, [r1]
	movs r0, #0
	mov sb, r0
	mov r1, r8
	strh r5, [r1, #0x3a]
	ldr r7, _08001DC8
	movs r0, #0xf
	ands r0, r5
	cmp r0, #0
	bne _08001DE4
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r5
	cmp r0, #0
	bne _08001D8C
	ldr r4, _08001DCC
	ldr r6, _08001DD0
	ldr r0, _08001DBC
	str r4, [r0]
	str r6, [r0, #4]
	ldr r1, _08001DD4
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08001D8C:
	ldr r4, _08001DD0
	ldr r6, _08001DD8
	ldr r2, _08001DBC
	str r4, [r2]
	str r6, [r2, #4]
	ldr r0, _08001DDC
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r7, [r2]
	ldr r0, _08001DE0
	str r0, [r2, #4]
	movs r0, #0x96
	lsls r0, r0, #8
	mov r3, sl
	asrs r0, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08002088
	.align 2, 0
_08001DBC: .4byte 0x040000D4
_08001DC0: .4byte 0x80000100
_08001DC4: .4byte gLCDIORegisters+0x4A
_08001DC8: .4byte gUnknown_0202CFC0
_08001DCC: .4byte gUnknown_08014570
_08001DD0: .4byte gBG3MapBuffer
_08001DD4: .4byte 0x800002C0
_08001DD8: .4byte 0x0600F800
_08001DDC: .4byte 0x80000400
_08001DE0: .4byte 0x06004000
_08001DE4:
	movs r0, #0xc
	ands r0, r5
	cmp r0, #0
	bne _08001DEE
	b _08001F2C
_08001DEE:
	movs r3, #0x40
	ands r3, r5
	cmp r3, #0
	beq _08001E98
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08001E18
	movs r0, #0x96
	lsls r0, r0, #8
	mov r5, sl
	asrs r0, r5
	adds r7, r0, r7
	mov r1, r8
	adds r1, #0x3e
	movs r0, #0x12
	strb r0, [r1]
	movs r0, #0xa0
	mov r6, r8
	strh r0, [r6, #0x36]
	b _08001E30
_08001E18:
	movs r0, #0x96
	lsls r0, r0, #7
	mov r1, sl
	asrs r0, r1
	subs r7, r7, r0
	mov r1, r8
	adds r1, #0x3e
	movs r0, #8
	strb r0, [r1]
	movs r0, #0x50
	mov r2, r8
	strh r0, [r2, #0x36]
_08001E30:
	ldr r3, _08001E8C
	str r7, [r3]
	ldr r5, _08001E90
	str r5, [r3, #4]
	movs r2, #0x96
	lsls r2, r2, #8
	mov r6, sl
	asrs r2, r6
	lsrs r0, r2, #0x1f
	adds r0, r2, r0
	asrs r0, r0, #1
	movs r4, #0x80
	lsls r4, r4, #0x18
	orrs r0, r4
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #7
	asrs r0, r6
	ldr r1, _08001E94
	adds r7, r0, r1
	movs r0, #0xf0
	lsls r0, r0, #3
	asrs r0, r6
	adds r7, r7, r0
	str r7, [r3]
	adds r2, r2, r5
	str r2, [r3, #4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	orrs r0, r4
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, r8
	adds r1, #0x3f
	movs r0, #0x13
	strb r0, [r1]
	subs r1, #0x10
	movs r0, #0x26
	b _08001EEA
	.align 2, 0
_08001E8C: .4byte 0x040000D4
_08001E90: .4byte 0x06004000
_08001E94: .4byte gUnknown_0202CFC0
_08001E98:
	ldr r2, _08001ED8
	str r7, [r2]
	ldr r0, _08001EDC
	str r0, [r2, #4]
	ldr r0, _08001EE0
	mov r6, sl
	asrs r0, r6
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, r8
	strh r3, [r0, #0x36]
	adds r0, #0x3f
	mov r1, sb
	strb r1, [r0]
	mov r1, r8
	adds r1, #0x3e
	movs r0, #0x15
	strb r0, [r1]
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08001EE4
	subs r1, #0xf
	movs r0, #1
	b _08001EEA
	.align 2, 0
_08001ED8: .4byte 0x040000D4
_08001EDC: .4byte 0x06004000
_08001EE0: .4byte 0x00009D80
_08001EE4:
	mov r1, r8
	adds r1, #0x2f
	movs r0, #0x20
_08001EEA:
	strb r0, [r1]
	movs r3, #0
	ldr r7, _08001F28
	movs r2, #0x96
	lsls r2, r2, #2
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r5, r0, #0
_08001EFC:
	movs r4, #0
	adds r2, r3, #1
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #5
	adds r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
_08001F10:
	adds r0, r4, r6
	orrs r0, r5
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1d
	bls _08001F10
	adds r3, r2, #0
	cmp r3, #1
	bls _08001EFC
	b _08002078
	.align 2, 0
_08001F28: .4byte gBG3MapBuffer
_08001F2C:
	movs r6, #1
	adds r2, r5, #0
	ands r2, r6
	movs r4, #0xb4
	lsls r4, r4, #4
	cmp r2, #0
	beq _08001F3E
	movs r4, #0xf0
	lsls r4, r4, #4
_08001F3E:
	movs r3, #0x10
	ands r3, r5
	cmp r3, #0
	beq _08001FBC
	mov r1, r8
	adds r1, #0x3f
	movs r0, #0x1e
	strb r0, [r1]
	subs r1, #0x10
	movs r0, #0x3a
	strb r0, [r1]
	cmp r2, #0
	beq _08001F6C
	movs r2, #0xe8
	lsls r2, r2, #3
	adds r7, r7, r2
	adds r1, #0xf
	movs r0, #0x1c
	strb r0, [r1]
	movs r0, #0xf0
	mov r3, r8
	strh r0, [r3, #0x34]
	b _08001F80
_08001F6C:
	movs r5, #0xe0
	lsls r5, r5, #2
	adds r7, r7, r5
	mov r1, r8
	adds r1, #0x3e
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x78
	mov r6, r8
	strh r0, [r6, #0x34]
_08001F80:
	movs r3, #0
	mov r0, sl
	lsrs r4, r0
	mov ip, r4
	ldr r1, _08001FB8
	mov r8, r1
	movs r5, #0
_08001F8E:
	movs r4, #0
	adds r2, r5, #0
	lsls r0, r3, #6
	adds r0, #0x40
	mov r6, r8
	adds r1, r0, r6
_08001F9A:
	adds r0, r4, r2
	movs r6, #0x80
	lsls r6, r6, #6
	orrs r0, r6
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1e
	bls _08001F9A
	adds r5, #0x1f
	adds r3, #1
	cmp r3, #0x13
	bls _08001F8E
	b _08002026
	.align 2, 0
_08001FB8: .4byte gBG3MapBuffer
_08001FBC:
	movs r0, #0x20
	ands r0, r5
	mov ip, r4
	mov r1, ip
	mov r5, sl
	lsrs r1, r5
	mov ip, r1
	cmp r0, #0
	beq _08002026
	mov r1, r8
	adds r1, #0x3e
	movs r0, #0x1f
	strb r0, [r1]
	mov r0, r8
	strh r3, [r0, #0x34]
	adds r0, #0x3f
	mov r1, sb
	strb r1, [r0]
	cmp r2, #0
	beq _08001FEA
	subs r0, #0x10
	strb r6, [r0]
	b _08001FF2
_08001FEA:
	mov r1, r8
	adds r1, #0x2f
	movs r0, #0x2f
	strb r0, [r1]
_08001FF2:
	movs r3, #0
	mov r2, sl
	lsrs r4, r2
	mov ip, r4
	ldr r5, _08002098
	mov r8, r5
	movs r5, #0
_08002000:
	movs r4, #0
	adds r2, r5, #0
	lsls r0, r3, #6
	adds r0, #0x42
	mov r6, r8
	adds r1, r0, r6
_0800200C:
	adds r0, r4, r2
	movs r6, #0x80
	lsls r6, r6, #6
	orrs r0, r6
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1e
	bls _0800200C
	adds r5, #0x1f
	adds r3, #1
	cmp r3, #0x13
	bls _08002000
_08002026:
	movs r3, #0
	ldr r5, _08002098
	ldr r2, _0800209C
	movs r1, #0
_0800202E:
	movs r4, #0
	lsls r0, r1, #1
	adds r0, r0, r5
_08002034:
	strh r2, [r0]
	adds r0, #2
	adds r4, #1
	cmp r4, #0x1f
	bls _08002034
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r3, #1
	cmp r3, #1
	bls _0800202E
	ldr r5, _080020A0
	movs r3, #0
	ldr r2, _080020A4
	movs r4, #0xf8
	lsls r4, r4, #3
	mov r1, sl
	asrs r4, r1
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r1, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	mov r6, ip
_08002066:
	str r7, [r2]
	str r5, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r7, r7, r6
	adds r5, r5, r4
	adds r3, #1
	cmp r3, #0x13
	bls _08002066
_08002078:
	ldr r4, _08002098
	ldr r6, _080020A8
	ldr r0, _080020A4
	str r4, [r0]
	str r6, [r0, #4]
	ldr r1, _080020AC
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08002088:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002098: .4byte gBG3MapBuffer
_0800209C: .4byte 0x00002276
_080020A0: .4byte 0x06004000
_080020A4: .4byte 0x040000D4
_080020A8: .4byte 0x0600F800
_080020AC: .4byte 0x80000400

	THUMB_FUNC_START sub_80020B0
sub_80020B0: @ 0x080020B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r7, _08002150
	ldrh r1, [r7, #0x2a]
	str r1, [sp]
	ldr r2, _08002154
	ldrb r2, [r2]
	mov r8, r2
	ldrh r3, [r7, #0x34]
	mov sl, r3
	mov r1, sl
	str r1, [sp, #4]
	ldrh r2, [r7, #0x36]
	str r2, [sp, #0xc]
	str r2, [sp, #8]
	adds r4, r7, #0
	adds r4, #0x3c
	ldrb r6, [r4]
	movs r3, #0x3d
	adds r3, r3, r7
	mov sb, r3
	ldrb r5, [r3]
	bl sub_8001A9C
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r7, #0x2a]
	mov r2, r8
	ldr r1, _08002154
	strb r2, [r1]
	strb r6, [r4]
	mov r3, sb
	strb r5, [r3]
	ldrh r0, [r7, #0x34]
	mov r1, sl
	subs r3, r0, r1
	strh r3, [r7, #0x30]
	ldrh r2, [r7, #0x36]
	ldr r0, [sp, #0xc]
	subs r4, r2, r0
	strh r4, [r7, #0x32]
	ldr r1, _08002158
	ldrh r2, [r7, #0x28]
	lsls r0, r2, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r2
	cmp r0, #0
	bne _08002212
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r2, r0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _0800216C
	mov r3, sl
	strh r3, [r7, #0x34]
	movs r3, #0x30
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	strh r0, [r7, #0x30]
	ldrh r3, [r7, #0x28]
	lsls r0, r3, #3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800215C
	movs r0, #0xf0
	lsls r0, r0, #1
	b _08002160
	.align 2, 0
_08002150: .4byte gMain
_08002154: .4byte gMain+0x2E
_08002158: .4byte gBackgroundTable
_0800215C:
	movs r0, #0xb4
	lsls r0, r0, #1
_08002160:
	orrs r2, r0
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_8000B7C
	b _08002212
_0800216C:
	cmp r0, #0
	bge _080021A4
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r7, #0x34]
	movs r3, #0x30
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	strh r0, [r7, #0x30]
	ldrh r3, [r7, #0x28]
	lsls r0, r3, #3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08002194
	movs r0, #0xf0
	lsls r0, r0, #1
	b _08002198
_08002194:
	movs r0, #0xb4
	lsls r0, r0, #1
_08002198:
	orrs r2, r0
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_8000E44
	b _08002212
_080021A4:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _080021DE
	mov r0, sp
	ldrh r0, [r0, #0xc]
	strh r0, [r7, #0x36]
	movs r3, #0x32
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	strh r0, [r7, #0x32]
	ldrh r3, [r7, #0x28]
	lsls r0, r3, #3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080021D0
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080021D2
_080021D0:
	movs r0, #0xf0
_080021D2:
	orrs r2, r0
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_80010AC
	b _08002212
_080021DE:
	cmp r0, #0
	bge _08002212
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r7, #0x36]
	movs r3, #0x32
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	strh r0, [r7, #0x32]
	ldrh r3, [r7, #0x28]
	lsls r0, r3, #3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08002206
	movs r0, #0xa0
	lsls r0, r0, #1
	b _08002208
_08002206:
	movs r0, #0xf0
_08002208:
	orrs r2, r0
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_80012C0
_08002212:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START GetBGControlBits
GetBGControlBits: @ 0x08002224
	ldr r1, _08002230
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08002230: .4byte gBackgroundTable

	THUMB_FUNC_START GetBGPalettePtr
GetBGPalettePtr: @ 0x08002234
	ldr r1, _08002240
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x28
	bx lr
	.align 2, 0
_08002240: .4byte gBackgroundTable

	THUMB_FUNC_START sub_8002244
sub_8002244: @ 0x08002244
	push {r4, r5, r6, r7, lr}
	ldr r2, _08002258
	cmp r0, #1
	beq _080022A0
	cmp r0, #1
	blo _0800225C
	cmp r0, #2
	beq _080022BE
	b _08002312
	.align 2, 0
_08002258: .4byte gScriptContext
_0800225C:
	ldr r1, _08002294
	movs r3, #0
	ldr r4, _08002298
	adds r7, r2, #0
	adds r7, #0x38
	adds r5, r2, #0
	adds r5, #0x34
	ldr r2, _0800229C
_0800226C:
	adds r0, r3, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	cmp r3, r4
	bls _0800226C
	movs r0, #0
	strb r0, [r7]
	ldrb r2, [r5]
	movs r0, #0x7f
	ands r0, r2
	movs r1, #0x80
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_80028B4
	b _08002312
	.align 2, 0
_08002294: .4byte gBG1MapBuffer
_08002298: .4byte 0x000002BF
_0800229C: .4byte gUnknown_08013B70
_080022A0:
	adds r1, r2, #0
	adds r1, #0x3a
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe
	strb r0, [r1]
	subs r1, #3
	movs r0, #2
	strb r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_80028B4
	b _08002312
_080022BE:
	ldr r1, _08002318
	movs r3, #0
	ldr r4, _0800231C
	adds r7, r2, #0
	adds r7, #0x38
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r5, r1, r0
	adds r0, #0x80
	adds r6, r1, r0
	ldr r2, _08002320
_080022D4:
	adds r0, r3, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	cmp r3, r4
	bls _080022D4
	adds r1, r5, #0
	movs r3, #0xe0
	lsls r3, r3, #1
	ldr r2, _08002324
	movs r0, #0
_080022EC:
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	cmp r3, r2
	bls _080022EC
	adds r1, r6, #0
	movs r3, #0xe0
	lsls r3, r3, #1
	ldr r4, _08002328
	ldr r2, _08002320
_08002300:
	adds r0, r3, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	cmp r3, r4
	bls _08002300
	movs r0, #0
	strb r0, [r7]
_08002312:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002318: .4byte gBG1MapBuffer
_0800231C: .4byte 0x000001BF
_08002320: .4byte gUnknown_08013B70
_08002324: .4byte 0x0000021F
_08002328: .4byte 0x000001DF

	THUMB_FUNC_START sub_800232C
sub_800232C: @ 0x0800232C
	push {r4, r5, lr}
	ldr r0, _08002348
	mov ip, r0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #4
	bls _0800233C
	b _08002438
_0800233C:
	lsls r0, r0, #2
	ldr r1, _0800234C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002348: .4byte gScriptContext
_0800234C: .4byte _08002350
_08002350: @ jump table
	.4byte _08002438 @ case 0
	.4byte _08002438 @ case 1
	.4byte _08002364 @ case 2
	.4byte _080023E4 @ case 3
	.4byte _08002414 @ case 4
_08002364:
	mov r1, ip
	adds r1, #0x3a
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08002438
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	lsls r2, r0, #5
	movs r4, #0
	adds r5, r1, #0
	ldr r1, _080023DC
	lsls r0, r0, #6
	adds r3, r0, r1
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #1
	adds r1, r0, r1
_08002392:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r3, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1f
	bls _08002392
	movs r4, #0
	ldr r0, _080023DC
	adds r1, r2, #0
	adds r1, #0x20
	lsls r2, r2, #1
	adds r2, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r0
_080023B0:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r4, #1
	cmp r4, #0x1f
	bls _080023B0
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08002438
	ldr r0, _080023E0
	movs r1, #1
	strb r1, [r0, #0x15]
	mov r0, ip
	adds r0, #0x38
	strb r2, [r0]
	b _08002438
	.align 2, 0
_080023DC: .4byte gBG1MapBuffer
_080023E0: .4byte gMain
_080023E4:
	ldr r2, _08002408
	ldrh r0, [r2, #0xe]
	adds r0, #4
	strh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	ldr r1, _0800240C
	cmp r0, r1
	bhi _08002438
	ldr r1, _08002410
	movs r0, #1
	strb r0, [r1, #0x14]
	strb r0, [r1, #0x15]
	movs r0, #0
	strh r0, [r2, #0xe]
	mov r1, ip
	adds r1, #0x38
	b _08002436
	.align 2, 0
_08002408: .4byte gLCDIORegisters
_0800240C: .4byte 0xFFAF0000
_08002410: .4byte gMain
_08002414:
	ldr r2, _08002440
	ldrh r0, [r2, #0xe]
	subs r0, #4
	strh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	ldr r1, _08002444
	cmp r0, r1
	bhi _08002438
	adds r1, r2, #0
	adds r1, #0x4a
	ldr r0, _08002448
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	mov r1, ip
	adds r1, #0x38
	movs r0, #1
_08002436:
	strb r0, [r1]
_08002438:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002440: .4byte gLCDIORegisters
_08002444: .4byte 0xFFAF0000
_08002448: .4byte 0x0000FDFF

	THUMB_FUNC_START sub_800244C
sub_800244C: @ 0x0800244C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08002490
	movs r0, #0
	strb r0, [r1, #0x14]
	strb r0, [r1, #0x15]
	movs r1, #0
	bl sub_80028B4
	cmp r4, #0
	beq _080024AC
	ldr r0, _08002494
	adds r0, #0x38
	movs r1, #3
	strb r1, [r0]
	ldr r0, _08002498
	strb r1, [r0, #0xc]
	ldr r0, _0800249C
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	ldr r0, _080024A0
	ldr r2, _080024A4
	adds r1, r0, r2
	movs r2, #9
	strh r2, [r1]
	ldr r1, _080024A8
	adds r0, r0, r1
	strh r2, [r0]
	b _080024BA
	.align 2, 0
_08002490: .4byte gMain
_08002494: .4byte gScriptContext
_08002498: .4byte gUnknown_03003A50
_0800249C: .4byte gLCDIORegisters
_080024A0: .4byte gBG1MapBuffer
_080024A4: .4byte 0x000004DC
_080024A8: .4byte 0x000004DE
_080024AC:
	ldr r0, _080024C0
	adds r0, #0x38
	movs r1, #4
	strb r1, [r0]
	ldr r1, _080024C4
	movs r0, #1
	strb r0, [r1, #0xc]
_080024BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080024C0: .4byte gScriptContext
_080024C4: .4byte gUnknown_03003A50

	THUMB_FUNC_START sub_80024C8
sub_80024C8: @ 0x080024C8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r2, _080024DC
	cmp r3, #4
	bls _080024E0
	movs r0, #1
	strb r0, [r2, #0xa]
	subs r3, #4
	b _080024E4
	.align 2, 0
_080024DC: .4byte gUnknown_03002840
_080024E0:
	movs r0, #0
	strb r0, [r2, #0xa]
_080024E4:
	movs r0, #0
	strb r3, [r2, #3]
	strb r0, [r2]
	ldrh r0, [r2, #4]
	strh r0, [r2, #6]
	movs r0, #0xfb
	ldrb r1, [r2, #0xc]
	ands r0, r1
	strb r0, [r2, #0xc]
	cmp r3, #4
	bhi _08002540
	lsls r0, r3, #2
	ldr r1, _08002504
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002504: .4byte _08002508
_08002508: @ jump table
	.4byte _08002540 @ case 0
	.4byte _0800251C @ case 1
	.4byte _0800252A @ case 2
	.4byte _08002538 @ case 3
	.4byte _0800253C @ case 4
_0800251C:
	movs r0, #0
	strb r4, [r2, #1]
	strb r0, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #4]
	b _08002540
_0800252A:
	rsbs r0, r4, #0
	strb r0, [r2, #1]
	movs r0, #0x1f
	strb r0, [r2, #2]
	adds r0, #0xf1
	strh r0, [r2, #4]
	b _08002540
_08002538:
	strb r4, [r2, #1]
	b _08002540
_0800253C:
	rsbs r0, r4, #0
	strb r0, [r2, #1]
_08002540:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START nullsub_1
nullsub_1: @ 0x08002548
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800254C
sub_800254C: @ 0x0800254C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrb r0, [r5]
	ldrb r2, [r5, #1]
	adds r1, r0, r2
	strb r1, [r5]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r3, [r5, #4]
	subs r0, r3, r0
	ldr r2, _08002600
	ands r0, r2
	strh r0, [r5, #4]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r6, [r5, #6]
	subs r0, r6, r0
	ands r0, r2
	strh r0, [r5, #6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #7
	ble _0800264A
	movs r0, #0
	mov sl, r0
	ldr r2, _08002604
	mov ip, r2
	ldr r3, _08002608
	mov sb, r3
_0800258E:
	ldrb r0, [r5]
	subs r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	adds r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0x1f
	bne _080025AC
	mov r6, sl
	strb r6, [r5]
	strb r6, [r5, #1]
	movs r0, #8
	strh r0, [r5, #4]
_080025AC:
	movs r3, #2
	ldr r1, _0800260C
	ldr r0, _08002610
	mov r8, r0
	ldr r7, _08002614
	mov r2, ip
	adds r2, #0x80
	ldr r6, _08002618
	ldr r4, _0800261C
_080025BE:
	str r2, [r1]
	mov r0, r8
	str r0, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	str r7, [r1]
	str r2, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #0x40
	adds r3, #1
	cmp r3, #0xb
	bls _080025BE
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08002624
	movs r3, #0x40
	mov r2, sb
	ldr r4, _08002620
	mov r1, ip
	adds r1, #0xbe
_080025E8:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _080025E8
	b _08002642
	.align 2, 0
_08002600: .4byte 0x000001FF
_08002604: .4byte gBG2MapBuffer
_08002608: .4byte 0x0000017F
_0800260C: .4byte 0x040000D4
_08002610: .4byte gBG3MapBufferCopy
_08002614: .4byte gBG3MapBufferCopy+0x2
_08002618: .4byte 0x80000020
_0800261C: .4byte 0x8000001F
_08002620: .4byte gUnknown_08014270
_08002624:
	movs r3, #0x40
	mov r2, sb
	ldr r4, _080026D8
	mov r1, ip
	adds r1, #0xbe
_0800262E:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _0800262E
_08002642:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bgt _0800258E
_0800264A:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #8
	rsbs r2, r2, #0
	cmp r0, r2
	bgt _08002724
	ldr r0, _080026DC
	mov sb, r0
	ldr r2, _080026D8
	mov sl, r2
	ldr r3, _080026E0
	mov ip, r3
_08002664:
	adds r0, r1, #0
	adds r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	subs r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0
	bne _08002680
	strb r1, [r5]
	strb r1, [r5, #1]
	movs r0, #8
	strh r0, [r5, #4]
_08002680:
	movs r3, #2
	ldr r1, _080026E4
	ldr r6, _080026E8
	mov r4, ip
	adds r4, #0x82
	mov r2, ip
	adds r2, #0x80
	ldr r0, _080026EC
	mov r8, r0
	ldr r7, _080026F0
_08002694:
	str r2, [r1]
	str r6, [r1, #4]
	mov r0, r8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r6, [r1]
	str r4, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, #0x40
	adds r2, #0x40
	adds r3, #1
	cmp r3, #0xb
	bls _08002694
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080026F8
	movs r3, #0x40
	mov r2, sb
	ldr r4, _080026F4
	mov r1, ip
	adds r1, #0x80
_080026C0:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _080026C0
	b _08002716
	.align 2, 0
_080026D8: .4byte gUnknown_08013F70
_080026DC: .4byte 0x0000017F
_080026E0: .4byte gBG2MapBuffer
_080026E4: .4byte 0x040000D4
_080026E8: .4byte gBG3MapBufferCopy
_080026EC: .4byte 0x80000020
_080026F0: .4byte 0x8000001F
_080026F4: .4byte gUnknown_08014270
_080026F8:
	movs r3, #0x40
	mov r2, sb
	mov r4, sl
	mov r1, ip
	adds r1, #0x80
_08002702:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _08002702
_08002716:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #8
	rsbs r2, r2, #0
	cmp r0, r2
	ble _08002664
_08002724:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8002734
sub_8002734: @ 0x08002734
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrb r1, [r5]
	ldrb r2, [r5, #1]
	adds r0, r1, r2
	strb r0, [r5]
	movs r1, #1
	ldrsb r1, [r5, r1]
	ldrh r2, [r5, #4]
	subs r1, r2, r1
	ldr r2, _08002858
	ands r1, r2
	strh r1, [r5, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _080027CA
	movs r0, #0
	mov sb, r0
	ldr r1, _0800285C
	mov sl, r1
	ldr r2, _08002860
	mov r8, r2
_0800276A:
	ldrb r0, [r5]
	subs r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	adds r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0x1f
	bne _08002784
	mov r0, sb
	strb r0, [r5]
	strb r0, [r5, #1]
_08002784:
	movs r4, #2
	ldr r1, _08002864
	mov ip, sl
	ldr r7, _08002868
	mov r2, r8
	adds r2, #0x80
	ldr r6, _0800286C
	ldr r3, _08002870
_08002794:
	str r2, [r1]
	mov r0, ip
	str r0, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	str r7, [r1]
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #0x40
	adds r4, #1
	cmp r4, #0xb
	bls _08002794
	movs r4, #0x40
	ldr r2, _08002874
	movs r1, #0
	mov r0, r8
	adds r0, #0xbe
_080027B8:
	strh r1, [r0]
	adds r0, #0x40
	adds r4, #0x20
	cmp r4, r2
	bls _080027B8
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bgt _0800276A
_080027CA:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #8
	rsbs r2, r2, #0
	cmp r0, r2
	bgt _08002848
	mov sl, r2
	ldr r2, _0800285C
	mov sb, r2
	ldr r0, _08002860
	mov r8, r0
_080027E2:
	adds r0, r1, #0
	adds r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	subs r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0
	bne _080027FA
	strb r1, [r5]
	strb r1, [r5, #1]
_080027FA:
	movs r4, #2
	ldr r1, _08002864
	mov r6, sb
	mov r3, r8
	adds r3, #0x82
	mov r2, r8
	adds r2, #0x80
	ldr r0, _0800286C
	mov ip, r0
	ldr r7, _08002870
_0800280E:
	str r2, [r1]
	str r6, [r1, #4]
	mov r0, ip
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r6, [r1]
	str r3, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r3, #0x40
	adds r2, #0x40
	adds r4, #1
	cmp r4, #0xb
	bls _0800280E
	movs r4, #0x40
	ldr r2, _08002874
	movs r1, #0
	mov r0, r8
	adds r0, #0x80
_08002834:
	strh r1, [r0]
	adds r0, #0x40
	adds r4, #0x20
	cmp r4, r2
	bls _08002834
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, sl
	ble _080027E2
_08002848:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002858: .4byte 0x000001FF
_0800285C: .4byte gBG3MapBufferCopy
_08002860: .4byte gBG2MapBuffer
_08002864: .4byte 0x040000D4
_08002868: .4byte gBG3MapBufferCopy+0x2
_0800286C: .4byte 0x80000020
_08002870: .4byte 0x8000001F
_08002874: .4byte 0x0000017F

	THUMB_FUNC_START sub_8002878
sub_8002878: @ 0x08002878
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080028A8
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _080028A0
	ldr r1, _080028AC
	ldrb r2, [r4, #3]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _080028B0
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #8
	strh r0, [r1, #0x10]
_080028A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080028A8: .4byte gMain
_080028AC: .4byte gUnknown_0811DBF0
_080028B0: .4byte gLCDIORegisters

	THUMB_FUNC_START sub_80028B4
sub_80028B4: @ 0x080028B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r5, #0
	bne _080028EC
	movs r4, #0xc0
	lsls r4, r4, #1
	ldr r3, _080028E0
	ldr r0, _080028E4
	ldr r2, _080028E8
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r1, r0, r5
_080028CE:
	adds r0, r4, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, r3
	bls _080028CE
	b _0800299A
	.align 2, 0
_080028E0: .4byte 0x000001DF
_080028E4: .4byte gBG1MapBuffer
_080028E8: .4byte gUnknown_08013B70
_080028EC:
	adds r0, r5, #0
	movs r1, #5
	bl __udivsi3
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #5
	bl __umodsi3
	lsls r4, r4, #0xb
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r2, _08002934
	adds r0, r4, r2
	adds r1, r1, r0
	ldr r0, _08002938
	str r1, [r0]
	ldr r2, _0800293C
	str r2, [r0, #4]
	ldr r2, _08002940
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r1, r3
	str r1, [r0]
	ldr r1, _08002944
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	cmp r6, #0
	beq _0800294C
	movs r6, #0x18
	ldr r2, _08002948
	b _0800294E
	.align 2, 0
_08002934: .4byte gUnknown_08187540
_08002938: .4byte 0x040000D4
_0800293C: .4byte 0x06000A80
_08002940: .4byte 0x80000060
_08002944: .4byte 0x06000B40
_08002948: .4byte gUnknown_08013B6A
_0800294C:
	ldr r2, _080029A0
_0800294E:
	ldr r3, _080029A4
	lsls r0, r6, #1
	adds r3, r0, r3
	movs r4, #0
	adds r1, r0, #0
	ldr r5, _080029A8
	ldr r6, _080029AC
	adds r7, r5, #0
	adds r7, #0x40
	adds r0, r6, #6
	mov ip, r0
_08002964:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	adds r4, #1
	cmp r4, #5
	bls _08002964
	adds r3, r1, r5
	adds r2, r6, #0
	movs r4, #0
_08002978:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	adds r4, #1
	cmp r4, #5
	bls _08002978
	adds r3, r1, r7
	mov r2, ip
	movs r4, #0
_0800298C:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	adds r4, #1
	cmp r4, #5
	bls _0800298C
_0800299A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080029A0: .4byte gUnknown_08013B64
_080029A4: .4byte gBG1MapBuffer+0x380
_080029A8: .4byte gBG1MapBuffer+0x300
_080029AC: .4byte gUnknown_08013B58

	THUMB_FUNC_START sub_80029B0
sub_80029B0: @ 0x080029B0
	ldr r2, _08002A1C
	movs r0, #1
	ldrb r1, [r2, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _080029CC
	ldr r1, _08002A20
	ldr r0, _08002A24
	str r0, [r1]
	ldr r0, _08002A28
	str r0, [r1, #4]
	ldr r0, _08002A2C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080029CC:
	ldrb r2, [r2, #0x16]
	movs r0, #2
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	beq _080029E8
	ldr r1, _08002A20
	ldr r0, _08002A30
	str r0, [r1]
	ldr r0, _08002A34
	str r0, [r1, #4]
	ldr r0, _08002A2C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080029E8:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08002A00
	ldr r1, _08002A20
	ldr r0, _08002A38
	str r0, [r1]
	ldr r0, _08002A3C
	str r0, [r1, #4]
	ldr r0, _08002A2C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08002A00:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08002A18
	ldr r1, _08002A20
	ldr r0, _08002A40
	str r0, [r1]
	ldr r0, _08002A44
	str r0, [r1, #4]
	ldr r0, _08002A2C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08002A18:
	bx lr
	.align 2, 0
_08002A1C: .4byte gMain
_08002A20: .4byte 0x040000D4
_08002A24: .4byte gBG0MapBuffer
_08002A28: .4byte 0x0600E000
_08002A2C: .4byte 0x80000400
_08002A30: .4byte gBG1MapBuffer
_08002A34: .4byte 0x0600E800
_08002A38: .4byte gBG2MapBuffer
_08002A3C: .4byte 0x0600F000
_08002A40: .4byte gBG3MapBuffer
_08002A44: .4byte 0x0600F800
