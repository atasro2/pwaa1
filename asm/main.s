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
_08000B20: .4byte gUnknown_03001000
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
_08000CC8: .4byte gUnknown_03001000
_08000CCC: .4byte 0x040000D4
_08000CD0: .4byte gUnknown_03001800
_08000CD4: .4byte 0x8000001E
_08000CD8: .4byte 0x80000001
_08000CDC: .4byte gUnknown_03001002
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
_08000E38: .4byte gUnknown_0300103E
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
_08000F90: .4byte gUnknown_03001002
_08000F94: .4byte gUnknown_03001800
_08000F98: .4byte 0x8000001F
_08000F9C: .4byte gUnknown_03001000
_08000FA0: .4byte gUnknown_0300103E
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
_08001054: .4byte gUnknown_03001000
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
_080010F8: .4byte gUnknown_03001000
_080010FC: .4byte gUnknown_03001800
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
_080012A8: .4byte gUnknown_03001540
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
_08001300: .4byte gUnknown_03001040
_08001304: .4byte gUnknown_03001800
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
_080013DC: .4byte gUnknown_03001000
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
_08001484: .4byte gUnknown_03003730
_08001488: .4byte gUnknown_030038D0
_0800148C: .4byte gUnknown_03004000
_08001490: .4byte 0x0000FF7F
_08001494: .4byte 0x00004B20
_08001498: .4byte 0x040000D4
_0800149C: .4byte 0x05000040
_080014A0: .4byte 0x80000010
_080014A4: .4byte 0x06004000
_080014A8: .4byte 0x80002580
_080014AC: .4byte gUnknown_080137D8
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
_08001768: .4byte gUnknown_03003730
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
_080017F8: .4byte gUnknown_080137D8
_080017FC: .4byte gUnknown_03003730
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
_08001890: .4byte gUnknown_03003730
_08001894: .4byte 0xFFFF7FFF
_08001898: .4byte gUnknown_080137D8
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
_080018EC: .4byte gUnknown_03003730
_080018F0: .4byte gUnknown_0202CFC0
_080018F4: .4byte gUnknown_080137D8

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
_08001A54: .4byte gUnknown_03003730
_08001A58: .4byte gUnknown_030038D0
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
_08001A88: .4byte gUnknown_03000000
_08001A8C: .4byte gUnknown_03001000
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
_08001AC0: .4byte gUnknown_03003730
_08001AC4: .4byte gUnknown_030038D0
_08001AC8:
	movs r0, #0
	bl sub_8010C4C
	bl sub_8002A48
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
_08001B38: .4byte gUnknown_03001000
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
_08001BF8: .4byte gUnknown_080137D8
_08001BFC: .4byte gUnknown_08014570
_08001C00: .4byte gUnknown_03001000
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
_08001CFC: .4byte gUnknown_03000000
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
_08001DC4: .4byte gUnknown_0300391A
_08001DC8: .4byte gUnknown_0202CFC0
_08001DCC: .4byte gUnknown_08014570
_08001DD0: .4byte gUnknown_03001000
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
_08001F28: .4byte gUnknown_03001000
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
_08001FB8: .4byte gUnknown_03001000
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
_08002098: .4byte gUnknown_03001000
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
_08002150: .4byte gUnknown_03003730
_08002154: .4byte gUnknown_03003730+0x2E
_08002158: .4byte gUnknown_080137D8
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

	THUMB_FUNC_START sub_8002224
sub_8002224: @ 0x08002224
	ldr r1, _08002230
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08002230: .4byte gUnknown_080137D8

	THUMB_FUNC_START sub_8002234
sub_8002234: @ 0x08002234
	ldr r1, _08002240
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x28
	bx lr
	.align 2, 0
_08002240: .4byte gUnknown_080137D8

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
_08002258: .4byte gUnknown_03003A70
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
_08002294: .4byte gUnknown_03002000
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
_08002318: .4byte gUnknown_03002000
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
_08002348: .4byte gUnknown_03003A70
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
_080023DC: .4byte gUnknown_03002000
_080023E0: .4byte gUnknown_03003730
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
_08002408: .4byte gUnknown_030038D0
_0800240C: .4byte 0xFFAF0000
_08002410: .4byte gUnknown_03003730
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
_08002440: .4byte gUnknown_030038D0
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
_08002490: .4byte gUnknown_03003730
_08002494: .4byte gUnknown_03003A70
_08002498: .4byte gUnknown_03003A50
_0800249C: .4byte gUnknown_030038D0
_080024A0: .4byte gUnknown_03002000
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
_080024C0: .4byte gUnknown_03003A70
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
_08002604: .4byte gUnknown_03000000
_08002608: .4byte 0x0000017F
_0800260C: .4byte 0x040000D4
_08002610: .4byte gUnknown_03001800
_08002614: .4byte gUnknown_03001802
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
_080026E0: .4byte gUnknown_03000000
_080026E4: .4byte 0x040000D4
_080026E8: .4byte gUnknown_03001800
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
_0800285C: .4byte gUnknown_03001800
_08002860: .4byte gUnknown_03000000
_08002864: .4byte 0x040000D4
_08002868: .4byte gUnknown_03001802
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
_080028A8: .4byte gUnknown_03003730
_080028AC: .4byte gUnknown_0811DBF0
_080028B0: .4byte gUnknown_030038D0

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
_080028E4: .4byte gUnknown_03002000
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
_080029A4: .4byte gUnknown_03002380
_080029A8: .4byte gUnknown_03002300
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
_08002A1C: .4byte gUnknown_03003730
_08002A20: .4byte 0x040000D4
_08002A24: .4byte gUnknown_03002F20
_08002A28: .4byte 0x0600E000
_08002A2C: .4byte 0x80000400
_08002A30: .4byte gUnknown_03002000
_08002A34: .4byte 0x0600E800
_08002A38: .4byte gUnknown_03000000
_08002A3C: .4byte 0x0600F000
_08002A40: .4byte gUnknown_03001000
_08002A44: .4byte 0x0600F800

	THUMB_FUNC_START sub_8002A48
sub_8002A48: @ 0x08002A48
	ldr r1, _08002A5C
	ldr r0, _08002A60
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08002A64
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_08002A5C: .4byte 0x040000D4
_08002A60: .4byte gOamObjects
_08002A64: .4byte 0x80000200

	THUMB_FUNC_START sub_8002A68
sub_8002A68: @ 0x08002A68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r1, #0
	ldrh r4, [r2]
	ldrh r1, [r2, #2]
	mov ip, r1
	ldrh r1, [r0]
	subs r5, r1, r4
	ldrh r0, [r0, #2]
	mov r1, ip
	subs r3, r0, r1
	ldrh r0, [r2, #4]
	subs r0, r0, r4
	mov r8, r0
	ldrh r0, [r2, #6]
	subs r6, r0, r1
	ldrh r1, [r2, #0xc]
	subs r1, r1, r4
	mov sb, r1
	ldrh r0, [r2, #0xe]
	mov r1, ip
	subs r7, r0, r1
	mov r1, r8
	muls r1, r3, r1
	adds r0, r6, #0
	muls r0, r5, r0
	cmp r1, r0
	blt _08002AE6
	mov r1, sb
	muls r1, r3, r1
	adds r0, r7, #0
	muls r0, r5, r0
	cmp r1, r0
	bgt _08002AE6
	ldrh r0, [r2, #8]
	subs r1, r0, r4
	subs r5, r5, r1
	ldrh r2, [r2, #0xa]
	mov r4, ip
	subs r0, r2, r4
	subs r3, r3, r0
	mov r2, r8
	subs r2, r2, r1
	mov r8, r2
	subs r6, r6, r0
	mov r4, sb
	subs r4, r4, r1
	mov sb, r4
	subs r7, r7, r0
	mov r1, r8
	muls r1, r3, r1
	adds r0, r6, #0
	muls r0, r5, r0
	cmp r1, r0
	bgt _08002AE6
	mov r1, sb
	muls r1, r3, r1
	adds r0, r7, #0
	muls r0, r5, r0
	cmp r1, r0
	bge _08002AEA
_08002AE6:
	movs r0, #0
	b _08002AEC
_08002AEA:
	movs r0, #1
_08002AEC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002AF8
sub_8002AF8: @ 0x08002AF8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	adds r1, r0, #0
	cmp r0, #0
	bge _08002B0A
	adds r1, #0xff
_08002B0A:
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	bx lr

	THUMB_FUNC_START sub_8002B10
sub_8002B10: @ 0x08002B10
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8002B28
sub_8002B28: @ 0x08002B28
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002B40
sub_8002B40: @ 0x08002B40
	push {r4, r5, lr}
	ldr r3, _08002B84
	ldr r2, _08002B88
	ands r4, r2
	ldrh r0, [r3, #0x24]
	orrs r4, r0
	movs r0, #0x24
	ldrsh r1, [r3, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r5, r2
	orrs r5, r0
	lsls r1, r5, #0x10
	asrs r1, r1, #0x18
	adds r0, r1, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08002B8C
	ands r4, r2
	orrs r4, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	ldr r0, _08002B90
	ands r4, r0
	orrs r4, r1
	strh r4, [r3, #0x24]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08002B84: .4byte gUnknown_03003730
_08002B88: .4byte 0xFFFF0000
_08002B8C: .4byte 0xFFFFFF00
_08002B90: .4byte 0xFFFF00FF

	THUMB_FUNC_START sub_8002B94
sub_8002B94: @ 0x08002B94
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _08002BB8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	lsrs r0, r4, #5
	lsls r0, r0, #2
	adds r3, r3, r0
	cmp r2, #0
	beq _08002BBC
	movs r0, #0x1f
	ands r0, r4
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3]
	orrs r0, r1
	b _08002BC8
	.align 2, 0
_08002BB8: .4byte gUnknown_0811DC04
_08002BBC:
	movs r0, #0x1f
	ands r0, r4
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3]
	bics r0, r1
_08002BC8:
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8002BD0
sub_8002BD0: @ 0x08002BD0
	ldr r2, _08002BF4
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	lsrs r0, r1, #5
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08002BF0
	movs r0, #1
_08002BF0:
	bx lr
	.align 2, 0
_08002BF4: .4byte gUnknown_0811DC04

	THUMB_FUNC_START sub_8002BF8
sub_8002BF8: @ 0x08002BF8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r5, _08002C84
	ldr r6, _08002C88
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x18]
	movs r3, #0
	ldrsh r0, [r6, r3]
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x1a]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x1c]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x1e]
	ldrh r1, [r5, #0x1a]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08002C8C
	subs r1, r1, r0
	ldrh r2, [r5, #0x18]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	ldr r2, _08002C90
	ands r1, r2
	str r1, [r5, #0x20]
	ldrh r3, [r5, #0x1e]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, _08002C94
	subs r1, r1, r0
	ldrh r3, [r5, #0x1c]
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #3
	subs r1, r1, r0
	ands r1, r2
	str r1, [r5, #0x24]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002C84: .4byte gUnknown_030038D0
_08002C88: .4byte gUnknown_08014AF0
_08002C8C: .4byte 0x00007788
_08002C90: .4byte 0x0FFFFFFF
_08002C94: .4byte 0x00004FB0

	THUMB_FUNC_START sub_8002C98
sub_8002C98: @ 0x08002C98
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _08002CC4
	adds r3, r1, #0
	adds r3, #0x90
	strh r4, [r3]
	adds r1, #0x92
	strh r2, [r1]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_8010048
	ldr r0, _08002CC8
	movs r1, #1
	strb r1, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002CC4: .4byte gUnknown_03003730
_08002CC8: .4byte gUnknown_03003A50

	THUMB_FUNC_START sub_8002CCC
sub_8002CCC: @ 0x08002CCC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r2, #1
	bl sub_8002B94
	adds r0, r4, #0
	bl sub_800549C
	movs r0, #1
	bl sub_800244C
	bl sub_800F454
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8002CF0
sub_8002CF0: @ 0x08002CF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r2, _08002D5C
	movs r1, #0
	ldr r0, _08002D60
	mov ip, r0
	ldr r6, _08002D64
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r5, r0, #0
	movs r3, #0xa2
	lsls r3, r3, #7
_08002D10:
	strh r6, [r2]
	adds r0, r4, r5
	strh r0, [r2, #2]
	strh r3, [r2, #4]
	adds r2, #8
	adds r4, #0x3c
	adds r3, #0x20
	adds r1, #1
	cmp r1, #3
	bls _08002D10
	movs r0, #0x82
	lsls r0, r0, #1
	mov r1, ip
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	movs r2, #1
	bl sub_8002B94
	mov r0, r8
	bl sub_800549C
	movs r0, #1
	bl sub_800244C
	ldr r4, _08002D68
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800B7A8
	movs r0, #0x40
	strb r0, [r4, #0xe]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002D5C: .4byte gUnknown_03002CA8
_08002D60: .4byte gUnknown_03003730+0x4
_08002D64: .4byte 0x000040C0
_08002D68: .4byte gUnknown_03003A50

	THUMB_FUNC_START nullsub_4
nullsub_4: @ 0x08002D6C
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8002D70
sub_8002D70: @ 0x08002D70
	ldr r2, _08002D98
	ldr r1, _08002D9C
	str r1, [r2]
	ldr r1, _08002DA0
	str r1, [r2, #4]
	ldr r1, _08002DA4
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08002DA8
	str r1, [r2]
	ldr r1, _08002DAC
	str r1, [r2, #4]
	ldr r1, _08002DB0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08002D98: .4byte 0x040000D4
_08002D9C: .4byte gUnknown_080150D0
_08002DA0: .4byte gUnknown_03003730+0xD8
_08002DA4: .4byte 0x80000018
_08002DA8: .4byte gUnknown_08014FB8
_08002DAC: .4byte gUnknown_030028A0
_08002DB0: .4byte 0x8000008C

	THUMB_FUNC_START sub_8002DB4
sub_8002DB4: @ 0x08002DB4
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08002DE4
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08002DE8
	mov r1, sp
	str r1, [r2]
	ldr r1, _08002DEC
	str r1, [r2, #4]
	ldr r1, _08002DF0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #5
	bls _08002DDA
	b _08003170
_08002DDA:
	lsls r0, r0, #2
	ldr r1, _08002DF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002DE4: .4byte 0x0000FFFF
_08002DE8: .4byte 0x040000D4
_08002DEC: .4byte gUnknown_03003AC0
_08002DF0: .4byte 0x810000A0
_08002DF4: .4byte _08002DF8
_08002DF8: @ jump table
	.4byte _08002E10 @ case 0
	.4byte _08002F34 @ case 1
	.4byte _08002F88 @ case 2
	.4byte _08003090 @ case 3
	.4byte _08003170 @ case 4
	.4byte _08003104 @ case 5
_08002E10:
	movs r0, #0
	movs r1, #0x53
	bl sub_8002BD0
	cmp r0, #0
	beq _08002E50
	movs r0, #0
	movs r1, #0x4f
	bl sub_8002BD0
	cmp r0, #0
	bne _08002E30
	movs r0, #0xb1
	movs r1, #0x4f
	bl sub_8002CCC
_08002E30:
	ldr r1, _08002E40
	ldr r0, _08002E44
	str r0, [r1]
	ldr r0, _08002E48
	str r0, [r1, #4]
	ldr r0, _08002E4C
	b _0800316C
	.align 2, 0
_08002E40: .4byte 0x040000D4
_08002E44: .4byte gUnknown_08015178
_08002E48: .4byte gUnknown_03003AC0
_08002E4C: .4byte 0x80000032
_08002E50:
	movs r0, #0
	movs r1, #0x48
	bl sub_8002BD0
	cmp r0, #0
	beq _08002EA0
	movs r0, #0
	movs r1, #0x4a
	bl sub_8002BD0
	cmp r0, #0
	bne _08002E72
	movs r0, #0x94
	movs r1, #0x4a
	bl sub_8002CCC
	b _08002E82
_08002E72:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl sub_800F408
_08002E82:
	ldr r1, _08002E90
	ldr r0, _08002E94
	str r0, [r1]
	ldr r0, _08002E98
	str r0, [r1, #4]
	ldr r0, _08002E9C
	b _0800316C
	.align 2, 0
_08002E90: .4byte 0x040000D4
_08002E94: .4byte gUnknown_08015178
_08002E98: .4byte gUnknown_03003AC0
_08002E9C: .4byte 0x80000032
_08002EA0:
	movs r0, #0
	movs r1, #0x41
	bl sub_8002BD0
	cmp r0, #0
	beq _08002F1C
	movs r0, #0
	movs r1, #0x42
	bl sub_8002BD0
	cmp r0, #0
	bne _08002EC2
	movs r0, #0x84
	movs r1, #0x42
	bl sub_8002CCC
	b _08002F0C
_08002EC2:
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0
	movs r1, #0x44
	bl sub_8002BD0
	cmp r0, #0
	beq _08002F06
	movs r0, #0
	movs r1, #0x43
	bl sub_8002BD0
	cmp r0, #0
	beq _08002F06
	movs r0, #0
	movs r1, #0x45
	bl sub_8002BD0
	cmp r0, #0
	beq _08002F06
	movs r0, #0
	movs r1, #0x46
	bl sub_8002BD0
	cmp r0, #0
	beq _08002F06
	movs r0, #0x85
	movs r1, #0x47
	bl sub_8002CCC
	b _08002F0C
_08002F06:
	movs r0, #0xc
	bl sub_800F408
_08002F0C:
	ldr r1, _08002F14
	ldr r0, _08002F18
	b _08003164
	.align 2, 0
_08002F14: .4byte 0x040000D4
_08002F18: .4byte gUnknown_08015100
_08002F1C:
	movs r0, #0
	movs r1, #0x3f
	bl sub_8002BD0
	cmp r0, #0
	bne _08002F2A
	b _08003170
_08002F2A:
	movs r0, #0x82
	movs r1, #0x40
	bl sub_8002CCC
	b _08003170
_08002F34:
	movs r0, #0
	movs r1, #0x41
	bl sub_8002BD0
	cmp r0, #0
	bne _08002F50
	movs r0, #0xb3
	movs r1, #0x41
	bl sub_8002CCC
	movs r0, #0x1b
	bl sub_8010204
	b _08002F56
_08002F50:
	movs r0, #0xc
	bl sub_800F408
_08002F56:
	movs r0, #0
	movs r1, #0x49
	bl sub_8002BD0
	cmp r0, #0
	beq _08002F68
	movs r0, #0xc
	bl sub_8010204
_08002F68:
	ldr r1, _08002F78
	ldr r0, _08002F7C
	str r0, [r1]
	ldr r0, _08002F80
	str r0, [r1, #4]
	ldr r0, _08002F84
	b _0800316C
	.align 2, 0
_08002F78: .4byte 0x040000D4
_08002F7C: .4byte gUnknown_080151DC
_08002F80: .4byte gUnknown_03003AC0
_08002F84: .4byte 0x8000006E
_08002F88:
	movs r0, #0
	movs r1, #0x62
	bl sub_8002BD0
	cmp r0, #0
	beq _08002FEC
	movs r0, #0
	movs r1, #0x64
	bl sub_8002BD0
	cmp r0, #0
	beq _08002FEC
	movs r0, #0
	movs r1, #0x63
	bl sub_8002BD0
	cmp r0, #0
	beq _08002FEC
	movs r0, #0
	movs r1, #0x5c
	bl sub_8002BD0
	cmp r0, #0
	bne _08002FC2
	movs r0, #0xe1
	movs r1, #0x5c
	bl sub_8002CCC
	b _0800306E
_08002FC2:
	ldr r2, _08002FE0
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0
	movs r1, #0x5a
	bl sub_8002BD0
	cmp r0, #0
	beq _08002FE4
	movs r0, #0xc
	bl sub_800F408
	b _0800306E
	.align 2, 0
_08002FE0: .4byte 0x00001FB0
_08002FE4:
	movs r0, #0x1c
	bl sub_800F408
	b _0800306E
_08002FEC:
	movs r0, #0
	movs r1, #0x53
	bl sub_8002BD0
	cmp r0, #0
	beq _0800300E
	movs r0, #0
	movs r1, #0x61
	bl sub_8002BD0
	cmp r0, #0
	bne _0800306E
	movs r0, #0xea
	movs r1, #0x61
	bl sub_8002CCC
	b _0800306E
_0800300E:
	movs r0, #0
	movs r1, #0x50
	bl sub_8002BD0
	cmp r0, #0
	beq _08003048
	movs r0, #0
	movs r1, #0x5b
	bl sub_8002BD0
	cmp r0, #0
	bne _08003030
	movs r0, #0xd8
	movs r1, #0x5b
	bl sub_8002CCC
	b _0800306E
_08003030:
	ldr r2, _08003044
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0
	bl sub_800F408
	b _0800306E
	.align 2, 0
_08003044: .4byte 0x00001FB0
_08003048:
	movs r0, #0
	movs r1, #0x48
	bl sub_8002BD0
	cmp r0, #0
	bne _0800305E
	movs r0, #0xc2
	movs r1, #0x48
	bl sub_8002CCC
	b _0800306E
_0800305E:
	ldr r2, _0800307C
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0
	bl sub_800F408
_0800306E:
	ldr r1, _08003080
	ldr r0, _08003084
	str r0, [r1]
	ldr r0, _08003088
	str r0, [r1, #4]
	ldr r0, _0800308C
	b _0800316C
	.align 2, 0
_0800307C: .4byte 0x00001FB0
_08003080: .4byte 0x040000D4
_08003084: .4byte gUnknown_080152B8
_08003088: .4byte gUnknown_03003AC0
_0800308C: .4byte 0x80000014
_08003090:
	movs r0, #0
	movs r1, #0x52
	bl sub_8002BD0
	cmp r0, #0
	beq _080030D0
	movs r0, #0
	movs r1, #0x53
	bl sub_8002BD0
	cmp r0, #0
	bne _080030B2
	movs r0, #0xfb
	movs r1, #0x53
	bl sub_8002CCC
	b _080030E4
_080030B2:
	movs r0, #0
	movs r1, #0x53
	bl sub_8002BD0
	cmp r0, #0
	beq _080030C8
	movs r0, #0xc
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_080030C8:
	movs r0, #0x1a
	bl sub_800F408
	b _080030E4
_080030D0:
	movs r0, #0
	movs r1, #0x50
	bl sub_8002BD0
	cmp r0, #0
	bne _080030E4
	movs r0, #0xfa
	movs r1, #0x50
	bl sub_8002CCC
_080030E4:
	ldr r1, _080030F4
	ldr r0, _080030F8
	str r0, [r1]
	ldr r0, _080030FC
	str r0, [r1, #4]
	ldr r0, _08003100
	b _0800316C
	.align 2, 0
_080030F4: .4byte 0x040000D4
_080030F8: .4byte gUnknown_080152E0
_080030FC: .4byte gUnknown_03003AC0
_08003100: .4byte 0x80000032
_08003104:
	movs r0, #0
	movs r1, #0x5a
	bl sub_8002BD0
	cmp r0, #0
	beq _0800312E
	movs r0, #0
	movs r1, #0x54
	bl sub_8002BD0
	cmp r0, #0
	bne _08003126
	movs r0, #0xf7
	movs r1, #0x54
	bl sub_8002CCC
	b _08003160
_08003126:
	movs r0, #0xc
	bl sub_800F408
	b _08003160
_0800312E:
	movs r0, #0
	movs r1, #0x51
	bl sub_8002BD0
	cmp r0, #0
	bne _08003144
	movs r0, #0xeb
	movs r1, #0x51
	bl sub_8002CCC
	b _08003160
_08003144:
	movs r0, #0
	movs r1, #0x52
	bl sub_8002BD0
	cmp r0, #0
	beq _0800315A
	movs r0, #0x16
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_0800315A:
	movs r0, #0x16
	bl sub_800F408
_08003160:
	ldr r1, _08003178
	ldr r0, _0800317C
_08003164:
	str r0, [r1]
	ldr r0, _08003180
	str r0, [r1, #4]
	ldr r0, _08003184
_0800316C:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08003170:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08003178: .4byte 0x040000D4
_0800317C: .4byte gUnknown_08015344
_08003180: .4byte gUnknown_03003AC0
_08003184: .4byte 0x8000003C

	THUMB_FUNC_START nullsub_7
nullsub_7: @ 0x08003188
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800318C
sub_800318C: @ 0x0800318C
	ldr r2, _080031B4
	ldr r1, _080031B8
	str r1, [r2]
	ldr r1, _080031BC
	str r1, [r2, #4]
	ldr r1, _080031C0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _080031C4
	str r1, [r2]
	ldr r1, _080031C8
	str r1, [r2, #4]
	ldr r1, _080031CC
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080031B4: .4byte 0x040000D4
_080031B8: .4byte gUnknown_08015520
_080031BC: .4byte gUnknown_03003730+0xD8
_080031C0: .4byte 0x80000018
_080031C4: .4byte gUnknown_0801541C
_080031C8: .4byte gUnknown_030028A0
_080031CC: .4byte 0x80000082

	THUMB_FUNC_START sub_80031D0
sub_80031D0: @ 0x080031D0
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08003200
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08003204
	mov r1, sp
	str r1, [r2]
	ldr r3, _08003208
	str r3, [r2, #4]
	ldr r1, _0800320C
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #5
	bls _080031F6
	b _0800352E
_080031F6:
	lsls r0, r0, #2
	ldr r1, _08003210
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003200: .4byte 0x0000FFFF
_08003204: .4byte 0x040000D4
_08003208: .4byte gUnknown_03003AC0
_0800320C: .4byte 0x810000A0
_08003210: .4byte _08003214
_08003214: @ jump table
	.4byte _0800322C @ case 0
	.4byte _0800352E @ case 1
	.4byte _080032BC @ case 2
	.4byte _08003348 @ case 3
	.4byte _0800341E @ case 4
	.4byte _080034C0 @ case 5
_0800322C:
	movs r0, #0
	movs r1, #0x74
	bl sub_8002BD0
	cmp r0, #0
	bne _0800326C
	movs r0, #0
	movs r1, #0x7b
	bl sub_8002BD0
	cmp r0, #0
	bne _0800324C
	movs r0, #0x80
	movs r1, #0x7b
	bl sub_8002CCC
_0800324C:
	ldr r1, _0800325C
	ldr r0, _08003260
	str r0, [r1]
	ldr r0, _08003264
	str r0, [r1, #4]
	ldr r0, _08003268
	b _0800352A
	.align 2, 0
_0800325C: .4byte 0x040000D4
_08003260: .4byte gUnknown_08015550
_08003264: .4byte gUnknown_03003AC0
_08003268: .4byte 0x80000032
_0800326C:
	movs r0, #0
	movs r1, #0x7c
	bl sub_8002BD0
	cmp r0, #0
	bne _08003282
	movs r0, #0x87
	movs r1, #0x7c
	bl sub_8002CCC
	b _0800329C
_08003282:
	movs r0, #0
	movs r1, #0x75
	bl sub_8002BD0
	cmp r0, #0
	beq _08003296
	movs r0, #0xc
	bl sub_800F408
	b _0800329C
_08003296:
	movs r0, #0x19
	bl sub_800F408
_0800329C:
	ldr r1, _080032AC
	ldr r0, _080032B0
	str r0, [r1]
	ldr r0, _080032B4
	str r0, [r1, #4]
	ldr r0, _080032B8
	b _0800352A
	.align 2, 0
_080032AC: .4byte 0x040000D4
_080032B0: .4byte gUnknown_080155B4
_080032B4: .4byte gUnknown_03003AC0
_080032B8: .4byte 0x80000032
_080032BC:
	ldr r1, _080032EC
	ldr r0, _080032F0
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _080032F4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x80
	bl sub_8002BD0
	cmp r0, #0
	bne _080032F8
	movs r0, #0
	movs r1, #0x7d
	bl sub_8002BD0
	cmp r0, #0
	bne _0800331A
	movs r0, #0x9a
	movs r1, #0x7d
	bl sub_8002CCC
	b _0800352E
	.align 2, 0
_080032EC: .4byte 0x040000D4
_080032F0: .4byte gUnknown_08015618
_080032F4: .4byte 0x80000014
_080032F8:
	movs r0, #0
	movs r1, #0x70
	bl sub_8002BD0
	cmp r0, #0
	bne _08003330
	movs r0, #0
	movs r1, #0x7e
	bl sub_8002BD0
	cmp r0, #0
	bne _0800331A
	movs r0, #0xa2
	movs r1, #0x7e
	bl sub_8002CCC
	b _0800352E
_0800331A:
	ldr r2, _0800332C
	movs r0, #0x16
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0x16
	bl sub_800F408
	b _0800352E
	.align 2, 0
_0800332C: .4byte 0x00001D0C
_08003330:
	movs r0, #0
	movs r1, #0x7f
	bl sub_8002BD0
	cmp r0, #0
	beq _0800333E
	b _0800352E
_0800333E:
	movs r0, #0xb0
	movs r1, #0x7f
	bl sub_8002CCC
	b _0800352E
_08003348:
	ldr r1, _08003380
	ldr r0, _08003384
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08003388
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x72
	bl sub_8002BD0
	cmp r0, #0
	bne _0800338C
	movs r0, #0
	movs r1, #0x80
	bl sub_8002BD0
	cmp r0, #0
	bne _08003376
	movs r0, #0xb9
	movs r1, #0x80
	bl sub_8002CCC
_08003376:
	movs r0, #0xd
	bl sub_8010204
	b _0800352E
	.align 2, 0
_08003380: .4byte 0x040000D4
_08003384: .4byte gUnknown_08015640
_08003388: .4byte 0x8000003C
_0800338C:
	movs r0, #0
	movs r1, #0x73
	bl sub_8002BD0
	cmp r0, #0
	bne _080033B0
	movs r0, #0
	movs r1, #0x81
	bl sub_8002BD0
	cmp r0, #0
	beq _080033A6
	b _0800352E
_080033A6:
	movs r0, #0xcb
	movs r1, #0x81
	bl sub_8002CCC
	b _0800352E
_080033B0:
	movs r0, #0
	movs r1, #0x70
	bl sub_8002BD0
	cmp r0, #0
	bne _080033E0
	movs r0, #0
	movs r1, #0x83
	bl sub_8002BD0
	cmp r0, #0
	bne _080033D2
	movs r0, #0xd4
	movs r1, #0x83
	bl sub_8002CCC
	b _0800352E
_080033D2:
	movs r2, #0xb2
	lsls r2, r2, #2
	movs r0, #0xc
	adds r1, r2, #0
	bl sub_8002C98
	b _08003416
_080033E0:
	movs r0, #0
	movs r1, #0x82
	bl sub_8002BD0
	cmp r0, #0
	bne _080033F6
	movs r0, #0xe4
	movs r1, #0x82
	bl sub_8002CCC
	b _0800352E
_080033F6:
	movs r2, #0xb2
	lsls r2, r2, #2
	movs r0, #0xc
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0
	movs r1, #0x88
	bl sub_8002BD0
	cmp r0, #0
	beq _08003416
	movs r0, #0xc
	bl sub_800F408
	b _0800352E
_08003416:
	movs r0, #0x1a
	bl sub_800F408
	b _0800352E
_0800341E:
	movs r0, #0
	movs r1, #0x75
	bl sub_8002BD0
	cmp r0, #0
	bne _08003474
	movs r0, #0
	movs r1, #0x84
	bl sub_8002BD0
	cmp r0, #0
	bne _08003442
	movs r0, #0x8d
	lsls r0, r0, #1
	movs r1, #0x84
	bl sub_8002CCC
	b _08003452
_08003442:
	ldr r2, _08003460
	movs r0, #0x15
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl sub_800F408
_08003452:
	ldr r1, _08003464
	ldr r0, _08003468
	str r0, [r1]
	ldr r0, _0800346C
	str r0, [r1, #4]
	ldr r0, _08003470
	b _0800352A
	.align 2, 0
_08003460: .4byte 0x00002564
_08003464: .4byte 0x040000D4
_08003468: .4byte gUnknown_080156B8
_0800346C: .4byte gUnknown_03003AC0
_08003470: .4byte 0x80000032
_08003474:
	movs r0, #0
	movs r1, #0x85
	bl sub_8002BD0
	cmp r0, #0
	bne _0800348C
	movs r0, #0x96
	lsls r0, r0, #1
	movs r1, #0x85
	bl sub_8002CCC
	b _0800349C
_0800348C:
	ldr r2, _080034AC
	movs r0, #0x15
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl sub_800F408
_0800349C:
	ldr r1, _080034B0
	ldr r0, _080034B4
	str r0, [r1]
	ldr r0, _080034B8
	str r0, [r1, #4]
	ldr r0, _080034BC
	b _0800352A
	.align 2, 0
_080034AC: .4byte 0x00002564
_080034B0: .4byte 0x040000D4
_080034B4: .4byte gUnknown_0801571C
_080034B8: .4byte gUnknown_03003AC0
_080034BC: .4byte 0x80000032
_080034C0:
	movs r0, #0
	movs r1, #0x73
	bl sub_8002BD0
	cmp r0, #0
	bne _08003508
	movs r0, #0
	movs r1, #0x86
	bl sub_8002BD0
	cmp r0, #0
	bne _080034E4
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x86
	bl sub_8002CCC
	b _080034F4
_080034E4:
	ldr r2, _080034FC
	movs r0, #0x17
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl sub_800F408
_080034F4:
	ldr r1, _08003500
	ldr r0, _08003504
	b _08003522
	.align 2, 0
_080034FC: .4byte 0x00000894
_08003500: .4byte 0x040000D4
_08003504: .4byte gUnknown_08015780
_08003508:
	movs r0, #0
	movs r1, #0x87
	bl sub_8002BD0
	cmp r0, #0
	bne _0800351E
	movs r0, #0x89
	lsls r0, r0, #1
	movs r1, #0x87
	bl sub_8002CCC
_0800351E:
	ldr r1, _08003534
	ldr r0, _08003538
_08003522:
	str r0, [r1]
	ldr r0, _0800353C
	str r0, [r1, #4]
	ldr r0, _08003540
_0800352A:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800352E:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08003534: .4byte 0x040000D4
_08003538: .4byte gUnknown_080157F8
_0800353C: .4byte gUnknown_03003AC0
_08003540: .4byte 0x8000003C

	THUMB_FUNC_START sub_8003544
sub_8003544: @ 0x08003544
	push {lr}
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #4
	bne _08003580
	movs r0, #0
	movs r1, #0x71
	bl sub_8002BD0
	cmp r0, #0
	bne _08003580
	movs r0, #0
	movs r1, #0x70
	bl sub_8002BD0
	cmp r0, #0
	beq _08003580
	ldr r1, _08003584
	ldr r0, _08003588
	str r0, [r1]
	ldr r0, _0800358C
	str r0, [r1, #4]
	ldr r0, _08003590
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x71
	movs r2, #1
	bl sub_8002B94
_08003580:
	pop {r0}
	bx r0
	.align 2, 0
_08003584: .4byte 0x040000D4
_08003588: .4byte gUnknown_0801571C
_0800358C: .4byte gUnknown_03003AC0
_08003590: .4byte 0x80000032

	THUMB_FUNC_START sub_8003594
sub_8003594: @ 0x08003594
	ldr r2, _080035BC
	ldr r1, _080035C0
	str r1, [r2]
	ldr r1, _080035C4
	str r1, [r2, #4]
	ldr r1, _080035C8
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _080035CC
	str r1, [r2]
	ldr r1, _080035D0
	str r1, [r2, #4]
	ldr r1, _080035D4
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #6
	strb r1, [r0]
	bx lr
	.align 2, 0
_080035BC: .4byte 0x040000D4
_080035C0: .4byte gUnknown_08015B70
_080035C4: .4byte gUnknown_03003730+0xD8
_080035C8: .4byte 0x80000030
_080035CC: .4byte gUnknown_08015A1C
_080035D0: .4byte gUnknown_030028A0
_080035D4: .4byte 0x800000AA

	THUMB_FUNC_START sub_80035D8
sub_80035D8: @ 0x080035D8
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _0800360C
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08003610
	mov r1, sp
	str r1, [r2]
	ldr r1, _08003614
	str r1, [r2, #4]
	ldr r1, _08003618
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #9
	bls _08003600
	b _08003908
_08003600:
	lsls r0, r0, #2
	ldr r1, _0800361C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800360C: .4byte 0x0000FFFF
_08003610: .4byte 0x040000D4
_08003614: .4byte gUnknown_03003AC0
_08003618: .4byte 0x810000A0
_0800361C: .4byte _08003620
_08003620: @ jump table
	.4byte _080036BC @ case 0
	.4byte _08003908 @ case 1
	.4byte _08003908 @ case 2
	.4byte _08003908 @ case 3
	.4byte _08003648 @ case 4
	.4byte _08003758 @ case 5
	.4byte _08003808 @ case 6
	.4byte _0800383C @ case 7
	.4byte _08003870 @ case 8
	.4byte _080038A4 @ case 9
_08003648:
	movs r0, #0
	movs r1, #0xa0
	bl sub_8002BD0
	cmp r0, #0
	beq _0800367E
	movs r0, #0
	movs r1, #0x95
	bl sub_8002BD0
	cmp r0, #0
	bne _0800366A
	movs r0, #0x8c
	movs r1, #0x95
	bl sub_8002CCC
	b _0800369C
_0800366A:
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl sub_800F408
	b _0800369C
_0800367E:
	movs r0, #0
	movs r1, #0x94
	bl sub_8002BD0
	cmp r0, #0
	beq _0800369C
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl sub_800F408
_0800369C:
	ldr r1, _080036AC
	ldr r0, _080036B0
	str r0, [r1]
	ldr r0, _080036B4
	str r0, [r1, #4]
	ldr r0, _080036B8
	b _08003904
	.align 2, 0
_080036AC: .4byte 0x040000D4
_080036B0: .4byte gUnknown_08015BD0
_080036B4: .4byte gUnknown_03003AC0
_080036B8: .4byte 0x80000032
_080036BC:
	movs r0, #0
	movs r1, #0xa0
	bl sub_8002BD0
	cmp r0, #0
	beq _080036DE
	movs r0, #0
	movs r1, #0x92
	bl sub_8002BD0
	cmp r0, #0
	bne _08003738
	movs r0, #0x9f
	movs r1, #0x92
	bl sub_8002CCC
	b _08003738
_080036DE:
	movs r0, #0
	movs r1, #0x9a
	bl sub_8002BD0
	cmp r0, #0
	beq _08003712
	movs r0, #0
	movs r1, #0x91
	bl sub_8002BD0
	cmp r0, #0
	bne _08003700
	movs r0, #0x99
	movs r1, #0x91
	bl sub_8002CCC
	b _08003738
_08003700:
	movs r0, #0x1b
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0
	bl sub_800F408
	b _08003738
_08003712:
	movs r0, #0
	movs r1, #0x90
	bl sub_8002BD0
	cmp r0, #0
	bne _08003728
	movs r0, #0x90
	movs r1, #0x90
	bl sub_8002CCC
	b _08003738
_08003728:
	movs r0, #0x1b
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0
	bl sub_800F408
_08003738:
	ldr r1, _08003748
	ldr r0, _0800374C
	str r0, [r1]
	ldr r0, _08003750
	str r0, [r1, #4]
	ldr r0, _08003754
	b _08003904
	.align 2, 0
_08003748: .4byte 0x040000D4
_0800374C: .4byte gUnknown_08015C34
_08003750: .4byte gUnknown_03003AC0
_08003754: .4byte 0x80000014
_08003758:
	movs r0, #0
	movs r1, #0xa8
	bl sub_8002BD0
	cmp r0, #0
	beq _0800378E
	movs r0, #0
	movs r1, #0xa9
	bl sub_8002BD0
	cmp r0, #0
	bne _0800377A
	movs r0, #0xb4
	movs r1, #0xa9
	bl sub_8002CCC
	b _080037E8
_0800377A:
	movs r0, #0
	movs r1, #0xaa
	bl sub_8002BD0
	cmp r0, #0
	beq _080037B0
	movs r0, #0x1f
	bl sub_800F408
	b _080037E8
_0800378E:
	movs r0, #0
	movs r1, #0xa0
	bl sub_8002BD0
	cmp r0, #0
	beq _080037C2
	movs r0, #0
	movs r1, #0xa1
	bl sub_8002BD0
	cmp r0, #0
	bne _080037B0
	movs r0, #0xae
	movs r1, #0xa1
	bl sub_8002CCC
	b _080037E8
_080037B0:
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl sub_800F408
	b _080037E8
_080037C2:
	movs r0, #0
	movs r1, #0x93
	bl sub_8002BD0
	cmp r0, #0
	bne _080037D8
	movs r0, #0xa1
	movs r1, #0x93
	bl sub_8002CCC
	b _080037E8
_080037D8:
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl sub_800F408
_080037E8:
	ldr r1, _080037F8
	ldr r0, _080037FC
	str r0, [r1]
	ldr r0, _08003800
	str r0, [r1, #4]
	ldr r0, _08003804
	b _08003904
	.align 2, 0
_080037F8: .4byte 0x040000D4
_080037FC: .4byte gUnknown_08015C5C
_08003800: .4byte gUnknown_03003AC0
_08003804: .4byte 0x80000032
_08003808:
	movs r0, #0
	movs r1, #0x9d
	bl sub_8002BD0
	cmp r0, #0
	bne _0800381C
	movs r0, #0xbe
	movs r1, #0x9d
	bl sub_8002CCC
_0800381C:
	ldr r1, _0800382C
	ldr r0, _08003830
	str r0, [r1]
	ldr r0, _08003834
	str r0, [r1, #4]
	ldr r0, _08003838
	b _08003904
	.align 2, 0
_0800382C: .4byte 0x040000D4
_08003830: .4byte gUnknown_08015CC0
_08003834: .4byte gUnknown_03003AC0
_08003838: .4byte 0x80000064
_0800383C:
	movs r0, #0
	movs r1, #0xa2
	bl sub_8002BD0
	cmp r0, #0
	bne _08003850
	movs r0, #0xc9
	movs r1, #0xa2
	bl sub_8002CCC
_08003850:
	ldr r1, _08003860
	ldr r0, _08003864
	str r0, [r1]
	ldr r0, _08003868
	str r0, [r1, #4]
	ldr r0, _0800386C
	b _08003904
	.align 2, 0
_08003860: .4byte 0x040000D4
_08003864: .4byte gUnknown_08015D88
_08003868: .4byte gUnknown_03003AC0
_0800386C: .4byte 0x80000046
_08003870:
	movs r0, #0
	movs r1, #0x9c
	bl sub_8002BD0
	cmp r0, #0
	bne _08003886
	movs r0, #0xd2
	movs r1, #0x9c
	bl sub_8002CCC
	b _08003896
_08003886:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #1
	bl sub_800F408
_08003896:
	ldr r1, _0800389C
	ldr r0, _080038A0
	b _080038FC
	.align 2, 0
_0800389C: .4byte 0x040000D4
_080038A0: .4byte gUnknown_08015E14
_080038A4:
	movs r0, #0
	movs r1, #0xaa
	bl sub_8002BD0
	cmp r0, #0
	beq _080038C6
	movs r0, #0
	movs r1, #0xab
	bl sub_8002BD0
	cmp r0, #0
	bne _080038F8
	movs r0, #0xfa
	movs r1, #0xab
	bl sub_8002CCC
	b _080038F8
_080038C6:
	movs r0, #0
	movs r1, #0xa4
	bl sub_8002BD0
	cmp r0, #0
	bne _080038DC
	movs r0, #0xed
	movs r1, #0xa4
	bl sub_8002CCC
	b _080038F8
_080038DC:
	movs r0, #0
	movs r1, #0xa5
	bl sub_8002BD0
	cmp r0, #0
	beq _080038F2
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_080038F2:
	movs r0, #0x19
	bl sub_800F408
_080038F8:
	ldr r1, _08003910
	ldr r0, _08003914
_080038FC:
	str r0, [r1]
	ldr r0, _08003918
	str r0, [r1, #4]
	ldr r0, _0800391C
_08003904:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08003908:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08003910: .4byte 0x040000D4
_08003914: .4byte gUnknown_08015E8C
_08003918: .4byte gUnknown_03003AC0
_0800391C: .4byte 0x8000003C

	THUMB_FUNC_START nullsub_8
nullsub_8: @ 0x08003920
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8003924
sub_8003924: @ 0x08003924
	ldr r2, _0800394C
	ldr r1, _08003950
	str r1, [r2]
	ldr r1, _08003954
	str r1, [r2, #4]
	ldr r1, _08003958
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800395C
	str r1, [r2]
	ldr r1, _08003960
	str r1, [r2, #4]
	ldr r1, _08003964
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #6
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800394C: .4byte 0x040000D4
_08003950: .4byte gUnknown_0801618C
_08003954: .4byte gUnknown_03003730+0xD8
_08003958: .4byte 0x80000038
_0800395C: .4byte gUnknown_08016024
_08003960: .4byte gUnknown_030028A0
_08003964: .4byte 0x800000B4

	THUMB_FUNC_START sub_8003968
sub_8003968: @ 0x08003968
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _0800399C
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _080039A0
	mov r1, sp
	str r1, [r2]
	ldr r1, _080039A4
	str r1, [r2, #4]
	ldr r1, _080039A8
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #0xb
	bls _08003990
	b _0800408A
_08003990:
	lsls r0, r0, #2
	ldr r1, _080039AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800399C: .4byte 0x0000FFFF
_080039A0: .4byte 0x040000D4
_080039A4: .4byte gUnknown_03003AC0
_080039A8: .4byte 0x810000A0
_080039AC: .4byte _080039B0
_080039B0: @ jump table
	.4byte _08003A6C @ case 0
	.4byte _0800408A @ case 1
	.4byte _0800408A @ case 2
	.4byte _0800408A @ case 3
	.4byte _080039E0 @ case 4
	.4byte _08003AD4 @ case 5
	.4byte _08003C6C @ case 6
	.4byte _08003D74 @ case 7
	.4byte _08003E20 @ case 8
	.4byte _08003EA8 @ case 9
	.4byte _08003F30 @ case 10
	.4byte _08003FE4 @ case 11
_080039E0:
	movs r0, #0
	movs r1, #0xca
	bl sub_8002BD0
	cmp r0, #0
	beq _08003A30
	movs r0, #0
	movs r1, #0xcc
	bl sub_8002BD0
	cmp r0, #0
	bne _08003A02
	movs r0, #0x8d
	movs r1, #0xcc
	bl sub_8002CCC
	b _08003A12
_08003A02:
	movs r0, #5
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl sub_800F408
_08003A12:
	ldr r1, _08003A20
	ldr r0, _08003A24
	str r0, [r1]
	ldr r0, _08003A28
	str r0, [r1, #4]
	ldr r0, _08003A2C
	b _08004086
	.align 2, 0
_08003A20: .4byte 0x040000D4
_08003A24: .4byte gUnknown_08016260
_08003A28: .4byte gUnknown_03003AC0
_08003A2C: .4byte 0x80000032
_08003A30:
	movs r0, #0
	movs r1, #0xb0
	bl sub_8002BD0
	cmp r0, #0
	beq _08003A4E
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl sub_800F408
_08003A4E:
	ldr r1, _08003A5C
	ldr r0, _08003A60
	str r0, [r1]
	ldr r0, _08003A64
	str r0, [r1, #4]
	ldr r0, _08003A68
	b _08004086
	.align 2, 0
_08003A5C: .4byte 0x040000D4
_08003A60: .4byte gUnknown_080161FC
_08003A64: .4byte gUnknown_03003AC0
_08003A68: .4byte 0x80000032
_08003A6C:
	movs r0, #0
	movs r1, #0xcc
	bl sub_8002BD0
	cmp r0, #0
	beq _08003A8E
	movs r0, #0
	movs r1, #0xd9
	bl sub_8002BD0
	cmp r0, #0
	bne _08003AB4
	movs r0, #0x9c
	movs r1, #0xd9
	bl sub_8002CCC
	b _08003AB4
_08003A8E:
	movs r0, #0
	movs r1, #0xb1
	bl sub_8002BD0
	cmp r0, #0
	bne _08003AA4
	movs r0, #0x93
	movs r1, #0xb1
	bl sub_8002CCC
	b _08003AB4
_08003AA4:
	movs r0, #0x1b
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0
	bl sub_800F408
_08003AB4:
	ldr r1, _08003AC4
	ldr r0, _08003AC8
	str r0, [r1]
	ldr r0, _08003ACC
	str r0, [r1, #4]
	ldr r0, _08003AD0
	b _08004086
	.align 2, 0
_08003AC4: .4byte 0x040000D4
_08003AC8: .4byte gUnknown_080162C4
_08003ACC: .4byte gUnknown_03003AC0
_08003AD0: .4byte 0x80000014
_08003AD4:
	movs r0, #0
	movs r1, #0xcc
	bl sub_8002BD0
	cmp r0, #0
	beq _08003B3C
	movs r0, #0
	movs r1, #0xcd
	bl sub_8002BD0
	cmp r0, #0
	bne _08003AF6
	movs r0, #0xb5
	movs r1, #0xcd
	bl sub_8002CCC
	b _08003B1C
_08003AF6:
	movs r0, #0
	movs r1, #0xd0
	bl sub_8002BD0
	cmp r0, #0
	bne _08003B16
	movs r2, #0x82
	lsls r2, r2, #4
	movs r0, #0x11
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl sub_800F408
	b _08003B1C
_08003B16:
	movs r0, #0x1f
	bl sub_800F408
_08003B1C:
	ldr r1, _08003B2C
	ldr r0, _08003B30
	str r0, [r1]
	ldr r0, _08003B34
	str r0, [r1, #4]
	ldr r0, _08003B38
	b _08004086
	.align 2, 0
_08003B2C: .4byte 0x040000D4
_08003B30: .4byte gUnknown_080162EC
_08003B34: .4byte gUnknown_03003AC0
_08003B38: .4byte 0x80000032
_08003B3C:
	movs r0, #0
	movs r1, #0xc1
	bl sub_8002BD0
	cmp r0, #0
	beq _08003B84
	movs r0, #0
	movs r1, #0xc2
	bl sub_8002BD0
	cmp r0, #0
	bne _08003B5E
	movs r0, #0xb3
	movs r1, #0xc2
	bl sub_8002CCC
	b _08003B64
_08003B5E:
	movs r0, #0x1f
	bl sub_800F408
_08003B64:
	ldr r1, _08003B74
	ldr r0, _08003B78
	str r0, [r1]
	ldr r0, _08003B7C
	str r0, [r1, #4]
	ldr r0, _08003B80
	b _08004086
	.align 2, 0
_08003B74: .4byte 0x040000D4
_08003B78: .4byte gUnknown_08016350
_08003B7C: .4byte gUnknown_03003AC0
_08003B80: .4byte 0x80000032
_08003B84:
	movs r0, #0
	movs r1, #0xbb
	bl sub_8002BD0
	cmp r0, #0
	beq _08003BE0
	movs r0, #0
	movs r1, #0xbc
	bl sub_8002BD0
	cmp r0, #0
	beq _08003BE0
	movs r0, #0
	movs r1, #0xbd
	bl sub_8002BD0
	cmp r0, #0
	bne _08003BB2
	movs r0, #0xae
	movs r1, #0xbd
	bl sub_8002CCC
	b _08003BC2
_08003BB2:
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl sub_800F408
_08003BC2:
	ldr r1, _08003BD0
	ldr r0, _08003BD4
	str r0, [r1]
	ldr r0, _08003BD8
	str r0, [r1, #4]
	ldr r0, _08003BDC
	b _08004086
	.align 2, 0
_08003BD0: .4byte 0x040000D4
_08003BD4: .4byte gUnknown_080162EC
_08003BD8: .4byte gUnknown_03003AC0
_08003BDC: .4byte 0x80000032
_08003BE0:
	movs r0, #0
	movs r1, #0xb8
	bl sub_8002BD0
	cmp r0, #0
	beq _08003C30
	movs r0, #0
	movs r1, #0xb9
	bl sub_8002BD0
	cmp r0, #0
	bne _08003C02
	movs r0, #0xa5
	movs r1, #0xb9
	bl sub_8002CCC
	b _08003C12
_08003C02:
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl sub_800F408
_08003C12:
	ldr r1, _08003C20
	ldr r0, _08003C24
	str r0, [r1]
	ldr r0, _08003C28
	str r0, [r1, #4]
	ldr r0, _08003C2C
	b _08004086
	.align 2, 0
_08003C20: .4byte 0x040000D4
_08003C24: .4byte gUnknown_080162EC
_08003C28: .4byte gUnknown_03003AC0
_08003C2C: .4byte 0x80000032
_08003C30:
	movs r0, #0
	movs r1, #0xb2
	bl sub_8002BD0
	cmp r0, #0
	bne _08003C46
	movs r0, #0x9e
	movs r1, #0xb2
	bl sub_8002CCC
	b _08003C4C
_08003C46:
	movs r0, #0x1f
	bl sub_800F408
_08003C4C:
	ldr r1, _08003C5C
	ldr r0, _08003C60
	str r0, [r1]
	ldr r0, _08003C64
	str r0, [r1, #4]
	ldr r0, _08003C68
	b _08004086
	.align 2, 0
_08003C5C: .4byte 0x040000D4
_08003C60: .4byte gUnknown_080162EC
_08003C64: .4byte gUnknown_03003AC0
_08003C68: .4byte 0x80000032
_08003C6C:
	movs r0, #0
	movs r1, #0xcc
	bl sub_8002BD0
	cmp r0, #0
	beq _08003CAC
	movs r0, #0
	movs r1, #0xce
	bl sub_8002BD0
	cmp r0, #0
	bne _08003C8C
	movs r0, #0xd4
	movs r1, #0xce
	bl sub_8002CCC
_08003C8C:
	ldr r1, _08003C9C
	ldr r0, _08003CA0
	str r0, [r1]
	ldr r0, _08003CA4
	str r0, [r1, #4]
	ldr r0, _08003CA8
	b _08004086
	.align 2, 0
_08003C9C: .4byte 0x040000D4
_08003CA0: .4byte gUnknown_0801647C
_08003CA4: .4byte gUnknown_03003AC0
_08003CA8: .4byte 0x80000064
_08003CAC:
	movs r0, #0
	movs r1, #0xbd
	bl sub_8002BD0
	cmp r0, #0
	beq _08003D30
	movs r0, #0
	movs r1, #0xbe
	bl sub_8002BD0
	cmp r0, #0
	bne _08003CCE
	movs r0, #0xcd
	movs r1, #0xbe
	bl sub_8002CCC
	b _08003D06
_08003CCE:
	movs r0, #0
	movs r1, #0xc1
	bl sub_8002BD0
	adds r2, r0, #0
	cmp r2, #0
	bne _08003D06
	ldr r0, _08003D14
	adds r1, r0, #0
	adds r1, #0x90
	strh r2, [r1]
	adds r0, #0x92
	strh r2, [r0]
	ldr r0, _08003D18
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8010048
	ldr r0, _08003D1C
	movs r1, #1
	strb r1, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
	movs r0, #0x15
	bl sub_800F408
_08003D06:
	ldr r1, _08003D20
	ldr r0, _08003D24
	str r0, [r1]
	ldr r0, _08003D28
	str r0, [r1, #4]
	ldr r0, _08003D2C
	b _08004086
	.align 2, 0
_08003D14: .4byte gUnknown_03003730
_08003D18: .4byte 0x0000801C
_08003D1C: .4byte gUnknown_03003A50
_08003D20: .4byte 0x040000D4
_08003D24: .4byte gUnknown_080163B4
_08003D28: .4byte gUnknown_03003AC0
_08003D2C: .4byte 0x80000064
_08003D30:
	movs r0, #0
	movs r1, #0xb8
	bl sub_8002BD0
	cmp r0, #0
	bne _08003D42
	movs r0, #0xe
	bl sub_8010204
_08003D42:
	movs r0, #0
	movs r1, #0xb3
	bl sub_8002BD0
	cmp r0, #0
	bne _08003D56
	movs r0, #0xbf
	movs r1, #0xb3
	bl sub_8002CCC
_08003D56:
	ldr r1, _08003D64
	ldr r0, _08003D68
	str r0, [r1]
	ldr r0, _08003D6C
	str r0, [r1, #4]
	ldr r0, _08003D70
	b _08004086
	.align 2, 0
_08003D64: .4byte 0x040000D4
_08003D68: .4byte gUnknown_080163B4
_08003D6C: .4byte gUnknown_03003AC0
_08003D70: .4byte 0x80000064
_08003D74:
	movs r0, #0
	movs r1, #0xcc
	bl sub_8002BD0
	cmp r0, #0
	beq _08003DB4
	movs r0, #0
	movs r1, #0xcf
	bl sub_8002BD0
	cmp r0, #0
	bne _08003D96
	movs r0, #0xeb
	movs r1, #0xcf
	bl sub_8002CCC
	b _08003DA6
_08003D96:
	movs r0, #0x1c
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x15
	bl sub_800F408
_08003DA6:
	ldr r1, _08003DAC
	ldr r0, _08003DB0
	b _0800407E
	.align 2, 0
_08003DAC: .4byte 0x040000D4
_08003DB0: .4byte gUnknown_080165D0
_08003DB4:
	movs r0, #0
	movs r1, #0xba
	bl sub_8002BD0
	cmp r0, #0
	beq _08003DF4
	movs r0, #0
	movs r1, #0xbb
	bl sub_8002BD0
	cmp r0, #0
	bne _08003DD6
	movs r0, #0xe2
	movs r1, #0xbb
	bl sub_8002CCC
	b _08003DE6
_08003DD6:
	movs r0, #0x12
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x15
	bl sub_800F408
_08003DE6:
	ldr r1, _08003DEC
	ldr r0, _08003DF0
	b _0800407E
	.align 2, 0
_08003DEC: .4byte 0x040000D4
_08003DF0: .4byte gUnknown_08016544
_08003DF4:
	movs r0, #0
	movs r1, #0xb4
	bl sub_8002BD0
	cmp r0, #0
	bne _08003E0A
	movs r0, #0xda
	movs r1, #0xb4
	bl sub_8002CCC
	b _08003E10
_08003E0A:
	movs r0, #0x19
	bl sub_800F408
_08003E10:
	ldr r1, _08003E18
	ldr r0, _08003E1C
	b _0800407E
	.align 2, 0
_08003E18: .4byte 0x040000D4
_08003E1C: .4byte gUnknown_08016544
_08003E20:
	movs r0, #0
	movs r1, #0xca
	bl sub_8002BD0
	cmp r0, #0
	beq _08003E68
	movs r0, #0
	movs r1, #0xcb
	bl sub_8002BD0
	cmp r0, #0
	bne _08003E44
	movs r0, #0x85
	lsls r0, r0, #1
	movs r1, #0xcb
	bl sub_8002CCC
	b _08003E4A
_08003E44:
	movs r0, #0x1f
	bl sub_800F408
_08003E4A:
	ldr r1, _08003E58
	ldr r0, _08003E5C
	str r0, [r1]
	ldr r0, _08003E60
	str r0, [r1, #4]
	ldr r0, _08003E64
	b _08004086
	.align 2, 0
_08003E58: .4byte 0x040000D4
_08003E5C: .4byte gUnknown_080166D4
_08003E60: .4byte gUnknown_03003AC0
_08003E64: .4byte 0x8000003C
_08003E68:
	movs r0, #0
	movs r1, #0xb5
	bl sub_8002BD0
	cmp r0, #0
	bne _08003E84
	ldr r0, _08003E80
	movs r1, #0xb5
	bl sub_8002CCC
	b _08003E8A
	.align 2, 0
_08003E80: .4byte 0x00000103
_08003E84:
	movs r0, #0x1f
	bl sub_800F408
_08003E8A:
	ldr r1, _08003E98
	ldr r0, _08003E9C
	str r0, [r1]
	ldr r0, _08003EA0
	str r0, [r1, #4]
	ldr r0, _08003EA4
	b _08004086
	.align 2, 0
_08003E98: .4byte 0x040000D4
_08003E9C: .4byte gUnknown_0801665C
_08003EA0: .4byte gUnknown_03003AC0
_08003EA4: .4byte 0x8000003C
_08003EA8:
	movs r0, #0
	movs r1, #0xcc
	bl sub_8002BD0
	cmp r0, #0
	beq _08003ED4
	ldr r1, _08003EC4
	ldr r0, _08003EC8
	str r0, [r1]
	ldr r0, _08003ECC
	str r0, [r1, #4]
	ldr r0, _08003ED0
	b _08004086
	.align 2, 0
_08003EC4: .4byte 0x040000D4
_08003EC8: .4byte gUnknown_080167C4
_08003ECC: .4byte gUnknown_03003AC0
_08003ED0: .4byte 0x8000003C
_08003ED4:
	movs r0, #0
	movs r1, #0xc7
	bl sub_8002BD0
	cmp r0, #0
	beq _08003EF8
	movs r0, #0
	movs r1, #0xc8
	bl sub_8002BD0
	cmp r0, #0
	bne _08003F0C
	movs r0, #0x8b
	lsls r0, r0, #1
	movs r1, #0xc8
	bl sub_8002CCC
	b _08003F0C
_08003EF8:
	movs r0, #0
	movs r1, #0xb6
	bl sub_8002BD0
	cmp r0, #0
	bne _08003F0C
	ldr r0, _08003F1C
	movs r1, #0xb6
	bl sub_8002CCC
_08003F0C:
	ldr r1, _08003F20
	ldr r0, _08003F24
	str r0, [r1]
	ldr r0, _08003F28
	str r0, [r1, #4]
	ldr r0, _08003F2C
	b _08004086
	.align 2, 0
_08003F1C: .4byte 0x0000010F
_08003F20: .4byte 0x040000D4
_08003F24: .4byte gUnknown_0801674C
_08003F28: .4byte gUnknown_03003AC0
_08003F2C: .4byte 0x8000003C
_08003F30:
	movs r0, #0
	movs r1, #0xcc
	bl sub_8002BD0
	cmp r0, #0
	beq _08003F60
	movs r0, #0x1f
	bl sub_800F408
	ldr r1, _08003F50
	ldr r0, _08003F54
	str r0, [r1]
	ldr r0, _08003F58
	str r0, [r1, #4]
	ldr r0, _08003F5C
	b _08004086
	.align 2, 0
_08003F50: .4byte 0x040000D4
_08003F54: .4byte gUnknown_080168F0
_08003F58: .4byte gUnknown_03003AC0
_08003F5C: .4byte 0x8000005A
_08003F60:
	movs r0, #0
	movs r1, #0xb8
	bl sub_8002BD0
	cmp r0, #0
	beq _08003FA8
	movs r0, #0
	movs r1, #0xda
	bl sub_8002BD0
	cmp r0, #0
	bne _08003F84
	movs r0, #0x94
	lsls r0, r0, #1
	movs r1, #0xda
	bl sub_8002CCC
	b _08003F8A
_08003F84:
	movs r0, #0x1f
	bl sub_800F408
_08003F8A:
	ldr r1, _08003F98
	ldr r0, _08003F9C
	str r0, [r1]
	ldr r0, _08003FA0
	str r0, [r1, #4]
	ldr r0, _08003FA4
	b _08004086
	.align 2, 0
_08003F98: .4byte 0x040000D4
_08003F9C: .4byte gUnknown_0801683C
_08003FA0: .4byte gUnknown_03003AC0
_08003FA4: .4byte 0x8000005A
_08003FA8:
	movs r0, #0
	movs r1, #0xb7
	bl sub_8002BD0
	cmp r0, #0
	bne _08003FC0
	movs r0, #0x8f
	lsls r0, r0, #1
	movs r1, #0xb7
	bl sub_8002CCC
	b _08003FC6
_08003FC0:
	movs r0, #0x1f
	bl sub_800F408
_08003FC6:
	ldr r1, _08003FD4
	ldr r0, _08003FD8
	str r0, [r1]
	ldr r0, _08003FDC
	str r0, [r1, #4]
	ldr r0, _08003FE0
	b _08004086
	.align 2, 0
_08003FD4: .4byte 0x040000D4
_08003FD8: .4byte gUnknown_0801683C
_08003FDC: .4byte gUnknown_03003AC0
_08003FE0: .4byte 0x8000005A
_08003FE4:
	movs r0, #0
	movs r1, #0xd3
	bl sub_8002BD0
	cmp r0, #0
	beq _08004030
	movs r0, #0
	movs r1, #0xd4
	bl sub_8002BD0
	cmp r0, #0
	bne _0800400C
	ldr r0, _08004008
	movs r1, #0xd4
	bl sub_8002CCC
	b _08004022
	.align 2, 0
_08004008: .4byte 0x00000143
_0800400C:
	movs r0, #0
	movs r1, #0xd1
	bl sub_8002BD0
	cmp r0, #0
	bne _08004022
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_08004022:
	ldr r1, _08004028
	ldr r0, _0800402C
	b _0800407E
	.align 2, 0
_08004028: .4byte 0x040000D4
_0800402C: .4byte gUnknown_08016A30
_08004030:
	movs r0, #0
	movs r1, #0xcc
	bl sub_8002BD0
	cmp r0, #0
	beq _0800404C
	ldr r1, _08004044
	ldr r0, _08004048
	b _0800407E
	.align 2, 0
_08004044: .4byte 0x040000D4
_08004048: .4byte gUnknown_08016A30
_0800404C:
	movs r0, #0
	movs r1, #0xc5
	bl sub_8002BD0
	cmp r0, #0
	bne _08004064
	movs r0, #0x9a
	lsls r0, r0, #1
	movs r1, #0xc5
	bl sub_8002CCC
	b _0800407A
_08004064:
	movs r0, #0
	movs r1, #0xcb
	bl sub_8002BD0
	cmp r0, #0
	bne _0800407A
	movs r0, #0x18
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_0800407A:
	ldr r1, _08004090
	ldr r0, _08004094
_0800407E:
	str r0, [r1]
	ldr r0, _08004098
	str r0, [r1, #4]
	ldr r0, _0800409C
_08004086:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800408A:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08004090: .4byte 0x040000D4
_08004094: .4byte gUnknown_080169A4
_08004098: .4byte gUnknown_03003AC0
_0800409C: .4byte 0x80000046

	THUMB_FUNC_START nullsub_9
nullsub_9: @ 0x080040A0
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_80040A4
sub_80040A4: @ 0x080040A4
	ldr r2, _080040CC
	ldr r1, _080040D0
	str r1, [r2]
	ldr r1, _080040D4
	str r1, [r2, #4]
	ldr r1, _080040D8
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _080040DC
	str r1, [r2]
	ldr r1, _080040E0
	str r1, [r2, #4]
	ldr r1, _080040E4
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #6
	strb r1, [r0]
	bx lr
	.align 2, 0
_080040CC: .4byte 0x040000D4
_080040D0: .4byte gUnknown_08016C70
_080040D4: .4byte gUnknown_03003730+0xD8
_080040D8: .4byte 0x80000038
_080040DC: .4byte gUnknown_08016B6C
_080040E0: .4byte gUnknown_030028A0
_080040E4: .4byte 0x80000082

	THUMB_FUNC_START sub_80040E8
sub_80040E8: @ 0x080040E8
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _0800411C
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08004120
	mov r1, sp
	str r1, [r2]
	ldr r1, _08004124
	str r1, [r2, #4]
	ldr r1, _08004128
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #0xb
	bls _08004110
	b _0800446E
_08004110:
	lsls r0, r0, #2
	ldr r1, _0800412C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800411C: .4byte 0x0000FFFF
_08004120: .4byte 0x040000D4
_08004124: .4byte gUnknown_03003AC0
_08004128: .4byte 0x810000A0
_0800412C: .4byte _08004130
_08004130: @ jump table
	.4byte _0800419C @ case 0
	.4byte _0800446E @ case 1
	.4byte _0800446E @ case 2
	.4byte _0800446E @ case 3
	.4byte _08004160 @ case 4
	.4byte _080041E0 @ case 5
	.4byte _08004258 @ case 6
	.4byte _080042F4 @ case 7
	.4byte _080043B8 @ case 8
	.4byte _0800446E @ case 9
	.4byte _080043F4 @ case 10
	.4byte _08004434 @ case 11
_08004160:
	movs r0, #0
	movs r1, #0xe0
	bl sub_8002BD0
	cmp r0, #0
	beq _0800417E
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl sub_800F408
_0800417E:
	ldr r1, _0800418C
	ldr r0, _08004190
	str r0, [r1]
	ldr r0, _08004194
	str r0, [r1, #4]
	ldr r0, _08004198
	b _0800446A
	.align 2, 0
_0800418C: .4byte 0x040000D4
_08004190: .4byte gUnknown_08016CE0
_08004194: .4byte gUnknown_03003AC0
_08004198: .4byte 0x80000032
_0800419C:
	movs r0, #0
	movs r1, #0xe1
	bl sub_8002BD0
	cmp r0, #0
	bne _080041B2
	movs r0, #0x8e
	movs r1, #0xe1
	bl sub_8002CCC
	b _080041C2
_080041B2:
	movs r0, #0x1b
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0
	bl sub_800F408
_080041C2:
	ldr r1, _080041D0
	ldr r0, _080041D4
	str r0, [r1]
	ldr r0, _080041D8
	str r0, [r1, #4]
	ldr r0, _080041DC
	b _0800446A
	.align 2, 0
_080041D0: .4byte 0x040000D4
_080041D4: .4byte gUnknown_08016D44
_080041D8: .4byte gUnknown_03003AC0
_080041DC: .4byte 0x80000014
_080041E0:
	movs r0, #2
	movs r1, #0x77
	bl sub_8002BD0
	cmp r0, #0
	beq _08004214
	movs r0, #0
	movs r1, #0xee
	bl sub_8002BD0
	cmp r0, #0
	bne _08004202
	movs r0, #0xa3
	movs r1, #0xee
	bl sub_8002CCC
	b _0800423A
_08004202:
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl sub_800F408
	b _0800423A
_08004214:
	movs r0, #0
	movs r1, #0xe2
	bl sub_8002BD0
	cmp r0, #0
	bne _0800422A
	movs r0, #0x98
	movs r1, #0xe2
	bl sub_8002CCC
	b _0800423A
_0800422A:
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl sub_800F408
_0800423A:
	ldr r1, _08004248
	ldr r0, _0800424C
	str r0, [r1]
	ldr r0, _08004250
	str r0, [r1, #4]
	ldr r0, _08004254
	b _0800446A
	.align 2, 0
_08004248: .4byte 0x040000D4
_0800424C: .4byte gUnknown_08016D6C
_08004250: .4byte gUnknown_03003AC0
_08004254: .4byte 0x80000032
_08004258:
	movs r0, #0
	movs r1, #0xef
	bl sub_8002BD0
	adds r4, r0, #0
	cmp r4, #0
	beq _0800427C
	movs r0, #0
	movs r1, #0xf0
	bl sub_8002BD0
	cmp r0, #0
	bne _080042C8
	movs r0, #0xc6
	movs r1, #0xf0
	bl sub_8002CCC
	b _080042C8
_0800427C:
	movs r0, #0
	movs r1, #0xe3
	bl sub_8002BD0
	cmp r0, #0
	bne _08004292
	movs r0, #0xb4
	movs r1, #0xe3
	bl sub_8002CCC
	b _080042C8
_08004292:
	movs r0, #0
	movs r1, #0xe4
	bl sub_8002BD0
	cmp r0, #0
	beq _080042C2
	ldr r0, _080042D8
	adds r1, r0, #0
	adds r1, #0x90
	strh r4, [r1]
	adds r0, #0x92
	strh r4, [r0]
	ldr r0, _080042DC
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8010048
	ldr r0, _080042E0
	movs r1, #1
	strb r1, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
_080042C2:
	movs r0, #1
	bl sub_800F408
_080042C8:
	ldr r1, _080042E4
	ldr r0, _080042E8
	str r0, [r1]
	ldr r0, _080042EC
	str r0, [r1, #4]
	ldr r0, _080042F0
	b _0800446A
	.align 2, 0
_080042D8: .4byte gUnknown_03003730
_080042DC: .4byte 0x00008014
_080042E0: .4byte gUnknown_03003A50
_080042E4: .4byte 0x040000D4
_080042E8: .4byte gUnknown_08016DD0
_080042EC: .4byte gUnknown_03003AC0
_080042F0: .4byte 0x80000064
_080042F4:
	movs r0, #0
	movs r1, #0xef
	bl sub_8002BD0
	cmp r0, #0
	beq _08004334
	movs r0, #0
	movs r1, #0xf1
	bl sub_8002BD0
	cmp r0, #0
	bne _08004314
	movs r0, #0xdf
	movs r1, #0xf1
	bl sub_8002CCC
_08004314:
	ldr r1, _08004324
	ldr r0, _08004328
	str r0, [r1]
	ldr r0, _0800432C
	str r0, [r1, #4]
	ldr r0, _08004330
	b _0800446A
	.align 2, 0
_08004324: .4byte 0x040000D4
_08004328: .4byte gUnknown_08016E98
_0800432C: .4byte gUnknown_03003AC0
_08004330: .4byte 0x80000046
_08004334:
	movs r0, #0
	movs r1, #0xe9
	bl sub_8002BD0
	cmp r0, #0
	beq _08004384
	movs r0, #0
	movs r1, #0xea
	bl sub_8002BD0
	cmp r0, #0
	bne _08004356
	movs r0, #0xca
	movs r1, #0xea
	bl sub_8002CCC
	b _08004366
_08004356:
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl sub_800F408
_08004366:
	ldr r1, _08004374
	ldr r0, _08004378
	str r0, [r1]
	ldr r0, _0800437C
	str r0, [r1, #4]
	ldr r0, _08004380
	b _0800446A
	.align 2, 0
_08004374: .4byte 0x040000D4
_08004378: .4byte gUnknown_08016F24
_0800437C: .4byte gUnknown_03003AC0
_08004380: .4byte 0x80000046
_08004384:
	movs r0, #0
	movs r1, #0xe5
	bl sub_8002BD0
	cmp r0, #0
	bne _08004398
	movs r0, #0xc7
	movs r1, #0xe5
	bl sub_8002CCC
_08004398:
	ldr r1, _080043A8
	ldr r0, _080043AC
	str r0, [r1]
	ldr r0, _080043B0
	str r0, [r1, #4]
	ldr r0, _080043B4
	b _0800446A
	.align 2, 0
_080043A8: .4byte 0x040000D4
_080043AC: .4byte gUnknown_08016E98
_080043B0: .4byte gUnknown_03003AC0
_080043B4: .4byte 0x80000046
_080043B8:
	movs r0, #0
	movs r1, #0xe6
	bl sub_8002BD0
	cmp r0, #0
	bne _080043CE
	movs r0, #0xe0
	movs r1, #0xe6
	bl sub_8002CCC
	b _080043D4
_080043CE:
	movs r0, #0x1f
	bl sub_800F408
_080043D4:
	ldr r1, _080043E4
	ldr r0, _080043E8
	str r0, [r1]
	ldr r0, _080043EC
	str r0, [r1, #4]
	ldr r0, _080043F0
	b _0800446A
	.align 2, 0
_080043E4: .4byte 0x040000D4
_080043E8: .4byte gUnknown_08016FB0
_080043EC: .4byte gUnknown_03003AC0
_080043F0: .4byte 0x8000003C
_080043F4:
	movs r0, #0
	movs r1, #0xe7
	bl sub_8002BD0
	cmp r0, #0
	bne _0800440A
	movs r0, #0xe7
	movs r1, #0xe7
	bl sub_8002CCC
	b _08004426
_0800440A:
	movs r0, #0
	movs r1, #0xf2
	bl sub_8002BD0
	cmp r0, #0
	bne _08004420
	movs r0, #0x18
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_08004420:
	movs r0, #0x1f
	bl sub_800F408
_08004426:
	ldr r1, _0800442C
	ldr r0, _08004430
	b _08004462
	.align 2, 0
_0800442C: .4byte 0x040000D4
_08004430: .4byte gUnknown_08017028
_08004434:
	movs r0, #0
	movs r1, #0xf2
	bl sub_8002BD0
	cmp r0, #0
	beq _0800444A
	movs r0, #0xff
	movs r1, #0xff
	bl sub_8002CCC
	b _0800445E
_0800444A:
	movs r0, #0
	movs r1, #0xe8
	bl sub_8002BD0
	cmp r0, #0
	bne _0800445E
	movs r0, #0xf7
	movs r1, #0xe8
	bl sub_8002CCC
_0800445E:
	ldr r1, _08004478
	ldr r0, _0800447C
_08004462:
	str r0, [r1]
	ldr r0, _08004480
	str r0, [r1, #4]
	ldr r0, _08004484
_0800446A:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800446E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004478: .4byte 0x040000D4
_0800447C: .4byte gUnknown_080170DC
_08004480: .4byte gUnknown_03003AC0
_08004484: .4byte 0x8000005A

	THUMB_FUNC_START sub_8004488
sub_8004488: @ 0x08004488
	push {lr}
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #2
	bne _080044CC
	movs r0, #0
	movs r1, #0xe9
	bl sub_8002BD0
	cmp r0, #0
	bne _080044CC
	movs r0, #2
	movs r1, #0x6d
	bl sub_8002BD0
	cmp r0, #0
	beq _080044CC
	movs r0, #2
	movs r1, #0x6e
	bl sub_8002BD0
	cmp r0, #0
	beq _080044CC
	movs r0, #2
	movs r1, #0x6f
	bl sub_8002BD0
	cmp r0, #0
	beq _080044CC
	movs r0, #0
	movs r1, #0xe9
	movs r2, #1
	bl sub_8002B94
_080044CC:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80044D0
sub_80044D0: @ 0x080044D0
	ldr r2, _080044F8
	ldr r1, _080044FC
	str r1, [r2]
	ldr r1, _08004500
	str r1, [r2, #4]
	ldr r1, _08004504
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08004508
	str r1, [r2]
	ldr r1, _0800450C
	str r1, [r2, #4]
	ldr r1, _08004510
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #6
	strb r1, [r0]
	bx lr
	.align 2, 0
_080044F8: .4byte 0x040000D4
_080044FC: .4byte gUnknown_08017590
_08004500: .4byte gUnknown_03003730+0xD8
_08004504: .4byte 0x80000054
_08004508: .4byte gUnknown_080173B0
_0800450C: .4byte gUnknown_030028A0
_08004510: .4byte 0x800000F0

	THUMB_FUNC_START sub_8004514
sub_8004514: @ 0x08004514
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08004548
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _0800454C
	mov r1, sp
	str r1, [r2]
	ldr r1, _08004550
	str r1, [r2, #4]
	ldr r1, _08004554
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #0x11
	bls _0800453C
	b _080049DC
_0800453C:
	lsls r0, r0, #2
	ldr r1, _08004558
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004548: .4byte 0x0000FFFF
_0800454C: .4byte 0x040000D4
_08004550: .4byte gUnknown_03003AC0
_08004554: .4byte 0x810000A0
_08004558: .4byte _0800455C
_0800455C: @ jump table
	.4byte _08004608 @ case 0
	.4byte _08004978 @ case 1
	.4byte _080049DC @ case 2
	.4byte _080049DC @ case 3
	.4byte _080045A4 @ case 4
	.4byte _080049DC @ case 5
	.4byte _080049DC @ case 6
	.4byte _080049DC @ case 7
	.4byte _080049DC @ case 8
	.4byte _080049DC @ case 9
	.4byte _080049DC @ case 10
	.4byte _080049DC @ case 11
	.4byte _080048C4 @ case 12
	.4byte _080049DC @ case 13
	.4byte _080046A0 @ case 14
	.4byte _0800473C @ case 15
	.4byte _080047DC @ case 16
	.4byte _08004888 @ case 17
_080045A4:
	movs r0, #0
	movs r1, #0xa2
	bl sub_8002BD0
	cmp r0, #0
	beq _080045DA
	movs r0, #0
	movs r1, #0xa7
	bl sub_8002BD0
	cmp r0, #0
	bne _080045C6
	movs r0, #0x8b
	movs r1, #0xa7
	bl sub_8002CCC
	b _080045F8
_080045C6:
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl sub_800F408
	b _080045F8
_080045DA:
	movs r0, #0
	movs r1, #0x9f
	bl sub_8002BD0
	cmp r0, #0
	beq _080045F8
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl sub_800F408
_080045F8:
	ldr r1, _08004600
	ldr r0, _08004604
	b _080049D0
	.align 2, 0
_08004600: .4byte 0x040000D4
_08004604: .4byte gUnknown_08017638
_08004608:
	movs r0, #0
	movs r1, #0xb1
	bl sub_8002BD0
	cmp r0, #0
	beq _0800464C
	movs r0, #0
	movs r1, #0xb2
	bl sub_8002BD0
	cmp r0, #0
	bne _0800462A
	movs r0, #0x99
	movs r1, #0xb2
	bl sub_8002CCC
	b _0800467E
_0800462A:
	movs r0, #0
	movs r1, #0xb9
	bl sub_8002BD0
	cmp r0, #0
	bne _08004640
	ldr r2, _08004648
	movs r0, #9
	adds r1, r2, #0
	bl sub_8002C98
_08004640:
	movs r0, #0
	bl sub_800F408
	b _0800467E
	.align 2, 0
_08004648: .4byte 0x000055D0
_0800464C:
	movs r0, #0
	movs r1, #0x90
	bl sub_8002BD0
	cmp r0, #0
	bne _08004662
	movs r0, #0x91
	movs r1, #0x90
	bl sub_8002CCC
	b _0800467E
_08004662:
	movs r0, #2
	movs r1, #0x85
	bl sub_8002BD0
	cmp r0, #0
	bne _08004678
	ldr r2, _0800468C
	movs r0, #9
	adds r1, r2, #0
	bl sub_8002C98
_08004678:
	movs r0, #0
	bl sub_800F408
_0800467E:
	ldr r1, _08004690
	ldr r0, _08004694
	str r0, [r1]
	ldr r0, _08004698
	str r0, [r1, #4]
	ldr r0, _0800469C
	b _080049D8
	.align 2, 0
_0800468C: .4byte 0x000055D0
_08004690: .4byte 0x040000D4
_08004694: .4byte gUnknown_0801769C
_08004698: .4byte gUnknown_03003AC0
_0800469C: .4byte 0x80000014
_080046A0:
	movs r0, #0
	movs r1, #0x94
	bl sub_8002BD0
	cmp r0, #0
	bne _080046B6
	movs r0, #0xa7
	movs r1, #0x94
	bl sub_8002CCC
	b _0800471E
_080046B6:
	movs r0, #0
	movs r1, #0x98
	bl sub_8002BD0
	cmp r0, #0
	bne _08004718
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #2
	movs r1, #0x8b
	bl sub_8002BD0
	cmp r0, #0
	beq _08004710
	movs r0, #2
	movs r1, #0x8c
	bl sub_8002BD0
	cmp r0, #0
	beq _08004710
	movs r0, #2
	movs r1, #0x8d
	bl sub_8002BD0
	cmp r0, #0
	beq _08004710
	movs r0, #2
	movs r1, #0x8e
	bl sub_8002BD0
	cmp r0, #0
	beq _08004710
	movs r0, #0
	movs r1, #0x91
	bl sub_8002BD0
	cmp r0, #0
	beq _08004710
	movs r0, #0xa8
	movs r1, #0x98
	bl sub_8002CCC
_08004710:
	movs r0, #1
	bl sub_800F408
	b _0800471E
_08004718:
	movs r0, #0x1f
	bl sub_800F408
_0800471E:
	ldr r1, _0800472C
	ldr r0, _08004730
	str r0, [r1]
	ldr r0, _08004734
	str r0, [r1, #4]
	ldr r0, _08004738
	b _080049D8
	.align 2, 0
_0800472C: .4byte 0x040000D4
_08004730: .4byte gUnknown_080176C4
_08004734: .4byte gUnknown_03003AC0
_08004738: .4byte 0x80000028
_0800473C:
	movs r0, #0
	movs r1, #0xa8
	bl sub_8002BD0
	cmp r0, #0
	beq _08004790
	movs r0, #0
	movs r1, #0xa9
	bl sub_8002BD0
	cmp r0, #0
	bne _0800475E
	movs r0, #0xb7
	movs r1, #0xa9
	bl sub_8002CCC
	b _0800476E
_0800475E:
	ldr r2, _0800477C
	movs r0, #0x19
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0x16
	bl sub_800F408
_0800476E:
	ldr r1, _08004780
	ldr r0, _08004784
	str r0, [r1]
	ldr r0, _08004788
	str r0, [r1, #4]
	ldr r0, _0800478C
	b _080049D8
	.align 2, 0
_0800477C: .4byte 0x00003F70
_08004780: .4byte 0x040000D4
_08004784: .4byte gUnknown_080177A0
_08004788: .4byte gUnknown_03003AC0
_0800478C: .4byte 0x8000003C
_08004790:
	movs r0, #0
	movs r1, #0x99
	bl sub_8002BD0
	cmp r0, #0
	bne _080047A6
	movs r0, #0xb3
	movs r1, #0x99
	bl sub_8002CCC
	b _080047AC
_080047A6:
	movs r0, #0x1f
	bl sub_800F408
_080047AC:
	movs r0, #0
	movs r1, #0xa0
	bl sub_8002BD0
	cmp r0, #0
	bne _080047BE
	movs r0, #0x10
	bl sub_8010204
_080047BE:
	ldr r1, _080047CC
	ldr r0, _080047D0
	str r0, [r1]
	ldr r0, _080047D4
	str r0, [r1, #4]
	ldr r0, _080047D8
	b _080049D8
	.align 2, 0
_080047CC: .4byte 0x040000D4
_080047D0: .4byte gUnknown_08017714
_080047D4: .4byte gUnknown_03003AC0
_080047D8: .4byte 0x80000046
_080047DC:
	movs r0, #0
	movs r1, #0xa2
	bl sub_8002BD0
	cmp r0, #0
	beq _08004806
	movs r0, #0
	movs r1, #0xa8
	bl sub_8002BD0
	cmp r0, #0
	bne _080047FE
	movs r0, #0xd1
	movs r1, #0xa8
	bl sub_8002CCC
	b _0800486A
_080047FE:
	movs r0, #0x1f
	bl sub_800F408
	b _0800486A
_08004806:
	movs r0, #0
	movs r1, #0x9a
	bl sub_8002BD0
	cmp r0, #0
	bne _0800481C
	movs r0, #0xc3
	movs r1, #0x9a
	bl sub_8002CCC
	b _0800486A
_0800481C:
	movs r0, #0
	movs r1, #0xa1
	bl sub_8002BD0
	cmp r0, #0
	beq _08004864
	movs r0, #0
	movs r1, #0x9e
	bl sub_8002BD0
	cmp r0, #0
	bne _08004864
	movs r0, #0
	movs r1, #0x9c
	bl sub_8002BD0
	cmp r0, #0
	beq _0800484C
	movs r0, #0x1f
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	b _08004856
_0800484C:
	ldr r2, _08004860
	movs r0, #0x1f
	adds r1, r2, #0
	bl sub_8002C98
_08004856:
	movs r0, #0x16
	bl sub_800F408
	b _0800486A
	.align 2, 0
_08004860: .4byte 0x00000B94
_08004864:
	movs r0, #0x1f
	bl sub_800F408
_0800486A:
	ldr r1, _08004878
	ldr r0, _0800487C
	str r0, [r1]
	ldr r0, _08004880
	str r0, [r1, #4]
	ldr r0, _08004884
	b _080049D8
	.align 2, 0
_08004878: .4byte 0x040000D4
_0800487C: .4byte gUnknown_08017818
_08004880: .4byte gUnknown_03003AC0
_08004884: .4byte 0x80000046
_08004888:
	movs r0, #0
	movs r1, #0xa4
	bl sub_8002BD0
	cmp r0, #0
	bne _0800489E
	movs r0, #0xc2
	movs r1, #0xa4
	bl sub_8002CCC
	b _080048A4
_0800489E:
	movs r0, #0x1f
	bl sub_800F408
_080048A4:
	ldr r1, _080048B4
	ldr r0, _080048B8
	str r0, [r1]
	ldr r0, _080048BC
	str r0, [r1, #4]
	ldr r0, _080048C0
	b _080049D8
	.align 2, 0
_080048B4: .4byte 0x040000D4
_080048B8: .4byte gUnknown_080178A4
_080048BC: .4byte gUnknown_03003AC0
_080048C0: .4byte 0x8000001E
_080048C4:
	movs r0, #0
	movs r1, #0xb1
	bl sub_8002BD0
	cmp r0, #0
	beq _080048E6
	movs r0, #0
	movs r1, #0xb7
	bl sub_8002BD0
	cmp r0, #0
	bne _0800492A
	movs r0, #0xdf
	movs r1, #0xb7
	bl sub_8002CCC
	b _08004958
_080048E6:
	movs r0, #0
	movs r1, #0xa8
	bl sub_8002BD0
	cmp r0, #0
	beq _08004908
	movs r0, #0
	movs r1, #0xae
	bl sub_8002BD0
	cmp r0, #0
	bne _08004934
	movs r0, #0xde
	movs r1, #0xae
	bl sub_8002CCC
	b _08004958
_08004908:
	movs r0, #0
	movs r1, #0x9e
	bl sub_8002BD0
	cmp r0, #0
	beq _0800493C
	movs r0, #0
	movs r1, #0xa6
	bl sub_8002BD0
	cmp r0, #0
	bne _0800492A
	movs r0, #0xd6
	movs r1, #0xa6
	bl sub_8002CCC
	b _08004958
_0800492A:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_08004934:
	movs r0, #1
	bl sub_800F408
	b _08004958
_0800493C:
	movs r0, #0
	movs r1, #0xa5
	bl sub_8002BD0
	cmp r0, #0
	bne _08004952
	movs r0, #0xd5
	movs r1, #0xa5
	bl sub_8002CCC
	b _08004958
_08004952:
	movs r0, #1
	bl sub_800F408
_08004958:
	ldr r1, _08004968
	ldr r0, _0800496C
	str r0, [r1]
	ldr r0, _08004970
	str r0, [r1, #4]
	ldr r0, _08004974
	b _080049D8
	.align 2, 0
_08004968: .4byte 0x040000D4
_0800496C: .4byte gUnknown_080178E0
_08004970: .4byte gUnknown_03003AC0
_08004974: .4byte 0x8000003C
_08004978:
	movs r0, #2
	movs r1, #0x91
	bl sub_8002BD0
	cmp r0, #0
	beq _080049B8
	movs r0, #0
	movs r1, #0xad
	bl sub_8002BD0
	cmp r0, #0
	beq _080049B8
	movs r0, #0
	movs r1, #0xaf
	bl sub_8002BD0
	cmp r0, #0
	bne _080049A6
	movs r0, #0xeb
	movs r1, #0xaf
	bl sub_8002CCC
	b _080049CC
_080049A6:
	movs r0, #0xc
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x1a
	bl sub_800F408
	b _080049CC
_080049B8:
	movs r0, #0
	movs r1, #0xac
	bl sub_8002BD0
	cmp r0, #0
	bne _080049CC
	movs r0, #0xe5
	movs r1, #0xac
	bl sub_8002CCC
_080049CC:
	ldr r1, _080049E4
	ldr r0, _080049E8
_080049D0:
	str r0, [r1]
	ldr r0, _080049EC
	str r0, [r1, #4]
	ldr r0, _080049F0
_080049D8:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080049DC:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080049E4: .4byte 0x040000D4
_080049E8: .4byte gUnknown_08017958
_080049EC: .4byte gUnknown_03003AC0
_080049F0: .4byte 0x80000032

	THUMB_FUNC_START nullsub_10
nullsub_10: @ 0x080049F4
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_80049F8
sub_80049F8: @ 0x080049F8
	ldr r2, _08004A20
	ldr r1, _08004A24
	str r1, [r2]
	ldr r1, _08004A28
	str r1, [r2, #4]
	ldr r1, _08004A2C
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08004A30
	str r1, [r2]
	ldr r1, _08004A34
	str r1, [r2, #4]
	ldr r1, _08004A38
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08004A20: .4byte 0x040000D4
_08004A24: .4byte gUnknown_08017C8C
_08004A28: .4byte gUnknown_03003730+0xD8
_08004A2C: .4byte 0x80000054
_08004A30: .4byte gUnknown_08017B24
_08004A34: .4byte gUnknown_030028A0
_08004A38: .4byte 0x800000B4

	THUMB_FUNC_START sub_8004A3C
sub_8004A3C: @ 0x08004A3C
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08004A70
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08004A74
	mov r1, sp
	str r1, [r2]
	ldr r1, _08004A78
	str r1, [r2, #4]
	ldr r1, _08004A7C
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #0x12
	bls _08004A64
	b _08005018
_08004A64:
	lsls r0, r0, #2
	ldr r1, _08004A80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004A70: .4byte 0x0000FFFF
_08004A74: .4byte 0x040000D4
_08004A78: .4byte gUnknown_03003AC0
_08004A7C: .4byte 0x810000A0
_08004A80: .4byte _08004A84
_08004A84: @ jump table
	.4byte _08004B28 @ case 0
	.4byte _08004FF4 @ case 1
	.4byte _08005018 @ case 2
	.4byte _08005018 @ case 3
	.4byte _08004AD0 @ case 4
	.4byte _08005018 @ case 5
	.4byte _08005018 @ case 6
	.4byte _08005018 @ case 7
	.4byte _08005018 @ case 8
	.4byte _08005018 @ case 9
	.4byte _08005018 @ case 10
	.4byte _08005018 @ case 11
	.4byte _08004ED8 @ case 12
	.4byte _08004FAC @ case 13
	.4byte _08004BA8 @ case 14
	.4byte _08004C2C @ case 15
	.4byte _08004CE0 @ case 16
	.4byte _08004DAC @ case 17
	.4byte _08004E78 @ case 18
_08004AD0:
	movs r0, #0
	movs r1, #0xc3
	bl sub_8002BD0
	cmp r0, #0
	beq _08004B06
	movs r0, #0
	movs r1, #0xc1
	bl sub_8002BD0
	cmp r0, #0
	bne _08004AF2
	movs r0, #0x86
	movs r1, #0xc1
	bl sub_8002CCC
	b _08004B1A
_08004AF2:
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl sub_800F408
	b _08004B1A
_08004B06:
	movs r0, #0
	movs r1, #0xc0
	bl sub_8002BD0
	cmp r0, #0
	bne _08004B1A
	movs r0, #0x80
	movs r1, #0xc0
	bl sub_8002CCC
_08004B1A:
	ldr r1, _08004B20
	ldr r0, _08004B24
	b _0800500C
	.align 2, 0
_08004B20: .4byte 0x040000D4
_08004B24: .4byte gUnknown_08017D34
_08004B28:
	movs r0, #0
	movs r1, #0xc3
	bl sub_8002BD0
	cmp r0, #0
	beq _08004B4A
	movs r0, #0
	movs r1, #0xc4
	bl sub_8002BD0
	cmp r0, #0
	bne _08004B86
	movs r0, #0x99
	movs r1, #0xc4
	bl sub_8002CCC
	b _08004B86
_08004B4A:
	movs r0, #0
	movs r1, #0xc5
	bl sub_8002BD0
	cmp r0, #0
	beq _08004B60
	movs r0, #0x96
	movs r1, #0xc3
	bl sub_8002CCC
	b _08004B86
_08004B60:
	movs r0, #0
	movs r1, #0xc2
	bl sub_8002BD0
	cmp r0, #0
	bne _08004B76
	movs r0, #0x8a
	movs r1, #0xc2
	bl sub_8002CCC
	b _08004B86
_08004B76:
	ldr r2, _08004B94
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl sub_800F408
_08004B86:
	ldr r1, _08004B98
	ldr r0, _08004B9C
	str r0, [r1]
	ldr r0, _08004BA0
	str r0, [r1, #4]
	ldr r0, _08004BA4
	b _08005014
	.align 2, 0
_08004B94: .4byte 0x000017B8
_08004B98: .4byte 0x040000D4
_08004B9C: .4byte gUnknown_08017D98
_08004BA0: .4byte gUnknown_03003AC0
_08004BA4: .4byte 0x80000014
_08004BA8:
	movs r0, #0
	movs r1, #0xc3
	bl sub_8002BD0
	cmp r0, #0
	beq _08004BF0
	movs r0, #0
	movs r1, #0xc7
	bl sub_8002BD0
	cmp r0, #0
	bne _08004BCA
	movs r0, #0x9b
	movs r1, #0xc7
	bl sub_8002CCC
	b _08004C0C
_08004BCA:
	movs r0, #0
	movs r1, #0xc8
	bl sub_8002BD0
	cmp r0, #0
	bne _08004BE8
	movs r0, #0x1f
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x16
	bl sub_800F408
	b _08004C0C
_08004BE8:
	movs r0, #0x1f
	bl sub_800F408
	b _08004C0C
_08004BF0:
	movs r0, #0
	movs r1, #0xc6
	bl sub_8002BD0
	cmp r0, #0
	bne _08004C06
	movs r0, #0x9a
	movs r1, #0xc6
	bl sub_8002CCC
	b _08004C0C
_08004C06:
	movs r0, #0x1f
	bl sub_800F408
_08004C0C:
	ldr r1, _08004C1C
	ldr r0, _08004C20
	str r0, [r1]
	ldr r0, _08004C24
	str r0, [r1, #4]
	ldr r0, _08004C28
	b _08005014
	.align 2, 0
_08004C1C: .4byte 0x040000D4
_08004C20: .4byte gUnknown_08017DC0
_08004C24: .4byte gUnknown_03003AC0
_08004C28: .4byte 0x80000028
_08004C2C:
	movs r0, #0
	movs r1, #0xc3
	bl sub_8002BD0
	cmp r0, #0
	beq _08004CA4
	movs r0, #0
	movs r1, #0xca
	bl sub_8002BD0
	cmp r0, #0
	bne _08004C4E
	movs r0, #0xa6
	movs r1, #0xca
	bl sub_8002CCC
	b _08004C80
_08004C4E:
	movs r0, #0
	movs r1, #0xcb
	bl sub_8002BD0
	cmp r0, #0
	bne _08004C70
	movs r0, #0
	movs r1, #0xd0
	bl sub_8002BD0
	cmp r0, #0
	beq _08004C70
	movs r0, #0xa7
	movs r1, #0xcb
	bl sub_8002CCC
	b _08004C7A
_08004C70:
	ldr r2, _08004C90
	movs r0, #0x19
	adds r1, r2, #0
	bl sub_8002C98
_08004C7A:
	movs r0, #0x15
	bl sub_800F408
_08004C80:
	ldr r1, _08004C94
	ldr r0, _08004C98
	str r0, [r1]
	ldr r0, _08004C9C
	str r0, [r1, #4]
	ldr r0, _08004CA0
	b _08005014
	.align 2, 0
_08004C90: .4byte 0x000013B0
_08004C94: .4byte 0x040000D4
_08004C98: .4byte gUnknown_08017E88
_08004C9C: .4byte gUnknown_03003AC0
_08004CA0: .4byte 0x8000006E
_08004CA4:
	movs r0, #0
	movs r1, #0xc9
	bl sub_8002BD0
	cmp r0, #0
	bne _08004CBA
	movs r0, #0xa5
	movs r1, #0xc9
	bl sub_8002CCC
	b _08004CC0
_08004CBA:
	movs r0, #0x1f
	bl sub_800F408
_08004CC0:
	ldr r1, _08004CD0
	ldr r0, _08004CD4
	str r0, [r1]
	ldr r0, _08004CD8
	str r0, [r1, #4]
	ldr r0, _08004CDC
	b _08005014
	.align 2, 0
_08004CD0: .4byte 0x040000D4
_08004CD4: .4byte gUnknown_08017E10
_08004CD8: .4byte gUnknown_03003AC0
_08004CDC: .4byte 0x8000003C
_08004CE0:
	movs r0, #0
	movs r1, #0xc8
	bl sub_8002BD0
	cmp r0, #0
	beq _08004D50
	movs r0, #0
	movs r1, #0xf1
	bl sub_8002BD0
	cmp r0, #0
	bne _08004D10
	movs r0, #0
	movs r1, #0xcf
	bl sub_8002BD0
	cmp r0, #0
	beq _08004D10
	movs r0, #0x9c
	lsls r0, r0, #1
	movs r1, #0xf1
	bl sub_8002CCC
	b _08004D8E
_08004D10:
	movs r0, #0
	movs r1, #0xd3
	bl sub_8002BD0
	cmp r0, #0
	bne _08004D26
	movs r0, #0xc9
	movs r1, #0xd3
	bl sub_8002CCC
	b _08004D8E
_08004D26:
	movs r0, #0
	movs r1, #0xd7
	bl sub_8002BD0
	cmp r0, #0
	bne _08004D48
	ldr r0, _08004D44
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x16
	bl sub_800F408
	b _08004D8E
	.align 2, 0
_08004D44: .4byte 0x0000401F
_08004D48:
	movs r0, #0x1f
	bl sub_800F408
	b _08004D8E
_08004D50:
	movs r0, #0
	movs r1, #0xd2
	bl sub_8002BD0
	cmp r0, #0
	bne _08004D66
	movs r0, #0xbc
	movs r1, #0xd2
	bl sub_8002CCC
	b _08004D8E
_08004D66:
	movs r0, #0
	movs r1, #0xc5
	bl sub_8002BD0
	cmp r0, #0
	bne _08004D88
	ldr r0, _08004D84
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #1
	bl sub_800F408
	b _08004D8E
	.align 2, 0
_08004D84: .4byte 0x00004014
_08004D88:
	movs r0, #0x1f
	bl sub_800F408
_08004D8E:
	ldr r1, _08004D9C
	ldr r0, _08004DA0
	str r0, [r1]
	ldr r0, _08004DA4
	str r0, [r1, #4]
	ldr r0, _08004DA8
	b _08005014
	.align 2, 0
_08004D9C: .4byte 0x040000D4
_08004DA0: .4byte gUnknown_08017F64
_08004DA4: .4byte gUnknown_03003AC0
_08004DA8: .4byte 0x80000046
_08004DAC:
	movs r0, #0
	movs r1, #0xdd
	bl sub_8002BD0
	cmp r0, #0
	beq _08004DCE
	movs r0, #0
	movs r1, #0xdb
	bl sub_8002BD0
	cmp r0, #0
	bne _08004E34
	movs r0, #0xbb
	movs r1, #0xdb
	bl sub_8002CCC
	b _08004E58
_08004DCE:
	movs r0, #0
	movs r1, #0xd7
	bl sub_8002BD0
	cmp r0, #0
	beq _08004DF0
	movs r0, #0
	movs r1, #0xda
	bl sub_8002BD0
	cmp r0, #0
	bne _08004E34
	movs r0, #0xba
	movs r1, #0xda
	bl sub_8002CCC
	b _08004E58
_08004DF0:
	movs r0, #0
	movs r1, #0xc8
	bl sub_8002BD0
	cmp r0, #0
	beq _08004E3C
	movs r0, #0
	movs r1, #0xd9
	bl sub_8002BD0
	cmp r0, #0
	bne _08004E12
	movs r0, #0xb8
	movs r1, #0xd9
	bl sub_8002CCC
	b _08004E58
_08004E12:
	movs r0, #0
	movs r1, #0xdc
	bl sub_8002BD0
	cmp r0, #0
	bne _08004E34
	movs r0, #0
	movs r1, #0xd1
	bl sub_8002BD0
	cmp r0, #0
	beq _08004E34
	movs r0, #0xb9
	movs r1, #0xdc
	bl sub_8002CCC
	b _08004E58
_08004E34:
	movs r0, #0x1f
	bl sub_800F408
	b _08004E58
_08004E3C:
	movs r0, #0
	movs r1, #0xd8
	bl sub_8002BD0
	cmp r0, #0
	bne _08004E52
	movs r0, #0xb7
	movs r1, #0xd8
	bl sub_8002CCC
	b _08004E58
_08004E52:
	movs r0, #0x1f
	bl sub_800F408
_08004E58:
	ldr r1, _08004E68
	ldr r0, _08004E6C
	str r0, [r1]
	ldr r0, _08004E70
	str r0, [r1, #4]
	ldr r0, _08004E74
	b _08005014
	.align 2, 0
_08004E68: .4byte 0x040000D4
_08004E6C: .4byte gUnknown_08017FF0
_08004E70: .4byte gUnknown_03003AC0
_08004E74: .4byte 0x8000001E
_08004E78:
	movs r0, #0
	movs r1, #0xe6
	bl sub_8002BD0
	cmp r0, #0
	bne _08004E8E
	movs r0, #0xf5
	movs r1, #0xe6
	bl sub_8002CCC
	b _08004EB8
_08004E8E:
	movs r0, #0
	movs r1, #0xe7
	bl sub_8002BD0
	cmp r0, #0
	beq _08004EA6
	movs r0, #0x20
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	b _08004EB2
_08004EA6:
	movs r2, #0xad
	lsls r2, r2, #4
	movs r0, #0x20
	adds r1, r2, #0
	bl sub_8002C98
_08004EB2:
	movs r0, #0x1a
	bl sub_800F408
_08004EB8:
	ldr r1, _08004EC8
	ldr r0, _08004ECC
	str r0, [r1]
	ldr r0, _08004ED0
	str r0, [r1, #4]
	ldr r0, _08004ED4
	b _08005014
	.align 2, 0
_08004EC8: .4byte 0x040000D4
_08004ECC: .4byte gUnknown_0801802C
_08004ED0: .4byte gUnknown_03003AC0
_08004ED4: .4byte 0x80000046
_08004ED8:
	movs r0, #0
	movs r1, #0xdd
	bl sub_8002BD0
	cmp r0, #0
	beq _08004F06
	movs r0, #0
	movs r1, #0xe1
	bl sub_8002BD0
	cmp r0, #0
	bne _08004EFA
	movs r0, #0xe9
	movs r1, #0xe1
	bl sub_8002CCC
	b _08004F8E
_08004EFA:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	b _08004F72
_08004F06:
	movs r0, #0
	movs r1, #0xdc
	bl sub_8002BD0
	cmp r0, #0
	beq _08004F28
	movs r0, #0
	movs r1, #0xe0
	bl sub_8002BD0
	cmp r0, #0
	bne _08004F8E
	movs r0, #0xe8
	movs r1, #0xe0
	bl sub_8002CCC
	b _08004F8E
_08004F28:
	movs r0, #0
	movs r1, #0xc8
	bl sub_8002BD0
	cmp r0, #0
	beq _08004F7A
	movs r0, #0
	movs r1, #0xdf
	bl sub_8002BD0
	cmp r0, #0
	bne _08004F4A
	movs r0, #0xdd
	movs r1, #0xdf
	bl sub_8002CCC
	b _08004F8E
_08004F4A:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #2
	movs r1, #0xbb
	movs r2, #0
	bl sub_8002B94
	movs r0, #0
	movs r1, #0xf2
	bl sub_8002BD0
	cmp r0, #0
	beq _08004F72
	movs r0, #0xc
	bl sub_800F408
	b _08004F8E
_08004F72:
	movs r0, #1
	bl sub_800F408
	b _08004F8E
_08004F7A:
	movs r0, #0
	movs r1, #0xde
	bl sub_8002BD0
	cmp r0, #0
	bne _08004F8E
	movs r0, #0xdc
	movs r1, #0xde
	bl sub_8002CCC
_08004F8E:
	ldr r1, _08004F9C
	ldr r0, _08004FA0
	str r0, [r1]
	ldr r0, _08004FA4
	str r0, [r1, #4]
	ldr r0, _08004FA8
	b _08005014
	.align 2, 0
_08004F9C: .4byte 0x040000D4
_08004FA0: .4byte gUnknown_080180B8
_08004FA4: .4byte gUnknown_03003AC0
_08004FA8: .4byte 0x8000003C
_08004FAC:
	movs r0, #0
	movs r1, #0xec
	bl sub_8002BD0
	cmp r0, #0
	bne _08004FC4
	movs r0, #0x84
	lsls r0, r0, #1
	movs r1, #0xec
	bl sub_8002CCC
	b _08004FD6
_08004FC4:
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl sub_800F408
_08004FD6:
	ldr r1, _08004FE4
	ldr r0, _08004FE8
	str r0, [r1]
	ldr r0, _08004FEC
	str r0, [r1, #4]
	ldr r0, _08004FF0
	b _08005014
	.align 2, 0
_08004FE4: .4byte 0x040000D4
_08004FE8: .4byte gUnknown_08018130
_08004FEC: .4byte gUnknown_03003AC0
_08004FF0: .4byte 0x80000028
_08004FF4:
	movs r0, #0
	movs r1, #0xe5
	bl sub_8002BD0
	cmp r0, #0
	bne _08005008
	movs r0, #0xef
	movs r1, #0xe5
	bl sub_8002CCC
_08005008:
	ldr r1, _08005020
	ldr r0, _08005024
_0800500C:
	str r0, [r1]
	ldr r0, _08005028
	str r0, [r1, #4]
	ldr r0, _0800502C
_08005014:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08005018:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08005020: .4byte 0x040000D4
_08005024: .4byte gUnknown_08018180
_08005028: .4byte gUnknown_03003AC0
_0800502C: .4byte 0x80000032

	THUMB_FUNC_START nullsub_11
nullsub_11: @ 0x08005030
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8005034
sub_8005034: @ 0x08005034
	ldr r2, _0800505C
	ldr r1, _08005060
	str r1, [r2]
	ldr r1, _08005064
	str r1, [r2, #4]
	ldr r1, _08005068
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800506C
	str r1, [r2]
	ldr r1, _08005070
	str r1, [r2, #4]
	ldr r1, _08005074
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #6
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800505C: .4byte 0x040000D4
_08005060: .4byte gUnknown_0801833C
_08005064: .4byte gUnknown_03003730+0xD8
_08005068: .4byte 0x80000054
_0800506C: .4byte gUnknown_0801824C
_08005070: .4byte gUnknown_030028A0
_08005074: .4byte 0x80000078

	THUMB_FUNC_START sub_8005078
sub_8005078: @ 0x08005078
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _080050AC
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _080050B0
	mov r1, sp
	str r1, [r2]
	ldr r1, _080050B4
	str r1, [r2, #4]
	ldr r1, _080050B8
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #0x12
	bls _080050A0
	b _080053EC
_080050A0:
	lsls r0, r0, #2
	ldr r1, _080050BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080050AC: .4byte 0x0000FFFF
_080050B0: .4byte 0x040000D4
_080050B4: .4byte gUnknown_03003AC0
_080050B8: .4byte 0x810000A0
_080050BC: .4byte _080050C0
_080050C0: @ jump table
	.4byte _08005188 @ case 0
	.4byte _08005394 @ case 1
	.4byte _080053EC @ case 2
	.4byte _080053EC @ case 3
	.4byte _0800510C @ case 4
	.4byte _080053EC @ case 5
	.4byte _080053EC @ case 6
	.4byte _080053EC @ case 7
	.4byte _080053EC @ case 8
	.4byte _080053EC @ case 9
	.4byte _080053EC @ case 10
	.4byte _080053EC @ case 11
	.4byte _080052E4 @ case 12
	.4byte _08005348 @ case 13
	.4byte _080051F4 @ case 14
	.4byte _08005230 @ case 15
	.4byte _080053EC @ case 16
	.4byte _0800526C @ case 17
	.4byte _080052A8 @ case 18
_0800510C:
	movs r0, #0
	movs r1, #0xa2
	bl sub_8002BD0
	cmp r0, #0
	beq _0800514E
	movs r0, #0
	movs r1, #0x93
	bl sub_8002BD0
	cmp r0, #0
	beq _0800514E
	movs r0, #0
	movs r1, #0x91
	bl sub_8002BD0
	cmp r0, #0
	bne _0800513A
	movs r0, #0x8d
	movs r1, #0x91
	bl sub_8002CCC
	b _08005174
_0800513A:
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl sub_800F408
	b _08005174
_0800514E:
	movs r0, #0
	movs r1, #0x90
	bl sub_8002BD0
	cmp r0, #0
	bne _08005164
	movs r0, #0x80
	movs r1, #0x90
	bl sub_8002CCC
	b _08005174
_08005164:
	ldr r2, _0800517C
	movs r0, #0x19
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0x16
	bl sub_800F408
_08005174:
	ldr r1, _08005180
	ldr r0, _08005184
	b _080053E0
	.align 2, 0
_0800517C: .4byte 0x000013B0
_08005180: .4byte 0x040000D4
_08005184: .4byte gUnknown_080183E4
_08005188:
	movs r0, #0
	movs r1, #0x93
	bl sub_8002BD0
	cmp r0, #0
	beq _080051C0
	movs r0, #0
	movs r1, #0x95
	bl sub_8002BD0
	cmp r0, #0
	bne _080051AA
	movs r0, #0x93
	movs r1, #0x95
	bl sub_8002CCC
	b _080051D4
_080051AA:
	ldr r2, _080051BC
	movs r0, #9
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0
	bl sub_800F408
	b _080051D4
	.align 2, 0
_080051BC: .4byte 0x000055D0
_080051C0:
	movs r0, #0
	movs r1, #0x94
	bl sub_8002BD0
	cmp r0, #0
	bne _080051D4
	movs r0, #0x90
	movs r1, #0x94
	bl sub_8002CCC
_080051D4:
	ldr r1, _080051E4
	ldr r0, _080051E8
	str r0, [r1]
	ldr r0, _080051EC
	str r0, [r1, #4]
	ldr r0, _080051F0
	b _080053E8
	.align 2, 0
_080051E4: .4byte 0x040000D4
_080051E8: .4byte gUnknown_08018448
_080051EC: .4byte gUnknown_03003AC0
_080051F0: .4byte 0x80000014
_080051F4:
	movs r0, #0
	movs r1, #0x98
	bl sub_8002BD0
	cmp r0, #0
	bne _0800520A
	movs r0, #0x9e
	movs r1, #0x98
	bl sub_8002CCC
	b _08005210
_0800520A:
	movs r0, #0x1f
	bl sub_800F408
_08005210:
	ldr r1, _08005220
	ldr r0, _08005224
	str r0, [r1]
	ldr r0, _08005228
	str r0, [r1, #4]
	ldr r0, _0800522C
	b _080053E8
	.align 2, 0
_08005220: .4byte 0x040000D4
_08005224: .4byte gUnknown_08018470
_08005228: .4byte gUnknown_03003AC0
_0800522C: .4byte 0x80000028
_08005230:
	movs r0, #0
	movs r1, #0x99
	bl sub_8002BD0
	cmp r0, #0
	bne _08005246
	movs r0, #0x9f
	movs r1, #0x99
	bl sub_8002CCC
	b _0800524C
_08005246:
	movs r0, #0x1f
	bl sub_800F408
_0800524C:
	ldr r1, _0800525C
	ldr r0, _08005260
	str r0, [r1]
	ldr r0, _08005264
	str r0, [r1, #4]
	ldr r0, _08005268
	b _080053E8
	.align 2, 0
_0800525C: .4byte 0x040000D4
_08005260: .4byte gUnknown_080184C0
_08005264: .4byte gUnknown_03003AC0
_08005268: .4byte 0x8000003C
_0800526C:
	movs r0, #0
	movs r1, #0x9a
	bl sub_8002BD0
	cmp r0, #0
	bne _08005282
	movs r0, #0xa0
	movs r1, #0x9a
	bl sub_8002CCC
	b _08005288
_08005282:
	movs r0, #0x1f
	bl sub_800F408
_08005288:
	ldr r1, _08005298
	ldr r0, _0800529C
	str r0, [r1]
	ldr r0, _080052A0
	str r0, [r1, #4]
	ldr r0, _080052A4
	b _080053E8
	.align 2, 0
_08005298: .4byte 0x040000D4
_0800529C: .4byte gUnknown_08018538
_080052A0: .4byte gUnknown_03003AC0
_080052A4: .4byte 0x8000001E
_080052A8:
	movs r0, #0
	movs r1, #0xa1
	bl sub_8002BD0
	cmp r0, #0
	bne _080052BE
	movs r0, #0xba
	movs r1, #0xa1
	bl sub_8002CCC
	b _080052C4
_080052BE:
	movs r0, #0xc
	bl sub_800F408
_080052C4:
	ldr r1, _080052D4
	ldr r0, _080052D8
	str r0, [r1]
	ldr r0, _080052DC
	str r0, [r1, #4]
	ldr r0, _080052E0
	b _080053E8
	.align 2, 0
_080052D4: .4byte 0x040000D4
_080052D8: .4byte gUnknown_08018574
_080052DC: .4byte gUnknown_03003AC0
_080052E0: .4byte 0x80000046
_080052E4:
	movs r0, #0
	movs r1, #0xa0
	bl sub_8002BD0
	cmp r0, #0
	beq _0800530E
	movs r0, #0
	movs r1, #0x9c
	bl sub_8002BD0
	cmp r0, #0
	bne _08005306
	movs r0, #0xa2
	movs r1, #0x9c
	bl sub_8002CCC
	b _0800532A
_08005306:
	movs r0, #1
	bl sub_800F408
	b _0800532A
_0800530E:
	movs r0, #0
	movs r1, #0x9b
	bl sub_8002BD0
	cmp r0, #0
	bne _08005324
	movs r0, #0xa1
	movs r1, #0x9b
	bl sub_8002CCC
	b _0800532A
_08005324:
	movs r0, #1
	bl sub_800F408
_0800532A:
	ldr r1, _08005338
	ldr r0, _0800533C
	str r0, [r1]
	ldr r0, _08005340
	str r0, [r1, #4]
	ldr r0, _08005344
	b _080053E8
	.align 2, 0
_08005338: .4byte 0x040000D4
_0800533C: .4byte gUnknown_08018600
_08005340: .4byte gUnknown_03003AC0
_08005344: .4byte 0x8000003C
_08005348:
	movs r0, #0
	movs r1, #0xa3
	bl sub_8002BD0
	cmp r0, #0
	bne _0800535E
	movs r0, #0xbe
	movs r1, #0xa3
	bl sub_8002CCC
	b _0800537A
_0800535E:
	movs r0, #0
	movs r1, #0xa4
	bl sub_8002BD0
	cmp r0, #0
	beq _08005374
	ldr r2, _08005388
	movs r0, #0x21
	adds r1, r2, #0
	bl sub_8002C98
_08005374:
	movs r0, #0xc
	bl sub_800F408
_0800537A:
	movs r0, #0xf
	bl sub_8010204
	ldr r1, _0800538C
	ldr r0, _08005390
	b _080053E0
	.align 2, 0
_08005388: .4byte 0x00002260
_0800538C: .4byte 0x040000D4
_08005390: .4byte gUnknown_08018678
_08005394:
	movs r0, #0
	movs r1, #0x97
	bl sub_8002BD0
	cmp r0, #0
	beq _080053C8
	movs r0, #0
	movs r1, #0x9e
	bl sub_8002BD0
	cmp r0, #0
	bne _080053B6
	movs r0, #0xa9
	movs r1, #0x9e
	bl sub_8002CCC
	b _080053DC
_080053B6:
	movs r0, #0xc
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl sub_800F408
	b _080053DC
_080053C8:
	movs r0, #0
	movs r1, #0x9d
	bl sub_8002BD0
	cmp r0, #0
	bne _080053DC
	movs r0, #0xa3
	movs r1, #0x9d
	bl sub_8002CCC
_080053DC:
	ldr r1, _080053F4
	ldr r0, _080053F8
_080053E0:
	str r0, [r1]
	ldr r0, _080053FC
	str r0, [r1, #4]
	ldr r0, _08005400
_080053E8:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080053EC:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080053F4: .4byte 0x040000D4
_080053F8: .4byte gUnknown_080186DC
_080053FC: .4byte gUnknown_03003AC0
_08005400: .4byte 0x80000032

	THUMB_FUNC_START nullsub_37
nullsub_37: @ 0x08005404
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8005408
sub_8005408: @ 0x08005408
	push {r4, r5, r6, lr}
	ldr r1, _0800544C
	ldr r0, _08005450
	str r0, [r1]
	ldr r0, _08005454
	str r0, [r1, #4]
	ldr r0, _08005458
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	ldr r5, _0800545C
	ldr r4, _08005460
	ldr r3, _08005464
	ldr r1, _08005468
_08005424:
	adds r0, r3, #0
	ldrh r6, [r1]
	ands r0, r6
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08005424
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r1, _0800546C
	bl LZ77UnCompWram
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800544C: .4byte 0x040000D4
_08005450: .4byte gUnknown_081D310C
_08005454: .4byte 0x05000200
_08005458: .4byte 0x80000010
_0800545C: .4byte gUnknown_08018740
_08005460: .4byte gUnknown_03003730
_08005464: .4byte 0x00007FFF
_08005468: .4byte gUnknown_03003C00
_0800546C: .4byte gUnknown_02011FC0

	THUMB_FUNC_START sub_8005470
sub_8005470: @ 0x08005470
	push {lr}
	ldr r1, _08005494
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	beq _0800548A
	adds r0, r1, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800548A
	ldr r0, _08005498
	bl sub_80055B0
_0800548A:
	ldr r0, _08005498
	bl sub_8005890
	pop {r0}
	bx r0
	.align 2, 0
_08005494: .4byte gUnknown_03003730
_08005498: .4byte gUnknown_03003A70

	THUMB_FUNC_START sub_800549C
sub_800549C: @ 0x0800549C
	push {r4, lr}
	ldr r4, _080054B8
	ldrh r1, [r4, #0x1e]
	strh r1, [r4, #0x22]
	strh r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_80054BC
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080054B8: .4byte gUnknown_03003A70

	THUMB_FUNC_START sub_80054BC
sub_80054BC: @ 0x080054BC
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r5, _0800554C
	ldr r4, _08005550
	ldr r1, _08005554
_080054C8:
	adds r0, r4, #0
	ldrh r6, [r1]
	ands r0, r6
	strh r0, [r1]
	adds r1, #0xc
	adds r3, #1
	cmp r3, #0x3e
	bls _080054C8
	movs r3, #0
	strb r3, [r2, #0xe]
	strb r3, [r2, #0xf]
	ldr r0, _08005558
	ldrh r5, [r5, #4]
	cmp r5, r0
	beq _080054E8
	strb r3, [r2, #0x13]
_080054E8:
	strb r3, [r2, #0x15]
	movs r0, #8
	strb r0, [r2, #0x14]
	movs r0, #1
	strb r0, [r2, #0x16]
	strb r3, [r2, #0x17]
	movs r1, #0
	movs r0, #9
	strh r0, [r2, #0x18]
	movs r0, #0x74
	strh r0, [r2, #0x1a]
	ldrh r0, [r2, #0x1e]
	adds r0, #1
	strh r0, [r2, #0x20]
	strh r3, [r2, #0x2c]
	adds r0, r2, #0
	adds r0, #0x2e
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	strh r3, [r2]
	strh r3, [r2, #2]
	subs r0, #0x13
	strb r1, [r0]
	adds r3, r2, #0
	adds r3, #0x25
	movs r0, #3
	strb r0, [r3]
	adds r3, #1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x27
	strb r1, [r0]
	movs r0, #0x18
	strh r0, [r2, #0x28]
	movs r0, #0x56
	strh r0, [r2, #0x2a]
	ldrh r0, [r2, #0x1e]
	cmp r0, #0x7f
	bls _08005564
	ldr r1, _0800555C
	lsls r0, r0, #2
	ldr r3, _08005560
	adds r0, r0, r3
	b _0800556C
	.align 2, 0
_0800554C: .4byte gUnknown_03003730
_08005550: .4byte 0x00007FFF
_08005554: .4byte gUnknown_03003C00
_08005558: .4byte 0x00000804
_0800555C: .4byte gUnknown_02011FC0
_08005560: .4byte gUnknown_02011DC0
_08005564:
	ldr r1, _080055A4
	ldrh r6, [r2, #0x1e]
	lsls r0, r6, #2
	adds r0, r0, r1
_0800556C:
	ldr r0, [r0, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldrh r0, [r1]
	strh r0, [r2, #0x1c]
	ldr r0, _080055A8
	str r0, [r2, #0x3c]
	movs r3, #0
	movs r5, #0xff
	movs r2, #0
	movs r4, #0x80
	lsls r4, r4, #2
	ldr r1, _080055AC
_08005588:
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #5]
	strh r4, [r1, #8]
	adds r1, #0x14
	adds r3, #1
	cmp r3, #7
	bls _08005588
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080055A4: .4byte gUnknown_08749428
_080055A8: .4byte 0x06011800
_080055AC: .4byte gUnknown_03003930

	THUMB_FUNC_START sub_80055B0
sub_80055B0: @ 0x080055B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _080055D4
	ldr r1, _080055FC
	movs r0, #1
	ldrh r2, [r1, #2]
	ands r0, r2
	cmp r0, #0
	bne _080055D0
	movs r0, #2
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080055D4
_080055D0:
	movs r0, #2
	strb r0, [r4, #0x13]
_080055D4:
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x7f
	bhi _08005604
	ldr r1, _08005600
	ldrh r3, [r4, #0xc]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r0, #0
	bne _080056D8
	b _080055D4
	.align 2, 0
_080055FC: .4byte gUnknown_03003720
_08005600: .4byte gUnknown_0811DDA8
_08005604:
	adds r5, r4, #0
	adds r5, #0x25
	ldrb r0, [r4, #0x13]
	cmp r0, #1
	bls _08005610
	strb r2, [r5]
_08005610:
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	blo _080056D8
	strb r2, [r1]
	ldrh r0, [r4, #0xc]
	subs r0, #0x80
	strh r0, [r4, #0xc]
	movs r0, #4
	ldrh r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _0800564E
	ldrh r0, [r4, #0xc]
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0x10]
	bl sub_80056E0
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x12]
	adds r0, #1
	strb r0, [r4, #0x12]
	b _0800565E
_0800564E:
	ldrh r0, [r4, #0xc]
	ldrb r1, [r4, #0xf]
	ldrb r2, [r4, #0xe]
	bl sub_80056E0
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
_0800565E:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldrh r2, [r4, #0x1e]
	cmp r2, #0x80
	bne _08005674
	ldr r0, _080056B4
	adds r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080056D0
_08005674:
	ldrh r3, [r4, #0xc]
	cmp r3, #0xff
	beq _080056D0
	ldrb r1, [r5]
	cmp r1, #0
	beq _080055D4
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _0800568A
	cmp r1, #4
	bls _080056CC
_0800568A:
	ldrb r2, [r4, #0x17]
	cmp r2, #2
	beq _08005694
	movs r0, #1
	strb r0, [r4, #0x16]
_08005694:
	ldr r0, _080056B4
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080056D0
	cmp r2, #2
	bne _080056B8
	movs r0, #0x44
	bl sub_800F3E0
	b _080056D0
	.align 2, 0
_080056B4: .4byte gUnknown_03003730
_080056B8:
	cmp r2, #1
	bne _080056C4
	movs r0, #0x2e
	bl sub_800F3E0
	b _080056D0
_080056C4:
	movs r0, #0x2d
	bl sub_800F3E0
	b _080056D0
_080056CC:
	subs r0, #1
	strb r0, [r4, #0x16]
_080056D0:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080056D8
	b _080055D4
_080056D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

@ MESSAGE_SYSTEM.c is around here somewhere

@ Args: u32 u32 u32 or u16 u8 u8
	THUMB_FUNC_START sub_80056E0 @ CopyCharGlyphToWindow?
sub_80056E0: @ 0x080056E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r7, r1, #0
	adds r5, r2, #0
	lsls r3, r0, #7
	ldr r0, _08005770
	adds r3, r3, r0
	ldr r0, _08005774
	adds r6, r0, #0
	adds r6, #0x24
	ldrb r1, [r6]
	cmp r1, #0
	beq _080057A8
	ldr r1, _08005778
	str r3, [r1]
	ldr r2, _0800577C
	str r2, [r1, #4]
	ldr r0, _08005780
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, r2, #0
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r3, r0, r1
	movs r2, #0
	lsls r6, r5, #7
	mov sb, r6
	lsls r0, r5, #2
	mov ip, r0
	movs r1, #0xf
	mov sl, r1
	movs r6, #0xf0
	mov r8, r6
	lsls r0, r3, #4
	str r0, [sp, #4]
_08005730:
	ldrb r1, [r4]
	adds r0, r1, #0
	mov r6, sl
	ands r0, r6
	mov r6, r8
	ands r1, r6
	cmp r0, #0
	beq _08005742
	adds r0, r0, r3
_08005742:
	cmp r1, #0
	beq _0800574A
	ldr r6, [sp, #4]
	adds r1, r1, r6
_0800574A:
	orrs r0, r1
	strb r0, [r4]
	adds r4, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _08005730
	ldr r2, _08005784
	add r2, sb
	movs r0, #4
	ldr r1, _08005774
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08005788
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r2, r3
	b _0800578C
	.align 2, 0
_08005770: .4byte gUnknown_081D312C
_08005774: .4byte gUnknown_03003A70
_08005778: .4byte 0x040000D4
_0800577C: .4byte gUnknown_030039D0
_08005780: .4byte 0x80000040
_08005784: .4byte 0x06010000
_08005788:
	lsls r0, r7, #0xb
	adds r2, r2, r0
_0800578C:
	ldr r0, _0800579C
	ldr r4, _080057A0
	str r4, [r0]
	str r2, [r0, #4]
	ldr r1, _080057A4
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _080057E0
	.align 2, 0
_0800579C: .4byte 0x040000D4
_080057A0: .4byte gUnknown_030039D0
_080057A4: .4byte 0x80000040
_080057A8:
	lsls r0, r5, #7
	ldr r6, _080057C4
	adds r2, r0, r6
	movs r0, #4
	ldr r1, _080057C8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080057CC
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r2, r4
	b _080057D0
	.align 2, 0
_080057C4: .4byte 0x06010000
_080057C8: .4byte gUnknown_03003A70
_080057CC:
	lsls r0, r7, #0xb
	adds r2, r2, r0
_080057D0:
	ldr r0, _0800581C
	str r3, [r0]
	str r2, [r0, #4]
	ldr r1, _08005820
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r6, r5, #2
	mov ip, r6
_080057E0:
	movs r0, #4
	ldr r1, _08005824
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800582C
	adds r3, r5, #0
	adds r3, #0x20
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, _08005828
	adds r1, r1, r2
	ldr r4, _08005824
	ldrb r4, [r4, #0x12]
	lsls r0, r4, #3
	ldr r6, _08005824
	ldrb r6, [r6, #0x12]
	subs r0, r0, r6
	lsls r0, r0, #1
	strh r0, [r1, #4]
	subs r2, r7, #2
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r1, #6]
	mov r0, ip
	adds r0, #0x80
	b _0800584E
	.align 2, 0
_0800581C: .4byte 0x040000D4
_08005820: .4byte 0x80000040
_08005824: .4byte gUnknown_03003A70
_08005828: .4byte gUnknown_03003C00
_0800582C:
	lsls r0, r7, #4
	adds r3, r5, r0
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r0, _08005888
	adds r1, r1, r0
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #1
	strh r0, [r1, #4]
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #1
	strh r0, [r1, #6]
	lsls r0, r7, #6
	add r0, ip
_0800584E:
	strh r0, [r1, #2]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08005888
	adds r0, r0, r1
	ldrh r2, [r0, #2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r2, r3
	strh r1, [r0, #2]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	ldr r6, [sp]
	orrs r6, r1
	strh r6, [r0]
	ldr r1, _0800588C
	adds r1, #0x24
	ldrb r1, [r1]
	strb r1, [r0, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005888: .4byte gUnknown_03003C00
_0800588C: .4byte gUnknown_03003A70

	THUMB_FUNC_START sub_8005890
sub_8005890: @ 0x08005890
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #4
	ldrh r1, [r7]
	ands r0, r1
	cmp r0, #0
	beq _080058A8
	b _080059BC
_080058A8:
	ldr r2, _08005924
	movs r4, #0xdc
	lsls r4, r4, #1
	adds r5, r2, r4
	ldr r6, _08005928
	mov sb, r6
	movs r0, #0x80
	lsls r0, r0, #2
	mov sl, r0
	movs r1, #0xff
	mov r8, r1
	ldr r2, _0800592C
	mov ip, r2
	mov r3, sb
_080058C4:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080059AC
	ldrh r0, [r3, #8]
	strh r0, [r5]
	ldrh r0, [r3, #0xa]
	strh r0, [r5, #2]
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080058EA
	ldrb r1, [r3, #2]
	adds r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r3, #2]
	cmp r1, #0xf
	bhi _080058EA
	mov r4, sl
	strh r4, [r5]
_080058EA:
	ldrb r6, [r3, #5]
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0800599C
	ldrb r4, [r3, #3]
	ldrb r0, [r3, #7]
	adds r1, r4, r0
	strb r1, [r3, #7]
	ldrb r2, [r3, #6]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	blo _08005912
	subs r0, r1, r2
	subs r0, r4, r0
	strb r0, [r3, #3]
	movs r0, #0xfd
	ands r0, r6
	strb r0, [r3, #5]
_08005912:
	ldrb r0, [r3, #4]
	cmp r0, #1
	beq _08005950
	cmp r0, #1
	bgt _08005930
	cmp r0, #0
	beq _0800593A
	b _0800599C
	.align 2, 0
_08005924: .4byte gUnknown_03002B30
_08005928: .4byte gUnknown_03003930
_0800592C: .4byte 0x000001FF
_08005930:
	cmp r0, #2
	beq _0800596C
	cmp r0, #3
	beq _08005982
	b _0800599C
_0800593A:
	ldrh r1, [r3, #8]
	mov r2, r8
	ands r2, r1
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldrb r1, [r3, #3]
	subs r2, r2, r1
	mov r4, r8
	ands r2, r4
	b _08005964
_08005950:
	ldrh r1, [r3, #8]
	mov r2, r8
	ands r2, r1
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldrb r6, [r3, #3]
	adds r2, r6, r2
	mov r1, r8
	ands r2, r1
_08005964:
	adds r0, r0, r2
	strh r0, [r3, #8]
	strh r0, [r5]
	b _0800599C
_0800596C:
	ldrh r1, [r3, #0xa]
	mov r2, ip
	ands r2, r1
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldrb r4, [r3, #3]
	subs r2, r2, r4
	mov r6, ip
	ands r2, r6
	b _08005996
_08005982:
	ldrh r1, [r3, #0xa]
	mov r2, ip
	ands r2, r1
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldrb r1, [r3, #3]
	adds r2, r1, r2
	mov r4, ip
	ands r2, r4
_08005996:
	adds r0, r0, r2
	strh r0, [r3, #0xa]
	strh r0, [r5, #2]
_0800599C:
	movs r0, #4
	ldrb r6, [r3, #5]
	ands r0, r6
	cmp r0, #0
	beq _080059B0
	mov r0, sl
	strh r0, [r5]
	b _080059B0
_080059AC:
	mov r1, sl
	strh r1, [r5]
_080059B0:
	adds r5, #8
	adds r3, #0x14
	mov r0, sb
	adds r0, #0x8c
	cmp r3, r0
	bls _080058C4
_080059BC:
	ldr r2, _080059F4
	ldrb r0, [r2, #0x15]
	cmp r0, #0
	beq _08005A72
	ldr r5, _080059F8
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #8
	ldr r2, _080059FC
_080059CE:
	adds r0, r3, #0
	ldrh r4, [r2]
	ands r0, r4
	cmp r0, #0
	beq _08005A00
	ldrh r6, [r2, #6]
	ldrh r4, [r7, #0x1a]
	adds r0, r6, r4
	strh r0, [r5]
	ldrh r6, [r2, #4]
	ldrh r4, [r7, #0x18]
	adds r0, r6, r4
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r0, r6
	strh r0, [r5, #2]
	ldrh r0, [r2, #2]
	strh r0, [r5, #4]
	b _08005A06
	.align 2, 0
_080059F4: .4byte gUnknown_03003730
_080059F8: .4byte gUnknown_03002B30
_080059FC: .4byte gUnknown_03003C00
_08005A00:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
_08005A06:
	adds r5, #8
	adds r2, #0xc
	adds r1, #1
	cmp r1, #0x1f
	bls _080059CE
	ldr r1, _08005A58
	movs r0, #4
	ldrh r2, [r7]
	ands r0, r2
	cmp r0, #0
	beq _08005AA4
	movs r4, #0xdc
	lsls r4, r4, #1
	adds r5, r1, r4
	movs r1, #0x20
	ldr r0, _08005A5C
	movs r3, #0x80
	lsls r3, r3, #8
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r2, r0, r6
_08005A30:
	adds r0, r3, #0
	ldrh r4, [r2]
	ands r0, r4
	cmp r0, #0
	beq _08005A60
	ldrh r6, [r2, #6]
	ldrh r4, [r7, #0x2a]
	adds r0, r6, r4
	strh r0, [r5]
	ldrh r6, [r2, #4]
	ldrh r4, [r7, #0x28]
	adds r0, r6, r4
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r0, r6
	strh r0, [r5, #2]
	ldrh r0, [r2, #2]
	strh r0, [r5, #4]
	b _08005A66
	.align 2, 0
_08005A58: .4byte gUnknown_03002B30
_08005A5C: .4byte gUnknown_03003C00
_08005A60:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
_08005A66:
	adds r5, #8
	adds r2, #0xc
	adds r1, #1
	cmp r1, #0x3e
	bls _08005A30
	b _08005AA4
_08005A72:
	ldr r5, _08005AB4
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
_08005A7A:
	strh r0, [r5]
	adds r5, #8
	adds r1, #1
	cmp r1, #0x1f
	bls _08005A7A
	ldr r1, _08005AB4
	movs r0, #4
	ldrh r7, [r7]
	ands r0, r7
	cmp r0, #0
	beq _08005AA4
	movs r0, #0xdc
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r1, #0x20
	adds r0, #0x48
_08005A9A:
	strh r0, [r5]
	adds r5, #8
	adds r1, #1
	cmp r1, #0x3e
	bls _08005A9A
_08005AA4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005AB4: .4byte gUnknown_03002B30

	THUMB_FUNC_START sub_8005AB8
sub_8005AB8: @ 0x08005AB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r6, #0
	ldr r5, _08005B50
	ldr r0, _08005B54
	mov sl, r0
_08005ACC:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08005B58
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	adds r3, r6, #1
	mov sb, r3
	cmp r0, #0
	beq _08005B7C
	ldr r3, _08005B5C
	ands r3, r1
	lsls r3, r3, #7
	ldr r7, _08005B60
	adds r3, r3, r7
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _08005B6C
	str r3, [r5]
	ldr r0, _08005B64
	str r0, [r5, #4]
	mov r1, sl
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _08005B64
	ldrb r3, [r2, #8]
	lsls r0, r3, #1
	adds r3, r0, r3
	movs r0, #0
	lsls r6, r6, #7
	str r6, [sp]
	movs r7, #0xf
	mov r8, r7
	movs r1, #0xf0
	mov ip, r1
	lsls r6, r3, #4
_08005B1A:
	ldrb r2, [r4]
	adds r1, r2, #0
	mov r7, r8
	ands r1, r7
	mov r7, ip
	ands r2, r7
	cmp r1, #0
	beq _08005B2C
	adds r1, r1, r3
_08005B2C:
	cmp r2, #0
	beq _08005B32
	adds r2, r2, r6
_08005B32:
	orrs r1, r2
	strb r1, [r4]
	adds r4, #1
	adds r0, #1
	cmp r0, #0x7f
	bls _08005B1A
	ldr r1, [sp]
	ldr r2, _08005B68
	adds r0, r1, r2
	ldr r3, _08005B64
	str r3, [r5]
	str r0, [r5, #4]
	mov r7, sl
	str r7, [r5, #8]
	b _08005B7A
	.align 2, 0
_08005B50: .4byte 0x040000D4
_08005B54: .4byte 0x80000040
_08005B58: .4byte gUnknown_03003C00
_08005B5C: .4byte 0x00007FFF
_08005B60: .4byte gUnknown_081D312C
_08005B64: .4byte gUnknown_030039D0
_08005B68: .4byte 0x06010000
_08005B6C:
	lsls r0, r6, #7
	ldr r1, _08005B94
	adds r0, r0, r1
	str r3, [r5]
	str r0, [r5, #4]
	mov r2, sl
	str r2, [r5, #8]
_08005B7A:
	ldr r0, [r5, #8]
_08005B7C:
	mov r6, sb
	cmp r6, #0x3e
	bls _08005ACC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005B94: .4byte 0x06010000

	THUMB_FUNC_START sub_8005B98
sub_8005B98: @ 0x08005B98
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8005BA4
sub_8005BA4: @ 0x08005BA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80054BC
	movs r0, #0
	movs r1, #0
	bl sub_80028B4
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8005BC4
sub_8005BC4: @ 0x08005BC4
	adds r1, r0, #0
	movs r0, #4
	ldrh r2, [r1]
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08005BE0
	movs r0, #0
	strb r0, [r1, #0x12]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08005BE8
_08005BE0:
	strb r0, [r1, #0xe]
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
_08005BE8:
	ldr r0, [r1, #4]
	adds r0, #2
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8005BF4
sub_8005BF4: @ 0x08005BF4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r2, [r4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08005C30
	adds r1, r4, #0
	adds r1, #0x32
	ldrb r0, [r1]
	cmp r0, #0
	beq _08005C12
	subs r0, #1
	strb r0, [r1]
	b _08005E8C
_08005C12:
	ldr r0, _08005C2C
	ands r0, r2
	strh r0, [r4]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldrh r1, [r4, #0xc]
	cmp r1, #0xa
	beq _08005C26
	b _08005E8C
_08005C26:
	adds r0, #2
	str r0, [r4, #4]
	b _08005E8C
	.align 2, 0
_08005C2C: .4byte 0x0000FFDF
_08005C30:
	ldr r0, _08005D38
	ldrb r0, [r0, #4]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08005C82
	movs r1, #1
	adds r0, r1, #0
	ands r0, r2
	ldr r3, _08005D3C
	cmp r0, #0
	beq _08005C5A
	adds r0, r1, #0
	ldrh r5, [r3, #2]
	ands r0, r5
	cmp r0, #0
	beq _08005C5A
	movs r0, #2
	orrs r0, r2
	strh r0, [r4]
_08005C5A:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _08005C64
	subs r0, #1
	strb r0, [r4, #0x14]
_08005C64:
	movs r0, #2
	ldrh r3, [r3]
	ands r0, r3
	cmp r0, #0
	beq _08005C82
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _08005C82
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08005C82
	movs r0, #2
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_08005C82:
	ldrh r1, [r4]
	movs r6, #2
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08005C94
	b _08005DE0
_08005C94:
	movs r0, #0x2f
	bl sub_800F3E0
	ldr r0, _08005D40
	ldr r3, _08005D44
	adds r2, r0, r3
	movs r3, #0
	movs r1, #9
	strh r1, [r2]
	ldr r5, _08005D48
	adds r0, r0, r5
	strh r1, [r0]
	ldr r0, _08005D4C
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _08005CC6
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0x13]
_08005CC6:
	movs r0, #8
	strb r0, [r4, #0x14]
	ldrh r2, [r4, #0xc]
	cmp r2, #7
	bne _08005D64
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldr r1, _08005D50
	ldr r0, _08005D54
	str r0, [r1]
	ldr r0, _08005D58
	str r0, [r1, #4]
	ldr r0, _08005D5C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x39
	strb r3, [r0]
	movs r0, #4
	ldrh r5, [r4]
	orrs r0, r5
	strh r0, [r4]
	adds r2, r4, #0
	adds r2, #0x25
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	strb r3, [r2]
	adds r1, #0xf
	movs r0, #0x18
	strb r0, [r1]
	movs r0, #0x14
	strh r0, [r4, #0x1a]
	strb r3, [r4, #0xe]
	strb r6, [r4, #0xf]
	strb r3, [r4, #0x10]
	strb r6, [r4, #0x11]
	strb r3, [r4, #0x12]
	ldr r0, _08005D38
	strb r3, [r0, #0x15]
	movs r0, #1
	bl sub_8002244
	movs r2, #0
	movs r3, #0xff
	ldr r1, _08005D60
_08005D26:
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r1, #0x14
	adds r2, #1
	cmp r2, #7
	bls _08005D26
	movs r0, #0
	b _08005E8E
	.align 2, 0
_08005D38: .4byte gUnknown_03003730
_08005D3C: .4byte gUnknown_03003720
_08005D40: .4byte gUnknown_03002000
_08005D44: .4byte 0x000004DC
_08005D48: .4byte 0x000004DE
_08005D4C: .4byte 0x0000FFFC
_08005D50: .4byte 0x040000D4
_08005D54: .4byte gUnknown_081DA22C
_08005D58: .4byte 0x06011F80
_08005D5C: .4byte 0x80000040
_08005D60: .4byte gUnknown_03003930
_08005D64:
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x20
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	ldrh r2, [r4, #0xc]
	cmp r2, #0xa
	bne _08005D94
	ldr r0, _08005D90
	adds r0, #0x8f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08005D9E
	ldr r0, [r4, #4]
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x20]
	b _08005D9E
	.align 2, 0
_08005D90: .4byte gUnknown_03003730
_08005D94:
	adds r0, r4, #0
	adds r0, #0x36
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
_08005D9E:
	movs r0, #0
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	movs r2, #0
	ldr r3, _08005DD0
	ldr r1, _08005DD4
_08005DAA:
	adds r0, r3, #0
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08005DAA
	ldrh r4, [r4, #0xc]
	cmp r4, #2
	bne _08005E8C
	ldr r0, _08005DD8
	ldr r1, _08005DDC
	adds r1, #0x90
	ldrh r1, [r1]
	bl sub_800FBA0
	b _08005E8C
	.align 2, 0
_08005DD0: .4byte 0x00007FFF
_08005DD4: .4byte gUnknown_03003C00
_08005DD8: .4byte gUnknown_03000840
_08005DDC: .4byte gUnknown_03003730
_08005DE0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08005DFC
	ldr r0, _08005E28
	ldr r1, _08005E2C
	adds r1, #0x92
	ldrh r1, [r1]
	bl sub_800FBA0
	movs r0, #1
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_08005DFC:
	ldr r0, _08005E2C
	ldrb r2, [r0, #4]
	cmp r2, #9
	beq _08005E74
	adds r1, r4, #0
	adds r1, #0x37
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, #0x36
	cmp r0, #1
	bls _08005E42
	strb r5, [r1]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08005E30
	cmp r2, #7
	bne _08005E30
	strb r5, [r4]
	b _08005E42
	.align 2, 0
_08005E28: .4byte gUnknown_03000840
_08005E2C: .4byte gUnknown_03003730
_08005E30:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08005E42
	movs r0, #0
	strb r0, [r4]
_08005E42:
	ldr r2, _08005E64
	ldr r1, _08005E68
	ldrb r3, [r4]
	adds r0, r3, r1
	ldrb r3, [r0]
	ldr r5, _08005E6C
	adds r0, r2, r5
	strh r3, [r0]
	ldrb r4, [r4]
	adds r1, r4, r1
	ldrb r0, [r1]
	adds r0, #1
	ldr r1, _08005E70
	adds r2, r2, r1
	strh r0, [r2]
	b _08005E8C
	.align 2, 0
_08005E64: .4byte gUnknown_03002000
_08005E68: .4byte gUnknown_080187C0
_08005E6C: .4byte 0x000004DC
_08005E70: .4byte 0x000004DE
_08005E74:
	adds r0, r4, #0
	adds r0, #0x36
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	ldr r0, _08005E94
	ldr r3, _08005E98
	adds r1, r0, r3
	strh r2, [r1]
	ldr r5, _08005E9C
	adds r0, r0, r5
	strh r2, [r0]
_08005E8C:
	movs r0, #1
_08005E8E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08005E94: .4byte gUnknown_03002000
_08005E98: .4byte 0x000004DC
_08005E9C: .4byte 0x000004DE

	THUMB_FUNC_START sub_8005EA0
sub_8005EA0: @ 0x08005EA0
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	ldrh r2, [r2, #2]
	adds r1, r0, #0
	adds r1, #0x24
	strb r2, [r1]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_8005EB8
sub_8005EB8: @ 0x08005EB8
	adds r2, r0, #0
	ldr r0, _08005ED0
	ldr r1, [r2, #4]
	ldrh r0, [r0, #2]
	ldrh r3, [r1, #2]
	ands r0, r3
	cmp r0, #0
	beq _08005ECC
	adds r0, r1, #4
	str r0, [r2, #4]
_08005ECC:
	movs r0, #1
	bx lr
	.align 2, 0
_08005ED0: .4byte gUnknown_03003720

	THUMB_FUNC_START sub_8005ED4
sub_8005ED4: @ 0x08005ED4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r1, [r0, #2]
	adds r0, r2, #2
	str r0, [r4, #4]
	ldrh r0, [r2, #2]
	bl sub_800F540
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8005EF8
sub_8005EF8: @ 0x08005EF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r1, [r1, #2]
	lsrs r2, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005F16
	adds r0, r2, #0
	bl sub_800F3E0
	b _08005F1C
_08005F16:
	adds r0, r2, #0
	bl m4aSongNumStop
_08005F1C:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8005F2C
sub_8005F2C: @ 0x08005F2C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r2, [r5]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08005F5C
	adds r1, r5, #0
	adds r1, #0x32
	ldrb r0, [r1]
	cmp r0, #0
	beq _08005F4A
	subs r0, #1
	strb r0, [r1]
	b _080060BE
_08005F4A:
	ldr r0, _08005F58
	ands r0, r2
	strh r0, [r5]
	ldr r0, [r5, #4]
	adds r0, #6
	str r0, [r5, #4]
	b _080060BE
	.align 2, 0
_08005F58: .4byte 0x0000FFDF
_08005F5C:
	ldr r0, _08005F74
	ldrb r0, [r0, #4]
	cmp r0, #7
	bne _08005F7C
	ldr r0, _08005F78
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r1, #0xc0
	strh r1, [r0]
	b _080060BE
	.align 2, 0
_08005F74: .4byte gUnknown_03003730
_08005F78: .4byte gOamObjects
_08005F7C:
	adds r1, r5, #0
	adds r1, #0x35
	ldrb r0, [r1]
	cmp r0, #0
	beq _08005F8C
	subs r0, #1
	strb r0, [r1]
	b _080060BE
_08005F8C:
	ldr r0, _08005FBC
	ldrh r1, [r0, #2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08005FC0
	movs r0, #0x2a
	bl sub_800F3E0
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #1
	bls _08006094
	movs r0, #1
	strb r0, [r4]
	b _08006094
	.align 2, 0
_08005FBC: .4byte gUnknown_03003720
_08005FC0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08005FE6
	movs r0, #0x2a
	bl sub_800F3E0
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #1
	bls _08006094
	strb r6, [r4]
	b _08006094
_08005FE6:
	movs r0, #1
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x39
	cmp r0, #0
	beq _08006094
	movs r0, #0x2b
	bl sub_800F3E0
	adds r1, r5, #0
	adds r1, #0x32
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x20
	ldrh r3, [r5]
	orrs r0, r3
	strh r0, [r5]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08006014
	ldr r0, [r5, #4]
	ldrh r0, [r0, #2]
	b _08006018
_08006014:
	ldr r0, [r5, #4]
	ldrh r0, [r0, #4]
_08006018:
	strh r0, [r5, #0x20]
	movs r0, #0
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	ldr r0, _08006084
	ldrh r4, [r5]
	ands r0, r4
	movs r1, #0
	strh r0, [r5]
	movs r0, #0x74
	strh r0, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0x25
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x34
	strb r1, [r0]
	movs r0, #0
	bl sub_8002244
	movs r2, #0
	ldr r3, _08006088
	ldr r1, _0800608C
_0800604C:
	adds r0, r3, #0
	ldrh r4, [r1]
	ands r0, r4
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x1f
	bls _0800604C
	movs r2, #0x39
	ldr r1, _08006090
	movs r3, #0x80
	lsls r3, r3, #2
	movs r4, #0xe4
	lsls r4, r4, #1
	adds r0, r1, r4
_0800606A:
	strh r3, [r0]
	adds r0, #8
	adds r2, #1
	cmp r2, #0x57
	bls _0800606A
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	subs r0, #0xc0
	strh r0, [r1]
	movs r0, #0
	b _080060C0
	.align 2, 0
_08006084: .4byte 0x0000FFFB
_08006088: .4byte 0x00007FFF
_0800608C: .4byte gUnknown_03003C00
_08006090: .4byte gOamObjects
_08006094:
	ldr r2, _080060C8
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r3, [r5, #0x2a]
	adds r0, r3, r0
	movs r4, #0xb0
	lsls r4, r4, #2
	adds r1, r2, r4
	strh r0, [r1]
	ldrh r5, [r5, #0x28]
	ldr r0, _080060CC
	adds r1, r5, r0
	ldr r3, _080060D0
	adds r0, r2, r3
	strh r1, [r0]
	adds r4, #4
	adds r2, r2, r4
	ldr r0, _080060D4
	strh r0, [r2]
_080060BE:
	movs r0, #1
_080060C0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080060C8: .4byte gOamObjects
_080060CC: .4byte 0x00003FF3
_080060D0: .4byte 0x000002C2
_080060D4: .4byte 0x000004FC

	THUMB_FUNC_START sub_80060D8
sub_80060D8: @ 0x080060D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r2, [r5]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08006108
	adds r1, r5, #0
	adds r1, #0x32
	ldrb r0, [r1]
	cmp r0, #0
	beq _080060F6
	subs r0, #1
	strb r0, [r1]
	b _08006272
_080060F6:
	ldr r0, _08006104
	ands r0, r2
	strh r0, [r5]
	ldr r0, [r5, #4]
	adds r0, #8
	str r0, [r5, #4]
	b _08006272
	.align 2, 0
_08006104: .4byte 0x0000FFDF
_08006108:
	ldr r0, _08006120
	ldrb r0, [r0, #4]
	cmp r0, #7
	bne _08006128
	ldr r0, _08006124
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r1, #0xc0
	strh r1, [r0]
	b _08006272
	.align 2, 0
_08006120: .4byte gUnknown_03003730
_08006124: .4byte gOamObjects
_08006128:
	adds r1, r5, #0
	adds r1, #0x35
	ldrb r0, [r1]
	cmp r0, #0
	beq _08006138
	subs r0, #1
	strb r0, [r1]
	b _08006272
_08006138:
	ldr r0, _08006168
	ldrh r1, [r0, #2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0800616C
	movs r0, #0x2a
	bl sub_800F3E0
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #2
	bls _08006248
	movs r0, #2
	strb r0, [r4]
	b _08006248
	.align 2, 0
_08006168: .4byte gUnknown_03003720
_0800616C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08006192
	movs r0, #0x2a
	bl sub_800F3E0
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #2
	bls _08006248
	strb r6, [r4]
	b _08006248
_08006192:
	movs r0, #1
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x39
	cmp r0, #0
	beq _08006248
	movs r0, #0x2b
	bl sub_800F3E0
	adds r1, r5, #0
	adds r1, #0x32
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x20
	ldrh r3, [r5]
	orrs r0, r3
	strh r0, [r5]
	ldrb r1, [r4]
	cmp r1, #0
	bne _080061C0
	ldr r0, [r5, #4]
	ldrh r0, [r0, #2]
	b _080061CE
_080061C0:
	cmp r1, #1
	bne _080061CA
	ldr r0, [r5, #4]
	ldrh r0, [r0, #4]
	b _080061CE
_080061CA:
	ldr r0, [r5, #4]
	ldrh r0, [r0, #6]
_080061CE:
	strh r0, [r5, #0x20]
	movs r0, #0
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	ldr r0, _08006238
	ldrh r4, [r5]
	ands r0, r4
	movs r1, #0
	strh r0, [r5]
	movs r0, #0x74
	strh r0, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0x25
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x34
	strb r1, [r0]
	movs r0, #0
	bl sub_8002244
	movs r2, #0
	ldr r3, _0800623C
	ldr r1, _08006240
_08006202:
	adds r0, r3, #0
	ldrh r4, [r1]
	ands r0, r4
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x1f
	bls _08006202
	movs r2, #0x39
	ldr r1, _08006244
	movs r3, #0x80
	lsls r3, r3, #2
	movs r4, #0xe4
	lsls r4, r4, #1
	adds r0, r1, r4
_08006220:
	strh r3, [r0]
	adds r0, #8
	adds r2, #1
	cmp r2, #0x57
	bls _08006220
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	subs r0, #0xc0
	strh r0, [r1]
	movs r0, #0
	b _08006274
	.align 2, 0
_08006238: .4byte 0x0000FFFB
_0800623C: .4byte 0x00007FFF
_08006240: .4byte gUnknown_03003C00
_08006244: .4byte gOamObjects
_08006248:
	ldr r2, _0800627C
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r3, [r5, #0x2a]
	adds r0, r3, r0
	movs r4, #0xb0
	lsls r4, r4, #2
	adds r1, r2, r4
	strh r0, [r1]
	ldrh r5, [r5, #0x28]
	ldr r0, _08006280
	adds r1, r5, r0
	ldr r3, _08006284
	adds r0, r2, r3
	strh r1, [r0]
	adds r4, #4
	adds r2, r2, r4
	ldr r0, _08006288
	strh r0, [r2]
_08006272:
	movs r0, #1
_08006274:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800627C: .4byte gOamObjects
_08006280: .4byte 0x00003FF3
_08006284: .4byte 0x000002C2
_08006288: .4byte 0x000004FC

	THUMB_FUNC_START sub_800628C
sub_800628C: @ 0x0800628C
	adds r2, r0, #0
	ldr r1, [r2, #4]
	adds r0, r1, #2
	str r0, [r2, #4]
	ldrh r0, [r1, #2]
	adds r1, r2, #0
	adds r1, #0x25
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080062A8
	movs r0, #3
	strb r0, [r1]
_080062A8:
	ldrb r0, [r2, #0x13]
	cmp r0, #1
	bls _080062B2
	movs r0, #0
	strb r0, [r1]
_080062B2:
	ldr r0, [r2, #4]
	adds r0, #2
	str r0, [r2, #4]
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_80062BC
sub_80062BC: @ 0x080062BC
	adds r2, r0, #0
	ldr r0, _080062D8
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _080062DC
	ldrb r0, [r2, #0x13]
	cmp r0, #1
	bls _080062DC
	ldr r0, [r2, #4]
	ldrh r1, [r0, #2]
	strh r1, [r2, #2]
	b _080062EE
	.align 2, 0
_080062D8: .4byte gUnknown_03003730
_080062DC:
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080062F6
	subs r0, #1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080062FC
	ldr r0, [r2, #4]
_080062EE:
	adds r0, #4
	str r0, [r2, #4]
	movs r0, #0
	b _080062FE
_080062F6:
	ldr r1, [r2, #4]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
_080062FC:
	movs r0, #1
_080062FE:
	bx lr

	THUMB_FUNC_START sub_8006300
sub_8006300: @ 0x08006300
	ldrh r1, [r0, #0x1e]
	strh r1, [r0, #0x22]
	ldrh r1, [r0, #0x20]
	strh r1, [r0, #0x1e]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8006314
sub_8006314: @ 0x08006314
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	adds r0, r1, #2
	str r0, [r5, #4]
	ldrh r1, [r1, #2]
	lsrs r0, r1, #8
	adds r4, r5, #0
	adds r4, #0x34
	movs r7, #0x7f
	ands r0, r7
	strb r0, [r4]
	ldrb r0, [r4]
	ldr r2, [r5, #4]
	movs r6, #0xff
	adds r1, r6, #0
	ldrh r2, [r2]
	ands r1, r2
	bl sub_80028B4
	ldr r0, _08006364
	ldrb r1, [r4]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x17]
	cmp r0, #2
	bne _0800634E
	movs r0, #0
	strb r0, [r5, #0x16]
_0800634E:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08006368
	movs r0, #0x80
	ldrb r1, [r4]
	orrs r0, r1
	b _0800636E
	.align 2, 0
_08006364: .4byte gUnknown_08018784
_08006368:
	adds r0, r7, #0
	ldrb r1, [r4]
	ands r0, r1
_0800636E:
	strb r0, [r4]
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8006380
sub_8006380: @ 0x08006380
	ldr r1, [r0, #4]
	adds r2, r1, #2
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x2c]
	adds r1, r2, #2
	str r1, [r0, #4]
	ldrh r1, [r2, #2]
	adds r2, r0, #0
	adds r2, #0x2e
	strb r1, [r2]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_80063A0
sub_80063A0: @ 0x080063A0
	push {lr}
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0xfe
	lsls r0, r0, #7
	ands r0, r2
	lsrs r0, r0, #8
	movs r1, #0xff
	ands r1, r2
	lsrs r2, r2, #0xf
	bl sub_8002B94
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_80063C4
sub_80063C4: @ 0x080063C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0x31
	bl sub_800F3E0
	movs r0, #0x10
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _080063FC
	adds r3, r2, #0
	adds r3, #0xb4
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r2, #4]
	str r0, [r2, #8]
	ldr r0, _08006400
	str r0, [r2, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080063FC: .4byte gUnknown_03003730
_08006400: .4byte 0x01000007

	THUMB_FUNC_START sub_8006404
sub_8006404: @ 0x08006404
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r1, [r0, #2]
	adds r5, r2, #2
	ldrh r2, [r2, #2]
	adds r0, r5, #2
	str r0, [r4, #4]
	lsrs r0, r1, #8
	movs r3, #0xff
	ands r1, r3
	ldrh r3, [r5, #2]
	bl sub_80007D8
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8006430
sub_8006430: @ 0x08006430
	push {lr}
	ldr r2, [r0, #4]
	ldr r1, _08006464
	mov ip, r1
	mov r3, ip
	adds r3, #0x7d
	movs r1, #3
	strb r1, [r3]
	ldrh r3, [r2, #2]
	mov r1, ip
	adds r1, #0x7c
	strb r3, [r1]
	ldrh r1, [r2, #2]
	lsrs r3, r1, #8
	mov r1, ip
	adds r1, #0x7e
	strb r3, [r1]
	adds r2, #4
	str r2, [r0, #4]
	movs r0, #0x33
	bl sub_800F3E0
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08006464: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8006468
sub_8006468: @ 0x08006468
	push {lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r0, _08006484
	adds r0, #0x7d
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x33
	bl sub_800F3E0
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08006484: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8006488
sub_8006488: @ 0x08006488
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	ldrh r1, [r4]
	ands r0, r1
	cmp r0, #0
	bne _080064B2
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	cmp r0, #0x15
	bne _080064AA
	ldr r0, _080064BC
	ldr r1, _080064C0
	adds r1, #0x92
	ldrh r1, [r1]
	bl sub_800FBA0
_080064AA:
	movs r0, #8
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_080064B2:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080064BC: .4byte gUnknown_03000840
_080064C0: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_80064C4
sub_80064C4: @ 0x080064C4
	push {lr}
	ldr r2, _080064F4
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r1, #0
	strb r1, [r2, #0x14]
	strb r1, [r2, #0x15]
	ldr r0, _080064F8
	str r0, [r2, #4]
	ldr r0, _080064FC
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	adds r2, #0x8d
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x10
	bl sub_800F408
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_080064F4: .4byte gUnknown_03003730
_080064F8: .4byte 0x00000203
_080064FC: .4byte gUnknown_03003A50

	THUMB_FUNC_START sub_8006500
sub_8006500: @ 0x08006500
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	adds r0, r1, #2
	str r0, [r5, #4]
	ldrh r1, [r1, #2]
	ldr r6, _0800654C
	ands r6, r1
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_800ECF8
	adds r2, r0, #0
	cmp r2, #0
	bge _08006586
	adds r0, r4, #0
	bl sub_800ED40
	adds r2, r0, #0
	cmp r2, #0
	blt _08006586
	cmp r4, #0
	beq _08006554
	ldr r0, _08006550
	adds r1, r0, #0
	adds r1, #0x38
	adds r1, r2, r1
	strb r6, [r1]
	ldrb r1, [r0, #0x11]
	adds r1, #1
	strb r1, [r0, #0x11]
	b _08006564
	.align 2, 0
_0800654C: .4byte 0x00003FFF
_08006550: .4byte gUnknown_03002840
_08006554:
	ldr r0, _08006594
	adds r1, r0, #0
	adds r1, #0x18
	adds r1, r2, r1
	strb r6, [r1]
	ldrb r1, [r0, #0x10]
	adds r1, #1
	strb r1, [r0, #0x10]
_08006564:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #7
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08006586
	ldr r1, _08006598
	adds r0, r1, #0
	adds r0, #0x26
	strb r4, [r0]
	adds r0, #1
	strb r6, [r0]
	ldr r0, [r1, #4]
	str r0, [r1, #8]
	movs r0, #8
	str r0, [r1, #4]
_08006586:
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08006594: .4byte gUnknown_03002840
_08006598: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_800659C
sub_800659C: @ 0x0800659C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	adds r0, r1, #2
	str r0, [r5, #4]
	ldrh r2, [r1, #2]
	ldr r1, _080065D0
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_800ECF8
	adds r2, r0, #0
	cmp r2, #0
	blt _080065E8
	cmp r4, #0
	beq _080065D8
	ldr r0, _080065D4
	adds r1, r0, #0
	adds r1, #0x38
	b _080065DE
	.align 2, 0
_080065D0: .4byte 0x00003FFF
_080065D4: .4byte gUnknown_03002840
_080065D8:
	ldr r0, _080065F8
	adds r1, r0, #0
	adds r1, #0x18
_080065DE:
	adds r1, r2, r1
	movs r2, #0xff
	strb r2, [r1]
	bl sub_800ED68
_080065E8:
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080065F8: .4byte gUnknown_03002840

	THUMB_FUNC_START sub_80065FC
sub_80065FC: @ 0x080065FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldrh r2, [r0, #2]
	ldr r6, _08006638
	adds r3, r6, #0
	ands r3, r2
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r0, #4
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_800ECF8
	adds r1, r0, #0
	cmp r1, #0
	blt _0800666A
	ldr r0, [r4, #4]
	adds r3, r6, #0
	ldrh r0, [r0]
	ands r3, r0
	cmp r5, #0
	beq _08006640
	ldr r0, _0800663C
	adds r0, #0x38
	b _08006644
	.align 2, 0
_08006638: .4byte 0x00003FFF
_0800663C: .4byte gUnknown_03002840
_08006640:
	ldr r0, _08006678
	adds r0, #0x18
_08006644:
	adds r0, r1, r0
	strb r3, [r0]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #7
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800666A
	ldr r1, _0800667C
	adds r0, r1, #0
	adds r0, #0x26
	strb r5, [r0]
	adds r0, #1
	strb r3, [r0]
	ldr r0, [r1, #4]
	str r0, [r1, #8]
	movs r0, #8
	str r0, [r1, #4]
_0800666A:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08006678: .4byte gUnknown_03002840
_0800667C: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8006680
sub_8006680: @ 0x08006680
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	adds r1, r0, #2
	ldrh r4, [r0, #2]
	adds r0, r1, #2
	ldrh r5, [r1, #2]
	adds r1, r0, #2
	ldrh r2, [r0, #2]
	adds r0, r1, #2
	str r0, [r6, #4]
	ldrh r3, [r1, #2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8011108
	ldr r1, _080066D0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #1
	ands r0, r5
	movs r2, #0
	cmp r0, #0
	beq _080066B4
	movs r2, #0x1e
_080066B4:
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0x1f
	adds r3, r5, #0
	bl sub_800077C
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080066D0: .4byte gUnknown_080187B4

	THUMB_FUNC_START sub_80066D4
sub_80066D4: @ 0x080066D4
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r1, [r2, #4]
	adds r5, r1, #2
	str r5, [r2, #4]
	ldr r0, _08006708
	ldrh r4, [r0, #0x28]
	adds r3, r0, #0
	ldrh r1, [r1, #2]
	cmp r4, r1
	beq _0800670C
_080066EA:
	ldrh r0, [r3, #0x28]
	strh r0, [r3, #0x2a]
	ldr r0, [r2, #4]
	ldrh r0, [r0]
	strh r0, [r3, #0x28]
	adds r1, r3, #0
	adds r1, #0x2c
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2, #4]
	adds r0, #2
	str r0, [r2, #4]
	movs r0, #1
	b _08006716
	.align 2, 0
_08006708: .4byte gUnknown_03003730
_0800670C:
	cmp r4, #0x42
	beq _080066EA
	adds r0, r5, #2
	str r0, [r2, #4]
	movs r0, #0
_08006716:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800671C
sub_800671C: @ 0x0800671C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #4]
	adds r0, r1, #2
	str r0, [r7, #4]
	ldrh r2, [r1, #2]
	cmp r2, #1
	beq _08006760
	cmp r2, #1
	bgt _08006736
	cmp r2, #0
	beq _08006740
	b _08006810
_08006736:
	cmp r2, #2
	beq _08006784
	cmp r2, #3
	beq _080067B4
	b _08006810
_08006740:
	ldr r1, _08006758
	movs r0, #1
	strb r0, [r1, #0x15]
	ldr r1, _0800675C
	adds r3, r1, #0
	adds r3, #0x4a
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	ldrh r4, [r3]
	orrs r0, r4
	b _08006772
	.align 2, 0
_08006758: .4byte gUnknown_03003730
_0800675C: .4byte gUnknown_030038D0
_08006760:
	ldr r0, _08006778
	movs r2, #0
	strb r2, [r0, #0x15]
	ldr r1, _0800677C
	adds r3, r1, #0
	adds r3, #0x4a
	ldr r0, _08006780
	ldrh r4, [r3]
	ands r0, r4
_08006772:
	strh r0, [r3]
	strh r2, [r1, #0xe]
	b _08006810
	.align 2, 0
_08006778: .4byte gUnknown_03003730
_0800677C: .4byte gUnknown_030038D0
_08006780: .4byte 0x0000FDFF
_08006784:
	ldr r0, _080067A8
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _0800679E
	ldr r0, _080067AC
	bl sub_8010960
	ldr r0, _080067B0
	movs r1, #0
	strb r1, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
_0800679E:
	movs r0, #1
	bl sub_800244C
	b _08006810
	.align 2, 0
_080067A8: .4byte gUnknown_03003730
_080067AC: .4byte gUnknown_03000840
_080067B0: .4byte gUnknown_03003A50
_080067B4:
	ldr r5, _08006824
	ldrb r0, [r5, #4]
	cmp r0, #3
	bne _080067CE
	ldr r0, _08006828
	bl sub_8010960
	ldr r0, _0800682C
	movs r1, #0
	strb r1, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
_080067CE:
	movs r0, #0
	bl sub_800244C
	ldrb r6, [r5, #4]
	cmp r6, #4
	bne _08006810
	ldr r4, _0800682C
	movs r0, #0
	strb r0, [r4, #0xe]
	ldrb r0, [r5, #5]
	cmp r0, #6
	bne _080067EE
	adds r0, r4, #0
	movs r1, #1
	bl sub_800B7A8
_080067EE:
	ldrb r0, [r5, #5]
	cmp r0, #8
	bne _08006802
	adds r0, r4, #0
	movs r1, #4
	bl sub_800B7A8
	strb r6, [r4, #0xc]
	movs r0, #0xe0
	strb r0, [r4, #0xd]
_08006802:
	ldrb r5, [r5, #5]
	cmp r5, #9
	bne _08006810
	adds r0, r4, #0
	movs r1, #8
	bl sub_800B7A8
_08006810:
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	ldr r1, _0800682C
	movs r0, #0
	strb r0, [r1, #6]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08006824: .4byte gUnknown_03003730
_08006828: .4byte gUnknown_03000840
_0800682C: .4byte gUnknown_03003A50

	THUMB_FUNC_START sub_8006830
sub_8006830: @ 0x08006830
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	ldr r4, _08006858
	ldrh r0, [r4, #0x28]
	bl sub_8002224
	adds r2, r0, #0
	movs r0, #0xf
	ands r2, r0
	cmp r2, #0
	beq _0800685C
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	b _08006862
	.align 2, 0
_08006858: .4byte gUnknown_03003730
_0800685C:
	adds r0, r4, #0
	adds r0, #0x2e
	strb r2, [r0]
_08006862:
	ldr r0, [r5, #4]
	ldrh r1, [r0]
	lsrs r2, r1, #8
	adds r3, r0, #0
	cmp r2, #1
	beq _08006888
	cmp r2, #1
	blo _0800687C
	cmp r2, #2
	beq _08006894
	cmp r2, #3
	beq _080068A0
	b _080068A6
_0800687C:
	ldr r0, _08006884
	rsbs r1, r1, #0
	adds r0, #0x3c
	b _080068A4
	.align 2, 0
_08006884: .4byte gUnknown_03003730
_08006888:
	ldr r0, _08006890
	adds r0, #0x3c
	b _080068A4
	.align 2, 0
_08006890: .4byte gUnknown_03003730
_08006894:
	ldr r0, _0800689C
	rsbs r1, r1, #0
	b _080068A2
	.align 2, 0
_0800689C: .4byte gUnknown_03003730
_080068A0:
	ldr r0, _080068B4
_080068A2:
	adds r0, #0x3d
_080068A4:
	strb r1, [r0]
_080068A6:
	adds r0, r3, #2
	str r0, [r5, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080068B4: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_80068B8
sub_80068B8: @ 0x080068B8
	push {r4, r5, lr}
	ldr r1, [r0, #4]
	adds r2, r1, #2
	ldrh r4, [r1, #2]
	adds r3, r2, #2
	ldrh r5, [r2, #2]
	ldr r1, _080068F4
	adds r2, r1, #0
	adds r2, #0x90
	strh r5, [r2]
	ldrh r2, [r3, #2]
	adds r1, #0x92
	strh r2, [r1]
	adds r3, #4
	str r3, [r0, #4]
	cmp r4, #0
	beq _080068FC
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_8010048
	ldr r0, _080068F8
	movs r1, #1
	strb r1, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
	b _0800690E
	.align 2, 0
_080068F4: .4byte gUnknown_03003730
_080068F8: .4byte gUnknown_03003A50
_080068FC:
	ldr r0, _08006918
	bl sub_8010960
	ldr r0, _0800691C
	movs r1, #0
	strb r1, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
_0800690E:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08006918: .4byte gUnknown_03000840
_0800691C: .4byte gUnknown_03003A50

	THUMB_FUNC_START sub_8006920
sub_8006920: @ 0x08006920
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	ldr r1, _08006964
	adds r2, r1, #0
	adds r2, #0x4a
	ldr r0, _08006968
	ldrh r4, [r2]
	ands r0, r4
	strh r0, [r2]
	ldr r2, _0800696C
	movs r0, #0
	ldr r4, _08006970
	adds r5, r1, #0
	movs r1, #0
_08006942:
	strh r1, [r2]
	adds r0, #1
	adds r2, #2
	cmp r0, r4
	bls _08006942
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r5, #4]
	ldr r0, _08006974
	ldrh r1, [r3]
	ands r0, r1
	strh r0, [r3]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08006964: .4byte gUnknown_030038D0
_08006968: .4byte 0x0000FBFF
_0800696C: .4byte gUnknown_03000000
_08006970: .4byte 0x0000029F
_08006974: .4byte 0x0000FFBF

	THUMB_FUNC_START sub_8006978
sub_8006978: @ 0x08006978
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0x20]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8006988
sub_8006988: @ 0x08006988
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0x31
	bl sub_800F3E0
	movs r0, #0x10
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _080069C0
	adds r3, r2, #0
	adds r3, #0xb4
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r2, #4]
	str r0, [r2, #8]
	ldr r0, _080069C4
	str r0, [r2, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080069C0: .4byte gUnknown_03003730
_080069C4: .4byte 0x01000007

	THUMB_FUNC_START sub_80069C8
sub_80069C8: @ 0x080069C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _080069E0
	bl sub_800F514
	b _080069E4
_080069E0:
	bl sub_800F4AC
_080069E4:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_80069F4
sub_80069F4: @ 0x080069F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r0, #2
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08006A0C
	bl sub_800F4D8
	b _08006A10
_08006A0C:
	bl sub_800F454
_08006A10:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8006A20
sub_8006A20: @ 0x08006A20
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _08006A38
	movs r0, #0
	strb r0, [r1, #0x14]
	strb r0, [r1, #0x15]
	movs r0, #2
	str r0, [r1, #4]
	movs r0, #1
	bx lr
	.align 2, 0
_08006A38: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8006A3C
sub_8006A3C: @ 0x08006A3C
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0x22]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8006A4C
sub_8006A4C: @ 0x08006A4C
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08006A6C
	ldr r0, _08006A68
	adds r0, #0xb4
	ldr r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	b _08006A78
	.align 2, 0
_08006A68: .4byte gUnknown_03003730
_08006A6C:
	ldr r0, _08006A84
	adds r0, #0xb4
	ldr r1, [r0]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r1, r2
_08006A78:
	str r1, [r0]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08006A84: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8006A88
sub_8006A88: @ 0x08006A88
	push {r4, r5, lr}
	ldr r1, [r0, #4]
	adds r4, r1, #2
	ldr r3, _08006AB0
	ldrh r1, [r1, #2]
	strh r1, [r3, #0x10]
	adds r5, r3, #0
	adds r5, #0xb4
	ldr r1, [r5]
	movs r2, #1
	orrs r1, r2
	str r1, [r5]
	ldrh r1, [r4, #2]
	strb r1, [r3, #0x12]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08006AB0: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8006AB4
sub_8006AB4: @ 0x08006AB4
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08006AD4
	ldr r1, _08006AD0
	subs r2, r1, #4
	ldr r0, [r2]
	str r0, [r1]
	movs r0, #5
	str r0, [r2]
	b _08006ADC
	.align 2, 0
_08006AD0: .4byte gUnknown_03003730+0x8
_08006AD4:
	ldr r1, _08006AE8
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08006ADC:
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08006AE8: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8006AEC
sub_8006AEC: @ 0x08006AEC
	adds r3, r0, #0
	ldr r1, [r3, #4]
	adds r0, r1, #2
	str r0, [r3, #4]
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _08006B24
	ldr r1, _08006B18
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08006B1C
	adds r1, #0x4a
	ldr r0, _08006B20
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	b _08006B86
	.align 2, 0
_08006B18: .4byte gUnknown_03003AB0
_08006B1C: .4byte gUnknown_030038D0
_08006B20: .4byte 0x0000FDFF
_08006B24:
	cmp r0, #2
	bne _08006B68
	ldr r1, _08006B5C
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r2, [r1]
	ldr r1, _08006B60
	adds r1, #0x4a
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r2, [r1]
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _08006B64
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
_08006B50:
	strh r2, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #4
	bls _08006B50
	b _08006B86
	.align 2, 0
_08006B5C: .4byte gUnknown_03003AB0
_08006B60: .4byte gUnknown_030038D0
_08006B64: .4byte gUnknown_03002C38
_08006B68:
	cmp r0, #0
	beq _08006B80
	ldr r1, _08006B7C
	subs r2, r1, #4
	ldr r0, [r2]
	str r0, [r1]
	movs r0, #6
	str r0, [r2]
	b _08006B86
	.align 2, 0
_08006B7C: .4byte gUnknown_03003730+0x8
_08006B80:
	ldr r1, _08006B90
	ldr r0, _08006B94
	str r0, [r1]
_08006B86:
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08006B90: .4byte gUnknown_03003730+0x4
_08006B94: .4byte 0x00000103

	THUMB_FUNC_START sub_8006B98
sub_8006B98: @ 0x08006B98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r1, [r1, #2]
	movs r0, #0
	bl sub_8002BD0
	cmp r0, #0
	beq _08006BB4
	ldr r0, [r4, #4]
	ldrh r1, [r0, #2]
	b _08006BB8
_08006BB4:
	ldr r0, [r4, #4]
	ldrh r1, [r0, #4]
_08006BB8:
	strh r1, [r4, #0x20]
	adds r0, #6
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8006BC8
sub_8006BC8: @ 0x08006BC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	ldr r4, _08006C18
	adds r5, r4, #0
	adds r5, #0x8f
	ldrb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x8a
	strb r0, [r1]
	subs r0, #1
	strb r0, [r5]
	subs r1, #2
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x4c
	bl sub_800F3E0
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bgt _08006C0E
	ldr r1, _08006C1C
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6, #0x20]
_08006C0E:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08006C18: .4byte gUnknown_03003730
_08006C1C: .4byte gUnknown_08014D82

	THUMB_FUNC_START sub_8006C20
sub_8006C20: @ 0x08006C20
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	movs r3, #0
	strh r2, [r0, #0x20]
	adds r1, #4
	str r1, [r0, #4]
	strb r3, [r0, #0xe]
	strb r3, [r0, #0xf]
	movs r2, #0
	ldr r4, _08006C70
	ldr r6, _08006C74
	ldr r5, _08006C78
	ldr r3, _08006C7C
	ldr r1, _08006C80
_08006C3E:
	adds r0, r3, #0
	ldrh r7, [r1]
	ands r0, r7
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08006C3E
	ldr r1, _08006C84
	adds r0, r4, r1
	movs r1, #9
	strh r1, [r0]
	ldr r2, _08006C88
	adds r0, r4, r2
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_800FBA0
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08006C70: .4byte gUnknown_03002000
_08006C74: .4byte gUnknown_03000840
_08006C78: .4byte gUnknown_03003730
_08006C7C: .4byte 0x00007FFF
_08006C80: .4byte gUnknown_03003C00
_08006C84: .4byte 0x000004DC
_08006C88: .4byte 0x000004DE

	THUMB_FUNC_START sub_8006C8C
sub_8006C8C: @ 0x08006C8C
	push {r4, r5, lr}
	ldr r1, _08006CDC
	ldrh r2, [r0]
	ands r1, r2
	movs r2, #0
	strh r1, [r0]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	strb r2, [r0, #0xe]
	strb r2, [r0, #0xf]
	adds r1, r0, #0
	adds r1, #0x36
	strb r2, [r1]
	adds r0, #0x37
	strb r2, [r0]
	movs r2, #0
	ldr r4, _08006CE0
	ldr r3, _08006CE4
	ldr r1, _08006CE8
_08006CB4:
	adds r0, r3, #0
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08006CB4
	ldr r1, _08006CEC
	adds r0, r4, r1
	movs r1, #9
	strh r1, [r0]
	ldr r2, _08006CF0
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08006CDC: .4byte 0x0000FFFC
_08006CE0: .4byte gUnknown_03002000
_08006CE4: .4byte 0x00007FFF
_08006CE8: .4byte gUnknown_03003C00
_08006CEC: .4byte 0x000004DC
_08006CF0: .4byte 0x000004DE

	THUMB_FUNC_START sub_8006CF4
sub_8006CF4: @ 0x08006CF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	ldrh r2, [r0, #2]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08006D10
	adds r0, r2, #0
	bl sub_8010204
	b _08006D1A
_08006D10:
	adds r0, r2, #0
	bl sub_800F8BC
	bl sub_8010960
_08006D1A:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8006D28
sub_8006D28: @ 0x08006D28
	adds r2, r0, #0
	ldr r1, [r2, #4]
	adds r0, r1, #2
	str r0, [r2, #4]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08006D40
	movs r0, #0
	strb r0, [r2, #0x16]
_08006D40:
	ldr r0, [r2, #4]
	adds r0, #2
	str r0, [r2, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8006D4C
sub_8006D4C: @ 0x08006D4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_80106A4
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8006D70
sub_8006D70: @ 0x08006D70
	ldr r2, [r0, #4]
	adds r1, r2, #2
	ldrh r2, [r2, #2]
	ldrh r3, [r1, #2]
	adds r1, #4
	str r1, [r0, #4]
	ldr r0, _08006D8C
	lsls r2, r2, #3
	adds r0, #0xd8
	adds r2, r2, r0
	strb r3, [r2]
	movs r0, #0
	bx lr
	.align 2, 0
_08006D8C: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8006D90
sub_8006D90: @ 0x08006D90
	ldr r1, [r0, #4]
	adds r2, r1, #2
	ldrh r3, [r1, #2]
	adds r1, r2, #2
	str r1, [r0, #4]
	ldr r1, _08006DE4
	mov ip, r1
	lsls r3, r3, #3
	adds r1, #0xdc
	adds r1, r3, r1
	ldrh r2, [r2, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	mov r1, ip
	adds r1, #0xdd
	adds r1, r3, r1
	ldrh r2, [r2, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	mov r1, ip
	adds r1, #0xde
	adds r1, r3, r1
	ldrh r2, [r2, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	mov r1, ip
	adds r1, #0xdf
	adds r3, r3, r1
	ldrh r1, [r2, #2]
	strb r1, [r3]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08006DE4: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8006DE8
sub_8006DE8: @ 0x08006DE8
	push {r4, lr}
	ldr r2, [r0, #4]
	ldr r4, _08006E14
	ldrh r3, [r2, #2]
	adds r1, r4, #0
	adds r1, #0x8c
	strb r3, [r1]
	adds r2, #4
	str r2, [r0, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0x1f
	bl sub_80007D8
	ldr r0, _08006E18
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08006E14: .4byte gUnknown_03003730
_08006E18: .4byte 0x00000504

	THUMB_FUNC_START sub_8006E1C
sub_8006E1C: @ 0x08006E1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r1, [r1, #2]
	lsrs r2, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08006E44
	movs r0, #0
	adds r1, r2, #0
	bl sub_8002BD0
	cmp r0, #0
	bne _08006E56
	ldr r0, [r4, #4]
	adds r0, #4
	b _08006E96
_08006E44:
	movs r0, #0
	adds r1, r2, #0
	bl sub_8002BD0
	cmp r0, #0
	beq _08006E56
	ldr r0, [r4, #4]
	adds r0, #4
	b _08006E96
_08006E56:
	ldr r1, [r4, #4]
	movs r0, #0x80
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08006E8C
	ldrh r1, [r1, #2]
	lsls r0, r1, #2
	ldr r1, _08006E88
	adds r0, r0, r1
	ldrh r2, [r0]
	lsrs r1, r2, #1
	ldrh r2, [r0, #2]
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r4, #0x1e]
	lsls r0, r2, #2
	ldr r2, _08006E88
	adds r0, r0, r2
	ldr r0, [r0]
	subs r2, #4
	adds r0, r0, r2
	str r0, [r4, #8]
	lsls r1, r1, #1
	b _08006E94
	.align 2, 0
_08006E88: .4byte gUnknown_02011FC4
_08006E8C:
	ldrh r1, [r1, #2]
	lsrs r2, r1, #1
	lsls r1, r2, #1
	ldr r0, [r4, #8]
_08006E94:
	adds r0, r0, r1
_08006E96:
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8006EA0
sub_8006EA0: @ 0x08006EA0
	ldr r1, [r0, #4]
	ldrh r1, [r1, #2]
	lsls r1, r1, #2
	ldr r2, _08006ED0
	adds r1, r1, r2
	ldrh r2, [r1]
	lsrs r3, r2, #1
	ldrh r1, [r1, #2]
	adds r2, r1, #0
	adds r2, #0x80
	strh r2, [r0, #0x1e]
	lsls r1, r1, #2
	ldr r2, _08006ED0
	adds r1, r1, r2
	ldr r1, [r1]
	subs r2, #4
	adds r1, r1, r2
	str r1, [r0, #8]
	lsls r3, r3, #1
	adds r1, r1, r3
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08006ED0: .4byte gUnknown_02011FC4

	THUMB_FUNC_START sub_8006ED4
sub_8006ED4: @ 0x08006ED4
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r4, r1, #2
	ldrh r2, [r1, #2]
	adds r1, r4, #2
	str r1, [r0, #4]
	ldr r3, _08006EFC
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r2, [r4, #2]
	strb r2, [r1, #3]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08006EFC: .4byte gUnknown_030028A0

	THUMB_FUNC_START sub_8006F00
sub_8006F00: @ 0x08006F00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08006F20
	ldr r0, _08006F1C
	movs r1, #1
	bl sub_800FA74
	b _08006F28
	.align 2, 0
_08006F1C: .4byte gUnknown_03000840
_08006F20:
	ldr r0, _08006F38
	movs r1, #0
	bl sub_800FA74
_08006F28:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08006F38: .4byte gUnknown_03000840

	THUMB_FUNC_START sub_8006F3C
sub_8006F3C: @ 0x08006F3C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #4]
	adds r0, r1, #2
	str r0, [r7, #4]
	ldrh r1, [r1, #2]
	lsrs r4, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08007028
	adds r0, r4, #0
	bl sub_8007554
	adds r5, r0, #0
	cmp r5, #0xff
	bne _08006FF8
	movs r0, #0xff
	bl sub_8007554
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08006FD4
	adds r6, r0, r1
	adds r5, #0x39
	strb r4, [r6]
	ldr r0, [r7, #0x3c]
	str r0, [r6, #0x10]
	ldr r2, _08006FD8
	ldr r0, _08006FDC
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #2
	adds r3, r3, r0
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r6, #0x10]
	str r0, [r2, #4]
	ldrh r4, [r3, #4]
	lsrs r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08006FE0
	str r0, [r2]
	ldr r0, _08006FE4
	str r0, [r2, #4]
	ldr r0, _08006FE8
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	strh r5, [r6, #0xe]
	lsls r1, r5, #3
	ldr r0, _08006FEC
	adds r1, r1, r0
	ldrh r0, [r3, #6]
	strh r0, [r1]
	strh r0, [r6, #8]
	ldrh r0, [r3, #8]
	strh r0, [r1, #2]
	strh r0, [r6, #0xa]
	ldr r0, [r6, #0x10]
	ldr r2, _08006FF0
	adds r5, r0, r2
	lsrs r5, r5, #5
	ldr r2, _08006FF4
	adds r0, r5, r2
	strh r0, [r1, #4]
	strh r0, [r6, #0xc]
	ldr r0, [r7, #0x3c]
	adds r0, r0, r4
	str r0, [r7, #0x3c]
	b _08007042
	.align 2, 0
_08006FD4: .4byte gUnknown_03003930
_08006FD8: .4byte 0x040000D4
_08006FDC: .4byte gUnknown_080187C8
_08006FE0: .4byte gUnknown_0824696C
_08006FE4: .4byte 0x050002C0
_08006FE8: .4byte 0x80000010
_08006FEC: .4byte gOamObjects
_08006FF0: .4byte 0xF9FEE800
_08006FF4: .4byte 0x000068C0
_08006FF8:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08007020
	adds r6, r0, r1
	ldrh r0, [r6, #0xe]
	lsls r1, r0, #3
	ldr r0, _08007024
	adds r1, r1, r0
	ldrh r0, [r6, #8]
	strh r0, [r1]
	ldrh r0, [r6, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r6, #0xc]
	strh r0, [r1, #4]
	movs r0, #0xfb
	ldrb r1, [r6, #5]
	ands r0, r1
	strb r0, [r6, #5]
	b _08007042
	.align 2, 0
_08007020: .4byte gUnknown_03003930
_08007024: .4byte gOamObjects
_08007028:
	adds r0, r4, #0
	bl sub_8007554
	adds r5, r0, #0
	ldr r1, _08007050
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #4
	ldrb r2, [r0, #5]
	orrs r1, r2
	strb r1, [r0, #5]
_08007042:
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007050: .4byte gUnknown_03003930

	THUMB_FUNC_START sub_8007054
sub_8007054: @ 0x08007054
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_8007554
	adds r2, r0, #0
	cmp r2, #0xff
	beq _080070AC
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldr r0, _080070A8
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0xff
	lsls r0, r0, #8
	ldrh r2, [r1, #8]
	ands r0, r2
	strh r0, [r1, #8]
	ldr r2, [r4, #4]
	ldrb r2, [r2]
	orrs r0, r2
	strh r0, [r1, #8]
	movs r0, #0xfe
	lsls r0, r0, #8
	ldrh r2, [r1, #0xa]
	ands r0, r2
	strh r0, [r1, #0xa]
	ldr r2, [r4, #4]
	ldrh r2, [r2]
	lsrs r2, r2, #8
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, [r4, #4]
	adds r0, #2
	b _080070B0
	.align 2, 0
_080070A8: .4byte gUnknown_03003930
_080070AC:
	ldr r0, [r4, #4]
	adds r0, #4
_080070B0:
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_80070BC
sub_80070BC: @ 0x080070BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_8007554
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08007114
	ldr r0, _08007110
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r4, #4]
	movs r0, #3
	ldrb r2, [r2]
	ands r0, r2
	movs r3, #0
	strb r0, [r1, #4]
	ldr r2, [r4, #4]
	adds r0, r2, #2
	str r0, [r4, #4]
	ldrh r2, [r2, #2]
	lsrs r0, r2, #8
	strb r0, [r1, #3]
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	strb r0, [r1, #6]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #2
	ldrb r2, [r1, #5]
	orrs r0, r2
	strb r0, [r1, #5]
	strb r3, [r1, #7]
	b _0800711A
	.align 2, 0
_08007110: .4byte gUnknown_03003930
_08007114:
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
_0800711A:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8007124
sub_8007124: @ 0x08007124
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_8007554
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08007166
	ldr r1, _08007184
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r3, r0, r1
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	strb r0, [r3, #1]
	ldr r1, [r4, #4]
	movs r0, #1
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08007166
	ldr r0, _08007188
	adds r1, r2, #0
	adds r1, #0x39
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r3, #0xa]
	strh r0, [r1, #2]
_08007166:
	ldr r1, _08007184
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08007184: .4byte gUnknown_03003930
_08007188: .4byte gOamObjects

	THUMB_FUNC_START sub_800718C
sub_800718C: @ 0x0800718C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_8007554
	adds r2, r0, #0
	cmp r2, #0xff
	beq _080071C8
	ldr r0, _080071C4
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #2
	ldrb r1, [r1, #5]
	ands r0, r1
	cmp r0, #0
	beq _080071C8
	ldr r0, [r4, #4]
	subs r0, #2
	str r0, [r4, #4]
	movs r0, #1
	b _080071D0
	.align 2, 0
_080071C4: .4byte gUnknown_03003930
_080071C8:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
_080071D0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_80071D8
sub_80071D8: @ 0x080071D8
	push {r4, lr}
	ldr r4, [r0, #4]
	ldr r2, _0800722C
	ldr r1, _08007230
	str r1, [r2]
	ldr r1, _08007234
	str r1, [r2, #4]
	ldr r1, _08007238
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800723C
	str r1, [r2]
	ldr r1, _08007240
	str r1, [r2, #4]
	ldr r1, _08007244
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r2, _08007248
	movs r3, #0
	movs r1, #0xf0
	strh r1, [r2]
	movs r1, #0x30
	strh r1, [r2, #2]
	strb r3, [r2, #0x17]
	movs r1, #8
	strb r1, [r2, #0x16]
	movs r1, #0xf
	strb r1, [r2, #8]
	ldrh r1, [r4, #2]
	strb r1, [r2, #9]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800722C: .4byte 0x040000D4
_08007230: .4byte gUnknown_08190AC0
_08007234: .4byte 0x06011F80
_08007238: .4byte 0x80000040
_0800723C: .4byte gUnknown_081942C0
_08007240: .4byte 0x05000300
_08007244: .4byte 0x80000010
_08007248: .4byte gUnknown_03003A50

	THUMB_FUNC_START sub_800724C
sub_800724C: @ 0x0800724C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, _080072A8
	ldrh r2, [r6]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _080072B4
	ldrh r1, [r5]
	ldrb r3, [r5, #8]
	adds r0, r1, r3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5]
	adds r0, r3, #0
	subs r0, #1
	strb r0, [r5, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08007288
	ldr r0, _080072AC
	ands r0, r2
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6]
_08007288:
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r3, [r6]
	ands r0, r3
	cmp r0, #0
	bne _08007296
	b _08007496
_08007296:
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, _080072B0
	ldrh r1, [r6]
	ands r0, r1
	strh r0, [r6]
	b _08007496
	.align 2, 0
_080072A8: .4byte gUnknown_03003A50
_080072AC: .4byte 0x0000FF7F
_080072B0: .4byte 0x0000FDFF
_080072B4:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080072C0
	b _08007496
_080072C0:
	movs r0, #0x2c
	ldrb r2, [r5, #9]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _080073CC
	adds r4, r1, r0
	ldr r1, _080073D0
	movs r0, #0x20
	ldrh r2, [r1]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _080072F8
	ldrh r0, [r5]
	subs r0, #3
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x28
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhs _080072F0
	strh r1, [r5]
_080072F0:
	ldrh r0, [r5]
	cmp r0, #0xe0
	bls _080072F8
	strh r3, [r5]
_080072F8:
	movs r0, #0x10
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08007322
	ldrh r0, [r5]
	adds r0, #3
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08007318
	strh r1, [r5]
_08007318:
	ldrh r3, [r5]
	cmp r3, #0xe0
	bls _08007322
	movs r0, #0xe0
	strh r0, [r5]
_08007322:
	movs r0, #0x40
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0800734C
	ldrh r0, [r5, #2]
	subs r0, #3
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhs _08007342
	strh r1, [r5, #2]
_08007342:
	ldrh r3, [r5, #2]
	cmp r3, #0x90
	bls _0800734C
	movs r0, #0
	strh r0, [r5, #2]
_0800734C:
	movs r0, #0x80
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08007376
	ldrh r0, [r5, #2]
	adds r0, #3
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _0800736C
	strh r1, [r5, #2]
_0800736C:
	ldrh r3, [r5, #2]
	cmp r3, #0x90
	bls _08007376
	movs r0, #0x90
	strh r0, [r5, #2]
_08007376:
	movs r1, #1
	ldrh r2, [r2, #2]
	ands r1, r2
	cmp r1, #0
	beq _08007468
	ldr r0, _080073D4
	ldrh r1, [r6]
	ands r0, r1
	strh r0, [r6]
	ldr r1, _080073D8
	ldrh r2, [r1, #0x34]
	ldrh r3, [r5]
	adds r0, r2, r3
	adds r0, #0xc
	lsls r0, r0, #0x10
	ldr r2, _080073DC
	ldrh r1, [r1, #0x36]
	ldrh r3, [r5, #2]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _080073E0
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r2
	movs r1, #4
	orrs r0, r1
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [sp, #4]
	mov r0, sp
	adds r1, r4, #0
	bl sub_800FEC8
	cmp r0, #0
	beq _080073E4
	ldrh r0, [r4, #0x20]
	bl sub_800549C
	b _08007400
	.align 2, 0
_080073CC: .4byte gUnknown_08018870
_080073D0: .4byte gUnknown_03003720
_080073D4: .4byte 0x0000FEF7
_080073D8: .4byte gUnknown_03003730
_080073DC: .4byte 0xFFFF0000
_080073E0: .4byte 0x0000FFFF
_080073E4:
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sp
	bl sub_800FEC8
	cmp r0, #0
	beq _080073FA
	ldrh r0, [r4, #0x22]
	bl sub_800549C
	b _08007400
_080073FA:
	ldrh r0, [r4, #0x24]
	bl sub_800549C
_08007400:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r0, #0
	ldrh r0, [r6]
	orrs r0, r4
	strh r0, [r6]
	ldr r1, _08007450
	ldr r0, _08007454
	str r0, [r1]
	ldr r0, _08007458
	str r0, [r1, #4]
	ldr r0, _0800745C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x2b
	bl sub_800F3E0
	ldrh r1, [r6]
	orrs r4, r1
	strh r4, [r6]
	ldr r1, _08007460
	ldrh r2, [r5, #2]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r5, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r2, r5, r0
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _08007464
	strh r0, [r1]
	movs r0, #0
	b _080074C8
	.align 2, 0
_08007450: .4byte 0x040000D4
_08007454: .4byte gUnknown_081942C0
_08007458: .4byte 0x05000300
_0800745C: .4byte 0x80000010
_08007460: .4byte gOamObjects
_08007464: .4byte 0x000084FC
_08007468:
	ldrb r0, [r5, #0x17]
	adds r0, #1
	strb r0, [r5, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08007496
	strb r1, [r5, #0x17]
	ldrb r0, [r5, #0x16]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x16]
	ldr r1, _080074D0
	lsls r0, r0, #5
	ldr r2, _080074D4
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080074D8
	str r0, [r1, #4]
	ldr r0, _080074DC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08007496:
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ldrh r1, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _080074E0
	ldrh r2, [r5, #2]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r5, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r2, r5, r0
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _080074E4
	strh r0, [r1]
	movs r0, #1
_080074C8:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080074D0: .4byte 0x040000D4
_080074D4: .4byte gUnknown_081942C0
_080074D8: .4byte 0x05000300
_080074DC: .4byte 0x80000010
_080074E0: .4byte gOamObjects
_080074E4: .4byte 0x000084FC

	THUMB_FUNC_START sub_80074E8
sub_80074E8: @ 0x080074E8
	push {r4, r5, lr}
	movs r4, #0
	ldr r3, _08007544
	ldr r5, _08007548
	ldr r2, _0800754C
_080074F2:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08007536
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	str r1, [r3]
	ldr r1, [r2, #0x10]
	str r1, [r3, #4]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #4
	ldrb r1, [r2, #5]
	ands r0, r1
	cmp r0, #0
	bne _08007536
	ldrh r0, [r2, #0xe]
	lsls r1, r0, #3
	ldr r0, _08007550
	adds r1, r1, r0
	ldrh r0, [r2, #8]
	strh r0, [r1]
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #4]
_08007536:
	adds r2, #0x14
	adds r4, #1
	cmp r4, #7
	bls _080074F2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007544: .4byte 0x040000D4
_08007548: .4byte gUnknown_080187C8
_0800754C: .4byte gUnknown_03003930
_08007550: .4byte gOamObjects

	THUMB_FUNC_START sub_8007554
sub_8007554: @ 0x08007554
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _0800756C
_0800755A:
	ldrb r0, [r2]
	cmp r0, r3
	beq _08007570
	adds r2, #0x14
	adds r1, #1
	cmp r1, #7
	bls _0800755A
	movs r0, #0xff
	b _08007572
	.align 2, 0
_0800756C: .4byte gUnknown_03003930
_08007570:
	adds r0, r1, #0
_08007572:
	bx lr

	THUMB_FUNC_START sub_8007574
sub_8007574: @ 0x08007574
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _08007594
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	ldr r0, _08007598
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r1, #0xc0
	strh r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_08007594: .4byte 0x0000FBFF
_08007598: .4byte gOamObjects

	THUMB_FUNC_START sub_800759C
sub_800759C: @ 0x0800759C
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _080075F4
	movs r4, #0
	ldr r5, _080075F8
	ldr r7, _080075FC
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r6, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_080075B8:
	strh r7, [r1]
	adds r0, r3, r6
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r4, #1
	cmp r4, #3
	bls _080075B8
	movs r4, #0
	adds r0, r5, #0
	movs r1, #0xf
	bl sub_800B7A8
	movs r0, #0xe0
	strb r0, [r5, #0xd]
	strb r4, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	strb r4, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r1, _08007600
	adds r0, #0xfc
	str r0, [r1]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080075F4: .4byte gUnknown_03002CA8
_080075F8: .4byte gUnknown_03003A50
_080075FC: .4byte 0x000040E0
_08007600: .4byte gUnknown_03003730+0x4

	THUMB_FUNC_START sub_8007604
sub_8007604: @ 0x08007604
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08007628
	ldr r0, _08007624
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	b _08007636
	.align 2, 0
_08007624: .4byte gUnknown_03003730
_08007628:
	ldr r0, _08007644
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #4
	orrs r1, r2
_08007636:
	str r1, [r0]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08007644: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8007648
sub_8007648: @ 0x08007648
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08007674
	ldr r1, _0800766C
	movs r0, #0xf0
	strh r0, [r1, #4]
	ldr r1, _08007670
	adds r1, #0xb4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r0, r2
	str r0, [r1]
	b _08007698
	.align 2, 0
_0800766C: .4byte gUnknown_03003AB0
_08007670: .4byte gUnknown_03003730
_08007674:
	ldr r1, _080076A4
	movs r0, #0xf0
	strh r0, [r1, #4]
	ldr r1, _080076A8
	adds r1, #0xb4
	ldr r0, [r1]
	ldr r2, _080076AC
	ands r0, r2
	str r0, [r1]
	ldr r1, _080076B0
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
_0800768E:
	strh r2, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #4
	bls _0800768E
_08007698:
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_080076A4: .4byte gUnknown_03003AB0
_080076A8: .4byte gUnknown_03003730
_080076AC: .4byte 0xFFFFFBFF
_080076B0: .4byte gUnknown_03002C38

	THUMB_FUNC_START sub_80076B4
sub_80076B4: @ 0x080076B4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _080076F8
	ldr r2, [r3, #4]
	adds r0, r2, #2
	str r0, [r3, #4]
	ldr r4, _080076FC
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #4]
	str r0, [r4, #8]
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _0800771C
	ldr r1, _08007700
	ldr r0, _08007704
	str r0, [r1]
	ldr r0, _08007708
	str r0, [r1, #4]
	ldr r0, _0800770C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08007710
	str r0, [r1]
	ldr r0, _08007714
	str r0, [r1, #4]
	ldr r0, _08007718
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #9
	b _08007748
	.align 2, 0
_080076F8: .4byte gUnknown_03002CA8
_080076FC: .4byte gUnknown_03003730
_08007700: .4byte 0x040000D4
_08007704: .4byte gUnknown_08191CA0
_08007708: .4byte 0x06013400
_0800770C: .4byte 0x80000800
_08007710: .4byte gUnknown_08194520
_08007714: .4byte 0x050002A0
_08007718: .4byte 0x80000010
_0800771C:
	ldr r1, _0800776C
	ldr r0, _08007770
	str r0, [r1]
	ldr r0, _08007774
	str r0, [r1, #4]
	ldr r2, _08007778
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800777C
	str r0, [r1]
	ldr r0, _08007780
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08007784
	str r0, [r1]
	ldr r0, _08007788
	str r0, [r1, #4]
	ldr r0, _0800778C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08007790
_08007748:
	str r0, [r4, #4]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	ldr r0, _08007794
	strh r0, [r5]
	ldr r0, _08007798
	strh r0, [r5, #2]
	ldr r0, _0800779C
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #8]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800776C: .4byte 0x040000D4
_08007770: .4byte gUnknown_081914A0
_08007774: .4byte 0x06013400
_08007778: .4byte 0x80000400
_0800777C: .4byte gUnknown_081924A0
_08007780: .4byte 0x06013C00
_08007784: .4byte gUnknown_08194540
_08007788: .4byte 0x050002A0
_0800778C: .4byte 0x80000010
_08007790: .4byte 0x01000009
_08007794: .4byte 0x000003EF
_08007798: .4byte 0x0000C1EF
_0800779C: .4byte 0x000051A0

	THUMB_FUNC_START sub_80077A0
sub_80077A0: @ 0x080077A0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r1, r0, #2
	str r1, [r5, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080077CC
	ldr r0, _080077C0
	adds r0, #0x3c
	movs r1, #0xf2
	strb r1, [r0]
	ldr r6, _080077C4
	ldr r3, _080077C8
	b _080077D8
	.align 2, 0
_080077C0: .4byte gUnknown_03003730
_080077C4: .4byte gUnknown_08362524
_080077C8: .4byte gUnknown_08362544
_080077CC:
	ldr r0, _08007844
	adds r0, #0x3c
	movs r1, #0xe
	strb r1, [r0]
	ldr r6, _08007848
	ldr r3, _0800784C
_080077D8:
	movs r1, #0
	ldr r0, _08007850
	mov ip, r0
	ldr r7, _08007854
_080077E0:
	movs r2, #0
	lsls r0, r1, #5
	adds r4, r1, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
_080077EC:
	ldrh r0, [r3]
	adds r0, #0x80
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	adds r3, #2
	cmp r2, #0x1d
	bls _080077EC
	adds r1, r4, #0
	cmp r1, #0x13
	bls _080077E0
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r6, r6, r1
	ldr r1, _08007858
	str r6, [r1]
	ldr r0, _0800785C
	str r0, [r1, #4]
	ldr r0, _08007860
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r1, ip
	adds r1, #0x4a
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ldrh r2, [r1]
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08007864
	mov r1, ip
	strh r0, [r1, #4]
	movs r0, #0x40
	ldrh r2, [r5]
	orrs r0, r2
	strh r0, [r5]
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007844: .4byte gUnknown_03003730
_08007848: .4byte gUnknown_08360834
_0800784C: .4byte gUnknown_08360854
_08007850: .4byte gUnknown_030038D0
_08007854: .4byte gUnknown_03000000
_08007858: .4byte 0x040000D4
_0800785C: .4byte gUnknown_02031FC0
_08007860: .4byte 0x80002580
_08007864: .4byte 0x00003E0A

	THUMB_FUNC_START sub_8007868
sub_8007868: @ 0x08007868
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_800F71C
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_800788C
sub_800788C: @ 0x0800788C
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r4, [r2, #4]
	adds r3, r4, #2
	str r3, [r2, #4]
	ldr r0, _080078BC
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _080078C4
	ldr r0, _080078C0
	adds r0, #0x4a
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	ldrh r5, [r0]
	orrs r1, r5
	strh r1, [r0]
	movs r0, #9
	strh r0, [r2, #0x18]
	movs r0, #0x74
	strh r0, [r2, #0x1a]
	adds r0, r4, #6
	b _080078DA
	.align 2, 0
_080078BC: .4byte 0x0000FFFF
_080078C0: .4byte gUnknown_030038D0
_080078C4:
	ldr r1, _080078E4
	adds r1, #0x4a
	ldr r0, _080078E8
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r2, #0x18]
	ldrh r0, [r3, #2]
	strh r0, [r2, #0x1a]
	adds r0, r3, #4
_080078DA:
	str r0, [r2, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080078E4: .4byte gUnknown_030038D0
_080078E8: .4byte 0x0000FDFF

	THUMB_FUNC_START sub_80078EC
sub_80078EC: @ 0x080078EC
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _08007904
	movs r0, #0
	strb r0, [r1, #0x14]
	strb r0, [r1, #0x15]
	movs r0, #1
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08007904: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_8007908
sub_8007908: @ 0x08007908
	adds r1, r0, #0
	ldr r0, [r1, #4]
	adds r2, r0, #2
	str r2, [r1, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08007924
	ldr r0, _08007920
	ldrb r0, [r0, #5]
	cmp r0, #8
	bne _08007938
	b _0800792C
	.align 2, 0
_08007920: .4byte gUnknown_03003730
_08007924:
	ldr r0, _08007934
	ldrb r0, [r0, #5]
	cmp r0, #6
	bne _08007938
_0800792C:
	adds r0, r2, #2
	str r0, [r1, #4]
	movs r0, #0
	b _08007940
	.align 2, 0
_08007934: .4byte gUnknown_03003730
_08007938:
	ldr r0, [r1, #4]
	subs r0, #2
	str r0, [r1, #4]
	movs r0, #1
_08007940:
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8007944
sub_8007944: @ 0x08007944
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_8007554
	adds r3, r0, #0
	cmp r3, #0xff
	beq _0800797A
	ldr r0, [r4, #4]
	movs r2, #3
	ldrh r0, [r0]
	ands r2, r0
	lsls r2, r2, #0xc
	ldr r0, _08007998
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, _0800799C
	ldrh r5, [r1, #0xa]
	ands r0, r5
	adds r0, r0, r2
	strh r0, [r1, #0xa]
_0800797A:
	ldr r1, _08007998
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08007998: .4byte gUnknown_03003930
_0800799C: .4byte 0x0000CFFF

	THUMB_FUNC_START sub_80079A0
sub_80079A0: @ 0x080079A0
	adds r1, r0, #0
	ldr r0, _080079B8
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _080079BC
	ldr r0, [r1, #4]
	adds r0, #2
	str r0, [r1, #4]
	movs r0, #0
	b _080079BE
	.align 2, 0
_080079B8: .4byte gUnknown_03003730
_080079BC:
	movs r0, #1
_080079BE:
	bx lr

	THUMB_FUNC_START nullsub_13
nullsub_13: @ 0x080079C0
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_14
nullsub_14: @ 0x080079C4
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_15
nullsub_15: @ 0x080079C8
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_38
nullsub_38: @ 0x080079CC
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_17
nullsub_17: @ 0x080079D0
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_18
nullsub_18: @ 0x080079D4
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_19
nullsub_19: @ 0x080079D8
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_20
nullsub_20: @ 0x080079DC
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_21
nullsub_21: @ 0x080079E0
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_39
nullsub_39: @ 0x080079E4
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_23
nullsub_23: @ 0x080079E8
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_24
nullsub_24: @ 0x080079EC
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_25
nullsub_25: @ 0x080079F0
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_26
nullsub_26: @ 0x080079F4
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_27
nullsub_27: @ 0x080079F8
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_28
nullsub_28: @ 0x080079FC
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_29
nullsub_29: @ 0x08007A00
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_30
nullsub_30: @ 0x08007A04
	movs r0, #0
	bx lr

	THUMB_FUNC_START nullsub_31
nullsub_31: @ 0x08007A08
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_8007A0C
sub_8007A0C: @ 0x08007A0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08007A24
	ldrb r0, [r4, #5]
	cmp r0, #1
	beq _08007A80
	cmp r0, #1
	bgt _08007A28
	cmp r0, #0
	beq _08007A2E
	b _08007ABC
	.align 2, 0
_08007A24: .4byte gUnknown_030038D0
_08007A28:
	cmp r0, #2
	beq _08007AAE
	b _08007ABC
_08007A2E:
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r5]
	ldr r0, _08007A78
	strh r0, [r5, #2]
	adds r0, #0xff
	strh r0, [r5, #4]
	ldr r0, _08007A7C
	strh r0, [r5, #6]
	movs r0, #0x44
	bl sub_8001830
	movs r0, #0x44
	bl sub_8001A9C
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #8
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	movs r0, #0x78
	strb r0, [r4, #7]
	b _08007ABC
	.align 2, 0
_08007A78: .4byte 0x00003D01
_08007A7C: .4byte 0x00003FC7
_08007A80:
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08007ABC
	ldrb r0, [r4, #7]
	adds r5, r0, #0
	cmp r5, #0
	beq _08007A98
	subs r0, #1
	strb r0, [r4, #7]
	b _08007ABC
_08007A98:
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	strb r5, [r4, #0x16]
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	b _08007ABC
_08007AAE:
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08007ABC
	movs r0, #1
	str r0, [r4, #4]
_08007ABC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8007AC4
sub_8007AC4: @ 0x08007AC4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _08007ADC
	ldrb r1, [r6, #5]
	cmp r1, #1
	beq _08007B00
	cmp r1, #1
	bgt _08007AE0
	cmp r1, #0
	beq _08007AEE
	b _08007E66
	.align 2, 0
_08007ADC: .4byte gUnknown_030038D0
_08007AE0:
	cmp r1, #2
	bne _08007AE6
	b _08007C30
_08007AE6:
	cmp r1, #3
	bne _08007AEC
	b _08007D24
_08007AEC:
	b _08007E66
_08007AEE:
	bl sub_80004B0
	bl sub_8008100
	ldr r0, _08007AFC
	str r0, [r6, #4]
	b _08007E66
	.align 2, 0
_08007AFC: .4byte 0x00000101
_08007B00:
	ldr r4, _08007BC8
	ldr r0, _08007BCC
	str r0, [r4]
	ldr r0, _08007BD0
	str r0, [r4, #4]
	ldr r0, _08007BD4
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08007BD8
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _08007BDC
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08007BE0
	ldr r5, _08007BE4
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	ldr r0, _08007BE8
	str r0, [r4, #4]
	ldr r0, _08007BEC
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08007BF0
	str r0, [r4]
	ldr r0, _08007BF4
	str r0, [r4, #4]
	ldr r0, _08007BF8
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08007BFC
	str r0, [r4]
	ldr r0, _08007C00
	str r0, [r4, #4]
	ldr r0, _08007C04
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08007C08
	movs r5, #0
	ldr r1, _08007C0C
	strh r1, [r2]
	ldr r4, _08007C10
	strh r4, [r2, #2]
	ldr r0, _08007C14
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r3, _08007C18
	strh r3, [r2, #2]
	adds r0, #8
	strh r0, [r2, #4]
	adds r2, #8
	movs r0, #0xf0
	ldrb r1, [r6, #0x17]
	ands r0, r1
	cmp r0, #0
	beq _08007B8E
	ldr r0, _08007C1C
	strh r0, [r2]
	strh r4, [r2, #2]
	ldr r1, _08007C20
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	strh r3, [r2, #2]
	ldr r0, _08007C24
	strh r0, [r2, #4]
_08007B8E:
	adds r1, r7, #0
	adds r1, #0x4a
	movs r0, #0xca
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _08007C28
	strb r5, [r1, #0x15]
	movs r0, #2
	strb r0, [r1, #0x14]
	strb r5, [r6, #0x13]
	movs r3, #0xce
	lsls r3, r3, #1
	adds r2, r6, r3
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	movs r0, #9
	strb r0, [r6, #0x16]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldr r0, _08007C2C
	str r0, [r6, #4]
	b _08007E66
	.align 2, 0
_08007BC8: .4byte 0x040000D4
_08007BCC: .4byte gUnknown_08185D20
_08007BD0: .4byte 0x06003800
_08007BD4: .4byte 0x80000400
_08007BD8: .4byte gUnknown_08180000
_08007BDC: .4byte 0x80000100
_08007BE0: .4byte gUnknown_08180200
_08007BE4: .4byte gUnknown_0202CFC0
_08007BE8: .4byte 0x06004000
_08007BEC: .4byte 0x80004B00
_08007BF0: .4byte gUnknown_08194580
_08007BF4: .4byte 0x05000240
_08007BF8: .4byte 0x80000060
_08007BFC: .4byte gUnknown_08193CA0
_08007C00: .4byte 0x06010400
_08007C04: .4byte 0x80000200
_08007C08: .4byte gUnknown_03002CA8
_08007C0C: .4byte 0x00004070
_08007C10: .4byte 0x00008058
_08007C14: .4byte 0x00002420
_08007C18: .4byte 0x00008078
_08007C1C: .4byte 0x00004084
_08007C20: .4byte 0x00002030
_08007C24: .4byte 0x00002038
_08007C28: .4byte gUnknown_03003A50
_08007C2C: .4byte 0x00000201
_08007C30:
	ldr r0, _08007C50
	ldrh r3, [r0, #2]
	movs r2, #9
	ands r2, r3
	cmp r2, #0
	beq _08007C5C
	movs r0, #0x3a
	bl sub_800F3E0
	ldr r0, _08007C54
	movs r1, #0
	strh r1, [r0, #0x2a]
	ldr r0, _08007C58
	str r0, [r6, #4]
	b _08007C82
	.align 2, 0
_08007C50: .4byte gUnknown_03003720
_08007C54: .4byte gUnknown_03003A70
_08007C58: .4byte 0x00000301
_08007C5C:
	movs r0, #0xf0
	ldrb r4, [r6, #0x17]
	ands r0, r4
	cmp r0, #0
	beq _08007C82
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0
	beq _08007C82
	ldr r0, _08007CE4
	strb r2, [r0, #0x15]
	strb r1, [r0, #0x14]
	movs r0, #1
	ldrb r5, [r6, #0x13]
	eors r0, r5
	strb r0, [r6, #0x13]
	movs r0, #0x2a
	bl sub_800F3E0
_08007C82:
	ldr r3, _08007CE4
	ldrb r0, [r3, #0x15]
	adds r0, #1
	strb r0, [r3, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08007C9C
	movs r0, #0
	strb r0, [r3, #0x15]
	ldrb r0, [r3, #0x14]
	adds r0, #1
	strb r0, [r3, #0x14]
_08007C9C:
	ldrb r0, [r3, #0x14]
	cmp r0, #6
	bls _08007CA6
	movs r0, #2
	strb r0, [r3, #0x14]
_08007CA6:
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	bne _08007CF0
	ldr r2, _08007CE8
	ldrb r1, [r3, #0x14]
	lsls r0, r1, #0xc
	movs r4, #0x84
	lsls r4, r4, #3
	adds r1, r4, #0
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r3, [r3, #0x14]
	lsls r0, r3, #0xc
	movs r5, #0x85
	lsls r5, r5, #3
	adds r1, r5, #0
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r2, #8
	movs r0, #0xf0
	ldrb r6, [r6, #0x17]
	ands r0, r6
	cmp r0, #0
	bne _08007CDA
	b _08007E66
_08007CDA:
	ldr r0, _08007CEC
	strh r0, [r2, #4]
	adds r0, #8
	strh r0, [r2, #0xc]
	b _08007E66
	.align 2, 0
_08007CE4: .4byte gUnknown_03003A50
_08007CE8: .4byte gUnknown_03002CA8
_08007CEC: .4byte 0x00005030
_08007CF0:
	ldr r2, _08007D1C
	ldr r0, _08007D20
	strh r0, [r2, #4]
	adds r2, #8
	adds r0, #8
	strh r0, [r2, #4]
	adds r2, #8
	movs r0, #0xf0
	ldrb r6, [r6, #0x17]
	ands r0, r6
	cmp r0, #0
	bne _08007D0A
	b _08007E66
_08007D0A:
	ldrb r1, [r3, #0x14]
	lsls r0, r1, #0xc
	adds r0, #0x30
	strh r0, [r2, #4]
	ldrb r3, [r3, #0x14]
	lsls r0, r3, #0xc
	adds r0, #0x38
	strh r0, [r2, #0xc]
	b _08007E66
	.align 2, 0
_08007D1C: .4byte gUnknown_03002CA8
_08007D20: .4byte 0x00005420
_08007D24:
	ldrb r0, [r6, #7]
	adds r0, #1
	strb r0, [r6, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6, #0x13]
	cmp r0, #0x27
	bls _08007D40
	cmp r1, #0
	bne _08007D3C
	movs r0, #0xc
	b _08007D3E
_08007D3C:
	movs r0, #0xd
_08007D3E:
	str r0, [r6, #4]
_08007D40:
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08007DE0
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08007D84
	ldr r2, _08007D78
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r1, _08007D7C
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _08007D80
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r3, [r6, #6]
	cmp r3, #8
	bls _08007D98
	movs r0, #0
	strb r0, [r6, #6]
	b _08007D98
	.align 2, 0
_08007D78: .4byte gUnknown_03002CA8
_08007D7C: .4byte 0x00002020
_08007D80: .4byte 0x00002028
_08007D84:
	ldr r2, _08007DCC
	ldr r0, _08007DD0
	strh r0, [r2]
	ldr r1, _08007DD4
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _08007DD8
	strh r0, [r2, #4]
	adds r2, #8
_08007D98:
	movs r0, #0xf0
	ldrb r6, [r6, #0x17]
	ands r0, r6
	ldr r4, _08007DDC
	cmp r0, #0
	beq _08007E60
	ldrh r1, [r2]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _08007DB6
	ldrh r5, [r4, #0x2a]
	adds r0, r5, r1
	strh r0, [r2]
_08007DB6:
	adds r2, #8
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _08007E60
	ldrh r3, [r4, #0x2a]
	adds r0, r3, r1
	strh r0, [r2]
	b _08007E60
	.align 2, 0
_08007DCC: .4byte gUnknown_03002CA8
_08007DD0: .4byte 0x00004070
_08007DD4: .4byte 0x00002020
_08007DD8: .4byte 0x00002028
_08007DDC: .4byte gUnknown_03003A70
_08007DE0:
	ldr r2, _08007E40
	ldrh r1, [r2]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r1
	ldr r4, _08007E44
	cmp r0, #0xe0
	bhi _08007DF6
	ldrh r5, [r4, #0x2a]
	adds r0, r5, r1
	strh r0, [r2]
_08007DF6:
	adds r2, #8
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _08007E08
	ldrh r3, [r4, #0x2a]
	adds r0, r3, r1
	strh r0, [r2]
_08007E08:
	adds r2, #8
	movs r0, #0xf0
	ldrb r5, [r6, #0x17]
	ands r0, r5
	cmp r0, #0
	beq _08007E60
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08007E50
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r1, _08007E48
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _08007E4C
	strh r0, [r2, #4]
	ldrb r0, [r6, #6]
	cmp r0, #8
	bls _08007E60
	movs r0, #0
	strb r0, [r6, #6]
	b _08007E60
	.align 2, 0
_08007E40: .4byte gUnknown_03002CA8
_08007E44: .4byte gUnknown_03003A70
_08007E48: .4byte 0x00002030
_08007E4C: .4byte 0x00002038
_08007E50:
	ldr r0, _08007E6C
	strh r0, [r2]
	ldr r1, _08007E70
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _08007E74
	strh r0, [r2, #4]
_08007E60:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
_08007E66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007E6C: .4byte 0x00004084
_08007E70: .4byte 0x00002030
_08007E74: .4byte 0x00002038

	THUMB_FUNC_START sub_8007E78
sub_8007E78: @ 0x08007E78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, _08007E9C
	ldr r3, _08007EA0
	ldrb r0, [r6, #5]
	cmp r0, #1
	beq _08007F80
	cmp r0, #1
	bgt _08007EA4
	cmp r0, #0
	beq _08007EB2
	b _0800809E
	.align 2, 0
_08007E9C: .4byte gUnknown_030038D0
_08007EA0: .4byte gUnknown_03002CA8
_08007EA4:
	cmp r0, #2
	bne _08007EAA
	b _0800805C
_08007EAA:
	cmp r0, #3
	bne _08007EB0
	b _0800807C
_08007EB0:
	b _0800809E
_08007EB2:
	movs r1, #0x30
	strh r1, [r3]
	ldr r0, _08007F38
	strh r0, [r3, #2]
	ldr r0, _08007F3C
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _08007F40
	strh r0, [r3, #2]
	ldr r0, _08007F44
	strh r0, [r3, #4]
	ldr r0, _08007F48
	ldr r1, _08007F4C
	str r1, [r0]
	ldr r1, _08007F50
	str r1, [r0, #4]
	ldr r1, _08007F54
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08007F58
	str r1, [r0]
	ldr r1, _08007F5C
	str r1, [r0, #4]
	ldr r2, _08007F60
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08007F64
	str r1, [r0]
	ldr r1, _08007F68
	str r1, [r0, #4]
	ldr r1, _08007F6C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08007F70
	str r1, [r0]
	ldr r1, _08007F74
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0
	ldr r2, _08007F78
	adds r3, r4, #0
	adds r3, #0x4a
	movs r1, #0
	ldr r0, _08007F7C
_08007F0E:
	strh r1, [r0]
	adds r0, #2
	adds r5, #1
	cmp r5, r2
	bls _08007F0E
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x12]
	movs r0, #8
	strh r0, [r4, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r4, #4]
	movs r0, #0xea
	lsls r0, r0, #5
	strh r0, [r3]
	movs r0, #0xd
	strb r0, [r6, #0x16]
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0800804A
	.align 2, 0
_08007F38: .4byte 0x0000C1A8
_08007F3C: .4byte 0x000051A0
_08007F40: .4byte 0x0000C108
_08007F44: .4byte 0x000051E0
_08007F48: .4byte 0x040000D4
_08007F4C: .4byte gUnknown_081911C0
_08007F50: .4byte 0x06001400
_08007F54: .4byte 0x80000170
_08007F58: .4byte gUnknown_08194500
_08007F5C: .4byte 0x05000020
_08007F60: .4byte 0x80000010
_08007F64: .4byte gUnknown_08192CA0
_08007F68: .4byte 0x06013400
_08007F6C: .4byte 0x80000800
_08007F70: .4byte gUnknown_08194560
_08007F74: .4byte 0x050002A0
_08007F78: .4byte 0x000003FF
_08007F7C: .4byte gUnknown_03000000
_08007F80:
	ldrh r1, [r3, #2]
	ldr r0, _08008050
	adds r2, r0, #0
	ands r2, r1
	adds r2, #8
	ands r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	adds r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r3, #0xa]
	subs r0, #8
	strh r0, [r3, #0xa]
	movs r5, #0
	ldr r0, _08008054
	mov sb, r0
	mov r8, r5
	ldr r0, _08008058
	adds r0, #0xe
	mov sl, r0
_08007FAA:
	lsls r0, r5, #6
	mov r1, sb
	adds r3, r0, r1
	ldrb r1, [r6, #6]
	lsls r0, r1, #1
	adds r3, r3, r0
	movs r4, #0
	cmp r4, r1
	bhs _08007FE0
	mov r1, r8
	add r1, sl
	movs r2, #0x85
	lsls r2, r2, #5
	mov ip, r2
	movs r7, #0xa0
	lsls r7, r7, #2
_08007FCA:
	ldrb r2, [r1]
	add r2, ip
	strh r2, [r3]
	adds r0, r3, r7
	strh r2, [r0]
	subs r3, #2
	subs r1, #1
	adds r4, #1
	ldrb r0, [r6, #6]
	cmp r4, r0
	blo _08007FCA
_08007FE0:
	movs r1, #0xf
	add r8, r1
	adds r5, #1
	cmp r5, #9
	bls _08007FAA
	movs r5, #0
	ldr r0, _08008058
	adds r0, #0xe
	mov r8, r0
_08007FF2:
	lsls r0, r5, #6
	mov r2, sb
	adds r3, r0, r2
	ldrb r1, [r6, #6]
	movs r0, #0x1f
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r4, #0
	adds r7, r5, #1
	cmp r4, r1
	bhs _08008032
	lsls r0, r5, #4
	subs r0, r0, r5
	mov r2, r8
	adds r1, r0, r2
	movs r0, #0xa5
	lsls r0, r0, #5
	mov ip, r0
	movs r5, #0xa0
	lsls r5, r5, #2
_0800801C:
	ldrb r2, [r1]
	add r2, ip
	strh r2, [r3]
	adds r0, r3, r5
	strh r2, [r0]
	adds r3, #2
	subs r1, #1
	adds r4, #1
	ldrb r2, [r6, #6]
	cmp r4, r2
	blo _0800801C
_08008032:
	adds r5, r7, #0
	cmp r5, #9
	bls _08007FF2
	ldrb r0, [r6, #6]
	cmp r0, #0xe
	bls _08008076
	movs r0, #0x56
	bl sub_800F3E0
	ldrb r0, [r6, #5]
	adds r0, #1
	movs r1, #0
_0800804A:
	strb r0, [r6, #5]
	strb r1, [r6, #6]
	b _0800809E
	.align 2, 0
_08008050: .4byte 0x000001FF
_08008054: .4byte gUnknown_03000000
_08008058: .4byte gUnknown_080189A4
_0800805C:
	ldrb r0, [r6, #6]
	cmp r0, #0x77
	bls _08008076
	movs r0, #2
	movs r1, #3
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	b _0800809E
_08008076:
	adds r0, #1
	strb r0, [r6, #6]
	b _0800809E
_0800807C:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r1, [r0]
	cmp r1, #0
	bne _0800809E
	mov r0, sp
	strh r1, [r0]
	ldr r1, _080080B0
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080080B4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	str r0, [r6, #4]
_0800809E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080080B0: .4byte 0x040000D4
_080080B4: .4byte 0x81000200

	THUMB_FUNC_START sub_80080B8
sub_80080B8: @ 0x080080B8
	push {r4, lr}
	ldr r4, _080080EC
	adds r1, r4, #0
	adds r1, #0x4b
	movs r0, #0x10
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _080080F0
	ldr r0, _080080F4
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _080080F8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_8008170
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _080080FC
	adds r0, r4, #0
	bl WriteSramEx
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080080EC: .4byte gSaveDataBuffer
_080080F0: .4byte 0x040000D4
_080080F4: .4byte gUnknown_08018A3C
_080080F8: .4byte 0x80000018
_080080FC: .4byte 0x000029D0

	THUMB_FUNC_START sub_8008100
sub_8008100: @ 0x08008100
	push {r4, lr}
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r4, _08008144
	ldr r2, _08008148
	adds r1, r4, #0
	bl ReadSram
	movs r1, #0
	ldr r2, _0800814C
_08008114:
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r3, [r4]
	cmp r0, r3
	bne _08008154
	adds r4, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08008114
	ldr r4, _08008150
	ldr r0, _08008144
	adds r0, #0xc2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x8e
	strb r0, [r1]
	bl sub_80081AC
	cmp r0, #0
	beq _08008164
	movs r0, #0x10
	strb r0, [r4, #0x17]
	movs r0, #0
	b _08008168
	.align 2, 0
_08008144: .4byte gSaveDataBuffer
_08008148: .4byte 0x000029D0
_0800814C: .4byte gUnknown_08018A3C
_08008150: .4byte gUnknown_03003730
_08008154:
	ldr r1, _08008160
	movs r0, #0
	strb r0, [r1, #0x17]
	movs r0, #2
	b _08008168
	.align 2, 0
_08008160: .4byte gUnknown_03003730
_08008164:
	strb r0, [r4, #0x17]
	movs r0, #1
_08008168:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8008170
sub_8008170: @ 0x08008170
	push {r4, lr}
	ldr r1, _080081A0
	movs r0, #0
	str r0, [r1, #0x30]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x34
	ldr r4, _080081A4
	adds r3, r1, r4
	adds r4, r1, #0
	cmp r0, r3
	bhs _08008194
	adds r1, r3, #0
_0800818A:
	ldrb r3, [r0]
	adds r2, r3, r2
	adds r0, #4
	cmp r0, r1
	blo _0800818A
_08008194:
	ldr r0, _080081A8
	adds r2, r2, r0
	str r2, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080081A0: .4byte gSaveDataBuffer
_080081A4: .4byte 0x000029D0
_080081A8: .4byte 0x00000927

	THUMB_FUNC_START sub_80081AC
sub_80081AC: @ 0x080081AC
	push {r4, lr}
	movs r1, #0
	ldr r0, _080081D8
	ldr r3, _080081DC
	adds r2, r0, r3
	adds r3, r0, #0
	subs r3, #0x34
	cmp r0, r2
	bhs _080081C8
_080081BE:
	ldrb r4, [r0]
	adds r1, r4, r1
	adds r0, #4
	cmp r0, r2
	blo _080081BE
_080081C8:
	ldr r0, _080081E0
	adds r1, r1, r0
	ldr r0, [r3, #0x30]
	cmp r1, r0
	beq _080081E4
	movs r0, #0
	b _080081E6
	.align 2, 0
_080081D8: .4byte gSaveDataBuffer+0x34
_080081DC: .4byte 0x0000299C
_080081E0: .4byte 0x00000927
_080081E4:
	movs r0, #1
_080081E6:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80081EC
sub_80081EC: @ 0x080081EC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrb r5, [r6, #5]
	cmp r5, #1
	bne _080081FA
	b _08008328
_080081FA:
	cmp r5, #1
	bgt _08008204
	cmp r5, #0
	beq _08008212
	b _080084BA
_08008204:
	cmp r5, #2
	bne _0800820A
	b _080083C8
_0800820A:
	cmp r5, #3
	bne _08008210
	b _0800848C
_08008210:
	b _080084BA
_08008212:
	ldr r4, _080082D4
	ldr r0, _080082D8
	str r0, [r4]
	ldr r0, _080082DC
	str r0, [r4, #4]
	ldr r5, _080082E0
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0
	bl sub_8002234
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _080082E4
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080082E8
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _080082EC
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080082F0
	str r0, [r4]
	ldr r0, _080082F4
	str r0, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080082F8
	str r0, [r4]
	ldr r0, _080082FC
	str r0, [r4, #4]
	ldr r0, _08008300
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08008304
	str r0, [r4]
	ldr r0, _08008308
	str r0, [r4, #4]
	ldr r0, _0800830C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _08008310
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r0, _08008314
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r0, _08008318
	strh r0, [r1, #6]
	movs r0, #0x43
	bl sub_8001830
	movs r0, #0x43
	bl sub_8001A9C
	movs r0, #0
	ldr r3, _0800831C
	movs r2, #0
	ldr r1, _08008320
_08008296:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, r3
	bls _08008296
	movs r0, #6
	movs r1, #8
	bl sub_80024C8
	ldr r1, _08008310
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r2]
	movs r0, #0xc
	strb r0, [r6, #0x16]
	ldr r0, _08008324
	strh r0, [r1, #4]
	adds r1, #0x4e
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	strb r0, [r6, #0x13]
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	b _0800839C
	.align 2, 0
_080082D4: .4byte 0x040000D4
_080082D8: .4byte gUnknown_08185D20
_080082DC: .4byte 0x06003800
_080082E0: .4byte 0x80000400
_080082E4: .4byte 0x80000100
_080082E8: .4byte gUnknown_08186540
_080082EC: .4byte 0x80000800
_080082F0: .4byte gUnknown_081964A8
_080082F4: .4byte 0x06013C00
_080082F8: .4byte gUnknown_081FD92C
_080082FC: .4byte 0x05000320
_08008300: .4byte 0x80000020
_08008304: .4byte gUnknown_081D310C
_08008308: .4byte 0x05000200
_0800830C: .4byte 0x80000010
_08008310: .4byte gUnknown_030038D0
_08008314: .4byte 0x00003D01
_08008318: .4byte 0x00003FC7
_0800831C: .4byte 0x000003FF
_08008320: .4byte gUnknown_03000000
_08008324: .4byte 0x00003E01
_08008328:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08008334
	b _080084BA
_08008334:
	ldr r4, _080083A4
	adds r0, r4, #0
	bl sub_8002878
	movs r7, #1
	ldrsb r7, [r4, r7]
	cmp r7, #0
	beq _08008346
	b _080084BA
_08008346:
	strb r5, [r6, #0x14]
	strb r5, [r6, #0x15]
	ldr r4, _080083A8
	ldr r0, _080083AC
	strh r0, [r4, #0x1e]
	movs r0, #4
	bl sub_800549C
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	ldr r2, _080083B0
	ldr r1, _080083B4
	strh r1, [r2]
	ldr r0, _080083B8
	strh r0, [r2, #2]
	ldr r0, _080083BC
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _080083C0
	strh r0, [r2, #2]
	movs r0, #0xa2
	lsls r0, r0, #8
	strh r0, [r2, #4]
	adds r0, r6, #0
	adds r0, #0x78
	strh r7, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _080083C4
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
_0800839C:
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	b _080084BA
	.align 2, 0
_080083A4: .4byte gUnknown_03002840
_080083A8: .4byte gUnknown_03003A70
_080083AC: .4byte 0x0000FFFF
_080083B0: .4byte gUnknown_03002C60
_080083B4: .4byte 0x00004460
_080083B8: .4byte 0x0000C030
_080083BC: .4byte 0x0000A1E0
_080083C0: .4byte 0x0000C080
_080083C4: .4byte gUnknown_030038D0
_080083C8:
	ldr r1, _080083F0
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800841A
	ldr r0, _080083F4
	ldrh r1, [r0, #2]
	movs r4, #0x30
	ands r4, r1
	cmp r4, #0
	beq _080083F8
	movs r0, #0x2a
	bl sub_800F3E0
	movs r0, #1
	ldrb r1, [r6, #0x13]
	eors r0, r1
	strb r0, [r6, #0x13]
	b _0800841A
	.align 2, 0
_080083F0: .4byte gUnknown_03003A70
_080083F4: .4byte gUnknown_03003720
_080083F8:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800841A
	movs r0, #0x2b
	bl sub_800F3E0
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	strb r4, [r6, #0x16]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
_0800841A:
	ldr r2, _0800842C
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	bne _08008434
	ldr r0, _08008430
	strh r0, [r2, #4]
	movs r0, #0xa2
	lsls r0, r0, #8
	b _0800843C
	.align 2, 0
_0800842C: .4byte gUnknown_03002C60
_08008430: .4byte 0x000091E0
_08008434:
	ldr r0, _08008484
	strh r0, [r2, #4]
	movs r0, #0x92
	lsls r0, r0, #8
_0800843C:
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #5]
	cmp r0, #2
	bne _080084BA
	adds r3, r6, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0
	beq _080084BA
	adds r2, r6, #0
	adds r2, #0x78
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _08008470
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_08008470:
	ldr r2, _08008488
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
	b _080084BA
	.align 2, 0
_08008484: .4byte 0x0000A1E0
_08008488: .4byte gUnknown_030038D0
_0800848C:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r4, [r0]
	cmp r4, #0
	bne _080084BA
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	bne _080084B8
	str r4, [sp]
	ldr r2, _080084C4
	mov r1, sp
	str r1, [r2]
	ldr r0, _080084C8
	str r0, [r2, #4]
	ldr r1, _080084CC
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _080084D0
	bl WriteSramEx
_080084B8:
	str r4, [r6, #4]
_080084BA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080084C4: .4byte 0x040000D4
_080084C8: .4byte gSaveDataBuffer
_080084CC: .4byte 0x85000A74
_080084D0: .4byte 0x000029D0

	THUMB_FUNC_START sub_80084D4
sub_80084D4: @ 0x080084D4
	push {lr}
	ldr r2, _080084EC
	ldr r0, _080084F0
	ldrb r3, [r0, #5]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080084EC: .4byte gUnknown_0811DF28
_080084F0: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_80084F4
sub_80084F4: @ 0x080084F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08008594
	ldr r1, _08008598
	str r1, [r0]
	ldr r2, _0800859C
	str r2, [r0, #4]
	ldr r3, _080085A0
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080085A4
	str r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r2, r4
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080085A8
	str r1, [r0]
	ldr r3, _080085AC
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, _080085B0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080085B4
	str r1, [r0]
	ldr r4, _080085B8
	adds r1, r2, r4
	str r1, [r0, #4]
	ldr r1, _080085BC
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080085C0
	str r1, [r0]
	ldr r3, _080085C4
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, _080085C8
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r3, _080085CC
	str r3, [r0]
	ldr r4, _080085D0
	adds r1, r2, r4
	str r1, [r0, #4]
	ldr r1, _080085D4
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r2, r2, r0
	movs r4, #0xff
_08008562:
	ldrb r0, [r3]
	orrs r0, r4
	strb r0, [r3]
	adds r3, #0x14
	adds r1, #1
	cmp r1, #7
	bls _08008562
	movs r4, #0
	adds r0, r2, #0
	bl sub_801042C
	strb r4, [r5, #0x14]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008594: .4byte 0x040000D4
_08008598: .4byte gUnknown_03002000
_0800859C: .4byte gSaveDataBuffer+0x1650
_080085A0: .4byte 0x80000400
_080085A4: .4byte gUnknown_03000000
_080085A8: .4byte gUnknown_03003C00
_080085AC: .4byte 0xFFFFF500
_080085B0: .4byte 0x8000017A
_080085B4: .4byte gUnknown_03003A70
_080085B8: .4byte 0xFFFFEBD8
_080085BC: .4byte 0x80000020
_080085C0: .4byte gUnknown_030038D0
_080085C4: .4byte 0xFFFFEB84
_080085C8: .4byte 0x8000002A
_080085CC: .4byte gUnknown_03003930
_080085D0: .4byte 0xFFFFF060
_080085D4: .4byte 0x80000050

	THUMB_FUNC_START sub_80085D8
sub_80085D8: @ 0x080085D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _080085E6
	b _08008706
_080085E6:
	ldr r0, _0800870C
	ldr r1, _08008710
	str r1, [r0]
	ldr r2, _08008714
	str r2, [r0, #4]
	ldr r3, _08008718
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800871C
	str r1, [r0]
	ldr r5, _08008720
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _08008724
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008728
	str r1, [r0]
	adds r5, #0x70
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800872C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008730
	str r1, [r0]
	subs r5, #8
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _08008734
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008738
	str r1, [r0]
	subs r5, #0x10
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800873C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008740
	str r1, [r0]
	adds r5, #0x30
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _08008744
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008748
	str r1, [r0]
	ldr r1, _0800874C
	adds r2, r2, r1
	str r2, [r0, #4]
	ldr r1, _08008750
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008754
	str r1, [r0]
	ldr r1, _08008758
	str r1, [r0, #4]
	ldr r1, _0800875C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008760
	str r1, [r0]
	ldr r1, _08008764
	str r1, [r0, #4]
	ldr r1, _08008768
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800876C
	str r1, [r0]
	ldr r1, _08008770
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008774
	str r1, [r0]
	ldr r1, _08008778
	str r1, [r0, #4]
	ldr r1, _0800877C
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x43
	bl sub_8001830
	movs r0, #0x43
	bl sub_8001A9C
	movs r0, #0xfc
	ldrb r5, [r4, #0x1f]
	ands r0, r5
	strb r0, [r4, #0x1f]
	ldr r1, _08008780
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
_080086A8:
	strh r2, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #0x7f
	bls _080086A8
	movs r0, #0
	ldr r3, _08008784
	movs r2, #0
	ldr r1, _08008788
_080086BA:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, r3
	bls _080086BA
	movs r0, #6
	movs r1, #8
	bl sub_80024C8
	ldr r1, _0800878C
	movs r0, #0x4a
	adds r0, r0, r1
	mov ip, r0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe2
	lsls r0, r0, #5
	mov r5, ip
	strh r0, [r5]
	movs r0, #0xc
	strb r0, [r4, #0x16]
	ldr r0, _08008790
	strh r0, [r1, #4]
	movs r0, #8
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x14]
	strh r2, [r1, #0xe]
	strh r2, [r1, #0xc]
	strb r3, [r4, #0x15]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
_08008706:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800870C: .4byte 0x040000D4
_08008710: .4byte gUnknown_03002F20
_08008714: .4byte gSaveDataBuffer+0xE50
_08008718: .4byte 0x80000400
_0800871C: .4byte gUnknown_03002840
_08008720: .4byte 0xFFFFF418
_08008724: .4byte 0x8000002C
_08008728: .4byte gUnknown_03003A50
_0800872C: .4byte 0x8000000C
_08008730: .4byte gUnknown_03003AB0
_08008734: .4byte 0x80000004
_08008738: .4byte gUnknown_03004000
_0800873C: .4byte 0x80000008
_08008740: .4byte gUnknown_03003AC0
_08008744: .4byte 0x800000A0
_08008748: .4byte gUnknown_030028A0
_0800874C: .4byte 0xFFFFF5E0
_08008750: .4byte 0x80000140
_08008754: .4byte gUnknown_08193CA0
_08008758: .4byte 0x06013800
_0800875C: .4byte 0x80000200
_08008760: .4byte gUnknown_08194580
_08008764: .4byte 0x05000300
_08008768: .4byte 0x80000060
_0800876C: .4byte gUnknown_081964A8
_08008770: .4byte 0x06013C00
_08008774: .4byte gUnknown_081FD92C
_08008778: .4byte 0x05000320
_0800877C: .4byte 0x80000020
_08008780: .4byte gOamObjects
_08008784: .4byte 0x000003FF
_08008788: .4byte gUnknown_03000000
_0800878C: .4byte gUnknown_030038D0
_08008790: .4byte 0x00003E01

	THUMB_FUNC_START sub_8008794
sub_8008794: @ 0x08008794
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080087C4
	adds r0, r4, #0
	bl sub_8002878
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08008854
	movs r0, #1
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	ldr r1, _080087C8
	ldr r0, _080087CC
	strh r0, [r1, #0x1e]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _080087D0
	movs r0, #0
	bl sub_800549C
	b _080087D6
	.align 2, 0
_080087C4: .4byte gUnknown_03002840
_080087C8: .4byte gUnknown_03003A70
_080087CC: .4byte 0x0000FFFF
_080087D0:
	movs r0, #1
	bl sub_800549C
_080087D6:
	ldr r1, _08008830
	movs r3, #0
	movs r0, #9
	strh r0, [r1, #0x18]
	movs r0, #0x34
	strh r0, [r1, #0x1a]
	ldr r0, _08008834
	ldr r2, _08008838
	strh r2, [r0]
	ldr r1, _0800883C
	strh r1, [r0, #2]
	ldr r1, _08008840
	strh r1, [r0, #4]
	adds r0, #8
	strh r2, [r0]
	ldr r1, _08008844
	strh r1, [r0, #2]
	movs r1, #0xa2
	lsls r1, r1, #8
	strh r1, [r0, #4]
	adds r0, r5, #0
	adds r0, #0x78
	strh r3, [r0]
	adds r0, #2
	movs r4, #1
	strb r4, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _08008848
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0800884C
	movs r0, #0
	strb r0, [r5, #0x13]
	b _0800884E
	.align 2, 0
_08008830: .4byte gUnknown_03003A70
_08008834: .4byte gUnknown_03002C60
_08008838: .4byte 0x00004460
_0800883C: .4byte 0x0000C030
_08008840: .4byte 0x0000A1E0
_08008844: .4byte 0x0000C080
_08008848: .4byte gUnknown_030038D0
_0800884C:
	strb r4, [r5, #0x13]
_0800884E:
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
_08008854:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_800885C
sub_800885C: @ 0x0800885C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _0800888C
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800886E
	b _0800896A
_0800886E:
	ldr r0, _08008890
	ldrh r1, [r0, #2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08008894
	movs r0, #1
	ldrb r1, [r5, #0x13]
	eors r0, r1
	strb r0, [r5, #0x13]
	movs r0, #0x2a
	bl sub_800F3E0
	b _0800896A
	.align 2, 0
_0800888C: .4byte gUnknown_03003A70
_08008890: .4byte gUnknown_03003720
_08008894:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08008940
	movs r0, #0x40
	bl sub_800F3E0
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _0800892C
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _080088C0
	ldr r1, _080088BC
	adds r1, #0x4b
	movs r0, #0xf0
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	b _080088CC
	.align 2, 0
_080088BC: .4byte gSaveDataBuffer
_080088C0:
	ldr r0, _080088F0
	adds r0, #0x4b
	movs r1, #1
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_080088CC:
	bl sub_80080B8
	cmp r0, #0
	beq _080088FC
	ldr r4, _080088F4
	ldr r0, _080088F8
	strh r0, [r4, #0x1e]
	movs r0, #3
	bl sub_800549C
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	movs r0, #6
	strb r0, [r5, #5]
	b _080089FC
	.align 2, 0
_080088F0: .4byte gSaveDataBuffer
_080088F4: .4byte gUnknown_03003A70
_080088F8: .4byte 0x0000FFFF
_080088FC:
	ldrb r6, [r5, #7]
	cmp r6, #0
	bne _0800892C
	ldr r4, _08008938
	ldr r0, _0800893C
	strh r0, [r4, #0x1e]
	movs r0, #6
	bl sub_800549C
	movs r1, #0
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x78
	strh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x7a
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x7b
	strb r1, [r0]
_0800892C:
	movs r1, #0
	movs r0, #7
	strb r0, [r5, #5]
	strb r1, [r5, #6]
	b _0800896A
	.align 2, 0
_08008938: .4byte gUnknown_03003A70
_0800893C: .4byte 0x0000FFFF
_08008940:
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0800896A
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800896A
	movs r0, #0x2c
	bl sub_800F3E0
	movs r0, #1
	strb r0, [r5, #0x13]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #4
	strb r0, [r5, #5]
	b _080089FC
_0800896A:
	ldr r2, _0800898C
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _080089A0
	ldr r1, _08008990
	strh r1, [r2]
	ldr r0, _08008994
	strh r0, [r2, #2]
	ldr r0, _08008998
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800899C
	strh r0, [r2, #2]
	movs r0, #0xa2
	lsls r0, r0, #8
	b _080089B8
	.align 2, 0
_0800898C: .4byte gUnknown_03002C60
_08008990: .4byte 0x00004460
_08008994: .4byte 0x0000C030
_08008998: .4byte 0x000091E0
_0800899C: .4byte 0x0000C080
_080089A0:
	ldr r1, _08008A04
	strh r1, [r2]
	ldr r0, _08008A08
	strh r0, [r2, #2]
	ldr r0, _08008A0C
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _08008A10
	strh r0, [r2, #2]
	movs r0, #0x92
	lsls r0, r0, #8
_080089B8:
	strh r0, [r2, #4]
	ldrb r0, [r5, #5]
	cmp r0, #3
	bne _080089FC
	adds r3, r5, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0
	beq _080089FC
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _080089EC
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_080089EC:
	ldr r2, _08008A14
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_080089FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08008A04: .4byte 0x00004460
_08008A08: .4byte 0x0000C030
_08008A0C: .4byte 0x0000A1E0
_08008A10: .4byte 0x0000C080
_08008A14: .4byte gUnknown_030038D0

	THUMB_FUNC_START sub_8008A18
sub_8008A18: @ 0x08008A18
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08008A26
	b _08008C5C
_08008A26:
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	bne _08008A32
	movs r0, #1
	str r0, [r6, #4]
	b _08008C5C
_08008A32:
	ldr r2, _08008BC4
	adds r0, r2, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	strh r0, [r6, #0x28]
	adds r0, r2, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	strh r0, [r6, #0x2a]
	adds r0, r2, #0
	adds r0, #0x60
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x2e
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x64
	ldrh r0, [r0]
	strh r0, [r6, #0x30]
	adds r0, r2, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r6, #0x34]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r6, #0x36]
	adds r0, r2, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r6, #0x38]
	adds r0, r2, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r6, #0x3a]
	adds r0, r2, #0
	adds r0, #0x70
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x71
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x72
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x73
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r2, #0x74]
	str r0, [r6, #0x40]
	movs r1, #0
	adds r7, r6, #0
	adds r7, #0xb4
	adds r3, r2, #0
	adds r3, #0x78
	adds r2, r6, #0
	adds r2, #0x44
_08008AD4:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xb
	bls _08008AD4
	ldrh r0, [r6, #0x28]
	bl sub_8001830
	ldrh r0, [r6, #0x28]
	bl sub_80020B0
	ldr r4, _08008BC8
	ldr r5, _08008BCC
	str r5, [r4]
	ldr r0, _08008BD0
	str r0, [r4, #4]
	ldr r0, _08008BD4
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _08008BD8
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _08008BDC
	str r0, [r4, #4]
	ldr r0, _08008BE0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_8005AB8
	ldr r2, _08008BE4
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _08008BE8
	str r0, [r4, #4]
	ldr r0, _08008BEC
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _08008BF0
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _08008BF4
	str r0, [r4, #4]
	ldr r0, _08008BF8
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08008BFC
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _08008C00
	str r0, [r4, #4]
	ldr r0, _08008C04
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _08008C08
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _08008C0C
	str r0, [r4, #4]
	ldr r0, _08008C10
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08008C14
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x14]
	ldr r1, _08008C18
	adds r0, r5, r1
	ldrb r0, [r0]
	strb r0, [r6, #0x15]
	adds r2, #0xa0
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [r7]
	subs r1, #5
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r6, #0x10]
	subs r2, #0x9e
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x16]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r5, r1
	bl sub_8010304
	ldr r1, _08008C1C
	movs r0, #3
	ldrb r2, [r1, #0x1f]
	orrs r0, r2
	strb r0, [r1, #0x1f]
	ldr r0, _08008C20
	adds r5, r5, r0
	str r5, [r4]
	ldr r0, _08008C24
	str r0, [r4, #4]
	ldr r0, _08008C28
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08008C2C
	str r0, [r4]
	ldr r0, _08008C30
	str r0, [r4, #4]
	ldr r0, _08008C34
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r6, #8]
	str r0, [r1, #4]
	ldr r0, [r6, #4]
	ldr r1, _08008C38
	ands r0, r1
	ldr r1, _08008C3C
	cmp r0, r1
	bne _08008C48
	ldrb r0, [r6, #5]
	cmp r0, #7
	bne _08008C40
	bl sub_800D674
	b _08008C48
	.align 2, 0
_08008BC4: .4byte gSaveDataBuffer
_08008BC8: .4byte 0x040000D4
_08008BCC: .4byte gSaveDataBuffer+0x1E50
_08008BD0: .4byte gUnknown_03000000
_08008BD4: .4byte 0x80000400
_08008BD8: .4byte 0xFFFFED00
_08008BDC: .4byte gUnknown_03003C00
_08008BE0: .4byte 0x8000017A
_08008BE4: .4byte 0xFFFFE3D8
_08008BE8: .4byte gUnknown_03003A70
_08008BEC: .4byte 0x80000020
_08008BF0: .4byte 0xFFFFE384
_08008BF4: .4byte gUnknown_030038D0
_08008BF8: .4byte 0x8000002A
_08008BFC: .4byte 0xFFFFE860
_08008C00: .4byte gUnknown_03003930
_08008C04: .4byte 0x80000050
_08008C08: .4byte 0xFFFFE5E0
_08008C0C: .4byte gUnknown_030028A0
_08008C10: .4byte 0x80000140
_08008C14: .4byte 0xFFFFE1F8
_08008C18: .4byte 0xFFFFE1F9
_08008C1C: .4byte gUnknown_03003730
_08008C20: .4byte 0xFFFFE900
_08008C24: .4byte gOamObjects
_08008C28: .4byte 0x80000200
_08008C2C: .4byte gUnknown_081942C0
_08008C30: .4byte 0x05000300
_08008C34: .4byte 0x80000010
_08008C38: .4byte 0x00FF00FF
_08008C3C: .4byte 0x00030004
_08008C40:
	cmp r0, #8
	bne _08008C48
	bl sub_800D6C8
_08008C48:
	movs r0, #0x1e
	movs r1, #0xff
	bl sub_800F540
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
_08008C5C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8008C64
sub_8008C64: @ 0x08008C64
	adds r2, r0, #0
	adds r0, #0x76
	ldrh r1, [r0]
	cmp r1, #0
	bne _08008CB0
	adds r3, r2, #0
	adds r3, #0x8d
	ldrb r0, [r3]
	cmp r0, #1
	bne _08008C7C
	movs r1, #1
	b _08008C8A
_08008C7C:
	cmp r0, #5
	bne _08008C84
	movs r1, #2
	b _08008C8A
_08008C84:
	cmp r0, #0xb
	bne _08008C9A
	movs r1, #3
_08008C8A:
	movs r0, #0
	strb r0, [r2, #0x14]
	strb r0, [r2, #0x15]
	lsls r0, r1, #0x18
	movs r1, #0x86
	lsls r1, r1, #1
	orrs r0, r1
	b _08008CAE
_08008C9A:
	ldr r0, _08008CB4
	adds r0, #0x4a
	strh r1, [r0]
	ldr r1, _08008CB8
	movs r0, #0x80
	strh r0, [r1, #0x1e]
	ldr r0, _08008CBC
	ldrb r3, [r3]
	adds r0, r3, r0
	ldrb r0, [r0]
_08008CAE:
	str r0, [r2, #4]
_08008CB0:
	bx lr
	.align 2, 0
_08008CB4: .4byte gUnknown_030038D0
_08008CB8: .4byte gUnknown_03003A70
_08008CBC: .4byte gUnknown_08014D70

	THUMB_FUNC_START sub_8008CC0
sub_8008CC0: @ 0x08008CC0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _08008CF4
	movs r0, #8
	ldrh r1, [r3]
	ands r0, r1
	cmp r0, #0
	beq _08008D54
	ldr r1, _08008CF8
	movs r2, #1
	movs r0, #1
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _08008D54
	strb r2, [r4, #0x14]
	strb r2, [r4, #0x15]
	ldr r0, _08008CFC
	strh r0, [r3, #0x1e]
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08008D00
	movs r0, #0
	bl sub_800549C
	b _08008D06
	.align 2, 0
_08008CF4: .4byte gUnknown_03003A70
_08008CF8: .4byte gUnknown_03003720
_08008CFC: .4byte 0x0000FFFF
_08008D00:
	movs r0, #1
	bl sub_800549C
_08008D06:
	ldr r1, _08008D44
	movs r2, #0
	movs r0, #9
	strh r0, [r1, #0x18]
	movs r0, #0x34
	strh r0, [r1, #0x1a]
	adds r0, r4, #0
	adds r0, #0x78
	strh r2, [r0]
	adds r0, #2
	movs r5, #1
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _08008D48
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08008D4C
	movs r0, #0
	strb r0, [r4, #0x13]
	b _08008D4E
	.align 2, 0
_08008D44: .4byte gUnknown_03003A70
_08008D48: .4byte gUnknown_030038D0
_08008D4C:
	strb r5, [r4, #0x13]
_08008D4E:
	movs r0, #3
	strb r0, [r4, #5]
	b _08008D5E
_08008D54:
	ldr r1, _08008D64
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_08008D5E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008D64: .4byte gUnknown_03002C60

	THUMB_FUNC_START sub_8008D68
sub_8008D68: @ 0x08008D68
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08008DA2
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08008D90
	movs r0, #5
	b _08008D92
_08008D90:
	movs r0, #4
_08008D92:
	strb r0, [r4, #5]
	movs r0, #0
	strb r0, [r4, #6]
	ldr r1, _08008DEC
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_08008DA2:
	ldrb r0, [r4, #5]
	cmp r0, #7
	bne _08008DE4
	adds r3, r4, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0xf
	bhi _08008DE4
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _08008DD4
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_08008DD4:
	ldr r2, _08008DF0
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_08008DE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008DEC: .4byte gUnknown_03002C60
_08008DF0: .4byte gUnknown_030038D0

	THUMB_FUNC_START sub_8008DF4
sub_8008DF4: @ 0x08008DF4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0x14]
	strb r0, [r4, #0x15]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8008E18
sub_8008E18: @ 0x08008E18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	ldr r0, _08008EE4
	ldr r4, _08008EE8
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08008EEC
	str r4, [r1]
	ldr r0, _08008EF0
	str r0, [r1, #4]
	ldr r0, _08008EF4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08008EF8
	str r0, [r1]
	ldr r0, _08008EFC
	str r0, [r1, #4]
	ldr r0, _08008F00
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08008F04
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08008F08
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x43
	bl sub_8001830
	movs r0, #0x43
	bl sub_8001A9C
	ldr r1, _08008F0C
	movs r0, #0xfc
	ldrb r2, [r1, #0x1f]
	ands r0, r2
	strb r0, [r1, #0x1f]
	ldr r4, _08008F10
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
_08008E7A:
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #0x7f
	bls _08008E7A
	ldr r4, _08008F10
	ldr r0, _08008F14
	adds r0, #0x4a
	movs r1, #0xd2
	lsls r1, r1, #5
	strh r1, [r0]
	movs r0, #0xa
	mov r7, sl
	strb r0, [r7, #0x16]
	movs r0, #2
	bl sub_8002244
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x86
	str r1, [sp]
	movs r7, #0x8e
	add r7, sl
	mov ip, r7
	movs r0, #1
	mov sb, r0
	ldr r1, _08008F18
	mov r8, r1
_08008EB8:
	movs r5, #0
	adds r7, r2, #1
	str r7, [sp, #4]
	lsls r0, r2, #5
	movs r1, #0x80
	lsls r1, r1, #7
	adds r6, r0, r1
	movs r3, #0
	lsls r0, r2, #6
	ldr r7, _08008F1C
	adds r1, r0, r7
_08008ECE:
	strh r6, [r4]
	mov r7, ip
	ldrb r0, [r7]
	asrs r0, r2
	mov r7, sb
	ands r0, r7
	cmp r0, #0
	beq _08008F20
	strh r1, [r4, #4]
	b _08008F26
	.align 2, 0
_08008EE4: .4byte gUnknown_081946C0
_08008EE8: .4byte gUnknown_0202CFC0
_08008EEC: .4byte 0x040000D4
_08008EF0: .4byte 0x06013400
_08008EF4: .4byte 0x80001400
_08008EF8: .4byte gUnknown_081FD92C
_08008EFC: .4byte 0x05000320
_08008F00: .4byte 0x80000020
_08008F04: .4byte gUnknown_08186540
_08008F08: .4byte 0x80000800
_08008F0C: .4byte gUnknown_03003730
_08008F10: .4byte gOamObjects
_08008F14: .4byte gUnknown_030038D0
_08008F18: .4byte 0x000091A0
_08008F1C: .4byte 0x000091E0
_08008F20:
	mov r7, r8
	adds r0, r3, r7
	strh r0, [r4, #4]
_08008F26:
	adds r4, #8
	adds r3, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _08008ECE
	ldr r2, [sp, #4]
	cmp r2, #3
	bls _08008EB8
	movs r0, #0
	ldr r1, [sp]
	strh r0, [r1]
	movs r0, #0x31
	bl sub_800F3E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	mov r2, sl
	ldrb r0, [r2, #5]
	adds r0, #1
	strb r0, [r2, #5]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8008F68
sub_8008F68: @ 0x08008F68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _08008FDC
	ands r1, r2
	strh r1, [r0]
	ldr r4, _08008FE0
	movs r1, #0
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_08008F96:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_08008F9C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _08008F9C
	adds r1, r2, #0
	cmp r1, #3
	bls _08008F96
	ldrh r5, [r5]
	cmp r5, #0x97
	bls _08008FCE
	mov r4, sb
	ldr r0, _08008FE4
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08008FCE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008FDC: .4byte 0x000001FF
_08008FE0: .4byte gUnknown_03002C50
_08008FE4: .4byte 0x0000C008

	THUMB_FUNC_START sub_8008FE8
sub_8008FE8: @ 0x08008FE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800905C
	ands r1, r2
	strh r1, [r0]
	ldr r4, _08009060
	movs r1, #1
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_08009016:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800901C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800901C
	adds r1, r2, #0
	cmp r1, #3
	bls _08009016
	ldrh r5, [r5]
	cmp r5, #0xb7
	bls _0800904E
	mov r4, sb
	ldr r0, _08009064
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_0800904E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800905C: .4byte 0x000001FF
_08009060: .4byte gUnknown_03002C60
_08009064: .4byte 0x0000C028

	THUMB_FUNC_START sub_8009068
sub_8009068: @ 0x08009068
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _080090DC
	ands r1, r2
	strh r1, [r0]
	ldr r4, _080090E0
	movs r1, #2
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_08009096:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800909C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800909C
	adds r1, r2, #0
	cmp r1, #3
	bls _08009096
	ldrh r5, [r5]
	cmp r5, #0xd7
	bls _080090CE
	mov r4, sb
	ldr r0, _080090E4
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_080090CE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080090DC: .4byte 0x000001FF
_080090E0: .4byte gUnknown_03002C70
_080090E4: .4byte 0x0000C048

	THUMB_FUNC_START sub_80090E8
sub_80090E8: @ 0x080090E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldrb r0, [r7, #5]
	cmp r0, #8
	bls _080090FC
	b _080094C6
_080090FC:
	lsls r0, r0, #2
	ldr r1, _08009108
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009108: .4byte _0800910C
_0800910C: @ jump table
	.4byte _08009130 @ case 0
	.4byte _08009138 @ case 1
	.4byte _080091C8 @ case 2
	.4byte _080091D0 @ case 3
	.4byte _080091D8 @ case 4
	.4byte _080091E0 @ case 5
	.4byte _08009260 @ case 6
	.4byte _0800935C @ case 7
	.4byte _08009488 @ case 8
_08009130:
	adds r0, r7, #0
	bl sub_8008DF4
	b _080094C6
_08009138:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009144
	b _080094C6
_08009144:
	adds r0, r7, #0
	bl sub_8008E18
	ldr r0, _08009178
	movs r3, #0xf0
	ldrb r0, [r0, #0x17]
	ands r3, r0
	cmp r3, #0
	beq _08009184
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r4, _0800917C
	ldr r2, _08009180
	adds r1, r4, #0
	bl ReadSram
	adds r4, #0xc2
	movs r0, #1
	ldrb r7, [r7, #7]
	lsls r0, r7
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	bl sub_80080B8
	b _080094C6
	.align 2, 0
_08009178: .4byte gUnknown_03003730
_0800917C: .4byte gSaveDataBuffer
_08009180: .4byte 0x000029D0
_08009184:
	ldr r2, _080091B4
	ldr r0, _080091B8
	str r0, [r2]
	ldr r0, _080091BC
	str r0, [r2, #4]
	ldr r1, _080091C0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	str r3, [r0, #0x30]
	adds r2, r0, #0
	adds r2, #0xc2
	movs r1, #1
	ldrb r7, [r7, #7]
	lsls r1, r7
	ldrb r3, [r2]
	orrs r1, r3
	strb r1, [r2]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _080091C4
	bl WriteSramEx
	b _080094C6
	.align 2, 0
_080091B4: .4byte 0x040000D4
_080091B8: .4byte gUnknown_08018A3C
_080091BC: .4byte gSaveDataBuffer
_080091C0: .4byte 0x80000018
_080091C4: .4byte 0x000029D0
_080091C8:
	adds r0, r7, #0
	bl sub_8008F68
	b _080094C6
_080091D0:
	adds r0, r7, #0
	bl sub_8008FE8
	b _080094C6
_080091D8:
	adds r0, r7, #0
	bl sub_8009068
	b _080094C6
_080091E0:
	adds r0, r7, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _08009254
	ands r1, r2
	strh r1, [r0]
	ldr r6, _08009258
	movs r1, #3
	mov sl, r0
	mov r8, sl
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sb, r0
	movs r3, #0xc0
	lsls r3, r3, #8
	mov ip, r3
_08009202:
	movs r4, #0
	adds r5, r1, #1
	mov r3, ip
_08009208:
	mov r0, r8
	ldrh r1, [r0]
	add r1, sb
	ands r1, r2
	adds r0, r1, r3
	strh r0, [r6, #2]
	adds r6, #8
	adds r3, #0x40
	adds r4, #1
	cmp r4, #1
	bls _08009208
	adds r1, r5, #0
	cmp r1, #3
	bls _08009202
	mov r1, sl
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _0800922E
	b _080094C6
_0800922E:
	ldr r6, _08009258
	ldr r0, _0800925C
	strh r0, [r6, #2]
	adds r0, #0x40
	strh r0, [r6, #0xa]
	adds r1, r7, #0
	adds r1, #0x8e
	movs r0, #1
	ldrb r2, [r7, #7]
	lsls r0, r2
	ldrb r3, [r1]
	orrs r0, r3
	strb r0, [r1]
	subs r1, #0xa
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _080093A2
	.align 2, 0
_08009254: .4byte 0x000001FF
_08009258: .4byte gUnknown_03002C80
_0800925C: .4byte 0x0000C068
_08009260:
	movs r0, #0x84
	adds r0, r0, r7
	mov sl, r0
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	ldr r6, _0800931C
	ldrb r2, [r7, #7]
	lsls r0, r2, #4
	adds r6, r0, r6
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _08009328
	ldr r5, _08009320
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov sb, r3
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl sub_8002B28
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8002AF8
	ldr r3, _08009324
	strh r0, [r3, #6]
	movs r0, #0
	ldrsh r4, [r5, r0]
	mov r0, r8
	bl sub_8002B28
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8002AF8
	ldr r1, _08009324
	strh r0, [r1, #0xe]
	ldrh r5, [r5]
	rsbs r4, r5, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl sub_8002B28
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8002AF8
	ldr r1, _08009324
	strh r0, [r1, #0x16]
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl sub_8002B28
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8002AF8
	ldr r1, _08009324
	strh r0, [r1, #0x1e]
	movs r1, #3
	movs r3, #0x82
	lsls r3, r3, #7
	adds r2, r3, #0
_08009300:
	movs r4, #0
	adds r5, r1, #1
_08009304:
	ldrb r1, [r7, #7]
	lsls r0, r1, #5
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _08009304
	adds r1, r5, #0
	cmp r1, #3
	bls _08009300
	b _080094C6
	.align 2, 0
_0800931C: .4byte gUnknown_03002C50
_08009320: .4byte gUnknown_08014AF0
_08009324: .4byte gOamObjects
_08009328:
	movs r1, #3
	movs r3, #0x82
	lsls r3, r3, #7
	adds r2, r3, #0
	ldr r0, _08009358
	mov r8, r0
_08009334:
	movs r4, #0
	adds r5, r1, #1
	mov r1, r8
_0800933A:
	ldrb r3, [r7, #7]
	lsls r0, r3, #5
	adds r0, r0, r2
	strh r0, [r6]
	strh r1, [r6, #4]
	adds r6, #8
	adds r1, #0x20
	adds r4, #1
	cmp r4, #1
	bls _0800933A
	adds r1, r5, #0
	cmp r1, #3
	bls _08009334
	b _080093A2
	.align 2, 0
_08009358: .4byte 0x000091A0
_0800935C:
	ldr r6, _080093AC
	ldrb r1, [r7, #7]
	lsls r0, r1, #4
	adds r6, r0, r6
	movs r2, #0x84
	adds r2, r2, r7
	mov sl, r2
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080093B8
	movs r0, #1
	strb r0, [r7, #0x14]
	strb r0, [r7, #0x15]
	ldr r1, _080093B0
	ldr r0, _080093B4
	strh r0, [r1, #0x1e]
	movs r0, #5
	bl sub_800549C
	movs r4, #0
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
_08009392:
	ldrb r2, [r7, #7]
	lsls r0, r2, #5
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _08009392
_080093A2:
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	b _080094C6
	.align 2, 0
_080093AC: .4byte gUnknown_03002C50
_080093B0: .4byte gUnknown_03003A70
_080093B4: .4byte 0x0000FFFF
_080093B8:
	ldr r5, _08009464
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov sb, r3
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl sub_8002B28
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8002AF8
	ldr r3, _08009468
	strh r0, [r3, #6]
	movs r0, #0
	ldrsh r4, [r5, r0]
	mov r0, r8
	bl sub_8002B28
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8002AF8
	ldr r1, _08009468
	strh r0, [r1, #0xe]
	ldrh r5, [r5]
	rsbs r4, r5, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl sub_8002B28
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8002AF8
	ldr r1, _08009468
	strh r0, [r1, #0x16]
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl sub_8002B28
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8002AF8
	ldr r1, _08009468
	strh r0, [r1, #0x1e]
	movs r4, #0
	adds r5, r7, #0
	adds r5, #0x8e
	movs r3, #0
_0800943E:
	ldrb r2, [r7, #7]
	lsls r0, r2, #5
	movs r1, #0x82
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r0, [r6]
	ldrb r2, [r7, #7]
	ldrb r1, [r5]
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08009470
	lsls r0, r2, #6
	ldr r2, _0800946C
	adds r0, r0, r2
	adds r0, r3, r0
	b _08009474
	.align 2, 0
_08009464: .4byte gUnknown_08014AF0
_08009468: .4byte gOamObjects
_0800946C: .4byte 0x000091E0
_08009470:
	ldr r1, _08009484
	adds r0, r3, r1
_08009474:
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r4, #1
	cmp r4, #1
	bls _0800943E
	b _080094C6
	.align 2, 0
_08009484: .4byte 0x000091A0
_08009488:
	ldr r1, _080094D4
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080094C6
	ldr r1, _080094D8
	movs r0, #0xf
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _080094C6
	bl sub_800F454
	movs r0, #0x2b
	bl sub_800F3E0
	ldr r0, _080094DC
	adds r1, r7, #0
	adds r1, #0x8d
	ldrb r1, [r1]
	adds r2, r0, #0
	adds r2, #0xc1
	strb r1, [r2]
	adds r1, r7, #0
	adds r1, #0x8e
	ldrb r1, [r1]
	adds r0, #0xc2
	strb r1, [r0]
	ldr r0, _080094E0
	str r0, [r7, #4]
_080094C6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080094D4: .4byte gUnknown_03003A70
_080094D8: .4byte gUnknown_03003720
_080094DC: .4byte gSaveDataBuffer
_080094E0: .4byte 0x0100000A

	THUMB_FUNC_START sub_80094E4
sub_80094E4: @ 0x080094E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #0xc
	bls _080094FA
	b _08009A52
_080094FA:
	lsls r0, r0, #2
	ldr r1, _08009504
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009504: .4byte _08009508
_08009508: @ jump table
	.4byte _0800953C @ case 0
	.4byte _08009544 @ case 1
	.4byte _080095E4 @ case 2
	.4byte _080095EC @ case 3
	.4byte _080095F4 @ case 4
	.4byte _080095FC @ case 5
	.4byte _08009688 @ case 6
	.4byte _0800981E @ case 7
	.4byte _080098D8 @ case 8
	.4byte _0800994C @ case 9
	.4byte _08009966 @ case 10
	.4byte _080099EE @ case 11
	.4byte _08009A44 @ case 12
_0800953C:
	adds r0, r5, #0
	bl sub_8008DF4
	b _08009A52
_08009544:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009550
	b _08009A52
_08009550:
	adds r0, r5, #0
	bl sub_8008E18
	movs r0, #0xf0
	ldrb r1, [r5, #0x17]
	ands r0, r1
	adds r2, r5, #0
	adds r2, #0x8e
	str r2, [sp]
	cmp r0, #0
	beq _0800956E
	ldr r0, _080095A8
	adds r0, #0xc2
	ldrb r0, [r0]
	strb r0, [r2]
_0800956E:
	ldrb r0, [r5, #7]
	strb r0, [r5, #0x13]
	ldr r4, _080095AC
	movs r7, #0
	ldr r3, _080095B0
	mov sl, r3
	ldr r0, _080095B4
	mov sb, r0
_0800957E:
	ldr r1, [sp]
	ldrb r2, [r1]
	asrs r2, r7
	movs r6, #0
	adds r3, r7, #1
	mov r8, r3
	movs r0, #1
	ands r2, r0
	str r2, [sp, #8]
	mov ip, r6
	lsls r1, r7, #6
	adds r2, r1, #0
	add r2, sl
	ldr r3, _080095B8
	adds r1, r1, r3
_0800959C:
	ldrb r0, [r5, #0x13]
	cmp r0, r7
	bne _080095BC
	strh r1, [r4, #4]
	b _080095CC
	.align 2, 0
_080095A8: .4byte gSaveDataBuffer
_080095AC: .4byte gUnknown_03002C50
_080095B0: .4byte 0x0000A1E0
_080095B4: .4byte 0x0000A1A0
_080095B8: .4byte 0x000091E0
_080095BC:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080095C6
	strh r2, [r4, #4]
	b _080095CC
_080095C6:
	mov r0, ip
	add r0, sb
	strh r0, [r4, #4]
_080095CC:
	adds r4, #8
	movs r3, #0x20
	add ip, r3
	adds r2, #0x20
	adds r1, #0x20
	adds r6, #1
	cmp r6, #1
	bls _0800959C
	mov r7, r8
	cmp r7, #3
	bls _0800957E
	b _08009A52
_080095E4:
	adds r0, r5, #0
	bl sub_8008F68
	b _08009A52
_080095EC:
	adds r0, r5, #0
	bl sub_8008FE8
	b _08009A52
_080095F4:
	adds r0, r5, #0
	bl sub_8009068
	b _08009A52
_080095FC:
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _08009674
	ands r1, r2
	strh r1, [r0]
	ldr r4, _08009678
	movs r7, #3
	mov sb, r0
	mov ip, sb
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
_08009618:
	movs r6, #0
	adds r7, #1
	mov r8, r7
	movs r1, #0xc0
	lsls r1, r1, #8
_08009622:
	mov r0, ip
	ldrh r3, [r0]
	add r3, sl
	ands r3, r2
	adds r0, r3, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r6, #1
	cmp r6, #1
	bls _08009622
	mov r7, r8
	cmp r7, #3
	bls _08009618
	mov r1, sb
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _08009648
	b _08009A52
_08009648:
	ldr r4, _08009678
	ldr r0, _0800967C
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	ldr r1, _08009680
	ldr r0, _08009684
	strh r0, [r1, #0x1e]
	movs r0, #2
	bl sub_800549C
	movs r0, #0xc0
	movs r1, #0x14
	bl sub_8000738
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	b _08009A52
	.align 2, 0
_08009674: .4byte 0x000001FF
_08009678: .4byte gUnknown_03002C80
_0800967C: .4byte 0x0000C068
_08009680: .4byte gUnknown_03003A70
_08009684: .4byte 0x0000FFFF
_08009688:
	ldr r1, _080096D0
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	adds r2, r5, #0
	adds r2, #0x8e
	str r2, [sp]
	cmp r0, #0
	beq _0800977A
	ldr r2, _080096D4
	ldrh r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080096D8
	ldrb r6, [r5, #0x13]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_080096B0:
	ldrb r0, [r5, #0x13]
	subs r0, #1
	ands r0, r4
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0x13]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _080096C8
	cmp r6, r0
	bne _08009754
_080096C8:
	adds r7, #1
	cmp r7, #3
	bls _080096B0
	b _0800977A
	.align 2, 0
_080096D0: .4byte gUnknown_03003A70
_080096D4: .4byte gUnknown_03003720
_080096D8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800970E
	ldrb r6, [r5, #0x13]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_080096EE:
	ldrb r0, [r5, #0x13]
	adds r0, #1
	ands r0, r4
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0x13]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _08009706
	cmp r6, r0
	bne _08009754
_08009706:
	adds r7, #1
	cmp r7, #3
	bls _080096EE
	b _0800977A
_0800970E:
	ldrh r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800975C
	movs r0, #0x2b
	bl sub_800F3E0
	adds r0, r5, #0
	adds r0, #0x86
	movs r2, #0
	strh r4, [r0]
	strb r2, [r5, #0x14]
	strb r2, [r5, #0x15]
	ldr r1, _0800974C
	adds r1, #0x4a
	ldr r0, _08009750
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r0, #0xfd
	ldrb r1, [r5, #0x16]
	ands r0, r1
	strb r0, [r5, #0x16]
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	strb r2, [r5, #7]
	strb r2, [r5, #6]
	b _0800977A
	.align 2, 0
_0800974C: .4byte gUnknown_030038D0
_08009750: .4byte 0x0000FDFF
_08009754:
	movs r0, #0x2a
	bl sub_800F3E0
	b _0800977A
_0800975C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800977A
	movs r0, #0x2c
	bl sub_800F3E0
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #0xc
	strb r0, [r5, #5]
_0800977A:
	ldr r4, _080097B0
	movs r7, #0
_0800977E:
	ldrb r2, [r5, #0x13]
	cmp r7, r2
	bne _080097D0
	movs r6, #0
	adds r3, r7, #1
	mov r8, r3
	ldr r0, [sp]
	mov ip, r0
	movs r1, #1
	mov sl, r1
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _080097B4
	adds r1, r0, r3
	ldr r0, _080097B8
	mov sb, r0
_0800979E:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _080097BC
	strh r1, [r4, #4]
	b _080097C2
	.align 2, 0
_080097B0: .4byte gUnknown_03002C50
_080097B4: .4byte 0x000091E0
_080097B8: .4byte 0x000091A0
_080097BC:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_080097C2:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r6, #1
	cmp r6, #1
	bls _0800979E
	b _08009816
_080097D0:
	movs r6, #0
	adds r0, r7, #1
	mov r8, r0
	ldr r1, [sp]
	mov ip, r1
	movs r2, #1
	mov sl, r2
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _080097FC
	adds r1, r0, r3
	ldr r0, _08009800
	mov sb, r0
_080097EA:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _08009804
	strh r1, [r4, #4]
	b _0800980A
	.align 2, 0
_080097FC: .4byte 0x0000A1E0
_08009800: .4byte 0x0000A1A0
_08009804:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_0800980A:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r6, #1
	cmp r6, #1
	bls _080097EA
_08009816:
	mov r7, r8
	cmp r7, #3
	bls _0800977E
	b _08009A52
_0800981E:
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x86
	adds r1, r1, r5
	mov sb, r1
	cmp r0, #0x28
	bls _08009844
	movs r0, #0
	movs r1, #0
	mov r2, sb
	strh r1, [r2]
	ldrb r1, [r5, #5]
	adds r1, #1
	strb r1, [r5, #5]
	strb r0, [r5, #7]
	strb r0, [r5, #6]
_08009844:
	ldr r4, _0800987C
	movs r7, #0
	ldr r3, _08009880
	mov ip, r3
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sl, r0
_08009852:
	movs r6, #0
	adds r1, r7, #1
	mov r8, r1
_08009858:
	ldrb r2, [r5, #0x13]
	cmp r7, r2
	bne _08009894
	ldrh r1, [r4, #2]
	mov r3, ip
	ands r3, r1
	mov r0, sl
	ands r0, r1
	strh r0, [r4, #2]
	cmp r6, #0
	bne _08009884
	cmp r3, #0x37
	bhi _08009874
	adds r3, #4
_08009874:
	cmp r3, #0x38
	bls _08009890
	b _0800988E
	.align 2, 0
_0800987C: .4byte gUnknown_03002C50
_08009880: .4byte 0x000001FF
_08009884:
	cmp r3, #0x77
	bhi _0800988A
	adds r3, #4
_0800988A:
	cmp r3, #0x78
	bls _08009890
_0800988E:
	subs r3, #4
_08009890:
	ldrh r1, [r4, #2]
	b _080098B6
_08009894:
	ldrh r0, [r4, #2]
	mov r3, ip
	ands r3, r0
	mov r1, sl
	ands r1, r0
	strh r1, [r4, #2]
	mov r2, sb
	ldrh r2, [r2]
	adds r3, r2, r3
	mov r0, ip
	ands r3, r0
	cmp r3, #0xf0
	bls _080098B6
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	b _080098BA
_080098B6:
	adds r0, r1, r3
	strh r0, [r4, #2]
_080098BA:
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	bls _08009858
	mov r7, r8
	cmp r7, #3
	bls _08009852
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #7
	bls _080098D2
	b _08009A52
_080098D2:
	adds r0, #1
	strh r0, [r1]
	b _08009A52
_080098D8:
	ldr r4, _08009924
	movs r7, #0
	movs r2, #0x86
	adds r2, r2, r5
	mov sb, r2
	movs r3, #0xff
	lsls r3, r3, #8
	mov sl, r3
	movs r1, #0
_080098EA:
	movs r6, #0
	adds r0, r7, #1
	mov r8, r0
_080098F0:
	ldrb r2, [r5, #0x13]
	cmp r7, r2
	bne _08009928
	ldrb r3, [r4]
	mov r0, sl
	ldrh r2, [r4]
	ands r0, r2
	strh r0, [r4]
	cmp r3, #0x37
	bhi _0800990A
	adds r3, #4
	cmp r3, #0x37
	bhi _08009914
_0800990A:
	cmp r3, #0x38
	bls _0800991E
	subs r3, #4
	cmp r3, #0x38
	bhi _0800991E
_08009914:
	movs r0, #9
	strb r0, [r5, #5]
	strb r1, [r5, #7]
	strb r1, [r5, #6]
	movs r3, #0x38
_0800991E:
	ldrh r2, [r4]
	adds r0, r2, r3
	b _0800992C
	.align 2, 0
_08009924: .4byte gUnknown_03002C50
_08009928:
	movs r0, #0x80
	lsls r0, r0, #2
_0800992C:
	strh r0, [r4]
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	bls _080098F0
	mov r7, r8
	cmp r7, #3
	bls _080098EA
	mov r3, sb
	ldrh r0, [r3]
	cmp r0, #7
	bls _08009946
	b _08009A52
_08009946:
	adds r0, #1
	strh r0, [r3]
	b _08009A52
_0800994C:
	ldrb r0, [r5, #6]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _08009A52
	movs r0, #0xa
	strb r0, [r5, #5]
	strb r1, [r5, #7]
	strb r1, [r5, #6]
	b _08009A52
_08009966:
	ldrb r0, [r5, #6]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x32
	bls _0800998C
	movs r0, #2
	movs r1, #4
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	strb r4, [r5, #7]
	b _0800999A
_0800998C:
	ldrb r0, [r5, #7]
	cmp r0, #5
	bls _08009994
	strb r4, [r5, #7]
_08009994:
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
_0800999A:
	ldr r4, _080099C8
	movs r7, #0
	ldr r1, _080099CC
	mov sb, r1
	ldr r2, _080099D0
	mov sl, r2
	movs r2, #0x80
	lsls r2, r2, #2
_080099AA:
	movs r6, #0
	adds r3, r7, #1
	mov r8, r3
	lsls r0, r7, #6
	mov r3, sl
	adds r1, r0, r3
	add r0, sb
_080099B8:
	ldrb r3, [r5, #0x13]
	cmp r7, r3
	bne _080099D8
	ldrb r3, [r5, #7]
	cmp r3, #2
	bls _080099D4
	strh r0, [r4, #4]
	b _080099DA
	.align 2, 0
_080099C8: .4byte gUnknown_03002C50
_080099CC: .4byte 0x0000A1E0
_080099D0: .4byte 0x000091E0
_080099D4:
	strh r1, [r4, #4]
	b _080099DA
_080099D8:
	strh r2, [r4]
_080099DA:
	adds r4, #8
	adds r1, #0x20
	adds r0, #0x20
	adds r6, #1
	cmp r6, #1
	bls _080099B8
	mov r7, r8
	cmp r7, #3
	bls _080099AA
	b _08009A52
_080099EE:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08009A52
	ldrb r2, [r5, #0x13]
	cmp r2, #1
	beq _08009A12
	cmp r2, #1
	bgt _08009A08
	cmp r2, #0
	beq _08009A12
	b _08009A2C
_08009A08:
	cmp r2, #2
	beq _08009A1C
	cmp r2, #3
	beq _08009A24
	b _08009A2C
_08009A12:
	adds r0, r5, #0
	adds r0, #0x8d
	strb r2, [r0]
	adds r1, r0, #0
	b _08009A34
_08009A1C:
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #5
	b _08009A32
_08009A24:
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #0xb
	b _08009A32
_08009A2C:
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #0
_08009A32:
	strb r0, [r1]
_08009A34:
	ldr r0, _08009A40
	ldrb r1, [r1]
	adds r0, r1, r0
	ldrb r0, [r0]
	b _08009A50
	.align 2, 0
_08009A40: .4byte gUnknown_08014D70
_08009A44:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08009A52
	movs r0, #1
_08009A50:
	str r0, [r5, #4]
_08009A52:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8009A64
sub_8009A64: @ 0x08009A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #5]
	cmp r0, #7
	bls _08009A7C
	bl _0800A322
_08009A7C:
	lsls r0, r0, #2
	ldr r1, _08009A88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009A88: .4byte _08009A8C
_08009A8C: @ jump table
	.4byte _08009AAC @ case 0
	.4byte _08009AB6 @ case 1
	.4byte _08009BA8 @ case 2
	.4byte _08009C14 @ case 3
	.4byte _08009D8C @ case 4
	.4byte _0800A1C4 @ case 5
	.4byte _0800A1E4 @ case 6
	.4byte _0800A1F6 @ case 7
_08009AAC:
	adds r0, r7, #0
	bl sub_8008DF4
	bl _0800A322
_08009AB6:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009AC4
	bl _0800A322
_08009AC4:
	ldr r0, _08009B70
	adds r1, r0, #0
	adds r1, #0x4b
	ldrb r1, [r1]
	strb r1, [r7, #0x17]
	adds r0, #0xc1
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x8d
	strb r0, [r1]
	ldr r1, _08009B74
	ldr r0, _08009B78
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r2, _08009B7C
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B80
	str r0, [r1]
	ldr r0, _08009B84
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B88
	str r0, [r1]
	ldr r0, _08009B8C
	str r0, [r1, #4]
	ldr r0, _08009B90
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x43
	bl sub_8001830
	movs r0, #0x43
	bl sub_8001A9C
	movs r0, #0xfc
	ldrb r1, [r7, #0x1f]
	ands r0, r1
	strb r0, [r7, #0x1f]
	ldr r2, _08009B94
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
_08009B20:
	strh r0, [r2]
	adds r2, #8
	adds r6, #1
	cmp r6, #0x7f
	bls _08009B20
	movs r6, #0
	ldr r2, _08009B98
	movs r1, #0
	ldr r0, _08009B9C
_08009B32:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, r2
	bls _08009B32
	movs r0, #5
	movs r1, #8
	bl sub_80024C8
	movs r0, #0x31
	bl sub_800F3E0
	ldr r1, _08009BA0
	adds r3, r1, #0
	adds r3, #0x4a
	movs r2, #0
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r3]
	movs r0, #0xc
	strb r0, [r7, #0x16]
	ldr r0, _08009BA4
	strh r0, [r1, #4]
	strb r2, [r7, #0x13]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	b _08009BFC
	.align 2, 0
_08009B70: .4byte gSaveDataBuffer
_08009B74: .4byte 0x040000D4
_08009B78: .4byte gUnknown_08186540
_08009B7C: .4byte 0x80000800
_08009B80: .4byte gUnknown_081954A8
_08009B84: .4byte 0x06013400
_08009B88: .4byte gUnknown_081FD92C
_08009B8C: .4byte 0x05000320
_08009B90: .4byte 0x80000020
_08009B94: .4byte gOamObjects
_08009B98: .4byte 0x000003FF
_08009B9C: .4byte gUnknown_03000000
_08009BA0: .4byte gUnknown_030038D0
_08009BA4: .4byte 0x00003E01
_08009BA8:
	ldr r4, _08009C04
	adds r0, r4, #0
	bl sub_8002878
	movs r6, #1
	ldrsb r6, [r4, r6]
	cmp r6, #0
	beq _08009BBA
	b _0800A322
_08009BBA:
	movs r5, #1
	strb r5, [r7, #0x14]
	strb r5, [r7, #0x15]
	ldr r4, _08009C08
	ldr r0, _08009C0C
	strh r0, [r4, #0x1e]
	adds r0, r7, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	adds r0, #7
	bl sub_800549C
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	adds r0, r7, #0
	adds r0, #0x78
	strh r6, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _08009C10
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
_08009BFC:
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	b _0800A322
	.align 2, 0
_08009C04: .4byte gUnknown_03002840
_08009C08: .4byte gUnknown_03003A70
_08009C0C: .4byte 0x0000FFFF
_08009C10: .4byte gUnknown_030038D0
_08009C14:
	ldr r1, _08009C48
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08009CBC
	movs r0, #1
	ldrb r2, [r7, #0x17]
	ands r0, r2
	ldr r1, _08009C4C
	cmp r0, #0
	beq _08009C50
	movs r0, #0xc0
	ldrh r3, [r1, #2]
	ands r0, r3
	cmp r0, #0
	beq _08009C50
	movs r0, #0x2a
	bl sub_800F3E0
	movs r0, #1
	ldrb r4, [r7, #0x13]
	eors r0, r4
	strb r0, [r7, #0x13]
	b _08009CBC
	.align 2, 0
_08009C48: .4byte gUnknown_03003A70
_08009C4C: .4byte gUnknown_03003720
_08009C50:
	ldrh r1, [r1, #2]
	movs r5, #1
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08009C9C
	movs r0, #0x2b
	bl sub_800F3E0
	movs r2, #0
	strb r2, [r7, #0x14]
	strb r5, [r7, #0x15]
	adds r0, r4, #0
	ldrb r1, [r7, #0x17]
	ands r0, r1
	cmp r0, #0
	bne _08009C84
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #5
	b _08009CBA
_08009C84:
	adds r0, r7, #0
	adds r0, #0x78
	movs r1, #0
	strh r2, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #7
	strb r0, [r7, #5]
	strb r1, [r7, #6]
	b _08009CBC
_08009C9C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08009CBC
	movs r0, #0x2c
	bl sub_800F3E0
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r7, #5]
	adds r0, #3
_08009CBA:
	strb r0, [r7, #5]
_08009CBC:
	movs r0, #1
	ldrb r2, [r7, #0x17]
	ands r0, r2
	cmp r0, #0
	beq _08009D28
	ldr r2, _08009CFC
	movs r6, #0
	ldr r3, _08009D00
	mov sl, r3
	ldr r4, _08009D04
	mov sb, r4
_08009CD2:
	movs r5, #0
	adds r0, r6, #1
	mov r8, r0
	lsls r0, r6, #5
	lsls r1, r6, #6
	ldr r3, _08009D08
	adds r3, r3, r0
	mov ip, r3
	mov r0, sl
	adds r4, r1, r0
	ldr r0, _08009D0C
	adds r3, r1, r0
	mov r1, sb
_08009CEC:
	mov r0, ip
	strh r0, [r2]
	strh r1, [r2, #2]
	ldrb r0, [r7, #0x13]
	cmp r0, r6
	bne _08009D10
	strh r3, [r2, #4]
	b _08009D12
	.align 2, 0
_08009CFC: .4byte gUnknown_03002C50
_08009D00: .4byte 0x0000A1A0
_08009D04: .4byte 0x0000C038
_08009D08: .4byte 0x00004462
_08009D0C: .4byte 0x000091A0
_08009D10:
	strh r4, [r2, #4]
_08009D12:
	adds r2, #8
	adds r4, #0x20
	adds r3, #0x20
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _08009CEC
	mov r6, r8
	cmp r6, #1
	bls _08009CD2
	b _08009D44
_08009D28:
	ldr r2, _08009D7C
	movs r5, #0
	ldr r3, _08009D80
	ldr r1, _08009D84
	ldr r0, _08009D88
_08009D32:
	strh r3, [r2]
	strh r1, [r2, #2]
	strh r0, [r2, #4]
	adds r2, #8
	adds r1, #0x40
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _08009D32
_08009D44:
	ldrb r1, [r7, #5]
	cmp r1, #3
	beq _08009D4C
	b _0800A322
_08009D4C:
	adds r3, r7, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0
	bne _08009D58
	b _0800A322
_08009D58:
	adds r2, r7, #0
	adds r2, #0x78
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08009D72
	b _0800A312
_08009D72:
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	b _0800A310
	.align 2, 0
_08009D7C: .4byte gUnknown_03002C50
_08009D80: .4byte 0x00004462
_08009D84: .4byte 0x0000C038
_08009D88: .4byte 0x000091E0
_08009D8C:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009D98
	b _0800A322
_08009D98:
	bl sub_800060C
	bl sub_8000930
	bl sub_800F804
	bl sub_800F3C4
	bl sub_8005408
	ldr r5, _08009E90
	ldr r0, _08009E94
	str r0, [r5]
	ldr r0, _08009E98
	str r0, [r5, #4]
	ldr r2, _08009E9C
	mov sl, r2
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009EA0
	str r0, [r5]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r5, #4]
	ldr r3, _08009EA4
	mov sb, r3
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	movs r0, #0
	bl sub_8002234
	adds r6, r0, #0
	str r6, [r5]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r5, #4]
	ldr r4, _08009EA8
	mov r8, r4
	str r4, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _08009EAC
	str r4, [r5]
	ldr r0, _08009EB0
	str r0, [r5, #4]
	ldr r0, _08009EB4
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	bl sub_8005408
	ldr r0, _08009EB8
	str r0, [r5]
	ldr r0, _08009EBC
	str r0, [r5, #4]
	ldr r6, _08009EC0
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r4, r1
	str r0, [r5]
	ldr r0, _08009EC4
	str r0, [r5, #4]
	ldr r0, _08009EC8
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _08009ECC
	adds r4, r4, r2
	adds r0, r4, #0
	bl sub_8010304
	ldrb r3, [r7, #4]
	cmp r3, #4
	bne _08009F0E
	ldr r0, _08009ED0
	str r0, [r5]
	ldr r0, _08009ED4
	str r0, [r5, #4]
	mov r4, sb
	str r4, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009ED8
	str r0, [r5]
	ldr r0, _08009EDC
	str r0, [r5, #4]
	ldr r1, _08009EE0
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009EE4
	str r0, [r5]
	ldr r0, _08009EE8
	str r0, [r5, #4]
	mov r0, r8
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009EEC
	str r0, [r5]
	ldr r0, _08009EF0
	str r0, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009EF4
	str r0, [r5]
	ldr r0, _08009EF8
	str r0, [r5, #4]
	mov r2, r8
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009EFC
	str r0, [r5]
	ldr r0, _08009F00
	str r0, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldrb r3, [r7, #6]
	cmp r3, #3
	beq _08009E82
	b _08009FD0
_08009E82:
	ldrb r0, [r7, #5]
	cmp r0, #7
	bne _08009F04
	bl sub_800D674
	b _08009FD0
	.align 2, 0
_08009E90: .4byte 0x040000D4
_08009E94: .4byte gUnknown_08185D20
_08009E98: .4byte 0x06003800
_08009E9C: .4byte 0x80000400
_08009EA0: .4byte gUnknown_08186540
_08009EA4: .4byte 0x80000800
_08009EA8: .4byte 0x80000100
_08009EAC: .4byte gSaveDataBuffer+0x34
_08009EB0: .4byte gUnknown_03003730
_08009EB4: .4byte 0x800000D0
_08009EB8: .4byte gUnknown_081942C0
_08009EBC: .4byte 0x05000300
_08009EC0: .4byte 0x80000010
_08009EC4: .4byte gUnknown_030028A0
_08009EC8: .4byte 0x80000140
_08009ECC: .4byte 0x0000261C
_08009ED0: .4byte gUnknown_0818E4C0
_08009ED4: .4byte 0x06012000
_08009ED8: .4byte gUnknown_08194200
_08009EDC: .4byte 0x050002A0
_08009EE0: .4byte 0x80000020
_08009EE4: .4byte gUnknown_0818F6C0
_08009EE8: .4byte 0x06013000
_08009EEC: .4byte gUnknown_08194260
_08009EF0: .4byte 0x050002E0
_08009EF4: .4byte gUnknown_08190AC0
_08009EF8: .4byte 0x06013200
_08009EFC: .4byte gUnknown_081FD92C
_08009F00: .4byte 0x05000320
_08009F04:
	cmp r0, #8
	bne _08009FD0
	bl sub_800D6C8
	b _08009FD0
_08009F0E:
	ldr r4, _08009F58
	mov r8, r4
	str r4, [r5]
	ldr r4, _08009F5C
	str r4, [r5, #4]
	ldr r1, _08009F60
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldr r3, _08009F64
	str r3, [r5]
	ldr r2, _08009F68
	str r2, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009F6C
	str r0, [r5]
	ldr r0, _08009F70
	str r0, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldrb r0, [r7, #4]
	cmp r0, #5
	bne _08009F84
	ldr r0, _08009F74
	str r0, [r5]
	ldr r0, _08009F78
	str r0, [r5, #4]
	mov r0, sl
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009F7C
	str r0, [r5]
	ldr r0, _08009F80
	str r0, [r5, #4]
	str r6, [r5, #8]
	b _08009FCE
	.align 2, 0
_08009F58: .4byte gUnknown_0818C040
_08009F5C: .4byte 0x06013780
_08009F60: .4byte 0x80000040
_08009F64: .4byte gUnknown_081940E0
_08009F68: .4byte 0x05000260
_08009F6C: .4byte gUnknown_0824696C
_08009F70: .4byte 0x050002C0
_08009F74: .4byte gUnknown_0818F8C0
_08009F78: .4byte 0x06013000
_08009F7C: .4byte gUnknown_08194280
_08009F80: .4byte 0x050002A0
_08009F84:
	cmp r0, #6
	bne _08009FD0
	mov r0, r8
	str r0, [r5]
	str r4, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	str r3, [r5]
	str r2, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A120
	str r0, [r5]
	ldr r0, _0800A124
	str r0, [r5, #4]
	ldr r0, _0800A128
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A12C
	str r0, [r5]
	ldr r0, _0800A130
	str r0, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A134
	str r0, [r5]
	movs r0, #0xd0
	lsls r0, r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A138
	str r0, [r5]
	movs r0, #0x88
	lsls r0, r0, #2
	str r0, [r5, #4]
	str r1, [r5, #8]
_08009FCE:
	ldr r0, [r5, #8]
_08009FD0:
	ldr r4, _0800A13C
	ldr r5, _0800A140
	str r5, [r4]
	ldr r0, _0800A144
	str r0, [r4, #4]
	ldr r0, _0800A148
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_8005AB8
	ldr r1, _0800A14C
	adds r0, r5, r1
	str r0, [r4]
	ldr r6, _0800A150
	str r6, [r4, #4]
	ldr r0, _0800A154
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _0800A158
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800A15C
	str r0, [r4, #4]
	ldr r0, _0800A160
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _0800A164
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800A168
	str r0, [r4, #4]
	ldr r0, _0800A16C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r1, #0xb0
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800A170
	str r0, [r4, #4]
	ldr r0, _0800A174
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r2, #0xfc
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800A178
	str r0, [r4, #4]
	ldr r0, _0800A17C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r3, #0x58
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800A180
	str r0, [r4, #4]
	ldr r0, _0800A184
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r1, #0x18
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800A188
	str r0, [r4, #4]
	ldr r0, _0800A18C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _0800A190
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800A194
	str r0, [r4, #4]
	ldr r0, _0800A198
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_80074E8
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r2, [r0]
	movs r0, #0x7f
	ands r0, r2
	movs r1, #0x80
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_80028B4
	movs r3, #0xb0
	lsls r3, r3, #4
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800A19C
	str r0, [r4, #4]
	ldr r1, _0800A1A0
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800A1A4
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r7, #0x28]
	bl sub_8001830
	ldrh r0, [r7, #0x28]
	bl sub_80020B0
	movs r0, #4
	ldrh r3, [r6]
	ands r0, r3
	cmp r0, #0
	beq _0800A0C4
	ldr r0, _0800A1A8
	str r0, [r4]
	ldr r0, _0800A1AC
	str r0, [r4, #4]
	ldr r0, _0800A1B0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0800A0C4:
	movs r0, #0x80
	lsls r0, r0, #3
	ldrh r6, [r6]
	ands r0, r6
	cmp r0, #0
	beq _0800A0DE
	ldr r0, _0800A1B4
	str r0, [r4]
	ldr r0, _0800A1AC
	str r0, [r4, #4]
	ldr r0, _0800A1B0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0800A0DE:
	ldr r1, _0800A1B8
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800A1BC
	str r0, [r4, #4]
	ldr r0, _0800A128
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800A1C0
	movs r0, #0
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	strh r0, [r1]
	movs r0, #0x30
	movs r1, #0xf
	bl sub_8000738
	adds r0, r7, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #3
	bls _0800A112
	adds r0, r7, #0
	bl sub_800F0E0
_0800A112:
	ldrb r1, [r7, #0x1d]
	movs r0, #0x14
	bl sub_800F540
	movs r0, #1
	movs r1, #1
	b _0800A236
	.align 2, 0
_0800A120: .4byte gUnknown_081900C0
_0800A124: .4byte 0x06013000
_0800A128: .4byte 0x80000200
_0800A12C: .4byte gUnknown_081942A0
_0800A130: .4byte 0x050002A0
_0800A134: .4byte gUnknown_0818BD40
_0800A138: .4byte gUnknown_0818BEC0
_0800A13C: .4byte 0x040000D4
_0800A140: .4byte gSaveDataBuffer+0xB50
_0800A144: .4byte gUnknown_03003C00
_0800A148: .4byte 0x8000017A
_0800A14C: .4byte 0xFFFFF6D8
_0800A150: .4byte gUnknown_03003A70
_0800A154: .4byte 0x80000020
_0800A158: .4byte 0xFFFFF684
_0800A15C: .4byte gUnknown_030038D0
_0800A160: .4byte 0x8000002A
_0800A164: .4byte 0xFFFFF718
_0800A168: .4byte gUnknown_03002840
_0800A16C: .4byte 0x8000002C
_0800A170: .4byte gUnknown_03003A50
_0800A174: .4byte 0x8000000C
_0800A178: .4byte gUnknown_03003AB0
_0800A17C: .4byte 0x80000004
_0800A180: .4byte gUnknown_03004000
_0800A184: .4byte 0x80000008
_0800A188: .4byte gUnknown_03003AC0
_0800A18C: .4byte 0x800000A0
_0800A190: .4byte 0xFFFFFB60
_0800A194: .4byte gUnknown_03003930
_0800A198: .4byte 0x80000050
_0800A19C: .4byte gUnknown_03002000
_0800A1A0: .4byte 0x80000400
_0800A1A4: .4byte gUnknown_03002F20
_0800A1A8: .4byte gUnknown_081DA22C
_0800A1AC: .4byte 0x06011F80
_0800A1B0: .4byte 0x80000040
_0800A1B4: .4byte gUnknown_08190AC0
_0800A1B8: .4byte 0xFFFFFC00
_0800A1BC: .4byte gOamObjects
_0800A1C0: .4byte gUnknown_03003720
_0800A1C4:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800A1D0
	b _0800A322
_0800A1D0:
	ldr r0, _0800A1E0
	adds r1, r7, #0
	adds r1, #0x8d
	ldrb r1, [r1]
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [r7, #4]
	b _0800A322
	.align 2, 0
_0800A1E0: .4byte gUnknown_08014D70
_0800A1E4:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800A1F0
	b _0800A322
_0800A1F0:
	movs r0, #1
	str r0, [r7, #4]
	b _0800A322
_0800A1F6:
	ldrb r0, [r7, #6]
	adds r0, #1
	strb r0, [r7, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2f
	bls _0800A244
	ldrb r0, [r7, #0x13]
	adds r1, r0, #0
	cmp r1, #0
	bne _0800A210
	movs r0, #4
	b _0800A212
_0800A210:
	movs r0, #5
_0800A212:
	strb r0, [r7, #5]
	movs r0, #0
	strb r0, [r7, #6]
	ldr r2, _0800A240
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0800A222
	adds r2, #0x10
_0800A222:
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800A228:
	strh r0, [r2]
	adds r2, #8
	adds r6, #1
	cmp r6, #1
	bls _0800A228
	movs r0, #2
	movs r1, #0
_0800A236:
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	b _0800A322
	.align 2, 0
_0800A240: .4byte gUnknown_03002C50
_0800A244:
	movs r0, #1
	ldrb r2, [r7, #0x17]
	ands r0, r2
	cmp r0, #0
	beq _0800A2C4
	ldr r2, _0800A288
	movs r6, #0
_0800A252:
	movs r5, #0
	adds r3, r6, #1
	mov r8, r3
	lsls r0, r6, #5
	lsls r1, r6, #6
	ldr r4, _0800A28C
	adds r4, r4, r0
	mov sl, r4
	ldr r3, _0800A290
	adds r3, r3, r0
	mov sb, r3
	movs r4, #0
	str r4, [sp, #4]
	ldr r0, _0800A294
	adds r3, r1, r0
	ldr r4, _0800A298
	adds r4, r4, r1
	mov ip, r4
	ldr r1, _0800A29C
_0800A278:
	strh r1, [r2, #2]
	ldrb r0, [r7, #0x13]
	cmp r0, r6
	bne _0800A2A0
	mov r0, sl
	strh r0, [r2]
	strh r3, [r2, #4]
	b _0800A2AA
	.align 2, 0
_0800A288: .4byte gUnknown_03002C50
_0800A28C: .4byte 0x00004062
_0800A290: .4byte 0x00004462
_0800A294: .4byte 0x000091A0
_0800A298: .4byte 0x0000A1A0
_0800A29C: .4byte 0x0000C038
_0800A2A0:
	mov r4, sb
	strh r4, [r2]
	ldr r0, [sp, #4]
	add r0, ip
	strh r0, [r2, #4]
_0800A2AA:
	adds r2, #8
	ldr r0, [sp, #4]
	adds r0, #0x20
	str r0, [sp, #4]
	adds r3, #0x20
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _0800A278
	mov r6, r8
	cmp r6, #1
	bls _0800A252
	b _0800A2E0
_0800A2C4:
	ldr r2, _0800A334
	movs r5, #0
	ldr r3, _0800A338
	ldr r1, _0800A33C
	ldr r0, _0800A340
_0800A2CE:
	strh r3, [r2]
	strh r1, [r2, #2]
	strh r0, [r2, #4]
	adds r2, #8
	adds r1, #0x40
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800A2CE
_0800A2E0:
	ldrb r1, [r7, #5]
	cmp r1, #7
	bne _0800A322
	adds r3, r7, #0
	adds r3, #0x7b
	ldrb r2, [r3]
	cmp r2, #0xf
	bhi _0800A322
	adds r2, r7, #0
	adds r2, #0x78
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800A312
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
_0800A310:
	strb r0, [r3]
_0800A312:
	ldr r2, _0800A344
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_0800A322:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A334: .4byte gUnknown_03002C50
_0800A338: .4byte 0x00004062
_0800A33C: .4byte 0x0000C038
_0800A340: .4byte 0x000091E0
_0800A344: .4byte gUnknown_030038D0

	THUMB_FUNC_START sub_800A348
sub_800A348: @ 0x0800A348
	ldr r2, _0800A360
	adds r0, r2, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #0x10
	bhi _0800A3C4
	lsls r0, r0, #2
	ldr r1, _0800A364
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A360: .4byte gUnknown_03003730
_0800A364: .4byte _0800A368
_0800A368: @ jump table
	.4byte _0800A3C4 @ case 0
	.4byte _0800A3AC @ case 1
	.4byte _0800A3AC @ case 2
	.4byte _0800A3AC @ case 3
	.4byte _0800A3AC @ case 4
	.4byte _0800A3B4 @ case 5
	.4byte _0800A3B4 @ case 6
	.4byte _0800A3B4 @ case 7
	.4byte _0800A3B4 @ case 8
	.4byte _0800A3B4 @ case 9
	.4byte _0800A3B4 @ case 10
	.4byte _0800A3BC @ case 11
	.4byte _0800A3BC @ case 12
	.4byte _0800A3BC @ case 13
	.4byte _0800A3BC @ case 14
	.4byte _0800A3BC @ case 15
	.4byte _0800A3BC @ case 16
_0800A3AC:
	adds r0, r2, #0
	adds r0, #0x8e
	movs r1, #2
	b _0800A3CA
_0800A3B4:
	adds r0, r2, #0
	adds r0, #0x8e
	movs r1, #4
	b _0800A3CA
_0800A3BC:
	adds r0, r2, #0
	adds r0, #0x8e
	movs r1, #8
	b _0800A3CA
_0800A3C4:
	adds r0, r2, #0
	adds r0, #0x8e
	movs r1, #1
_0800A3CA:
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800A3D4
sub_800A3D4: @ 0x0800A3D4
	push {lr}
	ldr r2, _0800A3E8
	ldrb r3, [r0, #5]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800A3E8: .4byte gUnknown_0811DF48

	THUMB_FUNC_START sub_800A3EC
sub_800A3EC: @ 0x0800A3EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r7, _0800A540
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0800A544
	str r0, [r4]
	ldr r0, _0800A548
	str r0, [r4, #4]
	ldr r0, _0800A54C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sp
	strh r5, [r0]
	str r0, [r4]
	ldr r0, _0800A550
	str r0, [r4, #4]
	ldr r0, _0800A554
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_800060C
	bl sub_8000930
	bl sub_800F804
	bl sub_8005408
	adds r5, r7, #0
	adds r5, #0x4a
	movs r0, #0
	mov r8, r0
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r5]
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r7]
	ldr r0, _0800A558
	strh r0, [r7, #2]
	adds r0, #0xff
	strh r0, [r7, #4]
	ldr r0, _0800A55C
	strh r0, [r7, #6]
	ldr r0, _0800A560
	str r0, [r4]
	ldr r0, _0800A564
	str r0, [r4, #4]
	ldr r0, _0800A568
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A56C
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800A570
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A574
	str r0, [r4]
	ldr r0, _0800A578
	str r0, [r4, #4]
	ldr r1, _0800A57C
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A580
	str r0, [r4]
	ldr r0, _0800A584
	str r0, [r4, #4]
	ldr r0, _0800A588
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A58C
	str r0, [r4]
	ldr r0, _0800A590
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #1
	bl sub_8001830
	movs r0, #1
	bl sub_8001A9C
	movs r0, #0xff
	bl sub_8001A9C
	ldr r0, _0800A594
	strh r0, [r7, #0xe]
	ldr r0, _0800A598
	ldrh r1, [r5]
	ands r0, r1
	strh r0, [r5]
	ldr r1, _0800A59C
	adds r0, r6, #0
	bl sub_800D77C
	mov r0, r8
	str r0, [sp, #4]
	add r0, sp, #4
	str r0, [r4]
	adds r0, r6, #0
	adds r0, #0x94
	str r0, [r4, #4]
	ldr r0, _0800A5A0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r0, r6, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #1
	bls _0800A4E0
	movs r0, #0
	movs r1, #0x41
	movs r2, #1
	bl sub_8002B94
_0800A4E0:
	adds r0, r6, #0
	adds r0, #0xb4
	mov r1, r8
	str r1, [r0]
	movs r0, #0xf
	strb r0, [r6, #0x16]
	movs r0, #1
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
	ldr r1, _0800A5A4
	ldr r0, _0800A5A8
	strh r0, [r1, #0x1e]
	movs r0, #0x80
	bl sub_800549C
	adds r1, r6, #0
	adds r1, #0x8f
	movs r0, #5
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xff
	strb r0, [r1]
	bl sub_800A348
	movs r0, #0x30
	movs r1, #0xf
	bl sub_8000738
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	adds r1, r7, #0
	adds r1, #0x4e
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0800A5AC
	adds r0, #0xf3
	str r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A540: .4byte gUnknown_030038D0
_0800A544: .4byte 0x040000D4
_0800A548: .4byte gUnknown_03003AB0
_0800A54C: .4byte 0x81000004
_0800A550: .4byte gUnknown_03003A50
_0800A554: .4byte 0x8100000C
_0800A558: .4byte 0x00003D01
_0800A55C: .4byte 0x00003FC7
_0800A560: .4byte gUnknown_08185D20
_0800A564: .4byte 0x06003800
_0800A568: .4byte 0x80000400
_0800A56C: .4byte gUnknown_08186540
_0800A570: .4byte 0x80000800
_0800A574: .4byte gUnknown_081942C0
_0800A578: .4byte 0x05000300
_0800A57C: .4byte 0x80000010
_0800A580: .4byte gUnknown_0818C040
_0800A584: .4byte 0x06013780
_0800A588: .4byte 0x80000040
_0800A58C: .4byte gUnknown_081940E0
_0800A590: .4byte 0x05000260
_0800A594: .4byte 0x0000FFAF
_0800A598: .4byte 0x0000FDFF
_0800A59C: .4byte gUnknown_03002840
_0800A5A0: .4byte 0x85000008
_0800A5A4: .4byte gUnknown_03003A70
_0800A5A8: .4byte 0x0000FFFF
_0800A5AC: .4byte gUnknown_03003730+0x4

	THUMB_FUNC_START sub_800A5B0
sub_800A5B0: @ 0x0800A5B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _0800A624
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800A69C
	ldr r1, _0800A628
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r2, r1, #0
	adds r6, r5, #0
	adds r6, #0xb4
	cmp r0, #0
	beq _0800A64C
	ldr r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800A64C
	ldr r1, _0800A62C
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800A64C
	bl sub_800F454
	ldr r1, _0800A630
	ldr r0, _0800A634
	str r0, [r1]
	ldr r2, _0800A638
	str r2, [r1, #4]
	ldr r0, _0800A63C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800A640
	str r4, [r1]
	ldr r0, _0800A644
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800A648
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, [r6]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	movs r0, #0xa
	b _0800A67C
	.align 2, 0
_0800A624: .4byte gUnknown_03003AB0
_0800A628: .4byte gUnknown_03003720
_0800A62C: .4byte gUnknown_03003A70
_0800A630: .4byte 0x040000D4
_0800A634: .4byte gOamObjects
_0800A638: .4byte gSaveDataBuffer+0x750
_0800A63C: .4byte 0x80000200
_0800A640: .4byte gUnknown_03003730
_0800A644: .4byte 0xFFFFF8E4
_0800A648: .4byte 0x800000D0
_0800A64C:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800A67E
	ldr r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800A67E
	ldr r1, _0800A6A4
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800A67E
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, _0800A6A8
	ldr r0, [r0]
	str r0, [r5, #8]
	movs r0, #7
_0800A67C:
	str r0, [r5, #4]
_0800A67E:
	ldr r0, [r6]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0800A69C
	ldrh r0, [r7, #4]
	cmp r0, #0xa0
	bls _0800A694
	subs r0, #4
	strh r0, [r7, #4]
_0800A694:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_800B638
_0800A69C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A6A4: .4byte gUnknown_03003A70
_0800A6A8: .4byte gUnknown_03003730+0x4

	THUMB_FUNC_START sub_800A6AC
sub_800A6AC: @ 0x0800A6AC
	adds r2, r0, #0
	ldr r1, _0800A6E0
	ldr r0, _0800A6E4
	str r0, [r1]
	ldr r0, _0800A6E8
	str r0, [r1, #4]
	ldr r0, _0800A6EC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800A6F0
	str r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800A6F8
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800A72A
	ldr r0, _0800A6F4
	b _0800A728
	.align 2, 0
_0800A6E0: .4byte 0x040000D4
_0800A6E4: .4byte gUnknown_03003730
_0800A6E8: .4byte gSaveDataBuffer+0x34
_0800A6EC: .4byte 0x800000D0
_0800A6F0: .4byte 0x0100000A
_0800A6F4: .4byte 0x0100000B
_0800A6F8:
	cmp r0, #5
	bne _0800A714
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800A72A
	ldr r0, _0800A710
	b _0800A728
	.align 2, 0
_0800A710: .4byte gSaveDataBuffer+0xB
_0800A714:
	cmp r0, #0xb
	bne _0800A72A
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #8
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800A72A
	ldr r0, _0800A72C
_0800A728:
	str r0, [r2, #4]
_0800A72A:
	bx lr
	.align 2, 0
_0800A72C: .4byte gUnknown_0300000B

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
	bl sub_8010204
	movs r0, #0x14
	bl sub_8010204
	movs r0, #0x53
	bl sub_800F3E0
	ldr r0, _0800A77C
	movs r1, #0
	strb r1, [r0, #6]
	b _0800A808
	.align 2, 0
_0800A77C: .4byte gUnknown_03003AB0
_0800A780:
	movs r0, #0x13
	bl sub_800F8BC
	adds r4, r0, #0
	movs r0, #0x14
	bl sub_800F8BC
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
	bl sub_80007D8
	adds r0, r4, #0
	bl sub_8010960
	adds r0, r5, #0
	bl sub_8010960
	movs r0, #0x11
	bl sub_8010204
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
	bl sub_800F8BC
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	blt _0800A870
	adds r0, r1, #0
	bl sub_8010960
	movs r0, #0x13
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_8010244
	movs r0, #0x14
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_8010244
_0800A808:
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	b _0800A870
_0800A810:
	movs r0, #0x13
	bl sub_800F8BC
	adds r4, r0, #0
	movs r0, #0x14
	bl sub_800F8BC
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
	bl sub_8010960
	adds r0, r5, #0
	bl sub_8010960
	movs r0, #1
	strb r0, [r6, #5]
_0800A870:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A878: .4byte gUnknown_03003AB0

	THUMB_FUNC_START sub_800A87C
sub_800A87C: @ 0x0800A87C
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
_0800A8DC: .4byte gUnknown_03003AB0

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
	bl sub_800F454
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
	bl sub_800F3E0
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
_0800A954: .4byte gUnknown_03003720
_0800A958: .4byte gUnknown_03003A70
_0800A95C: .4byte 0x040000D4
_0800A960: .4byte gOamObjects
_0800A964: .4byte gSaveDataBuffer+0x750
_0800A968: .4byte 0x80000200
_0800A96C: .4byte gUnknown_03003730
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
	bl sub_800F3E0
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
_0800A9E0: .4byte gUnknown_03003A70
_0800A9E4: .4byte gUnknown_03003730+0x4
_0800A9E8: .4byte gUnknown_03003AB0
_0800A9EC: .4byte gUnknown_03002CA8
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
_0800AA0C: .4byte gUnknown_03002CA8

	THUMB_FUNC_START sub_800AA10
sub_800AA10: @ 0x0800AA10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #6]
	cmp r0, #4
	bls _0800AA1C
	b _0800AB3A
_0800AA1C:
	lsls r0, r0, #2
	ldr r1, _0800AA28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AA28: .4byte _0800AA2C
_0800AA2C: @ jump table
	.4byte _0800AA40 @ case 0
	.4byte _0800AA58 @ case 1
	.4byte _0800AAB0 @ case 2
	.4byte _0800AAC0 @ case 3
	.4byte _0800AAEE @ case 4
_0800AA40:
	movs r0, #0x15
	bl sub_8010204
	movs r0, #0x16
	bl sub_8010204
	movs r0, #0x53
	bl sub_800F3E0
	ldrb r0, [r6, #6]
	adds r0, #1
	b _0800AB38
_0800AA58:
	movs r0, #0x15
	bl sub_800F8BC
	adds r4, r0, #0
	movs r0, #0x16
	bl sub_800F8BC
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
	ble _0800AB3A
	movs r0, #3
	movs r1, #1
	movs r2, #8
	movs r3, #0x1f
	bl sub_80007D8
	adds r0, r4, #0
	bl sub_8010960
	adds r0, r5, #0
	bl sub_8010960
	movs r0, #0x12
	bl sub_8010204
	ldrb r0, [r6, #6]
	adds r0, #1
	b _0800AB38
_0800AAB0:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800AB3A
	ldrb r0, [r6, #6]
	adds r0, #1
	b _0800AB38
_0800AAC0:
	movs r0, #0x12
	bl sub_800F8BC
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	blt _0800AB3A
	adds r0, r1, #0
	bl sub_8010960
	movs r0, #0x15
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_8010244
	movs r0, #0x16
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_8010244
	ldrb r0, [r6, #6]
	adds r0, #1
	b _0800AB38
_0800AAEE:
	movs r0, #0x15
	bl sub_800F8BC
	adds r4, r0, #0
	movs r0, #0x16
	bl sub_800F8BC
	adds r5, r0, #0
	ldrh r0, [r4, #0x12]
	subs r0, #7
	strh r0, [r4, #0x12]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0x12]
	adds r0, #7
	strh r0, [r5, #0x12]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	movs r0, #0x3c
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0800AB3A
	adds r0, r4, #0
	bl sub_8010960
	adds r0, r5, #0
	bl sub_8010960
	movs r0, #1
	strb r0, [r6, #5]
	movs r0, #0
_0800AB38:
	strb r0, [r6, #6]
_0800AB3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800AB40
sub_800AB40: @ 0x0800AB40
	push {lr}
	ldr r2, _0800AB54
	ldrb r3, [r0, #5]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800AB54: .4byte gUnknown_0811DF64

	THUMB_FUNC_START sub_800AB58
sub_800AB58: @ 0x0800AB58
	push {r4, lr}
	ldr r1, _0800ABD8
	ldr r2, _0800ABDC
	str r2, [r1]
	ldr r2, _0800ABE0
	str r2, [r1, #4]
	ldr r3, _0800ABE4
	str r3, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800ABE8
	str r2, [r1]
	ldr r2, _0800ABEC
	str r2, [r1, #4]
	ldr r4, _0800ABF0
	str r4, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800ABF4
	str r2, [r1]
	ldr r2, _0800ABF8
	str r2, [r1, #4]
	ldr r2, _0800ABFC
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800AC00
	str r2, [r1]
	ldr r2, _0800AC04
	str r2, [r1, #4]
	str r4, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800AC08
	str r2, [r1]
	movs r2, #0xd0
	lsls r2, r2, #1
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800AC0C
	str r2, [r1]
	movs r2, #0x88
	lsls r2, r2, #2
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r1, [r1, #8]
	ldr r1, _0800AC10
	ldrh r1, [r1, #0x1e]
	movs r3, #0
	strh r1, [r0, #0x18]
	ldr r1, _0800AC14
	strb r3, [r1, #9]
	ldrb r2, [r1, #8]
	adds r2, #1
	strb r2, [r1, #8]
	ldr r2, _0800AC18
	movs r1, #0xf0
	strh r1, [r2, #4]
	movs r1, #0xe0
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	strb r3, [r2]
	movs r1, #3
	strb r1, [r0, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ABD8: .4byte 0x040000D4
_0800ABDC: .4byte gUnknown_0818C040
_0800ABE0: .4byte 0x06013780
_0800ABE4: .4byte 0x80000040
_0800ABE8: .4byte gUnknown_081940E0
_0800ABEC: .4byte 0x05000260
_0800ABF0: .4byte 0x80000010
_0800ABF4: .4byte gUnknown_081900C0
_0800ABF8: .4byte 0x06013000
_0800ABFC: .4byte 0x80000200
_0800AC00: .4byte gUnknown_081942A0
_0800AC04: .4byte 0x050002A0
_0800AC08: .4byte gUnknown_0818BD40
_0800AC0C: .4byte gUnknown_0818BEC0
_0800AC10: .4byte gUnknown_03003A70
_0800AC14: .4byte gUnknown_03002840
_0800AC18: .4byte gUnknown_03003AB0

	THUMB_FUNC_START sub_800AC1C
sub_800AC1C: @ 0x0800AC1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800AC2A
	b _0800AE4C
_0800AC2A:
	ldr r0, _0800AC94
	ldrh r1, [r0, #2]
	movs r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800ACB8
	adds r6, r5, #0
	adds r6, #0xb4
	ldr r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800AC48
	b _0800ADB4
_0800AC48:
	ldr r1, _0800AC98
	movs r0, #0xd
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800AC56
	b _0800ADB4
_0800AC56:
	bl sub_800F454
	ldr r1, _0800AC9C
	ldr r0, _0800ACA0
	str r0, [r1]
	ldr r2, _0800ACA4
	str r2, [r1, #4]
	ldr r0, _0800ACA8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800ACAC
	str r4, [r1]
	ldr r0, _0800ACB0
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800ACB4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, [r6]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	movs r0, #0xa
	b _0800ADB2
	.align 2, 0
_0800AC94: .4byte gUnknown_03003720
_0800AC98: .4byte gUnknown_03003A70
_0800AC9C: .4byte 0x040000D4
_0800ACA0: .4byte gOamObjects
_0800ACA4: .4byte gSaveDataBuffer+0x750
_0800ACA8: .4byte 0x80000200
_0800ACAC: .4byte gUnknown_03003730
_0800ACB0: .4byte 0xFFFFF8E4
_0800ACB4: .4byte 0x800000D0
_0800ACB8:
	ldr r2, _0800ACD0
	ldrh r4, [r2]
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _0800AD84
	movs r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0800ACD4
	ldrh r4, [r2, #0x20]
	b _0800ACE8
	.align 2, 0
_0800ACD0: .4byte gUnknown_03003A70
_0800ACD4:
	movs r0, #0x22
	ands r0, r1
	cmp r0, #0
	beq _0800ACFA
	ldrh r0, [r2, #0x1e]
	subs r0, #1
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	beq _0800ADB4
	adds r4, r0, #0
_0800ACE8:
	movs r0, #0x2b
	bl sub_800F3E0
	adds r0, r4, #0
	bl sub_800549C
	bl sub_8005470
	b _0800ADB4
_0800ACFA:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800AD60
	ldrh r0, [r2, #0x2c]
	cmp r0, #0
	beq _0800ADB4
	movs r0, #1
	bl sub_8010204
	movs r0, #0x47
	bl sub_800F3E0
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl sub_80007D8
	ldr r1, _0800AD54
	movs r0, #0x40
	strb r0, [r1, #1]
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r1, _0800AD58
	adds r1, #0x4a
	ldr r0, _0800AD5C
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	strb r4, [r5, #0x14]
	strb r4, [r5, #0x15]
	movs r0, #0
	movs r1, #0
	bl sub_80028B4
	movs r0, #4
	strb r0, [r5, #5]
	strb r4, [r5, #6]
	b _0800AE4C
	.align 2, 0
_0800AD54: .4byte gUnknown_03003AB0
_0800AD58: .4byte gUnknown_030038D0
_0800AD5C: .4byte 0x0000FDFF
_0800AD60:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800ADB4
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, _0800AD7C
	ldr r0, [r0]
	str r0, [r5, #8]
	ldr r0, _0800AD80
	b _0800ADB2
	.align 2, 0
_0800AD7C: .4byte gUnknown_03003730+0x4
_0800AD80: .4byte 0x01000007
_0800AD84:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800ADB4
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800ADB4
	movs r0, #5
	ands r0, r4
	cmp r0, #0
	beq _0800ADB4
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, _0800AE04
	ldr r0, [r0]
	str r0, [r5, #8]
	movs r0, #7
_0800ADB2:
	str r0, [r5, #4]
_0800ADB4:
	ldr r4, _0800AE08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_800B51C
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0800ADE2
	ldrh r0, [r4, #4]
	cmp r0, #0xa0
	bls _0800ADDA
	subs r0, #4
	strh r0, [r4, #4]
_0800ADDA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_800B638
_0800ADE2:
	ldr r0, _0800AE0C
	bl sub_800E8A0
	ldr r1, _0800AE10
	ldr r2, _0800AE14
	movs r0, #8
	ldrh r3, [r2]
	ands r0, r3
	cmp r0, #0
	beq _0800AE44
	ldrh r0, [r2, #0x1e]
	subs r0, #1
	ldrh r5, [r5, #0x18]
	cmp r0, r5
	beq _0800AE18
	movs r0, #0x80
	b _0800AE1C
	.align 2, 0
_0800AE04: .4byte gUnknown_03003730+0x4
_0800AE08: .4byte gUnknown_03003AB0
_0800AE0C: .4byte gUnknown_03002840
_0800AE10: .4byte gOamObjects
_0800AE14: .4byte gUnknown_03003A70
_0800AE18:
	movs r0, #0x80
	lsls r0, r0, #2
_0800AE1C:
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #2]
	ldr r0, _0800AE38
	strh r0, [r1, #4]
	adds r1, #8
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, _0800AE3C
	strh r0, [r1, #2]
	ldr r0, _0800AE40
	strh r0, [r1, #4]
	b _0800AE4C
	.align 2, 0
_0800AE38: .4byte 0x000031A0
_0800AE3C: .4byte 0x000040E0
_0800AE40: .4byte 0x000031A4
_0800AE44:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_0800AE4C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START nullsub_32
nullsub_32: @ 0x0800AE54
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800AE58
sub_800AE58: @ 0x0800AE58
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #6]
	cmp r1, #0
	beq _0800AE68
	cmp r1, #1
	beq _0800AEA6
	b _0800AF04
_0800AE68:
	ldr r1, _0800AE98
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0800AEA0
	movs r0, #0
	movs r1, #1
	movs r2, #2
	movs r3, #0
	bl sub_8011108
	ldr r0, _0800AE9C
	movs r1, #0x1e
	movs r2, #0x1f
	movs r3, #1
	bl sub_800077C
	movs r0, #0
	bl sub_800244C
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	b _0800AF04
	.align 2, 0
_0800AE98: .4byte gUnknown_03003AB0
_0800AE9C: .4byte gUnknown_08427D88
_0800AEA0:
	subs r0, #1
	strb r0, [r1, #1]
	b _0800AF04
_0800AEA6:
	ldr r0, _0800AED0
	ldrh r2, [r0, #4]
	cmp r2, #0
	bne _0800AF04
	ldr r3, _0800AED4
	adds r0, r3, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AEE0
	ldr r0, _0800AED8
	strb r1, [r0, #0x14]
	strb r1, [r0, #0x15]
	ldr r0, _0800AEDC
	movs r1, #0
	strh r2, [r0, #0xe]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	b _0800AEE6
	.align 2, 0
_0800AED0: .4byte gUnknown_03004000
_0800AED4: .4byte gUnknown_03003A70
_0800AED8: .4byte gUnknown_03003730
_0800AEDC: .4byte gUnknown_030038D0
_0800AEE0:
	movs r0, #1
	bl sub_800244C
_0800AEE6:
	ldr r0, _0800AF20
	ldrh r0, [r0, #0x2c]
	bl sub_800549C
	ldr r1, _0800AF24
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r2, [r1]
	movs r0, #1
	strb r0, [r4, #5]
	strb r2, [r4, #6]
_0800AF04:
	ldr r1, _0800AF24
	adds r0, r4, #0
	movs r2, #0
	bl sub_800B51C
	ldr r1, _0800AF28
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF20: .4byte gUnknown_03003A70
_0800AF24: .4byte gUnknown_03003AB0
_0800AF28: .4byte gOamObjects

	THUMB_FUNC_START sub_800AF2C
sub_800AF2C: @ 0x0800AF2C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #6]
	cmp r0, #1
	beq _0800AF6E
	cmp r0, #1
	bgt _0800AF40
	cmp r0, #0
	beq _0800AF4A
	b _0800B024
_0800AF40:
	cmp r0, #2
	beq _0800AFA4
	cmp r0, #3
	beq _0800AFC4
	b _0800B024
_0800AF4A:
	ldr r4, _0800AF64
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0800AF68
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #0x40
	strb r0, [r4, #1]
	b _0800AFB2
	.align 2, 0
_0800AF64: .4byte gUnknown_03003AB0
_0800AF68:
	subs r0, #1
	strb r0, [r4, #1]
	b _0800B024
_0800AF6E:
	ldr r1, _0800AF98
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0800B020
	ldr r3, _0800AF9C
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_8011108
	ldr r0, _0800AFA0
	movs r1, #0x1e
	movs r2, #0x1f
	movs r3, #1
	bl sub_800077C
	movs r0, #0
	bl sub_800244C
	b _0800AFB2
	.align 2, 0
_0800AF98: .4byte gUnknown_03003AB0
_0800AF9C: .4byte 0x000018D0
_0800AFA0: .4byte gUnknown_08427D88
_0800AFA4:
	ldr r0, _0800AFBC
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _0800B024
	ldr r0, _0800AFC0
	movs r1, #0x14
	strb r1, [r0, #1]
_0800AFB2:
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	b _0800B024
	.align 2, 0
_0800AFBC: .4byte gUnknown_03004000
_0800AFC0: .4byte gUnknown_03003AB0
_0800AFC4:
	ldr r1, _0800AFFC
	ldrb r0, [r1, #1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0800B020
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r4, [r1]
	ldr r3, _0800B000
	adds r0, r3, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B00C
	ldr r1, _0800B004
	movs r0, #1
	strb r0, [r1, #0x14]
	strb r0, [r1, #0x15]
	ldr r0, _0800B008
	strh r2, [r0, #0xe]
	adds r0, r3, #0
	adds r0, #0x38
	strb r4, [r0]
	b _0800B012
	.align 2, 0
_0800AFFC: .4byte gUnknown_03003AB0
_0800B000: .4byte gUnknown_03003A70
_0800B004: .4byte gUnknown_03003730
_0800B008: .4byte gUnknown_030038D0
_0800B00C:
	movs r0, #1
	bl sub_800244C
_0800B012:
	ldr r1, _0800B01C
	ldr r0, [r5, #8]
	str r0, [r1]
	b _0800B024
	.align 2, 0
_0800B01C: .4byte gUnknown_03003730+0x4
_0800B020:
	subs r0, #1
	strb r0, [r1, #1]
_0800B024:
	ldr r1, _0800B034
	adds r0, r5, #0
	movs r2, #0
	bl sub_800B51C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B034: .4byte gUnknown_03003AB0

	THUMB_FUNC_START sub_800B038
sub_800B038: @ 0x0800B038
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
_0800B05C: .4byte gUnknown_03002CA8
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
	bl sub_8002B28
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
	bl sub_8002AF8
	ldr r5, _0800B104
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x1e]
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #0x56
	bl sub_800F3E0
	b _0800B320
	.align 2, 0
_0800B0FC: .4byte gUnknown_03003730
_0800B100: .4byte gUnknown_08014AF0
_0800B104: .4byte gOamObjects
_0800B108:
	adds r0, r7, #0
	adds r0, #0x84
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8002B28
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
	bl sub_8002AF8
	ldr r5, _0800B160
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x1e]
	b _0800B50A
	.align 2, 0
_0800B15C: .4byte gUnknown_08014AF0
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
	bl sub_8002B28
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
	bl sub_8002AF8
	ldr r5, _0800B1F8
	strh r0, [r5, #0x26]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x3e]
	b _0800B4FC
	.align 2, 0
_0800B1E4: .4byte gUnknown_03003730
_0800B1E8: .4byte 0x000003EF
_0800B1EC: .4byte 0x0000C280
_0800B1F0: .4byte 0x000051E0
_0800B1F4: .4byte gUnknown_08014AF0
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
	bl sub_8002B28
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
	bl sub_8002AF8
	ldr r5, _0800B284
	strh r0, [r5, #0x26]
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x3e]
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #0x56
	bl sub_800F3E0
	mov r1, sb
	mov r0, sl
	strh r1, [r0]
	b _0800B320
	.align 2, 0
_0800B27C: .4byte gUnknown_03003730
_0800B280: .4byte gUnknown_08014AF0
_0800B284: .4byte gOamObjects
_0800B288:
	adds r0, r7, #0
	adds r0, #0x84
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8002B28
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
	bl sub_8002AF8
	ldr r5, _0800B2E0
	strh r0, [r5, #0x26]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x3e]
	b _0800B50A
	.align 2, 0
_0800B2DC: .4byte gUnknown_08014AF0
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
	bl sub_8002B28
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
	bl sub_8002AF8
	ldr r5, _0800B3C4
	strh r0, [r5, #6]
	movs r0, #0
	ldrsh r2, [r6, r0]
	mov sb, r2
	mov r0, sb
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r6, r6, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x1e]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x26]
	mov r0, sb
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8002AF8
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
_0800B3C0: .4byte gUnknown_08014AF0
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
	bl sub_8002B40
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r4, r6, #5
	adds r5, r5, r4
	movs r0, #0x7f
	ands r5, r0
	mov r0, sl
	strh r5, [r0]
	bl sub_8002B40
	movs r5, #0x1f
	ands r5, r0
	adds r5, r5, r4
	movs r0, #0xff
	ands r5, r0
	mov r1, sl
	strh r5, [r1, #2]
	bl sub_8002B40
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
	bl sub_800F3E0
	b _0800B4FC
	.align 2, 0
_0800B458: .4byte gUnknown_03002CE8
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
	bl sub_8002B40
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
	bl sub_8002B40
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800B4BC
	bl sub_8002B40
	adds r1, r4, #0
	ands r1, r0
	adds r5, r5, r1
	b _0800B4C6
	.align 2, 0
_0800B4B8: .4byte gUnknown_03002CE8
_0800B4BC:
	bl sub_8002B40
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
_0800B518: .4byte gUnknown_03003730+0x4

	THUMB_FUNC_START sub_800B51C
sub_800B51C: @ 0x0800B51C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r0, _0800B554
	ldrh r1, [r0, #0x2c]
	adds r5, r0, #0
	cmp r1, #0
	beq _0800B530
	cmp r2, #0
	bne _0800B55C
_0800B530:
	ldr r2, _0800B558
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	subs r2, #0xa8
	movs r1, #0
_0800B548:
	strh r0, [r2]
	adds r2, #8
	adds r1, #1
	cmp r1, #4
	bls _0800B548
	b _0800B618
	.align 2, 0
_0800B554: .4byte gUnknown_03003A70
_0800B558: .4byte gUnknown_03002CC8
_0800B55C:
	ldrb r0, [r3]
	cmp r0, #1
	bne _0800B588
	ldrb r0, [r3, #2]
	cmp r0, #0xe0
	bls _0800B56C
	subs r0, #2
	b _0800B56E
_0800B56C:
	movs r0, #0xe0
_0800B56E:
	strb r0, [r3, #2]
	ldrb r0, [r3, #3]
	cmp r0, #0xe0
	bls _0800B57A
	subs r0, #2
	b _0800B57C
_0800B57A:
	movs r0, #0xe0
_0800B57C:
	strb r0, [r3, #3]
	ldrh r0, [r3, #4]
	cmp r0, #0xef
	bhi _0800B5AA
	adds r0, #8
	b _0800B5A8
_0800B588:
	cmp r0, #0
	bne _0800B5AA
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0800B596
	adds r0, #2
	strb r0, [r3, #2]
_0800B596:
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _0800B5A0
	adds r0, #2
	strb r0, [r3, #3]
_0800B5A0:
	ldrh r0, [r3, #4]
	cmp r0, #0xa0
	bls _0800B5AA
	subs r0, #4
_0800B5A8:
	strh r0, [r3, #4]
_0800B5AA:
	ldr r2, _0800B5C4
	ldrh r5, [r5, #0x2c]
	cmp r5, #0x7f
	bhi _0800B5C8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	strh r0, [r2, #8]
	b _0800B610
	.align 2, 0
_0800B5C4: .4byte gUnknown_03002CC8
_0800B5C8:
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r0, #0
	ldrb r0, [r3, #2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r2, #2]
	movs r0, #0xab
	lsls r0, r0, #7
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r0, [r3, #2]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800B620
	strh r0, [r2, #2]
	ldr r0, _0800B624
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r0, [r3, #3]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800B628
	strh r0, [r2, #2]
	ldr r0, _0800B62C
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r0, [r3, #3]
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _0800B630
	strh r0, [r2, #2]
	ldr r0, _0800B634
	strh r0, [r2, #4]
_0800B610:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_800B638
_0800B618:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B620: .4byte 0x00008020
_0800B624: .4byte 0x00005588
_0800B628: .4byte 0x000080B0
_0800B62C: .4byte 0x00005590
_0800B630: .4byte 0x000080D0
_0800B634: .4byte 0x00005598

	THUMB_FUNC_START sub_800B638
sub_800B638: @ 0x0800B638
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	ldr r5, _0800B6E8
	movs r0, #0
	mov sb, r0
	movs r1, #0x8a
	adds r1, r1, r6
	mov sl, r1
	mov r8, r0
_0800B656:
	mov r2, sl
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _0800B754
	movs r0, #5
	ldrb r1, [r2]
	subs r0, r0, r1
	cmp sb, r0
	bne _0800B754
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_8002B28
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_8002AF8
	movs r7, #0
	ldr r2, _0800B6EC
	strh r0, [r2, #6]
	movs r0, #0
	adds r1, r4, #0
	bl sub_8002AF8
	ldr r1, _0800B6EC
	strh r0, [r1, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl sub_8002AF8
	ldr r2, _0800B6EC
	strh r0, [r2, #0x16]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_8002AF8
	ldr r1, _0800B6EC
	strh r0, [r1, #0x1e]
	adds r1, r6, #0
	adds r1, #0x89
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r6, #0
	adds r2, #0x88
	cmp r0, #2
	bls _0800B706
	strb r7, [r1]
	ldrb r0, [r2]
	cmp r0, #8
	bhi _0800B700
	lsls r0, r0, #7
	ldr r1, _0800B6F0
	adds r0, r0, r1
	ldr r1, _0800B6F4
	str r0, [r1]
	ldr r0, _0800B6F8
	str r0, [r1, #4]
	ldr r0, _0800B6FC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _0800B706
	.align 2, 0
_0800B6E8: .4byte gUnknown_03002C38
_0800B6EC: .4byte gOamObjects
_0800B6F0: .4byte gUnknown_0818C040
_0800B6F4: .4byte 0x040000D4
_0800B6F8: .4byte 0x06013700
_0800B6FC: .4byte 0x80000040
_0800B700:
	movs r0, #0xff
	mov r1, sl
	strb r0, [r1]
_0800B706:
	ldrb r0, [r2]
	cmp r0, #4
	bls _0800B712
	movs r0, #0xc2
	lsls r0, r0, #2
	b _0800B714
_0800B712:
	movs r0, #0x10
_0800B714:
	strh r0, [r5]
	ldrb r0, [r2]
	cmp r0, #8
	bhi _0800B744
	cmp r0, #4
	bls _0800B734
	ldr r1, [sp]
	ldrh r0, [r1, #4]
	add r0, r8
	ldr r2, _0800B730
	adds r0, r0, r2
	strh r0, [r5, #2]
	b _0800B74A
	.align 2, 0
_0800B730: .4byte 0x00003FF8
_0800B734:
	movs r0, #0x80
	lsls r0, r0, #7
	add r0, r8
	ldr r1, [sp]
	ldrh r1, [r1, #4]
	adds r0, r1, r0
	strh r0, [r5, #2]
	b _0800B74A
_0800B744:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
_0800B74A:
	ldr r0, _0800B750
	strh r0, [r5, #4]
	b _0800B786
	.align 2, 0
_0800B750: .4byte 0x000039B8
_0800B754:
	adds r0, r6, #0
	adds r0, #0x8f
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #5
	subs r0, r0, r1
	cmp sb, r0
	blo _0800B780
	movs r0, #0x10
	strh r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	add r0, r8
	ldr r2, [sp]
	ldrh r2, [r2, #4]
	adds r0, r2, r0
	strh r0, [r5, #2]
	ldr r0, _0800B77C
	strh r0, [r5, #4]
	b _0800B786
	.align 2, 0
_0800B77C: .4byte 0x000039BC
_0800B780:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
_0800B786:
	adds r5, #8
	movs r0, #0x10
	add r8, r0
	movs r1, #1
	add sb, r1
	mov r2, sb
	cmp r2, #4
	bhi _0800B798
	b _0800B656
_0800B798:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800B7A8
sub_800B7A8: @ 0x0800B7A8
	adds r2, r0, #0
	strb r1, [r2, #7]
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _0800B7B8
	movs r0, #0xf3
	ands r0, r1
	strb r0, [r2, #7]
_0800B7B8:
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800B7BC
sub_800B7BC: @ 0x0800B7BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #5
	beq _0800B7DA
	ldr r0, _0800B7FC
	adds r1, r5, #0
	adds r1, #0x8d
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
_0800B7DA:
	ldr r1, _0800B800
	ldrb r2, [r5, #5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, _0800B804
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r0, r4, #0
	bl sub_800D3C8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B7FC: .4byte gUnknown_0811DD64
_0800B800: .4byte gUnknown_0811DF7C
_0800B804: .4byte gUnknown_03003A50

	THUMB_FUNC_START sub_800B808
sub_800B808: @ 0x0800B808
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	ldr r7, _0800BA34
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0800BA38
	str r0, [r4]
	ldr r0, _0800BA3C
	str r0, [r4, #4]
	ldr r0, _0800BA40
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sp
	strh r5, [r0]
	str r0, [r4]
	ldr r0, _0800BA44
	str r0, [r4, #4]
	ldr r0, _0800BA48
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_800060C
	bl sub_8000930
	bl sub_800F804
	bl sub_8005408
	adds r1, r7, #0
	adds r1, #0x4a
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r7]
	ldr r0, _0800BA4C
	strh r0, [r7, #2]
	adds r0, #0xff
	strh r0, [r7, #4]
	ldr r0, _0800BA50
	strh r0, [r7, #6]
	ldr r0, _0800BA54
	str r0, [r4]
	ldr r0, _0800BA58
	str r0, [r4, #4]
	ldr r0, _0800BA5C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA60
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r1, _0800BA64
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA68
	str r0, [r4]
	ldr r0, _0800BA6C
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA70
	str r0, [r4]
	ldr r0, _0800BA74
	str r0, [r4, #4]
	ldr r3, _0800BA78
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA7C
	str r0, [r4]
	ldr r0, _0800BA80
	str r0, [r4, #4]
	ldr r2, _0800BA84
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA88
	str r0, [r4]
	ldr r0, _0800BA8C
	str r0, [r4, #4]
	ldr r1, _0800BA90
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA94
	str r0, [r4]
	ldr r0, _0800BA98
	str r0, [r4, #4]
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA9C
	str r0, [r4]
	ldr r0, _0800BAA0
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BAA4
	str r0, [r4]
	ldr r0, _0800BAA8
	str r0, [r4, #4]
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BAAC
	movs r4, #0
	add r0, sp, #4
	mov sl, r0
	ldr r2, _0800BAB0
	mov ip, r2
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r5, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_0800B8FA:
	mov r0, ip
	strh r0, [r1]
	adds r0, r3, r5
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r4, #1
	cmp r4, #3
	bls _0800B8FA
	mov r0, r8
	movs r1, #0xf
	bl sub_800B7A8
	movs r1, #0
	mov sb, r1
	movs r0, #0xe0
	mov r2, r8
	strb r0, [r2, #0xd]
	mov r0, sb
	strb r0, [r2, #0xe]
	movs r0, #8
	strb r0, [r2, #0xf]
	mov r1, sb
	strb r1, [r2, #0xa]
	strb r1, [r2, #0xb]
	ldr r1, _0800BAB4
	adds r5, r6, #0
	adds r5, #0x8d
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r1, r0, #3
	adds r0, r6, #0
	adds r0, #0xd8
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8001830
	adds r0, r4, #0
	bl sub_8001A9C
	movs r0, #0xff
	bl sub_8001A9C
	ldr r0, _0800BAB8
	strh r0, [r7, #0xe]
	adds r4, r7, #0
	adds r4, #0x4a
	ldr r0, _0800BABC
	mov r8, r0
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldr r1, _0800BAC0
	adds r0, r6, #0
	bl sub_800D77C
	mov r2, sb
	str r2, [sp, #4]
	ldr r1, _0800BA38
	mov r0, sl
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x94
	str r0, [r1, #4]
	ldr r0, _0800BAC4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r1, [r5]
	cmp r1, #1
	bls _0800B9A6
	movs r0, #0
	movs r1, #0x41
	movs r2, #1
	bl sub_8002B94
_0800B9A6:
	adds r0, r6, #0
	adds r0, #0xb4
	mov r2, sb
	str r2, [r0]
	movs r0, #0xf
	strb r0, [r6, #0x16]
	movs r0, #1
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
	ldr r1, _0800BAC8
	ldr r0, _0800BACC
	strh r0, [r1, #0x1e]
	movs r0, #0x80
	bl sub_800549C
	movs r0, #1
	bl sub_800244C
	ldr r1, _0800BAD0
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #0
	bl sub_800D530
	bl sub_800A348
	movs r0, #0x30
	movs r1, #0xf
	bl sub_8000738
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	adds r1, r7, #0
	adds r1, #0x4e
	movs r0, #0x10
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x8f
	movs r0, #5
	strb r0, [r1]
	ldrb r5, [r5]
	cmp r5, #0xb
	bne _0800BA1C
	mov r0, r8
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	mov r2, sb
	strh r2, [r7, #0xe]
_0800BA1C:
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BA34: .4byte gUnknown_030038D0
_0800BA38: .4byte 0x040000D4
_0800BA3C: .4byte gUnknown_03003AB0
_0800BA40: .4byte 0x81000004
_0800BA44: .4byte gUnknown_03003A50
_0800BA48: .4byte 0x8100000C
_0800BA4C: .4byte 0x00003D01
_0800BA50: .4byte 0x00003FC7
_0800BA54: .4byte gUnknown_08185D20
_0800BA58: .4byte 0x06003800
_0800BA5C: .4byte 0x80000400
_0800BA60: .4byte gUnknown_08186540
_0800BA64: .4byte 0x80000800
_0800BA68: .4byte gUnknown_0818E4C0
_0800BA6C: .4byte 0x06012000
_0800BA70: .4byte gUnknown_08194200
_0800BA74: .4byte 0x050002A0
_0800BA78: .4byte 0x80000020
_0800BA7C: .4byte gUnknown_0818F6C0
_0800BA80: .4byte 0x06013000
_0800BA84: .4byte 0x80000100
_0800BA88: .4byte gUnknown_08194260
_0800BA8C: .4byte 0x050002E0
_0800BA90: .4byte 0x80000010
_0800BA94: .4byte gUnknown_08190AC0
_0800BA98: .4byte 0x06013200
_0800BA9C: .4byte gUnknown_081942C0
_0800BAA0: .4byte 0x05000300
_0800BAA4: .4byte gUnknown_081FD92C
_0800BAA8: .4byte 0x05000320
_0800BAAC: .4byte gUnknown_03002CA8
_0800BAB0: .4byte 0x000040E0
_0800BAB4: .4byte gUnknown_0811DCDC
_0800BAB8: .4byte 0x0000FFAF
_0800BABC: .4byte 0x0000FDFF
_0800BAC0: .4byte gUnknown_03002840
_0800BAC4: .4byte 0x85000008
_0800BAC8: .4byte gUnknown_03003A70
_0800BACC: .4byte 0x0000FFFF
_0800BAD0: .4byte gUnknown_0811DD20

	THUMB_FUNC_START sub_800BAD4
sub_800BAD4: @ 0x0800BAD4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800BB40
	ldr r1, _0800BB4C
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r7, r1, #0
	ldr r3, _0800BB50
	cmp r0, #0
	beq _0800BB0C
	adds r2, r5, #0
	adds r2, #0xb4
	ldr r1, [r2]
	movs r0, #0x10
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	bne _0800BB0C
	movs r0, #5
	ldrh r1, [r3]
	ands r0, r1
	cmp r0, #0
	bne _0800BB78
_0800BB0C:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r7, [r7, #2]
	ands r0, r7
	cmp r0, #0
	beq _0800BB30
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800BB30
	movs r0, #5
	ldrh r2, [r3]
	ands r0, r2
	cmp r0, #0
	bne _0800BBF6
_0800BB30:
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800BB40
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	beq _0800BB54
_0800BB40:
	adds r0, r5, #0
	movs r1, #0
	bl sub_800D530
	b _0800BD6E
	.align 2, 0
_0800BB4C: .4byte gUnknown_03003720
_0800BB50: .4byte gUnknown_03003A70
_0800BB54:
	adds r0, r5, #0
	movs r1, #1
	bl sub_800D530
	ldr r1, _0800BBB8
	movs r0, #8
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800BBD8
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	bne _0800BBD8
_0800BB78:
	bl sub_800F454
	ldr r1, _0800BBBC
	ldr r0, _0800BBC0
	str r0, [r1]
	ldr r2, _0800BBC4
	str r2, [r1, #4]
	ldr r0, _0800BBC8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800BBCC
	str r4, [r1]
	ldr r0, _0800BBD0
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800BBD4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, [r6]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	movs r0, #0xa
	str r0, [r5, #4]
	b _0800BD6E
	.align 2, 0
_0800BBB8: .4byte gUnknown_03003720
_0800BBBC: .4byte 0x040000D4
_0800BBC0: .4byte gOamObjects
_0800BBC4: .4byte gSaveDataBuffer+0x750
_0800BBC8: .4byte 0x80000200
_0800BBCC: .4byte gUnknown_03003730
_0800BBD0: .4byte 0xFFFFF8E4
_0800BBD4: .4byte 0x800000D0
_0800BBD8:
	ldr r6, _0800BC1C
	ldrh r1, [r6, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BC24
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800BBF6
	b _0800BD5A
_0800BBF6:
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, _0800BC20
	ldr r0, [r0]
	str r0, [r5, #8]
	movs r0, #7
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #0
	bl sub_800D530
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	b _0800BD6E
	.align 2, 0
_0800BC1C: .4byte gUnknown_03003720
_0800BC20: .4byte gUnknown_03003730+0x4
_0800BC24:
	movs r0, #0x30
	ldrh r2, [r6, #8]
	ands r0, r2
	cmp r0, #0
	beq _0800BC6A
	ldrb r1, [r4, #0xa]
	strb r1, [r4, #0xb]
	movs r0, #0x20
	ldrh r6, [r6, #8]
	ands r0, r6
	cmp r0, #0
	beq _0800BC40
	subs r0, r1, #1
	b _0800BC42
_0800BC40:
	adds r0, r1, #1
_0800BC42:
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0800BC52
	movs r0, #1
	ldrb r1, [r4, #0xa]
	ands r0, r1
	b _0800BC58
_0800BC52:
	movs r0, #3
	ldrb r2, [r4, #0xa]
	ands r0, r2
_0800BC58:
	strb r0, [r4, #0xa]
	movs r0, #0x2a
	bl sub_800F3E0
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	b _0800BD5A
_0800BC6A:
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800BCF0
	movs r0, #0x2b
	bl sub_800F3E0
	movs r6, #0
	movs r0, #0x78
	strh r0, [r4]
	movs r0, #0x32
	strh r0, [r4, #2]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800B7A8
	adds r0, r7, #0
	ldrb r1, [r4, #0xa]
	lsls r0, r1
	ldrb r2, [r4, #7]
	subs r0, r2, r0
	strb r0, [r4, #7]
	movs r0, #0xf0
	strb r0, [r4, #0xd]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r6, [r4, #0xf]
	adds r0, r1, #0
	strb r0, [r4, #0xb]
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r5, #0
	movs r1, #0
	bl sub_800D530
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0800BCD4
	movs r0, #0xc
	movs r1, #1
	bl sub_80106A4
	strb r6, [r4, #0x17]
	strb r6, [r4, #0x16]
	ldr r1, _0800BCE0
	ldr r0, _0800BCE4
	str r0, [r1]
	ldr r0, _0800BCE8
	str r0, [r1, #4]
	ldr r0, _0800BCEC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800BCD4:
	ldrb r0, [r4, #0xa]
	adds r0, #6
	strb r0, [r5, #5]
	strb r6, [r5, #7]
	strb r6, [r5, #6]
	b _0800BD6E
	.align 2, 0
_0800BCE0: .4byte 0x040000D4
_0800BCE4: .4byte gUnknown_081942C0
_0800BCE8: .4byte 0x05000300
_0800BCEC: .4byte 0x80000010
_0800BCF0:
	ldrh r0, [r5, #0x28]
	bl sub_8002224
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0800BD5A
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r6, [r6, #2]
	ands r0, r6
	cmp r0, #0
	beq _0800BD5A
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0800BD1A
	cmp r0, #0x78
	beq _0800BD1A
	cmp r0, #0xf0
	bne _0800BD5A
_0800BD1A:
	movs r0, #0x2b
	bl sub_800F3E0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0800BD36
	adds r1, #0xe
	movs r0, #6
	b _0800BD44
_0800BD36:
	cmp r0, #0x78
	beq _0800BD3E
	cmp r0, #0xf0
	bne _0800BD46
_0800BD3E:
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0xfa
_0800BD44:
	strb r0, [r1]
_0800BD46:
	movs r0, #0
	movs r1, #3
	strb r1, [r5, #5]
	strb r0, [r5, #7]
	strb r0, [r5, #6]
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800B7A8
_0800BD5A:
	ldrb r0, [r4, #0xe]
	cmp r0, #7
	bhi _0800BD64
	adds r0, #1
	strb r0, [r4, #0xe]
_0800BD64:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0800BD6E
	subs r0, #1
	strb r0, [r4, #0xf]
_0800BD6E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800BD74
sub_800BD74: @ 0x0800BD74
	adds r2, r0, #0
	ldr r1, _0800BDA8
	ldr r0, _0800BDAC
	str r0, [r1]
	ldr r0, _0800BDB0
	str r0, [r1, #4]
	ldr r0, _0800BDB4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800BDB8
	str r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800BDC0
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800BDF2
	ldr r0, _0800BDBC
	b _0800BDF0
	.align 2, 0
_0800BDA8: .4byte 0x040000D4
_0800BDAC: .4byte gUnknown_03003730
_0800BDB0: .4byte gSaveDataBuffer+0x34
_0800BDB4: .4byte 0x800000D0
_0800BDB8: .4byte 0x0100000A
_0800BDBC: .4byte 0x0100000B
_0800BDC0:
	cmp r0, #5
	bne _0800BDDC
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800BDF2
	ldr r0, _0800BDD8
	b _0800BDF0
	.align 2, 0
_0800BDD8: .4byte gSaveDataBuffer+0xB
_0800BDDC:
	cmp r0, #0xb
	bne _0800BDF2
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #8
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800BDF2
	ldr r0, _0800BDF4
_0800BDF0:
	str r0, [r2, #4]
_0800BDF2:
	bx lr
	.align 2, 0
_0800BDF4: .4byte gUnknown_0300000B

	THUMB_FUNC_START sub_800BDF8
sub_800BDF8: @ 0x0800BDF8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	bl sub_800D530
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0800BE44
	ldrh r0, [r4, #0x28]
	bl sub_8002224
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800BE26
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800BE32
	cmp r0, #0xf0
	beq _0800BE32
	b _0800BE50
_0800BE26:
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800BE32
	cmp r0, #0x78
	bne _0800BE50
_0800BE32:
	movs r0, #0
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	b _0800BE50
_0800BE44:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0800BE50
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r4, #4]
_0800BE50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_800BE58
sub_800BE58: @ 0x0800BE58
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_800D530
	ldr r0, _0800BE78
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800BE72
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r4, #4]
_0800BE72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BE78: .4byte gUnknown_03003A70

	THUMB_FUNC_START sub_800BE7C
sub_800BE7C: @ 0x0800BE7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0800BEBC
	adds r0, #0x38
	ldrb r7, [r0]
	cmp r7, #1
	bne _0800BF70
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800BF70
	adds r0, r6, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0xd8
	adds r4, r6, r0
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0800BEC0
	bl sub_800F3C4
	ldrb r0, [r4]
	bl sub_8001830
	strb r7, [r6, #6]
	b _0800BF70
	.align 2, 0
_0800BEBC: .4byte gUnknown_03003A70
_0800BEC0:
	ldrb r0, [r4]
	bl sub_8001A9C
	ldr r1, _0800BF7C
	movs r2, #0
	movs r0, #0x8d
	adds r0, r0, r6
	mov r8, r0
	adds r4, r1, #0
	adds r4, #0x58
	movs r3, #0x80
	lsls r3, r3, #2
_0800BED8:
	movs r0, #0
_0800BEDA:
	strh r3, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #1
	bls _0800BEDA
	adds r2, #1
	cmp r2, #3
	bls _0800BED8
	adds r1, r4, #0
	movs r2, #0
	ldr r3, _0800BF80
	mov ip, r3
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r7, r0, #0
	movs r3, #0xa2
	lsls r3, r3, #7
_0800BEFE:
	mov r0, ip
	strh r0, [r1]
	adds r0, r4, r7
	strh r0, [r1, #2]
	strh r3, [r1, #4]
	adds r1, #8
	adds r4, #0x3c
	adds r3, #0x20
	adds r2, #1
	cmp r2, #3
	bls _0800BEFE
	movs r4, #0
	adds r0, r5, #0
	movs r1, #0xf
	bl sub_800B7A8
	movs r0, #0xe0
	strb r0, [r5, #0xd]
	strb r4, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	strb r4, [r5, #0xa]
	strb r4, [r5, #0xb]
	movs r0, #1
	strb r0, [r5, #0xc]
	bl sub_800F84C
	ldr r0, _0800BF84
	bl sub_8010960
	ldr r0, _0800BF88
	strb r4, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
	ldr r1, _0800BF8C
	mov r2, r8
	ldrb r2, [r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #0
	bl sub_800D530
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #4]
_0800BF70:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF7C: .4byte gUnknown_03002C50
_0800BF80: .4byte 0x000040E0
_0800BF84: .4byte gUnknown_03000840
_0800BF88: .4byte gUnknown_03003A50
_0800BF8C: .4byte gUnknown_0811DD20

	THUMB_FUNC_START sub_800BF90
sub_800BF90: @ 0x0800BF90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0800C038
	mov r8, r0
	ldr r0, _0800C03C
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0800BFAE
	b _0800C324
_0800BFAE:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800BFBA
	b _0800C324
_0800BFBA:
	ldr r1, _0800C040
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	mov ip, r1
	cmp r0, #0
	beq _0800BFE4
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	bne _0800BFE4
	ldr r1, _0800C044
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800C08A
_0800BFE4:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800C00C
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800C00C
	ldr r1, _0800C044
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800C100
_0800C00C:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0800C014
	b _0800C324
_0800C014:
	ldr r0, _0800C044
	adds r0, #0x38
	ldrb r7, [r0]
	cmp r7, #1
	beq _0800C020
	b _0800C324
_0800C020:
	ldrh r0, [r6, #0x14]
	cmp r0, #0
	beq _0800C028
	b _0800C324
_0800C028:
	ldrb r1, [r6, #6]
	cmp r1, #1
	beq _0800C06C
	cmp r1, #1
	bgt _0800C048
	cmp r1, #0
	beq _0800C050
	b _0800C324
	.align 2, 0
_0800C038: .4byte gUnknown_03002DE0
_0800C03C: .4byte gUnknown_03000800
_0800C040: .4byte gUnknown_03003720
_0800C044: .4byte gUnknown_03003A70
_0800C048:
	cmp r1, #2
	bne _0800C04E
	b _0800C2E4
_0800C04E:
	b _0800C324
_0800C050:
	ldrb r0, [r5, #0xe]
	cmp r0, #0xf
	bhi _0800C05A
	adds r0, #1
	strb r0, [r5, #0xe]
_0800C05A:
	strb r1, [r5, #0xf]
	ldrb r5, [r5, #0xe]
	cmp r5, #0xf
	bhi _0800C064
	b _0800C324
_0800C064:
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	b _0800C324
_0800C06C:
	movs r3, #3
	movs r0, #8
	mov r2, ip
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800C0E4
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	bne _0800C0E4
_0800C08A:
	bl sub_800F454
	ldr r1, _0800C0C8
	ldr r0, _0800C0CC
	str r0, [r1]
	ldr r2, _0800C0D0
	str r2, [r1, #4]
	ldr r0, _0800C0D4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800C0D8
	str r4, [r1]
	ldr r0, _0800C0DC
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800C0E0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, [r7]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7]
	ldr r0, [r4, #4]
	str r0, [r6, #8]
	movs r0, #0xa
	str r0, [r6, #4]
	b _0800C324
	.align 2, 0
_0800C0C8: .4byte 0x040000D4
_0800C0CC: .4byte gOamObjects
_0800C0D0: .4byte gSaveDataBuffer+0x750
_0800C0D4: .4byte 0x80000200
_0800C0D8: .4byte gUnknown_03003730
_0800C0DC: .4byte 0xFFFFF8E4
_0800C0E0: .4byte 0x800000D0
_0800C0E4:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800C120
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800C120
_0800C100:
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, _0800C11C
	ldr r0, [r0]
	str r0, [r6, #8]
	movs r0, #7
	str r0, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, r8
	strh r0, [r2]
	b _0800C324
	.align 2, 0
_0800C11C: .4byte gUnknown_03003730+0x4
_0800C120:
	mov r0, ip
	ldrh r1, [r0, #2]
	movs r7, #1
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0800C164
	movs r0, #0x2b
	bl sub_800F3E0
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r1, r8
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_800D5B0
	adds r3, r0, #0
	bl sub_800549C
	movs r0, #1
	bl sub_800244C
	strb r7, [r5, #6]
	strb r4, [r5, #0x14]
	strb r4, [r5, #0x15]
	strb r7, [r5, #7]
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0xf0
	strb r0, [r5, #0xd]
	strb r4, [r5, #0xe]
	b _0800C322
_0800C164:
	movs r7, #2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C188
	movs r0, #0x2c
	bl sub_800F3E0
	strb r7, [r6, #6]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_800B7A8
	strb r7, [r5, #0xc]
	movs r0, #0xe0
	strb r0, [r5, #0xd]
	movs r0, #0x10
	b _0800C320
_0800C188:
	movs r0, #0x20
	mov r2, ip
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _0800C1B6
	ldrh r1, [r5]
	subs r0, r1, r3
	strh r0, [r5]
	ldrh r2, [r5, #2]
	cmp r2, #0xf
	bhi _0800C1AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _0800C1AC
	movs r0, #0x3c
	strh r0, [r5]
_0800C1AC:
	ldrh r0, [r5]
	cmp r0, #0xe0
	bls _0800C1B6
	movs r0, #0
	strh r0, [r5]
_0800C1B6:
	movs r0, #0x10
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800C1E4
	ldrh r2, [r5]
	adds r0, r2, r3
	strh r0, [r5]
	ldrh r1, [r5, #2]
	cmp r1, #0xf
	bhi _0800C1DA
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _0800C1DA
	movs r0, #0x3c
	strh r0, [r5]
_0800C1DA:
	ldrh r2, [r5]
	cmp r2, #0xe0
	bls _0800C1E4
	movs r0, #0xe0
	strh r0, [r5]
_0800C1E4:
	movs r0, #0x40
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800C212
	ldrh r2, [r5, #2]
	subs r0, r2, r3
	strh r0, [r5, #2]
	ldrh r1, [r5]
	cmp r1, #0x3b
	bhi _0800C208
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0800C208
	movs r0, #0x10
	strh r0, [r5, #2]
_0800C208:
	ldrh r2, [r5, #2]
	cmp r2, #0x90
	bls _0800C212
	movs r0, #0
	strh r0, [r5, #2]
_0800C212:
	movs r0, #0x80
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800C240
	ldrh r2, [r5, #2]
	adds r0, r2, r3
	strh r0, [r5, #2]
	ldrh r1, [r5]
	cmp r1, #0x3b
	bhi _0800C236
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0800C236
	movs r0, #0x10
	strh r0, [r5, #2]
_0800C236:
	ldrh r2, [r5, #2]
	cmp r2, #0x90
	bls _0800C240
	movs r0, #0x90
	strh r0, [r5, #2]
_0800C240:
	adds r0, r5, #0
	bl sub_800D5B0
	adds r3, r0, #0
	subs r0, #0x18
	cmp r0, #1
	bhi _0800C256
	movs r0, #0
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	b _0800C272
_0800C256:
	ldrb r0, [r5, #0x15]
	adds r0, #1
	strb r0, [r5, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0800C272
	movs r0, #0
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x14]
	adds r0, #4
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x14]
_0800C272:
	ldrh r0, [r5, #2]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r5]
	cmp r0, #0x77
	bhi _0800C288
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r0, r2
	strh r0, [r1, #2]
	b _0800C292
_0800C288:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2, #2]
_0800C292:
	ldrb r1, [r5, #0x14]
	ldr r2, _0800C2D0
	adds r0, r1, r2
	mov r1, r8
	strh r0, [r1, #4]
	ldrb r0, [r5, #0x17]
	adds r0, #1
	strb r0, [r5, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800C324
	movs r0, #0
	strb r0, [r5, #0x17]
	ldrb r0, [r5, #0x16]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x16]
	ldr r1, _0800C2D4
	lsls r0, r0, #5
	ldr r2, _0800C2D8
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _0800C2DC
	str r0, [r1, #4]
	ldr r0, _0800C2E0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800C324
	.align 2, 0
_0800C2D0: .4byte 0x00008190
_0800C2D4: .4byte 0x040000D4
_0800C2D8: .4byte gUnknown_081942C0
_0800C2DC: .4byte 0x05000300
_0800C2E0: .4byte 0x80000010
_0800C2E4:
	ldrb r0, [r5, #0xe]
	cmp r0, #8
	bls _0800C2EE
	subs r0, #1
	strb r0, [r5, #0xe]
_0800C2EE:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0800C324
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r1, r8
	strh r0, [r1]
	ldr r0, _0800C330
	movs r1, #1
	bl sub_800FA74
	movs r0, #1
	movs r1, #1
	bl sub_80106A4
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #4]
	ldrb r2, [r5, #0xa]
	lsls r7, r2
	ldrb r1, [r5, #7]
	adds r0, r1, r7
	strb r0, [r5, #7]
	movs r0, #8
_0800C320:
	strb r0, [r5, #0xe]
_0800C322:
	strb r4, [r5, #0xf]
_0800C324:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C330: .4byte gUnknown_03000840

	THUMB_FUNC_START sub_800C334
sub_800C334: @ 0x0800C334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	str r1, [sp]
	ldrb r0, [r0, #6]
	cmp r0, #6
	bls _0800C34C
	b _0800C84A
_0800C34C:
	lsls r0, r0, #2
	ldr r1, _0800C358
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C358: .4byte _0800C35C
_0800C35C: @ jump table
	.4byte _0800C378 @ case 0
	.4byte _0800C39C @ case 1
	.4byte _0800C464 @ case 2
	.4byte _0800C4DC @ case 3
	.4byte _0800C690 @ case 4
	.4byte _0800C714 @ case 5
	.4byte _0800C784 @ case 6
_0800C378:
	ldr r1, [sp]
	ldrb r0, [r1, #0xe]
	cmp r0, #0xf
	bhi _0800C384
	adds r0, #1
	strb r0, [r1, #0xe]
_0800C384:
	movs r0, #0
	ldr r2, [sp]
	strb r0, [r2, #0xf]
	ldrb r3, [r2, #0xe]
	cmp r3, #0xf
	bhi _0800C392
	b _0800C84A
_0800C392:
	mov r5, r8
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	b _0800C84A
_0800C39C:
	ldr r4, _0800C418
	mov r0, r8
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #3
	mov r6, r8
	adds r1, r0, r6
	adds r1, #0xdc
	movs r2, #0
	ldr r7, [sp]
	adds r7, #0x10
	mov sb, r7
_0800C3B4:
	lsls r0, r2, #0xb
	ldr r5, _0800C41C
	adds r3, r0, r5
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800C430
	movs r0, #1
	mov r6, sb
	strb r0, [r6]
	ldrb r7, [r1]
	lsls r5, r7, #0xb
	ldr r0, _0800C420
	adds r5, r5, r0
	ldr r6, _0800C424
	str r5, [r6]
	str r3, [r6, #4]
	ldr r0, _0800C428
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r3, #0
	lsls r0, r2, #2
	adds r6, r1, #1
	movs r7, #0x81
	lsls r7, r7, #7
	adds r7, r7, r0
	mov ip, r7
	movs r5, #0xd0
	lsls r5, r5, #1
	lsls r0, r2, #6
	str r0, [sp, #8]
	movs r1, #0x90
	lsls r1, r1, #8
	mov sl, r1
	ldr r1, _0800C42C
_0800C3F8:
	mov r7, ip
	strh r7, [r4]
	strh r1, [r4, #2]
	ldr r7, [sp, #8]
	adds r0, r5, r7
	mov r7, sl
	orrs r0, r7
	strh r0, [r4, #4]
	adds r4, #8
	adds r5, #0x20
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800C3F8
	b _0800C446
	.align 2, 0
_0800C418: .4byte gUnknown_03002C50
_0800C41C: .4byte 0x06013400
_0800C420: .4byte gUnknown_081FD96C
_0800C424: .4byte 0x040000D4
_0800C428: .4byte 0x80000400
_0800C42C: .4byte 0x0000C038
_0800C430:
	movs r0, #0
	mov r3, sb
	strb r0, [r3]
	movs r5, #0x96
	lsls r5, r5, #1
	strh r5, [r4, #2]
	adds r4, #8
	adds r6, r5, #0
	strh r6, [r4, #2]
	adds r4, #8
	adds r6, r1, #1
_0800C446:
	adds r1, r6, #0
	movs r7, #1
	add sb, r7
	adds r2, #1
	cmp r2, #3
	bls _0800C3B4
	movs r1, #0
	ldr r0, [sp]
	strb r1, [r0, #4]
	mov r2, r8
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	strb r1, [r2, #7]
	b _0800C84A
_0800C464:
	ldr r6, _0800C4D4
	mov r3, r8
	ldrb r3, [r3, #7]
	cmp r3, #0xc
	bhi _0800C498
	adds r4, r6, #0
	subs r4, #0x60
	movs r2, #0
	movs r5, #4
_0800C476:
	movs r3, #0
	subs r0, r5, r2
	lsls r1, r0, #1
_0800C47C:
	ldrh r7, [r4]
	subs r0, r7, r1
	strh r0, [r4]
	adds r4, #8
	adds r3, #1
	cmp r3, #1
	bls _0800C47C
	adds r2, #1
	cmp r2, #3
	bls _0800C476
	mov r1, r8
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
_0800C498:
	adds r4, r6, #0
	ldrh r0, [r4, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	subs r0, #6
	ldr r1, _0800C4D8
	ands r0, r1
	strh r0, [r4, #2]
	cmp r0, #0xff
	bls _0800C4B2
	movs r0, #0
	strh r0, [r4, #2]
_0800C4B2:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0800C4CC
	mov r2, r8
	ldrb r2, [r2, #7]
	cmp r2, #0xc
	bls _0800C4CC
	mov r3, r8
	ldrb r0, [r3, #6]
	adds r0, #1
	strb r0, [r3, #6]
	movs r0, #0
	strb r0, [r3, #7]
_0800C4CC:
	ldrh r6, [r4, #2]
	orrs r5, r6
	strh r5, [r4, #2]
	b _0800C84A
	.align 2, 0
_0800C4D4: .4byte gUnknown_03002CB0
_0800C4D8: .4byte 0x000001FF
_0800C4DC:
	mov r0, r8
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800C4E8
	b _0800C84A
_0800C4E8:
	ldr r0, _0800C544
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800C564
	mov r5, r8
	adds r5, #0xb4
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C504
	b _0800C84A
_0800C504:
	bl sub_800F454
	ldr r1, _0800C548
	ldr r0, _0800C54C
	str r0, [r1]
	ldr r2, _0800C550
	str r2, [r1, #4]
	ldr r0, _0800C554
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800C558
	str r4, [r1]
	ldr r7, _0800C55C
	adds r2, r2, r7
	str r2, [r1, #4]
	ldr r0, _0800C560
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	mov r1, r8
	str r0, [r1, #8]
	movs r0, #0xa
	str r0, [r1, #4]
	b _0800C84A
	.align 2, 0
_0800C544: .4byte gUnknown_03003720
_0800C548: .4byte 0x040000D4
_0800C54C: .4byte gOamObjects
_0800C550: .4byte gSaveDataBuffer+0x750
_0800C554: .4byte 0x80000200
_0800C558: .4byte gUnknown_03003730
_0800C55C: .4byte 0xFFFFF8E4
_0800C560: .4byte 0x800000D0
_0800C564:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C5B6
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C57E
	b _0800C84A
_0800C57E:
	movs r0, #0x31
	bl sub_800F3E0
	movs r0, #6
	mov r2, r8
	strb r0, [r2, #6]
	ldr r0, _0800C5A8
	ldr r0, [r0]
	str r0, [r2, #8]
	movs r0, #7
	str r0, [r2, #4]
	ldr r4, _0800C5AC
	movs r2, #0
	movs r0, #0x96
	lsls r0, r0, #1
_0800C59C:
	strh r0, [r4, #2]
	adds r4, #8
	adds r2, #1
	cmp r2, #7
	bls _0800C59C
	b _0800C84A
	.align 2, 0
_0800C5A8: .4byte gUnknown_03003730+0x4
_0800C5AC: .4byte gUnknown_03002C50
_0800C5B0:
	ldr r6, [sp]
	strb r3, [r6, #4]
	b _0800C5E0
_0800C5B6:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C5F2
	movs r2, #0
	ldr r7, [sp]
	ldrb r0, [r7, #4]
	subs r3, r0, #1
	adds r5, r0, #0
	movs r4, #3
	adds r1, r7, #0
	adds r1, #0x10
_0800C5CE:
	ands r3, r4
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C5B0
	subs r3, #1
	adds r2, #1
	cmp r2, #3
	bls _0800C5CE
_0800C5E0:
	ldr r0, [sp]
	ldrb r0, [r0, #4]
	cmp r5, r0
	bne _0800C5EA
	b _0800C84A
_0800C5EA:
	b _0800C626
_0800C5EC:
	ldr r1, [sp]
	strb r3, [r1, #4]
	b _0800C61C
_0800C5F2:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800C62E
	movs r2, #0
	ldr r3, [sp]
	ldrb r0, [r3, #4]
	adds r3, r0, #1
	adds r5, r0, #0
	movs r4, #3
	ldr r1, [sp]
	adds r1, #0x10
_0800C60A:
	ands r3, r4
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C5EC
	adds r3, #1
	adds r2, #1
	cmp r2, #3
	bls _0800C60A
_0800C61C:
	ldr r6, [sp]
	ldrb r6, [r6, #4]
	cmp r5, r6
	bne _0800C626
	b _0800C84A
_0800C626:
	movs r0, #0x2a
	bl sub_800F3E0
	b _0800C84A
_0800C62E:
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0800C674
	movs r0, #0x2b
	bl sub_800F3E0
	mov r2, r8
	adds r2, #0x8c
	ldr r7, [sp]
	ldrb r3, [r7, #4]
	adds r3, #4
	ldrb r0, [r2]
	lsls r1, r0, #3
	adds r1, r3, r1
	mov r0, r8
	adds r0, #0xd8
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	movs r0, #0x14
	bl sub_800F514
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldr r0, _0800C670
	mov r1, r8
	str r0, [r1, #4]
	b _0800C84A
	.align 2, 0
_0800C670: .4byte 0x00000504
_0800C674:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800C67E
	b _0800C84A
_0800C67E:
	movs r0, #0x2c
	bl sub_800F3E0
	mov r2, r8
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	strb r4, [r2, #7]
	b _0800C84A
_0800C690:
	ldr r6, _0800C70C
	mov r3, r8
	ldrb r3, [r3, #7]
	cmp r3, #0xc
	bhi _0800C6C6
	adds r4, r6, #0
	subs r4, #0x60
	movs r2, #0
	movs r5, #4
_0800C6A2:
	movs r3, #0
	subs r0, r5, r2
	lsls r1, r0, #1
_0800C6A8:
	ldrh r0, [r4]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #8
	adds r3, #1
	cmp r3, #1
	bls _0800C6A8
	adds r2, #1
	cmp r2, #3
	bls _0800C6A2
	mov r5, r8
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
_0800C6C6:
	adds r4, r6, #0
	ldrh r0, [r4, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	adds r0, #6
	ldr r1, _0800C710
	ands r0, r1
	strh r0, [r4, #2]
	cmp r0, #0x3b
	bls _0800C702
	movs r0, #0x3c
	strh r0, [r4, #2]
	ldr r0, [sp]
	movs r1, #0xd
	bl sub_800B7A8
	movs r0, #2
	ldr r6, [sp]
	strb r0, [r6, #0xc]
	movs r0, #0xe0
	strb r0, [r6, #0xd]
	movs r0, #0x10
	strb r0, [r6, #0xe]
	movs r0, #0
	strb r0, [r6, #0xf]
	mov r7, r8
	ldrb r0, [r7, #6]
	adds r0, #1
	strb r0, [r7, #6]
_0800C702:
	ldrh r0, [r4, #2]
	orrs r5, r0
	strh r5, [r4, #2]
	b _0800C84A
	.align 2, 0
_0800C70C: .4byte gUnknown_03002CB0
_0800C710: .4byte 0x000001FF
_0800C714:
	mov r1, r8
	ldrb r1, [r1, #7]
	cmp r1, #0xc
	bhi _0800C746
	ldr r4, _0800C780
	movs r2, #0
	movs r5, #4
_0800C722:
	movs r3, #0
	subs r0, r5, r2
	lsls r1, r0, #1
_0800C728:
	ldrh r0, [r4]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #8
	adds r3, #1
	cmp r3, #1
	bls _0800C728
	adds r2, #1
	cmp r2, #3
	bls _0800C722
	mov r2, r8
	ldrb r0, [r2, #7]
	adds r0, #1
	strb r0, [r2, #7]
_0800C746:
	ldr r3, [sp]
	ldrb r0, [r3, #0xe]
	cmp r0, #8
	bls _0800C752
	subs r0, #1
	strb r0, [r3, #0xe]
_0800C752:
	ldr r5, [sp]
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _0800C84A
	mov r6, r8
	ldrb r6, [r6, #7]
	cmp r6, #0xc
	bls _0800C84A
	movs r0, #0x82
	lsls r0, r0, #1
	mov r7, r8
	str r0, [r7, #4]
	movs r0, #1
	ldrb r2, [r5, #0xa]
	lsls r0, r2
	ldrb r3, [r5, #7]
	adds r0, r3, r0
	strb r0, [r5, #7]
	movs r0, #8
	strb r0, [r5, #0xe]
	strb r1, [r5, #0xf]
	b _0800C84A
	.align 2, 0
_0800C780: .4byte gUnknown_03002C50
_0800C784:
	ldr r4, _0800C800
	mov r0, r8
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #3
	mov r5, r8
	adds r1, r0, r5
	adds r1, #0xdc
	movs r2, #0
	ldr r6, [sp]
	adds r6, #0x10
	mov sb, r6
	movs r7, #0
	str r7, [sp, #4]
_0800C7A0:
	lsls r0, r2, #0xb
	ldr r5, _0800C804
	adds r3, r0, r5
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800C81C
	movs r0, #1
	mov r6, sb
	strb r0, [r6]
	ldrb r7, [r1]
	lsls r5, r7, #0xb
	ldr r0, _0800C808
	adds r5, r5, r0
	ldr r6, _0800C80C
	str r5, [r6]
	str r3, [r6, #4]
	ldr r0, _0800C810
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r3, #0
	adds r6, r1, #1
	ldr r7, [sp, #4]
	ldr r0, _0800C814
	adds r7, r7, r0
	mov ip, r7
	movs r5, #0xd0
	lsls r5, r5, #1
	lsls r1, r2, #6
	str r1, [sp, #8]
	movs r7, #0x90
	lsls r7, r7, #8
	mov sl, r7
	ldr r1, _0800C818
_0800C7E2:
	mov r0, ip
	strh r0, [r4]
	strh r1, [r4, #2]
	ldr r7, [sp, #8]
	adds r0, r5, r7
	mov r7, sl
	orrs r0, r7
	strh r0, [r4, #4]
	adds r4, #8
	adds r5, #0x20
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800C7E2
	b _0800C832
	.align 2, 0
_0800C800: .4byte gUnknown_03002C50
_0800C804: .4byte 0x06013400
_0800C808: .4byte gUnknown_081FD96C
_0800C80C: .4byte 0x040000D4
_0800C810: .4byte 0x80000400
_0800C814: .4byte 0x00004018
_0800C818: .4byte 0x0000C038
_0800C81C:
	movs r0, #0
	mov r3, sb
	strb r0, [r3]
	movs r5, #0x96
	lsls r5, r5, #1
	strh r5, [r4, #2]
	adds r4, #8
	adds r6, r5, #0
	strh r6, [r4, #2]
	adds r4, #8
	adds r6, r1, #1
_0800C832:
	adds r1, r6, #0
	movs r7, #1
	add sb, r7
	ldr r0, [sp, #4]
	adds r0, #0x1e
	str r0, [sp, #4]
	adds r2, #1
	cmp r2, #3
	bls _0800C7A0
	movs r0, #3
	mov r1, r8
	strb r0, [r1, #6]
_0800C84A:
	ldr r4, _0800C878
	movs r2, #0
_0800C84E:
	ldr r3, [sp]
	ldrb r3, [r3, #4]
	cmp r2, r3
	bne _0800C880
	movs r3, #0
	adds r2, #1
	ldr r5, _0800C87C
	movs r6, #0x90
	lsls r6, r6, #8
	adds r1, r6, #0
_0800C862:
	adds r0, r5, #0
	ldrh r7, [r4, #4]
	ands r0, r7
	adds r0, r0, r1
	strh r0, [r4, #4]
	adds r4, #8
	adds r3, #1
	cmp r3, #1
	bls _0800C862
	b _0800C89E
	.align 2, 0
_0800C878: .4byte gUnknown_03002C50
_0800C87C: .4byte 0x00000FFF
_0800C880:
	movs r3, #0
	adds r2, #1
	ldr r5, _0800C8B4
	movs r0, #0xa0
	lsls r0, r0, #8
	adds r1, r0, #0
_0800C88C:
	adds r0, r5, #0
	ldrh r6, [r4, #4]
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #4]
	adds r4, #8
	adds r3, #1
	cmp r3, #1
	bls _0800C88C
_0800C89E:
	cmp r2, #3
	bls _0800C84E
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C8B4: .4byte 0x00000FFF

	THUMB_FUNC_START sub_800C8B8
sub_800C8B8: @ 0x0800C8B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	str r1, [sp]
	ldrb r0, [r0, #6]
	cmp r0, #8
	bls _0800C8D2
	bl _0800D242
_0800C8D2:
	lsls r0, r0, #2
	ldr r1, _0800C8DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C8DC: .4byte _0800C8E0
_0800C8E0: @ jump table
	.4byte _0800C904 @ case 0
	.4byte _0800C92C @ case 1
	.4byte _0800CA68 @ case 2
	.4byte _0800CAE0 @ case 3
	.4byte _0800CDB0 @ case 4
	.4byte _0800CE34 @ case 5
	.4byte _0800CEAC @ case 6
	.4byte _0800D0EC @ case 7
	.4byte _0800D140 @ case 8
_0800C904:
	ldr r1, [sp]
	ldrb r0, [r1, #0xe]
	cmp r0, #0xf
	bhi _0800C910
	adds r0, #1
	strb r0, [r1, #0xe]
_0800C910:
	movs r0, #0
	ldr r2, [sp]
	strb r0, [r2, #0xf]
	ldrb r3, [r2, #0xe]
	cmp r3, #0xf
	bhi _0800C920
	bl _0800D242
_0800C920:
	mov r5, sl
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	bl _0800D242
_0800C92C:
	ldr r6, _0800C9D8
	mov r8, r6
	ldrb r1, [r6]
	adds r0, r1, #0
	ldr r5, _0800C9DC
	ldr r3, [sp]
	adds r3, #0x10
	cmp r0, #0xff
	beq _0800C96A
	mov r0, sl
	adds r0, #0x8c
	ldrb r2, [r0]
	ldr r4, _0800C9E0
_0800C946:
	cmp r2, r1
	bne _0800C95C
	ldrb r1, [r4]
	mov r0, r8
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0800C95C
	mov r1, r8
	ldrb r1, [r1, #3]
	cmp r1, #1
	beq _0800C96A
_0800C95C:
	movs r6, #0x14
	add r8, r6
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800C946
_0800C96A:
	adds r6, r5, #0
	mov r1, r8
	adds r1, #4
	movs r7, #0
	mov r8, r3
_0800C974:
	lsls r0, r7, #0xb
	ldr r2, _0800C9E4
	adds r3, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800C9F8
	movs r0, #1
	mov r5, r8
	strb r0, [r5]
	ldrb r0, [r1]
	lsls r5, r0, #0xb
	ldr r2, _0800C9E8
	adds r5, r5, r2
	ldr r0, _0800C9EC
	str r5, [r0]
	str r3, [r0, #4]
	ldr r0, _0800C9F0
	ldr r2, _0800C9EC
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r4, #0
	lsls r0, r7, #2
	adds r2, r1, #1
	movs r3, #0x81
	lsls r3, r3, #7
	adds r3, r3, r0
	mov ip, r3
	movs r3, #0xd0
	lsls r3, r3, #1
	lsls r5, r7, #6
	str r5, [sp, #0x10]
	movs r0, #0x90
	lsls r0, r0, #8
	mov sb, r0
	ldr r1, _0800C9F4
_0800C9BA:
	mov r5, ip
	strh r5, [r6]
	strh r1, [r6, #2]
	ldr r5, [sp, #0x10]
	adds r0, r3, r5
	mov r5, sb
	orrs r0, r5
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r1, #0x40
	adds r4, #1
	cmp r4, #1
	bls _0800C9BA
	b _0800CA0E
	.align 2, 0
_0800C9D8: .4byte gUnknown_030028A0
_0800C9DC: .4byte gUnknown_03002C50
_0800C9E0: .4byte gUnknown_0300084E
_0800C9E4: .4byte 0x06013400
_0800C9E8: .4byte gUnknown_0820816C
_0800C9EC: .4byte 0x040000D4
_0800C9F0: .4byte 0x80000400
_0800C9F4: .4byte 0x0000C038
_0800C9F8:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r6, #2]
	adds r6, #8
	adds r5, r3, #0
	strh r5, [r6, #2]
	adds r6, #8
	adds r2, r1, #1
_0800CA0E:
	adds r1, r2, #0
	movs r0, #1
	add r8, r0
	adds r7, #1
	cmp r7, #3
	bls _0800C974
	ldr r1, _0800CA4C
	ldr r0, _0800CA50
	str r0, [r1]
	ldr r0, _0800CA54
	str r0, [r1, #4]
	ldr r0, _0800CA58
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800CA5C
	str r0, [r1]
	ldr r0, _0800CA60
	str r0, [r1, #4]
	ldr r0, _0800CA64
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0
	ldr r2, [sp]
	strb r1, [r2, #4]
	mov r3, sl
	ldrb r0, [r3, #6]
	adds r0, #1
	strb r0, [r3, #6]
	strb r1, [r3, #7]
	bl _0800D242
	.align 2, 0
_0800CA4C: .4byte 0x040000D4
_0800CA50: .4byte gUnknown_08190FC0
_0800CA54: .4byte 0x06015400
_0800CA58: .4byte 0x80000100
_0800CA5C: .4byte gUnknown_081944E0
_0800CA60: .4byte 0x05000360
_0800CA64: .4byte 0x80000010
_0800CA68:
	ldr r3, _0800CAD8
	mov r5, sl
	ldrb r5, [r5, #7]
	cmp r5, #0xc
	bhi _0800CA9C
	adds r6, r3, #0
	subs r6, #0x68
	movs r7, #0
	movs r2, #4
_0800CA7A:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_0800CA80:
	ldrh r5, [r6]
	subs r0, r5, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800CA80
	adds r7, #1
	cmp r7, #3
	bls _0800CA7A
	mov r6, sl
	ldrb r0, [r6, #7]
	adds r0, #1
	strb r0, [r6, #7]
_0800CA9C:
	adds r6, r3, #0
	ldrh r0, [r6, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	subs r0, #9
	ldr r1, _0800CADC
	ands r0, r1
	strh r0, [r6, #2]
	cmp r0, #0xff
	bls _0800CAB6
	movs r0, #0
	strh r0, [r6, #2]
_0800CAB6:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _0800CABE
	b _0800CE22
_0800CABE:
	mov r0, sl
	ldrb r0, [r0, #7]
	cmp r0, #0xc
	bhi _0800CAC8
	b _0800CE22
_0800CAC8:
	mov r1, sl
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #0
	strb r0, [r1, #7]
	b _0800CE22
	.align 2, 0
_0800CAD8: .4byte gUnknown_03002CB8
_0800CADC: .4byte 0x000001FF
_0800CAE0:
	ldr r1, _0800CBA4
	ldr r0, _0800CBA8
	str r0, [r1]
	ldr r0, _0800CBAC
	str r0, [r1, #4]
	ldr r0, _0800CBB0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800CBB4
	str r0, [r1]
	ldr r0, _0800CBB8
	str r0, [r1, #4]
	ldr r0, _0800CBBC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0800CBC0
	mov r8, r3
	ldrb r1, [r3]
	adds r0, r1, #0
	mov r4, sl
	adds r4, #0x76
	cmp r0, #0xff
	beq _0800CB3A
	mov r0, sl
	adds r0, #0x8c
	ldrb r2, [r0]
	ldr r3, _0800CBC4
_0800CB16:
	cmp r2, r1
	bne _0800CB2C
	ldrb r6, [r3]
	mov r5, r8
	ldrb r5, [r5, #1]
	cmp r6, r5
	bne _0800CB2C
	mov r6, r8
	ldrb r6, [r6, #3]
	cmp r6, #1
	beq _0800CB3A
_0800CB2C:
	movs r0, #0x14
	add r8, r0
	mov r5, r8
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800CB16
_0800CB3A:
	movs r3, #1
	ldrh r0, [r4]
	cmp r0, #0
	beq _0800CB44
	b _0800CD42
_0800CB44:
	ldr r0, _0800CBC8
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800CBE4
	mov r5, sl
	adds r5, #0xb4
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800CB60
	b _0800CD42
_0800CB60:
	str r3, [sp, #0xc]
	bl sub_800F454
	ldr r1, _0800CBA4
	ldr r0, _0800CBCC
	str r0, [r1]
	ldr r2, _0800CBD0
	str r2, [r1, #4]
	ldr r0, _0800CBD4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800CBD8
	str r4, [r1]
	ldr r6, _0800CBDC
	adds r2, r2, r6
	str r2, [r1, #4]
	ldr r0, _0800CBE0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	mov r1, sl
	str r0, [r1, #8]
	movs r0, #0xa
	str r0, [r1, #4]
	ldr r3, [sp, #0xc]
	b _0800CD42
	.align 2, 0
_0800CBA4: .4byte 0x040000D4
_0800CBA8: .4byte gUnknown_08190FC0
_0800CBAC: .4byte 0x06015400
_0800CBB0: .4byte 0x80000100
_0800CBB4: .4byte gUnknown_081944E0
_0800CBB8: .4byte 0x05000360
_0800CBBC: .4byte 0x80000010
_0800CBC0: .4byte gUnknown_030028A0
_0800CBC4: .4byte gUnknown_0300084E
_0800CBC8: .4byte gUnknown_03003720
_0800CBCC: .4byte gOamObjects
_0800CBD0: .4byte gSaveDataBuffer+0x750
_0800CBD4: .4byte 0x80000200
_0800CBD8: .4byte gUnknown_03003730
_0800CBDC: .4byte 0xFFFFF8E4
_0800CBE0: .4byte 0x800000D0
_0800CBE4:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800CC30
	mov r0, sl
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800CBFE
	b _0800CD42
_0800CBFE:
	movs r0, #0x31
	bl sub_800F3E0
	movs r0, #8
	mov r2, sl
	strb r0, [r2, #6]
	ldr r0, _0800CC28
	ldr r0, [r0]
	str r0, [r2, #8]
	movs r0, #7
	str r0, [r2, #4]
	ldr r6, _0800CC2C
	movs r7, #0
	movs r0, #0x96
	lsls r0, r0, #1
_0800CC1C:
	strh r0, [r6, #2]
	adds r6, #8
	adds r7, #1
	cmp r7, #7
	bls _0800CC1C
	b _0800CD40
	.align 2, 0
_0800CC28: .4byte gUnknown_03003730+0x4
_0800CC2C: .4byte gUnknown_03002C50
_0800CC30:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800CC60
	movs r7, #0
	ldr r1, [sp]
	ldrb r0, [r1, #4]
	subs r4, r0, #1
	adds r5, r0, #0
	movs r2, #3
	adds r1, #0x10
_0800CC46:
	ands r4, r2
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CC5A
	subs r4, #1
	adds r7, #1
	cmp r7, #3
	bls _0800CC46
	b _0800CC88
_0800CC5A:
	ldr r6, [sp]
	strb r4, [r6, #4]
	b _0800CC88
_0800CC60:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800CC9C
	movs r7, #0
	ldr r1, [sp]
	ldrb r0, [r1, #4]
	adds r4, r0, #1
	adds r5, r0, #0
	movs r2, #3
	adds r1, #0x10
_0800CC76:
	ands r4, r2
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CC5A
	adds r4, #1
	adds r7, #1
	cmp r7, #3
	bls _0800CC76
_0800CC88:
	ldr r2, [sp]
	ldrb r2, [r2, #4]
	cmp r5, r2
	beq _0800CD42
	movs r0, #0x2a
	str r3, [sp, #0xc]
	bl sub_800F3E0
	ldr r3, [sp, #0xc]
	b _0800CD42
_0800CC9C:
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800CD28
	movs r0, #0x2b
	bl sub_800F3E0
	ldr r3, [sp]
	ldrb r3, [r3, #4]
	lsls r1, r3, #1
	mov r0, r8
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r0, r5, #0
	bl sub_800549C
	movs r0, #1
	bl sub_800244C
	mov r4, r8
	adds r4, #8
	ldr r5, [sp]
	ldrb r5, [r5, #4]
	adds r0, r5, r4
	ldrb r1, [r0]
	movs r0, #2
	bl sub_8002BD0
	adds r1, r0, #0
	adds r2, r4, #0
	cmp r1, #0
	beq _0800CCF0
	ldr r1, _0800CCEC
	movs r0, #1
	strb r0, [r1, #0x13]
	b _0800CD04
	.align 2, 0
_0800CCEC: .4byte gUnknown_03003A70
_0800CCF0:
	ldr r0, _0800CD24
	strb r1, [r0, #0x13]
	ldr r6, [sp]
	ldrb r6, [r6, #4]
	adds r0, r6, r2
	ldrb r1, [r0]
	movs r0, #2
	movs r2, #1
	bl sub_8002B94
_0800CD04:
	ldr r0, [sp]
	movs r1, #4
	bl sub_800B7A8
	movs r1, #0
	movs r0, #0xf0
	ldr r2, [sp]
	strb r0, [r2, #0xd]
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #6
	mov r3, sl
	strb r0, [r3, #6]
	strb r1, [r3, #7]
	b _0800CD40
	.align 2, 0
_0800CD24: .4byte gUnknown_03003A70
_0800CD28:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800CD42
	movs r0, #0x2c
	bl sub_800F3E0
	mov r5, sl
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	strb r4, [r5, #7]
_0800CD40:
	movs r3, #0
_0800CD42:
	ldr r6, _0800CD80
	cmp r3, #0
	beq _0800CD9E
	movs r7, #0
	mov r2, r8
	adds r2, #8
	ldr r0, _0800CD84
	mov sb, r0
	movs r5, #0x10
	ldr r1, _0800CD88
	mov r8, r1
_0800CD58:
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r6, #2]
	movs r4, #0
_0800CD60:
	adds r0, r2, r7
	ldrb r1, [r0]
	movs r0, #2
	str r2, [sp, #8]
	bl sub_8002BD0
	ldr r2, [sp, #8]
	cmp r0, #0
	beq _0800CD8C
	strh r5, [r6]
	mov r3, sb
	strh r3, [r6, #2]
	mov r0, r8
	strh r0, [r6, #4]
	b _0800CD92
	.align 2, 0
_0800CD80: .4byte gUnknown_03002C30
_0800CD84: .4byte 0x00008030
_0800CD88: .4byte 0x0000B2A0
_0800CD8C:
	adds r4, #1
	cmp r4, #3
	bls _0800CD60
_0800CD92:
	adds r6, #8
	adds r5, #0x1e
	adds r7, #1
	cmp r7, #3
	bls _0800CD58
	b _0800D242
_0800CD9E:
	movs r7, #0
	movs r0, #0x96
	lsls r0, r0, #1
_0800CDA4:
	strh r0, [r6, #2]
	adds r6, #8
	adds r7, #1
	cmp r7, #3
	bls _0800CDA4
	b _0800D242
_0800CDB0:
	ldr r3, _0800CE2C
	mov r1, sl
	ldrb r1, [r1, #7]
	cmp r1, #0xc
	bhi _0800CDE6
	adds r6, r3, #0
	subs r6, #0x68
	movs r7, #0
	movs r2, #4
_0800CDC2:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_0800CDC8:
	ldrh r0, [r6]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800CDC8
	adds r7, #1
	cmp r7, #3
	bls _0800CDC2
	mov r2, sl
	ldrb r0, [r2, #7]
	adds r0, #1
	strb r0, [r2, #7]
_0800CDE6:
	adds r6, r3, #0
	ldrh r0, [r6, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	adds r0, #9
	ldr r1, _0800CE30
	ands r0, r1
	strh r0, [r6, #2]
	cmp r0, #0x77
	bls _0800CE22
	movs r0, #0x78
	strh r0, [r6, #2]
	ldr r0, [sp]
	movs r1, #0xb
	bl sub_800B7A8
	movs r0, #2
	ldr r3, [sp]
	strb r0, [r3, #0xc]
	movs r0, #0xe0
	strb r0, [r3, #0xd]
	movs r0, #0x10
	strb r0, [r3, #0xe]
	movs r0, #0
	strb r0, [r3, #0xf]
	mov r1, sl
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_0800CE22:
	ldrh r2, [r6, #2]
	orrs r5, r2
	strh r5, [r6, #2]
	b _0800D242
	.align 2, 0
_0800CE2C: .4byte gUnknown_03002CB8
_0800CE30: .4byte 0x000001FF
_0800CE34:
	mov r3, sl
	ldrb r3, [r3, #7]
	cmp r3, #0xc
	bhi _0800CE66
	ldr r6, _0800CEA8
	movs r7, #0
	movs r2, #4
_0800CE42:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_0800CE48:
	ldrh r0, [r6]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800CE48
	adds r7, #1
	cmp r7, #3
	bls _0800CE42
	mov r5, sl
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
_0800CE66:
	ldr r6, [sp]
	ldrb r0, [r6, #0xe]
	cmp r0, #8
	bls _0800CE72
	subs r0, #1
	strb r0, [r6, #0xe]
_0800CE72:
	ldr r0, [sp]
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _0800CE7C
	b _0800D242
_0800CE7C:
	mov r2, sl
	ldrb r2, [r2, #7]
	cmp r2, #0xc
	bhi _0800CE86
	b _0800D242
_0800CE86:
	movs r0, #0x82
	lsls r0, r0, #1
	mov r3, sl
	str r0, [r3, #4]
	movs r0, #1
	ldr r5, [sp]
	ldrb r5, [r5, #0xa]
	lsls r0, r5
	ldr r6, [sp]
	ldrb r6, [r6, #7]
	adds r0, r6, r0
	ldr r2, [sp]
	strb r0, [r2, #7]
	movs r0, #8
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	b _0800D242
	.align 2, 0
_0800CEA8: .4byte gUnknown_03002C50
_0800CEAC:
	mov r0, sl
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800CEB8
	b _0800D29C
_0800CEB8:
	ldr r1, _0800CF24
	movs r0, #8
	ldrh r3, [r1, #2]
	ands r0, r3
	adds r2, r1, #0
	ldr r5, _0800CF28
	mov r8, r5
	cmp r0, #0
	beq _0800CF48
	mov r5, sl
	adds r5, #0xb4
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800CF48
	movs r0, #5
	mov r6, r8
	ldrh r6, [r6]
	ands r0, r6
	cmp r0, #0
	beq _0800CF48
	bl sub_800F454
	ldr r1, _0800CF2C
	ldr r0, _0800CF30
	str r0, [r1]
	ldr r2, _0800CF34
	str r2, [r1, #4]
	ldr r0, _0800CF38
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800CF3C
	str r4, [r1]
	ldr r0, _0800CF40
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800CF44
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	mov r1, sl
	str r0, [r1, #8]
	movs r0, #0xa
	str r0, [r1, #4]
	b _0800D29C
	.align 2, 0
_0800CF24: .4byte gUnknown_03003720
_0800CF28: .4byte gUnknown_03003A70
_0800CF2C: .4byte 0x040000D4
_0800CF30: .4byte gOamObjects
_0800CF34: .4byte gSaveDataBuffer+0x750
_0800CF38: .4byte 0x80000200
_0800CF3C: .4byte gUnknown_03003730
_0800CF40: .4byte 0xFFFFF8E4
_0800CF44: .4byte 0x800000D0
_0800CF48:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800CF88
	mov r0, sl
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800CF88
	movs r0, #5
	mov r2, r8
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _0800CF88
	movs r0, #0x31
	bl sub_800F3E0
	ldr r0, _0800CF84
	ldr r0, [r0]
	mov r3, sl
	str r0, [r3, #8]
	movs r0, #7
	str r0, [r3, #4]
	b _0800D29C
	.align 2, 0
_0800CF84: .4byte gUnknown_03003730+0x4
_0800CF88:
	ldr r5, _0800D080
	mov r6, sl
	ldrb r6, [r6, #7]
	cmp r6, #0xc
	bhi _0800CFBE
	adds r6, r5, #0
	movs r7, #0
	movs r3, #4
_0800CF98:
	movs r4, #0
	adds r2, r7, #1
	subs r0, r3, r7
	lsls r1, r0, #1
_0800CFA0:
	ldrh r0, [r6]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800CFA0
	adds r7, r2, #0
	cmp r7, #3
	bls _0800CF98
	mov r1, sl
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
_0800CFBE:
	mov r0, r8
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800CFCA
	b _0800D242
_0800CFCA:
	ldr r6, _0800D084
	movs r0, #0xfe
	lsls r0, r0, #8
	ldrh r2, [r6, #2]
	ands r0, r2
	strh r0, [r6, #2]
	ldr r3, _0800D088
	mov r8, r3
	ldrb r1, [r3]
	adds r0, r1, #0
	ldr r3, [sp]
	adds r3, #0x10
	cmp r0, #0xff
	beq _0800D012
	mov r0, sl
	adds r0, #0x8c
	ldrb r2, [r0]
	ldr r4, _0800D08C
_0800CFEE:
	cmp r2, r1
	bne _0800D004
	ldrb r0, [r4]
	mov r6, r8
	ldrb r6, [r6, #1]
	cmp r0, r6
	bne _0800D004
	mov r0, r8
	ldrb r0, [r0, #3]
	cmp r0, #1
	beq _0800D012
_0800D004:
	movs r1, #0x14
	add r8, r1
	mov r6, r8
	ldrb r1, [r6]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800CFEE
_0800D012:
	adds r6, r5, #0
	mov r1, r8
	adds r1, #4
	movs r7, #0
	mov r8, r3
_0800D01C:
	lsls r0, r7, #0xb
	ldr r2, _0800D090
	adds r3, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800D0A4
	movs r0, #1
	mov r5, r8
	strb r0, [r5]
	ldrb r0, [r1]
	lsls r5, r0, #0xb
	ldr r2, _0800D094
	adds r5, r5, r2
	ldr r0, _0800D098
	str r5, [r0]
	str r3, [r0, #4]
	ldr r0, _0800D09C
	ldr r2, _0800D098
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r4, #0
	lsls r0, r7, #2
	adds r2, r1, #1
	movs r3, #0x81
	lsls r3, r3, #7
	adds r3, r3, r0
	mov ip, r3
	movs r3, #0xd0
	lsls r3, r3, #1
	lsls r5, r7, #6
	str r5, [sp, #0x10]
	movs r0, #0x90
	lsls r0, r0, #8
	mov sb, r0
	ldr r1, _0800D0A0
_0800D062:
	mov r5, ip
	strh r5, [r6]
	strh r1, [r6, #2]
	ldr r5, [sp, #0x10]
	adds r0, r3, r5
	mov r5, sb
	orrs r0, r5
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r1, #0x40
	adds r4, #1
	cmp r4, #1
	bls _0800D062
	b _0800D0BA
	.align 2, 0
_0800D080: .4byte gUnknown_03002C50
_0800D084: .4byte gUnknown_03002CB8
_0800D088: .4byte gUnknown_030028A0
_0800D08C: .4byte gUnknown_0300084E
_0800D090: .4byte 0x06013400
_0800D094: .4byte gUnknown_0820816C
_0800D098: .4byte 0x040000D4
_0800D09C: .4byte 0x80000400
_0800D0A0: .4byte 0x0000C038
_0800D0A4:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r6, #2]
	adds r6, #8
	adds r5, r3, #0
	strh r5, [r6, #2]
	adds r6, #8
	adds r2, r1, #1
_0800D0BA:
	adds r1, r2, #0
	movs r0, #1
	add r8, r0
	adds r7, #1
	cmp r7, #3
	bls _0800D01C
	ldr r0, _0800D0E8
	movs r1, #4
	bl sub_800B7A8
	movs r0, #0
	movs r1, #1
	ldr r2, _0800D0E8
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xf]
	mov r3, sl
	ldrb r1, [r3, #6]
	adds r1, #1
	strb r1, [r3, #6]
	strb r0, [r3, #7]
	b _0800D242
	.align 2, 0
_0800D0E8: .4byte gUnknown_03003A50
_0800D0EC:
	mov r5, sl
	ldrb r5, [r5, #7]
	cmp r5, #0xc
	bhi _0800D11C
	ldr r6, _0800D13C
	movs r7, #0
	movs r2, #4
_0800D0FA:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_0800D100:
	ldrh r3, [r6]
	subs r0, r3, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800D100
	adds r7, #1
	cmp r7, #3
	bls _0800D0FA
	mov r5, sl
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
_0800D11C:
	ldr r6, [sp]
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	beq _0800D126
	b _0800D242
_0800D126:
	mov r0, sl
	ldrb r0, [r0, #7]
	cmp r0, #0xc
	bhi _0800D130
	b _0800D242
_0800D130:
	movs r0, #3
	mov r2, sl
	strb r0, [r2, #6]
	strb r1, [r2, #7]
	b _0800D242
	.align 2, 0
_0800D13C: .4byte gUnknown_03002C50
_0800D140:
	ldr r3, _0800D1F0
	mov r8, r3
	ldrb r1, [r3]
	adds r0, r1, #0
	ldr r5, _0800D1F4
	ldr r3, [sp]
	adds r3, #0x10
	cmp r0, #0xff
	beq _0800D17E
	mov r0, sl
	adds r0, #0x8c
	ldrb r2, [r0]
	ldr r4, _0800D1F8
_0800D15A:
	cmp r2, r1
	bne _0800D170
	ldrb r0, [r4]
	mov r6, r8
	ldrb r6, [r6, #1]
	cmp r0, r6
	bne _0800D170
	mov r0, r8
	ldrb r0, [r0, #3]
	cmp r0, #1
	beq _0800D17E
_0800D170:
	movs r1, #0x14
	add r8, r1
	mov r6, r8
	ldrb r1, [r6]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800D15A
_0800D17E:
	adds r6, r5, #0
	mov r1, r8
	adds r1, #4
	movs r7, #0
	mov r8, r3
	movs r0, #0
	str r0, [sp, #4]
_0800D18C:
	lsls r0, r7, #0xb
	ldr r2, _0800D1FC
	adds r3, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800D214
	movs r0, #1
	mov r5, r8
	strb r0, [r5]
	ldrb r0, [r1]
	lsls r5, r0, #0xb
	ldr r2, _0800D200
	adds r5, r5, r2
	ldr r0, _0800D204
	str r5, [r0]
	str r3, [r0, #4]
	ldr r0, _0800D208
	ldr r2, _0800D204
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r4, #0
	adds r2, r1, #1
	ldr r3, [sp, #4]
	ldr r5, _0800D20C
	adds r3, r3, r5
	mov ip, r3
	movs r3, #0xd0
	lsls r3, r3, #1
	lsls r0, r7, #6
	str r0, [sp, #0x10]
	movs r1, #0x90
	lsls r1, r1, #8
	mov sb, r1
	ldr r1, _0800D210
_0800D1D0:
	mov r5, ip
	strh r5, [r6]
	strh r1, [r6, #2]
	ldr r5, [sp, #0x10]
	adds r0, r3, r5
	mov r5, sb
	orrs r0, r5
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r1, #0x40
	adds r4, #1
	cmp r4, #1
	bls _0800D1D0
	b _0800D22A
	.align 2, 0
_0800D1F0: .4byte gUnknown_030028A0
_0800D1F4: .4byte gUnknown_03002C50
_0800D1F8: .4byte gUnknown_0300084E
_0800D1FC: .4byte 0x06013400
_0800D200: .4byte gUnknown_0820816C
_0800D204: .4byte 0x040000D4
_0800D208: .4byte 0x80000400
_0800D20C: .4byte 0x00004018
_0800D210: .4byte 0x0000C038
_0800D214:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r6, #2]
	adds r6, #8
	adds r5, r3, #0
	strh r5, [r6, #2]
	adds r6, #8
	adds r2, r1, #1
_0800D22A:
	adds r1, r2, #0
	movs r0, #1
	add r8, r0
	ldr r2, [sp, #4]
	adds r2, #0x1e
	str r2, [sp, #4]
	adds r7, #1
	cmp r7, #3
	bls _0800D18C
	movs r0, #3
	mov r3, sl
	strb r0, [r3, #6]
_0800D242:
	ldr r6, _0800D270
	movs r7, #0
_0800D246:
	ldr r5, [sp]
	ldrb r5, [r5, #4]
	cmp r7, r5
	bne _0800D278
	movs r4, #0
	adds r2, r7, #1
	ldr r3, _0800D274
	movs r0, #0x90
	lsls r0, r0, #8
	adds r1, r0, #0
_0800D25A:
	adds r0, r3, #0
	ldrh r5, [r6, #4]
	ands r0, r5
	adds r0, r0, r1
	strh r0, [r6, #4]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800D25A
	b _0800D296
	.align 2, 0
_0800D270: .4byte gUnknown_03002C50
_0800D274: .4byte 0x00000FFF
_0800D278:
	movs r4, #0
	adds r2, r7, #1
	ldr r3, _0800D2AC
	movs r0, #0xa0
	lsls r0, r0, #8
	adds r1, r0, #0
_0800D284:
	adds r0, r3, #0
	ldrh r5, [r6, #4]
	ands r0, r5
	adds r0, r0, r1
	strh r0, [r6, #4]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800D284
_0800D296:
	adds r7, r2, #0
	cmp r7, #3
	bls _0800D246
_0800D29C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D2AC: .4byte 0x00000FFF

	THUMB_FUNC_START sub_800D2B0
sub_800D2B0: @ 0x0800D2B0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldrb r0, [r6, #6]
	cmp r0, #4
	bls _0800D2BE
	b _0800D3C0
_0800D2BE:
	lsls r0, r0, #2
	ldr r1, _0800D2C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D2C8: .4byte _0800D2CC
_0800D2CC: @ jump table
	.4byte _0800D2E0 @ case 0
	.4byte _0800D2F6 @ case 1
	.4byte _0800D314 @ case 2
	.4byte _0800D378 @ case 3
	.4byte _0800D398 @ case 4
_0800D2E0:
	ldrb r0, [r4, #0xe]
	cmp r0, #0xf
	bhi _0800D2EA
	adds r0, #1
	strb r0, [r4, #0xe]
_0800D2EA:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r4, [r4, #0xe]
	cmp r4, #0xf
	bls _0800D3C0
	b _0800D390
_0800D2F6:
	ldrb r4, [r4, #0xd]
	cmp r4, #0xe0
	bne _0800D3C0
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	ldr r0, _0800D30C
	ldr r0, [r0]
	str r0, [r6, #8]
	ldr r0, _0800D310
	b _0800D3BE
	.align 2, 0
_0800D30C: .4byte gUnknown_03003730+0x4
_0800D310: .4byte gSaveDataBuffer+0x7
_0800D314:
	ldrb r0, [r4, #0xd]
	cmp r0, #0xe0
	bne _0800D3C0
	ldr r0, _0800D36C
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D3C0
	ldr r1, _0800D370
	movs r5, #0
	ldr r0, _0800D374
	mov ip, r0
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r7, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_0800D338:
	mov r0, ip
	strh r0, [r1]
	adds r0, r3, r7
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r5, #1
	cmp r5, #3
	bls _0800D338
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800B7A8
	movs r0, #0xe0
	strb r0, [r4, #0xd]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	b _0800D3BA
	.align 2, 0
_0800D36C: .4byte gUnknown_03003A70
_0800D370: .4byte gUnknown_03002CA8
_0800D374: .4byte 0x000040E0
_0800D378:
	adds r0, r4, #0
	movs r1, #7
	bl sub_800B7A8
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xe0
	strb r0, [r4, #0xd]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
_0800D390:
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	b _0800D3C0
_0800D398:
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	bls _0800D3A2
	subs r0, #1
	strb r0, [r4, #0xe]
_0800D3A2:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _0800D3C0
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	movs r0, #1
	ldrb r1, [r4, #0xa]
	lsls r0, r1
	ldrb r1, [r4, #7]
	adds r0, r1, r0
	strb r0, [r4, #7]
_0800D3BA:
	movs r0, #0x82
	lsls r0, r0, #1
_0800D3BE:
	str r0, [r6, #4]
_0800D3C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_800D3C8
sub_800D3C8: @ 0x0800D3C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	ldr r4, _0800D3E4
	ldrb r0, [r3, #0xc]
	cmp r0, #4
	bhi _0800D4C0
	lsls r0, r0, #2
	ldr r1, _0800D3E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D3E4: .4byte gUnknown_03002CA8
_0800D3E8: .4byte _0800D3EC
_0800D3EC: @ jump table
	.4byte _0800D400 @ case 0
	.4byte _0800D47A @ case 1
	.4byte _0800D494 @ case 2
	.4byte _0800D4AA @ case 3
	.4byte _0800D4C0 @ case 4
_0800D400:
	movs r5, #0
	movs r0, #0x80
	lsls r0, r0, #7
	mov ip, r0
	movs r1, #0xff
	lsls r1, r1, #8
	mov r8, r1
	movs r6, #0xaa
	lsls r6, r6, #7
	movs r7, #0
_0800D414:
	ldrb r0, [r3, #0xa]
	cmp r0, r5
	bne _0800D436
	mov r0, ip
	strh r0, [r4]
	ldrb r2, [r3, #0xe]
	adds r2, #0xf0
	movs r0, #0xff
	ands r2, r0
	mov r1, ip
	adds r0, r2, r1
	strh r0, [r4]
	movs r1, #0xca
	lsls r1, r1, #7
	adds r0, r7, r1
	strh r0, [r4, #4]
	b _0800D46C
_0800D436:
	ldrb r0, [r3, #0xb]
	cmp r0, r5
	bne _0800D450
	mov r0, r8
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldrb r1, [r3, #0xd]
	orrs r0, r1
	strh r0, [r4]
	ldrb r1, [r3, #0xf]
	adds r0, r1, r0
	b _0800D468
_0800D450:
	ldrb r0, [r3, #7]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D46A
	mov r0, r8
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldrb r1, [r3, #0xd]
	orrs r0, r1
_0800D468:
	strh r0, [r4]
_0800D46A:
	strh r6, [r4, #4]
_0800D46C:
	adds r4, #8
	adds r6, #0x20
	adds r7, #0x20
	adds r5, #1
	cmp r5, #3
	bls _0800D414
	b _0800D526
_0800D47A:
	ldrb r5, [r3, #0xa]
	lsls r0, r5, #3
	adds r4, r4, r0
	lsls r0, r5, #5
	movs r7, #0xca
	lsls r7, r7, #7
	adds r0, r0, r7
	strh r0, [r4, #4]
	movs r0, #0xe0
	strb r0, [r3, #0xd]
	ldrb r0, [r3, #0xc]
	adds r0, #1
	b _0800D4BE
_0800D494:
	ldrb r0, [r3, #0xd]
	adds r0, #2
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bls _0800D4C0
	movs r0, #0xf0
	strb r0, [r3, #0xd]
	movs r0, #0
	b _0800D4BE
_0800D4AA:
	ldrb r0, [r3, #0xd]
	subs r0, #2
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe0
	bhi _0800D4C0
	movs r0, #0xe0
	strb r0, [r3, #0xd]
	movs r0, #4
_0800D4BE:
	strb r0, [r3, #0xc]
_0800D4C0:
	ldr r2, _0800D4FC
	adds r0, r2, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #0xd8
	adds r0, r0, r1
	ldrb r5, [r0]
	ldrh r2, [r2, #0x28]
	cmp r5, r2
	beq _0800D4DC
	movs r0, #0x40
	strb r0, [r3, #0xe]
_0800D4DC:
	movs r5, #0
	movs r6, #0xff
	lsls r6, r6, #8
_0800D4E2:
	ldrb r0, [r3, #7]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D500
	adds r0, r6, #0
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldrb r7, [r3, #0xd]
	orrs r0, r7
	b _0800D51C
	.align 2, 0
_0800D4FC: .4byte gUnknown_03003730
_0800D500:
	ldrb r0, [r3, #0xa]
	cmp r0, r5
	bne _0800D51E
	adds r0, r6, #0
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #1
	ldrb r7, [r3, #0xe]
	subs r2, r1, r7
	movs r1, #0xff
	ands r2, r1
	adds r0, r0, r2
_0800D51C:
	strh r0, [r4]
_0800D51E:
	adds r4, #8
	adds r5, #1
	cmp r5, #3
	bls _0800D4E2
_0800D526:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800D530
sub_800D530: @ 0x0800D530
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0800D570
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	cmp r1, #0
	beq _0800D5A4
	ldr r0, _0800D574
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800D5A4
	ldrh r0, [r5, #0x28]
	bl sub_8002224
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0800D5A4
	ldr r0, _0800D578
	movs r1, #0x34
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0800D588
	ldr r0, _0800D57C
	strh r0, [r4]
	ldr r0, _0800D580
	strh r0, [r4, #2]
	ldr r0, _0800D584
	b _0800D5A2
	.align 2, 0
_0800D570: .4byte gUnknown_03002CC8
_0800D574: .4byte gUnknown_03003A70
_0800D578: .4byte gUnknown_03003730
_0800D57C: .4byte 0x00004020
_0800D580: .4byte 0x000080D0
_0800D584: .4byte 0x00007188
_0800D588:
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0xf0
	beq _0800D594
	cmp r0, #0x78
	bne _0800D5A4
_0800D594:
	ldr r0, _0800D5AC
	strh r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r4, #2]
	movs r0, #0xe3
	lsls r0, r0, #7
_0800D5A2:
	strh r0, [r4, #4]
_0800D5A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D5AC: .4byte 0x00004020

	THUMB_FUNC_START sub_800D5B0
sub_800D5B0: @ 0x0800D5B0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrh r1, [r4]
	cmp r1, #0x77
	bhi _0800D5C8
	ldr r3, _0800D5C4
	ldrh r0, [r3, #0x34]
	adds r1, r1, r0
	b _0800D5D0
	.align 2, 0
_0800D5C4: .4byte gUnknown_03003730
_0800D5C8:
	ldr r3, _0800D614
	ldrh r0, [r3, #0x34]
	adds r1, r1, r0
	adds r1, #0xc
_0800D5D0:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0800D618
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldrh r3, [r3, #0x36]
	ldrh r4, [r4, #2]
	adds r1, r3, r4
	lsls r1, r1, #0x10
	ldr r2, _0800D61C
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r1, _0800D618
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x41
	bl sub_8002BD0
	cmp r0, #0
	bne _0800D624
	movs r0, #0x19
	b _0800D66C
	.align 2, 0
_0800D614: .4byte gUnknown_03003730
_0800D618: .4byte 0xFFFF0000
_0800D61C: .4byte 0x0000FFFF
_0800D620:
	ldrh r0, [r4]
	b _0800D66C
_0800D624:
	mov r0, sp
	bl sub_800FC40
	adds r2, r0, #0
	ldr r4, _0800D630
	b _0800D640
	.align 2, 0
_0800D630: .4byte gUnknown_03003AC0
_0800D634:
	cmp r1, #0xfe
	bne _0800D63E
	ldrb r0, [r4, #3]
	cmp r2, r0
	beq _0800D620
_0800D63E:
	adds r4, #0x14
_0800D640:
	ldrb r1, [r4, #2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800D634
	ldr r4, _0800D64C
	b _0800D662
	.align 2, 0
_0800D64C: .4byte gUnknown_03003AC0
_0800D650:
	cmp r1, #0xfe
	beq _0800D660
	adds r1, r4, #4
	mov r0, sp
	bl sub_800FEC8
	cmp r0, #0
	bne _0800D620
_0800D660:
	adds r4, #0x14
_0800D662:
	ldrb r1, [r4, #2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800D650
	movs r0, #0x18
_0800D66C:
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D674
sub_800D674: @ 0x0800D674
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800D6B4
	adds r1, r0, #0
	adds r1, #0x8c
	ldrb r1, [r1]
	lsls r1, r1, #3
	adds r1, r0, r1
	adds r1, #0xdc
	movs r4, #0
	ldr r6, _0800D6B8
	ldr r2, _0800D6BC
	ldr r5, _0800D6C0
_0800D68C:
	lsls r0, r4, #0xb
	ldr r7, _0800D6C4
	adds r3, r0, r7
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800D6A6
	ldrb r7, [r1]
	lsls r0, r7, #0xb
	adds r0, r0, r6
	str r0, [r2]
	str r3, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
_0800D6A6:
	adds r1, #1
	adds r4, #1
	cmp r4, #3
	bls _0800D68C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D6B4: .4byte gUnknown_03003730
_0800D6B8: .4byte gUnknown_081FD96C
_0800D6BC: .4byte 0x040000D4
_0800D6C0: .4byte 0x80000400
_0800D6C4: .4byte 0x06013400

	THUMB_FUNC_START sub_800D6C8
sub_800D6C8: @ 0x0800D6C8
	push {r4, r5, r6, r7, lr}
	ldr r2, _0800D748
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0800D6F6
	ldr r0, _0800D74C
	ldrb r3, [r0]
	ldr r4, _0800D750
_0800D6DA:
	cmp r3, r1
	bne _0800D6EC
	ldrb r0, [r4]
	ldrb r1, [r2, #1]
	cmp r0, r1
	bne _0800D6EC
	ldrb r7, [r2, #3]
	cmp r7, #1
	beq _0800D6F6
_0800D6EC:
	adds r2, #0x14
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800D6DA
_0800D6F6:
	adds r1, r2, #4
	movs r4, #0
	ldr r6, _0800D754
	ldr r2, _0800D758
	ldr r5, _0800D75C
_0800D700:
	lsls r0, r4, #0xb
	ldr r7, _0800D760
	adds r3, r0, r7
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800D71A
	ldrb r7, [r1]
	lsls r0, r7, #0xb
	adds r0, r0, r6
	str r0, [r2]
	str r3, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
_0800D71A:
	adds r1, #1
	adds r4, #1
	cmp r4, #3
	bls _0800D700
	ldr r1, _0800D758
	ldr r0, _0800D764
	str r0, [r1]
	ldr r0, _0800D768
	str r0, [r1, #4]
	ldr r0, _0800D76C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800D770
	str r0, [r1]
	ldr r0, _0800D774
	str r0, [r1, #4]
	ldr r0, _0800D778
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D748: .4byte gUnknown_030028A0
_0800D74C: .4byte gUnknown_03003730+0x8C
_0800D750: .4byte gUnknown_0300084E
_0800D754: .4byte gUnknown_0820816C
_0800D758: .4byte 0x040000D4
_0800D75C: .4byte 0x80000400
_0800D760: .4byte 0x06013400
_0800D764: .4byte gUnknown_08190FC0
_0800D768: .4byte 0x06015400
_0800D76C: .4byte 0x80000100
_0800D770: .4byte gUnknown_081944E0
_0800D774: .4byte 0x05000360
_0800D778: .4byte 0x80000010

	THUMB_FUNC_START sub_800D77C
sub_800D77C: @ 0x0800D77C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov ip, r1
	movs r3, #0
	ldr r0, _0800D820
	mov r8, r0
	mov r2, ip
	adds r2, #0x38
	movs r4, #0xff
	adds r7, r2, #0
_0800D794:
	adds r1, r2, r3
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r3, #1
	cmp r3, #0x1f
	bls _0800D794
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #0x11]
	movs r3, #0
	mov r6, ip
	adds r6, #0x18
	adds r5, #0x8d
	adds r2, r6, #0
	movs r4, #0xff
_0800D7B4:
	adds r1, r2, r3
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r3, #1
	cmp r3, #0x1f
	bls _0800D7B4
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #0x10]
	ldrb r5, [r5]
	lsls r0, r5, #2
	add r0, r8
	ldr r2, [r0]
	movs r3, #0
	ldrb r1, [r2]
	cmp r1, #0xfe
	beq _0800D7F0
	adds r4, r7, #0
_0800D7DA:
	adds r0, r4, r3
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	adds r2, #1
	adds r3, #1
	ldrb r1, [r2]
	cmp r1, #0xfe
	bne _0800D7DA
_0800D7F0:
	adds r2, #1
	movs r3, #0
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0800D816
	adds r4, r6, #0
_0800D7FE:
	adds r0, r4, r3
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	adds r2, #1
	adds r3, #1
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800D7FE
_0800D816:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D820: .4byte gUnknown_0811DC10

	THUMB_FUNC_START sub_800D824
sub_800D824: @ 0x0800D824
	push {lr}
	ldr r1, _0800D84C
	ldr r3, _0800D850
	adds r2, r1, r3
	movs r3, #9
	strh r3, [r2]
	ldr r2, _0800D854
	adds r1, r1, r2
	strh r3, [r1]
	ldr r1, _0800D858
	ldrb r3, [r0, #5]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r1, _0800D85C
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_0800D84C: .4byte gUnknown_03002000
_0800D850: .4byte 0x000004DC
_0800D854: .4byte 0x000004DE
_0800D858: .4byte gUnknown_0811DFA4
_0800D85C: .4byte gUnknown_03002840

	THUMB_FUNC_START sub_800D860
sub_800D860: @ 0x0800D860
	push {lr}
	ldr r1, _0800D878
	ldrb r3, [r0, #5]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r1, _0800D87C
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_0800D878: .4byte gUnknown_0811DFC4
_0800D87C: .4byte gUnknown_03002840

	THUMB_FUNC_START sub_800D880
sub_800D880: @ 0x0800D880
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0800D934
	movs r0, #0
	ldr r3, _0800D938
	ldr r6, _0800D93C
	movs r2, #0
_0800D890:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, r3
	bls _0800D890
	ldrb r0, [r5, #8]
	adds r3, r4, #0
	adds r3, #0x18
	cmp r0, #6
	beq _0800D8C2
	cmp r0, #4
	bne _0800D8C2
	ldrb r0, [r5, #9]
	cmp r0, #5
	bhi _0800D8C2
	ldr r2, _0800D940
	movs r0, #0
	movs r1, #0xaa
	lsls r1, r1, #7
_0800D8B6:
	strh r1, [r2, #4]
	adds r2, #8
	adds r1, #0x20
	adds r0, #1
	cmp r0, #3
	bls _0800D8B6
_0800D8C2:
	ldrb r1, [r5, #8]
	cmp r1, #5
	bne _0800D8D0
	ldr r2, _0800D940
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_0800D8D0:
	ldrb r2, [r5, #7]
	cmp r2, #2
	bne _0800D8DC
	ldr r2, _0800D944
	ldr r0, _0800D948
	strh r0, [r2, #4]
_0800D8DC:
	adds r2, r6, #0
	adds r2, #0x4a
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r7, #0
	movs r1, #0
	ldrh r7, [r2]
	orrs r0, r7
	strh r0, [r2]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r6, #4]
	movs r0, #4
	ldrb r2, [r5, #0x16]
	orrs r0, r2
	strb r0, [r5, #0x16]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	strb r0, [r4, #0xe]
	str r3, [r4, #0x14]
	bl sub_800E914
	ldr r0, [r4, #0x14]
	ldrb r7, [r4, #0xd]
	adds r0, r7, r0
	ldrb r0, [r0]
	bl sub_800EA80
	ldrb r0, [r5, #7]
	cmp r0, #1
	bne _0800D926
	movs r0, #2
	movs r1, #0xc
	bl sub_80024C8
_0800D926:
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #3
	strb r0, [r5, #5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D934: .4byte gUnknown_03000000
_0800D938: .4byte 0x000003FF
_0800D93C: .4byte gUnknown_030038D0
_0800D940: .4byte gUnknown_03002CA8
_0800D944: .4byte gUnknown_03002CC0
_0800D948: .4byte 0x00006560

	THUMB_FUNC_START sub_800D94C
sub_800D94C: @ 0x0800D94C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r3, _0800D99C
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r1, [r3, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800D9A4
	ldr r0, [r5, #0x14]
	ldrb r2, [r5, #0xd]
	adds r0, r2, r0
	ldr r1, _0800D9A0
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _0800D9A4
	bl sub_800F454
	movs r0, #0x2b
	bl sub_800F3E0
	movs r1, #0
	movs r0, #5
	strb r0, [r6, #5]
	strb r1, [r6, #6]
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	b _0800DD78
	.align 2, 0
_0800D99C: .4byte gUnknown_03003720
_0800D9A0: .4byte gUnknown_08018A6C
_0800D9A4:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D9D0
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bls _0800D9D0
	movs r0, #1
	movs r1, #0xc
	bl sub_80024C8
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bls _0800D9FA
	subs r0, r1, #1
	b _0800D9F8
_0800D9D0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800DA74
	ldrb r1, [r5, #0xe]
	cmp r1, #1
	bls _0800DA74
	movs r0, #2
	movs r1, #0xc
	bl sub_80024C8
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5, #0xe]
	cmp r0, r2
	blo _0800D9FA
	movs r0, #0
_0800D9F8:
	strb r0, [r5, #0xd]
_0800D9FA:
	movs r0, #0x36
	bl sub_800F3E0
	movs r0, #1
	strb r0, [r5, #0xf]
	movs r0, #2
	ldrb r3, [r5, #0xc]
	orrs r0, r3
	strb r0, [r5, #0xc]
	ldr r4, _0800DA4C
	ldr r0, _0800DA50
	str r0, [r4]
	ldr r0, _0800DA54
	str r0, [r4, #4]
	ldr r0, _0800DA58
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800DA5C
	str r0, [r4]
	ldr r0, _0800DA60
	str r0, [r4, #4]
	ldr r0, _0800DA64
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r0, r5, #0
	bl sub_800EAF8
	ldr r0, _0800DA68
	str r0, [r4]
	ldr r0, _0800DA6C
	str r0, [r4, #4]
	ldr r0, _0800DA70
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #6
	strb r0, [r6, #5]
	ldrb r0, [r6, #7]
	cmp r0, #1
	bne _0800DA4A
	b _0800DC2E
_0800DA4A:
	b _0800DD6A
	.align 2, 0
_0800DA4C: .4byte 0x040000D4
_0800DA50: .4byte 0x06013C00
_0800DA54: .4byte 0x06001400
_0800DA58: .4byte 0x80000E00
_0800DA5C: .4byte 0x05000220
_0800DA60: .4byte 0x05000020
_0800DA64: .4byte 0x80000010
_0800DA68: .4byte gUnknown_03002C30
_0800DA6C: .4byte 0x07000110
_0800DA70: .4byte 0x8000002C
_0800DA74:
	ldrb r2, [r6, #7]
	cmp r2, #1
	beq _0800DA7C
	b _0800DC8E
_0800DA7C:
	ldrh r3, [r3, #2]
	ands r2, r3
	cmp r2, #0
	bne _0800DA86
	b _0800DC04
_0800DA86:
	movs r0, #0
	bl sub_800EB88
	movs r0, #0
	bl sub_800EBF0
	ldr r2, _0800DAB8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	strh r0, [r2, #8]
	adds r2, r6, #0
	adds r2, #0xb4
	ldr r3, [r2]
	adds r1, r3, #0
	ands r1, r0
	mov sb, r2
	cmp r1, #0
	beq _0800DAC0
	movs r0, #4
	movs r1, #0x12
	bl sub_80024C8
	ldr r0, _0800DABC
	b _0800DBDA
	.align 2, 0
_0800DAB8: .4byte gOamObjects
_0800DABC: .4byte 0x00000707
_0800DAC0:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0800DAD8
	movs r0, #4
	bl sub_8010204
	movs r0, #0x37
	bl sub_800F3E0
	b _0800DAE4
_0800DAD8:
	movs r0, #2
	bl sub_8010204
	movs r0, #0x51
	bl sub_800F3E0
_0800DAE4:
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl sub_80007D8
	ldr r1, _0800DB50
	movs r0, #0xa
	strb r0, [r1, #1]
	ldr r2, _0800DB54
	adds r2, #0x4a
	ldr r1, _0800DB58
	ldrh r3, [r2]
	ands r1, r3
	movs r0, #0
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
	movs r0, #0x1e
	strh r0, [r6, #0x10]
	movs r0, #1
	mov r8, r0
	mov r3, r8
	strb r3, [r6, #0x12]
	mov r3, sb
	ldr r0, [r3]
	mov r3, r8
	orrs r0, r3
	mov r3, sb
	str r0, [r3]
	ldr r0, _0800DB5C
	ands r1, r0
	strh r1, [r2]
	adds r0, r5, #0
	bl sub_800EB6C
	ldr r7, _0800DB60
	ldrh r0, [r7, #0x1e]
	ldr r1, [r5, #0x14]
	ldrb r5, [r5, #0xd]
	adds r1, r5, r1
	ldrb r1, [r1]
	bl sub_800EE20
	adds r4, r0, #0
	cmp r4, #0
	beq _0800DB68
	bl sub_800F4AC
	adds r0, r4, #0
	bl sub_800549C
	ldr r0, _0800DB64
	b _0800DBD6
	.align 2, 0
_0800DB50: .4byte gUnknown_03003AB0
_0800DB54: .4byte gUnknown_030038D0
_0800DB58: .4byte 0x0000FDFF
_0800DB5C: .4byte 0x0000FBFF
_0800DB60: .4byte gUnknown_03003A70
_0800DB64: .4byte 0x00000103
_0800DB68:
	ldrh r5, [r7, #0x1e]
	movs r0, #0x10
	ldrh r1, [r7]
	ands r0, r1
	cmp r0, #0
	beq _0800DB7E
	adds r5, #1
	adds r0, r5, #0
	bl sub_800549C
	b _0800DBC8
_0800DB7E:
	bl sub_8002B40
	movs r4, #3
	ands r4, r0
	cmp r4, #1
	beq _0800DBA8
	cmp r4, #1
	blo _0800DB98
	cmp r4, #2
	beq _0800DBB6
	cmp r4, #3
	beq _0800DBBE
	b _0800DBC4
_0800DB98:
	movs r0, #0x1a
	bl sub_800549C
	adds r0, r7, #0
	adds r0, #0x33
	mov r2, r8
	strb r2, [r0]
	b _0800DBC4
_0800DBA8:
	movs r0, #0x1b
	bl sub_800549C
	adds r0, r7, #0
	adds r0, #0x33
	strb r4, [r0]
	b _0800DBC4
_0800DBB6:
	movs r0, #0x1c
	bl sub_800549C
	b _0800DBC4
_0800DBBE:
	movs r0, #0x1d
	bl sub_800549C
_0800DBC4:
	ldr r0, _0800DBF4
	strh r5, [r0, #0x20]
_0800DBC8:
	ldr r0, _0800DBF4
	ldr r1, _0800DBF8
	ldrh r3, [r0]
	ands r1, r3
	strh r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #1
_0800DBD6:
	str r0, [r6, #8]
	ldr r0, _0800DBFC
_0800DBDA:
	str r0, [r6, #4]
	movs r0, #0
	movs r1, #0
	bl sub_80028B4
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _0800DC00
	ands r0, r1
	mov r2, sb
	str r0, [r2]
	b _0800DD78
	.align 2, 0
_0800DBF4: .4byte gUnknown_03003A70
_0800DBF8: .4byte 0x0000FFEF
_0800DBFC: .4byte 0x00000506
_0800DC00: .4byte 0xFFFFFCFF
_0800DC04:
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800DC2E
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0800DC2E
	movs r0, #0x2c
	bl sub_800F3E0
	movs r0, #4
	movs r1, #0xc
	bl sub_80024C8
	movs r0, #2
	strb r0, [r6, #5]
_0800DC2E:
	ldrb r3, [r6, #8]
	cmp r3, #4
	beq _0800DC3E
	ldr r1, _0800DC6C
	adds r0, r6, #0
	movs r2, #0
	bl sub_800B51C
_0800DC3E:
	ldr r2, _0800DC70
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800DC84
	movs r1, #0x80
	lsls r1, r1, #7
	strh r1, [r2]
	ldr r0, _0800DC74
	strh r0, [r2, #2]
	ldr r0, _0800DC78
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800DC7C
	strh r0, [r2, #2]
	ldr r0, _0800DC80
	strh r0, [r2, #4]
	b _0800DD6A
	.align 2, 0
_0800DC6C: .4byte gUnknown_03003AB0
_0800DC70: .4byte gUnknown_03002CD8
_0800DC74: .4byte 0x000080BA
_0800DC78: .4byte 0x00005590
_0800DC7C: .4byte 0x000080DA
_0800DC80: .4byte 0x00005598
_0800DC84:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	strh r0, [r2, #8]
	b _0800DD6A
_0800DC8E:
	cmp r2, #2
	bne _0800DD30
	ldrh r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DD10
	movs r0, #0x2b
	bl sub_800F3E0
	ldr r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	adds r0, r1, r0
	ldrb r1, [r0]
	adds r0, r6, #0
	bl sub_800EEA4
	adds r4, r0, #0
	bl sub_800549C
	movs r0, #1
	bl sub_800244C
	adds r0, r5, #0
	bl sub_800EB6C
	movs r0, #0
	bl sub_800EB88
	movs r0, #0
	bl sub_800EBF0
	ldr r1, _0800DCFC
	adds r1, #0x4a
	ldr r0, _0800DD00
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	ldr r2, _0800DD04
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	strh r0, [r2, #8]
	ldr r1, _0800DD08
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #8
	strb r0, [r1, #7]
	movs r0, #0xf0
	strb r0, [r1, #0xd]
	ldr r1, _0800DD0C
	ldr r0, [r6, #8]
	str r0, [r1]
	b _0800DD78
	.align 2, 0
_0800DCFC: .4byte gUnknown_030038D0
_0800DD00: .4byte 0x0000FBFF
_0800DD04: .4byte gOamObjects
_0800DD08: .4byte gUnknown_03003A50
_0800DD0C: .4byte gUnknown_03003730+0x4
_0800DD10:
	ands r2, r1
	cmp r2, #0
	beq _0800DD6A
	movs r0, #0x2c
	bl sub_800F3E0
	movs r0, #3
	movs r1, #0xc
	bl sub_80024C8
	ldr r0, _0800DD2C
	str r0, [r6, #8]
	b _0800DD66
	.align 2, 0
_0800DD2C: .4byte 0x00030904
_0800DD30:
	ldrh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DD50
	movs r0, #0x34
	bl sub_800F3E0
	movs r0, #3
	movs r1, #0xc
	bl sub_80024C8
	movs r0, #4
	strb r0, [r5, #0xf]
	b _0800DD68
_0800DD50:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800DD6A
	movs r0, #0x2c
	bl sub_800F3E0
	movs r0, #3
	movs r1, #0xc
	bl sub_80024C8
_0800DD66:
	movs r0, #2
_0800DD68:
	strb r0, [r6, #5]
_0800DD6A:
	ldr r4, _0800DD84
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
_0800DD78:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD84: .4byte gUnknown_03002840

	THUMB_FUNC_START sub_800DD88
sub_800DD88: @ 0x0800DD88
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r5, #7]
	cmp r0, #2
	bne _0800DDBA
	ldrb r1, [r4, #2]
	cmp r1, #8
	bls _0800DDBA
	ldr r3, _0800DE0C
	ldrh r0, [r3, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	adds r0, #0xc
	ldr r1, _0800DE10
	ands r0, r1
	strh r0, [r3, #2]
	cmp r0, #0xb3
	bls _0800DDB4
	movs r0, #0xb4
	strh r0, [r3, #2]
_0800DDB4:
	ldrh r0, [r3, #2]
	orrs r2, r0
	strh r2, [r3, #2]
_0800DDBA:
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800DE04
	movs r0, #4
	ldrb r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0800DDFE
	ldr r1, _0800DE14
	movs r0, #4
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800DDFE
	ldr r1, _0800DE18
	ldr r0, _0800DE1C
	adds r2, r1, r0
	movs r0, #0x20
	strh r0, [r2]
	ldr r0, _0800DE20
	adds r1, r1, r0
	movs r0, #0x21
	strh r0, [r1]
_0800DDFE:
	ldr r1, _0800DE24
	ldr r0, [r5, #8]
	str r0, [r1]
_0800DE04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DE0C: .4byte gUnknown_03002CC0
_0800DE10: .4byte 0x000001FF
_0800DE14: .4byte gUnknown_03003A70
_0800DE18: .4byte gUnknown_03002000
_0800DE1C: .4byte 0x000004DC
_0800DE20: .4byte 0x000004DE
_0800DE24: .4byte gUnknown_03003730+0x4

	THUMB_FUNC_START sub_800DE28
sub_800DE28: @ 0x0800DE28
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r5, #7]
	cmp r0, #2
	bne _0800DE5A
	ldrb r1, [r4, #2]
	cmp r1, #8
	bls _0800DE5A
	ldr r3, _0800DE84
	ldrh r0, [r3, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	subs r0, #0xc
	ldr r1, _0800DE88
	ands r0, r1
	strh r0, [r3, #2]
	cmp r0, #0xff
	bls _0800DE54
	movs r0, #0
	strh r0, [r3, #2]
_0800DE54:
	ldrh r0, [r3, #2]
	orrs r2, r0
	strh r2, [r3, #2]
_0800DE5A:
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800DE7E
	movs r0, #4
	ldrb r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xf]
	strb r0, [r5, #5]
_0800DE7E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DE84: .4byte gUnknown_03002CC0
_0800DE88: .4byte 0x000001FF

	THUMB_FUNC_START sub_800DE8C
sub_800DE8C: @ 0x0800DE8C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800DF2C
	movs r0, #0xfd
	ldrb r1, [r4, #0xc]
	ands r0, r1
	strb r0, [r4, #0xc]
	movs r0, #2
	movs r1, #0xc
	bl sub_80024C8
	movs r1, #1
	strb r1, [r4, #0xf]
	movs r0, #3
	strb r0, [r5, #5]
	ldrb r2, [r4, #0xd]
	ldrb r0, [r4, #0x12]
	strb r0, [r4, #0xd]
	strb r2, [r4, #0x12]
	ldrb r2, [r4, #0xc]
	ands r1, r2
	cmp r1, #0
	beq _0800DF00
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r4, #0xc]
	ldr r1, _0800DEF0
	ldr r0, _0800DEF4
	str r0, [r1]
	ldr r0, _0800DEF8
	str r0, [r1, #4]
	ldr r0, _0800DEFC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r4, #0x10]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x18
	b _0800DF1E
	.align 2, 0
_0800DEF0: .4byte 0x040000D4
_0800DEF4: .4byte gUnknown_081906C0
_0800DEF8: .4byte 0x06013500
_0800DEFC: .4byte 0x80000100
_0800DF00:
	movs r0, #1
	orrs r0, r2
	strb r0, [r4, #0xc]
	ldr r1, _0800DF34
	ldr r0, _0800DF38
	str r0, [r1]
	ldr r0, _0800DF3C
	str r0, [r1, #4]
	ldr r0, _0800DF40
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r4, #0x11]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x38
_0800DF1E:
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r0, r4, r0
	ldrb r0, [r0]
	bl sub_800EA80
_0800DF2C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DF34: .4byte 0x040000D4
_0800DF38: .4byte gUnknown_081908C0
_0800DF3C: .4byte 0x06013500
_0800DF40: .4byte 0x80000100

	THUMB_FUNC_START sub_800DF44
sub_800DF44: @ 0x0800DF44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DF6C
	ldr r0, _0800DF80
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xc]
_0800DF6C:
	ldrb r0, [r5, #6]
	cmp r0, #6
	bls _0800DF74
	b _0800E478
_0800DF74:
	lsls r0, r0, #2
	ldr r1, _0800DF84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DF80: .4byte gUnknown_030038D0
_0800DF84: .4byte _0800DF88
_0800DF88: @ jump table
	.4byte _0800DFA4 @ case 0
	.4byte _0800E1BC @ case 1
	.4byte _0800E1D4 @ case 2
	.4byte _0800E25C @ case 3
	.4byte _0800E3B4 @ case 4
	.4byte _0800E3CC @ case 5
	.4byte _0800E3F4 @ case 6
_0800DFA4:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800DFB0
	b _0800E478
_0800DFB0:
	strb r0, [r4, #0x13]
	ldr r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	adds r0, r1, r0
	ldrb r2, [r0]
	ldr r1, _0800DFE0
	ldr r0, _0800DFE4
	str r0, [r1]
	ldr r0, _0800DFE8
	str r0, [r1, #4]
	ldr r0, _0800DFEC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800DFF0
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0xb
	bhi _0800E054
	lsls r0, r0, #2
	ldr r1, _0800DFF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DFE0: .4byte 0x040000D4
_0800DFE4: .4byte gUnknown_03003730
_0800DFE8: .4byte gSaveDataBuffer+0x34
_0800DFEC: .4byte 0x800000D0
_0800DFF0: .4byte gUnknown_08018A6C
_0800DFF4: .4byte _0800DFF8
_0800DFF8: @ jump table
	.4byte _0800E054 @ case 0
	.4byte _0800E028 @ case 1
	.4byte _0800E02C @ case 2
	.4byte _0800E030 @ case 3
	.4byte _0800E034 @ case 4
	.4byte _0800E038 @ case 5
	.4byte _0800E03C @ case 6
	.4byte _0800E040 @ case 7
	.4byte _0800E044 @ case 8
	.4byte _0800E048 @ case 9
	.4byte _0800E04C @ case 10
	.4byte _0800E050 @ case 11
_0800E028:
	movs r0, #0x1d
	b _0800E052
_0800E02C:
	movs r0, #0x2d
	b _0800E052
_0800E030:
	movs r0, #0x31
	b _0800E052
_0800E034:
	movs r0, #0x3d
	b _0800E052
_0800E038:
	movs r0, #0x39
	b _0800E052
_0800E03C:
	movs r0, #0x5e
	b _0800E052
_0800E040:
	movs r0, #0x57
	b _0800E052
_0800E044:
	movs r0, #0x56
	b _0800E052
_0800E048:
	movs r0, #0x52
	b _0800E052
_0800E04C:
	movs r0, #0x58
	b _0800E052
_0800E050:
	movs r0, #0x59
_0800E052:
	strh r0, [r5, #0x28]
_0800E054:
	ldrh r0, [r5, #0x28]
	bl sub_8001830
	ldr r1, _0800E0BC
	ldr r0, _0800E0C0
	str r0, [r1]
	ldr r2, _0800E0C4
	str r2, [r1, #4]
	ldr r0, _0800E0C8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0800E0CC
	str r3, [r1]
	subs r2, #0xa0
	str r2, [r1, #4]
	ldr r0, _0800E0D0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0
	movs r2, #0xff
_0800E07C:
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
	adds r3, #0x14
	adds r1, #1
	cmp r1, #7
	bls _0800E07C
	ldrb r0, [r5, #8]
	cmp r0, #4
	bne _0800E0E8
	ldr r3, _0800E0D4
	movs r1, #0
	ldr r2, _0800E0D8
	mov r8, r2
	ldr r7, _0800E0DC
	ldr r6, _0800E0E0
	mov ip, r6
	ldr r0, _0800E0E4
	mov sl, r0
	movs r6, #0x80
	lsls r6, r6, #2
	adds r2, r6, #0
_0800E0A8:
	mov r0, sl
	ldrh r6, [r3]
	ands r0, r6
	orrs r0, r2
	strh r0, [r3]
	adds r3, #8
	adds r1, #1
	cmp r1, #3
	bls _0800E0A8
	b _0800E13C
	.align 2, 0
_0800E0BC: .4byte 0x040000D4
_0800E0C0: .4byte gOamObjects
_0800E0C4: .4byte gSaveDataBuffer+0x750
_0800E0C8: .4byte 0x80000200
_0800E0CC: .4byte gUnknown_03003930
_0800E0D0: .4byte 0x80000050
_0800E0D4: .4byte gUnknown_03002CA8
_0800E0D8: .4byte gUnknown_030038D0
_0800E0DC: .4byte gUnknown_03003A70
_0800E0E0: .4byte gSaveDataBuffer
_0800E0E4: .4byte 0x0000FCFF
_0800E0E8:
	cmp r0, #5
	bne _0800E110
	ldr r3, _0800E100
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	ldr r0, _0800E104
	mov r8, r0
	ldr r7, _0800E108
	ldr r1, _0800E10C
	mov ip, r1
	b _0800E13C
	.align 2, 0
_0800E100: .4byte gUnknown_03002CA8
_0800E104: .4byte gUnknown_030038D0
_0800E108: .4byte gUnknown_03003A70
_0800E10C: .4byte gSaveDataBuffer
_0800E110:
	ldr r2, _0800E198
	mov r8, r2
	ldr r7, _0800E19C
	ldr r6, _0800E1A0
	mov ip, r6
	cmp r0, #6
	bne _0800E13C
	ldr r3, _0800E1A4
	ldr r0, _0800E1A8
	adds r1, r0, #0
	ldrh r2, [r3]
	ands r1, r2
	movs r6, #0x80
	lsls r6, r6, #2
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	adds r3, #8
	ldrh r1, [r3]
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
_0800E13C:
	movs r0, #0x80
	lsls r0, r0, #3
	ldrh r7, [r7]
	ands r0, r7
	cmp r0, #0
	beq _0800E150
	ldr r3, _0800E1AC
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
_0800E150:
	ldrb r2, [r5, #0x15]
	mov r0, ip
	adds r0, #0x49
	movs r1, #0
	strb r2, [r0]
	strb r1, [r5, #0x15]
	mov r2, r8
	adds r2, #0x4a
	ldr r0, _0800E1B0
	ldrh r6, [r2]
	ands r0, r6
	ldr r1, _0800E1B4
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xfc
	ldrb r1, [r5, #0x1f]
	ands r0, r1
	strb r0, [r5, #0x1f]
	adds r0, r4, #0
	bl sub_800EB6C
	movs r0, #0
	bl sub_800EB88
	movs r0, #1
	bl sub_800ECA8
	ldr r3, _0800E1B8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	strh r0, [r3, #8]
	ldrb r0, [r5, #6]
	adds r0, #1
	b _0800E476
	.align 2, 0
_0800E198: .4byte gUnknown_030038D0
_0800E19C: .4byte gUnknown_03003A70
_0800E1A0: .4byte gSaveDataBuffer
_0800E1A4: .4byte gUnknown_03002CD8
_0800E1A8: .4byte 0x0000FCFF
_0800E1AC: .4byte gUnknown_03002DE0
_0800E1B0: .4byte 0x0000FDFF
_0800E1B4: .4byte 0x0000FBFF
_0800E1B8: .4byte gOamObjects
_0800E1BC:
	ldrh r0, [r5, #0x28]
	bl sub_8001A9C
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #6]
	adds r0, #1
	b _0800E476
_0800E1D4:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800E1E0
	b _0800E478
_0800E1E0:
	ldr r0, _0800E204
	ldrh r1, [r0, #2]
	ldr r6, _0800E208
	ands r6, r1
	cmp r6, #0
	beq _0800E20C
	movs r0, #0x2c
	bl sub_800F3E0
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #6]
	adds r0, #1
	b _0800E476
	.align 2, 0
_0800E204: .4byte gUnknown_03003720
_0800E208: .4byte 0x00000202
_0800E20C:
	movs r0, #0x81
	ands r0, r1
	cmp r0, #0
	bne _0800E216
	b _0800E478
_0800E216:
	ldr r0, [r4, #0x14]
	ldrb r2, [r4, #0xd]
	adds r0, r2, r0
	ldr r1, _0800E258
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #9
	beq _0800E230
	cmp r0, #2
	beq _0800E230
	b _0800E478
_0800E230:
	movs r0, #0x2b
	bl sub_800F3E0
	ldrb r0, [r4, #0x13]
	adds r0, #1
	strb r0, [r4, #0x13]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0800E246
	strb r6, [r4, #0x13]
_0800E246:
	movs r0, #2
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #6
	b _0800E476
	.align 2, 0
_0800E258: .4byte gUnknown_08018A6C
_0800E25C:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800E268
	b _0800E478
_0800E268:
	ldr r2, _0800E390
	adds r0, r2, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	strh r0, [r5, #0x28]
	adds r0, r2, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	strh r0, [r5, #0x2a]
	adds r0, r2, #0
	adds r0, #0x60
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x2e
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x64
	ldrh r0, [r0]
	strh r0, [r5, #0x30]
	adds r0, r2, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r5, #0x32]
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r5, #0x34]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r5, #0x36]
	adds r0, r2, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r5, #0x38]
	adds r0, r2, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r5, #0x3a]
	adds r0, r2, #0
	adds r0, #0x70
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x71
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x72
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x73
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r2, #0x74]
	str r0, [r5, #0x40]
	movs r1, #0
	adds r3, r2, #0
	adds r3, #0x78
	adds r2, r5, #0
	adds r2, #0x44
_0800E306:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xb
	bls _0800E306
	ldrh r0, [r5, #0x28]
	bl sub_8001830
	ldrh r0, [r5, #0x28]
	bl sub_80020B0
	ldr r3, _0800E390
	adds r0, r3, #0
	adds r0, #0x49
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldr r2, _0800E394
	adds r2, #0x4a
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r6, #0
	movs r4, #0
	ldrh r1, [r2]
	orrs r0, r1
	movs r6, #0x80
	lsls r6, r6, #3
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800E398
	movs r2, #0xea
	lsls r2, r2, #3
	adds r0, r3, r2
	str r0, [r1]
	ldr r0, _0800E39C
	str r0, [r1, #4]
	ldr r0, _0800E3A0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r6, #0xd6
	lsls r6, r6, #3
	adds r3, r3, r6
	str r3, [r1]
	ldr r0, _0800E3A4
	str r0, [r1, #4]
	ldr r0, _0800E3A8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_80074E8
	ldrb r0, [r5, #8]
	cmp r0, #5
	bne _0800E374
	ldr r0, _0800E3AC
	strb r4, [r0, #1]
_0800E374:
	movs r0, #3
	ldrb r1, [r5, #0x1f]
	orrs r0, r1
	strb r0, [r5, #0x1f]
	ldr r4, _0800E3B0
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
	ldrb r0, [r5, #6]
	adds r0, #1
	b _0800E476
	.align 2, 0
_0800E390: .4byte gSaveDataBuffer
_0800E394: .4byte gUnknown_030038D0
_0800E398: .4byte 0x040000D4
_0800E39C: .4byte gOamObjects
_0800E3A0: .4byte 0x80000200
_0800E3A4: .4byte gUnknown_03003930
_0800E3A8: .4byte 0x80000050
_0800E3AC: .4byte gUnknown_03003AB0
_0800E3B0: .4byte gUnknown_03002840
_0800E3B4:
	ldrh r0, [r5, #0x28]
	bl sub_80020B0
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #6]
	adds r0, #1
	b _0800E476
_0800E3CC:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r4, [r0]
	cmp r4, #0
	bne _0800E3E0
	bl sub_800F4D8
	movs r0, #1
	strb r0, [r5, #5]
	strb r4, [r5, #6]
_0800E3E0:
	ldr r4, _0800E3F0
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
	b _0800E478
	.align 2, 0
_0800E3F0: .4byte gUnknown_03002840
_0800E3F4:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800E478
	ldr r0, [r4, #0x14]
	ldrb r2, [r4, #0xd]
	adds r0, r2, r0
	ldr r1, _0800E424
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #2
	bne _0800E43A
	ldrb r0, [r4, #0x13]
	cmp r0, #1
	beq _0800E432
	cmp r0, #1
	bgt _0800E428
	cmp r0, #0
	beq _0800E42E
	b _0800E45C
	.align 2, 0
_0800E424: .4byte gUnknown_08018A6C
_0800E428:
	cmp r0, #2
	beq _0800E436
	b _0800E45C
_0800E42E:
	movs r0, #0x2d
	b _0800E45A
_0800E432:
	movs r0, #0x2e
	b _0800E45A
_0800E436:
	movs r0, #0x30
	b _0800E45A
_0800E43A:
	ldrb r0, [r4, #0x13]
	cmp r0, #1
	beq _0800E454
	cmp r0, #1
	bgt _0800E44A
	cmp r0, #0
	beq _0800E450
	b _0800E45C
_0800E44A:
	cmp r0, #2
	beq _0800E458
	b _0800E45C
_0800E450:
	movs r0, #0x52
	b _0800E45A
_0800E454:
	movs r0, #0x53
	b _0800E45A
_0800E458:
	movs r0, #0x54
_0800E45A:
	strh r0, [r5, #0x28]
_0800E45C:
	ldrh r0, [r5, #0x28]
	bl sub_8001830
	ldrh r0, [r5, #0x28]
	bl sub_8001A9C
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #1
_0800E476:
	strb r0, [r5, #6]
_0800E478:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_800E488
sub_800E488: @ 0x0800E488
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x14]
	ldrb r1, [r1, #0xd]
	adds r0, r1, r0
	ldrb r0, [r0]
	bl sub_800EA80
	movs r0, #3
	strb r0, [r4, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_800E4A4
sub_800E4A4: @ 0x0800E4A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0800E4C4
	mov sb, r0
	ldrb r7, [r5, #6]
	cmp r7, #2
	bgt _0800E4C8
	cmp r7, #1
	bge _0800E5A4
	cmp r7, #0
	beq _0800E4D0
	b _0800E5C6
	.align 2, 0
_0800E4C4: .4byte gUnknown_03002CE8
_0800E4C8:
	cmp r7, #3
	bne _0800E4CE
	b _0800E5CC
_0800E4CE:
	b _0800E5C6
_0800E4D0:
	adds r0, r5, #0
	adds r0, #0x84
	movs r1, #0
	mov r8, r1
	strh r7, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	mov r2, sb
	strh r1, [r2]
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _0800E4EE
	b _0800E6A6
_0800E4EE:
	movs r0, #4
	bl sub_8010204
	movs r0, #0x37
	bl sub_800F3E0
	ldr r1, _0800E574
	movs r0, #6
	strb r0, [r1, #1]
	ldr r0, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r0, r4, r0
	ldr r1, _0800E578
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r0, _0800E57C
	adds r4, r2, r0
	ldr r0, _0800E580
	str r4, [r0]
	ldr r1, _0800E584
	str r1, [r0, #4]
	ldr r1, _0800E588
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E58C
	adds r4, r2, r1
	str r4, [r0]
	ldr r1, _0800E590
	str r1, [r0, #4]
	ldr r1, _0800E594
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x10
	mov r2, sb
	strh r0, [r2]
	ldr r0, _0800E598
	strh r0, [r2, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r2, #4]
	adds r0, r5, #0
	adds r0, #0x7f
	mov r1, r8
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6]
	ldr r1, _0800E59C
	adds r1, #0x4a
	ldr r0, _0800E5A0
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	mov r0, r8
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	mov r1, r8
	strb r1, [r5, #7]
	b _0800E6A6
	.align 2, 0
_0800E574: .4byte gUnknown_03003AB0
_0800E578: .4byte gUnknown_08018A6C
_0800E57C: .4byte gUnknown_081B290C
_0800E580: .4byte 0x040000D4
_0800E584: .4byte 0x05000220
_0800E588: .4byte 0x80000010
_0800E58C: .4byte gUnknown_081B292C
_0800E590: .4byte 0x06011000
_0800E594: .4byte 0x80000400
_0800E598: .4byte 0x0000C058
_0800E59C: .4byte gUnknown_030038D0
_0800E5A0: .4byte 0x0000FDFF
_0800E5A4:
	ldrb r0, [r5, #7]
	cmp r0, #7
	bls _0800E5C2
	movs r0, #3
	movs r1, #1
	movs r2, #6
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #6]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #6]
	strb r1, [r5, #7]
	b _0800E5C6
_0800E5C2:
	adds r0, #1
	strb r0, [r5, #7]
_0800E5C6:
	adds r6, r5, #0
	adds r6, #0x84
	b _0800E6A6
_0800E5CC:
	ldrb r0, [r5, #7]
	cmp r0, #0x37
	bls _0800E68C
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov r2, sb
	strh r1, [r2]
	ldr r2, _0800E610
	strb r0, [r2, #0xe]
	movs r0, #8
	strb r0, [r2, #0xf]
	ldr r0, _0800E614
	adds r0, #0x4a
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	movs r0, #1
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	ldr r6, _0800E618
	ldrh r0, [r6, #0x1e]
	ldr r1, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r1, r4, r1
	ldrb r1, [r1]
	bl sub_800EE20
	cmp r0, #0
	beq _0800E61C
	bl sub_800549C
	b _0800E676
	.align 2, 0
_0800E610: .4byte gUnknown_03003A50
_0800E614: .4byte gUnknown_030038D0
_0800E618: .4byte gUnknown_03003A70
_0800E61C:
	ldrh r4, [r6, #0x1e]
	movs r0, #0x10
	ldrh r6, [r6]
	ands r0, r6
	cmp r0, #0
	beq _0800E632
	adds r4, #1
	adds r0, r4, #0
	bl sub_800549C
	b _0800E66C
_0800E632:
	bl sub_8002B40
	ands r0, r7
	cmp r0, #1
	beq _0800E652
	cmp r0, #1
	blo _0800E64A
	cmp r0, #2
	beq _0800E65A
	cmp r0, #3
	beq _0800E662
	b _0800E668
_0800E64A:
	movs r0, #0x1a
	bl sub_800549C
	b _0800E668
_0800E652:
	movs r0, #0x1b
	bl sub_800549C
	b _0800E668
_0800E65A:
	movs r0, #0x1c
	bl sub_800549C
	b _0800E668
_0800E662:
	movs r0, #0x1d
	bl sub_800549C
_0800E668:
	ldr r0, _0800E680
	strh r4, [r0, #0x20]
_0800E66C:
	ldr r1, _0800E680
	ldr r0, _0800E684
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
_0800E676:
	ldr r1, _0800E688
	ldr r0, [r5, #8]
	str r0, [r1]
	b _0800E740
	.align 2, 0
_0800E680: .4byte gUnknown_03003A70
_0800E684: .4byte 0x0000FFEF
_0800E688: .4byte gUnknown_03003730+0x4
_0800E68C:
	adds r0, #1
	strb r0, [r5, #7]
	adds r1, r5, #0
	adds r1, #0x7f
	ldrb r0, [r1]
	adds r0, #0xc
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x84
	ldrh r1, [r0]
	subs r1, #8
	strh r1, [r0]
	adds r6, r0, #0
_0800E6A6:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #4
	bgt _0800E6B8
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, sb
	strh r0, [r2]
	b _0800E732
_0800E6B8:
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl sub_8002B28
	adds r4, r0, #0
	ldr r2, _0800E74C
	mov r8, r2
	adds r6, r5, #0
	adds r6, #0x7f
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_8002AF8
	ldr r5, _0800E750
	strh r0, [r5, #6]
	ldrb r2, [r6]
	lsls r0, r2, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0xe]
	ldrb r2, [r6]
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x16]
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl sub_8002AF8
	strh r0, [r5, #0x1e]
	movs r0, #0x88
	lsls r0, r0, #1
	mov r2, sb
	strh r0, [r2]
	ldr r0, _0800E754
	strh r0, [r2, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r2, #4]
_0800E732:
	ldr r4, _0800E758
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
_0800E740:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E74C: .4byte gUnknown_08014AF0
_0800E750: .4byte gOamObjects
_0800E754: .4byte 0x0000C058
_0800E758: .4byte gUnknown_03002840

	THUMB_FUNC_START sub_800E75C
sub_800E75C: @ 0x0800E75C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0800E7B4
	movs r0, #0
	ldr r4, _0800E7B8
	ldr r1, _0800E7BC
	movs r3, #0
_0800E76A:
	strh r3, [r2]
	adds r0, #1
	adds r2, #2
	cmp r0, r4
	bls _0800E76A
	adds r1, #0x4a
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	movs r4, #0
	ldrh r2, [r1]
	orrs r0, r2
	strh r0, [r1]
	bl sub_800E914
	adds r0, r5, #0
	adds r0, #0x27
	ldrb r0, [r0]
	bl sub_800EA80
	ldrh r1, [r5, #0x22]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	movs r1, #4
	bl sub_800F71C
	movs r0, #0xf
	bl sub_800F3E0
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	strb r4, [r5, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E7B4: .4byte gUnknown_03000000
_0800E7B8: .4byte 0x000003FF
_0800E7BC: .4byte gUnknown_030038D0

	THUMB_FUNC_START sub_800E7C0
sub_800E7C0: @ 0x0800E7C0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800EAF8
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800E818
	ldr r1, _0800E820
	movs r0, #1
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800E818
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0800E7FA
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x1e
	bl sub_800F71C
	movs r0, #1
	strb r0, [r5, #6]
_0800E7FA:
	ldr r1, _0800E824
	movs r0, #3
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800E818
	movs r0, #0x2b
	bl sub_800F3E0
	movs r0, #3
	movs r1, #0xe
	bl sub_80024C8
	movs r0, #2
	strb r0, [r5, #5]
_0800E818:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E820: .4byte gUnknown_03003A70
_0800E824: .4byte gUnknown_03003720

	THUMB_FUNC_START sub_800E828
sub_800E828: @ 0x0800E828
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800EAF8
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800E892
	ldr r1, _0800E860
	ldr r0, [r5, #8]
	str r0, [r1]
	subs r1, #4
	ldrb r0, [r1, #4]
	cmp r0, #4
	bne _0800E888
	ldrb r1, [r1, #5]
	cmp r1, #6
	bne _0800E868
	ldr r0, _0800E864
	movs r1, #1
	bl sub_800B7A8
	b _0800E888
	.align 2, 0
_0800E860: .4byte gUnknown_03003730+0x4
_0800E864: .4byte gUnknown_03003A50
_0800E868:
	ldrb r5, [r5, #5]
	cmp r5, #8
	bne _0800E87C
	ldr r0, _0800E878
	movs r1, #4
	bl sub_800B7A8
	b _0800E888
	.align 2, 0
_0800E878: .4byte gUnknown_03003A50
_0800E87C:
	cmp r1, #9
	bne _0800E888
	ldr r0, _0800E898
	movs r1, #8
	bl sub_800B7A8
_0800E888:
	ldr r0, _0800E89C
	movs r1, #2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_0800E892:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E898: .4byte gUnknown_03003A50
_0800E89C: .4byte gUnknown_03003A70

	THUMB_FUNC_START sub_800E8A0
sub_800E8A0: @ 0x0800E8A0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0800E8F2
	movs r0, #0
	strb r0, [r4, #9]
	ldrb r0, [r4, #8]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #8]
	ldr r1, _0800E8F8
	ldr r0, _0800E8FC
	ldrb r2, [r4, #8]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r3, _0800E900
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0800E904
	str r0, [r1, #4]
	ldr r2, _0800E908
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800E90C
	ldrb r4, [r4, #8]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0800E910
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_0800E8F2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E8F8: .4byte 0x040000D4
_0800E8FC: .4byte gUnknown_08018DCC
_0800E900: .4byte gUnknown_0818BD40
_0800E904: .4byte 0x06013400
_0800E908: .4byte 0x80000040
_0800E90C: .4byte gUnknown_08018DD0
_0800E910: .4byte 0x06013480

	THUMB_FUNC_START sub_800E914
sub_800E914: @ 0x0800E914
	push {lr}
	movs r0, #1
	movs r1, #0xc
	bl sub_80024C8
	ldr r0, _0800E98C
	ldr r1, _0800E990
	str r1, [r0]
	ldr r1, _0800E994
	str r1, [r0, #4]
	ldr r2, _0800E998
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E99C
	str r1, [r0]
	ldr r1, _0800E9A0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9A4
	str r1, [r0]
	ldr r1, _0800E9A8
	str r1, [r0, #4]
	adds r2, #0xc0
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9AC
	str r1, [r0]
	ldr r1, _0800E9B0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9B4
	str r1, [r0]
	ldr r1, _0800E9B8
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9BC
	str r1, [r0]
	ldr r1, _0800E9C0
	str r1, [r0, #4]
	subs r2, #0xf0
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9C4
	str r1, [r0]
	ldr r1, _0800E9C8
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9CC
	str r1, [r0]
	ldr r1, _0800E9D0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800E98C: .4byte 0x040000D4
_0800E990: .4byte gUnknown_0818BD40
_0800E994: .4byte 0x06013400
_0800E998: .4byte 0x80000040
_0800E99C: .4byte gUnknown_0818BEC0
_0800E9A0: .4byte 0x06013480
_0800E9A4: .4byte gUnknown_0818F4C0
_0800E9A8: .4byte 0x06013800
_0800E9AC: .4byte gUnknown_081904C0
_0800E9B0: .4byte 0x06013A00
_0800E9B4: .4byte gUnknown_081906C0
_0800E9B8: .4byte 0x06013500
_0800E9BC: .4byte gUnknown_081940E0
_0800E9C0: .4byte 0x05000260
_0800E9C4: .4byte gUnknown_08194240
_0800E9C8: .4byte 0x05000280
_0800E9CC: .4byte gUnknown_08186520
_0800E9D0: .4byte 0x05000240

	THUMB_FUNC_START sub_800E9D4
sub_800E9D4: @ 0x0800E9D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800EAF8
	movs r0, #4
	ldrb r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0800EA50
	adds r0, r4, #0
	bl sub_800E8A0
	ldr r1, _0800E9F8
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bls _0800E9FC
	movs r0, #0x30
	b _0800EA00
	.align 2, 0
_0800E9F8: .4byte gOamObjects
_0800E9FC:
	movs r0, #0x80
	lsls r0, r0, #2
_0800EA00:
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #2]
	ldr r0, _0800EA18
	strh r0, [r1, #4]
	adds r1, #8
	ldrb r4, [r4, #0xe]
	cmp r4, #1
	bls _0800EA1C
	movs r0, #0x30
	b _0800EA20
	.align 2, 0
_0800EA18: .4byte 0x000031A0
_0800EA1C:
	movs r0, #0x80
	lsls r0, r0, #2
_0800EA20:
	strh r0, [r1]
	ldr r0, _0800EA3C
	strh r0, [r1, #2]
	ldr r0, _0800EA40
	strh r0, [r1, #4]
	ldr r0, _0800EA44
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0800EA48
	movs r0, #1
	bl sub_800EB88
	b _0800EA7A
	.align 2, 0
_0800EA3C: .4byte 0x000040E0
_0800EA40: .4byte 0x000031A4
_0800EA44: .4byte gUnknown_03003730
_0800EA48:
	movs r0, #1
	bl sub_800EBF0
	b _0800EA7A
_0800EA50:
	ldr r1, _0800EA6C
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
	ldr r0, _0800EA70
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0800EA74
	movs r0, #0
	bl sub_800EB88
	b _0800EA7A
	.align 2, 0
_0800EA6C: .4byte gOamObjects
_0800EA70: .4byte gUnknown_03003730
_0800EA74:
	movs r0, #0
	bl sub_800EBF0
_0800EA7A:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800EA80
sub_800EA80: @ 0x0800EA80
	push {r4, r5, lr}
	ldr r1, _0800EAD0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r3, _0800EAD4
	adds r1, r2, r3
	ldr r4, _0800EAD8
	str r1, [r4]
	ldr r1, _0800EADC
	str r1, [r4, #4]
	ldr r1, _0800EAE0
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	adds r3, #0x20
	adds r1, r2, r3
	str r1, [r4]
	ldr r1, _0800EAE4
	str r1, [r4, #4]
	ldr r1, _0800EAE8
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r1, [r0]
	ldr r5, _0800EAEC
	adds r0, r1, #0
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	ldr r0, _0800EAF0
	str r0, [r4, #4]
	ldr r0, _0800EAF4
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAD0: .4byte gUnknown_08018A6C
_0800EAD4: .4byte gUnknown_081B290C
_0800EAD8: .4byte 0x040000D4
_0800EADC: .4byte 0x05000220
_0800EAE0: .4byte 0x80000010
_0800EAE4: .4byte 0x06015000
_0800EAE8: .4byte 0x80000400
_0800EAEC: .4byte gUnknown_0200AFC0
_0800EAF0: .4byte 0x06013C00
_0800EAF4: .4byte 0x80000A00

	THUMB_FUNC_START sub_800EAF8
sub_800EAF8: @ 0x0800EAF8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _0800EB5C
	movs r0, #0x18
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r1, #2]
	ldrh r2, [r5, #4]
	adds r0, r2, r0
	strh r0, [r1, #2]
	movs r0, #0x94
	lsls r0, r0, #5
	strh r0, [r1, #4]
	adds r1, #8
	movs r3, #0
	movs r6, #0x18
	ldr r4, _0800EB60
	ldr r2, _0800EB64
_0800EB1E:
	strh r6, [r1]
	strh r2, [r1, #2]
	ldrh r7, [r5, #4]
	adds r0, r7, r2
	strh r0, [r1, #2]
	strh r4, [r1, #4]
	adds r1, #8
	adds r4, #0x10
	adds r2, #0x20
	adds r3, #1
	cmp r3, #4
	bls _0800EB1E
	movs r3, #0
	movs r6, #0x38
	ldr r4, _0800EB68
	ldr r2, _0800EB64
_0800EB3E:
	strh r6, [r1]
	strh r2, [r1, #2]
	ldrh r7, [r5, #4]
	adds r0, r7, r2
	strh r0, [r1, #2]
	strh r4, [r1, #4]
	adds r1, #8
	adds r4, #0x10
	adds r2, #0x20
	adds r3, #1
	cmp r3, #4
	bls _0800EB3E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB5C: .4byte gUnknown_03002C30
_0800EB60: .4byte 0x000021E0
_0800EB64: .4byte 0x00008048
_0800EB68: .4byte 0x00002230

	THUMB_FUNC_START sub_800EB6C
sub_800EB6C: @ 0x0800EB6C
	ldr r1, _0800EB84
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #8
	movs r2, #0
_0800EB78:
	strh r0, [r1]
	adds r1, #8
	adds r2, #1
	cmp r2, #9
	bls _0800EB78
	bx lr
	.align 2, 0
_0800EB84: .4byte gUnknown_03002C30

	THUMB_FUNC_START sub_800EB88
sub_800EB88: @ 0x0800EB88
	ldr r2, _0800EBBC
	cmp r0, #0
	beq _0800EBDC
	movs r0, #0x60
	strh r0, [r2]
	ldr r0, _0800EBC0
	strh r0, [r2, #2]
	ldr r0, _0800EBC4
	strh r0, [r2, #4]
	adds r2, #8
	ldr r1, _0800EBC8
	strh r1, [r2]
	ldr r0, _0800EBCC
	strh r0, [r2, #2]
	ldr r0, _0800EBD0
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800EBD4
	strh r0, [r2, #2]
	ldr r0, _0800EBD8
	strh r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	b _0800EBEA
	.align 2, 0
_0800EBBC: .4byte gUnknown_03002C88
_0800EBC0: .4byte 0x000040A0
_0800EBC4: .4byte 0x000041C8
_0800EBC8: .4byte 0x00004060
_0800EBCC: .4byte 0x000080B0
_0800EBD0: .4byte 0x000041A8
_0800EBD4: .4byte 0x000080D0
_0800EBD8: .4byte 0x000041B0
_0800EBDC:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
_0800EBEA:
	strh r0, [r2, #8]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800EBF0
sub_800EBF0: @ 0x0800EBF0
	ldr r3, _0800EC28
	cmp r0, #0
	beq _0800EC94
	ldr r0, _0800EC2C
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EC40
	movs r0, #0x60
	strh r0, [r3]
	ldr r0, _0800EC30
	strh r0, [r3, #2]
	adds r0, #0xf8
	strh r0, [r3, #4]
	adds r3, #8
	ldr r0, _0800EC34
	strh r0, [r3]
	ldr r0, _0800EC38
	strh r0, [r3, #2]
	ldr r0, _0800EC3C
	strh r0, [r3, #4]
	adds r3, #8
	movs r0, #0x80
	lsls r0, r0, #2
	b _0800ECA0
	.align 2, 0
_0800EC28: .4byte gUnknown_03002C88
_0800EC2C: .4byte gUnknown_03003730
_0800EC30: .4byte 0x000040C8
_0800EC34: .4byte 0x00004060
_0800EC38: .4byte 0x000080D8
_0800EC3C: .4byte 0x000041D0
_0800EC40:
	movs r2, #0x60
	strh r2, [r3]
	ldr r0, _0800EC74
	strh r0, [r3, #2]
	ldr r0, _0800EC78
	strh r0, [r3, #4]
	adds r3, #8
	ldr r1, _0800EC7C
	strh r1, [r3]
	ldr r0, _0800EC80
	strh r0, [r3, #2]
	ldr r0, _0800EC84
	strh r0, [r3, #4]
	adds r3, #8
	strh r2, [r3]
	ldr r0, _0800EC88
	strh r0, [r3, #2]
	adds r0, #0xfc
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _0800EC8C
	strh r0, [r3, #2]
	ldr r0, _0800EC90
	strh r0, [r3, #4]
	b _0800ECA4
	.align 2, 0
_0800EC74: .4byte 0x0000408C
_0800EC78: .4byte 0x000041C0
_0800EC7C: .4byte 0x00004060
_0800EC80: .4byte 0x0000809C
_0800EC84: .4byte 0x000041D0
_0800EC88: .4byte 0x000040C8
_0800EC8C: .4byte 0x000080D8
_0800EC90: .4byte 0x000041D8
_0800EC94:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	adds r3, #8
	strh r0, [r3]
	adds r3, #8
_0800ECA0:
	strh r0, [r3]
	strh r0, [r3, #8]
_0800ECA4:
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800ECA8
sub_800ECA8: @ 0x0800ECA8
	ldr r0, _0800ECDC
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, #8
	movs r2, #0x90
	strh r2, [r0]
	ldr r1, _0800ECE0
	strh r1, [r0, #2]
	ldr r1, _0800ECE4
	strh r1, [r0, #4]
	adds r0, #8
	strh r2, [r0]
	subs r1, #0xfc
	strh r1, [r0, #2]
	ldr r1, _0800ECE8
	strh r1, [r0, #4]
	adds r0, #8
	ldr r1, _0800ECEC
	strh r1, [r0]
	ldr r1, _0800ECF0
	strh r1, [r0, #2]
	ldr r1, _0800ECF4
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_0800ECDC: .4byte gUnknown_03002C88
_0800ECE0: .4byte 0x000040B8
_0800ECE4: .4byte 0x000041C4
_0800ECE8: .4byte 0x000041CC
_0800ECEC: .4byte 0x00004090
_0800ECF0: .4byte 0x000080D8
_0800ECF4: .4byte 0x000041D8

	THUMB_FUNC_START sub_800ECF8
sub_800ECF8: @ 0x0800ECF8
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0
	beq _0800ED14
	ldr r3, _0800ED0C
	adds r0, r3, #0
	subs r0, #0x38
	ldrb r1, [r0, #0x11]
	b _0800ED1C
	.align 2, 0
_0800ED0C: .4byte gUnknown_03002878
_0800ED10:
	adds r0, r2, #0
	b _0800ED34
_0800ED14:
	ldr r3, _0800ED3C
	adds r0, r3, #0
	subs r0, #0x18
	ldrb r1, [r0, #0x10]
_0800ED1C:
	movs r2, #0
	cmp r2, r1
	bhs _0800ED30
_0800ED22:
	ldrb r0, [r3]
	cmp r0, r4
	beq _0800ED10
	adds r2, #1
	adds r3, #1
	cmp r2, r1
	blo _0800ED22
_0800ED30:
	movs r0, #1
	rsbs r0, r0, #0
_0800ED34:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800ED3C: .4byte gUnknown_03002858

	THUMB_FUNC_START sub_800ED40
sub_800ED40: @ 0x0800ED40
	ldr r2, _0800ED54
	cmp r0, #0
	beq _0800ED48
	adds r2, #0x20
_0800ED48:
	movs r1, #0
_0800ED4A:
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _0800ED58
	adds r0, r1, #0
	b _0800ED64
	.align 2, 0
_0800ED54: .4byte gUnknown_03002858
_0800ED58:
	adds r1, #1
	adds r2, #1
	cmp r1, #0x1f
	bls _0800ED4A
	movs r0, #1
	rsbs r0, r0, #0
_0800ED64:
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800ED68
sub_800ED68: @ 0x0800ED68
	push {r4, r5, r6, lr}
	sub sp, #4
	mov ip, r0
	ldr r4, _0800EE0C
	ldr r1, _0800EE10
	mov r3, ip
	adds r3, #0x38
	str r3, [r1]
	str r4, [r1, #4]
	ldr r0, _0800EE14
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r5, _0800EE18
	adds r0, r5, #0
	strh r0, [r2]
	str r2, [r1]
	str r3, [r1, #4]
	ldr r0, _0800EE1C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	mov r6, ip
	strb r0, [r6, #0x11]
	movs r2, #0
_0800ED9A:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0800EDB4
	mov r5, ip
	ldrb r5, [r5, #0x11]
	adds r0, r5, r3
	strb r1, [r0]
	mov r6, ip
	ldrb r0, [r6, #0x11]
	adds r0, #1
	strb r0, [r6, #0x11]
_0800EDB4:
	adds r2, #1
	cmp r2, #0x1f
	bls _0800ED9A
	ldr r1, _0800EE10
	mov r3, ip
	adds r3, #0x18
	str r3, [r1]
	str r4, [r1, #4]
	ldr r0, _0800EE14
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r5, _0800EE18
	adds r0, r5, #0
	strh r0, [r2]
	str r2, [r1]
	str r3, [r1, #4]
	ldr r0, _0800EE1C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	mov r6, ip
	strb r0, [r6, #0x10]
	movs r2, #0
_0800EDE4:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0800EDFE
	mov r5, ip
	ldrb r5, [r5, #0x10]
	adds r0, r5, r3
	strb r1, [r0]
	mov r6, ip
	ldrb r0, [r6, #0x10]
	adds r0, #1
	strb r0, [r6, #0x10]
_0800EDFE:
	adds r2, #1
	cmp r2, #0x1f
	bls _0800EDE4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE0C: .4byte gUnknown_0200AFC0
_0800EE10: .4byte 0x040000D4
_0800EE14: .4byte 0x80000010
_0800EE18: .4byte 0x0000FFFF
_0800EE1C: .4byte 0x81000010

	THUMB_FUNC_START sub_800EE20
sub_800EE20: @ 0x0800EE20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _0800EE6C
	ldr r1, _0800EE70
	adds r1, #0x8d
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r0, _0800EE74
	ldrh r1, [r4]
	cmp r1, r0
	beq _0800EE8C
	ldr r5, _0800EE78
	mov r8, r0
_0800EE44:
	ldrb r0, [r4, #6]
	cmp r0, #0xff
	beq _0800EE56
	adds r1, r0, #0
	movs r0, #0
	bl sub_8002BD0
	cmp r0, #0
	beq _0800EE84
_0800EE56:
	ldrh r0, [r4]
	cmp r0, r7
	bne _0800EE84
	ldrh r0, [r4, #2]
	cmp r0, r6
	bne _0800EE84
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0800EE7C
	movs r0, #0
	b _0800EE7E
	.align 2, 0
_0800EE6C: .4byte gUnknown_0811DC54
_0800EE70: .4byte gUnknown_03003730
_0800EE74: .4byte 0x0000FFFF
_0800EE78: .4byte gUnknown_03003A70+0x33
_0800EE7C:
	movs r0, #1
_0800EE7E:
	strb r0, [r5]
	ldrh r0, [r4, #4]
	b _0800EE96
_0800EE84:
	adds r4, #8
	ldrh r0, [r4]
	cmp r0, r8
	bne _0800EE44
_0800EE8C:
	ldr r0, _0800EEA0
	adds r0, #0x33
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
_0800EE96:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800EEA0: .4byte gUnknown_03003A70

	THUMB_FUNC_START sub_800EEA4
sub_800EEA4: @ 0x0800EEA4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r0, _0800EEE4
	adds r1, r3, #0
	adds r1, #0x8d
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r1, #6]
	ldrb r0, [r1, #3]
	cmp r0, #0xff
	beq _0800EEF4
	ldr r0, _0800EEE8
	ldrb r4, [r0]
_0800EEC4:
	ldrb r0, [r1, #2]
	cmp r4, r0
	bne _0800EEEC
	adds r0, r3, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	ldrb r6, [r1]
	cmp r0, r6
	bne _0800EEEC
	ldrh r2, [r1, #6]
	ldrb r0, [r1, #1]
	cmp r5, r0
	bne _0800EEEC
	ldrh r0, [r1, #4]
	b _0800EEF6
	.align 2, 0
_0800EEE4: .4byte gUnknown_0811DC98
_0800EEE8: .4byte gUnknown_0300084E
_0800EEEC:
	adds r1, #8
	ldrb r0, [r1, #3]
	cmp r0, #0xff
	bne _0800EEC4
_0800EEF4:
	adds r0, r2, #0
_0800EEF6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800EEFC
sub_800EEFC: @ 0x0800EEFC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800EF18
	adds r0, #0x7d
	ldrb r0, [r0]
	adds r2, r5, #0
	cmp r0, #6
	bls _0800EF0E
	b _0800F0DA
_0800EF0E:
	lsls r0, r0, #2
	ldr r1, _0800EF1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800EF18: .4byte gUnknown_03002DE0
_0800EF1C: .4byte _0800EF20
_0800EF20: @ jump table
	.4byte _0800F0DA @ case 0
	.4byte _0800EF3C @ case 1
	.4byte _0800EF82 @ case 2
	.4byte _0800EFC8 @ case 3
	.4byte _0800F00A @ case 4
	.4byte _0800F07C @ case 5
	.4byte _0800F0CC @ case 6
_0800EF3C:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r1, _0800EF64
	str r2, [r1]
	ldr r0, _0800EF68
	str r0, [r1, #4]
	ldr r0, _0800EF6C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800EF70
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #4
	b _0800EF76
	.align 2, 0
_0800EF64: .4byte 0x040000D4
_0800EF68: .4byte 0x070002C0
_0800EF6C: .4byte 0x80000004
_0800EF70:
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #6
_0800EF76:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0800EF82:
	adds r0, r4, #0
	bl sub_800F134
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	beq _0800EF94
	b _0800F0DA
_0800EF94:
	ldr r3, _0800EFC4
	adds r0, r3, #0
	adds r0, #0x42
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x3e
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #0x42
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r2, [r0]
	b _0800F0DA
	.align 2, 0
_0800EFC4: .4byte gUnknown_03002F20
_0800EFC8:
	adds r0, r4, #0
	bl sub_800F0E0
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800EFE8
	ldr r0, _0800EFE4
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #3
	b _0800EFF2
	.align 2, 0
_0800EFE4: .4byte 0x0000C010
_0800EFE8:
	ldr r0, _0800F018
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #5
_0800EFF2:
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r5, #4]
	adds r1, r4, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0800F00A:
	ldrb r0, [r4, #4]
	cmp r0, #0xa
	bne _0800F01C
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #6
	b _0800F0D8
	.align 2, 0
_0800F018: .4byte 0x0000C0A0
_0800F01C:
	adds r0, r4, #0
	bl sub_800F134
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800F030
	movs r0, #0x10
	strh r0, [r5]
_0800F030:
	ldrb r2, [r4, #4]
	cmp r2, #6
	bls _0800F0DA
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r1, _0800F064
	ldr r0, _0800F068
	str r0, [r1]
	ldr r0, _0800F06C
	str r0, [r1, #4]
	ldr r0, _0800F070
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800F074
	adds r1, #0x4a
	ldr r0, _0800F078
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	adds r0, #1
	b _0800F0D8
	.align 2, 0
_0800F064: .4byte 0x040000D4
_0800F068: .4byte gUnknown_03002DE0
_0800F06C: .4byte 0x070002C0
_0800F070: .4byte 0x80000004
_0800F074: .4byte gUnknown_030038D0
_0800F078: .4byte 0x0000FEFF
_0800F07C:
	ldrb r0, [r4, #4]
	cmp r0, #6
	bhi _0800F0DA
	adds r0, r4, #0
	bl sub_800F0E0
	movs r1, #0
	movs r0, #0x10
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F0A0
	ldr r0, _0800F09C
	b _0800F0A2
	.align 2, 0
_0800F09C: .4byte 0x0000C010
_0800F0A0:
	ldr r0, _0800F0C4
_0800F0A2:
	strh r0, [r5, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r5, #4]
	ldr r0, _0800F0C8
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #4
	b _0800F0D8
	.align 2, 0
_0800F0C4: .4byte 0x0000C0A0
_0800F0C8: .4byte gUnknown_030038D0
_0800F0CC:
	ldrb r0, [r4, #4]
	cmp r0, #0xa
	beq _0800F0DA
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #5
_0800F0D8:
	strb r0, [r1]
_0800F0DA:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800F0E0
sub_800F0E0: @ 0x0800F0E0
	ldr r1, _0800F118
	adds r0, #0x7c
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r3, _0800F11C
	adds r1, r2, r3
	ldr r0, _0800F120
	str r1, [r0]
	ldr r1, _0800F124
	str r1, [r0, #4]
	ldr r1, _0800F128
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r3, #0x20
	adds r1, r2, r3
	str r1, [r0]
	ldr r1, _0800F12C
	str r1, [r0, #4]
	ldr r1, _0800F130
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_0800F118: .4byte gUnknown_08018A6C
_0800F11C: .4byte gUnknown_081B290C
_0800F120: .4byte 0x040000D4
_0800F124: .4byte 0x05000220
_0800F128: .4byte 0x80000010
_0800F12C: .4byte 0x06011000
_0800F130: .4byte 0x80000400

	THUMB_FUNC_START sub_800F134
sub_800F134: @ 0x0800F134
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bls _0800F15C
	ldr r3, _0800F17C
	movs r2, #0
	ldr r1, _0800F180
	movs r0, #0
_0800F152:
	strh r0, [r3]
	adds r2, #1
	adds r3, #2
	cmp r2, r1
	bls _0800F152
_0800F15C:
	mov r0, ip
	adds r0, #0x82
	ldrb r1, [r0]
	str r0, [sp]
	movs r0, #0x81
	add r0, ip
	mov sb, r0
	cmp r1, #6
	bls _0800F170
	b _0800F360
_0800F170:
	lsls r0, r1, #2
	ldr r1, _0800F184
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F17C: .4byte gUnknown_03002F20+0x40
_0800F180: .4byte 0x0000013F
_0800F184: .4byte _0800F188
_0800F188: @ jump table
	.4byte _0800F360 @ case 0
	.4byte _0800F360 @ case 1
	.4byte _0800F360 @ case 2
	.4byte _0800F1A4 @ case 3
	.4byte _0800F1A4 @ case 4
	.4byte _0800F288 @ case 5
	.4byte _0800F288 @ case 6
_0800F1A4:
	ldr r3, _0800F284
	adds r3, #2
	movs r2, #0
	mov r4, ip
	adds r4, #0x80
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #1
	ldr r1, _0800F284
	mov sl, r1
	adds r6, r4, #0
	movs r1, #0x81
	add r1, ip
	mov sb, r1
	cmp r2, r0
	bhs _0800F1FA
	adds r7, r6, #0
	movs r0, #0x20
	mov r8, r0
_0800F1CA:
	movs r1, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, #1
	cmp r1, r0
	bhs _0800F1E6
	movs r5, #0x38
_0800F1D8:
	strh r5, [r3]
	adds r3, #2
	adds r1, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	blo _0800F1D8
_0800F1E6:
	movs r1, #0
	ldrsb r1, [r7, r1]
	mov r4, r8
	subs r0, r4, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	adds r4, r7, #0
	adds r1, #1
	cmp r2, r1
	blo _0800F1CA
_0800F1FA:
	mov r3, sl
	movs r0, #0x30
	strh r0, [r3]
	adds r3, #2
	movs r2, #0
	adds r1, r6, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r2, r0
	bhs _0800F21E
	movs r4, #0x31
_0800F210:
	strh r4, [r3]
	adds r3, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0800F210
_0800F21E:
	movs r0, #0x32
	strh r0, [r3]
	adds r4, r6, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #6
	adds r0, #0x40
	mov r1, sl
	adds r3, r0, r1
	movs r0, #0x35
	strh r0, [r3]
	adds r3, #2
	movs r2, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r2, r0
	bhs _0800F250
	movs r1, #0x36
_0800F242:
	strh r1, [r3]
	adds r3, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r2, r0
	blo _0800F242
_0800F250:
	movs r0, #0x37
	strh r0, [r3]
	mov r3, sl
	adds r3, #0x40
	movs r2, #0
	adds r1, r6, #0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0800F266
	b _0800F360
_0800F266:
	movs r5, #0x33
	movs r4, #0x34
_0800F26A:
	strh r5, [r3]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r4, [r0, #2]
	adds r3, #0x40
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0800F26A
	b _0800F360
	.align 2, 0
_0800F284: .4byte gUnknown_03002F20+0x42
_0800F288:
	ldr r3, _0800F390
	subs r3, #2
	movs r2, #0
	mov r4, ip
	adds r4, #0x80
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #1
	adds r6, r4, #0
	ldr r1, _0800F390
	mov r8, r1
	movs r1, #0x81
	add r1, ip
	mov sb, r1
	cmp r2, r0
	bhs _0800F2D8
	adds r7, r6, #0
_0800F2AA:
	movs r1, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, #1
	cmp r1, r0
	bhs _0800F2C6
	movs r5, #0x38
_0800F2B8:
	strh r5, [r3]
	subs r3, #2
	adds r1, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	blo _0800F2B8
_0800F2C6:
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #1
	adds r0, #0x40
	adds r3, r3, r0
	adds r4, r7, #0
	adds r1, #1
	cmp r2, r1
	blo _0800F2AA
_0800F2D8:
	mov r3, r8
	movs r0, #0x32
	strh r0, [r3]
	subs r3, #2
	movs r2, #0
	adds r1, r6, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r2, r0
	bhs _0800F2FC
	movs r4, #0x31
_0800F2EE:
	strh r4, [r3]
	subs r3, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0800F2EE
_0800F2FC:
	movs r0, #0x30
	strh r0, [r3]
	adds r4, r6, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #6
	adds r0, #0x40
	mov r1, r8
	adds r3, r0, r1
	movs r0, #0x37
	strh r0, [r3]
	subs r3, #2
	movs r2, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r2, r0
	bhs _0800F32E
	movs r1, #0x36
_0800F320:
	strh r1, [r3]
	subs r3, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r2, r0
	blo _0800F320
_0800F32E:
	movs r0, #0x35
	strh r0, [r3]
	mov r3, r8
	adds r3, #0x40
	movs r2, #0
	adds r1, r6, #0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bhs _0800F360
	movs r5, #0x34
	movs r4, #0x33
_0800F346:
	strh r5, [r3]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	subs r0, r3, r0
	subs r0, #2
	strh r4, [r0]
	adds r3, #0x40
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0800F346
_0800F360:
	mov r4, sb
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800F3B2
	movs r0, #0
	strb r0, [r4]
	ldr r3, [sp]
	ldrb r0, [r3]
	cmp r0, #4
	beq _0800F37E
	cmp r0, #6
	bne _0800F39A
_0800F37E:
	mov r1, ip
	adds r1, #0x80
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0800F394
	subs r0, r2, #1
	b _0800F3B0
	.align 2, 0
_0800F390: .4byte gUnknown_03002F20+0x78
_0800F394:
	movs r0, #2
	strb r0, [r3]
	b _0800F3B2
_0800F39A:
	mov r1, ip
	adds r1, #0x80
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bgt _0800F3AC
	adds r0, r2, #1
	b _0800F3B0
_0800F3AC:
	movs r0, #1
	ldr r1, [sp]
_0800F3B0:
	strb r0, [r1]
_0800F3B2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_800F3C4
sub_800F3C4: @ 0x0800F3C4
	ldr r1, _0800F3DC
	movs r2, #0
	movs r0, #1
	strb r0, [r1, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x22]
	strh r2, [r1, #0x20]
	movs r0, #0xfe
	strb r0, [r1, #0x1d]
	bx lr
	.align 2, 0
_0800F3DC: .4byte gUnknown_03003730
