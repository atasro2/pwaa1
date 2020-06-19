	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_8010204
sub_8010204: @ 0x08010204
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _0801023C
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08010240
	adds r0, r0, r1
	movs r4, #0xc
	ldrsh r1, [r0, r4]
	movs r5, #0xe
	ldrsh r4, [r0, r5]
	movs r0, #0x10
	ldrh r2, [r2, #0x3a]
	ands r0, r2
	cmp r0, #0
	beq _0801022C
	cmp r3, #0xb
	bls _0801022C
	subs r1, #0xf0
_0801022C:
	adds r0, r3, #0
	adds r2, r4, #0
	bl sub_8010244
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801023C: .4byte gMain
_08010240: .4byte gUnknown_08018F78

	THUMB_FUNC_START sub_8010244
sub_8010244: @ 0x08010244
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r7, _080102F0
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #2
	ldr r0, _080102F4
	adds r3, r3, r0
	mov r0, sp
	strh r5, [r0]
	ldr r0, [r3, #4]
	str r0, [sp, #0x10]
	ldr r0, [r3]
	str r0, [sp, #0x14]
	ldr r0, [r3, #8]
	str r0, [sp, #8]
	mov r4, sp
	ldrb r0, [r3, #0x10]
	strb r0, [r4, #0x18]
	ldrb r0, [r3, #0x11]
	strb r0, [r4, #0x19]
	ldrb r0, [r3, #0x12]
	strb r0, [r4, #0x1a]
	mov r0, sp
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	ldrb r2, [r3, #0x13]
	adds r1, r5, #0
	bl sub_8010468
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrb r3, [r6]
	subs r1, r3, #6
	movs r5, #1
	lsls r5, r1
	ldrb r2, [r7, #0x1e]
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	bne _080102C8
	cmp r3, #9
	bhi _080102C8
	orrs r2, r5
	strb r2, [r7, #0x1e]
	ldrb r6, [r6]
	lsls r0, r6, #5
	ldr r2, _080102F8
	adds r5, r0, r2
	lsls r3, r1, #5
	ldr r0, _080102FC
	adds r3, r3, r0
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08010300
	str r5, [r2]
	str r3, [r2, #4]
	lsrs r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
_080102C8:
	ldrh r1, [r7, #0x28]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2d
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	adds r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080102F0: .4byte gMain
_080102F4: .4byte gUnknown_08018F78
_080102F8: .4byte 0x05000200
_080102FC: .4byte gUnknown_03003F00
_08010300: .4byte 0x040000D4

	THUMB_FUNC_START sub_8010304
sub_8010304: @ 0x08010304
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r5, _08010418
	bl sub_800F804
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _080103CE
	mov r1, sp
	movs r0, #0xff
	strh r0, [r1]
	ldrb r0, [r4, #2]
	strb r0, [r1, #2]
	ldr r0, _0801041C
	str r0, [sp, #0x10]
	ldr r2, _08010420
	ldrb r1, [r4, #2]
	lsls r0, r1, #1 @ *2
	adds r0, r0, r1 @ *3 
	lsls r0, r0, #2 @ *C
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	mov r1, sp
	movs r0, #0xe
	strb r0, [r1, #0x18]
	ldrb r3, [r4, #2]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #8]
	strb r0, [r1, #0x19]
	movs r0, #0x21
	strb r0, [r1, #0x1a]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
	ldr r1, _08010424
	mov r0, sp
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	str r0, [r1, #4]
	ldr r0, _08010428
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, [r5, #0x14]
	str r2, [r5, #0x34]
	ldr r1, [r5, #0x20]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	str r1, [r5, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #5
	adds r0, #4
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x34]
	ldrh r0, [r0]
	adds r2, r0, r2
	str r2, [r5, #0x30]
	ldr r0, [r4, #0x14]
	movs r1, #0x82
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r5, #0x1c]
	lsrs r0, r0, #5
	ldrh r1, [r5, #0x38]
	orrs r0, r1
	strh r0, [r5, #0x38]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x3e]
	adds r6, r5, #0
	adds r6, #0x26
	ldrb r2, [r6]
	lsrs r1, r2, #4
	adds r0, r5, #0
	bl sub_800FB84
	movs r0, #0xf
	ldrb r3, [r6]
	ands r0, r3
	strb r0, [r6]
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_800FFB0
_080103CE:
	adds r4, #0x1c
	movs r6, #2
_080103D2:
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08010408
	ldrh r0, [r4]
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	bl sub_8010244
	adds r5, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0x82
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r5]
	ldr r1, [r4, #0x18]
	str r1, [r5, #0x34]
	ldr r0, [r5, #0x14]
	ldrh r1, [r1]
	adds r0, r1, r0
	str r0, [r5, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x2c]
_08010408:
	adds r6, #1
	adds r4, #0x1c
	cmp r6, #0x1f
	bls _080103D2
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08010418: .4byte gUnknown_03000800+0x40
_0801041C: .4byte 0x06015800
_08010420: .4byte gUnknown_08018DD4
_08010424: .4byte 0x040000D4
_08010428: .4byte 0x8000000E

	THUMB_FUNC_START sub_801042C
sub_801042C: @ 0x0801042C
	adds r1, r0, #0
	ldr r2, _08010464
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r0, r2, r3
	cmp r2, r0
	bhs _08010460
	adds r3, r0, #0
_0801043C:
	ldr r0, [r2, #0xc]
	str r0, [r1]
	ldr r0, [r2, #0x10]
	str r0, [r1, #4]
	ldr r0, [r2, #0x28]
	str r0, [r1, #0xc]
	ldr r0, [r2, #0x2c]
	str r0, [r1, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r1, #8]
	ldr r0, [r2]
	str r0, [r1, #0x14]
	ldr r0, [r2, #0x34]
	str r0, [r1, #0x18]
	adds r2, #0x40
	adds r1, #0x1c
	cmp r2, r3
	blo _0801043C
_08010460:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08010464: .4byte gUnknown_03000800+0x40

	THUMB_FUNC_START sub_8010468
sub_8010468: @ 0x08010468
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	ldrh r0, [r5]
	bl sub_800F8F4
	adds r4, r0, #0
	cmp r4, #0
	bne _0801047E
	movs r0, #0
	b _08010518
_0801047E:
	ldr r1, _08010520
	str r5, [r1]
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [r1, #4]
	ldr r0, _08010524
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x20]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	str r1, [r4, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #5
	adds r0, #4
	adds r1, r1, r0
	str r1, [r4, #0x18]
	adds r0, r2, #0
	adds r0, #8
	str r0, [r4, #0x34]
	ldrh r0, [r2, #8]
	adds r2, r0, r2
	str r2, [r4, #0x30]
	ldr r1, [r4]
	orrs r1, r6
	str r1, [r4]
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _080104C2
	ldr r0, _08010528
	ands r1, r0
	str r1, [r4]
_080104C2:
	ldr r0, [r4, #0x1c]
	lsrs r0, r0, #5
	ldrh r1, [r4, #0x38]
	orrs r0, r1
	movs r1, #0
	strh r0, [r4, #0x38]
	strh r1, [r4, #0x3c]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x3e]
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r2, [r5]
	lsrs r1, r2, #4
	adds r0, r4, #0
	bl sub_800FB84
	movs r0, #0xf
	ldrb r1, [r5]
	ands r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_800FFB0
	ldr r1, [r4, #0x34]
	movs r0, #2
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08010504
	ldrb r0, [r1, #4]
	bl PlaySE
_08010504:
	ldr r1, [r4, #0x34]
	movs r0, #4
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08010516
	ldrb r0, [r1, #5]
	bl sub_800FFF8
_08010516:
	adds r0, r4, #0
_08010518:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08010520: .4byte 0x040000D4
_08010524: .4byte 0x8000000E
_08010528: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_801052C
sub_801052C: @ 0x0801052C
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #4
	ldr r0, _08010548
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801054C
	ldrh r0, [r4, #0xc]
	cmp r0, #0xff
	bne _0801054C
	movs r0, #4
	b _080105F4
	.align 2, 0
_08010548: .4byte gScriptContext
_0801054C:
	ldr r2, [r4, #0x34]
	ldrb r1, [r2, #2]
	ldrh r0, [r4, #0x28]
	adds r0, #1
	strh r0, [r4, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _080105F2
	movs r0, #0
	strh r0, [r4, #0x28]
	adds r1, r2, #0
	adds r1, #8
	str r1, [r4, #0x34]
	movs r0, #2
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08010578
	ldrb r0, [r1, #4]
	bl PlaySE
_08010578:
	ldr r1, [r4, #0x34]
	movs r0, #4
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _0801058A
	ldrb r0, [r1, #5]
	bl sub_800FFF8
_0801058A:
	ldr r0, [r4, #0x34]
	ldrb r1, [r0, #2]
	adds r2, r0, #0
	cmp r1, #0xfe
	beq _080105BE
	cmp r1, #0xfe
	bgt _0801059E
	cmp r1, #0xfd
	beq _080105D4
	b _080105DE
_0801059E:
	cmp r1, #0xff
	bne _080105DE
	ldr r0, [r4, #0x14]
	adds r1, r0, #0
	adds r1, #8
	str r1, [r4, #0x34]
	ldrh r1, [r0, #8]
	adds r0, r1, r0
	str r0, [r4, #0x30]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r4]
	movs r3, #7
	b _080105F2
_080105BE:
	ldr r0, [r4]
	ldr r1, _080105D0
	ands r0, r1
	str r0, [r4]
	movs r3, #0
	adds r0, r2, #0
	subs r0, #8
	str r0, [r4, #0x34]
	b _080105F2
	.align 2, 0
_080105D0: .4byte 0x7FFFFFFF
_080105D4:
	adds r0, r4, #0
	bl sub_8010960
	movs r3, #0
	b _080105F2
_080105DE:
	ldr r0, [r4, #0x14]
	ldrh r2, [r2]
	adds r0, r2, r0
	str r0, [r4, #0x30]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r4]
	movs r3, #5
_080105F2:
	adds r0, r3, #0
_080105F4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_80105FC
sub_80105FC: @ 0x080105FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r0, _08010698
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _0801068A
_08010612:
	ldr r0, [r4]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08010684
	ldrh r0, [r4, #0x10]
	add r0, r8
	strh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	adds r0, r1, r7
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r5, _0801069C
	adds r3, r0, r5
	movs r2, #0x3b
	adds r2, r2, r4
	mov ip, r2
	ldrb r1, [r2]
	lsls r0, r1, #3
	adds r0, r0, r5
	cmp r3, r0
	bhs _08010684
	movs r2, #0xff
	mov sl, r2
	ldr r6, _080106A0
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sb, r0
_08010650:
	movs r1, #0xff
	lsls r1, r1, #8
	ldrh r2, [r3]
	ands r1, r2
	ldrb r2, [r3]
	adds r0, r2, r7
	mov r2, sl
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	ldrh r2, [r3, #2]
	adds r0, r6, #0
	ands r0, r2
	mov r1, sb
	ands r1, r2
	add r0, r8
	ands r0, r6
	orrs r1, r0
	strh r1, [r3, #2]
	adds r3, #8
	mov r1, ip
	ldrb r1, [r1]
	lsls r0, r1, #3
	adds r0, r0, r5
	cmp r3, r0
	blo _08010650
_08010684:
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _08010612
_0801068A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010698: .4byte gUnknown_03000800
_0801069C: .4byte gOamObjects
_080106A0: .4byte 0x000001FF

	THUMB_FUNC_START sub_80106A4
sub_80106A4: @ 0x080106A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sl, r1
	movs r6, #0
	ldr r0, _080106D4
	mov sb, r0
	ldr r3, _080106D8
	mov r8, r3
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r5
	cmp r0, #0
	beq _080106DC
	lsrs r0, r5, #8
	movs r1, #0xff
	ands r5, r1
	bl sub_800F8BC
	adds r4, r0, #0
	b _080106DE
	.align 2, 0
_080106D4: .4byte gLCDIORegisters
_080106D8: .4byte gMain
_080106DC:
	ldr r4, _0801074C
_080106DE:
	mov r0, sb
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0x10
	bne _080106EA
	b _080107E8
_080106EA:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _080106FE
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _080107E8
_080106FE:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x16
	bne _08010718
	movs r0, #0x17
	bl sub_800F8BC
	adds r6, r0, #0
	cmp r6, #0
	bne _08010718
	movs r0, #0x18
	bl sub_800F8BC
	adds r6, r0, #0
_08010718:
	movs r7, #1
	ands r7, r5
	cmp r7, #0
	beq _08010758
	ldr r2, [r4]
	ldr r0, _08010750
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	beq _080107E8
	ldr r1, _08010754
	ands r2, r1
	str r2, [r4]
	cmp r6, #0
	beq _0801073E
	ldr r0, [r6]
	ands r0, r1
	str r0, [r6]
_0801073E:
	mov r1, r8
	adds r1, #0x7b
	movs r0, #0x10
	strb r0, [r1]
	adds r2, r1, #0
	b _080107A0
	.align 2, 0
_0801074C: .4byte gUnknown_03000800+0x40
_08010750: .4byte 0x02000004
_08010754: .4byte 0xF3FFFFFB
_08010758:
	movs r3, #4
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _080107E8
	ldr r2, [r4]
	ldr r1, _080107F8
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	beq _080107E8
	orrs r2, r3
	str r2, [r4]
	cmp r6, #0
	beq _0801077C
	ldr r0, [r6]
	orrs r0, r3
	str r0, [r6]
_0801077C:
	mov r1, r8
	adds r1, #0x7b
	strb r7, [r1]
	movs r0, #0xc
	ands r0, r5
	adds r2, r1, #0
	cmp r0, #0
	beq _080107A0
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4]
	cmp r6, #0
	beq _080107A0
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_080107A0:
	ldr r0, [r4]
	movs r1, #0x88
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	cmp r6, #0
	beq _080107B4
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_080107B4:
	mov r0, r8
	adds r0, #0x7a
	movs r1, #0
	mov r3, sl
	strb r3, [r0]
	subs r0, #2
	strh r1, [r0]
	mov r3, sb
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	ldrb r2, [r2]
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	mov r2, sb
	adds r2, #0x4c
	strh r1, [r2]
	ldr r1, _080107FC
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2]
	strh r0, [r1]
_080107E8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080107F8: .4byte 0x02000004
_080107FC: .4byte 0x04000050

	THUMB_FUNC_START sub_8010800
sub_8010800: @ 0x08010800
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _08010820
	ldr r7, _08010824
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801082C
	ldr r0, [r4]
	ldr r1, _08010828
	ands r0, r1
	str r0, [r4]
	b _08010920
	.align 2, 0
_08010820: .4byte gMain
_08010824: .4byte gLCDIORegisters
_08010828: .4byte 0xFDFFFFFF
_0801082C:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x16
	bne _08010846
	movs r0, #0x17
	bl sub_800F8BC
	adds r6, r0, #0
	cmp r6, #0
	bne _08010846
	movs r0, #0x18
	bl sub_800F8BC
	adds r6, r0, #0
_08010846:
	adds r3, r5, #0
	adds r3, #0x78
	ldrh r0, [r3]
	adds r0, #1
	movs r1, #0
	mov ip, r1
	strh r0, [r3]
	adds r1, r5, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r5, #0
	adds r2, #0x7b
	ldrb r1, [r1]
	cmp r0, r1
	blo _08010910
	movs r0, #0
	strh r0, [r3]
	ldr r0, [r4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080108D6
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08010910
	adds r1, r7, #0
	adds r1, #0x48
	ldr r0, _080108B8
	strh r0, [r1]
	adds r1, #4
	ldr r0, _080108BC
	strh r0, [r1]
	ldr r0, [r4]
	ldr r1, _080108C0
	ands r0, r1
	str r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _080108C4
	adds r0, r4, #0
	movs r1, #0
	bl sub_800FA74
	cmp r6, #0
	beq _08010920
	adds r0, r6, #0
	movs r1, #0
	bl sub_800FA74
	b _08010920
	.align 2, 0
_080108B8: .4byte 0x00001842
_080108BC: .4byte 0x0000071F
_080108C0: .4byte 0xFDFFFFFF
_080108C4:
	adds r0, r4, #0
	bl sub_8010960
	cmp r6, #0
	beq _08010920
	adds r0, r6, #0
	bl sub_8010960
	b _08010920
_080108D6:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08010910
	adds r1, r7, #0
	adds r1, #0x48
	ldr r0, _08010904
	strh r0, [r1]
	adds r1, #4
	ldr r0, _08010908
	strh r0, [r1]
	ldr r0, [r4]
	ldr r1, _0801090C
	ands r0, r1
	str r0, [r4]
	cmp r6, #0
	beq _08010920
	ldr r0, [r6]
	ands r0, r1
	str r0, [r6]
	b _08010920
	.align 2, 0
_08010904: .4byte 0x00001842
_08010908: .4byte 0x0000071F
_0801090C: .4byte 0xFDFFFFFF
_08010910:
	ldrb r2, [r2]
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	adds r0, r7, #0
	adds r0, #0x4c
	strh r1, [r0]
_08010920:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8010928
sub_8010928: @ 0x08010928
	push {r4, r5, lr}
	ldr r2, _0801095C
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r2, r1
	cmp r2, r0
	bhs _08010954
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r4, #0xc0
	lsls r4, r4, #0x17
	adds r3, r0, #0
_08010940:
	ldr r1, [r2]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _0801094E
	orrs r1, r4
	str r1, [r2]
_0801094E:
	adds r2, #0x40
	cmp r2, r3
	blo _08010940
_08010954:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801095C: .4byte gUnknown_03000800

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
_08010A40: .4byte gUnknown_03003F00
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
_08010B74: .4byte gUnknown_03000800
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
_08010D14: .4byte gUnknown_03000800
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
_08010E6C: .4byte gUnknown_03000800
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
	bl sub_8010800
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
_08011104: .4byte gUnknown_03000800+0x40

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
