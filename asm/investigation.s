	.include "asm/macros.inc"
	.syntax unified

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
_0800C418: .4byte gOamObjects+0x130
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
_0800C4D4: .4byte gOamObjects+0x190
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
	bl PauseBGM
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
	bl PlaySE
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
_0800C544: .4byte gJoypad
_0800C548: .4byte 0x040000D4
_0800C54C: .4byte gOamObjects
_0800C550: .4byte gSaveDataBuffer+0x750
_0800C554: .4byte 0x80000200
_0800C558: .4byte gMain
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
	bl PlaySE
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
_0800C5A8: .4byte gMain+0x4
_0800C5AC: .4byte gOamObjects+0x130
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
	bl PlaySE
	b _0800C84A
_0800C62E:
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0800C674
	movs r0, #0x2b
	bl PlaySE
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
	bl FadeOutBGM
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
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
	bl PlaySE
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
_0800C70C: .4byte gOamObjects+0x190
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
_0800C780: .4byte gOamObjects+0x130
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
_0800C800: .4byte gOamObjects+0x130
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
_0800C878: .4byte gOamObjects+0x130
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
_0800C9D8: .4byte gTalkData
_0800C9DC: .4byte gOamObjects+0x130
_0800C9E0: .4byte gAnimation+0x4E
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
_0800CAD8: .4byte gOamObjects+0x198
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
	bl PauseBGM
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
	bl PlaySE
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
_0800CBC0: .4byte gTalkData
_0800CBC4: .4byte gAnimation+0x4E
_0800CBC8: .4byte gJoypad
_0800CBCC: .4byte gOamObjects
_0800CBD0: .4byte gSaveDataBuffer+0x750
_0800CBD4: .4byte 0x80000200
_0800CBD8: .4byte gMain
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
	bl PlaySE
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
_0800CC28: .4byte gMain+0x4
_0800CC2C: .4byte gOamObjects+0x130
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
	bl PlaySE
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
	bl PlaySE
	ldr r3, [sp]
	ldrb r3, [r3, #4]
	lsls r1, r3, #1
	mov r0, r8
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r0, r5, #0
	bl ChangeScriptSection
	movs r0, #1
	bl sub_800244C
	mov r4, r8
	adds r4, #8
	ldr r5, [sp]
	ldrb r5, [r5, #4]
	adds r0, r5, r4
	ldrb r1, [r0]
	movs r0, #2
	bl GetFlag
	adds r1, r0, #0
	adds r2, r4, #0
	cmp r1, #0
	beq _0800CCF0
	ldr r1, _0800CCEC
	movs r0, #1
	strb r0, [r1, #0x13]
	b _0800CD04
	.align 2, 0
_0800CCEC: .4byte gScriptContext
_0800CCF0:
	ldr r0, _0800CD24
	strb r1, [r0, #0x13]
	ldr r6, [sp]
	ldrb r6, [r6, #4]
	adds r0, r6, r2
	ldrb r1, [r0]
	movs r0, #2
	movs r2, #1
	bl ChangeFlag
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
_0800CD24: .4byte gScriptContext
_0800CD28:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800CD42
	movs r0, #0x2c
	bl PlaySE
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
	bl GetFlag
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
_0800CD80: .4byte gOamObjects+0x110
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
_0800CE2C: .4byte gOamObjects+0x198
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
_0800CEA8: .4byte gOamObjects+0x130
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
	bl PauseBGM
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
	bl PlaySE
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
_0800CF24: .4byte gJoypad
_0800CF28: .4byte gScriptContext
_0800CF2C: .4byte 0x040000D4
_0800CF30: .4byte gOamObjects
_0800CF34: .4byte gSaveDataBuffer+0x750
_0800CF38: .4byte 0x80000200
_0800CF3C: .4byte gMain
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
	bl PlaySE
	ldr r0, _0800CF84
	ldr r0, [r0]
	mov r3, sl
	str r0, [r3, #8]
	movs r0, #7
	str r0, [r3, #4]
	b _0800D29C
	.align 2, 0
_0800CF84: .4byte gMain+0x4
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
_0800D080: .4byte gOamObjects+0x130
_0800D084: .4byte gOamObjects+0x198
_0800D088: .4byte gTalkData
_0800D08C: .4byte gAnimation+0x4E
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
_0800D0E8: .4byte gInvestigation
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
_0800D13C: .4byte gOamObjects+0x130
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
_0800D1F0: .4byte gTalkData
_0800D1F4: .4byte gOamObjects+0x130
_0800D1F8: .4byte gAnimation+0x4E
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
_0800D270: .4byte gOamObjects+0x130
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
_0800D30C: .4byte gMain+0x4
_0800D310: .4byte 0x02000007
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
_0800D36C: .4byte gScriptContext
_0800D370: .4byte gOamObjects+0x188
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
_0800D3E4: .4byte gOamObjects+0x188
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
_0800D4FC: .4byte gMain
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
	bl GetBGControlBits
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
_0800D570: .4byte gOamObjects+0x1A8
_0800D574: .4byte gScriptContext
_0800D578: .4byte gMain
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
_0800D5C4: .4byte gMain
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
	bl GetFlag
	cmp r0, #0
	bne _0800D624
	movs r0, #0x19
	b _0800D66C
	.align 2, 0
_0800D614: .4byte gMain
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
_0800D630: .4byte gExaminationData
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
_0800D64C: .4byte gExaminationData
_0800D650:
	cmp r1, #0xfe
	beq _0800D660
	adds r1, r4, #4
	mov r0, sp
	bl CheckRectCollisionWithArea
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