	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START ContinueSaveProcess
ContinueSaveProcess: @ 0x08009A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #5]
	cmp r0, #7
	bls _08009A7C
	bl _0800A322
_08009A7C:
	lsls r0, r0, #2
	ldr r1, _08009A88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009A88: .4byte _08009A8C
_08009A8C: @ jump table
	.4byte _08009AAC @ case 0
	.4byte _08009AB6 @ case 1
	.4byte _08009BA8 @ case 2
	.4byte _08009C14 @ case 3
	.4byte _08009D8C @ case 4
	.4byte _0800A1C4 @ case 5
	.4byte _0800A1E4 @ case 6
	.4byte _0800A1F6 @ case 7
_08009AAC:
	adds r0, r7, #0
	bl sub_8008DF4
	bl _0800A322
_08009AB6:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009AC4
	bl _0800A322
_08009AC4:
	ldr r0, _08009B70
	adds r1, r0, #0
	adds r1, #0x4b
	ldrb r1, [r1]
	strb r1, [r7, #0x17]
	adds r0, #0xc1
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x8d
	strb r0, [r1]
	ldr r1, _08009B74
	ldr r0, _08009B78
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r2, _08009B7C
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B80
	str r0, [r1]
	ldr r0, _08009B84
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B88
	str r0, [r1]
	ldr r0, _08009B8C
	str r0, [r1, #4]
	ldr r0, _08009B90
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x43
	bl sub_8001830
	movs r0, #0x43
	bl sub_8001A9C
	movs r0, #0xfc
	ldrb r1, [r7, #0x1f]
	ands r0, r1
	strb r0, [r7, #0x1f]
	ldr r2, _08009B94
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
_08009B20:
	strh r0, [r2]
	adds r2, #8
	adds r6, #1
	cmp r6, #0x7f
	bls _08009B20
	movs r6, #0
	ldr r2, _08009B98
	movs r1, #0
	ldr r0, _08009B9C
_08009B32:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, r2
	bls _08009B32
	movs r0, #5
	movs r1, #8
	bl sub_80024C8
	movs r0, #0x31
	bl PlaySE
	ldr r1, _08009BA0
	adds r3, r1, #0
	adds r3, #0x4a
	movs r2, #0
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r3]
	movs r0, #0xc
	strb r0, [r7, #0x16]
	ldr r0, _08009BA4
	strh r0, [r1, #4]
	strb r2, [r7, #0x13]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	b _08009BFC
	.align 2, 0
_08009B70: .4byte gSaveDataBuffer
_08009B74: .4byte 0x040000D4
_08009B78: .4byte gUnknown_08186540
_08009B7C: .4byte 0x80000800
_08009B80: .4byte gUnknown_081954A8
_08009B84: .4byte 0x06013400
_08009B88: .4byte gUnknown_081FD92C
_08009B8C: .4byte 0x05000320
_08009B90: .4byte 0x80000020
_08009B94: .4byte gOamObjects
_08009B98: .4byte 0x000003FF
_08009B9C: .4byte gBG2MapBuffer
_08009BA0: .4byte gIORegisters
_08009BA4: .4byte 0x00003E01
_08009BA8:
	ldr r4, _08009C04
	adds r0, r4, #0
	bl sub_8002878
	movs r6, #1
	ldrsb r6, [r4, r6]
	cmp r6, #0
	beq _08009BBA
	b _0800A322
_08009BBA:
	movs r5, #1
	strb r5, [r7, #0x14]
	strb r5, [r7, #0x15]
	ldr r4, _08009C08
	ldr r0, _08009C0C
	strh r0, [r4, #0x1e]
	adds r0, r7, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	adds r0, #7
	bl ChangeScriptSection
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	adds r0, r7, #0
	adds r0, #0x78
	strh r6, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _08009C10
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
_08009BFC:
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	b _0800A322
	.align 2, 0
_08009C04: .4byte gCourtRecord
_08009C08: .4byte gScriptContext
_08009C0C: .4byte 0x0000FFFF
_08009C10: .4byte gIORegisters
_08009C14:
	ldr r1, _08009C48
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08009CBC
	movs r0, #1
	ldrb r2, [r7, #0x17]
	ands r0, r2
	ldr r1, _08009C4C
	cmp r0, #0
	beq _08009C50
	movs r0, #0xc0
	ldrh r3, [r1, #2]
	ands r0, r3
	cmp r0, #0
	beq _08009C50
	movs r0, #0x2a
	bl PlaySE
	movs r0, #1
	ldrb r4, [r7, #0x13]
	eors r0, r4
	strb r0, [r7, #0x13]
	b _08009CBC
	.align 2, 0
_08009C48: .4byte gScriptContext
_08009C4C: .4byte gJoypad
_08009C50:
	ldrh r1, [r1, #2]
	movs r5, #1
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08009C9C
	movs r0, #0x2b
	bl PlaySE
	movs r2, #0
	strb r2, [r7, #0x14]
	strb r5, [r7, #0x15]
	adds r0, r4, #0
	ldrb r1, [r7, #0x17]
	ands r0, r1
	cmp r0, #0
	bne _08009C84
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #5
	b _08009CBA
_08009C84:
	adds r0, r7, #0
	adds r0, #0x78
	movs r1, #0
	strh r2, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #7
	strb r0, [r7, #5]
	strb r1, [r7, #6]
	b _08009CBC
_08009C9C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08009CBC
	movs r0, #0x2c
	bl PlaySE
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r7, #5]
	adds r0, #3
_08009CBA:
	strb r0, [r7, #5]
_08009CBC:
	movs r0, #1
	ldrb r2, [r7, #0x17]
	ands r0, r2
	cmp r0, #0
	beq _08009D28
	ldr r2, _08009CFC
	movs r6, #0
	ldr r3, _08009D00
	mov sl, r3
	ldr r4, _08009D04
	mov sb, r4
_08009CD2:
	movs r5, #0
	adds r0, r6, #1
	mov r8, r0
	lsls r0, r6, #5
	lsls r1, r6, #6
	ldr r3, _08009D08
	adds r3, r3, r0
	mov ip, r3
	mov r0, sl
	adds r4, r1, r0
	ldr r0, _08009D0C
	adds r3, r1, r0
	mov r1, sb
_08009CEC:
	mov r0, ip
	strh r0, [r2]
	strh r1, [r2, #2]
	ldrb r0, [r7, #0x13]
	cmp r0, r6
	bne _08009D10
	strh r3, [r2, #4]
	b _08009D12
	.align 2, 0
_08009CFC: .4byte gOamObjects+0x130
_08009D00: .4byte 0x0000A1A0
_08009D04: .4byte 0x0000C038
_08009D08: .4byte 0x00004462
_08009D0C: .4byte 0x000091A0
_08009D10:
	strh r4, [r2, #4]
_08009D12:
	adds r2, #8
	adds r4, #0x20
	adds r3, #0x20
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _08009CEC
	mov r6, r8
	cmp r6, #1
	bls _08009CD2
	b _08009D44
_08009D28:
	ldr r2, _08009D7C
	movs r5, #0
	ldr r3, _08009D80
	ldr r1, _08009D84
	ldr r0, _08009D88
_08009D32:
	strh r3, [r2]
	strh r1, [r2, #2]
	strh r0, [r2, #4]
	adds r2, #8
	adds r1, #0x40
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _08009D32
_08009D44:
	ldrb r1, [r7, #5]
	cmp r1, #3
	beq _08009D4C
	b _0800A322
_08009D4C:
	adds r3, r7, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0
	bne _08009D58
	b _0800A322
_08009D58:
	adds r2, r7, #0
	adds r2, #0x78
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08009D72
	b _0800A312
_08009D72:
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	b _0800A310
	.align 2, 0
_08009D7C: .4byte gOamObjects+0x130
_08009D80: .4byte 0x00004462
_08009D84: .4byte 0x0000C038
_08009D88: .4byte 0x000091E0
_08009D8C:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009D98
	b _0800A322
_08009D98:
	bl HideAllSprites
	bl InitBGs
	bl ResetAnimationSystem
	bl ResetSoundControl
	bl LoadCurrentScriptIntoRam
	ldr r5, _08009E90
	ldr r0, _08009E94
	str r0, [r5]
	ldr r0, _08009E98
	str r0, [r5, #4]
	ldr r2, _08009E9C
	mov sl, r2
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009EA0
	str r0, [r5]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r5, #4]
	ldr r3, _08009EA4
	mov sb, r3
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	movs r0, #0
	bl GetBGPalettePtr
	adds r6, r0, #0
	str r6, [r5]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r5, #4]
	ldr r4, _08009EA8
	mov r8, r4
	str r4, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _08009EAC
	str r4, [r5]
	ldr r0, _08009EB0
	str r0, [r5, #4]
	ldr r0, _08009EB4
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	bl LoadCurrentScriptIntoRam
	ldr r0, _08009EB8
	str r0, [r5]
	ldr r0, _08009EBC
	str r0, [r5, #4]
	ldr r6, _08009EC0
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r4, r1
	str r0, [r5]
	ldr r0, _08009EC4
	str r0, [r5, #4]
	ldr r0, _08009EC8
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _08009ECC
	adds r4, r4, r2
	adds r0, r4, #0
	bl RestoreAnimationsFromBuffer
	ldrb r3, [r7, #4]
	cmp r3, #4
	bne _08009F0E
	ldr r0, _08009ED0
	str r0, [r5]
	ldr r0, _08009ED4
	str r0, [r5, #4]
	mov r4, sb
	str r4, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009ED8
	str r0, [r5]
	ldr r0, _08009EDC
	str r0, [r5, #4]
	ldr r1, _08009EE0
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009EE4
	str r0, [r5]
	ldr r0, _08009EE8
	str r0, [r5, #4]
	mov r0, r8
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009EEC
	str r0, [r5]
	ldr r0, _08009EF0
	str r0, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009EF4
	str r0, [r5]
	ldr r0, _08009EF8
	str r0, [r5, #4]
	mov r2, r8
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009EFC
	str r0, [r5]
	ldr r0, _08009F00
	str r0, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldrb r3, [r7, #6]
	cmp r3, #3
	beq _08009E82
	b _08009FD0
_08009E82:
	ldrb r0, [r7, #5]
	cmp r0, #7
	bne _08009F04
	bl sub_800D674
	b _08009FD0
	.align 2, 0
_08009E90: .4byte 0x040000D4
_08009E94: .4byte gUnusedAsciiCharSet
_08009E98: .4byte 0x06003800
_08009E9C: .4byte 0x80000400
_08009EA0: .4byte gUnknown_08186540
_08009EA4: .4byte 0x80000800
_08009EA8: .4byte 0x80000100
_08009EAC: .4byte gSaveDataBuffer+0x34
_08009EB0: .4byte gMain
_08009EB4: .4byte 0x800000D0
_08009EB8: .4byte gUnknown_081942C0
_08009EBC: .4byte 0x05000300
_08009EC0: .4byte 0x80000010
_08009EC4: .4byte gTalkData
_08009EC8: .4byte 0x80000140
_08009ECC: .4byte 0x0000261C
_08009ED0: .4byte gUnknown_0818E4C0
_08009ED4: .4byte 0x06012000
_08009ED8: .4byte gUnknown_08194200
_08009EDC: .4byte 0x050002A0
_08009EE0: .4byte 0x80000020
_08009EE4: .4byte gUnknown_0818F6C0
_08009EE8: .4byte 0x06013000
_08009EEC: .4byte gUnknown_08194260
_08009EF0: .4byte 0x050002E0
_08009EF4: .4byte gUnknown_08190AC0
_08009EF8: .4byte 0x06013200
_08009EFC: .4byte gUnknown_081FD92C
_08009F00: .4byte 0x05000320
_08009F04:
	cmp r0, #8
	bne _08009FD0
	bl sub_800D6C8
	b _08009FD0
_08009F0E:
	ldr r4, _08009F58
	mov r8, r4
	str r4, [r5]
	ldr r4, _08009F5C
	str r4, [r5, #4]
	ldr r1, _08009F60
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldr r3, _08009F64
	str r3, [r5]
	ldr r2, _08009F68
	str r2, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009F6C
	str r0, [r5]
	ldr r0, _08009F70
	str r0, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldrb r0, [r7, #4]
	cmp r0, #5
	bne _08009F84
	ldr r0, _08009F74
	str r0, [r5]
	ldr r0, _08009F78
	str r0, [r5, #4]
	mov r0, sl
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08009F7C
	str r0, [r5]
	ldr r0, _08009F80
	str r0, [r5, #4]
	str r6, [r5, #8]
	b _08009FCE
	.align 2, 0
_08009F58: .4byte gUnknown_0818C040
_08009F5C: .4byte 0x06013780
_08009F60: .4byte 0x80000040
_08009F64: .4byte gUnknown_081940E0
_08009F68: .4byte 0x05000260
_08009F6C: .4byte gUnknown_0824696C
_08009F70: .4byte 0x050002C0
_08009F74: .4byte gUnknown_0818F8C0
_08009F78: .4byte 0x06013000
_08009F7C: .4byte gUnknown_08194280
_08009F80: .4byte 0x050002A0
_08009F84:
	cmp r0, #6
	bne _08009FD0
	mov r0, r8
	str r0, [r5]
	str r4, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	str r3, [r5]
	str r2, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A120
	str r0, [r5]
	ldr r0, _0800A124
	str r0, [r5, #4]
	ldr r0, _0800A128
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A12C
	str r0, [r5]
	ldr r0, _0800A130
	str r0, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A134
	str r0, [r5]
	movs r0, #0xd0
	lsls r0, r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A138
	str r0, [r5]
	movs r0, #0x88
	lsls r0, r0, #2
	str r0, [r5, #4]
	str r1, [r5, #8]
_08009FCE:
	ldr r0, [r5, #8]
_08009FD0:
	ldr r4, _0800A13C
	ldr r5, _0800A140
	str r5, [r4]
	ldr r0, _0800A144
	str r0, [r4, #4]
	ldr r0, _0800A148
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl RedrawTextboxCharacters
	ldr r1, _0800A14C
	adds r0, r5, r1
	str r0, [r4]
	ldr r6, _0800A150
	str r6, [r4, #4]
	ldr r0, _0800A154
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _0800A158
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800A15C
	str r0, [r4, #4]
	ldr r0, _0800A160
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _0800A164
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800A168
	str r0, [r4, #4]
	ldr r0, _0800A16C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r1, #0xb0
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800A170
	str r0, [r4, #4]
	ldr r0, _0800A174
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r2, #0xfc
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800A178
	str r0, [r4, #4]
	ldr r0, _0800A17C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r3, #0x58
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800A180
	str r0, [r4, #4]
	ldr r0, _0800A184
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r1, #0x18
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800A188
	str r0, [r4, #4]
	ldr r0, _0800A18C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _0800A190
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800A194
	str r0, [r4, #4]
	ldr r0, _0800A198
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_80074E8
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r2, [r0]
	movs r0, #0x7f
	ands r0, r2
	movs r1, #0x80
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_80028B4
	movs r3, #0xb0
	lsls r3, r3, #4
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800A19C
	str r0, [r4, #4]
	ldr r1, _0800A1A0
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800A1A4
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r7, #0x28]
	bl sub_8001830
	ldrh r0, [r7, #0x28]
	bl sub_80020B0
	movs r0, #4
	ldrh r3, [r6]
	ands r0, r3
	cmp r0, #0
	beq _0800A0C4
	ldr r0, _0800A1A8
	str r0, [r4]
	ldr r0, _0800A1AC
	str r0, [r4, #4]
	ldr r0, _0800A1B0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0800A0C4:
	movs r0, #0x80
	lsls r0, r0, #3
	ldrh r6, [r6]
	ands r0, r6
	cmp r0, #0
	beq _0800A0DE
	ldr r0, _0800A1B4
	str r0, [r4]
	ldr r0, _0800A1AC
	str r0, [r4, #4]
	ldr r0, _0800A1B0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0800A0DE:
	ldr r1, _0800A1B8
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800A1BC
	str r0, [r4, #4]
	ldr r0, _0800A128
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800A1C0
	movs r0, #0
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	strh r0, [r1]
	movs r0, #0x30
	movs r1, #0xf
	bl SetTimedKeysAndDelay
	adds r0, r7, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #3
	bls _0800A112
	adds r0, r7, #0
	bl sub_800F0E0
_0800A112:
	ldrb r1, [r7, #0x1d]
	movs r0, #0x14
	bl FadeInBGM
	movs r0, #1
	movs r1, #1
	b _0800A236
	.align 2, 0
_0800A120: .4byte gUnknown_081900C0
_0800A124: .4byte 0x06013000
_0800A128: .4byte 0x80000200
_0800A12C: .4byte gUnknown_081942A0
_0800A130: .4byte 0x050002A0
_0800A134: .4byte gUnknown_0818BD40
_0800A138: .4byte gUnknown_0818BEC0
_0800A13C: .4byte 0x040000D4
_0800A140: .4byte gSaveDataBuffer+0xB50
_0800A144: .4byte gTextBoxCharacters
_0800A148: .4byte 0x8000017A
_0800A14C: .4byte 0xFFFFF6D8
_0800A150: .4byte gScriptContext
_0800A154: .4byte 0x80000020
_0800A158: .4byte 0xFFFFF684
_0800A15C: .4byte gIORegisters
_0800A160: .4byte 0x8000002A
_0800A164: .4byte 0xFFFFF718
_0800A168: .4byte gCourtRecord
_0800A16C: .4byte 0x8000002C
_0800A170: .4byte gInvestigation
_0800A174: .4byte 0x8000000C
_0800A178: .4byte gTestimony
_0800A17C: .4byte 0x80000004
_0800A180: .4byte gCourtScroll
_0800A184: .4byte 0x80000008
_0800A188: .4byte gExaminationData
_0800A18C: .4byte 0x800000A0
_0800A190: .4byte 0xFFFFFB60
_0800A194: .4byte gMapMarker
_0800A198: .4byte 0x80000050
_0800A19C: .4byte gBG1MapBuffer
_0800A1A0: .4byte 0x80000400
_0800A1A4: .4byte gBG0MapBuffer
_0800A1A8: .4byte gCharSet+0x7100
_0800A1AC: .4byte 0x06011F80
_0800A1B0: .4byte 0x80000040
_0800A1B4: .4byte gUnknown_08190AC0
_0800A1B8: .4byte 0xFFFFFC00
_0800A1BC: .4byte gOamObjects
_0800A1C0: .4byte gJoypad
_0800A1C4:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800A1D0
	b _0800A322
_0800A1D0:
	ldr r0, _0800A1E0
	adds r1, r7, #0
	adds r1, #0x8d
	ldrb r1, [r1]
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [r7, #4]
	b _0800A322
	.align 2, 0
_0800A1E0: .4byte gUnknown_08014D70
_0800A1E4:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800A1F0
	b _0800A322
_0800A1F0:
	movs r0, #1
	str r0, [r7, #4]
	b _0800A322
_0800A1F6:
	ldrb r0, [r7, #6]
	adds r0, #1
	strb r0, [r7, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2f
	bls _0800A244
	ldrb r0, [r7, #0x13]
	adds r1, r0, #0
	cmp r1, #0
	bne _0800A210
	movs r0, #4
	b _0800A212
_0800A210:
	movs r0, #5
_0800A212:
	strb r0, [r7, #5]
	movs r0, #0
	strb r0, [r7, #6]
	ldr r2, _0800A240
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0800A222
	adds r2, #0x10
_0800A222:
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800A228:
	strh r0, [r2]
	adds r2, #8
	adds r6, #1
	cmp r6, #1
	bls _0800A228
	movs r0, #2
	movs r1, #0
_0800A236:
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	b _0800A322
	.align 2, 0
_0800A240: .4byte gOamObjects+0x130
_0800A244:
	movs r0, #1
	ldrb r2, [r7, #0x17]
	ands r0, r2
	cmp r0, #0
	beq _0800A2C4
	ldr r2, _0800A288
	movs r6, #0
_0800A252:
	movs r5, #0
	adds r3, r6, #1
	mov r8, r3
	lsls r0, r6, #5
	lsls r1, r6, #6
	ldr r4, _0800A28C
	adds r4, r4, r0
	mov sl, r4
	ldr r3, _0800A290
	adds r3, r3, r0
	mov sb, r3
	movs r4, #0
	str r4, [sp, #4]
	ldr r0, _0800A294
	adds r3, r1, r0
	ldr r4, _0800A298
	adds r4, r4, r1
	mov ip, r4
	ldr r1, _0800A29C
_0800A278:
	strh r1, [r2, #2]
	ldrb r0, [r7, #0x13]
	cmp r0, r6
	bne _0800A2A0
	mov r0, sl
	strh r0, [r2]
	strh r3, [r2, #4]
	b _0800A2AA
	.align 2, 0
_0800A288: .4byte gOamObjects+0x130
_0800A28C: .4byte 0x00004062
_0800A290: .4byte 0x00004462
_0800A294: .4byte 0x000091A0
_0800A298: .4byte 0x0000A1A0
_0800A29C: .4byte 0x0000C038
_0800A2A0:
	mov r4, sb
	strh r4, [r2]
	ldr r0, [sp, #4]
	add r0, ip
	strh r0, [r2, #4]
_0800A2AA:
	adds r2, #8
	ldr r0, [sp, #4]
	adds r0, #0x20
	str r0, [sp, #4]
	adds r3, #0x20
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _0800A278
	mov r6, r8
	cmp r6, #1
	bls _0800A252
	b _0800A2E0
_0800A2C4:
	ldr r2, _0800A334
	movs r5, #0
	ldr r3, _0800A338
	ldr r1, _0800A33C
	ldr r0, _0800A340
_0800A2CE:
	strh r3, [r2]
	strh r1, [r2, #2]
	strh r0, [r2, #4]
	adds r2, #8
	adds r1, #0x40
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800A2CE
_0800A2E0:
	ldrb r1, [r7, #5]
	cmp r1, #7
	bne _0800A322
	adds r3, r7, #0
	adds r3, #0x7b
	ldrb r2, [r3]
	cmp r2, #0xf
	bhi _0800A322
	adds r2, r7, #0
	adds r2, #0x78
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800A312
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
_0800A310:
	strb r0, [r3]
_0800A312:
	ldr r2, _0800A344
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_0800A322:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A334: .4byte gOamObjects+0x130
_0800A338: .4byte 0x00004062
_0800A33C: .4byte 0x0000C038
_0800A340: .4byte 0x000091E0
_0800A344: .4byte gIORegisters