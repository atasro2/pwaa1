	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START Command3F
Command3F: @ 0x0800724C
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
	bl PlaySE
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
_080073D8: .4byte gMain
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
	bl PlaySE
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
