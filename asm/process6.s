	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_800AA10
sub_800AA10: @ 0x0800AA10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #6]
	cmp r0, #4
	bls _0800AA1C
	b _0800AB3A
_0800AA1C:
	lsls r0, r0, #2
	ldr r1, _0800AA28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AA28: .4byte _0800AA2C
_0800AA2C: @ jump table
	.4byte _0800AA40 @ case 0
	.4byte _0800AA58 @ case 1
	.4byte _0800AAB0 @ case 2
	.4byte _0800AAC0 @ case 3
	.4byte _0800AAEE @ case 4
_0800AA40:
	movs r0, #0x15
	bl PlayAnimation
	movs r0, #0x16
	bl PlayAnimation
	movs r0, #0x53
	bl PlaySE
	ldrb r0, [r6, #6]
	adds r0, #1
	b _0800AB38
_0800AA58:
	movs r0, #0x15
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	movs r0, #0x16
	bl FindAnimationFromAnimId
	adds r5, r0, #0
	ldrh r0, [r4, #0x10]
	adds r0, #0xa
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0x10]
	subs r0, #0xa
	strh r0, [r5, #0x10]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0x77
	ble _0800AB3A
	movs r0, #3
	movs r1, #1
	movs r2, #8
	movs r3, #0x1f
	bl StartHardwareBlend
	adds r0, r4, #0
	bl DestroyAnimation
	adds r0, r5, #0
	bl DestroyAnimation
	movs r0, #0x12
	bl PlayAnimation
	ldrb r0, [r6, #6]
	adds r0, #1
	b _0800AB38
_0800AAB0:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800AB3A
	ldrb r0, [r6, #6]
	adds r0, #1
	b _0800AB38
_0800AAC0:
	movs r0, #0x12
	bl FindAnimationFromAnimId
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	blt _0800AB3A
	adds r0, r1, #0
	bl DestroyAnimation
	movs r0, #0x15
	movs r1, #0x78
	movs r2, #0x3c
	bl PlayAnimationAtCustomOrigin
	movs r0, #0x16
	movs r1, #0x78
	movs r2, #0x3c
	bl PlayAnimationAtCustomOrigin
	ldrb r0, [r6, #6]
	adds r0, #1
	b _0800AB38
_0800AAEE:
	movs r0, #0x15
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	movs r0, #0x16
	bl FindAnimationFromAnimId
	adds r5, r0, #0
	ldrh r0, [r4, #0x12]
	subs r0, #7
	strh r0, [r4, #0x12]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0x12]
	adds r0, #7
	strh r0, [r5, #0x12]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	movs r0, #0x3c
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0800AB3A
	adds r0, r4, #0
	bl DestroyAnimation
	adds r0, r5, #0
	bl DestroyAnimation
	movs r0, #1
	strb r0, [r6, #5]
	movs r0, #0
_0800AB38:
	strb r0, [r6, #6]
_0800AB3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START GameProcess06
GameProcess06: @ 0x0800AB40
	push {lr}
	ldr r2, _0800AB54
	ldrb r3, [r0, #5]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800AB54: .4byte gUnknown_0811DF64

	THUMB_FUNC_START sub_800AB58
sub_800AB58: @ 0x0800AB58
	push {r4, lr}
	ldr r1, _0800ABD8
	ldr r2, _0800ABDC
	str r2, [r1]
	ldr r2, _0800ABE0
	str r2, [r1, #4]
	ldr r3, _0800ABE4
	str r3, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800ABE8
	str r2, [r1]
	ldr r2, _0800ABEC
	str r2, [r1, #4]
	ldr r4, _0800ABF0
	str r4, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800ABF4
	str r2, [r1]
	ldr r2, _0800ABF8
	str r2, [r1, #4]
	ldr r2, _0800ABFC
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800AC00
	str r2, [r1]
	ldr r2, _0800AC04
	str r2, [r1, #4]
	str r4, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800AC08
	str r2, [r1]
	movs r2, #0xd0
	lsls r2, r2, #1
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800AC0C
	str r2, [r1]
	movs r2, #0x88
	lsls r2, r2, #2
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r1, [r1, #8]
	ldr r1, _0800AC10
	ldrh r1, [r1, #0x1e]
	movs r3, #0
	strh r1, [r0, #0x18]
	ldr r1, _0800AC14
	strb r3, [r1, #9]
	ldrb r2, [r1, #8]
	adds r2, #1
	strb r2, [r1, #8]
	ldr r2, _0800AC18
	movs r1, #0xf0
	strh r1, [r2, #4]
	movs r1, #0xe0
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	strb r3, [r2]
	movs r1, #3
	strb r1, [r0, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ABD8: .4byte 0x040000D4
_0800ABDC: .4byte gUnknown_0818C040
_0800ABE0: .4byte 0x06013780
_0800ABE4: .4byte 0x80000040
_0800ABE8: .4byte gUnknown_081940E0
_0800ABEC: .4byte 0x05000260
_0800ABF0: .4byte 0x80000010
_0800ABF4: .4byte gUnknown_081900C0
_0800ABF8: .4byte 0x06013000
_0800ABFC: .4byte 0x80000200
_0800AC00: .4byte gUnknown_081942A0
_0800AC04: .4byte 0x050002A0
_0800AC08: .4byte gUnknown_0818BD40
_0800AC0C: .4byte gUnknown_0818BEC0
_0800AC10: .4byte gScriptContext
_0800AC14: .4byte gCourtRecord
_0800AC18: .4byte gTestimony

	THUMB_FUNC_START sub_800AC1C
sub_800AC1C: @ 0x0800AC1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800AC2A
	b _0800AE4C
_0800AC2A:
	ldr r0, _0800AC94
	ldrh r1, [r0, #2]
	movs r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800ACB8
	adds r6, r5, #0
	adds r6, #0xb4
	ldr r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800AC48
	b _0800ADB4
_0800AC48:
	ldr r1, _0800AC98
	movs r0, #0xd
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800AC56
	b _0800ADB4
_0800AC56:
	bl PauseBGM
	ldr r1, _0800AC9C
	ldr r0, _0800ACA0
	str r0, [r1]
	ldr r2, _0800ACA4
	str r2, [r1, #4]
	ldr r0, _0800ACA8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800ACAC
	str r4, [r1]
	ldr r0, _0800ACB0
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800ACB4
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
	b _0800ADB2
	.align 2, 0
_0800AC94: .4byte gJoypad
_0800AC98: .4byte gScriptContext
_0800AC9C: .4byte 0x040000D4
_0800ACA0: .4byte gOamObjects
_0800ACA4: .4byte gSaveDataBuffer+0x750
_0800ACA8: .4byte 0x80000200
_0800ACAC: .4byte gMain
_0800ACB0: .4byte 0xFFFFF8E4
_0800ACB4: .4byte 0x800000D0
_0800ACB8:
	ldr r2, _0800ACD0
	ldrh r4, [r2]
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _0800AD84
	movs r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0800ACD4
	ldrh r4, [r2, #0x20]
	b _0800ACE8
	.align 2, 0
_0800ACD0: .4byte gScriptContext
_0800ACD4:
	movs r0, #0x22
	ands r0, r1
	cmp r0, #0
	beq _0800ACFA
	ldrh r0, [r2, #0x1e]
	subs r0, #1
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	beq _0800ADB4
	adds r4, r0, #0
_0800ACE8:
	movs r0, #0x2b
	bl PlaySE
	adds r0, r4, #0
	bl ChangeScriptSection
	bl RunScriptContext
	b _0800ADB4
_0800ACFA:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800AD60
	ldrh r0, [r2, #0x2c]
	cmp r0, #0
	beq _0800ADB4
	movs r0, #1
	bl PlayAnimation
	movs r0, #0x47
	bl PlaySE
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r1, _0800AD54
	movs r0, #0x40
	strb r0, [r1, #1]
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r1, _0800AD58
	adds r1, #0x4a
	ldr r0, _0800AD5C
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	strb r4, [r5, #0x14]
	strb r4, [r5, #0x15]
	movs r0, #0
	movs r1, #0
	bl sub_80028B4
	movs r0, #4
	strb r0, [r5, #5]
	strb r4, [r5, #6]
	b _0800AE4C
	.align 2, 0
_0800AD54: .4byte gTestimony
_0800AD58: .4byte gIORegisters
_0800AD5C: .4byte 0x0000FDFF
_0800AD60:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800ADB4
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800AD7C
	ldr r0, [r0]
	str r0, [r5, #8]
	ldr r0, _0800AD80
	b _0800ADB2
	.align 2, 0
_0800AD7C: .4byte gMain+0x4
_0800AD80: .4byte 0x01000007
_0800AD84:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800ADB4
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800ADB4
	movs r0, #5
	ands r0, r4
	cmp r0, #0
	beq _0800ADB4
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800AE04
	ldr r0, [r0]
	str r0, [r5, #8]
	movs r0, #7
_0800ADB2:
	str r0, [r5, #4]
_0800ADB4:
	ldr r4, _0800AE08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_800B51C
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0800ADE2
	ldrh r0, [r4, #4]
	cmp r0, #0xa0
	bls _0800ADDA
	subs r0, #4
	strh r0, [r4, #4]
_0800ADDA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_800B638
_0800ADE2:
	ldr r0, _0800AE0C
	bl sub_800E8A0
	ldr r1, _0800AE10
	ldr r2, _0800AE14
	movs r0, #8
	ldrh r3, [r2]
	ands r0, r3
	cmp r0, #0
	beq _0800AE44
	ldrh r0, [r2, #0x1e]
	subs r0, #1
	ldrh r5, [r5, #0x18]
	cmp r0, r5
	beq _0800AE18
	movs r0, #0x80
	b _0800AE1C
	.align 2, 0
_0800AE04: .4byte gMain+0x4
_0800AE08: .4byte gTestimony
_0800AE0C: .4byte gCourtRecord
_0800AE10: .4byte gOamObjects
_0800AE14: .4byte gScriptContext
_0800AE18:
	movs r0, #0x80
	lsls r0, r0, #2
_0800AE1C:
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #2]
	ldr r0, _0800AE38
	strh r0, [r1, #4]
	adds r1, #8
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, _0800AE3C
	strh r0, [r1, #2]
	ldr r0, _0800AE40
	strh r0, [r1, #4]
	b _0800AE4C
	.align 2, 0
_0800AE38: .4byte 0x000031A0
_0800AE3C: .4byte 0x000040E0
_0800AE40: .4byte 0x000031A4
_0800AE44:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_0800AE4C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START nullsub_32
nullsub_32: @ 0x0800AE54
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800AE58
sub_800AE58: @ 0x0800AE58
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #6]
	cmp r1, #0
	beq _0800AE68
	cmp r1, #1
	beq _0800AEA6
	b _0800AF04
_0800AE68:
	ldr r1, _0800AE98
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0800AEA0
	movs r0, #0
	movs r1, #1
	movs r2, #2
	movs r3, #0
	bl sub_8011108
	ldr r0, _0800AE9C
	movs r1, #0x1e
	movs r2, #0x1f
	movs r3, #1
	bl InitCourtScroll
	movs r0, #0
	bl sub_800244C
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	b _0800AF04
	.align 2, 0
_0800AE98: .4byte gTestimony
_0800AE9C: .4byte gUnknown_08427D88
_0800AEA0:
	subs r0, #1
	strb r0, [r1, #1]
	b _0800AF04
_0800AEA6:
	ldr r0, _0800AED0
	ldrh r2, [r0, #4]
	cmp r2, #0
	bne _0800AF04
	ldr r3, _0800AED4
	adds r0, r3, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AEE0
	ldr r0, _0800AED8
	strb r1, [r0, #0x14]
	strb r1, [r0, #0x15]
	ldr r0, _0800AEDC
	movs r1, #0
	strh r2, [r0, #0xe]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	b _0800AEE6
	.align 2, 0
_0800AED0: .4byte gCourtScroll
_0800AED4: .4byte gScriptContext
_0800AED8: .4byte gMain
_0800AEDC: .4byte gIORegisters
_0800AEE0:
	movs r0, #1
	bl sub_800244C
_0800AEE6:
	ldr r0, _0800AF20
	ldrh r0, [r0, #0x2c]
	bl ChangeScriptSection
	ldr r1, _0800AF24
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r2, [r1]
	movs r0, #1
	strb r0, [r4, #5]
	strb r2, [r4, #6]
_0800AF04:
	ldr r1, _0800AF24
	adds r0, r4, #0
	movs r2, #0
	bl sub_800B51C
	ldr r1, _0800AF28
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF20: .4byte gScriptContext
_0800AF24: .4byte gTestimony
_0800AF28: .4byte gOamObjects

	THUMB_FUNC_START sub_800AF2C
sub_800AF2C: @ 0x0800AF2C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #6]
	cmp r0, #1
	beq _0800AF6E
	cmp r0, #1
	bgt _0800AF40
	cmp r0, #0
	beq _0800AF4A
	b _0800B024
_0800AF40:
	cmp r0, #2
	beq _0800AFA4
	cmp r0, #3
	beq _0800AFC4
	b _0800B024
_0800AF4A:
	ldr r4, _0800AF64
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0800AF68
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x40
	strb r0, [r4, #1]
	b _0800AFB2
	.align 2, 0
_0800AF64: .4byte gTestimony
_0800AF68:
	subs r0, #1
	strb r0, [r4, #1]
	b _0800B024
_0800AF6E:
	ldr r1, _0800AF98
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0800B020
	ldr r3, _0800AF9C
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_8011108
	ldr r0, _0800AFA0
	movs r1, #0x1e
	movs r2, #0x1f
	movs r3, #1
	bl InitCourtScroll
	movs r0, #0
	bl sub_800244C
	b _0800AFB2
	.align 2, 0
_0800AF98: .4byte gTestimony
_0800AF9C: .4byte 0x000018D0
_0800AFA0: .4byte gUnknown_08427D88
_0800AFA4:
	ldr r0, _0800AFBC
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _0800B024
	ldr r0, _0800AFC0
	movs r1, #0x14
	strb r1, [r0, #1]
_0800AFB2:
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	b _0800B024
	.align 2, 0
_0800AFBC: .4byte gCourtScroll
_0800AFC0: .4byte gTestimony
_0800AFC4:
	ldr r1, _0800AFFC
	ldrb r0, [r1, #1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0800B020
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r4, [r1]
	ldr r3, _0800B000
	adds r0, r3, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B00C
	ldr r1, _0800B004
	movs r0, #1
	strb r0, [r1, #0x14]
	strb r0, [r1, #0x15]
	ldr r0, _0800B008
	strh r2, [r0, #0xe]
	adds r0, r3, #0
	adds r0, #0x38
	strb r4, [r0]
	b _0800B012
	.align 2, 0
_0800AFFC: .4byte gTestimony
_0800B000: .4byte gScriptContext
_0800B004: .4byte gMain
_0800B008: .4byte gIORegisters
_0800B00C:
	movs r0, #1
	bl sub_800244C
_0800B012:
	ldr r1, _0800B01C
	ldr r0, [r5, #8]
	str r0, [r1]
	b _0800B024
	.align 2, 0
_0800B01C: .4byte gMain+0x4
_0800B020:
	subs r0, #1
	strb r0, [r1, #1]
_0800B024:
	ldr r1, _0800B034
	adds r0, r5, #0
	movs r2, #0
	bl sub_800B51C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B034: .4byte gTestimony
