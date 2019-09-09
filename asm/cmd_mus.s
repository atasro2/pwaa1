.include "asm/macros.inc"

.syntax unified

	THUMB_FUNC_START sub_800F3E0
sub_800F3E0: @ 0x0800F3E0
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800F404
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800F3FE
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStart
_0800F3FE:
	pop {r0}
	bx r0
	.align 2, 0
_0800F404: .4byte gUnknown_03003730

	THUMB_FUNC_START sub_800F408
sub_800F408: @ 0x0800F408
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800F434
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0800F44C
	movs r0, #0x10
	ldrb r1, [r5, #0x1c]
	ands r0, r1
	cmp r0, #0
	beq _0800F438
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStart
	b _0800F440
	.align 2, 0
_0800F434: .4byte gUnknown_03003730
_0800F438:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_0800F440:
	strb r4, [r5, #0x1d]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r5, #0x22]
	movs r0, #4
	strb r0, [r5, #0x1c]
_0800F44C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_800F454
sub_800F454: @ 0x0800F454
	push {r4, r5, lr}
	ldr r4, _0800F494
	ldrb r1, [r4, #0x1c]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800F4A0
	ldr r5, _0800F498
	adds r0, r5, #0
	bl m4aMPlayStop
	movs r1, #0xfb
	ldrb r0, [r4, #0x1c]
	ands r1, r0
	movs r2, #0
	movs r0, #2
	orrs r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800F4A6
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x1c]
	ldr r1, _0800F49C
	adds r0, r5, #0
	movs r2, #4
	bl m4aMPlayVolumeControl
	b _0800F4A6
	.align 2, 0
_0800F494: .4byte gUnknown_03003730
_0800F498: .4byte gUnknown_030058C0
_0800F49C: .4byte 0x0000FFFF
_0800F4A0:
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x1c]
_0800F4A6:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800F4AC
sub_800F4AC: @ 0x0800F4AC
	push {r4, r5, lr}
	ldr r4, _0800F4D0
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r4, #0x1c]
	ands r0, r1
	cmp r0, #0
	bne _0800F4C8
	ldr r0, _0800F4D4
	bl m4aMPlayStop
	strb r5, [r4, #0x1c]
	movs r0, #0xff
	strb r0, [r4, #0x1d]
_0800F4C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F4D0: .4byte gUnknown_03003730
_0800F4D4: .4byte gUnknown_030058C0

	THUMB_FUNC_START sub_800F4D8
sub_800F4D8: @ 0x0800F4D8
	push {r4, lr}
	ldr r4, _0800F500
	ldrb r1, [r4, #0x1c]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F50E
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800F508
	ldr r0, _0800F504
	bl m4aMPlayContinue
	movs r0, #0xfd
	ldrb r1, [r4, #0x1c]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	b _0800F50C
	.align 2, 0
_0800F500: .4byte gUnknown_03003730
_0800F504: .4byte gUnknown_030058C0
_0800F508:
	movs r0, #0xfe
	ands r0, r1
_0800F50C:
	strb r0, [r4, #0x1c]
_0800F50E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800F514
sub_800F514: @ 0x0800F514
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0800F538
	movs r0, #4
	ldrb r2, [r4, #0x1c]
	ands r0, r2
	cmp r0, #0
	beq _0800F532
	ldr r0, _0800F53C
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	bl m4aMPlayFadeOutTemporarily
	movs r0, #0x14
	strb r0, [r4, #0x1c]
_0800F532:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F538: .4byte gUnknown_03003730
_0800F53C: .4byte gUnknown_030058C0

	THUMB_FUNC_START sub_800F540
sub_800F540: @ 0x0800F540
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800F58C
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	movs r3, #2
	ands r0, r3
	cmp r0, #0
	bne _0800F608
	ldrb r0, [r4, #0x1d]
	cmp r0, r1
	bne _0800F594
	ldrb r2, [r4, #0x1c]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800F594
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _0800F608
	movs r0, #0xee
	ands r0, r2
	strb r0, [r4, #0x1c]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStart
	ldr r4, _0800F590
	adds r0, r4, #0
	bl m4aMPlayImmInit
	adds r0, r4, #0
	bl m4aMPlayStop
	b _0800F608
	.align 2, 0
_0800F58C: .4byte gUnknown_03003730
_0800F590: .4byte gUnknown_030058C0
_0800F594:
	cmp r1, #0xff
	bne _0800F5E2
	ldrb r2, [r4, #0x1c]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800F5BE
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0800F608
	movs r1, #0xfe
	ands r1, r2
	strb r1, [r4, #0x1c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800F608
	bl sub_800F4D8
	b _0800F608
_0800F5BE:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0800F5DC
	ldr r0, _0800F5D8
	lsls r1, r5, #0xc
	lsrs r1, r1, #0x10
	bl m4aMPlayFadeIn
	movs r0, #4
	strb r0, [r4, #0x1c]
	b _0800F608
	.align 2, 0
_0800F5D8: .4byte gUnknown_030058C0
_0800F5DC:
	bl sub_800F4D8
	b _0800F5EE
_0800F5E2:
	adds r0, r1, #0
	bl sub_800F408
	ldr r0, _0800F610
	bl m4aMPlayImmInit
_0800F5EE:
	cmp r5, #0
	beq _0800F608
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	adds r1, r5, #0
	bl __udivsi3
	adds r0, #1
	strh r0, [r4, #0x20]
	movs r0, #0xc
	strb r0, [r4, #0x1c]
	movs r0, #0x28
	strh r0, [r4, #0x22]
_0800F608:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F610: .4byte gUnknown_030058C0

	THUMB_FUNC_START sub_800F614
sub_800F614: @ 0x0800F614
	push {r4, r5, lr}
	ldr r2, _0800F644
	movs r4, #3
	ldrb r0, [r2, #0x1c]
	ands r4, r0
	cmp r4, #0
	bne _0800F690
	ldrh r1, [r2, #0x20]
	movs r3, #0x20
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0800F684
	ldrh r5, [r2, #0x22]
	adds r1, r1, r5
	strh r1, [r2, #0x22]
	cmp r0, #0
	ble _0800F648
	lsls r1, r1, #0x10
	ldrh r3, [r2, #0x1a]
	lsls r0, r3, #0x10
	cmp r1, r0
	ble _0800F65A
	b _0800F652
	.align 2, 0
_0800F644: .4byte gUnknown_03003730
_0800F648:
	lsls r1, r1, #0x10
	ldrh r3, [r2, #0x1a]
	lsls r0, r3, #0x10
	cmp r1, r0
	bge _0800F65A
_0800F652:
	strh r3, [r2, #0x22]
	strh r4, [r2, #0x20]
	movs r0, #4
	strb r0, [r2, #0x1c]
_0800F65A:
	ldr r4, _0800F67C
	ldr r5, _0800F680
	movs r1, #0x22
	ldrsh r0, [r2, r1]
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r2, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayVolumeControl
	b _0800F690
	.align 2, 0
_0800F67C: .4byte gUnknown_030058C0
_0800F680: .4byte 0x0000FFFF
_0800F684:
	ldr r0, _0800F698
	ldr r0, [r0, #4]
	cmp r0, #0
	bge _0800F690
	movs r0, #2
	strb r0, [r2, #0x1c]
_0800F690:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F698: .4byte gUnknown_030058C0

	THUMB_FUNC_START sub_800F69C
sub_800F69C: @ 0x0800F69C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #3
	bhi _0800F6A8
	movs r4, #4
_0800F6A8:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0800F6CC
	ldr r0, _0800F708
	ldr r1, _0800F70C
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r2, #0
	adds r2, r4, #0
	ands r2, r3
	bl m4aMPlayVolumeControl
	ldr r1, _0800F710
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	strh r0, [r1, #0x22]
_0800F6CC:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0800F6E6
	ldr r0, _0800F714
	ldr r1, _0800F70C
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r2, #0
	adds r2, r4, #0
	ands r2, r3
	bl m4aMPlayVolumeControl
_0800F6E6:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0800F700
	ldr r0, _0800F718
	ldr r1, _0800F70C
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r2, r3, #0
	ands r4, r2
	adds r2, r4, #0
	bl m4aMPlayVolumeControl
_0800F700:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F708: .4byte gUnknown_030058C0
_0800F70C: .4byte 0x0000FFFF
_0800F710: .4byte gUnknown_03003730
_0800F714: .4byte gUnknown_03005900
_0800F718: .4byte gUnknown_03005940

	THUMB_FUNC_START sub_800F71C
sub_800F71C: @ 0x0800F71C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r5, _0800F73C
	movs r0, #3
	ldrb r1, [r5, #0x1c]
	ands r0, r1
	cmp r0, #0
	bne _0800F788
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r4, r0
	bls _0800F740
	adds r4, r0, #0
	b _0800F746
	.align 2, 0
_0800F73C: .4byte gUnknown_03003730
_0800F740:
	cmp r4, #3
	bhi _0800F746
	movs r4, #4
_0800F746:
	cmp r2, #0
	beq _0800F76E
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	strh r0, [r5, #0x1a]
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	movs r3, #0x22
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	adds r1, r2, #0
	bl __divsi3
	strh r0, [r5, #0x20]
	movs r0, #8
	ldrb r1, [r5, #0x1c]
	orrs r0, r1
	strb r0, [r5, #0x1c]
	b _0800F788
_0800F76E:
	ldr r0, _0800F790
	ldr r1, _0800F794
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r2, #0
	adds r2, r4, #0
	ands r2, r3
	bl m4aMPlayVolumeControl
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	strh r0, [r5, #0x22]
_0800F788:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F790: .4byte gUnknown_030058C0
_0800F794: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_800F798
sub_800F798: @ 0x0800F798
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800F7B2
	ldr r0, _0800F7E0
	ldr r1, _0800F7E4
	lsls r2, r5, #0x18
	asrs r2, r2, #0x18
	bl m4aMPlayPanpotControl
_0800F7B2:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800F7C6
	ldr r0, _0800F7E8
	ldr r1, _0800F7E4
	lsls r2, r5, #0x18
	asrs r2, r2, #0x18
	bl m4aMPlayPanpotControl
_0800F7C6:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0800F7DA
	ldr r0, _0800F7EC
	ldr r1, _0800F7E4
	lsls r2, r5, #0x18
	asrs r2, r2, #0x18
	bl m4aMPlayPanpotControl
_0800F7DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F7E0: .4byte gUnknown_030058C0
_0800F7E4: .4byte 0x0000FFFF
_0800F7E8: .4byte gUnknown_03005900
_0800F7EC: .4byte gUnknown_03005940
