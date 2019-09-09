.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START umul3232H32
umul3232H32: @ 0x08011238
	add r2, pc, #0x0
	bx r2

	ARM_FUNC_START __umul3232H32
__umul3232H32: @ 0x0801123C
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	THUMB_FUNC_START SoundMain
SoundMain: @ 0x08011248
	ldr r0, _080112B4
	ldr r0, [r0]
	ldr r2, _080112B8
	ldr r3, [r0]
	cmp r2, r3
	beq _08011256
	bx lr
_08011256:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _0801127A
	ldr r2, _080112C0
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08011278
	adds r2, #0xe4
_08011278:
	adds r1, r1, r2
_0801127A:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _0801128A
	ldr r0, [r0, #0x24]
	bl _0801166A
	ldr r0, [sp, #0x18]
_0801128A:
	ldr r3, [r0, #0x28]
	bl _0801166A
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _080112C4
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _080112AA
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_080112AA:
	str r5, [sp, #8]
	ldr r6, _080112C8
	ldr r3, _080112BC
	bx r3
	.align 2, 0
_080112B4: .4byte gUnknown_03007FF0
_080112B8: .4byte 0x68736D53
_080112BC: .4byte gUnknown_03004011
_080112C0: .4byte 0x04000006
_080112C4: .4byte 0x00000350
_080112C8: .4byte 0x00000630

	THUMB_FUNC_START SoundMainRAM
SoundMainRAM: @ 0x080112CC
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq _0801132C
	add r1, pc, #0x4
	bx r1
	.align 2, 0
_080112D8:
	.byte 0x02, 0x00, 0x54, 0xE3, 0x35, 0x7E, 0x80, 0x02
	.byte 0x08, 0x70, 0x85, 0x10, 0x08, 0x40, 0xA0, 0xE1, 0xD6, 0x00, 0x95, 0xE1, 0xD0, 0x10, 0xD5, 0xE1
	.byte 0x01, 0x00, 0x80, 0xE0, 0xD6, 0x10, 0x97, 0xE1, 0x01, 0x00, 0x80, 0xE0, 0xD1, 0x10, 0xD7, 0xE0
	.byte 0x01, 0x00, 0x80, 0xE0, 0x90, 0x03, 0x01, 0xE0, 0xC1, 0x04, 0xA0, 0xE1, 0x80, 0x00, 0x10, 0xE3
	.byte 0x01, 0x00, 0x80, 0x12, 0x06, 0x00, 0xC5, 0xE7, 0x01, 0x00, 0xC5, 0xE4, 0x01, 0x40, 0x54, 0xE2
	.byte 0xF0, 0xFF, 0xFF, 0xCA, 0x2F, 0x00, 0x8F, 0xE2, 0x10, 0xFF, 0x2F, 0xE1
_0801132C:
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _0801133A
	stm r5!, {r0}
	stm r6!, {r0}
_0801133A:
	lsrs r1, r1, #1
	blo _08011346
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_08011346:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _08011346
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08011364:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08011384
	ldr r1, _08011380
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08011378
	adds r1, #0xe4
_08011378:
	cmp r1, r0
	blo _08011384
	b _08011656
	.align 2, 0
_08011380: .4byte 0x04000006
_08011384:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _0801138E
	b _0801164C
_0801138E:
	movs r0, #0x80
	tst r0, r6
	beq _080113BE
	movs r0, #0x40
	tst r0, r6
	bne _080113CE
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _08011416
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _08011416
_080113BE:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _080113D4
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _08011424
_080113CE:
	movs r0, #0
	strb r0, [r4]
	b _0801164C
_080113D4:
	movs r0, #0x40
	tst r0, r6
	beq _080113F4
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _08011424
_080113E6:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080113CE
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _08011424
_080113F4:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _08011412
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _08011424
	adds r5, r0, #0
	beq _080113E6
	subs r6, #1
	strb r6, [r4]
	b _08011424
_08011412:
	cmp r2, #3
	bne _08011424
_08011416:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _08011424
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_08011424:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _08011458
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08011458:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4
	bx r0
	.align 2, 0
_08011464:
	.byte 0x00, 0x80, 0x8D, 0xE5, 0x0A, 0xA0, 0xD4, 0xE5, 0x0B, 0xB0, 0xD4, 0xE5
	.byte 0x0A, 0xA8, 0xA0, 0xE1, 0x0B, 0xB8, 0xA0, 0xE1, 0x01, 0x00, 0xD4, 0xE5, 0x08, 0x00, 0x10, 0xE3
	.byte 0x47, 0x00, 0x00, 0x0A, 0x04, 0x00, 0x52, 0xE3, 0x19, 0x00, 0x00, 0xDA, 0x08, 0x20, 0x52, 0xE0
	.byte 0x00, 0xE0, 0xA0, 0xC3, 0x05, 0x00, 0x00, 0xCA, 0x08, 0xE0, 0xA0, 0xE1, 0x08, 0x20, 0x82, 0xE0
	.byte 0x04, 0x80, 0x42, 0xE2, 0x08, 0xE0, 0x4E, 0xE0, 0x03, 0x20, 0x12, 0xE2, 0x04, 0x20, 0xA0, 0x03
	.byte 0x00, 0x60, 0x95, 0xE5, 0x30, 0x76, 0x95, 0xE5, 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0
	.byte 0xFF, 0x18, 0xC1, 0xE3, 0x66, 0x64, 0x81, 0xE0, 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3
	.byte 0x67, 0x74, 0x81, 0xE0, 0x01, 0x51, 0x95, 0xE2, 0xF6, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5
	.byte 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2, 0xF0, 0xFF, 0xFF, 0xCA, 0x0E, 0x80, 0x98, 0xE0
	.byte 0x50, 0x00, 0x00, 0x0A, 0x00, 0x60, 0x95, 0xE5, 0x30, 0x76, 0x95, 0xE5, 0xD1, 0x00, 0xD3, 0xE0
	.byte 0x9A, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3, 0x66, 0x64, 0x81, 0xE0, 0x9B, 0x00, 0x01, 0xE0
	.byte 0xFF, 0x18, 0xC1, 0xE3, 0x67, 0x74, 0x81, 0xE0, 0x01, 0x20, 0x52, 0xE2, 0x12, 0x00, 0x00, 0x0A
	.byte 0x01, 0x51, 0x95, 0xE2, 0xF4, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4
	.byte 0x04, 0x80, 0x58, 0xE2, 0xD2, 0xFF, 0xFF, 0xCA, 0x3E, 0x00, 0x00, 0xEA, 0x18, 0x00, 0x9D, 0xE5
	.byte 0x00, 0x00, 0x50, 0xE3, 0x05, 0x00, 0x00, 0x0A, 0x14, 0x30, 0x9D, 0xE5, 0x00, 0x90, 0x62, 0xE2
	.byte 0x02, 0x20, 0x90, 0xE0, 0x2B, 0x00, 0x00, 0xCA, 0x00, 0x90, 0x49, 0xE0, 0xFB, 0xFF, 0xFF, 0xEA
	.byte 0x10, 0x10, 0xBD, 0xE8, 0x00, 0x20, 0xA0, 0xE3, 0x03, 0x00, 0x00, 0xEA, 0x10, 0x20, 0x9D, 0xE5
	.byte 0x00, 0x00, 0x52, 0xE3, 0x0C, 0x30, 0x9D, 0x15, 0xE8, 0xFF, 0xFF, 0x1A, 0x00, 0x20, 0xC4, 0xE5
	.byte 0x25, 0x0F, 0xA0, 0xE1, 0x03, 0x51, 0xC5, 0xE3, 0x03, 0x00, 0x60, 0xE2, 0x80, 0x01, 0xA0, 0xE1
	.byte 0x76, 0x60, 0xA0, 0xE1, 0x77, 0x70, 0xA0, 0xE1, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4
	.byte 0x26, 0x00, 0x00, 0xEA, 0x10, 0x10, 0x2D, 0xE9, 0x1C, 0xE0, 0x94, 0xE5, 0x20, 0x10, 0x94, 0xE5
	.byte 0x9C, 0x01, 0x04, 0xE0, 0xD0, 0x00, 0xD3, 0xE1, 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0
	.byte 0x00, 0x60, 0x95, 0xE5, 0x30, 0x76, 0x95, 0xE5, 0x9E, 0x01, 0x09, 0xE0, 0xC9, 0x9B, 0x80, 0xE0
	.byte 0x9A, 0x09, 0x0C, 0xE0, 0xFF, 0xC8, 0xCC, 0xE3, 0x66, 0x64, 0x8C, 0xE0, 0x9B, 0x09, 0x0C, 0xE0
	.byte 0xFF, 0xC8, 0xCC, 0xE3, 0x67, 0x74, 0x8C, 0xE0, 0x04, 0xE0, 0x8E, 0xE0, 0xAE, 0x9B, 0xB0, 0xE1
	.byte 0x07, 0x00, 0x00, 0x0A, 0xFE, 0xE5, 0xCE, 0xE3, 0x09, 0x20, 0x52, 0xE0, 0xCE, 0xFF, 0xFF, 0xDA
	.byte 0x01, 0x90, 0x59, 0xE2, 0x01, 0x00, 0x80, 0x00, 0xD9, 0x00, 0xB3, 0x11, 0xD1, 0x10, 0xF3, 0xE1
	.byte 0x00, 0x10, 0x41, 0xE0, 0x01, 0x51, 0x95, 0xE2, 0xEA, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5
	.byte 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2, 0xE4, 0xFF, 0xFF, 0xCA, 0x01, 0x30, 0x43, 0xE2
	.byte 0x10, 0x10, 0xBD, 0xE8, 0x1C, 0xE0, 0x84, 0xE5, 0x18, 0x20, 0x84, 0xE5, 0x28, 0x30, 0x84, 0xE5
	.byte 0x00, 0x80, 0x9D, 0xE5, 0x01, 0x00, 0x8F, 0xE2, 0x10, 0xFF, 0x2F, 0xE1
_0801164C:
	ldr r0, [sp, #4]
	subs r0, #1
	ble _08011656
	adds r4, #0x40
	b _08011364
_08011656:
	ldr r0, [sp, #0x18]
	ldr r3, _0801166C
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}
_0801166A:
	bx r3
	.align 2, 0
_0801166C: .4byte 0x68736D53

	THUMB_FUNC_START SoundMainBTM
SoundMainBTM: @ 0x08011670
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8011688
sub_8011688: @ 0x08011688
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080116A6
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _0801169A
	str r1, [r2, #0x34]
	b _0801169C
_0801169A:
	str r1, [r3, #0x20]
_0801169C:
	cmp r1, #0
	beq _080116A2
	str r2, [r1, #0x30]
_080116A2:
	movs r1, #0
	str r1, [r0, #0x2c]
_080116A6:
	bx lr
_080116A8:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080116CC
_080116B2:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080116C0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_080116C0:
	adds r0, r4, #0
	bl sub_8011688
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080116B2
_080116CC:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_80116D8
sub_80116D8: @ 0x080116D8
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08011708
_080116DE:
	ldr r3, [r2]
	bl _080116F2
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _080116DE
	bx ip
	.align 2, 0

	THUMB_FUNC_START sub_80116F0
sub_80116F0: @ 0x080116F0
	ldrb r3, [r2]
_080116F2:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08011704
	ldr r0, _08011708
	cmp r2, r0
	blo _08011702
	lsrs r0, r2, #0xe
	beq _08011704
_08011702:
	movs r3, #0
_08011704:
	pop {r0}
	bx lr
	.align 2, 0
_08011708: .4byte gUnknown_08079354

	THUMB_FUNC_START sub_801170C
sub_801170C: @ 0x0801170C
	ldr r2, [r1, #0x40]
_0801170D:
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _080116F2
	.align 2, 0
_08011718:
	push {lr}
_0801171A:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_80116F0
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8011738
sub_8011738: @ 0x08011738
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08011750
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _08011718
_08011750:
	b _080116A8
	.align 2, 0

	THUMB_FUNC_START sub_8011754
sub_8011754: @ 0x08011754
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08011766
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08011766:
	bx lr

	THUMB_FUNC_START sub_8011768
sub_8011768: @ 0x08011768
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08011778
	adds r2, #1
	str r2, [r1, #0x40]
	b _0801171A
_08011778:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_801170C
	cmp ip, r3
	bhs _0801178A
	b _0801171A
_0801178A:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8011798
sub_8011798: @ 0x08011798
	mov ip, lr
	bl sub_801170C
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	THUMB_FUNC_START sub_80117A4
sub_80117A4: @ 0x080117A4
	mov ip, lr
	bl sub_801170C
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	THUMB_FUNC_START sub_80117B8
sub_80117B8: @ 0x080117B8
	mov ip, lr
	bl sub_801170C
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	THUMB_FUNC_START sub_80117CC
sub_80117CC: @ 0x080117CC
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _080116F2
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _080116F2
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _080116F2
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	THUMB_FUNC_START sub_80117FC
sub_80117FC: @ 0x080117FC
	mov ip, lr
	bl sub_801170C
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	THUMB_FUNC_START sub_8011810
sub_8011810: @ 0x08011810
	mov ip, lr
	bl sub_801170C
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START sub_8011824
sub_8011824: @ 0x08011824
	mov ip, lr
	bl sub_801170C
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START sub_8011838
sub_8011838: @ 0x08011838
	mov ip, lr
	bl sub_801170C
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	THUMB_FUNC_START sub_801184C
sub_801184C: @ 0x0801184C
	mov ip, lr
	bl sub_801170C
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	THUMB_FUNC_START sub_8011858
sub_8011858: @ 0x08011858
	mov ip, lr
	bl sub_801170C
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _0801186E
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_0801186E:
	bx ip

	THUMB_FUNC_START sub_8011870
sub_8011870: @ 0x08011870
	mov ip, lr
	bl sub_801170C
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START sub_8011884
sub_8011884: @ 0x08011884
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08011898
	adds r0, r0, r3
	bl _0801170D
	strb r3, [r0]
	bx ip
	.align 2, 0
_08011898: .4byte 0x04000060

	THUMB_FUNC_START m4aSoundVSync
m4aSoundVSync: @ 0x0801189C
	ldr r0, _08011B48
	ldr r0, [r0]
	ldr r2, _08011B4C
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _080118DC
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _080118DC
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _080118E0
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _080118C2
	ldr r1, _080118E4
	str r1, [r2, #8]
_080118C2:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _080118CC
	ldr r1, _080118E4
	str r1, [r2, #0x14]
_080118CC:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_080118DC:
	bx lr
	.align 2, 0
_080118E0: .4byte 0x040000BC
_080118E4: .4byte 0x84400004

	THUMB_FUNC_START sub_80118E8
sub_80118E8: @ 0x080118E8
	ldr r2, _08011B4C
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _080118F2
	bx lr
_080118F2:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08011904
	ldr r0, [r0, #0x3c]
	bl sub_8011B40
_08011904:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0801191C
	b _08011B30
_0801191C:
	ldr r0, _08011B48
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl sub_80127D4
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08011930
	b _08011B30
_08011930:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _08011A80
_08011938:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_08011940:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _0801194A
	b _08011A5C
_0801194A:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0801197E
_08011956:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08011972
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08011978
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08011978
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08011978
_08011972:
	adds r0, r4, #0
	bl sub_80122D0
_08011978:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08011956
_0801197E:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _080119FC
	adds r0, r5, #0
	bl sub_80122E4
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _080119FC
_080119A4:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _080119B0
	ldrb r1, [r5, #7]
	b _080119BA
_080119B0:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _080119BA
	strb r1, [r5, #7]
_080119BA:
	cmp r1, #0xcf
	blo _080119D0
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_8011B40
	b _080119FC
_080119D0:
	cmp r1, #0xb0
	bls _080119F2
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_8011B40
	ldrb r0, [r5]
	cmp r0, #0
	beq _08011A58
	b _080119FC
_080119F2:
	ldr r0, _08011B44
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_080119FC:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080119A4
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _08011A58
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _08011A58
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08011A1E
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _08011A58
_08011A1E:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08011A32
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08011A36
_08011A32:
	movs r0, #0x80
	subs r2, r0, r1
_08011A36:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _08011A58
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _08011A52
	movs r1, #0xc
	b _08011A54
_08011A52:
	movs r1, #3
_08011A54:
	orrs r0, r1
	strb r0, [r5]
_08011A58:
	mov r3, sl
	mov r4, fp
_08011A5C:
	subs r6, #1
	ble _08011A68
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _08011940
_08011A68:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08011A7A
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08011B30
_08011A7A:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_08011A80:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08011A88
	b _08011938
_08011A88:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08011A8C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08011B26
	movs r1, #0xf
	tst r1, r0
	beq _08011B26
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_801289C
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08011B1C
_08011AAA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08011ABA
	adds r0, r4, #0
	bl sub_80122D0
	b _08011B16
_08011ABA:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08011AD8
	bl sub_8011B94
	cmp r6, #0
	beq _08011AD8
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08011AD8:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08011B16
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _08011AEC
	movs r2, #0
_08011AEC:
	cmp r6, #0
	beq _08011B0A
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_8011B40
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08011B16
_08011B0A:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl sub_8011E54
	str r0, [r4, #0x20]
_08011B16:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08011AAA
_08011B1C:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08011B26:
	subs r2, #1
	ble _08011B30
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08011A8C
_08011B30:
	ldr r0, _08011B4C
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	THUMB_FUNC_START sub_8011B40
sub_8011B40: @ 0x08011B40
	bx r3
	.align 2, 0
_08011B44: .4byte gUnknown_080795C8
_08011B48: .4byte gUnknown_03007FF0
_08011B4C: .4byte 0x68736D53

	THUMB_FUNC_START sub_8011B50
sub_8011B50: @ 0x08011B50
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08011B88
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08011B86
	movs r6, #0
_08011B64:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08011B7E
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08011B7C
	ldr r3, _08011B90
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_8011B40
_08011B7C:
	strb r6, [r4]
_08011B7E:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08011B64
_08011B86:
	str r4, [r5, #0x20]
_08011B88:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011B90: .4byte gUnknown_03007FF0

	THUMB_FUNC_START sub_8011B94
sub_8011B94: @ 0x08011B94
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08011BAC
	movs r0, #0xff
_08011BAC:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08011BC0
	movs r0, #0xff
_08011BC0:
	strb r0, [r4, #3]
	bx lr

	THUMB_FUNC_START sub_8011BC4
sub_8011BC4: @ 0x08011BC4
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08011DBC
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08011DC0
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08011C0A
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08011C08
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08011C08
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08011C08:
	str r3, [r5, #0x40]
_08011C0A:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08011C5C
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _08011C2A
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08011C2C
_08011C2A:
	adds r0, r3, #0
_08011C2C:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _08011C44
	b _08011DAA
_08011C44:
	movs r0, #0x80
	tst r0, r2
	beq _08011C60
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08011C58
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08011C58:
	ldrb r3, [r6, #1]
	b _08011C60
_08011C5C:
	mov sb, r4
	ldrb r3, [r5, #5]
_08011C60:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _08011C70
	movs r0, #0xff
_08011C70:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08011CB0
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08011C88
	b _08011DAA
_08011C88:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08011D04
	movs r0, #0x40
	tst r0, r1
	bne _08011D04
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08011D04
	beq _08011CA8
	b _08011DAA
_08011CA8:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08011D04
	b _08011DAA
_08011CB0:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_08011CBE:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08011D04
	movs r0, #0x40
	tst r0, r1
	beq _08011CD8
	cmp r2, #0
	bne _08011CDC
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08011CF6
_08011CD8:
	cmp r2, #0
	bne _08011CF8
_08011CDC:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08011CE8
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08011CF6
_08011CE8:
	bhi _08011CF8
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08011CF4
	adds r7, r0, #0
	b _08011CF6
_08011CF4:
	blo _08011CF8
_08011CF6:
	mov r8, r4
_08011CF8:
	adds r4, #0x40
	subs r3, #1
	bgt _08011CBE
	mov r4, r8
	cmp r4, #0
	beq _08011DAA
_08011D04:
	adds r0, r4, #0
	bl sub_80122D0
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08011D18
	str r4, [r3, #0x30]
_08011D18:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _08011D2A
	adds r1, r5, #0
	bl sub_8011E04
_08011D2A:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_801289C
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl sub_8011B94
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08011D64
	movs r3, #0
_08011D64:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _08011D92
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _08011D7E
	movs r0, #0x70
	tst r0, r1
	bne _08011D80
_08011D7E:
	movs r1, #8
_08011D80:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_8011B40
	b _08011D9C
_08011D92:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_8011E54
_08011D9C:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08011DAA:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08011DBC: .4byte gUnknown_03007FF0
_08011DC0: .4byte gUnknown_080795C8

	THUMB_FUNC_START sub_8011DC4
sub_8011DC4: @ 0x08011DC4
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08011DD6
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08011DD8
_08011DD6:
	ldrb r3, [r1, #5]
_08011DD8:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08011E00
	movs r4, #0x83
	movs r5, #0x40
_08011DE2:
	ldrb r2, [r1]
	tst r2, r4
	beq _08011DFA
	tst r2, r5
	bne _08011DFA
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _08011DFA
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08011E00
_08011DFA:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _08011DE2
_08011E00:
	pop {r4, r5}
	bx lr

	THUMB_FUNC_START sub_8011E04
sub_8011E04: @ 0x08011E04
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08011E14
	movs r2, #0xc
	b _08011E16
_08011E14:
	movs r2, #3
_08011E16:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8011E20
sub_8011E20: @ 0x08011E20
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8011E2C
sub_8011E2C: @ 0x08011E2C
	mov ip, lr
	bl sub_8011E20
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08011E3C
	bl sub_8011E04
_08011E3C:
	bx ip
	.align 2, 0

	THUMB_FUNC_START sub_8011E40
sub_8011E40: @ 0x08011E40
	mov ip, lr
	bl sub_8011E20
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _08011E50
	bl sub_8011E04
_08011E50:
	bx ip
	.align 2, 0

	THUMB_FUNC_START sub_8011E54
sub_8011E54: @ 0x08011E54
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08011E68
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08011E68:
	ldr r3, _08011EB0
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08011EB4
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011EB0: .4byte gUnknown_080793E4
_08011EB4: .4byte gUnknown_08079498

	THUMB_FUNC_START nullsub_33
nullsub_33: @ 0x08011EB8
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8011EBC
sub_8011EBC: @ 0x08011EBC
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _08011ED0
	cmp r3, r0
	bne _08011ECE
	ldr r0, [r2, #4]
	ldr r1, _08011ED4
	ands r0, r1
	str r0, [r2, #4]
_08011ECE:
	bx lr
	.align 2, 0
_08011ED0: .4byte 0x68736D53
_08011ED4: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_8011ED8
sub_8011ED8: @ 0x08011ED8
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08011EF4
	cmp r3, r0
	bne _08011EF0
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_08011EF0:
	bx lr
	.align 2, 0
_08011EF4: .4byte 0x68736D53

	THUMB_FUNC_START m4aSoundInit
m4aSoundInit: @ 0x08011EF8
	push {r4, r5, r6, lr}
	ldr r0, _08011F4C
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08011F50
	ldr r2, _08011F54
	bl CpuSet
	ldr r0, _08011F58
	bl sub_80122F8
	ldr r0, _08011F5C
	bl sub_80121B4
	ldr r0, _08011F60
	bl sub_8012494
	ldr r0, _08011F64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08011F46
	ldr r5, _08011F68
	adds r6, r0, #0
_08011F2A:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_8012638
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08011F6C
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _08011F2A
_08011F46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011F4C: .4byte SoundMainRAM+1
_08011F50: .4byte gUnknown_03004010
_08011F54: .4byte 0x04000100
_08011F58: .4byte gUnknown_03004410
_08011F5C: .4byte gUnknown_03005450
_08011F60: .4byte 0x0095E600
_08011F64: .4byte 0x00000004
_08011F68: .4byte gUnknown_080412FC
_08011F6C: .4byte gUnknown_03005980

	THUMB_FUNC_START sub_8011F70
sub_8011F70: @ 0x08011F70
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START m4aSongNumStart
m4aSongNumStart: @ 0x08011F7C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08011FA0
	ldr r1, _08011FA4
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_80126B0
	pop {r0}
	bx r0
	.align 2, 0
_08011FA0: .4byte gUnknown_080412FC
_08011FA4: .4byte gUnknown_0804132C

	THUMB_FUNC_START m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x08011FA8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08011FD4
	ldr r1, _08011FD8
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08011FDC
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_80126B0
	b _08011FF0
	.align 2, 0
_08011FD4: .4byte gUnknown_080412FC
_08011FD8: .4byte gUnknown_0804132C
_08011FDC:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08011FE8
	cmp r2, #0
	bge _08011FF0
_08011FE8:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_80126B0
_08011FF0:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8011FF4
sub_8011FF4: @ 0x08011FF4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08012020
	ldr r1, _08012024
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08012028
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_80126B0
	b _08012044
	.align 2, 0
_08012020: .4byte gUnknown_080412FC
_08012024: .4byte gUnknown_0804132C
_08012028:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0801203A
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_80126B0
	b _08012044
_0801203A:
	cmp r2, #0
	bge _08012044
	adds r0, r1, #0
	bl sub_8011EBC
_08012044:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8012048
sub_8012048: @ 0x08012048
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08012074
	ldr r1, _08012078
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0801206E
	adds r0, r2, #0
	bl m4aMPlayStop
_0801206E:
	pop {r0}
	bx r0
	.align 2, 0
_08012074: .4byte gUnknown_080412FC
_08012078: .4byte gUnknown_0804132C

	THUMB_FUNC_START sub_801207C
sub_801207C: @ 0x0801207C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080120A8
	ldr r1, _080120AC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080120A2
	adds r0, r2, #0
	bl sub_8011EBC
_080120A2:
	pop {r0}
	bx r0
	.align 2, 0
_080120A8: .4byte gUnknown_080412FC
_080120AC: .4byte gUnknown_0804132C

	THUMB_FUNC_START m4aMPlayAllStop
m4aMPlayAllStop: @ 0x080120B0
	push {r4, r5, lr}
	ldr r0, _080120D4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080120CE
	ldr r5, _080120D8
	adds r4, r0, #0
_080120C0:
	ldr r0, [r5]
	bl m4aMPlayStop
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080120C0
_080120CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080120D4: .4byte 0x00000004
_080120D8: .4byte gUnknown_080412FC

	THUMB_FUNC_START m4aMPlayContinue
m4aMPlayContinue: @ 0x080120DC
	push {lr}
	bl sub_8011EBC
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_80120E8
sub_80120E8: @ 0x080120E8
	push {r4, r5, lr}
	ldr r0, _0801210C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08012106
	ldr r5, _08012110
	adds r4, r0, #0
_080120F8:
	ldr r0, [r5]
	bl sub_8011EBC
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080120F8
_08012106:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801210C: .4byte 0x00000004
_08012110: .4byte gUnknown_080412FC

	THUMB_FUNC_START sub_8012114
sub_8012114: @ 0x08012114
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_8011ED8
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START m4aMPlayFadeOutTemporarily
m4aMPlayFadeOutTemporarily: @ 0x08012124
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0801213C
	cmp r3, r0
	bne _0801213A
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _08012140
	strh r0, [r2, #0x28]
_0801213A:
	bx lr
	.align 2, 0
_0801213C: .4byte 0x68736D53
_08012140: .4byte 0x00000101

	THUMB_FUNC_START m4aMPlayFadeIn
m4aMPlayFadeIn: @ 0x08012144
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08012164
	cmp r3, r0
	bne _08012162
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _08012168
	ands r0, r1
	str r0, [r2, #4]
_08012162:
	bx lr
	.align 2, 0
_08012164: .4byte 0x68736D53
_08012168: .4byte 0x7FFFFFFF

	THUMB_FUNC_START m4aMPlayImmInit
m4aMPlayImmInit: @ 0x0801216C
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _080121AE
	movs r7, #0x80
_08012178:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080121A6
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080121A6
	adds r0, r4, #0
	bl sub_80122E4
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_080121A6:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08012178
_080121AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80121B4
sub_80121B4: @ 0x080121B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0801227C
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _08012280
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08012284
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _08012288
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _0801228C
	cmp r6, r0
	bne _08012274
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _08012290
	ldr r0, _08012294
	str r0, [r1, #0x20]
	ldr r0, _08012298
	str r0, [r1, #0x44]
	ldr r0, _0801229C
	str r0, [r1, #0x4c]
	ldr r0, _080122A0
	str r0, [r1, #0x70]
	ldr r0, _080122A4
	str r0, [r1, #0x74]
	ldr r0, _080122A8
	str r0, [r1, #0x78]
	ldr r0, _080122AC
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _080122B0
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _080122B4
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _080122B8
	str r0, [r4, #0x28]
	ldr r0, _080122BC
	str r0, [r4, #0x2c]
	ldr r0, _080122C0
	str r0, [r4, #0x30]
	ldr r0, _080122C4
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _080122C8
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_08012274:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801227C: .4byte 0x04000084
_08012280: .4byte 0x04000080
_08012284: .4byte 0x04000063
_08012288: .4byte gUnknown_03007FF0
_0801228C: .4byte 0x68736D53
_08012290: .4byte gUnknown_030053C0
_08012294: .4byte sub_8013170+1
_08012298: .4byte sub_8011E2C+1
_0801229C: .4byte sub_8011E40+1
_080122A0: .4byte sub_80132C8+1
_080122A4: .4byte sub_8011DC4+1
_080122A8: .4byte sub_80123F0+1
_080122AC: .4byte sub_8011B50+1
_080122B0: .4byte sub_80127D4+1
_080122B4: .4byte sub_801289C+1
_080122B8: .4byte sub_8012AB0+1
_080122BC: .4byte sub_80129F8+1
_080122C0: .4byte sub_8012950+1
_080122C4: .4byte 0x00000050
_080122C8: .4byte 0x05000040

	THUMB_FUNC_START SoundGetJumpList
SoundGetJumpList: @ 0x080122CC
	svc #0x2a
	bx lr

	THUMB_FUNC_START sub_80122D0
sub_80122D0: @ 0x080122D0
	push {lr}
	ldr r1, _080122E0
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080122E0: .4byte gUnknown_03005448

	THUMB_FUNC_START sub_80122E4
sub_80122E4: @ 0x080122E4
	push {lr}
	ldr r1, _080122F4
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080122F4: .4byte gUnknown_0300544C

	THUMB_FUNC_START sub_80122F8
sub_80122F8: @ 0x080122F8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _080123B0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08012314
	ldr r0, _080123B4
	str r0, [r1]
_08012314:
	ldr r1, _080123B8
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08012322
	ldr r0, _080123B4
	str r0, [r1]
_08012322:
	ldr r0, _080123BC
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _080123C0
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _080123C4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080123C8
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080123CC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _080123D0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _080123D4
	str r0, [r1]
	ldr r0, _080123D8
	str r5, [r0]
	str r3, [sp]
	ldr r2, _080123DC
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _080123E0
	str r0, [r5, #0x38]
	ldr r0, _080123E4
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _080123E8
	adds r0, r4, #0
	bl sub_80116D8
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_80123F0
	ldr r0, _080123EC
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080123B0: .4byte 0x040000C4
_080123B4: .4byte 0x84400004
_080123B8: .4byte 0x040000D0
_080123BC: .4byte 0x040000C6
_080123C0: .4byte 0x04000084
_080123C4: .4byte 0x0000A90E
_080123C8: .4byte 0x04000089
_080123CC: .4byte 0x040000BC
_080123D0: .4byte 0x040000A0
_080123D4: .4byte 0x040000A4
_080123D8: .4byte gUnknown_03007FF0
_080123DC: .4byte 0x050003EC
_080123E0: .4byte sub_8011BC4+1
_080123E4: .4byte nullsub_34+1
_080123E8: .4byte gUnknown_030053C0
_080123EC: .4byte 0x68736D53

	THUMB_FUNC_START sub_80123F0
sub_80123F0: @ 0x080123F0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08012470
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08012474
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _08012478
	muls r0, r5, r0
	ldr r1, _0801247C
	adds r0, r0, r1
	ldr r1, _08012480
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08012484
	strh r6, [r0]
	ldr r4, _08012488
	ldr r0, _0801248C
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl sub_80125FC
	ldr r1, _08012490
_08012454:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08012454
	ldr r1, _08012490
_0801245C:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _0801245C
	ldr r1, _08012484
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012470: .4byte gUnknown_03007FF0
_08012474: .4byte gUnknown_080794C8
_08012478: .4byte 0x00091D1B
_0801247C: .4byte 0x00001388
_08012480: .4byte 0x00002710
_08012484: .4byte 0x04000102
_08012488: .4byte 0x04000100
_0801248C: .4byte 0x00044940
_08012490: .4byte 0x04000006

	THUMB_FUNC_START sub_8012494
sub_8012494: @ 0x08012494
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08012520
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08012524
	cmp r1, r0
	bne _0801251A
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _080124B6
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_080124B6:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _080124D6
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_080124CC:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _080124CC
_080124D6:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _080124E4
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_080124E4:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08012502
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08012528
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08012502:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08012516
	bl sub_8012580
	adds r0, r4, #0
	bl sub_80123F0
_08012516:
	ldr r0, _08012524
	str r0, [r5]
_0801251A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012520: .4byte gUnknown_03007FF0
_08012524: .4byte 0x68736D53
_08012528: .4byte 0x04000089

	THUMB_FUNC_START sub_801252C
sub_801252C: @ 0x0801252C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08012578
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _0801257C
	cmp r1, r0
	bne _08012572
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_08012546:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _08012546
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _0801256E
	movs r5, #1
	movs r7, #0
_0801255A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _0801255A
_0801256E:
	ldr r0, _0801257C
	str r0, [r6]
_08012572:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012578: .4byte gUnknown_03007FF0
_0801257C: .4byte 0x68736D53

	THUMB_FUNC_START sub_8012580
sub_8012580: @ 0x08012580
	push {lr}
	sub sp, #4
	ldr r0, _080125E0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _080125E4
	adds r0, r1, r3
	cmp r0, #1
	bhi _080125D8
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _080125E8
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _080125AA
	ldr r0, _080125EC
	str r0, [r1]
_080125AA:
	ldr r1, _080125F0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _080125B8
	ldr r0, _080125EC
	str r0, [r1]
_080125B8:
	ldr r0, _080125F4
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _080125F8
	mov r0, sp
	bl CpuSet
_080125D8:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080125E0: .4byte gUnknown_03007FF0
_080125E4: .4byte 0x978C92AD
_080125E8: .4byte 0x040000C4
_080125EC: .4byte 0x84400004
_080125F0: .4byte 0x040000D0
_080125F4: .4byte 0x040000C6
_080125F8: .4byte 0x05000318

	THUMB_FUNC_START sub_80125FC
sub_80125FC: @ 0x080125FC
	push {r4, lr}
	ldr r0, _0801262C
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08012630
	cmp r3, r0
	beq _08012624
	ldr r0, _08012634
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_08012624:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801262C: .4byte gUnknown_03007FF0
_08012630: .4byte 0x68736D53
_08012634: .4byte 0x040000C6

	THUMB_FUNC_START sub_8012638
sub_8012638: @ 0x08012638
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _0801269C
	cmp r4, #0x10
	bls _0801264C
	movs r4, #0x10
_0801264C:
	ldr r0, _080126A4
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080126A8
	cmp r1, r0
	bne _0801269C
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_80122E4
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08012680
	movs r1, #0
_08012672:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08012672
_08012680:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08012690
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08012690:
	str r7, [r5, #0x24]
	ldr r0, _080126AC
	str r0, [r5, #0x20]
	ldr r0, _080126A8
	str r0, [r5]
	str r0, [r7, #0x34]
_0801269C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080126A4: .4byte gUnknown_03007FF0
_080126A8: .4byte 0x68736D53
_080126AC: .4byte sub_80118E8+1

	THUMB_FUNC_START sub_80126B0
sub_80126B0: @ 0x080126B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08012790
	cmp r1, r0
	bne _08012786
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _080126F2
	ldr r0, [r5]
	cmp r0, #0
	beq _080126DC
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080126E8
_080126DC:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080126F2
	cmp r1, #0
	blt _080126F2
_080126E8:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08012786
_080126F2:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _08012752
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08012772
	mov r8, r6
_08012726:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8011B50
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _08012752
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08012726
_08012752:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08012772
	movs r1, #0
	mov r8, r1
_0801275C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8011B50
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _0801275C
_08012772:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08012782
	ldrb r0, [r7, #3]
	bl sub_8012494
_08012782:
	ldr r0, _08012790
	str r0, [r5, #0x34]
_08012786:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012790: .4byte 0x68736D53

	THUMB_FUNC_START m4aMPlayStop
m4aMPlayStop: @ 0x08012794
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _080127D0
	cmp r1, r0
	bne _080127CA
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _080127C6
_080127B6:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8011B50
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _080127B6
_080127C6:
	ldr r0, _080127D0
	str r0, [r6, #0x34]
_080127CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080127D0: .4byte 0x68736D53

	THUMB_FUNC_START sub_80127D4
sub_80127D4: @ 0x080127D4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08012896
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08012814
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08012896
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012818
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _0801286A
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _0801286A
	.align 2, 0
_08012814: .4byte 0x0000FFFF
_08012818:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0801286A
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _0801284A
_0801282E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8011B50
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _08012842
	strb r0, [r4]
_08012842:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _0801282E
_0801284A:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _0801285E
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08012862
_0801285E:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08012862:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08012896
_0801286A:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08012896
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08012878:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801288E
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_0801288E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08012878
_08012896:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801289C
sub_801289C: @ 0x0801289C
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08012900
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _080128C4
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_080128C4:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _080128DA
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_080128DA:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080128E6
	adds r1, r0, #0
	b _080128EC
_080128E6:
	cmp r1, #0x7f
	ble _080128EC
	movs r1, #0x7f
_080128EC:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_08012900:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08012944
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0801293E
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_0801293E:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_08012944:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8012950
sub_8012950: @ 0x08012950
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08012988
	cmp r5, #0x14
	bhi _0801296C
	movs r5, #0
	b _0801297A
_0801296C:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0801297A
	movs r5, #0x3b
_0801297A:
	ldr r0, _08012984
	adds r0, r5, r0
	ldrb r0, [r0]
	b _080129EA
	.align 2, 0
_08012984: .4byte gUnknown_0807957C
_08012988:
	cmp r5, #0x23
	bhi _08012994
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _080129A6
_08012994:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _080129A6
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_080129A6:
	ldr r3, _080129F0
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _080129F4
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_080129EA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080129F0: .4byte gUnknown_080794E0
_080129F4: .4byte gUnknown_08079564

	THUMB_FUNC_START sub_80129F8
sub_80129F8: @ 0x080129F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08012A20
	cmp r0, #2
	bgt _08012A0C
	cmp r0, #1
	beq _08012A12
	b _08012A34
_08012A0C:
	cmp r1, #3
	beq _08012A28
	b _08012A34
_08012A12:
	ldr r1, _08012A1C
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08012A3C
	.align 2, 0
_08012A1C: .4byte 0x04000063
_08012A20:
	ldr r1, _08012A24
	b _08012A36
	.align 2, 0
_08012A24: .4byte 0x04000069
_08012A28:
	ldr r1, _08012A30
	movs r0, #0
	b _08012A3E
	.align 2, 0
_08012A30: .4byte 0x04000070
_08012A34:
	ldr r1, _08012A44
_08012A36:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_08012A3C:
	movs r0, #0x80
_08012A3E:
	strb r0, [r1]
	bx lr
	.align 2, 0
_08012A44: .4byte 0x04000079

	THUMB_FUNC_START sub_8012A48
sub_8012A48: @ 0x08012A48
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _08012A68
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08012A74
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _08012A82
_08012A68:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08012A74
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _08012A82
_08012A74:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _08012A92
_08012A82:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08012A94
	movs r0, #0xf
_08012A92:
	strb r0, [r1, #0xa]
_08012A94:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8012AB0
sub_8012AB0: @ 0x08012AB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08012AD0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08012AD4
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08012ADA
	.align 2, 0
_08012AD0: .4byte gUnknown_03007FF0
_08012AD4:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08012ADA:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08012AE0:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08012AF6
	b _08012EE0
_08012AF6:
	cmp r6, #2
	beq _08012B28
	cmp r6, #2
	bgt _08012B04
	cmp r6, #1
	beq _08012B0A
	b _08012B60
_08012B04:
	cmp r6, #3
	beq _08012B40
	b _08012B60
_08012B0A:
	ldr r0, _08012B1C
	str r0, [sp, #8]
	ldr r7, _08012B20
	ldr r2, _08012B24
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08012B70
	.align 2, 0
_08012B1C: .4byte 0x04000060
_08012B20: .4byte 0x04000062
_08012B24: .4byte 0x04000063
_08012B28:
	ldr r0, _08012B34
	str r0, [sp, #8]
	ldr r7, _08012B38
	ldr r2, _08012B3C
	b _08012B68
	.align 2, 0
_08012B34: .4byte 0x04000061
_08012B38: .4byte 0x04000068
_08012B3C: .4byte 0x04000069
_08012B40:
	ldr r0, _08012B54
	str r0, [sp, #8]
	ldr r7, _08012B58
	ldr r2, _08012B5C
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08012B70
	.align 2, 0
_08012B54: .4byte 0x04000070
_08012B58: .4byte 0x04000072
_08012B5C: .4byte 0x04000073
_08012B60:
	ldr r0, _08012BC0
	str r0, [sp, #8]
	ldr r7, _08012BC4
	ldr r2, _08012BC8
_08012B68:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_08012B70:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08012C66
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _08012C8A
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_8012A48
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08012BD8
	cmp r6, #2
	bgt _08012BCC
	cmp r6, #1
	beq _08012BD2
	b _08012C2C
	.align 2, 0
_08012BC0: .4byte 0x04000071
_08012BC4: .4byte 0x04000078
_08012BC8: .4byte 0x04000079
_08012BCC:
	cmp r6, #3
	beq _08012BE4
	b _08012C2C
_08012BD2:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08012BD8:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08012C38
_08012BE4:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08012C0C
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08012C20
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_08012C0C:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08012C24
	movs r0, #0xc0
	b _08012C46
	.align 2, 0
_08012C20: .4byte 0x04000090
_08012C24:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _08012C48
_08012C2C:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08012C38:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08012C46
	movs r0, #0x40
_08012C46:
	strb r0, [r4, #0x1a]
_08012C48:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _08012C62
	b _08012D9E
_08012C62:
	strb r2, [r4, #9]
	b _08012DCC
_08012C66:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08012C98
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _08012C8A
	b _08012DDE
_08012C8A:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_80129F8
	movs r0, #0
	strb r0, [r4]
	b _08012EDC
_08012C98:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08012CD8
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08012CD8
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08012D0A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08012DCC
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08012DCC
_08012CD8:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08012DCC
	cmp r6, #3
	bne _08012CEA
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08012CEA:
	adds r0, r4, #0
	bl sub_8012A48
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _08012D3E
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08012D3A
_08012D0A:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08012C8A
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08012DDE
	movs r2, #8
	mov r8, r2
	b _08012DDE
_08012D3A:
	ldrb r0, [r4, #7]
	b _08012DCA
_08012D3E:
	cmp r0, #1
	bne _08012D4A
_08012D42:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08012DCA
_08012D4A:
	cmp r0, #2
	bne _08012D8E
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08012D8A
_08012D62:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08012D72
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08012D0A
_08012D72:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08012D42
	movs r0, #8
	mov r8, r0
	b _08012D42
_08012D8A:
	ldrb r0, [r4, #5]
	b _08012DCA
_08012D8E:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08012DC8
_08012D9E:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08012D62
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08012DCC
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08012DCC
_08012DC8:
	ldrb r0, [r4, #4]
_08012DCA:
	strb r0, [r4, #0xb]
_08012DCC:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _08012DDE
	subs r0, #1
	str r0, [sp]
	b _08012CD8
_08012DDE:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _08012E56
	cmp r6, #3
	bgt _08012E1E
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _08012E1E
	ldr r0, _08012E08
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08012E10
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08012E0C
	b _08012E1A
	.align 2, 0
_08012E08: .4byte 0x04000089
_08012E0C: .4byte 0x000007FC
_08012E10:
	cmp r0, #0x7f
	bgt _08012E1E
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _08012E2C
_08012E1A:
	ands r0, r1
	str r0, [r4, #0x20]
_08012E1E:
	cmp r6, #4
	beq _08012E30
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _08012E3E
	.align 2, 0
_08012E2C: .4byte 0x000007FE
_08012E30:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_08012E3E:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08012E56:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08012EDC
	ldr r1, _08012EA0
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08012EA8
	ldr r0, _08012EA4
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _08012EDC
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08012EDC
	.align 2, 0
_08012EA0: .4byte 0x04000081
_08012EA4: .4byte gUnknown_080795B8
_08012EA8:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _08012EDC
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08012EDC
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08012EDC:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08012EE0:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08012EEA
	b _08012AE0
_08012EEA:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8012EFC
sub_8012EFC: @ 0x08012EFC
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08012F20
	cmp r3, r0
	bne _08012F18
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08012F18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012F20: .4byte 0x68736D53

	THUMB_FUNC_START m4aMPlayVolumeControl
m4aMPlayVolumeControl: @ 0x08012F24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08012F88
	cmp r3, r0
	bne _08012F7C
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08012F78
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_08012F54:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08012F6E
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08012F6E
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08012F6E:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08012F54
_08012F78:
	ldr r0, _08012F88
	str r0, [r4, #0x34]
_08012F7C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012F88: .4byte 0x68736D53

	THUMB_FUNC_START sub_8012F8C
sub_8012F8C: @ 0x08012F8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08012FFC
	cmp r3, r0
	bne _08012FEE
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08012FEA
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08012FC4:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08012FE0
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08012FE0
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08012FE0:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08012FC4
_08012FEA:
	ldr r0, _08012FFC
	str r0, [r4, #0x34]
_08012FEE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012FFC: .4byte 0x68736D53

	THUMB_FUNC_START m4aMPlayPanpotControl
m4aMPlayPanpotControl: @ 0x08013000
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _08013064
	cmp r3, r0
	bne _08013058
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08013054
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08013030:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _0801304A
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0801304A
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_0801304A:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08013030
_08013054:
	ldr r0, _08013064
	str r0, [r4, #0x34]
_08013058:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013064: .4byte 0x68736D53

	THUMB_FUNC_START sub_8013068
sub_8013068: @ 0x08013068
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _0801307C
	movs r0, #0xc
	b _0801307E
_0801307C:
	movs r0, #3
_0801307E:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8013088
sub_8013088: @ 0x08013088
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080130F8
	cmp r1, r0
	bne _080130E8
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080130E4
	mov sb, r8
_080130B8:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080130DA
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080130DA
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _080130DA
	adds r0, r4, #0
	bl sub_8013068
_080130DA:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080130B8
_080130E4:
	ldr r0, _080130F8
	str r0, [r6, #0x34]
_080130E8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080130F8: .4byte 0x68736D53

	THUMB_FUNC_START sub_80130FC
sub_80130FC: @ 0x080130FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _0801316C
	cmp r1, r0
	bne _0801315C
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08013158
	mov sb, r8
_0801312C:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _0801314E
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _0801314E
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _0801314E
	adds r0, r4, #0
	bl sub_8013068
_0801314E:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _0801312C
_08013158:
	ldr r0, _0801316C
	str r0, [r6, #0x34]
_0801315C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801316C: .4byte 0x68736D53

	THUMB_FUNC_START sub_8013170
sub_8013170: @ 0x08013170
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _08013194
	b _080132C2
_08013194:
	lsls r0, r5, #2
	ldr r1, _080131A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080131A0: .4byte _080131A4
_080131A4: @ jump table
	.4byte _080131EC @ case 0
	.4byte _080131F0 @ case 1
	.4byte _080131F8 @ case 2
	.4byte _08013200 @ case 3
	.4byte _0801320A @ case 4
	.4byte _08013218 @ case 5
	.4byte _08013226 @ case 6
	.4byte _0801322E @ case 7
	.4byte _08013236 @ case 8
	.4byte _0801323E @ case 9
	.4byte _08013246 @ case 10
	.4byte _0801324E @ case 11
	.4byte _08013256 @ case 12
	.4byte _08013264 @ case 13
	.4byte _08013272 @ case 14
	.4byte _08013280 @ case 15
	.4byte _0801328E @ case 16
	.4byte _0801329C @ case 17
_080131EC:
	strb r2, [r3]
	b _080132C2
_080131F0:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _080132C2
_080131F8:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _080132C2
_08013200:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _080132C2
_0801320A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _080132C2
_08013218:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _080132C2
_08013226:
	ldrb r3, [r3]
	cmp r3, r2
	beq _080132A8
	b _080132BC
_0801322E:
	ldrb r3, [r3]
	cmp r3, r2
	bne _080132A8
	b _080132BC
_08013236:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _080132A8
	b _080132BC
_0801323E:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _080132A8
	b _080132BC
_08013246:
	ldrb r3, [r3]
	cmp r3, r2
	bls _080132A8
	b _080132BC
_0801324E:
	ldrb r3, [r3]
	cmp r3, r2
	blo _080132A8
	b _080132BC
_08013256:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _080132A8
	b _080132BC
_08013264:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _080132A8
	b _080132BC
_08013272:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _080132A8
	b _080132BC
_08013280:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080132A8
	b _080132BC
_0801328E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _080132A8
	b _080132BC
_0801329C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080132BC
_080132A8:
	ldr r0, _080132B8
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _080132C2
	.align 2, 0
_080132B8: .4byte gUnknown_030053C4
_080132BC:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_080132C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80132C8
sub_80132C8: @ 0x080132C8
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _080132E4
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080132E4: .4byte gUnknown_080795FC

	THUMB_FUNC_START sub_80132E8
sub_80132E8: @ 0x080132E8
	push {lr}
	ldr r2, _080132F8
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080132F8: .4byte gUnknown_030053C0

	THUMB_FUNC_START sub_80132FC
sub_80132FC: @ 0x080132FC
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _08013334
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _08013338
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _0801333C
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _08013340
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013334: .4byte 0xFFFFFF00
_08013338: .4byte 0xFFFF00FF
_0801333C: .4byte 0xFF00FFFF
_08013340: .4byte 0x00FFFFFF

	THUMB_FUNC_START sub_8013344
sub_8013344: @ 0x08013344
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8013358
sub_8013358: @ 0x08013358
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_801336C
sub_801336C: @ 0x0801336C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8013380
sub_8013380: @ 0x08013380
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8013394
sub_8013394: @ 0x08013394
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_80133A8
sub_80133A8: @ 0x080133A8
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	THUMB_FUNC_START sub_80133B4
sub_80133B4: @ 0x080133B4
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	THUMB_FUNC_START sub_80133C0
sub_80133C0: @ 0x080133C0
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_80133D4
sub_80133D4: @ 0x080133D4
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	THUMB_FUNC_START nullsub_34
nullsub_34: @ 0x080133E8
	bx lr
	.align 2, 0
