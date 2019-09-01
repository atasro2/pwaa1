.include "asm/macros.inc"

.syntax unified

	THUMB_FUNC_START ReadSram_Core
ReadSram_Core: @ 0x08013554
	push {r4,lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _08013414
	movs r2, #1
	negs r2, r2
_08013406:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _08013406
_08013414:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START ReadSram
ReadSram: @ 0x0801341C
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _08013448
	ldrh r0, [r2]
	ldr r1, _0801344C
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08013450
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _08013454
	ldr r1, _08013450
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08013464
	.align 2, 0
_08013448: .4byte 0x04000204
_0801344C: .4byte 0x0000FFFC
_08013450: .4byte ReadSram_Core+1
_08013454: .4byte ReadSram+1
_08013458:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08013464:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08013458
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START WriteSram
WriteSram: @ 0x08013480
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _080134B8
	ldrh r0, [r2]
	ldr r1, _080134BC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080134B0
	adds r1, r0, #0
_080134A2:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _080134A2
_080134B0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080134B8: .4byte 0x04000204
_080134BC: .4byte 0x0000FFFC

	THUMB_FUNC_START VerifySram_Core
VerifySram_Core: @ 0x080134C0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _080134E6
	movs r2, #1
	rsbs r2, r2, #0
_080134D0:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _080134E0
	subs r0, r3, #1
	b _080134E8
_080134E0:
	subs r4, #1
	cmp r4, r2
	bne _080134D0
_080134E6:
	movs r0, #0
_080134E8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START VerifySram
VerifySram: @ 0x080134F0
	push {r4, r5, r6, lr}
	sub sp, #0xc0
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _0801351C
	ldrh r0, [r2]
	ldr r1, _08013520
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08013524
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _08013528
	ldr r1, _08013524
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08013538
	.align 2, 0
_0801351C: .4byte 0x04000204
_08013520: .4byte 0x0000FFFC
_08013524: .4byte VerifySram_Core+1
_08013528: .4byte VerifySram+1
_0801352C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08013538:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0801352C
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0xc0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8013554
sub_8013554: @ 0x08013554
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r7, #0
	b _08013566
_08013560:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08013566:
	cmp r7, #2
	bhi _08013584
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl WriteSram
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl VerifySram
	adds r3, r0, #0
	cmp r3, #0
	bne _08013560
_08013584:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
