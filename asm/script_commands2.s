	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START Command40
Command40: @ 0x08007574
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

	THUMB_FUNC_START Command41
Command41: @ 0x0800759C
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
_08007600: .4byte gMain+0x4

	THUMB_FUNC_START Command42
Command42: @ 0x08007604
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
_08007624: .4byte gMain
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
_08007644: .4byte gMain

	THUMB_FUNC_START Command43
Command43: @ 0x08007648
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
_08007670: .4byte gMain
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
_080076A8: .4byte gMain
_080076AC: .4byte 0xFFFFFBFF
_080076B0: .4byte gOamObjects+0x118

	THUMB_FUNC_START Command44
Command44: @ 0x080076B4
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
_080076FC: .4byte gMain
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

	THUMB_FUNC_START Command46
Command46: @ 0x080077A0
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
_080077C0: .4byte gMain
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
_08007844: .4byte gMain
_08007848: .4byte gUnknown_08360834
_0800784C: .4byte gUnknown_08360854
_08007850: .4byte gLCDIORegisters
_08007854: .4byte gBG2MapBuffer
_08007858: .4byte 0x040000D4
_0800785C: .4byte gUnknown_02031FC0
_08007860: .4byte 0x80002580
_08007864: .4byte 0x00003E0A

	THUMB_FUNC_START Command47
Command47: @ 0x08007868
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

	THUMB_FUNC_START Command48
Command48: @ 0x0800788C
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

	THUMB_FUNC_START Command49
Command49: @ 0x080078EC
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
_08007904: .4byte gMain

	THUMB_FUNC_START Command4A
Command4A: @ 0x08007908
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
_08007920: .4byte gMain
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
_08007934: .4byte gMain
_08007938:
	ldr r0, [r1, #4]
	subs r0, #2
	str r0, [r1, #4]
	movs r0, #1
_08007940:
	bx lr
	.align 2, 0

	THUMB_FUNC_START Command4B
Command4B: @ 0x08007944
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

	THUMB_FUNC_START Command4C
Command4C: @ 0x080079A0
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
_080079B8: .4byte gMain
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
