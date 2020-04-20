	.include "asm/macros.inc"
	.syntax unified

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
