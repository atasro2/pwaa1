	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START Command08
Command08: @ 0x08005F2C
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
_08005FBC: .4byte gJoypad
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

	THUMB_FUNC_START Command09
Command09: @ 0x080060D8
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
_08006168: .4byte gJoypad
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

	THUMB_FUNC_START Command0B
Command0B: @ 0x0800628C
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

	THUMB_FUNC_START Command0C
Command0C: @ 0x080062BC
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

	THUMB_FUNC_START Command0D
Command0D: @ 0x08006300
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

	THUMB_FUNC_START Command0E
Command0E: @ 0x08006314
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

	THUMB_FUNC_START Command0F
Command0F: @ 0x08006380
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

	THUMB_FUNC_START Command10
Command10: @ 0x080063A0
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

	THUMB_FUNC_START Command11
Command11: @ 0x080063C4
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

	THUMB_FUNC_START Command12
Command12: @ 0x08006404
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

	THUMB_FUNC_START Command13
Command13: @ 0x08006430
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

	THUMB_FUNC_START Command14
Command14: @ 0x08006468
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

	THUMB_FUNC_START Command15
Command15: @ 0x08006488
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
_080064BC: .4byte gUnknown_03000800+0x40
_080064C0: .4byte gUnknown_03003730

	THUMB_FUNC_START Command16
Command16: @ 0x080064C4
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

	THUMB_FUNC_START Command17
Command17: @ 0x08006500
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

	THUMB_FUNC_START Command18
Command18: @ 0x0800659C
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

	THUMB_FUNC_START Command19
Command19: @ 0x080065FC
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

	THUMB_FUNC_START Command1A
Command1A: @ 0x08006680
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

	THUMB_FUNC_START Command1B
Command1B: @ 0x080066D4
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

	THUMB_FUNC_START Command1C
Command1C: @ 0x0800671C
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
_0800675C: .4byte gLCDIORegisters
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
_0800677C: .4byte gLCDIORegisters
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
_080067AC: .4byte gUnknown_03000800+0x40
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
_08006828: .4byte gUnknown_03000800+0x40
_0800682C: .4byte gUnknown_03003A50

	THUMB_FUNC_START Command1D
Command1D: @ 0x08006830
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

	THUMB_FUNC_START Command1E
Command1E: @ 0x080068B8
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
_08006918: .4byte gUnknown_03000800+0x40
_0800691C: .4byte gUnknown_03003A50

	THUMB_FUNC_START Command1F
Command1F: @ 0x08006920
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
_08006964: .4byte gLCDIORegisters
_08006968: .4byte 0x0000FBFF
_0800696C: .4byte gUnknown_03000000
_08006970: .4byte 0x0000029F
_08006974: .4byte 0x0000FFBF

	THUMB_FUNC_START Command20
Command20: @ 0x08006978
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
_08006B1C: .4byte gLCDIORegisters
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
_08006B60: .4byte gLCDIORegisters
_08006B64: .4byte gOamObjects+0x118
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
_08006C74: .4byte gUnknown_03000800+0x40
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
_08006E88: .4byte gScriptHeap+4
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
_08006ED0: .4byte gScriptHeap+4

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
_08006F1C: .4byte gUnknown_03000800+0x40
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
_08006F38: .4byte gUnknown_03000800+0x40

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
_080073D0: .4byte gJoypad
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
_080075F4: .4byte gOamObjects+0x188
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
_080076B0: .4byte gOamObjects+0x118

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
_080076F8: .4byte gOamObjects+0x188
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
_08007850: .4byte gLCDIORegisters
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
_080078C0: .4byte gLCDIORegisters
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
_080078E4: .4byte gLCDIORegisters
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
