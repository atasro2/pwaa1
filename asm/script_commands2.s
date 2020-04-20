	.include "asm/macros.inc"
	.syntax unified

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
