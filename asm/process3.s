	.include "asm/macros.inc"
	.syntax unified
    
	THUMB_FUNC_START GetCurrentEpisodeBit
GetCurrentEpisodeBit: @ 0x0800A348
	ldr r2, _0800A360
	adds r0, r2, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #0x10
	bhi _0800A3C4
	lsls r0, r0, #2
	ldr r1, _0800A364
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A360: .4byte gMain
_0800A364: .4byte _0800A368
_0800A368: @ jump table
	.4byte _0800A3C4 @ case 0
	.4byte _0800A3AC @ case 1
	.4byte _0800A3AC @ case 2
	.4byte _0800A3AC @ case 3
	.4byte _0800A3AC @ case 4
	.4byte _0800A3B4 @ case 5
	.4byte _0800A3B4 @ case 6
	.4byte _0800A3B4 @ case 7
	.4byte _0800A3B4 @ case 8
	.4byte _0800A3B4 @ case 9
	.4byte _0800A3B4 @ case 10
	.4byte _0800A3BC @ case 11
	.4byte _0800A3BC @ case 12
	.4byte _0800A3BC @ case 13
	.4byte _0800A3BC @ case 14
	.4byte _0800A3BC @ case 15
	.4byte _0800A3BC @ case 16
_0800A3AC:
	adds r0, r2, #0
	adds r0, #0x8e
	movs r1, #2
	b _0800A3CA
_0800A3B4:
	adds r0, r2, #0
	adds r0, #0x8e
	movs r1, #4
	b _0800A3CA
_0800A3BC:
	adds r0, r2, #0
	adds r0, #0x8e
	movs r1, #8
	b _0800A3CA
_0800A3C4:
	adds r0, r2, #0
	adds r0, #0x8e
	movs r1, #1
_0800A3CA:
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	THUMB_FUNC_START GameProcess03
GameProcess03: @ 0x0800A3D4
	push {lr}
	ldr r2, _0800A3E8
	ldrb r3, [r0, #5]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800A3E8: .4byte gUnknown_0811DF48

	THUMB_FUNC_START sub_800A3EC
sub_800A3EC: @ 0x0800A3EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r7, _0800A540
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0800A544
	str r0, [r4]
	ldr r0, _0800A548
	str r0, [r4, #4]
	ldr r0, _0800A54C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sp
	strh r5, [r0]
	str r0, [r4]
	ldr r0, _0800A550
	str r0, [r4, #4]
	ldr r0, _0800A554
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl HideAllSprites
	bl InitBGs
	bl ResetAnimationSystem
	bl LoadCurrentScriptIntoRam
	adds r5, r7, #0
	adds r5, #0x4a
	movs r0, #0
	mov r8, r0
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r5]
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r7]
	ldr r0, _0800A558
	strh r0, [r7, #2]
	adds r0, #0xff
	strh r0, [r7, #4]
	ldr r0, _0800A55C
	strh r0, [r7, #6]
	ldr r0, _0800A560
	str r0, [r4]
	ldr r0, _0800A564
	str r0, [r4, #4]
	ldr r0, _0800A568
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A56C
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800A570
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A574
	str r0, [r4]
	ldr r0, _0800A578
	str r0, [r4, #4]
	ldr r1, _0800A57C
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A580
	str r0, [r4]
	ldr r0, _0800A584
	str r0, [r4, #4]
	ldr r0, _0800A588
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A58C
	str r0, [r4]
	ldr r0, _0800A590
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #1
	bl sub_8001830
	movs r0, #1
	bl sub_8001A9C
	movs r0, #0xff
	bl sub_8001A9C
	ldr r0, _0800A594
	strh r0, [r7, #0xe]
	ldr r0, _0800A598
	ldrh r1, [r5]
	ands r0, r1
	strh r0, [r5]
	ldr r1, _0800A59C
	adds r0, r6, #0
	bl sub_800D77C
	mov r0, r8
	str r0, [sp, #4]
	add r0, sp, #4
	str r0, [r4]
	adds r0, r6, #0
	adds r0, #0x94
	str r0, [r4, #4]
	ldr r0, _0800A5A0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r0, r6, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #1
	bls _0800A4E0
	movs r0, #0
	movs r1, #0x41
	movs r2, #1
	bl ChangeFlag
_0800A4E0:
	adds r0, r6, #0
	adds r0, #0xb4
	mov r1, r8
	str r1, [r0]
	movs r0, #0xf
	strb r0, [r6, #0x16]
	movs r0, #1
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
	ldr r1, _0800A5A4
	ldr r0, _0800A5A8
	strh r0, [r1, #0x1e]
	movs r0, #0x80
	bl ChangeScriptSection
	adds r1, r6, #0
	adds r1, #0x8f
	movs r0, #5
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xff
	strb r0, [r1]
	bl GetCurrentEpisodeBit
	movs r0, #0x30
	movs r1, #0xf
	bl sub_8000738
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	adds r1, r7, #0
	adds r1, #0x4e
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0800A5AC
	adds r0, #0xf3
	str r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A540: .4byte gIORegisters
_0800A544: .4byte 0x040000D4
_0800A548: .4byte gTestimony
_0800A54C: .4byte 0x81000004
_0800A550: .4byte gInvestigation
_0800A554: .4byte 0x8100000C
_0800A558: .4byte 0x00003D01
_0800A55C: .4byte 0x00003FC7
_0800A560: .4byte gUnusedAsciiCharSet
_0800A564: .4byte 0x06003800
_0800A568: .4byte 0x80000400
_0800A56C: .4byte gUnknown_08186540
_0800A570: .4byte 0x80000800
_0800A574: .4byte gUnknown_081942C0
_0800A578: .4byte 0x05000300
_0800A57C: .4byte 0x80000010
_0800A580: .4byte gUnknown_0818C040
_0800A584: .4byte 0x06013780
_0800A588: .4byte 0x80000040
_0800A58C: .4byte gUnknown_081940E0
_0800A590: .4byte 0x05000260
_0800A594: .4byte 0x0000FFAF
_0800A598: .4byte 0x0000FDFF
_0800A59C: .4byte gCourtRecord
_0800A5A0: .4byte 0x85000008
_0800A5A4: .4byte gScriptContext
_0800A5A8: .4byte 0x0000FFFF
_0800A5AC: .4byte gMain+0x4

	THUMB_FUNC_START sub_800A5B0
sub_800A5B0: @ 0x0800A5B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _0800A624
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800A69C
	ldr r1, _0800A628
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r2, r1, #0
	adds r6, r5, #0
	adds r6, #0xb4
	cmp r0, #0
	beq _0800A64C
	ldr r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800A64C
	ldr r1, _0800A62C
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800A64C
	bl PauseBGM
	ldr r1, _0800A630
	ldr r0, _0800A634
	str r0, [r1]
	ldr r2, _0800A638
	str r2, [r1, #4]
	ldr r0, _0800A63C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800A640
	str r4, [r1]
	ldr r0, _0800A644
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800A648
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r6]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	movs r0, #0xa
	b _0800A67C
	.align 2, 0
_0800A624: .4byte gTestimony
_0800A628: .4byte gJoypad
_0800A62C: .4byte gScriptContext
_0800A630: .4byte 0x040000D4
_0800A634: .4byte gOamObjects
_0800A638: .4byte gSaveDataBuffer+0x750
_0800A63C: .4byte 0x80000200
_0800A640: .4byte gMain
_0800A644: .4byte 0xFFFFF8E4
_0800A648: .4byte 0x800000D0
_0800A64C:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800A67E
	ldr r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800A67E
	ldr r1, _0800A6A4
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800A67E
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800A6A8
	ldr r0, [r0]
	str r0, [r5, #8]
	movs r0, #7
_0800A67C:
	str r0, [r5, #4]
_0800A67E:
	ldr r0, [r6]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0800A69C
	ldrh r0, [r7, #4]
	cmp r0, #0xa0
	bls _0800A694
	subs r0, #4
	strh r0, [r7, #4]
_0800A694:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_800B638
_0800A69C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A6A4: .4byte gScriptContext
_0800A6A8: .4byte gMain+0x4

	THUMB_FUNC_START sub_800A6AC
sub_800A6AC: @ 0x0800A6AC
	adds r2, r0, #0
	ldr r1, _0800A6E0
	ldr r0, _0800A6E4
	str r0, [r1]
	ldr r0, _0800A6E8
	str r0, [r1, #4]
	ldr r0, _0800A6EC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800A6F0
	str r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800A6F8
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800A72A
	ldr r0, _0800A6F4
	b _0800A728
	.align 2, 0
_0800A6E0: .4byte 0x040000D4
_0800A6E4: .4byte gMain
_0800A6E8: .4byte gSaveDataBuffer+0x34
_0800A6EC: .4byte 0x800000D0
_0800A6F0: .4byte 0x0100000A
_0800A6F4: .4byte 0x0100000B
_0800A6F8:
	cmp r0, #5
	bne _0800A714
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800A72A
	ldr r0, _0800A710
	b _0800A728
	.align 2, 0
_0800A710: .4byte 0x0200000B
_0800A714:
	cmp r0, #0xb
	bne _0800A72A
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #8
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800A72A
	ldr r0, _0800A72C
_0800A728:
	str r0, [r2, #4]
_0800A72A:
	bx lr
	.align 2, 0
_0800A72C: .4byte 0x0300000B
