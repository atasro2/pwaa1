	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_800E488
sub_800E488: @ 0x0800E488
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x14]
	ldrb r1, [r1, #0xd]
	adds r0, r1, r0
	ldrb r0, [r0]
	bl sub_800EA80
	movs r0, #3
	strb r0, [r4, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_800E4A4
sub_800E4A4: @ 0x0800E4A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0800E4C4
	mov sb, r0
	ldrb r7, [r5, #6]
	cmp r7, #2
	bgt _0800E4C8
	cmp r7, #1
	bge _0800E5A4
	cmp r7, #0
	beq _0800E4D0
	b _0800E5C6
	.align 2, 0
_0800E4C4: .4byte gOamObjects+0x1C8
_0800E4C8:
	cmp r7, #3
	bne _0800E4CE
	b _0800E5CC
_0800E4CE:
	b _0800E5C6
_0800E4D0:
	adds r0, r5, #0
	adds r0, #0x84
	movs r1, #0
	mov r8, r1
	strh r7, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	mov r2, sb
	strh r1, [r2]
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _0800E4EE
	b _0800E6A6
_0800E4EE:
	movs r0, #4
	bl PlayAnimation
	movs r0, #0x37
	bl PlaySE
	ldr r1, _0800E574
	movs r0, #6
	strb r0, [r1, #1]
	ldr r0, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r0, r4, r0
	ldr r1, _0800E578
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r0, _0800E57C
	adds r4, r2, r0
	ldr r0, _0800E580
	str r4, [r0]
	ldr r1, _0800E584
	str r1, [r0, #4]
	ldr r1, _0800E588
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E58C
	adds r4, r2, r1
	str r4, [r0]
	ldr r1, _0800E590
	str r1, [r0, #4]
	ldr r1, _0800E594
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x10
	mov r2, sb
	strh r0, [r2]
	ldr r0, _0800E598
	strh r0, [r2, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r2, #4]
	adds r0, r5, #0
	adds r0, #0x7f
	mov r1, r8
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6]
	ldr r1, _0800E59C
	adds r1, #0x4a
	ldr r0, _0800E5A0
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	mov r0, r8
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	mov r1, r8
	strb r1, [r5, #7]
	b _0800E6A6
	.align 2, 0
_0800E574: .4byte gTestimony
_0800E578: .4byte gUnknown_08018A6C
_0800E57C: .4byte gUnknown_081B290C
_0800E580: .4byte 0x040000D4
_0800E584: .4byte 0x05000220
_0800E588: .4byte 0x80000010
_0800E58C: .4byte gUnknown_081B292C
_0800E590: .4byte 0x06011000
_0800E594: .4byte 0x80000400
_0800E598: .4byte 0x0000C058
_0800E59C: .4byte gIORegisters
_0800E5A0: .4byte 0x0000FDFF
_0800E5A4:
	ldrb r0, [r5, #7]
	cmp r0, #7
	bls _0800E5C2
	movs r0, #3
	movs r1, #1
	movs r2, #6
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r5, #6]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #6]
	strb r1, [r5, #7]
	b _0800E5C6
_0800E5C2:
	adds r0, #1
	strb r0, [r5, #7]
_0800E5C6:
	adds r6, r5, #0
	adds r6, #0x84
	b _0800E6A6
_0800E5CC:
	ldrb r0, [r5, #7]
	cmp r0, #0x37
	bls _0800E68C
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov r2, sb
	strh r1, [r2]
	ldr r2, _0800E610
	strb r0, [r2, #0xe]
	movs r0, #8
	strb r0, [r2, #0xf]
	ldr r0, _0800E614
	adds r0, #0x4a
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	movs r0, #1
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	ldr r6, _0800E618
	ldrh r0, [r6, #0x1e]
	ldr r1, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r1, r4, r1
	ldrb r1, [r1]
	bl sub_800EE20
	cmp r0, #0
	beq _0800E61C
	bl ChangeScriptSection
	b _0800E676
	.align 2, 0
_0800E610: .4byte gInvestigation
_0800E614: .4byte gIORegisters
_0800E618: .4byte gScriptContext
_0800E61C:
	ldrh r4, [r6, #0x1e]
	movs r0, #0x10
	ldrh r6, [r6]
	ands r0, r6
	cmp r0, #0
	beq _0800E632
	adds r4, #1
	adds r0, r4, #0
	bl ChangeScriptSection
	b _0800E66C
_0800E632:
	bl Random
	ands r0, r7
	cmp r0, #1
	beq _0800E652
	cmp r0, #1
	blo _0800E64A
	cmp r0, #2
	beq _0800E65A
	cmp r0, #3
	beq _0800E662
	b _0800E668
_0800E64A:
	movs r0, #0x1a
	bl ChangeScriptSection
	b _0800E668
_0800E652:
	movs r0, #0x1b
	bl ChangeScriptSection
	b _0800E668
_0800E65A:
	movs r0, #0x1c
	bl ChangeScriptSection
	b _0800E668
_0800E662:
	movs r0, #0x1d
	bl ChangeScriptSection
_0800E668:
	ldr r0, _0800E680
	strh r4, [r0, #0x20]
_0800E66C:
	ldr r1, _0800E680
	ldr r0, _0800E684
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
_0800E676:
	ldr r1, _0800E688
	ldr r0, [r5, #8]
	str r0, [r1]
	b _0800E740
	.align 2, 0
_0800E680: .4byte gScriptContext
_0800E684: .4byte 0x0000FFEF
_0800E688: .4byte gMain+0x4
_0800E68C:
	adds r0, #1
	strb r0, [r5, #7]
	adds r1, r5, #0
	adds r1, #0x7f
	ldrb r0, [r1]
	adds r0, #0xc
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x84
	ldrh r1, [r0]
	subs r1, #8
	strh r1, [r0]
	adds r6, r0, #0
_0800E6A6:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #4
	bgt _0800E6B8
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, sb
	strh r0, [r2]
	b _0800E732
_0800E6B8:
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl fix_inverse
	adds r4, r0, #0
	ldr r2, _0800E74C
	mov r8, r2
	adds r6, r5, #0
	adds r6, #0x7f
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800E750
	strh r0, [r5, #6]
	ldrb r2, [r6]
	lsls r0, r2, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrb r2, [r6]
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	movs r0, #0x88
	lsls r0, r0, #1
	mov r2, sb
	strh r0, [r2]
	ldr r0, _0800E754
	strh r0, [r2, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r2, #4]
_0800E732:
	ldr r4, _0800E758
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
_0800E740:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E74C: .4byte gSineTable
_0800E750: .4byte gOamObjects
_0800E754: .4byte 0x0000C058
_0800E758: .4byte gCourtRecord

	THUMB_FUNC_START sub_800E75C
sub_800E75C: @ 0x0800E75C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0800E7B4
	movs r0, #0
	ldr r4, _0800E7B8
	ldr r1, _0800E7BC
	movs r3, #0
_0800E76A:
	strh r3, [r2]
	adds r0, #1
	adds r2, #2
	cmp r0, r4
	bls _0800E76A
	adds r1, #0x4a
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	movs r4, #0
	ldrh r2, [r1]
	orrs r0, r2
	strh r0, [r1]
	bl sub_800E914
	adds r0, r5, #0
	adds r0, #0x27
	ldrb r0, [r0]
	bl sub_800EA80
	ldrh r1, [r5, #0x22]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	movs r1, #4
	bl ChangeBGMVolume
	movs r0, #0xf
	bl PlaySE
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	strb r4, [r5, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E7B4: .4byte gBG2MapBuffer
_0800E7B8: .4byte 0x000003FF
_0800E7BC: .4byte gIORegisters

	THUMB_FUNC_START sub_800E7C0
sub_800E7C0: @ 0x0800E7C0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800EAF8
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800E818
	ldr r1, _0800E820
	movs r0, #1
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800E818
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0800E7FA
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x1e
	bl ChangeBGMVolume
	movs r0, #1
	strb r0, [r5, #6]
_0800E7FA:
	ldr r1, _0800E824
	movs r0, #3
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800E818
	movs r0, #0x2b
	bl PlaySE
	movs r0, #3
	movs r1, #0xe
	bl sub_80024C8
	movs r0, #2
	strb r0, [r5, #5]
_0800E818:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E820: .4byte gScriptContext
_0800E824: .4byte gJoypad

	THUMB_FUNC_START sub_800E828
sub_800E828: @ 0x0800E828
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800EAF8
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800E892
	ldr r1, _0800E860
	ldr r0, [r5, #8]
	str r0, [r1]
	subs r1, #4
	ldrb r0, [r1, #4]
	cmp r0, #4
	bne _0800E888
	ldrb r1, [r1, #5]
	cmp r1, #6
	bne _0800E868
	ldr r0, _0800E864
	movs r1, #1
	bl sub_800B7A8
	b _0800E888
	.align 2, 0
_0800E860: .4byte gMain+0x4
_0800E864: .4byte gInvestigation
_0800E868:
	ldrb r5, [r5, #5]
	cmp r5, #8
	bne _0800E87C
	ldr r0, _0800E878
	movs r1, #4
	bl sub_800B7A8
	b _0800E888
	.align 2, 0
_0800E878: .4byte gInvestigation
_0800E87C:
	cmp r1, #9
	bne _0800E888
	ldr r0, _0800E898
	movs r1, #8
	bl sub_800B7A8
_0800E888:
	ldr r0, _0800E89C
	movs r1, #2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_0800E892:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E898: .4byte gInvestigation
_0800E89C: .4byte gScriptContext

	THUMB_FUNC_START sub_800E8A0
sub_800E8A0: @ 0x0800E8A0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0800E8F2
	movs r0, #0
	strb r0, [r4, #9]
	ldrb r0, [r4, #8]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #8]
	ldr r1, _0800E8F8
	ldr r0, _0800E8FC
	ldrb r2, [r4, #8]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r3, _0800E900
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0800E904
	str r0, [r1, #4]
	ldr r2, _0800E908
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800E90C
	ldrb r4, [r4, #8]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0800E910
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_0800E8F2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E8F8: .4byte 0x040000D4
_0800E8FC: .4byte gUnknown_08018DCC
_0800E900: .4byte gUnknown_0818BD40
_0800E904: .4byte 0x06013400
_0800E908: .4byte 0x80000040
_0800E90C: .4byte gUnknown_08018DD0
_0800E910: .4byte 0x06013480

	THUMB_FUNC_START sub_800E914
sub_800E914: @ 0x0800E914
	push {lr}
	movs r0, #1
	movs r1, #0xc
	bl sub_80024C8
	ldr r0, _0800E98C
	ldr r1, _0800E990
	str r1, [r0]
	ldr r1, _0800E994
	str r1, [r0, #4]
	ldr r2, _0800E998
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E99C
	str r1, [r0]
	ldr r1, _0800E9A0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9A4
	str r1, [r0]
	ldr r1, _0800E9A8
	str r1, [r0, #4]
	adds r2, #0xc0
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9AC
	str r1, [r0]
	ldr r1, _0800E9B0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9B4
	str r1, [r0]
	ldr r1, _0800E9B8
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9BC
	str r1, [r0]
	ldr r1, _0800E9C0
	str r1, [r0, #4]
	subs r2, #0xf0
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9C4
	str r1, [r0]
	ldr r1, _0800E9C8
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E9CC
	str r1, [r0]
	ldr r1, _0800E9D0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800E98C: .4byte 0x040000D4
_0800E990: .4byte gUnknown_0818BD40
_0800E994: .4byte 0x06013400
_0800E998: .4byte 0x80000040
_0800E99C: .4byte gUnknown_0818BEC0
_0800E9A0: .4byte 0x06013480
_0800E9A4: .4byte gUnknown_0818F4C0
_0800E9A8: .4byte 0x06013800
_0800E9AC: .4byte gUnknown_081904C0
_0800E9B0: .4byte 0x06013A00
_0800E9B4: .4byte gUnknown_081906C0
_0800E9B8: .4byte 0x06013500
_0800E9BC: .4byte gUnknown_081940E0
_0800E9C0: .4byte 0x05000260
_0800E9C4: .4byte gUnknown_08194240
_0800E9C8: .4byte 0x05000280
_0800E9CC: .4byte gUnknown_08186520
_0800E9D0: .4byte 0x05000240

	THUMB_FUNC_START sub_800E9D4
sub_800E9D4: @ 0x0800E9D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800EAF8
	movs r0, #4
	ldrb r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0800EA50
	adds r0, r4, #0
	bl sub_800E8A0
	ldr r1, _0800E9F8
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bls _0800E9FC
	movs r0, #0x30
	b _0800EA00
	.align 2, 0
_0800E9F8: .4byte gOamObjects
_0800E9FC:
	movs r0, #0x80
	lsls r0, r0, #2
_0800EA00:
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #2]
	ldr r0, _0800EA18
	strh r0, [r1, #4]
	adds r1, #8
	ldrb r4, [r4, #0xe]
	cmp r4, #1
	bls _0800EA1C
	movs r0, #0x30
	b _0800EA20
	.align 2, 0
_0800EA18: .4byte 0x000031A0
_0800EA1C:
	movs r0, #0x80
	lsls r0, r0, #2
_0800EA20:
	strh r0, [r1]
	ldr r0, _0800EA3C
	strh r0, [r1, #2]
	ldr r0, _0800EA40
	strh r0, [r1, #4]
	ldr r0, _0800EA44
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0800EA48
	movs r0, #1
	bl sub_800EB88
	b _0800EA7A
	.align 2, 0
_0800EA3C: .4byte 0x000040E0
_0800EA40: .4byte 0x000031A4
_0800EA44: .4byte gMain
_0800EA48:
	movs r0, #1
	bl sub_800EBF0
	b _0800EA7A
_0800EA50:
	ldr r1, _0800EA6C
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
	ldr r0, _0800EA70
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0800EA74
	movs r0, #0
	bl sub_800EB88
	b _0800EA7A
	.align 2, 0
_0800EA6C: .4byte gOamObjects
_0800EA70: .4byte gMain
_0800EA74:
	movs r0, #0
	bl sub_800EBF0
_0800EA7A:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800EA80
sub_800EA80: @ 0x0800EA80
	push {r4, r5, lr}
	ldr r1, _0800EAD0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r3, _0800EAD4
	adds r1, r2, r3
	ldr r4, _0800EAD8
	str r1, [r4]
	ldr r1, _0800EADC
	str r1, [r4, #4]
	ldr r1, _0800EAE0
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	adds r3, #0x20
	adds r1, r2, r3
	str r1, [r4]
	ldr r1, _0800EAE4
	str r1, [r4, #4]
	ldr r1, _0800EAE8
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r1, [r0]
	ldr r5, _0800EAEC
	adds r0, r1, #0
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	ldr r0, _0800EAF0
	str r0, [r4, #4]
	ldr r0, _0800EAF4
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAD0: .4byte gUnknown_08018A6C
_0800EAD4: .4byte gUnknown_081B290C
_0800EAD8: .4byte 0x040000D4
_0800EADC: .4byte 0x05000220
_0800EAE0: .4byte 0x80000010
_0800EAE4: .4byte 0x06015000
_0800EAE8: .4byte 0x80000400
_0800EAEC: .4byte gUnknown_0200AFC0
_0800EAF0: .4byte 0x06013C00
_0800EAF4: .4byte 0x80000A00

	THUMB_FUNC_START sub_800EAF8
sub_800EAF8: @ 0x0800EAF8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _0800EB5C
	movs r0, #0x18
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r1, #2]
	ldrh r2, [r5, #4]
	adds r0, r2, r0
	strh r0, [r1, #2]
	movs r0, #0x94
	lsls r0, r0, #5
	strh r0, [r1, #4]
	adds r1, #8
	movs r3, #0
	movs r6, #0x18
	ldr r4, _0800EB60
	ldr r2, _0800EB64
_0800EB1E:
	strh r6, [r1]
	strh r2, [r1, #2]
	ldrh r7, [r5, #4]
	adds r0, r7, r2
	strh r0, [r1, #2]
	strh r4, [r1, #4]
	adds r1, #8
	adds r4, #0x10
	adds r2, #0x20
	adds r3, #1
	cmp r3, #4
	bls _0800EB1E
	movs r3, #0
	movs r6, #0x38
	ldr r4, _0800EB68
	ldr r2, _0800EB64
_0800EB3E:
	strh r6, [r1]
	strh r2, [r1, #2]
	ldrh r7, [r5, #4]
	adds r0, r7, r2
	strh r0, [r1, #2]
	strh r4, [r1, #4]
	adds r1, #8
	adds r4, #0x10
	adds r2, #0x20
	adds r3, #1
	cmp r3, #4
	bls _0800EB3E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB5C: .4byte gOamObjects+0x110
_0800EB60: .4byte 0x000021E0
_0800EB64: .4byte 0x00008048
_0800EB68: .4byte 0x00002230

	THUMB_FUNC_START sub_800EB6C
sub_800EB6C: @ 0x0800EB6C
	ldr r1, _0800EB84
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #8
	movs r2, #0
_0800EB78:
	strh r0, [r1]
	adds r1, #8
	adds r2, #1
	cmp r2, #9
	bls _0800EB78
	bx lr
	.align 2, 0
_0800EB84: .4byte gOamObjects+0x110

	THUMB_FUNC_START sub_800EB88
sub_800EB88: @ 0x0800EB88
	ldr r2, _0800EBBC
	cmp r0, #0
	beq _0800EBDC
	movs r0, #0x60
	strh r0, [r2]
	ldr r0, _0800EBC0
	strh r0, [r2, #2]
	ldr r0, _0800EBC4
	strh r0, [r2, #4]
	adds r2, #8
	ldr r1, _0800EBC8
	strh r1, [r2]
	ldr r0, _0800EBCC
	strh r0, [r2, #2]
	ldr r0, _0800EBD0
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800EBD4
	strh r0, [r2, #2]
	ldr r0, _0800EBD8
	strh r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	b _0800EBEA
	.align 2, 0
_0800EBBC: .4byte gOamObjects+0x168
_0800EBC0: .4byte 0x000040A0
_0800EBC4: .4byte 0x000041C8
_0800EBC8: .4byte 0x00004060
_0800EBCC: .4byte 0x000080B0
_0800EBD0: .4byte 0x000041A8
_0800EBD4: .4byte 0x000080D0
_0800EBD8: .4byte 0x000041B0
_0800EBDC:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
_0800EBEA:
	strh r0, [r2, #8]
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800EBF0
sub_800EBF0: @ 0x0800EBF0
	ldr r3, _0800EC28
	cmp r0, #0
	beq _0800EC94
	ldr r0, _0800EC2C
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EC40
	movs r0, #0x60
	strh r0, [r3]
	ldr r0, _0800EC30
	strh r0, [r3, #2]
	adds r0, #0xf8
	strh r0, [r3, #4]
	adds r3, #8
	ldr r0, _0800EC34
	strh r0, [r3]
	ldr r0, _0800EC38
	strh r0, [r3, #2]
	ldr r0, _0800EC3C
	strh r0, [r3, #4]
	adds r3, #8
	movs r0, #0x80
	lsls r0, r0, #2
	b _0800ECA0
	.align 2, 0
_0800EC28: .4byte gOamObjects+0x168
_0800EC2C: .4byte gMain
_0800EC30: .4byte 0x000040C8
_0800EC34: .4byte 0x00004060
_0800EC38: .4byte 0x000080D8
_0800EC3C: .4byte 0x000041D0
_0800EC40:
	movs r2, #0x60
	strh r2, [r3]
	ldr r0, _0800EC74
	strh r0, [r3, #2]
	ldr r0, _0800EC78
	strh r0, [r3, #4]
	adds r3, #8
	ldr r1, _0800EC7C
	strh r1, [r3]
	ldr r0, _0800EC80
	strh r0, [r3, #2]
	ldr r0, _0800EC84
	strh r0, [r3, #4]
	adds r3, #8
	strh r2, [r3]
	ldr r0, _0800EC88
	strh r0, [r3, #2]
	adds r0, #0xfc
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _0800EC8C
	strh r0, [r3, #2]
	ldr r0, _0800EC90
	strh r0, [r3, #4]
	b _0800ECA4
	.align 2, 0
_0800EC74: .4byte 0x0000408C
_0800EC78: .4byte 0x000041C0
_0800EC7C: .4byte 0x00004060
_0800EC80: .4byte 0x0000809C
_0800EC84: .4byte 0x000041D0
_0800EC88: .4byte 0x000040C8
_0800EC8C: .4byte 0x000080D8
_0800EC90: .4byte 0x000041D8
_0800EC94:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	adds r3, #8
	strh r0, [r3]
	adds r3, #8
_0800ECA0:
	strh r0, [r3]
	strh r0, [r3, #8]
_0800ECA4:
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800ECA8
sub_800ECA8: @ 0x0800ECA8
	ldr r0, _0800ECDC
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, #8
	movs r2, #0x90
	strh r2, [r0]
	ldr r1, _0800ECE0
	strh r1, [r0, #2]
	ldr r1, _0800ECE4
	strh r1, [r0, #4]
	adds r0, #8
	strh r2, [r0]
	subs r1, #0xfc
	strh r1, [r0, #2]
	ldr r1, _0800ECE8
	strh r1, [r0, #4]
	adds r0, #8
	ldr r1, _0800ECEC
	strh r1, [r0]
	ldr r1, _0800ECF0
	strh r1, [r0, #2]
	ldr r1, _0800ECF4
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_0800ECDC: .4byte gOamObjects+0x168
_0800ECE0: .4byte 0x000040B8
_0800ECE4: .4byte 0x000041C4
_0800ECE8: .4byte 0x000041CC
_0800ECEC: .4byte 0x00004090
_0800ECF0: .4byte 0x000080D8
_0800ECF4: .4byte 0x000041D8

	THUMB_FUNC_START FindEvidenceInCourtRecord
FindEvidenceInCourtRecord: @ 0x0800ECF8
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0
	beq _0800ED14
	ldr r3, _0800ED0C
	adds r0, r3, #0
	subs r0, #0x38
	ldrb r1, [r0, #0x11]
	b _0800ED1C
	.align 2, 0
_0800ED0C: .4byte gCourtRecord+0x38
_0800ED10:
	adds r0, r2, #0
	b _0800ED34
_0800ED14:
	ldr r3, _0800ED3C
	adds r0, r3, #0
	subs r0, #0x18
	ldrb r1, [r0, #0x10]
_0800ED1C:
	movs r2, #0
	cmp r2, r1
	bhs _0800ED30
_0800ED22:
	ldrb r0, [r3]
	cmp r0, r4
	beq _0800ED10
	adds r2, #1
	adds r3, #1
	cmp r2, r1
	blo _0800ED22
_0800ED30:
	movs r0, #1
	rsbs r0, r0, #0
_0800ED34:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800ED3C: .4byte gCourtRecord+0x18

	THUMB_FUNC_START FindFirstEmptySlotInCourtRecord
FindFirstEmptySlotInCourtRecord: @ 0x0800ED40
	ldr r2, _0800ED54
	cmp r0, #0
	beq _0800ED48
	adds r2, #0x20
_0800ED48:
	movs r1, #0
_0800ED4A:
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _0800ED58
	adds r0, r1, #0
	b _0800ED64
	.align 2, 0
_0800ED54: .4byte gCourtRecord+0x18
_0800ED58:
	adds r1, #1
	adds r2, #1
	cmp r1, #0x1f
	bls _0800ED4A
	movs r0, #1
	rsbs r0, r0, #0
_0800ED64:
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800ED68
sub_800ED68: @ 0x0800ED68
	push {r4, r5, r6, lr}
	sub sp, #4
	mov ip, r0
	ldr r4, _0800EE0C
	ldr r1, _0800EE10
	mov r3, ip
	adds r3, #0x38
	str r3, [r1]
	str r4, [r1, #4]
	ldr r0, _0800EE14
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r5, _0800EE18
	adds r0, r5, #0
	strh r0, [r2]
	str r2, [r1]
	str r3, [r1, #4]
	ldr r0, _0800EE1C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	mov r6, ip
	strb r0, [r6, #0x11]
	movs r2, #0
_0800ED9A:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0800EDB4
	mov r5, ip
	ldrb r5, [r5, #0x11]
	adds r0, r5, r3
	strb r1, [r0]
	mov r6, ip
	ldrb r0, [r6, #0x11]
	adds r0, #1
	strb r0, [r6, #0x11]
_0800EDB4:
	adds r2, #1
	cmp r2, #0x1f
	bls _0800ED9A
	ldr r1, _0800EE10
	mov r3, ip
	adds r3, #0x18
	str r3, [r1]
	str r4, [r1, #4]
	ldr r0, _0800EE14
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r5, _0800EE18
	adds r0, r5, #0
	strh r0, [r2]
	str r2, [r1]
	str r3, [r1, #4]
	ldr r0, _0800EE1C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	mov r6, ip
	strb r0, [r6, #0x10]
	movs r2, #0
_0800EDE4:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0800EDFE
	mov r5, ip
	ldrb r5, [r5, #0x10]
	adds r0, r5, r3
	strb r1, [r0]
	mov r6, ip
	ldrb r0, [r6, #0x10]
	adds r0, #1
	strb r0, [r6, #0x10]
_0800EDFE:
	adds r2, #1
	cmp r2, #0x1f
	bls _0800EDE4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE0C: .4byte gUnknown_0200AFC0
_0800EE10: .4byte 0x040000D4
_0800EE14: .4byte 0x80000010
_0800EE18: .4byte 0x0000FFFF
_0800EE1C: .4byte 0x81000010

	THUMB_FUNC_START sub_800EE20
sub_800EE20: @ 0x0800EE20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _0800EE6C
	ldr r1, _0800EE70
	adds r1, #0x8d
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r0, _0800EE74
	ldrh r1, [r4]
	cmp r1, r0
	beq _0800EE8C
	ldr r5, _0800EE78
	mov r8, r0
_0800EE44:
	ldrb r0, [r4, #6]
	cmp r0, #0xff
	beq _0800EE56
	adds r1, r0, #0
	movs r0, #0
	bl GetFlag
	cmp r0, #0
	beq _0800EE84
_0800EE56:
	ldrh r0, [r4]
	cmp r0, r7
	bne _0800EE84
	ldrh r0, [r4, #2]
	cmp r0, r6
	bne _0800EE84
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0800EE7C
	movs r0, #0
	b _0800EE7E
	.align 2, 0
_0800EE6C: .4byte gUnknown_0811DC54
_0800EE70: .4byte gMain
_0800EE74: .4byte 0x0000FFFF
_0800EE78: .4byte gScriptContext+0x33
_0800EE7C:
	movs r0, #1
_0800EE7E:
	strb r0, [r5]
	ldrh r0, [r4, #4]
	b _0800EE96
_0800EE84:
	adds r4, #8
	ldrh r0, [r4]
	cmp r0, r8
	bne _0800EE44
_0800EE8C:
	ldr r0, _0800EEA0
	adds r0, #0x33
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
_0800EE96:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800EEA0: .4byte gScriptContext

	THUMB_FUNC_START sub_800EEA4
sub_800EEA4: @ 0x0800EEA4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r0, _0800EEE4
	adds r1, r3, #0
	adds r1, #0x8d
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r1, #6]
	ldrb r0, [r1, #3]
	cmp r0, #0xff
	beq _0800EEF4
	ldr r0, _0800EEE8
	ldrb r4, [r0]
_0800EEC4:
	ldrb r0, [r1, #2]
	cmp r4, r0
	bne _0800EEEC
	adds r0, r3, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	ldrb r6, [r1]
	cmp r0, r6
	bne _0800EEEC
	ldrh r2, [r1, #6]
	ldrb r0, [r1, #1]
	cmp r5, r0
	bne _0800EEEC
	ldrh r0, [r1, #4]
	b _0800EEF6
	.align 2, 0
_0800EEE4: .4byte gUnknown_0811DC98
_0800EEE8: .4byte gAnimation+0x4E
_0800EEEC:
	adds r1, #8
	ldrb r0, [r1, #3]
	cmp r0, #0xff
	bne _0800EEC4
_0800EEF4:
	adds r0, r2, #0
_0800EEF6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800EEFC
sub_800EEFC: @ 0x0800EEFC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800EF18
	adds r0, #0x7d
	ldrb r0, [r0]
	adds r2, r5, #0
	cmp r0, #6
	bls _0800EF0E
	b _0800F0DA
_0800EF0E:
	lsls r0, r0, #2
	ldr r1, _0800EF1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800EF18: .4byte gOamObjects+0x2C0
_0800EF1C: .4byte _0800EF20
_0800EF20: @ jump table
	.4byte _0800F0DA @ case 0
	.4byte _0800EF3C @ case 1
	.4byte _0800EF82 @ case 2
	.4byte _0800EFC8 @ case 3
	.4byte _0800F00A @ case 4
	.4byte _0800F07C @ case 5
	.4byte _0800F0CC @ case 6
_0800EF3C:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r1, _0800EF64
	str r2, [r1]
	ldr r0, _0800EF68
	str r0, [r1, #4]
	ldr r0, _0800EF6C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800EF70
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #4
	b _0800EF76
	.align 2, 0
_0800EF64: .4byte 0x040000D4
_0800EF68: .4byte 0x070002C0
_0800EF6C: .4byte 0x80000004
_0800EF70:
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #6
_0800EF76:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0800EF82:
	adds r0, r4, #0
	bl sub_800F134
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	beq _0800EF94
	b _0800F0DA
_0800EF94:
	ldr r3, _0800EFC4
	adds r0, r3, #0
	adds r0, #0x42
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x3e
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #0x42
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r2, [r0]
	b _0800F0DA
	.align 2, 0
_0800EFC4: .4byte gBG0MapBuffer
_0800EFC8:
	adds r0, r4, #0
	bl sub_800F0E0
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800EFE8
	ldr r0, _0800EFE4
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #3
	b _0800EFF2
	.align 2, 0
_0800EFE4: .4byte 0x0000C010
_0800EFE8:
	ldr r0, _0800F018
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #5
_0800EFF2:
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r5, #4]
	adds r1, r4, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0800F00A:
	ldrb r0, [r4, #4]
	cmp r0, #0xa
	bne _0800F01C
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #6
	b _0800F0D8
	.align 2, 0
_0800F018: .4byte 0x0000C0A0
_0800F01C:
	adds r0, r4, #0
	bl sub_800F134
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800F030
	movs r0, #0x10
	strh r0, [r5]
_0800F030:
	ldrb r2, [r4, #4]
	cmp r2, #6
	bls _0800F0DA
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r1, _0800F064
	ldr r0, _0800F068
	str r0, [r1]
	ldr r0, _0800F06C
	str r0, [r1, #4]
	ldr r0, _0800F070
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800F074
	adds r1, #0x4a
	ldr r0, _0800F078
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	adds r0, #1
	b _0800F0D8
	.align 2, 0
_0800F064: .4byte 0x040000D4
_0800F068: .4byte gOamObjects+0x2C0
_0800F06C: .4byte 0x070002C0
_0800F070: .4byte 0x80000004
_0800F074: .4byte gIORegisters
_0800F078: .4byte 0x0000FEFF
_0800F07C:
	ldrb r0, [r4, #4]
	cmp r0, #6
	bhi _0800F0DA
	adds r0, r4, #0
	bl sub_800F0E0
	movs r1, #0
	movs r0, #0x10
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F0A0
	ldr r0, _0800F09C
	b _0800F0A2
	.align 2, 0
_0800F09C: .4byte 0x0000C010
_0800F0A0:
	ldr r0, _0800F0C4
_0800F0A2:
	strh r0, [r5, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r5, #4]
	ldr r0, _0800F0C8
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #4
	b _0800F0D8
	.align 2, 0
_0800F0C4: .4byte 0x0000C0A0
_0800F0C8: .4byte gIORegisters
_0800F0CC:
	ldrb r0, [r4, #4]
	cmp r0, #0xa
	beq _0800F0DA
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #5
_0800F0D8:
	strb r0, [r1]
_0800F0DA:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800F0E0
sub_800F0E0: @ 0x0800F0E0
	ldr r1, _0800F118
	adds r0, #0x7c
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r3, _0800F11C
	adds r1, r2, r3
	ldr r0, _0800F120
	str r1, [r0]
	ldr r1, _0800F124
	str r1, [r0, #4]
	ldr r1, _0800F128
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r3, #0x20
	adds r1, r2, r3
	str r1, [r0]
	ldr r1, _0800F12C
	str r1, [r0, #4]
	ldr r1, _0800F130
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_0800F118: .4byte gUnknown_08018A6C
_0800F11C: .4byte gUnknown_081B290C
_0800F120: .4byte 0x040000D4
_0800F124: .4byte 0x05000220
_0800F128: .4byte 0x80000010
_0800F12C: .4byte 0x06011000
_0800F130: .4byte 0x80000400

	THUMB_FUNC_START sub_800F134
sub_800F134: @ 0x0800F134
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bls _0800F15C
	ldr r3, _0800F17C
	movs r2, #0
	ldr r1, _0800F180
	movs r0, #0
_0800F152:
	strh r0, [r3]
	adds r2, #1
	adds r3, #2
	cmp r2, r1
	bls _0800F152
_0800F15C:
	mov r0, ip
	adds r0, #0x82
	ldrb r1, [r0]
	str r0, [sp]
	movs r0, #0x81
	add r0, ip
	mov sb, r0
	cmp r1, #6
	bls _0800F170
	b _0800F360
_0800F170:
	lsls r0, r1, #2
	ldr r1, _0800F184
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F17C: .4byte gBG0MapBuffer+0x40
_0800F180: .4byte 0x0000013F
_0800F184: .4byte _0800F188
_0800F188: @ jump table
	.4byte _0800F360 @ case 0
	.4byte _0800F360 @ case 1
	.4byte _0800F360 @ case 2
	.4byte _0800F1A4 @ case 3
	.4byte _0800F1A4 @ case 4
	.4byte _0800F288 @ case 5
	.4byte _0800F288 @ case 6
_0800F1A4:
	ldr r3, _0800F284
	adds r3, #2
	movs r2, #0
	mov r4, ip
	adds r4, #0x80
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #1
	ldr r1, _0800F284
	mov sl, r1
	adds r6, r4, #0
	movs r1, #0x81
	add r1, ip
	mov sb, r1
	cmp r2, r0
	bhs _0800F1FA
	adds r7, r6, #0
	movs r0, #0x20
	mov r8, r0
_0800F1CA:
	movs r1, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, #1
	cmp r1, r0
	bhs _0800F1E6
	movs r5, #0x38
_0800F1D8:
	strh r5, [r3]
	adds r3, #2
	adds r1, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	blo _0800F1D8
_0800F1E6:
	movs r1, #0
	ldrsb r1, [r7, r1]
	mov r4, r8
	subs r0, r4, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	adds r4, r7, #0
	adds r1, #1
	cmp r2, r1
	blo _0800F1CA
_0800F1FA:
	mov r3, sl
	movs r0, #0x30
	strh r0, [r3]
	adds r3, #2
	movs r2, #0
	adds r1, r6, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r2, r0
	bhs _0800F21E
	movs r4, #0x31
_0800F210:
	strh r4, [r3]
	adds r3, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0800F210
_0800F21E:
	movs r0, #0x32
	strh r0, [r3]
	adds r4, r6, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #6
	adds r0, #0x40
	mov r1, sl
	adds r3, r0, r1
	movs r0, #0x35
	strh r0, [r3]
	adds r3, #2
	movs r2, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r2, r0
	bhs _0800F250
	movs r1, #0x36
_0800F242:
	strh r1, [r3]
	adds r3, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r2, r0
	blo _0800F242
_0800F250:
	movs r0, #0x37
	strh r0, [r3]
	mov r3, sl
	adds r3, #0x40
	movs r2, #0
	adds r1, r6, #0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0800F266
	b _0800F360
_0800F266:
	movs r5, #0x33
	movs r4, #0x34
_0800F26A:
	strh r5, [r3]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r4, [r0, #2]
	adds r3, #0x40
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0800F26A
	b _0800F360
	.align 2, 0
_0800F284: .4byte gBG0MapBuffer+0x42
_0800F288:
	ldr r3, _0800F390
	subs r3, #2
	movs r2, #0
	mov r4, ip
	adds r4, #0x80
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #1
	adds r6, r4, #0
	ldr r1, _0800F390
	mov r8, r1
	movs r1, #0x81
	add r1, ip
	mov sb, r1
	cmp r2, r0
	bhs _0800F2D8
	adds r7, r6, #0
_0800F2AA:
	movs r1, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, #1
	cmp r1, r0
	bhs _0800F2C6
	movs r5, #0x38
_0800F2B8:
	strh r5, [r3]
	subs r3, #2
	adds r1, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	blo _0800F2B8
_0800F2C6:
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #1
	adds r0, #0x40
	adds r3, r3, r0
	adds r4, r7, #0
	adds r1, #1
	cmp r2, r1
	blo _0800F2AA
_0800F2D8:
	mov r3, r8
	movs r0, #0x32
	strh r0, [r3]
	subs r3, #2
	movs r2, #0
	adds r1, r6, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r2, r0
	bhs _0800F2FC
	movs r4, #0x31
_0800F2EE:
	strh r4, [r3]
	subs r3, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0800F2EE
_0800F2FC:
	movs r0, #0x30
	strh r0, [r3]
	adds r4, r6, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #6
	adds r0, #0x40
	mov r1, r8
	adds r3, r0, r1
	movs r0, #0x37
	strh r0, [r3]
	subs r3, #2
	movs r2, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r2, r0
	bhs _0800F32E
	movs r1, #0x36
_0800F320:
	strh r1, [r3]
	subs r3, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r2, r0
	blo _0800F320
_0800F32E:
	movs r0, #0x35
	strh r0, [r3]
	mov r3, r8
	adds r3, #0x40
	movs r2, #0
	adds r1, r6, #0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bhs _0800F360
	movs r5, #0x34
	movs r4, #0x33
_0800F346:
	strh r5, [r3]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	subs r0, r3, r0
	subs r0, #2
	strh r4, [r0]
	adds r3, #0x40
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0800F346
_0800F360:
	mov r4, sb
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800F3B2
	movs r0, #0
	strb r0, [r4]
	ldr r3, [sp]
	ldrb r0, [r3]
	cmp r0, #4
	beq _0800F37E
	cmp r0, #6
	bne _0800F39A
_0800F37E:
	mov r1, ip
	adds r1, #0x80
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0800F394
	subs r0, r2, #1
	b _0800F3B0
	.align 2, 0
_0800F390: .4byte gBG0MapBuffer+0x78
_0800F394:
	movs r0, #2
	strb r0, [r3]
	b _0800F3B2
_0800F39A:
	mov r1, ip
	adds r1, #0x80
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bgt _0800F3AC
	adds r0, r2, #1
	b _0800F3B0
_0800F3AC:
	movs r0, #1
	ldr r1, [sp]
_0800F3B0:
	strb r0, [r1]
_0800F3B2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
