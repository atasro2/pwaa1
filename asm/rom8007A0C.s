	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_8007A0C
sub_8007A0C: @ 0x08007A0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08007A24
	ldrb r0, [r4, #5]
	cmp r0, #1
	beq _08007A80
	cmp r0, #1
	bgt _08007A28
	cmp r0, #0
	beq _08007A2E
	b _08007ABC
	.align 2, 0
_08007A24: .4byte gLCDIORegisters
_08007A28:
	cmp r0, #2
	beq _08007AAE
	b _08007ABC
_08007A2E:
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r5]
	ldr r0, _08007A78
	strh r0, [r5, #2]
	adds r0, #0xff
	strh r0, [r5, #4]
	ldr r0, _08007A7C
	strh r0, [r5, #6]
	movs r0, #0x44
	bl sub_8001830
	movs r0, #0x44
	bl sub_8001A9C
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #8
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	movs r0, #0x78
	strb r0, [r4, #7]
	b _08007ABC
	.align 2, 0
_08007A78: .4byte 0x00003D01
_08007A7C: .4byte 0x00003FC7
_08007A80:
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08007ABC
	ldrb r0, [r4, #7]
	adds r5, r0, #0
	cmp r5, #0
	beq _08007A98
	subs r0, #1
	strb r0, [r4, #7]
	b _08007ABC
_08007A98:
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	strb r5, [r4, #0x16]
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	b _08007ABC
_08007AAE:
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08007ABC
	movs r0, #1
	str r0, [r4, #4]
_08007ABC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8007AC4
sub_8007AC4: @ 0x08007AC4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _08007ADC
	ldrb r1, [r6, #5]
	cmp r1, #1
	beq _08007B00
	cmp r1, #1
	bgt _08007AE0
	cmp r1, #0
	beq _08007AEE
	b _08007E66
	.align 2, 0
_08007ADC: .4byte gLCDIORegisters
_08007AE0:
	cmp r1, #2
	bne _08007AE6
	b _08007C30
_08007AE6:
	cmp r1, #3
	bne _08007AEC
	b _08007D24
_08007AEC:
	b _08007E66
_08007AEE:
	bl sub_80004B0
	bl sub_8008100
	ldr r0, _08007AFC
	str r0, [r6, #4]
	b _08007E66
	.align 2, 0
_08007AFC: .4byte 0x00000101
_08007B00:
	ldr r4, _08007BC8
	ldr r0, _08007BCC
	str r0, [r4]
	ldr r0, _08007BD0
	str r0, [r4, #4]
	ldr r0, _08007BD4
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08007BD8
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _08007BDC
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08007BE0
	ldr r5, _08007BE4
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	ldr r0, _08007BE8
	str r0, [r4, #4]
	ldr r0, _08007BEC
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08007BF0
	str r0, [r4]
	ldr r0, _08007BF4
	str r0, [r4, #4]
	ldr r0, _08007BF8
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08007BFC
	str r0, [r4]
	ldr r0, _08007C00
	str r0, [r4, #4]
	ldr r0, _08007C04
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08007C08
	movs r5, #0
	ldr r1, _08007C0C
	strh r1, [r2]
	ldr r4, _08007C10
	strh r4, [r2, #2]
	ldr r0, _08007C14
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r3, _08007C18
	strh r3, [r2, #2]
	adds r0, #8
	strh r0, [r2, #4]
	adds r2, #8
	movs r0, #0xf0
	ldrb r1, [r6, #0x17]
	ands r0, r1
	cmp r0, #0
	beq _08007B8E
	ldr r0, _08007C1C
	strh r0, [r2]
	strh r4, [r2, #2]
	ldr r1, _08007C20
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	strh r3, [r2, #2]
	ldr r0, _08007C24
	strh r0, [r2, #4]
_08007B8E:
	adds r1, r7, #0
	adds r1, #0x4a
	movs r0, #0xca
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _08007C28
	strb r5, [r1, #0x15]
	movs r0, #2
	strb r0, [r1, #0x14]
	strb r5, [r6, #0x13]
	movs r3, #0xce
	lsls r3, r3, #1
	adds r2, r6, r3
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	movs r0, #9
	strb r0, [r6, #0x16]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldr r0, _08007C2C
	str r0, [r6, #4]
	b _08007E66
	.align 2, 0
_08007BC8: .4byte 0x040000D4
_08007BCC: .4byte gUnknown_08185D20
_08007BD0: .4byte 0x06003800
_08007BD4: .4byte 0x80000400
_08007BD8: .4byte gUnknown_08180000
_08007BDC: .4byte 0x80000100
_08007BE0: .4byte gUnknown_08180200
_08007BE4: .4byte gUnknown_0202CFC0
_08007BE8: .4byte 0x06004000
_08007BEC: .4byte 0x80004B00
_08007BF0: .4byte gUnknown_08194580
_08007BF4: .4byte 0x05000240
_08007BF8: .4byte 0x80000060
_08007BFC: .4byte gUnknown_08193CA0
_08007C00: .4byte 0x06010400
_08007C04: .4byte 0x80000200
_08007C08: .4byte gOamObjects+0x188
_08007C0C: .4byte 0x00004070
_08007C10: .4byte 0x00008058
_08007C14: .4byte 0x00002420
_08007C18: .4byte 0x00008078
_08007C1C: .4byte 0x00004084
_08007C20: .4byte 0x00002030
_08007C24: .4byte 0x00002038
_08007C28: .4byte gUnknown_03003A50
_08007C2C: .4byte 0x00000201
_08007C30:
	ldr r0, _08007C50
	ldrh r3, [r0, #2]
	movs r2, #9
	ands r2, r3
	cmp r2, #0
	beq _08007C5C
	movs r0, #0x3a
	bl PlaySE
	ldr r0, _08007C54
	movs r1, #0
	strh r1, [r0, #0x2a]
	ldr r0, _08007C58
	str r0, [r6, #4]
	b _08007C82
	.align 2, 0
_08007C50: .4byte gJoypad
_08007C54: .4byte gScriptContext
_08007C58: .4byte 0x00000301
_08007C5C:
	movs r0, #0xf0
	ldrb r4, [r6, #0x17]
	ands r0, r4
	cmp r0, #0
	beq _08007C82
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0
	beq _08007C82
	ldr r0, _08007CE4
	strb r2, [r0, #0x15]
	strb r1, [r0, #0x14]
	movs r0, #1
	ldrb r5, [r6, #0x13]
	eors r0, r5
	strb r0, [r6, #0x13]
	movs r0, #0x2a
	bl PlaySE
_08007C82:
	ldr r3, _08007CE4
	ldrb r0, [r3, #0x15]
	adds r0, #1
	strb r0, [r3, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08007C9C
	movs r0, #0
	strb r0, [r3, #0x15]
	ldrb r0, [r3, #0x14]
	adds r0, #1
	strb r0, [r3, #0x14]
_08007C9C:
	ldrb r0, [r3, #0x14]
	cmp r0, #6
	bls _08007CA6
	movs r0, #2
	strb r0, [r3, #0x14]
_08007CA6:
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	bne _08007CF0
	ldr r2, _08007CE8
	ldrb r1, [r3, #0x14]
	lsls r0, r1, #0xc
	movs r4, #0x84
	lsls r4, r4, #3
	adds r1, r4, #0
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r3, [r3, #0x14]
	lsls r0, r3, #0xc
	movs r5, #0x85
	lsls r5, r5, #3
	adds r1, r5, #0
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r2, #8
	movs r0, #0xf0
	ldrb r6, [r6, #0x17]
	ands r0, r6
	cmp r0, #0
	bne _08007CDA
	b _08007E66
_08007CDA:
	ldr r0, _08007CEC
	strh r0, [r2, #4]
	adds r0, #8
	strh r0, [r2, #0xc]
	b _08007E66
	.align 2, 0
_08007CE4: .4byte gUnknown_03003A50
_08007CE8: .4byte gOamObjects+0x188
_08007CEC: .4byte 0x00005030
_08007CF0:
	ldr r2, _08007D1C
	ldr r0, _08007D20
	strh r0, [r2, #4]
	adds r2, #8
	adds r0, #8
	strh r0, [r2, #4]
	adds r2, #8
	movs r0, #0xf0
	ldrb r6, [r6, #0x17]
	ands r0, r6
	cmp r0, #0
	bne _08007D0A
	b _08007E66
_08007D0A:
	ldrb r1, [r3, #0x14]
	lsls r0, r1, #0xc
	adds r0, #0x30
	strh r0, [r2, #4]
	ldrb r3, [r3, #0x14]
	lsls r0, r3, #0xc
	adds r0, #0x38
	strh r0, [r2, #0xc]
	b _08007E66
	.align 2, 0
_08007D1C: .4byte gOamObjects+0x188
_08007D20: .4byte 0x00005420
_08007D24:
	ldrb r0, [r6, #7]
	adds r0, #1
	strb r0, [r6, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6, #0x13]
	cmp r0, #0x27
	bls _08007D40
	cmp r1, #0
	bne _08007D3C
	movs r0, #0xc
	b _08007D3E
_08007D3C:
	movs r0, #0xd
_08007D3E:
	str r0, [r6, #4]
_08007D40:
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08007DE0
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08007D84
	ldr r2, _08007D78
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r1, _08007D7C
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _08007D80
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r3, [r6, #6]
	cmp r3, #8
	bls _08007D98
	movs r0, #0
	strb r0, [r6, #6]
	b _08007D98
	.align 2, 0
_08007D78: .4byte gOamObjects+0x188
_08007D7C: .4byte 0x00002020
_08007D80: .4byte 0x00002028
_08007D84:
	ldr r2, _08007DCC
	ldr r0, _08007DD0
	strh r0, [r2]
	ldr r1, _08007DD4
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _08007DD8
	strh r0, [r2, #4]
	adds r2, #8
_08007D98:
	movs r0, #0xf0
	ldrb r6, [r6, #0x17]
	ands r0, r6
	ldr r4, _08007DDC
	cmp r0, #0
	beq _08007E60
	ldrh r1, [r2]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _08007DB6
	ldrh r5, [r4, #0x2a]
	adds r0, r5, r1
	strh r0, [r2]
_08007DB6:
	adds r2, #8
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _08007E60
	ldrh r3, [r4, #0x2a]
	adds r0, r3, r1
	strh r0, [r2]
	b _08007E60
	.align 2, 0
_08007DCC: .4byte gOamObjects+0x188
_08007DD0: .4byte 0x00004070
_08007DD4: .4byte 0x00002020
_08007DD8: .4byte 0x00002028
_08007DDC: .4byte gScriptContext
_08007DE0:
	ldr r2, _08007E40
	ldrh r1, [r2]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r1
	ldr r4, _08007E44
	cmp r0, #0xe0
	bhi _08007DF6
	ldrh r5, [r4, #0x2a]
	adds r0, r5, r1
	strh r0, [r2]
_08007DF6:
	adds r2, #8
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _08007E08
	ldrh r3, [r4, #0x2a]
	adds r0, r3, r1
	strh r0, [r2]
_08007E08:
	adds r2, #8
	movs r0, #0xf0
	ldrb r5, [r6, #0x17]
	ands r0, r5
	cmp r0, #0
	beq _08007E60
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08007E50
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r1, _08007E48
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _08007E4C
	strh r0, [r2, #4]
	ldrb r0, [r6, #6]
	cmp r0, #8
	bls _08007E60
	movs r0, #0
	strb r0, [r6, #6]
	b _08007E60
	.align 2, 0
_08007E40: .4byte gOamObjects+0x188
_08007E44: .4byte gScriptContext
_08007E48: .4byte 0x00002030
_08007E4C: .4byte 0x00002038
_08007E50:
	ldr r0, _08007E6C
	strh r0, [r2]
	ldr r1, _08007E70
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _08007E74
	strh r0, [r2, #4]
_08007E60:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
_08007E66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007E6C: .4byte 0x00004084
_08007E70: .4byte 0x00002030
_08007E74: .4byte 0x00002038

	THUMB_FUNC_START sub_8007E78
sub_8007E78: @ 0x08007E78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, _08007E9C
	ldr r3, _08007EA0
	ldrb r0, [r6, #5]
	cmp r0, #1
	beq _08007F80
	cmp r0, #1
	bgt _08007EA4
	cmp r0, #0
	beq _08007EB2
	b _0800809E
	.align 2, 0
_08007E9C: .4byte gLCDIORegisters
_08007EA0: .4byte gOamObjects+0x188
_08007EA4:
	cmp r0, #2
	bne _08007EAA
	b _0800805C
_08007EAA:
	cmp r0, #3
	bne _08007EB0
	b _0800807C
_08007EB0:
	b _0800809E
_08007EB2:
	movs r1, #0x30
	strh r1, [r3]
	ldr r0, _08007F38
	strh r0, [r3, #2]
	ldr r0, _08007F3C
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _08007F40
	strh r0, [r3, #2]
	ldr r0, _08007F44
	strh r0, [r3, #4]
	ldr r0, _08007F48
	ldr r1, _08007F4C
	str r1, [r0]
	ldr r1, _08007F50
	str r1, [r0, #4]
	ldr r1, _08007F54
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08007F58
	str r1, [r0]
	ldr r1, _08007F5C
	str r1, [r0, #4]
	ldr r2, _08007F60
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08007F64
	str r1, [r0]
	ldr r1, _08007F68
	str r1, [r0, #4]
	ldr r1, _08007F6C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08007F70
	str r1, [r0]
	ldr r1, _08007F74
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0
	ldr r2, _08007F78
	adds r3, r4, #0
	adds r3, #0x4a
	movs r1, #0
	ldr r0, _08007F7C
_08007F0E:
	strh r1, [r0]
	adds r0, #2
	adds r5, #1
	cmp r5, r2
	bls _08007F0E
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x12]
	movs r0, #8
	strh r0, [r4, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r4, #4]
	movs r0, #0xea
	lsls r0, r0, #5
	strh r0, [r3]
	movs r0, #0xd
	strb r0, [r6, #0x16]
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0800804A
	.align 2, 0
_08007F38: .4byte 0x0000C1A8
_08007F3C: .4byte 0x000051A0
_08007F40: .4byte 0x0000C108
_08007F44: .4byte 0x000051E0
_08007F48: .4byte 0x040000D4
_08007F4C: .4byte gUnknown_081911C0
_08007F50: .4byte 0x06001400
_08007F54: .4byte 0x80000170
_08007F58: .4byte gUnknown_08194500
_08007F5C: .4byte 0x05000020
_08007F60: .4byte 0x80000010
_08007F64: .4byte gUnknown_08192CA0
_08007F68: .4byte 0x06013400
_08007F6C: .4byte 0x80000800
_08007F70: .4byte gUnknown_08194560
_08007F74: .4byte 0x050002A0
_08007F78: .4byte 0x000003FF
_08007F7C: .4byte gBG2MapBuffer
_08007F80:
	ldrh r1, [r3, #2]
	ldr r0, _08008050
	adds r2, r0, #0
	ands r2, r1
	adds r2, #8
	ands r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	adds r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r3, #0xa]
	subs r0, #8
	strh r0, [r3, #0xa]
	movs r5, #0
	ldr r0, _08008054
	mov sb, r0
	mov r8, r5
	ldr r0, _08008058
	adds r0, #0xe
	mov sl, r0
_08007FAA:
	lsls r0, r5, #6
	mov r1, sb
	adds r3, r0, r1
	ldrb r1, [r6, #6]
	lsls r0, r1, #1
	adds r3, r3, r0
	movs r4, #0
	cmp r4, r1
	bhs _08007FE0
	mov r1, r8
	add r1, sl
	movs r2, #0x85
	lsls r2, r2, #5
	mov ip, r2
	movs r7, #0xa0
	lsls r7, r7, #2
_08007FCA:
	ldrb r2, [r1]
	add r2, ip
	strh r2, [r3]
	adds r0, r3, r7
	strh r2, [r0]
	subs r3, #2
	subs r1, #1
	adds r4, #1
	ldrb r0, [r6, #6]
	cmp r4, r0
	blo _08007FCA
_08007FE0:
	movs r1, #0xf
	add r8, r1
	adds r5, #1
	cmp r5, #9
	bls _08007FAA
	movs r5, #0
	ldr r0, _08008058
	adds r0, #0xe
	mov r8, r0
_08007FF2:
	lsls r0, r5, #6
	mov r2, sb
	adds r3, r0, r2
	ldrb r1, [r6, #6]
	movs r0, #0x1f
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r4, #0
	adds r7, r5, #1
	cmp r4, r1
	bhs _08008032
	lsls r0, r5, #4
	subs r0, r0, r5
	mov r2, r8
	adds r1, r0, r2
	movs r0, #0xa5
	lsls r0, r0, #5
	mov ip, r0
	movs r5, #0xa0
	lsls r5, r5, #2
_0800801C:
	ldrb r2, [r1]
	add r2, ip
	strh r2, [r3]
	adds r0, r3, r5
	strh r2, [r0]
	adds r3, #2
	subs r1, #1
	adds r4, #1
	ldrb r2, [r6, #6]
	cmp r4, r2
	blo _0800801C
_08008032:
	adds r5, r7, #0
	cmp r5, #9
	bls _08007FF2
	ldrb r0, [r6, #6]
	cmp r0, #0xe
	bls _08008076
	movs r0, #0x56
	bl PlaySE
	ldrb r0, [r6, #5]
	adds r0, #1
	movs r1, #0
_0800804A:
	strb r0, [r6, #5]
	strb r1, [r6, #6]
	b _0800809E
	.align 2, 0
_08008050: .4byte 0x000001FF
_08008054: .4byte gBG2MapBuffer
_08008058: .4byte gUnknown_080189A4
_0800805C:
	ldrb r0, [r6, #6]
	cmp r0, #0x77
	bls _08008076
	movs r0, #2
	movs r1, #3
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	b _0800809E
_08008076:
	adds r0, #1
	strb r0, [r6, #6]
	b _0800809E
_0800807C:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r1, [r0]
	cmp r1, #0
	bne _0800809E
	mov r0, sp
	strh r1, [r0]
	ldr r1, _080080B0
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080080B4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	str r0, [r6, #4]
_0800809E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080080B0: .4byte 0x040000D4
_080080B4: .4byte 0x81000200

	THUMB_FUNC_START sub_80080B8
sub_80080B8: @ 0x080080B8
	push {r4, lr}
	ldr r4, _080080EC
	adds r1, r4, #0
	adds r1, #0x4b
	movs r0, #0x10
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _080080F0
	ldr r0, _080080F4
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _080080F8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_8008170
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _080080FC
	adds r0, r4, #0
	bl WriteSramEx
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080080EC: .4byte gSaveDataBuffer
_080080F0: .4byte 0x040000D4
_080080F4: .4byte gUnknown_08018A3C
_080080F8: .4byte 0x80000018
_080080FC: .4byte 0x000029D0

	THUMB_FUNC_START sub_8008100
sub_8008100: @ 0x08008100
	push {r4, lr}
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r4, _08008144
	ldr r2, _08008148
	adds r1, r4, #0
	bl ReadSram
	movs r1, #0
	ldr r2, _0800814C
_08008114:
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r3, [r4]
	cmp r0, r3
	bne _08008154
	adds r4, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08008114
	ldr r4, _08008150
	ldr r0, _08008144
	adds r0, #0xc2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x8e
	strb r0, [r1]
	bl sub_80081AC
	cmp r0, #0
	beq _08008164
	movs r0, #0x10
	strb r0, [r4, #0x17]
	movs r0, #0
	b _08008168
	.align 2, 0
_08008144: .4byte gSaveDataBuffer
_08008148: .4byte 0x000029D0
_0800814C: .4byte gUnknown_08018A3C
_08008150: .4byte gMain
_08008154:
	ldr r1, _08008160
	movs r0, #0
	strb r0, [r1, #0x17]
	movs r0, #2
	b _08008168
	.align 2, 0
_08008160: .4byte gMain
_08008164:
	strb r0, [r4, #0x17]
	movs r0, #1
_08008168:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_8008170
sub_8008170: @ 0x08008170
	push {r4, lr}
	ldr r1, _080081A0
	movs r0, #0
	str r0, [r1, #0x30]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x34
	ldr r4, _080081A4
	adds r3, r1, r4
	adds r4, r1, #0
	cmp r0, r3
	bhs _08008194
	adds r1, r3, #0
_0800818A:
	ldrb r3, [r0]
	adds r2, r3, r2
	adds r0, #4
	cmp r0, r1
	blo _0800818A
_08008194:
	ldr r0, _080081A8
	adds r2, r2, r0
	str r2, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080081A0: .4byte gSaveDataBuffer
_080081A4: .4byte 0x000029D0
_080081A8: .4byte 0x00000927

	THUMB_FUNC_START sub_80081AC
sub_80081AC: @ 0x080081AC
	push {r4, lr}
	movs r1, #0
	ldr r0, _080081D8
	ldr r3, _080081DC
	adds r2, r0, r3
	adds r3, r0, #0
	subs r3, #0x34
	cmp r0, r2
	bhs _080081C8
_080081BE:
	ldrb r4, [r0]
	adds r1, r4, r1
	adds r0, #4
	cmp r0, r2
	blo _080081BE
_080081C8:
	ldr r0, _080081E0
	adds r1, r1, r0
	ldr r0, [r3, #0x30]
	cmp r1, r0
	beq _080081E4
	movs r0, #0
	b _080081E6
	.align 2, 0
_080081D8: .4byte gSaveDataBuffer+0x34
_080081DC: .4byte 0x0000299C
_080081E0: .4byte 0x00000927
_080081E4:
	movs r0, #1
_080081E6:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80081EC
sub_80081EC: @ 0x080081EC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrb r5, [r6, #5]
	cmp r5, #1
	bne _080081FA
	b _08008328
_080081FA:
	cmp r5, #1
	bgt _08008204
	cmp r5, #0
	beq _08008212
	b _080084BA
_08008204:
	cmp r5, #2
	bne _0800820A
	b _080083C8
_0800820A:
	cmp r5, #3
	bne _08008210
	b _0800848C
_08008210:
	b _080084BA
_08008212:
	ldr r4, _080082D4
	ldr r0, _080082D8
	str r0, [r4]
	ldr r0, _080082DC
	str r0, [r4, #4]
	ldr r5, _080082E0
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0
	bl sub_8002234
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _080082E4
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080082E8
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _080082EC
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080082F0
	str r0, [r4]
	ldr r0, _080082F4
	str r0, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080082F8
	str r0, [r4]
	ldr r0, _080082FC
	str r0, [r4, #4]
	ldr r0, _08008300
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08008304
	str r0, [r4]
	ldr r0, _08008308
	str r0, [r4, #4]
	ldr r0, _0800830C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _08008310
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r0, _08008314
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r0, _08008318
	strh r0, [r1, #6]
	movs r0, #0x43
	bl sub_8001830
	movs r0, #0x43
	bl sub_8001A9C
	movs r0, #0
	ldr r3, _0800831C
	movs r2, #0
	ldr r1, _08008320
_08008296:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, r3
	bls _08008296
	movs r0, #6
	movs r1, #8
	bl sub_80024C8
	ldr r1, _08008310
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r2]
	movs r0, #0xc
	strb r0, [r6, #0x16]
	ldr r0, _08008324
	strh r0, [r1, #4]
	adds r1, #0x4e
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	strb r0, [r6, #0x13]
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	b _0800839C
	.align 2, 0
_080082D4: .4byte 0x040000D4
_080082D8: .4byte gUnknown_08185D20
_080082DC: .4byte 0x06003800
_080082E0: .4byte 0x80000400
_080082E4: .4byte 0x80000100
_080082E8: .4byte gUnknown_08186540
_080082EC: .4byte 0x80000800
_080082F0: .4byte gUnknown_081964A8
_080082F4: .4byte 0x06013C00
_080082F8: .4byte gUnknown_081FD92C
_080082FC: .4byte 0x05000320
_08008300: .4byte 0x80000020
_08008304: .4byte gTextPal
_08008308: .4byte 0x05000200
_0800830C: .4byte 0x80000010
_08008310: .4byte gLCDIORegisters
_08008314: .4byte 0x00003D01
_08008318: .4byte 0x00003FC7
_0800831C: .4byte 0x000003FF
_08008320: .4byte gBG2MapBuffer
_08008324: .4byte 0x00003E01
_08008328:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08008334
	b _080084BA
_08008334:
	ldr r4, _080083A4
	adds r0, r4, #0
	bl sub_8002878
	movs r7, #1
	ldrsb r7, [r4, r7]
	cmp r7, #0
	beq _08008346
	b _080084BA
_08008346:
	strb r5, [r6, #0x14]
	strb r5, [r6, #0x15]
	ldr r4, _080083A8
	ldr r0, _080083AC
	strh r0, [r4, #0x1e]
	movs r0, #4
	bl sub_800549C
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	ldr r2, _080083B0
	ldr r1, _080083B4
	strh r1, [r2]
	ldr r0, _080083B8
	strh r0, [r2, #2]
	ldr r0, _080083BC
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _080083C0
	strh r0, [r2, #2]
	movs r0, #0xa2
	lsls r0, r0, #8
	strh r0, [r2, #4]
	adds r0, r6, #0
	adds r0, #0x78
	strh r7, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _080083C4
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
_0800839C:
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	b _080084BA
	.align 2, 0
_080083A4: .4byte gUnknown_03002840
_080083A8: .4byte gScriptContext
_080083AC: .4byte 0x0000FFFF
_080083B0: .4byte gOamObjects+0x140
_080083B4: .4byte 0x00004460
_080083B8: .4byte 0x0000C030
_080083BC: .4byte 0x0000A1E0
_080083C0: .4byte 0x0000C080
_080083C4: .4byte gLCDIORegisters
_080083C8:
	ldr r1, _080083F0
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800841A
	ldr r0, _080083F4
	ldrh r1, [r0, #2]
	movs r4, #0x30
	ands r4, r1
	cmp r4, #0
	beq _080083F8
	movs r0, #0x2a
	bl PlaySE
	movs r0, #1
	ldrb r1, [r6, #0x13]
	eors r0, r1
	strb r0, [r6, #0x13]
	b _0800841A
	.align 2, 0
_080083F0: .4byte gScriptContext
_080083F4: .4byte gJoypad
_080083F8:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800841A
	movs r0, #0x2b
	bl PlaySE
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	strb r4, [r6, #0x16]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
_0800841A:
	ldr r2, _0800842C
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	bne _08008434
	ldr r0, _08008430
	strh r0, [r2, #4]
	movs r0, #0xa2
	lsls r0, r0, #8
	b _0800843C
	.align 2, 0
_0800842C: .4byte gOamObjects+0x140
_08008430: .4byte 0x000091E0
_08008434:
	ldr r0, _08008484
	strh r0, [r2, #4]
	movs r0, #0x92
	lsls r0, r0, #8
_0800843C:
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #5]
	cmp r0, #2
	bne _080084BA
	adds r3, r6, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0
	beq _080084BA
	adds r2, r6, #0
	adds r2, #0x78
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _08008470
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_08008470:
	ldr r2, _08008488
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
	b _080084BA
	.align 2, 0
_08008484: .4byte 0x0000A1E0
_08008488: .4byte gLCDIORegisters
_0800848C:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r4, [r0]
	cmp r4, #0
	bne _080084BA
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	bne _080084B8
	str r4, [sp]
	ldr r2, _080084C4
	mov r1, sp
	str r1, [r2]
	ldr r0, _080084C8
	str r0, [r2, #4]
	ldr r1, _080084CC
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _080084D0
	bl WriteSramEx
_080084B8:
	str r4, [r6, #4]
_080084BA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080084C4: .4byte 0x040000D4
_080084C8: .4byte gSaveDataBuffer
_080084CC: .4byte 0x85000A74
_080084D0: .4byte 0x000029D0

	THUMB_FUNC_START sub_80084D4
sub_80084D4: @ 0x080084D4
	push {lr}
	ldr r2, _080084EC
	ldr r0, _080084F0
	ldrb r3, [r0, #5]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080084EC: .4byte gUnknown_0811DF28
_080084F0: .4byte gMain

	THUMB_FUNC_START sub_80084F4
sub_80084F4: @ 0x080084F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08008594
	ldr r1, _08008598
	str r1, [r0]
	ldr r2, _0800859C
	str r2, [r0, #4]
	ldr r3, _080085A0
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080085A4
	str r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r2, r4
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080085A8
	str r1, [r0]
	ldr r3, _080085AC
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, _080085B0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080085B4
	str r1, [r0]
	ldr r4, _080085B8
	adds r1, r2, r4
	str r1, [r0, #4]
	ldr r1, _080085BC
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080085C0
	str r1, [r0]
	ldr r3, _080085C4
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, _080085C8
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r3, _080085CC
	str r3, [r0]
	ldr r4, _080085D0
	adds r1, r2, r4
	str r1, [r0, #4]
	ldr r1, _080085D4
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r2, r2, r0
	movs r4, #0xff
_08008562:
	ldrb r0, [r3]
	orrs r0, r4
	strb r0, [r3]
	adds r3, #0x14
	adds r1, #1
	cmp r1, #7
	bls _08008562
	movs r4, #0
	adds r0, r2, #0
	bl sub_801042C
	strb r4, [r5, #0x14]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008594: .4byte 0x040000D4
_08008598: .4byte gBG1MapBuffer
_0800859C: .4byte gSaveDataBuffer+0x1650
_080085A0: .4byte 0x80000400
_080085A4: .4byte gBG2MapBuffer
_080085A8: .4byte gUnknown_03003C00
_080085AC: .4byte 0xFFFFF500
_080085B0: .4byte 0x8000017A
_080085B4: .4byte gScriptContext
_080085B8: .4byte 0xFFFFEBD8
_080085BC: .4byte 0x80000020
_080085C0: .4byte gLCDIORegisters
_080085C4: .4byte 0xFFFFEB84
_080085C8: .4byte 0x8000002A
_080085CC: .4byte gUnknown_03003930
_080085D0: .4byte 0xFFFFF060
_080085D4: .4byte 0x80000050

	THUMB_FUNC_START sub_80085D8
sub_80085D8: @ 0x080085D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _080085E6
	b _08008706
_080085E6:
	ldr r0, _0800870C
	ldr r1, _08008710
	str r1, [r0]
	ldr r2, _08008714
	str r2, [r0, #4]
	ldr r3, _08008718
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800871C
	str r1, [r0]
	ldr r5, _08008720
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _08008724
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008728
	str r1, [r0]
	adds r5, #0x70
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800872C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008730
	str r1, [r0]
	subs r5, #8
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _08008734
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008738
	str r1, [r0]
	subs r5, #0x10
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800873C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008740
	str r1, [r0]
	adds r5, #0x30
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _08008744
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008748
	str r1, [r0]
	ldr r1, _0800874C
	adds r2, r2, r1
	str r2, [r0, #4]
	ldr r1, _08008750
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008754
	str r1, [r0]
	ldr r1, _08008758
	str r1, [r0, #4]
	ldr r1, _0800875C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008760
	str r1, [r0]
	ldr r1, _08008764
	str r1, [r0, #4]
	ldr r1, _08008768
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800876C
	str r1, [r0]
	ldr r1, _08008770
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008774
	str r1, [r0]
	ldr r1, _08008778
	str r1, [r0, #4]
	ldr r1, _0800877C
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x43
	bl sub_8001830
	movs r0, #0x43
	bl sub_8001A9C
	movs r0, #0xfc
	ldrb r5, [r4, #0x1f]
	ands r0, r5
	strb r0, [r4, #0x1f]
	ldr r1, _08008780
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
_080086A8:
	strh r2, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #0x7f
	bls _080086A8
	movs r0, #0
	ldr r3, _08008784
	movs r2, #0
	ldr r1, _08008788
_080086BA:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, r3
	bls _080086BA
	movs r0, #6
	movs r1, #8
	bl sub_80024C8
	ldr r1, _0800878C
	movs r0, #0x4a
	adds r0, r0, r1
	mov ip, r0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe2
	lsls r0, r0, #5
	mov r5, ip
	strh r0, [r5]
	movs r0, #0xc
	strb r0, [r4, #0x16]
	ldr r0, _08008790
	strh r0, [r1, #4]
	movs r0, #8
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x14]
	strh r2, [r1, #0xe]
	strh r2, [r1, #0xc]
	strb r3, [r4, #0x15]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
_08008706:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800870C: .4byte 0x040000D4
_08008710: .4byte gBG0MapBuffer
_08008714: .4byte gSaveDataBuffer+0xE50
_08008718: .4byte 0x80000400
_0800871C: .4byte gUnknown_03002840
_08008720: .4byte 0xFFFFF418
_08008724: .4byte 0x8000002C
_08008728: .4byte gUnknown_03003A50
_0800872C: .4byte 0x8000000C
_08008730: .4byte gUnknown_03003AB0
_08008734: .4byte 0x80000004
_08008738: .4byte gUnknown_03004000
_0800873C: .4byte 0x80000008
_08008740: .4byte gUnknown_03003AC0
_08008744: .4byte 0x800000A0
_08008748: .4byte gUnknown_030028A0
_0800874C: .4byte 0xFFFFF5E0
_08008750: .4byte 0x80000140
_08008754: .4byte gUnknown_08193CA0
_08008758: .4byte 0x06013800
_0800875C: .4byte 0x80000200
_08008760: .4byte gUnknown_08194580
_08008764: .4byte 0x05000300
_08008768: .4byte 0x80000060
_0800876C: .4byte gUnknown_081964A8
_08008770: .4byte 0x06013C00
_08008774: .4byte gUnknown_081FD92C
_08008778: .4byte 0x05000320
_0800877C: .4byte 0x80000020
_08008780: .4byte gOamObjects
_08008784: .4byte 0x000003FF
_08008788: .4byte gBG2MapBuffer
_0800878C: .4byte gLCDIORegisters
_08008790: .4byte 0x00003E01

	THUMB_FUNC_START sub_8008794
sub_8008794: @ 0x08008794
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080087C4
	adds r0, r4, #0
	bl sub_8002878
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08008854
	movs r0, #1
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	ldr r1, _080087C8
	ldr r0, _080087CC
	strh r0, [r1, #0x1e]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _080087D0
	movs r0, #0
	bl sub_800549C
	b _080087D6
	.align 2, 0
_080087C4: .4byte gUnknown_03002840
_080087C8: .4byte gScriptContext
_080087CC: .4byte 0x0000FFFF
_080087D0:
	movs r0, #1
	bl sub_800549C
_080087D6:
	ldr r1, _08008830
	movs r3, #0
	movs r0, #9
	strh r0, [r1, #0x18]
	movs r0, #0x34
	strh r0, [r1, #0x1a]
	ldr r0, _08008834
	ldr r2, _08008838
	strh r2, [r0]
	ldr r1, _0800883C
	strh r1, [r0, #2]
	ldr r1, _08008840
	strh r1, [r0, #4]
	adds r0, #8
	strh r2, [r0]
	ldr r1, _08008844
	strh r1, [r0, #2]
	movs r1, #0xa2
	lsls r1, r1, #8
	strh r1, [r0, #4]
	adds r0, r5, #0
	adds r0, #0x78
	strh r3, [r0]
	adds r0, #2
	movs r4, #1
	strb r4, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _08008848
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0800884C
	movs r0, #0
	strb r0, [r5, #0x13]
	b _0800884E
	.align 2, 0
_08008830: .4byte gScriptContext
_08008834: .4byte gOamObjects+0x140
_08008838: .4byte 0x00004460
_0800883C: .4byte 0x0000C030
_08008840: .4byte 0x0000A1E0
_08008844: .4byte 0x0000C080
_08008848: .4byte gLCDIORegisters
_0800884C:
	strb r4, [r5, #0x13]
_0800884E:
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
_08008854:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_800885C
sub_800885C: @ 0x0800885C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _0800888C
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800886E
	b _0800896A
_0800886E:
	ldr r0, _08008890
	ldrh r1, [r0, #2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08008894
	movs r0, #1
	ldrb r1, [r5, #0x13]
	eors r0, r1
	strb r0, [r5, #0x13]
	movs r0, #0x2a
	bl PlaySE
	b _0800896A
	.align 2, 0
_0800888C: .4byte gScriptContext
_08008890: .4byte gJoypad
_08008894:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08008940
	movs r0, #0x40
	bl PlaySE
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _0800892C
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _080088C0
	ldr r1, _080088BC
	adds r1, #0x4b
	movs r0, #0xf0
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	b _080088CC
	.align 2, 0
_080088BC: .4byte gSaveDataBuffer
_080088C0:
	ldr r0, _080088F0
	adds r0, #0x4b
	movs r1, #1
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_080088CC:
	bl sub_80080B8
	cmp r0, #0
	beq _080088FC
	ldr r4, _080088F4
	ldr r0, _080088F8
	strh r0, [r4, #0x1e]
	movs r0, #3
	bl sub_800549C
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	movs r0, #6
	strb r0, [r5, #5]
	b _080089FC
	.align 2, 0
_080088F0: .4byte gSaveDataBuffer
_080088F4: .4byte gScriptContext
_080088F8: .4byte 0x0000FFFF
_080088FC:
	ldrb r6, [r5, #7]
	cmp r6, #0
	bne _0800892C
	ldr r4, _08008938
	ldr r0, _0800893C
	strh r0, [r4, #0x1e]
	movs r0, #6
	bl sub_800549C
	movs r1, #0
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x78
	strh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x7a
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x7b
	strb r1, [r0]
_0800892C:
	movs r1, #0
	movs r0, #7
	strb r0, [r5, #5]
	strb r1, [r5, #6]
	b _0800896A
	.align 2, 0
_08008938: .4byte gScriptContext
_0800893C: .4byte 0x0000FFFF
_08008940:
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0800896A
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800896A
	movs r0, #0x2c
	bl PlaySE
	movs r0, #1
	strb r0, [r5, #0x13]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #4
	strb r0, [r5, #5]
	b _080089FC
_0800896A:
	ldr r2, _0800898C
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _080089A0
	ldr r1, _08008990
	strh r1, [r2]
	ldr r0, _08008994
	strh r0, [r2, #2]
	ldr r0, _08008998
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800899C
	strh r0, [r2, #2]
	movs r0, #0xa2
	lsls r0, r0, #8
	b _080089B8
	.align 2, 0
_0800898C: .4byte gOamObjects+0x140
_08008990: .4byte 0x00004460
_08008994: .4byte 0x0000C030
_08008998: .4byte 0x000091E0
_0800899C: .4byte 0x0000C080
_080089A0:
	ldr r1, _08008A04
	strh r1, [r2]
	ldr r0, _08008A08
	strh r0, [r2, #2]
	ldr r0, _08008A0C
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _08008A10
	strh r0, [r2, #2]
	movs r0, #0x92
	lsls r0, r0, #8
_080089B8:
	strh r0, [r2, #4]
	ldrb r0, [r5, #5]
	cmp r0, #3
	bne _080089FC
	adds r3, r5, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0
	beq _080089FC
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _080089EC
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_080089EC:
	ldr r2, _08008A14
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_080089FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08008A04: .4byte 0x00004460
_08008A08: .4byte 0x0000C030
_08008A0C: .4byte 0x0000A1E0
_08008A10: .4byte 0x0000C080
_08008A14: .4byte gLCDIORegisters

	THUMB_FUNC_START sub_8008A18
sub_8008A18: @ 0x08008A18
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08008A26
	b _08008C5C
_08008A26:
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	bne _08008A32
	movs r0, #1
	str r0, [r6, #4]
	b _08008C5C
_08008A32:
	ldr r2, _08008BC4
	adds r0, r2, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	strh r0, [r6, #0x28]
	adds r0, r2, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	strh r0, [r6, #0x2a]
	adds r0, r2, #0
	adds r0, #0x60
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x2e
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x64
	ldrh r0, [r0]
	strh r0, [r6, #0x30]
	adds r0, r2, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r6, #0x34]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r6, #0x36]
	adds r0, r2, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r6, #0x38]
	adds r0, r2, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r6, #0x3a]
	adds r0, r2, #0
	adds r0, #0x70
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x71
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x72
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x73
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r2, #0x74]
	str r0, [r6, #0x40]
	movs r1, #0
	adds r7, r6, #0
	adds r7, #0xb4
	adds r3, r2, #0
	adds r3, #0x78
	adds r2, r6, #0
	adds r2, #0x44
_08008AD4:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xb
	bls _08008AD4
	ldrh r0, [r6, #0x28]
	bl sub_8001830
	ldrh r0, [r6, #0x28]
	bl sub_80020B0
	ldr r4, _08008BC8
	ldr r5, _08008BCC
	str r5, [r4]
	ldr r0, _08008BD0
	str r0, [r4, #4]
	ldr r0, _08008BD4
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _08008BD8
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _08008BDC
	str r0, [r4, #4]
	ldr r0, _08008BE0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_8005AB8
	ldr r2, _08008BE4
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _08008BE8
	str r0, [r4, #4]
	ldr r0, _08008BEC
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _08008BF0
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _08008BF4
	str r0, [r4, #4]
	ldr r0, _08008BF8
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08008BFC
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _08008C00
	str r0, [r4, #4]
	ldr r0, _08008C04
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _08008C08
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _08008C0C
	str r0, [r4, #4]
	ldr r0, _08008C10
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08008C14
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x14]
	ldr r1, _08008C18
	adds r0, r5, r1
	ldrb r0, [r0]
	strb r0, [r6, #0x15]
	adds r2, #0xa0
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [r7]
	subs r1, #5
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r6, #0x10]
	subs r2, #0x9e
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x16]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r5, r1
	bl sub_8010304
	ldr r1, _08008C1C
	movs r0, #3
	ldrb r2, [r1, #0x1f]
	orrs r0, r2
	strb r0, [r1, #0x1f]
	ldr r0, _08008C20
	adds r5, r5, r0
	str r5, [r4]
	ldr r0, _08008C24
	str r0, [r4, #4]
	ldr r0, _08008C28
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08008C2C
	str r0, [r4]
	ldr r0, _08008C30
	str r0, [r4, #4]
	ldr r0, _08008C34
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r6, #8]
	str r0, [r1, #4]
	ldr r0, [r6, #4]
	ldr r1, _08008C38
	ands r0, r1
	ldr r1, _08008C3C
	cmp r0, r1
	bne _08008C48
	ldrb r0, [r6, #5]
	cmp r0, #7
	bne _08008C40
	bl sub_800D674
	b _08008C48
	.align 2, 0
_08008BC4: .4byte gSaveDataBuffer
_08008BC8: .4byte 0x040000D4
_08008BCC: .4byte gSaveDataBuffer+0x1E50
_08008BD0: .4byte gBG2MapBuffer
_08008BD4: .4byte 0x80000400
_08008BD8: .4byte 0xFFFFED00
_08008BDC: .4byte gUnknown_03003C00
_08008BE0: .4byte 0x8000017A
_08008BE4: .4byte 0xFFFFE3D8
_08008BE8: .4byte gScriptContext
_08008BEC: .4byte 0x80000020
_08008BF0: .4byte 0xFFFFE384
_08008BF4: .4byte gLCDIORegisters
_08008BF8: .4byte 0x8000002A
_08008BFC: .4byte 0xFFFFE860
_08008C00: .4byte gUnknown_03003930
_08008C04: .4byte 0x80000050
_08008C08: .4byte 0xFFFFE5E0
_08008C0C: .4byte gUnknown_030028A0
_08008C10: .4byte 0x80000140
_08008C14: .4byte 0xFFFFE1F8
_08008C18: .4byte 0xFFFFE1F9
_08008C1C: .4byte gMain
_08008C20: .4byte 0xFFFFE900
_08008C24: .4byte gOamObjects
_08008C28: .4byte 0x80000200
_08008C2C: .4byte gUnknown_081942C0
_08008C30: .4byte 0x05000300
_08008C34: .4byte 0x80000010
_08008C38: .4byte 0x00FF00FF
_08008C3C: .4byte 0x00030004
_08008C40:
	cmp r0, #8
	bne _08008C48
	bl sub_800D6C8
_08008C48:
	movs r0, #0x1e
	movs r1, #0xff
	bl PlayBGM
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
_08008C5C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8008C64
sub_8008C64: @ 0x08008C64
	adds r2, r0, #0
	adds r0, #0x76
	ldrh r1, [r0]
	cmp r1, #0
	bne _08008CB0
	adds r3, r2, #0
	adds r3, #0x8d
	ldrb r0, [r3]
	cmp r0, #1
	bne _08008C7C
	movs r1, #1
	b _08008C8A
_08008C7C:
	cmp r0, #5
	bne _08008C84
	movs r1, #2
	b _08008C8A
_08008C84:
	cmp r0, #0xb
	bne _08008C9A
	movs r1, #3
_08008C8A:
	movs r0, #0
	strb r0, [r2, #0x14]
	strb r0, [r2, #0x15]
	lsls r0, r1, #0x18
	movs r1, #0x86
	lsls r1, r1, #1
	orrs r0, r1
	b _08008CAE
_08008C9A:
	ldr r0, _08008CB4
	adds r0, #0x4a
	strh r1, [r0]
	ldr r1, _08008CB8
	movs r0, #0x80
	strh r0, [r1, #0x1e]
	ldr r0, _08008CBC
	ldrb r3, [r3]
	adds r0, r3, r0
	ldrb r0, [r0]
_08008CAE:
	str r0, [r2, #4]
_08008CB0:
	bx lr
	.align 2, 0
_08008CB4: .4byte gLCDIORegisters
_08008CB8: .4byte gScriptContext
_08008CBC: .4byte gUnknown_08014D70

	THUMB_FUNC_START sub_8008CC0
sub_8008CC0: @ 0x08008CC0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _08008CF4
	movs r0, #8
	ldrh r1, [r3]
	ands r0, r1
	cmp r0, #0
	beq _08008D54
	ldr r1, _08008CF8
	movs r2, #1
	movs r0, #1
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _08008D54
	strb r2, [r4, #0x14]
	strb r2, [r4, #0x15]
	ldr r0, _08008CFC
	strh r0, [r3, #0x1e]
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08008D00
	movs r0, #0
	bl sub_800549C
	b _08008D06
	.align 2, 0
_08008CF4: .4byte gScriptContext
_08008CF8: .4byte gJoypad
_08008CFC: .4byte 0x0000FFFF
_08008D00:
	movs r0, #1
	bl sub_800549C
_08008D06:
	ldr r1, _08008D44
	movs r2, #0
	movs r0, #9
	strh r0, [r1, #0x18]
	movs r0, #0x34
	strh r0, [r1, #0x1a]
	adds r0, r4, #0
	adds r0, #0x78
	strh r2, [r0]
	adds r0, #2
	movs r5, #1
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _08008D48
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08008D4C
	movs r0, #0
	strb r0, [r4, #0x13]
	b _08008D4E
	.align 2, 0
_08008D44: .4byte gScriptContext
_08008D48: .4byte gLCDIORegisters
_08008D4C:
	strb r5, [r4, #0x13]
_08008D4E:
	movs r0, #3
	strb r0, [r4, #5]
	b _08008D5E
_08008D54:
	ldr r1, _08008D64
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_08008D5E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008D64: .4byte gOamObjects+0x140

	THUMB_FUNC_START sub_8008D68
sub_8008D68: @ 0x08008D68
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08008DA2
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08008D90
	movs r0, #5
	b _08008D92
_08008D90:
	movs r0, #4
_08008D92:
	strb r0, [r4, #5]
	movs r0, #0
	strb r0, [r4, #6]
	ldr r1, _08008DEC
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_08008DA2:
	ldrb r0, [r4, #5]
	cmp r0, #7
	bne _08008DE4
	adds r3, r4, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0xf
	bhi _08008DE4
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _08008DD4
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_08008DD4:
	ldr r2, _08008DF0
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_08008DE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008DEC: .4byte gOamObjects+0x140
_08008DF0: .4byte gLCDIORegisters

	THUMB_FUNC_START sub_8008DF4
sub_8008DF4: @ 0x08008DF4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0x14]
	strb r0, [r4, #0x15]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8008E18
sub_8008E18: @ 0x08008E18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	ldr r0, _08008EE4
	ldr r4, _08008EE8
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08008EEC
	str r4, [r1]
	ldr r0, _08008EF0
	str r0, [r1, #4]
	ldr r0, _08008EF4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08008EF8
	str r0, [r1]
	ldr r0, _08008EFC
	str r0, [r1, #4]
	ldr r0, _08008F00
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08008F04
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08008F08
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x43
	bl sub_8001830
	movs r0, #0x43
	bl sub_8001A9C
	ldr r1, _08008F0C
	movs r0, #0xfc
	ldrb r2, [r1, #0x1f]
	ands r0, r2
	strb r0, [r1, #0x1f]
	ldr r4, _08008F10
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
_08008E7A:
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #0x7f
	bls _08008E7A
	ldr r4, _08008F10
	ldr r0, _08008F14
	adds r0, #0x4a
	movs r1, #0xd2
	lsls r1, r1, #5
	strh r1, [r0]
	movs r0, #0xa
	mov r7, sl
	strb r0, [r7, #0x16]
	movs r0, #2
	bl sub_8002244
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x86
	str r1, [sp]
	movs r7, #0x8e
	add r7, sl
	mov ip, r7
	movs r0, #1
	mov sb, r0
	ldr r1, _08008F18
	mov r8, r1
_08008EB8:
	movs r5, #0
	adds r7, r2, #1
	str r7, [sp, #4]
	lsls r0, r2, #5
	movs r1, #0x80
	lsls r1, r1, #7
	adds r6, r0, r1
	movs r3, #0
	lsls r0, r2, #6
	ldr r7, _08008F1C
	adds r1, r0, r7
_08008ECE:
	strh r6, [r4]
	mov r7, ip
	ldrb r0, [r7]
	asrs r0, r2
	mov r7, sb
	ands r0, r7
	cmp r0, #0
	beq _08008F20
	strh r1, [r4, #4]
	b _08008F26
	.align 2, 0
_08008EE4: .4byte gUnknown_081946C0
_08008EE8: .4byte gUnknown_0202CFC0
_08008EEC: .4byte 0x040000D4
_08008EF0: .4byte 0x06013400
_08008EF4: .4byte 0x80001400
_08008EF8: .4byte gUnknown_081FD92C
_08008EFC: .4byte 0x05000320
_08008F00: .4byte 0x80000020
_08008F04: .4byte gUnknown_08186540
_08008F08: .4byte 0x80000800
_08008F0C: .4byte gMain
_08008F10: .4byte gOamObjects
_08008F14: .4byte gLCDIORegisters
_08008F18: .4byte 0x000091A0
_08008F1C: .4byte 0x000091E0
_08008F20:
	mov r7, r8
	adds r0, r3, r7
	strh r0, [r4, #4]
_08008F26:
	adds r4, #8
	adds r3, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _08008ECE
	ldr r2, [sp, #4]
	cmp r2, #3
	bls _08008EB8
	movs r0, #0
	ldr r1, [sp]
	strh r0, [r1]
	movs r0, #0x31
	bl PlaySE
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	mov r2, sl
	ldrb r0, [r2, #5]
	adds r0, #1
	strb r0, [r2, #5]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8008F68
sub_8008F68: @ 0x08008F68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _08008FDC
	ands r1, r2
	strh r1, [r0]
	ldr r4, _08008FE0
	movs r1, #0
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_08008F96:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_08008F9C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _08008F9C
	adds r1, r2, #0
	cmp r1, #3
	bls _08008F96
	ldrh r5, [r5]
	cmp r5, #0x97
	bls _08008FCE
	mov r4, sb
	ldr r0, _08008FE4
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08008FCE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008FDC: .4byte 0x000001FF
_08008FE0: .4byte gOamObjects+0x130
_08008FE4: .4byte 0x0000C008

	THUMB_FUNC_START sub_8008FE8
sub_8008FE8: @ 0x08008FE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800905C
	ands r1, r2
	strh r1, [r0]
	ldr r4, _08009060
	movs r1, #1
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_08009016:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800901C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800901C
	adds r1, r2, #0
	cmp r1, #3
	bls _08009016
	ldrh r5, [r5]
	cmp r5, #0xb7
	bls _0800904E
	mov r4, sb
	ldr r0, _08009064
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_0800904E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800905C: .4byte 0x000001FF
_08009060: .4byte gOamObjects+0x140
_08009064: .4byte 0x0000C028

	THUMB_FUNC_START sub_8009068
sub_8009068: @ 0x08009068
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _080090DC
	ands r1, r2
	strh r1, [r0]
	ldr r4, _080090E0
	movs r1, #2
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_08009096:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800909C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800909C
	adds r1, r2, #0
	cmp r1, #3
	bls _08009096
	ldrh r5, [r5]
	cmp r5, #0xd7
	bls _080090CE
	mov r4, sb
	ldr r0, _080090E4
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_080090CE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080090DC: .4byte 0x000001FF
_080090E0: .4byte gOamObjects+0x150
_080090E4: .4byte 0x0000C048

	THUMB_FUNC_START sub_80090E8
sub_80090E8: @ 0x080090E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldrb r0, [r7, #5]
	cmp r0, #8
	bls _080090FC
	b _080094C6
_080090FC:
	lsls r0, r0, #2
	ldr r1, _08009108
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009108: .4byte _0800910C
_0800910C: @ jump table
	.4byte _08009130 @ case 0
	.4byte _08009138 @ case 1
	.4byte _080091C8 @ case 2
	.4byte _080091D0 @ case 3
	.4byte _080091D8 @ case 4
	.4byte _080091E0 @ case 5
	.4byte _08009260 @ case 6
	.4byte _0800935C @ case 7
	.4byte _08009488 @ case 8
_08009130:
	adds r0, r7, #0
	bl sub_8008DF4
	b _080094C6
_08009138:
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009144
	b _080094C6
_08009144:
	adds r0, r7, #0
	bl sub_8008E18
	ldr r0, _08009178
	movs r3, #0xf0
	ldrb r0, [r0, #0x17]
	ands r3, r0
	cmp r3, #0
	beq _08009184
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r4, _0800917C
	ldr r2, _08009180
	adds r1, r4, #0
	bl ReadSram
	adds r4, #0xc2
	movs r0, #1
	ldrb r7, [r7, #7]
	lsls r0, r7
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	bl sub_80080B8
	b _080094C6
	.align 2, 0
_08009178: .4byte gMain
_0800917C: .4byte gSaveDataBuffer
_08009180: .4byte 0x000029D0
_08009184:
	ldr r2, _080091B4
	ldr r0, _080091B8
	str r0, [r2]
	ldr r0, _080091BC
	str r0, [r2, #4]
	ldr r1, _080091C0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	str r3, [r0, #0x30]
	adds r2, r0, #0
	adds r2, #0xc2
	movs r1, #1
	ldrb r7, [r7, #7]
	lsls r1, r7
	ldrb r3, [r2]
	orrs r1, r3
	strb r1, [r2]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _080091C4
	bl WriteSramEx
	b _080094C6
	.align 2, 0
_080091B4: .4byte 0x040000D4
_080091B8: .4byte gUnknown_08018A3C
_080091BC: .4byte gSaveDataBuffer
_080091C0: .4byte 0x80000018
_080091C4: .4byte 0x000029D0
_080091C8:
	adds r0, r7, #0
	bl sub_8008F68
	b _080094C6
_080091D0:
	adds r0, r7, #0
	bl sub_8008FE8
	b _080094C6
_080091D8:
	adds r0, r7, #0
	bl sub_8009068
	b _080094C6
_080091E0:
	adds r0, r7, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _08009254
	ands r1, r2
	strh r1, [r0]
	ldr r6, _08009258
	movs r1, #3
	mov sl, r0
	mov r8, sl
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sb, r0
	movs r3, #0xc0
	lsls r3, r3, #8
	mov ip, r3
_08009202:
	movs r4, #0
	adds r5, r1, #1
	mov r3, ip
_08009208:
	mov r0, r8
	ldrh r1, [r0]
	add r1, sb
	ands r1, r2
	adds r0, r1, r3
	strh r0, [r6, #2]
	adds r6, #8
	adds r3, #0x40
	adds r4, #1
	cmp r4, #1
	bls _08009208
	adds r1, r5, #0
	cmp r1, #3
	bls _08009202
	mov r1, sl
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _0800922E
	b _080094C6
_0800922E:
	ldr r6, _08009258
	ldr r0, _0800925C
	strh r0, [r6, #2]
	adds r0, #0x40
	strh r0, [r6, #0xa]
	adds r1, r7, #0
	adds r1, #0x8e
	movs r0, #1
	ldrb r2, [r7, #7]
	lsls r0, r2
	ldrb r3, [r1]
	orrs r0, r3
	strb r0, [r1]
	subs r1, #0xa
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _080093A2
	.align 2, 0
_08009254: .4byte 0x000001FF
_08009258: .4byte gOamObjects+0x160
_0800925C: .4byte 0x0000C068
_08009260:
	movs r0, #0x84
	adds r0, r0, r7
	mov sl, r0
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	ldr r6, _0800931C
	ldrb r2, [r7, #7]
	lsls r0, r2, #4
	adds r6, r0, r6
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _08009328
	ldr r5, _08009320
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov sb, r3
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	ldr r3, _08009324
	strh r0, [r3, #6]
	movs r0, #0
	ldrsh r4, [r5, r0]
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r1, _08009324
	strh r0, [r1, #0xe]
	ldrh r5, [r5]
	rsbs r4, r5, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r1, _08009324
	strh r0, [r1, #0x16]
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	ldr r1, _08009324
	strh r0, [r1, #0x1e]
	movs r1, #3
	movs r3, #0x82
	lsls r3, r3, #7
	adds r2, r3, #0
_08009300:
	movs r4, #0
	adds r5, r1, #1
_08009304:
	ldrb r1, [r7, #7]
	lsls r0, r1, #5
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _08009304
	adds r1, r5, #0
	cmp r1, #3
	bls _08009300
	b _080094C6
	.align 2, 0
_0800931C: .4byte gOamObjects+0x130
_08009320: .4byte gSineTable
_08009324: .4byte gOamObjects
_08009328:
	movs r1, #3
	movs r3, #0x82
	lsls r3, r3, #7
	adds r2, r3, #0
	ldr r0, _08009358
	mov r8, r0
_08009334:
	movs r4, #0
	adds r5, r1, #1
	mov r1, r8
_0800933A:
	ldrb r3, [r7, #7]
	lsls r0, r3, #5
	adds r0, r0, r2
	strh r0, [r6]
	strh r1, [r6, #4]
	adds r6, #8
	adds r1, #0x20
	adds r4, #1
	cmp r4, #1
	bls _0800933A
	adds r1, r5, #0
	cmp r1, #3
	bls _08009334
	b _080093A2
	.align 2, 0
_08009358: .4byte 0x000091A0
_0800935C:
	ldr r6, _080093AC
	ldrb r1, [r7, #7]
	lsls r0, r1, #4
	adds r6, r0, r6
	movs r2, #0x84
	adds r2, r2, r7
	mov sl, r2
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080093B8
	movs r0, #1
	strb r0, [r7, #0x14]
	strb r0, [r7, #0x15]
	ldr r1, _080093B0
	ldr r0, _080093B4
	strh r0, [r1, #0x1e]
	movs r0, #5
	bl sub_800549C
	movs r4, #0
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
_08009392:
	ldrb r2, [r7, #7]
	lsls r0, r2, #5
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _08009392
_080093A2:
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	b _080094C6
	.align 2, 0
_080093AC: .4byte gOamObjects+0x130
_080093B0: .4byte gScriptContext
_080093B4: .4byte 0x0000FFFF
_080093B8:
	ldr r5, _08009464
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov sb, r3
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	ldr r3, _08009468
	strh r0, [r3, #6]
	movs r0, #0
	ldrsh r4, [r5, r0]
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r1, _08009468
	strh r0, [r1, #0xe]
	ldrh r5, [r5]
	rsbs r4, r5, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r1, _08009468
	strh r0, [r1, #0x16]
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	ldr r1, _08009468
	strh r0, [r1, #0x1e]
	movs r4, #0
	adds r5, r7, #0
	adds r5, #0x8e
	movs r3, #0
_0800943E:
	ldrb r2, [r7, #7]
	lsls r0, r2, #5
	movs r1, #0x82
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r0, [r6]
	ldrb r2, [r7, #7]
	ldrb r1, [r5]
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08009470
	lsls r0, r2, #6
	ldr r2, _0800946C
	adds r0, r0, r2
	adds r0, r3, r0
	b _08009474
	.align 2, 0
_08009464: .4byte gSineTable
_08009468: .4byte gOamObjects
_0800946C: .4byte 0x000091E0
_08009470:
	ldr r1, _08009484
	adds r0, r3, r1
_08009474:
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r4, #1
	cmp r4, #1
	bls _0800943E
	b _080094C6
	.align 2, 0
_08009484: .4byte 0x000091A0
_08009488:
	ldr r1, _080094D4
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080094C6
	ldr r1, _080094D8
	movs r0, #0xf
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _080094C6
	bl PauseBGM
	movs r0, #0x2b
	bl PlaySE
	ldr r0, _080094DC
	adds r1, r7, #0
	adds r1, #0x8d
	ldrb r1, [r1]
	adds r2, r0, #0
	adds r2, #0xc1
	strb r1, [r2]
	adds r1, r7, #0
	adds r1, #0x8e
	ldrb r1, [r1]
	adds r0, #0xc2
	strb r1, [r0]
	ldr r0, _080094E0
	str r0, [r7, #4]
_080094C6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080094D4: .4byte gScriptContext
_080094D8: .4byte gJoypad
_080094DC: .4byte gSaveDataBuffer
_080094E0: .4byte 0x0100000A

	THUMB_FUNC_START sub_80094E4
sub_80094E4: @ 0x080094E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #0xc
	bls _080094FA
	b _08009A52
_080094FA:
	lsls r0, r0, #2
	ldr r1, _08009504
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009504: .4byte _08009508
_08009508: @ jump table
	.4byte _0800953C @ case 0
	.4byte _08009544 @ case 1
	.4byte _080095E4 @ case 2
	.4byte _080095EC @ case 3
	.4byte _080095F4 @ case 4
	.4byte _080095FC @ case 5
	.4byte _08009688 @ case 6
	.4byte _0800981E @ case 7
	.4byte _080098D8 @ case 8
	.4byte _0800994C @ case 9
	.4byte _08009966 @ case 10
	.4byte _080099EE @ case 11
	.4byte _08009A44 @ case 12
_0800953C:
	adds r0, r5, #0
	bl sub_8008DF4
	b _08009A52
_08009544:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009550
	b _08009A52
_08009550:
	adds r0, r5, #0
	bl sub_8008E18
	movs r0, #0xf0
	ldrb r1, [r5, #0x17]
	ands r0, r1
	adds r2, r5, #0
	adds r2, #0x8e
	str r2, [sp]
	cmp r0, #0
	beq _0800956E
	ldr r0, _080095A8
	adds r0, #0xc2
	ldrb r0, [r0]
	strb r0, [r2]
_0800956E:
	ldrb r0, [r5, #7]
	strb r0, [r5, #0x13]
	ldr r4, _080095AC
	movs r7, #0
	ldr r3, _080095B0
	mov sl, r3
	ldr r0, _080095B4
	mov sb, r0
_0800957E:
	ldr r1, [sp]
	ldrb r2, [r1]
	asrs r2, r7
	movs r6, #0
	adds r3, r7, #1
	mov r8, r3
	movs r0, #1
	ands r2, r0
	str r2, [sp, #8]
	mov ip, r6
	lsls r1, r7, #6
	adds r2, r1, #0
	add r2, sl
	ldr r3, _080095B8
	adds r1, r1, r3
_0800959C:
	ldrb r0, [r5, #0x13]
	cmp r0, r7
	bne _080095BC
	strh r1, [r4, #4]
	b _080095CC
	.align 2, 0
_080095A8: .4byte gSaveDataBuffer
_080095AC: .4byte gOamObjects+0x130
_080095B0: .4byte 0x0000A1E0
_080095B4: .4byte 0x0000A1A0
_080095B8: .4byte 0x000091E0
_080095BC:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080095C6
	strh r2, [r4, #4]
	b _080095CC
_080095C6:
	mov r0, ip
	add r0, sb
	strh r0, [r4, #4]
_080095CC:
	adds r4, #8
	movs r3, #0x20
	add ip, r3
	adds r2, #0x20
	adds r1, #0x20
	adds r6, #1
	cmp r6, #1
	bls _0800959C
	mov r7, r8
	cmp r7, #3
	bls _0800957E
	b _08009A52
_080095E4:
	adds r0, r5, #0
	bl sub_8008F68
	b _08009A52
_080095EC:
	adds r0, r5, #0
	bl sub_8008FE8
	b _08009A52
_080095F4:
	adds r0, r5, #0
	bl sub_8009068
	b _08009A52
_080095FC:
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _08009674
	ands r1, r2
	strh r1, [r0]
	ldr r4, _08009678
	movs r7, #3
	mov sb, r0
	mov ip, sb
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
_08009618:
	movs r6, #0
	adds r7, #1
	mov r8, r7
	movs r1, #0xc0
	lsls r1, r1, #8
_08009622:
	mov r0, ip
	ldrh r3, [r0]
	add r3, sl
	ands r3, r2
	adds r0, r3, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r6, #1
	cmp r6, #1
	bls _08009622
	mov r7, r8
	cmp r7, #3
	bls _08009618
	mov r1, sb
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _08009648
	b _08009A52
_08009648:
	ldr r4, _08009678
	ldr r0, _0800967C
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	ldr r1, _08009680
	ldr r0, _08009684
	strh r0, [r1, #0x1e]
	movs r0, #2
	bl sub_800549C
	movs r0, #0xc0
	movs r1, #0x14
	bl sub_8000738
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	b _08009A52
	.align 2, 0
_08009674: .4byte 0x000001FF
_08009678: .4byte gOamObjects+0x160
_0800967C: .4byte 0x0000C068
_08009680: .4byte gScriptContext
_08009684: .4byte 0x0000FFFF
_08009688:
	ldr r1, _080096D0
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	adds r2, r5, #0
	adds r2, #0x8e
	str r2, [sp]
	cmp r0, #0
	beq _0800977A
	ldr r2, _080096D4
	ldrh r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080096D8
	ldrb r6, [r5, #0x13]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_080096B0:
	ldrb r0, [r5, #0x13]
	subs r0, #1
	ands r0, r4
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0x13]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _080096C8
	cmp r6, r0
	bne _08009754
_080096C8:
	adds r7, #1
	cmp r7, #3
	bls _080096B0
	b _0800977A
	.align 2, 0
_080096D0: .4byte gScriptContext
_080096D4: .4byte gJoypad
_080096D8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800970E
	ldrb r6, [r5, #0x13]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_080096EE:
	ldrb r0, [r5, #0x13]
	adds r0, #1
	ands r0, r4
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0x13]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _08009706
	cmp r6, r0
	bne _08009754
_08009706:
	adds r7, #1
	cmp r7, #3
	bls _080096EE
	b _0800977A
_0800970E:
	ldrh r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800975C
	movs r0, #0x2b
	bl PlaySE
	adds r0, r5, #0
	adds r0, #0x86
	movs r2, #0
	strh r4, [r0]
	strb r2, [r5, #0x14]
	strb r2, [r5, #0x15]
	ldr r1, _0800974C
	adds r1, #0x4a
	ldr r0, _08009750
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r0, #0xfd
	ldrb r1, [r5, #0x16]
	ands r0, r1
	strb r0, [r5, #0x16]
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	strb r2, [r5, #7]
	strb r2, [r5, #6]
	b _0800977A
	.align 2, 0
_0800974C: .4byte gLCDIORegisters
_08009750: .4byte 0x0000FDFF
_08009754:
	movs r0, #0x2a
	bl PlaySE
	b _0800977A
_0800975C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800977A
	movs r0, #0x2c
	bl PlaySE
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #0xc
	strb r0, [r5, #5]
_0800977A:
	ldr r4, _080097B0
	movs r7, #0
_0800977E:
	ldrb r2, [r5, #0x13]
	cmp r7, r2
	bne _080097D0
	movs r6, #0
	adds r3, r7, #1
	mov r8, r3
	ldr r0, [sp]
	mov ip, r0
	movs r1, #1
	mov sl, r1
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _080097B4
	adds r1, r0, r3
	ldr r0, _080097B8
	mov sb, r0
_0800979E:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _080097BC
	strh r1, [r4, #4]
	b _080097C2
	.align 2, 0
_080097B0: .4byte gOamObjects+0x130
_080097B4: .4byte 0x000091E0
_080097B8: .4byte 0x000091A0
_080097BC:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_080097C2:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r6, #1
	cmp r6, #1
	bls _0800979E
	b _08009816
_080097D0:
	movs r6, #0
	adds r0, r7, #1
	mov r8, r0
	ldr r1, [sp]
	mov ip, r1
	movs r2, #1
	mov sl, r2
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _080097FC
	adds r1, r0, r3
	ldr r0, _08009800
	mov sb, r0
_080097EA:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _08009804
	strh r1, [r4, #4]
	b _0800980A
	.align 2, 0
_080097FC: .4byte 0x0000A1E0
_08009800: .4byte 0x0000A1A0
_08009804:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_0800980A:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r6, #1
	cmp r6, #1
	bls _080097EA
_08009816:
	mov r7, r8
	cmp r7, #3
	bls _0800977E
	b _08009A52
_0800981E:
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x86
	adds r1, r1, r5
	mov sb, r1
	cmp r0, #0x28
	bls _08009844
	movs r0, #0
	movs r1, #0
	mov r2, sb
	strh r1, [r2]
	ldrb r1, [r5, #5]
	adds r1, #1
	strb r1, [r5, #5]
	strb r0, [r5, #7]
	strb r0, [r5, #6]
_08009844:
	ldr r4, _0800987C
	movs r7, #0
	ldr r3, _08009880
	mov ip, r3
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sl, r0
_08009852:
	movs r6, #0
	adds r1, r7, #1
	mov r8, r1
_08009858:
	ldrb r2, [r5, #0x13]
	cmp r7, r2
	bne _08009894
	ldrh r1, [r4, #2]
	mov r3, ip
	ands r3, r1
	mov r0, sl
	ands r0, r1
	strh r0, [r4, #2]
	cmp r6, #0
	bne _08009884
	cmp r3, #0x37
	bhi _08009874
	adds r3, #4
_08009874:
	cmp r3, #0x38
	bls _08009890
	b _0800988E
	.align 2, 0
_0800987C: .4byte gOamObjects+0x130
_08009880: .4byte 0x000001FF
_08009884:
	cmp r3, #0x77
	bhi _0800988A
	adds r3, #4
_0800988A:
	cmp r3, #0x78
	bls _08009890
_0800988E:
	subs r3, #4
_08009890:
	ldrh r1, [r4, #2]
	b _080098B6
_08009894:
	ldrh r0, [r4, #2]
	mov r3, ip
	ands r3, r0
	mov r1, sl
	ands r1, r0
	strh r1, [r4, #2]
	mov r2, sb
	ldrh r2, [r2]
	adds r3, r2, r3
	mov r0, ip
	ands r3, r0
	cmp r3, #0xf0
	bls _080098B6
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	b _080098BA
_080098B6:
	adds r0, r1, r3
	strh r0, [r4, #2]
_080098BA:
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	bls _08009858
	mov r7, r8
	cmp r7, #3
	bls _08009852
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #7
	bls _080098D2
	b _08009A52
_080098D2:
	adds r0, #1
	strh r0, [r1]
	b _08009A52
_080098D8:
	ldr r4, _08009924
	movs r7, #0
	movs r2, #0x86
	adds r2, r2, r5
	mov sb, r2
	movs r3, #0xff
	lsls r3, r3, #8
	mov sl, r3
	movs r1, #0
_080098EA:
	movs r6, #0
	adds r0, r7, #1
	mov r8, r0
_080098F0:
	ldrb r2, [r5, #0x13]
	cmp r7, r2
	bne _08009928
	ldrb r3, [r4]
	mov r0, sl
	ldrh r2, [r4]
	ands r0, r2
	strh r0, [r4]
	cmp r3, #0x37
	bhi _0800990A
	adds r3, #4
	cmp r3, #0x37
	bhi _08009914
_0800990A:
	cmp r3, #0x38
	bls _0800991E
	subs r3, #4
	cmp r3, #0x38
	bhi _0800991E
_08009914:
	movs r0, #9
	strb r0, [r5, #5]
	strb r1, [r5, #7]
	strb r1, [r5, #6]
	movs r3, #0x38
_0800991E:
	ldrh r2, [r4]
	adds r0, r2, r3
	b _0800992C
	.align 2, 0
_08009924: .4byte gOamObjects+0x130
_08009928:
	movs r0, #0x80
	lsls r0, r0, #2
_0800992C:
	strh r0, [r4]
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	bls _080098F0
	mov r7, r8
	cmp r7, #3
	bls _080098EA
	mov r3, sb
	ldrh r0, [r3]
	cmp r0, #7
	bls _08009946
	b _08009A52
_08009946:
	adds r0, #1
	strh r0, [r3]
	b _08009A52
_0800994C:
	ldrb r0, [r5, #6]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _08009A52
	movs r0, #0xa
	strb r0, [r5, #5]
	strb r1, [r5, #7]
	strb r1, [r5, #6]
	b _08009A52
_08009966:
	ldrb r0, [r5, #6]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x32
	bls _0800998C
	movs r0, #2
	movs r1, #4
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	strb r4, [r5, #7]
	b _0800999A
_0800998C:
	ldrb r0, [r5, #7]
	cmp r0, #5
	bls _08009994
	strb r4, [r5, #7]
_08009994:
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
_0800999A:
	ldr r4, _080099C8
	movs r7, #0
	ldr r1, _080099CC
	mov sb, r1
	ldr r2, _080099D0
	mov sl, r2
	movs r2, #0x80
	lsls r2, r2, #2
_080099AA:
	movs r6, #0
	adds r3, r7, #1
	mov r8, r3
	lsls r0, r7, #6
	mov r3, sl
	adds r1, r0, r3
	add r0, sb
_080099B8:
	ldrb r3, [r5, #0x13]
	cmp r7, r3
	bne _080099D8
	ldrb r3, [r5, #7]
	cmp r3, #2
	bls _080099D4
	strh r0, [r4, #4]
	b _080099DA
	.align 2, 0
_080099C8: .4byte gOamObjects+0x130
_080099CC: .4byte 0x0000A1E0
_080099D0: .4byte 0x000091E0
_080099D4:
	strh r1, [r4, #4]
	b _080099DA
_080099D8:
	strh r2, [r4]
_080099DA:
	adds r4, #8
	adds r1, #0x20
	adds r0, #0x20
	adds r6, #1
	cmp r6, #1
	bls _080099B8
	mov r7, r8
	cmp r7, #3
	bls _080099AA
	b _08009A52
_080099EE:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08009A52
	ldrb r2, [r5, #0x13]
	cmp r2, #1
	beq _08009A12
	cmp r2, #1
	bgt _08009A08
	cmp r2, #0
	beq _08009A12
	b _08009A2C
_08009A08:
	cmp r2, #2
	beq _08009A1C
	cmp r2, #3
	beq _08009A24
	b _08009A2C
_08009A12:
	adds r0, r5, #0
	adds r0, #0x8d
	strb r2, [r0]
	adds r1, r0, #0
	b _08009A34
_08009A1C:
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #5
	b _08009A32
_08009A24:
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #0xb
	b _08009A32
_08009A2C:
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #0
_08009A32:
	strb r0, [r1]
_08009A34:
	ldr r0, _08009A40
	ldrb r1, [r1]
	adds r0, r1, r0
	ldrb r0, [r0]
	b _08009A50
	.align 2, 0
_08009A40: .4byte gUnknown_08014D70
_08009A44:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08009A52
	movs r0, #1
_08009A50:
	str r0, [r5, #4]
_08009A52:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8009A64
sub_8009A64: @ 0x08009A64
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
	bl sub_80007D8
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
_08009BA0: .4byte gLCDIORegisters
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
	bl sub_800549C
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
_08009C04: .4byte gUnknown_03002840
_08009C08: .4byte gScriptContext
_08009C0C: .4byte 0x0000FFFF
_08009C10: .4byte gLCDIORegisters
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
	bl sub_80007D8
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
	bl sub_80007D8
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
	bl sub_8000930
	bl sub_800F804
	bl sub_800F3C4
	bl sub_8005408
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
	bl sub_8002234
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
	bl sub_8005408
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
	bl sub_8010304
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
_08009E94: .4byte gUnknown_08185D20
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
_08009EC4: .4byte gUnknown_030028A0
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
	bl sub_8005AB8
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
	bl sub_8000738
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
	bl PlayBGM
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
_0800A144: .4byte gUnknown_03003C00
_0800A148: .4byte 0x8000017A
_0800A14C: .4byte 0xFFFFF6D8
_0800A150: .4byte gScriptContext
_0800A154: .4byte 0x80000020
_0800A158: .4byte 0xFFFFF684
_0800A15C: .4byte gLCDIORegisters
_0800A160: .4byte 0x8000002A
_0800A164: .4byte 0xFFFFF718
_0800A168: .4byte gUnknown_03002840
_0800A16C: .4byte 0x8000002C
_0800A170: .4byte gUnknown_03003A50
_0800A174: .4byte 0x8000000C
_0800A178: .4byte gUnknown_03003AB0
_0800A17C: .4byte 0x80000004
_0800A180: .4byte gUnknown_03004000
_0800A184: .4byte 0x80000008
_0800A188: .4byte gUnknown_03003AC0
_0800A18C: .4byte 0x800000A0
_0800A190: .4byte 0xFFFFFB60
_0800A194: .4byte gUnknown_03003930
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
	bl sub_80007D8
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
_0800A344: .4byte gLCDIORegisters

	THUMB_FUNC_START sub_800A348
sub_800A348: @ 0x0800A348
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

	THUMB_FUNC_START sub_800A3D4
sub_800A3D4: @ 0x0800A3D4
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
	bl sub_8000930
	bl sub_800F804
	bl sub_8005408
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
	bl SetFlag
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
	bl sub_800549C
	adds r1, r6, #0
	adds r1, #0x8f
	movs r0, #5
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xff
	strb r0, [r1]
	bl sub_800A348
	movs r0, #0x30
	movs r1, #0xf
	bl sub_8000738
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
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
_0800A540: .4byte gLCDIORegisters
_0800A544: .4byte 0x040000D4
_0800A548: .4byte gUnknown_03003AB0
_0800A54C: .4byte 0x81000004
_0800A550: .4byte gUnknown_03003A50
_0800A554: .4byte 0x8100000C
_0800A558: .4byte 0x00003D01
_0800A55C: .4byte 0x00003FC7
_0800A560: .4byte gUnknown_08185D20
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
_0800A59C: .4byte gUnknown_03002840
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
_0800A624: .4byte gUnknown_03003AB0
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
_0800A710: .4byte gSaveDataBuffer+0xB
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
_0800A72C: .4byte gBG2MapBuffer+0xB

	THUMB_FUNC_START sub_800A730
sub_800A730: @ 0x0800A730
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #6]
	cmp r0, #4
	bls _0800A73C
	b _0800A870
_0800A73C:
	lsls r0, r0, #2
	ldr r1, _0800A748
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A748: .4byte _0800A74C
_0800A74C: @ jump table
	.4byte _0800A760 @ case 0
	.4byte _0800A780 @ case 1
	.4byte _0800A7D4 @ case 2
	.4byte _0800A7E0 @ case 3
	.4byte _0800A810 @ case 4
_0800A760:
	movs r0, #0x13
	bl sub_8010204
	movs r0, #0x14
	bl sub_8010204
	movs r0, #0x53
	bl PlaySE
	ldr r0, _0800A77C
	movs r1, #0
	strb r1, [r0, #6]
	b _0800A808
	.align 2, 0
_0800A77C: .4byte gUnknown_03003AB0
_0800A780:
	movs r0, #0x13
	bl sub_800F8BC
	adds r4, r0, #0
	movs r0, #0x14
	bl sub_800F8BC
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
	ble _0800A870
	movs r0, #3
	movs r1, #1
	movs r2, #8
	movs r3, #0x1f
	bl sub_80007D8
	adds r0, r4, #0
	bl sub_8010960
	adds r0, r5, #0
	bl sub_8010960
	movs r0, #0x11
	bl sub_8010204
	b _0800A808
_0800A7D4:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800A870
	b _0800A808
_0800A7E0:
	movs r0, #0x11
	bl sub_800F8BC
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	blt _0800A870
	adds r0, r1, #0
	bl sub_8010960
	movs r0, #0x13
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_8010244
	movs r0, #0x14
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_8010244
_0800A808:
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	b _0800A870
_0800A810:
	movs r0, #0x13
	bl sub_800F8BC
	adds r4, r0, #0
	movs r0, #0x14
	bl sub_800F8BC
	adds r5, r0, #0
	ldr r2, _0800A878
	ldrh r3, [r4, #0x10]
	ldrb r7, [r2, #6]
	adds r0, r3, r7
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r3, [r5, #0x10]
	ldrb r7, [r2, #6]
	subs r0, r3, r7
	strh r0, [r5, #0x10]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _0800A854
	movs r0, #0xc
	strb r0, [r2, #6]
_0800A854:
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	ble _0800A870
	adds r0, r4, #0
	bl sub_8010960
	adds r0, r5, #0
	bl sub_8010960
	movs r0, #1
	strb r0, [r6, #5]
_0800A870:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A878: .4byte gUnknown_03003AB0

	THUMB_FUNC_START sub_800A87C
sub_800A87C: @ 0x0800A87C
	push {lr}
	ldr r2, _0800A890
	ldrb r3, [r0, #5]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800A890: .4byte gUnknown_0811DF54

	THUMB_FUNC_START sub_800A894
sub_800A894: @ 0x0800A894
	ldr r2, _0800A8C0
	ldr r1, _0800A8C4
	str r1, [r2]
	ldr r1, _0800A8C8
	str r1, [r2, #4]
	ldr r1, _0800A8CC
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800A8D0
	str r1, [r2]
	ldr r1, _0800A8D4
	str r1, [r2, #4]
	ldr r1, _0800A8D8
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r2, _0800A8DC
	movs r1, #0
	strb r1, [r2, #1]
	movs r1, #3
	strb r1, [r0, #5]
	bx lr
	.align 2, 0
_0800A8C0: .4byte 0x040000D4
_0800A8C4: .4byte gUnknown_0818F8C0
_0800A8C8: .4byte 0x06013000
_0800A8CC: .4byte 0x80000400
_0800A8D0: .4byte gUnknown_08194280
_0800A8D4: .4byte 0x050002A0
_0800A8D8: .4byte 0x80000010
_0800A8DC: .4byte gUnknown_03003AB0

	THUMB_FUNC_START sub_800A8E0
sub_800A8E0: @ 0x0800A8E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800A8EE
	b _0800A9F6
_0800A8EE:
	ldr r1, _0800A954
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _0800A978
	adds r6, r5, #0
	adds r6, #0xb4
	ldr r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800A978
	ldr r1, _0800A958
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800A978
	bl PauseBGM
	ldr r1, _0800A95C
	ldr r0, _0800A960
	str r0, [r1]
	ldr r2, _0800A964
	str r2, [r1, #4]
	ldr r0, _0800A968
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800A96C
	str r4, [r1]
	ldr r0, _0800A970
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800A974
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
	b _0800A9AC
	.align 2, 0
_0800A954: .4byte gJoypad
_0800A958: .4byte gScriptContext
_0800A95C: .4byte 0x040000D4
_0800A960: .4byte gOamObjects
_0800A964: .4byte gSaveDataBuffer+0x750
_0800A968: .4byte 0x80000200
_0800A96C: .4byte gMain
_0800A970: .4byte 0xFFFFF8E4
_0800A974: .4byte 0x800000D0
_0800A978:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800A9AE
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800A9AE
	ldr r1, _0800A9E0
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800A9AE
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800A9E4
	ldr r0, [r0]
	str r0, [r5, #8]
	movs r0, #7
_0800A9AC:
	str r0, [r5, #4]
_0800A9AE:
	ldr r1, _0800A9E8
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x64
	bls _0800A9C2
	movs r0, #0
	strb r0, [r1, #1]
_0800A9C2:
	ldr r2, _0800A9EC
	ldrb r1, [r1, #1]
	cmp r1, #0x50
	bhi _0800A9F0
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r2, #2]
	movs r0, #0xb3
	lsls r0, r0, #7
	strh r0, [r2, #4]
	b _0800A9F6
	.align 2, 0
_0800A9E0: .4byte gScriptContext
_0800A9E4: .4byte gMain+0x4
_0800A9E8: .4byte gUnknown_03003AB0
_0800A9EC: .4byte gOamObjects+0x188
_0800A9F0:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_0800A9F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800A9FC
sub_800A9FC: @ 0x0800A9FC
	ldr r2, _0800AA0C
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r2]
	subs r1, #0xfd
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0800AA0C: .4byte gOamObjects+0x188

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
	bl sub_8010204
	movs r0, #0x16
	bl sub_8010204
	movs r0, #0x53
	bl PlaySE
	ldrb r0, [r6, #6]
	adds r0, #1
	b _0800AB38
_0800AA58:
	movs r0, #0x15
	bl sub_800F8BC
	adds r4, r0, #0
	movs r0, #0x16
	bl sub_800F8BC
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
	bl sub_80007D8
	adds r0, r4, #0
	bl sub_8010960
	adds r0, r5, #0
	bl sub_8010960
	movs r0, #0x12
	bl sub_8010204
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
	bl sub_800F8BC
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	blt _0800AB3A
	adds r0, r1, #0
	bl sub_8010960
	movs r0, #0x15
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_8010244
	movs r0, #0x16
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_8010244
	ldrb r0, [r6, #6]
	adds r0, #1
	b _0800AB38
_0800AAEE:
	movs r0, #0x15
	bl sub_800F8BC
	adds r4, r0, #0
	movs r0, #0x16
	bl sub_800F8BC
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
	bl sub_8010960
	adds r0, r5, #0
	bl sub_8010960
	movs r0, #1
	strb r0, [r6, #5]
	movs r0, #0
_0800AB38:
	strb r0, [r6, #6]
_0800AB3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800AB40
sub_800AB40: @ 0x0800AB40
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
_0800AC14: .4byte gUnknown_03002840
_0800AC18: .4byte gUnknown_03003AB0

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
	bl sub_800549C
	bl sub_8005470
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
	bl sub_8010204
	movs r0, #0x47
	bl PlaySE
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl sub_80007D8
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
_0800AD54: .4byte gUnknown_03003AB0
_0800AD58: .4byte gLCDIORegisters
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
_0800AE08: .4byte gUnknown_03003AB0
_0800AE0C: .4byte gUnknown_03002840
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
_0800AE98: .4byte gUnknown_03003AB0
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
_0800AED0: .4byte gUnknown_03004000
_0800AED4: .4byte gScriptContext
_0800AED8: .4byte gMain
_0800AEDC: .4byte gLCDIORegisters
_0800AEE0:
	movs r0, #1
	bl sub_800244C
_0800AEE6:
	ldr r0, _0800AF20
	ldrh r0, [r0, #0x2c]
	bl sub_800549C
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
_0800AF24: .4byte gUnknown_03003AB0
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
	bl sub_80007D8
	movs r0, #0x40
	strb r0, [r4, #1]
	b _0800AFB2
	.align 2, 0
_0800AF64: .4byte gUnknown_03003AB0
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
_0800AF98: .4byte gUnknown_03003AB0
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
_0800AFBC: .4byte gUnknown_03004000
_0800AFC0: .4byte gUnknown_03003AB0
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
_0800AFFC: .4byte gUnknown_03003AB0
_0800B000: .4byte gScriptContext
_0800B004: .4byte gMain
_0800B008: .4byte gLCDIORegisters
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
_0800B034: .4byte gUnknown_03003AB0

	THUMB_FUNC_START sub_800B038
sub_800B038: @ 0x0800B038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _0800B05C
	mov sl, r0
	ldrb r0, [r7, #5]
	cmp r0, #8
	bls _0800B050
	b _0800B50A
_0800B050:
	lsls r0, r0, #2
	ldr r1, _0800B060
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B05C: .4byte gOamObjects+0x188
_0800B060: .4byte _0800B064
_0800B064: @ jump table
	.4byte _0800B088 @ case 0
	.4byte _0800B164 @ case 1
	.4byte _0800B1FC @ case 2
	.4byte _0800B2E4 @ case 3
	.4byte _0800B300 @ case 4
	.4byte _0800B3C8 @ case 5
	.4byte _0800B404 @ case 6
	.4byte _0800B460 @ case 7
	.4byte _0800B504 @ case 8
_0800B088:
	ldr r0, _0800B0FC
	adds r0, #0x84
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0800B108
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B100
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B104
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #0x56
	bl PlaySE
	b _0800B320
	.align 2, 0
_0800B0FC: .4byte gMain
_0800B100: .4byte gSineTable
_0800B104: .4byte gOamObjects
_0800B108:
	adds r0, r7, #0
	adds r0, #0x84
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B15C
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B160
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	b _0800B50A
	.align 2, 0
_0800B15C: .4byte gSineTable
_0800B160: .4byte gOamObjects
_0800B164:
	ldrb r0, [r7, #6]
	adds r1, r0, #1
	strb r1, [r7, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bhi _0800B174
	b _0800B50A
_0800B174:
	ldr r0, _0800B1E4
	adds r0, #0x84
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0]
	movs r2, #8
	add sl, r2
	ldr r0, _0800B1E8
	mov r1, sl
	strh r0, [r1]
	ldr r0, _0800B1EC
	strh r0, [r1, #2]
	ldr r0, _0800B1F0
	strh r0, [r1, #4]
	adds r0, r7, #0
	adds r0, #0x84
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B1F4
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B1F8
	strh r0, [r5, #0x26]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	b _0800B4FC
	.align 2, 0
_0800B1E4: .4byte gMain
_0800B1E8: .4byte 0x000003EF
_0800B1EC: .4byte 0x0000C280
_0800B1F0: .4byte 0x000051E0
_0800B1F4: .4byte gSineTable
_0800B1F8: .4byte gOamObjects
_0800B1FC:
	ldr r0, _0800B27C
	adds r0, #0x84
	mov sl, r0
	ldrh r0, [r0]
	subs r0, #0x10
	mov r2, sl
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	cmp r0, sb
	bgt _0800B288
	mov r0, sb
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B280
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r8, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B284
	strh r0, [r5, #0x26]
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #0x56
	bl PlaySE
	mov r1, sb
	mov r0, sl
	strh r1, [r0]
	b _0800B320
	.align 2, 0
_0800B27C: .4byte gMain
_0800B280: .4byte gSineTable
_0800B284: .4byte gOamObjects
_0800B288:
	adds r0, r7, #0
	adds r0, #0x84
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B2DC
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B2E0
	strh r0, [r5, #0x26]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	b _0800B50A
	.align 2, 0
_0800B2DC: .4byte gSineTable
_0800B2E0: .4byte gOamObjects
_0800B2E4:
	ldrb r0, [r7, #6]
	adds r1, r0, #1
	strb r1, [r7, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bhi _0800B2F4
	b _0800B50A
_0800B2F4:
	ldrb r0, [r7, #5]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #5]
	strb r1, [r7, #6]
	b _0800B50A
_0800B300:
	ldrb r0, [r7, #6]
	adds r1, r0, #1
	strb r1, [r7, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bls _0800B32C
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, sl
	strh r0, [r2]
	strh r0, [r2, #8]
	ldrb r0, [r7, #7]
	cmp r0, #0
	bne _0800B320
	b _0800B504
_0800B320:
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	movs r0, #0
	strb r0, [r7, #6]
	b _0800B50A
_0800B32C:
	adds r0, r7, #0
	adds r0, #0x84
	ldrh r1, [r0]
	adds r1, #8
	strh r1, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800B3C0
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r8, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800B3C4
	strh r0, [r5, #6]
	movs r0, #0
	ldrsh r2, [r6, r0]
	mov sb, r2
	mov r0, sb
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r6, r6, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x26]
	mov r0, sb
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	mov r1, sl
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	b _0800B50A
	.align 2, 0
_0800B3C0: .4byte gSineTable
_0800B3C4: .4byte gOamObjects
_0800B3C8:
	ldr r1, _0800B3E8
	ldr r0, _0800B3EC
	str r0, [r1]
	ldr r0, _0800B3F0
	str r0, [r1, #4]
	ldr r0, _0800B3F4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800B3F8
	str r0, [r1]
	ldr r0, _0800B3FC
	str r0, [r1, #4]
	ldr r0, _0800B400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800B4FC
	.align 2, 0
_0800B3E8: .4byte 0x040000D4
_0800B3EC: .4byte gUnknown_081940A0
_0800B3F0: .4byte 0x06011F80
_0800B3F4: .4byte 0x80000010
_0800B3F8: .4byte gUnknown_08194640
_0800B3FC: .4byte 0x050002A0
_0800B400: .4byte 0x80000040
_0800B404:
	ldr r2, _0800B458
	mov sl, r2
	movs r6, #0
_0800B40A:
	bl Random
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r4, r6, #5
	adds r5, r5, r4
	movs r0, #0x7f
	ands r5, r0
	mov r0, sl
	strh r5, [r0]
	bl Random
	movs r5, #0x1f
	ands r5, r0
	adds r5, r5, r4
	movs r0, #0xff
	ands r5, r0
	mov r1, sl
	strh r5, [r1, #2]
	bl Random
	movs r1, #3
	ands r1, r0
	adds r5, r1, #5
	lsls r5, r5, #0xc
	ldr r2, _0800B45C
	adds r0, r2, #0
	adds r0, r5, r0
	mov r1, sl
	strh r0, [r1, #4]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800B40A
	movs r0, #0x66
	bl PlaySE
	b _0800B4FC
	.align 2, 0
_0800B458: .4byte gOamObjects+0x1C8
_0800B45C: .4byte 0x000004FC
_0800B460:
	ldr r0, _0800B4B8
	mov sl, r0
	ldrb r0, [r7, #6]
	adds r1, r0, #1
	strb r1, [r7, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bhi _0800B4E8
	movs r6, #0
	movs r4, #3
_0800B476:
	mov r1, sl
	ldrh r5, [r1]
	bl Random
	adds r1, r4, #0
	ands r1, r0
	adds r5, r5, r1
	cmp r5, #0xa3
	bls _0800B48A
	movs r5, #0
_0800B48A:
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	mov r1, sl
	ldrh r1, [r1]
	ands r0, r1
	adds r0, r0, r5
	mov r2, sl
	strh r0, [r2]
	ldrh r5, [r2, #2]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800B4BC
	bl Random
	adds r1, r4, #0
	ands r1, r0
	adds r5, r5, r1
	b _0800B4C6
	.align 2, 0
_0800B4B8: .4byte gOamObjects+0x1C8
_0800B4BC:
	bl Random
	adds r1, r4, #0
	ands r1, r0
	subs r5, r5, r1
_0800B4C6:
	movs r0, #0xff
	ands r5, r0
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	mov r2, sl
	ldrh r2, [r2, #2]
	ands r0, r2
	adds r0, r0, r5
	mov r1, sl
	strh r0, [r1, #2]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800B476
	b _0800B50A
_0800B4E8:
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800B4EE:
	mov r1, sl
	strh r0, [r1]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800B4EE
_0800B4FC:
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	b _0800B50A
_0800B504:
	ldr r1, _0800B518
	ldr r0, [r7, #8]
	str r0, [r1]
_0800B50A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B518: .4byte gMain+0x4

	THUMB_FUNC_START sub_800B51C
sub_800B51C: @ 0x0800B51C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r0, _0800B554
	ldrh r1, [r0, #0x2c]
	adds r5, r0, #0
	cmp r1, #0
	beq _0800B530
	cmp r2, #0
	bne _0800B55C
_0800B530:
	ldr r2, _0800B558
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	subs r2, #0xa8
	movs r1, #0
_0800B548:
	strh r0, [r2]
	adds r2, #8
	adds r1, #1
	cmp r1, #4
	bls _0800B548
	b _0800B618
	.align 2, 0
_0800B554: .4byte gScriptContext
_0800B558: .4byte gOamObjects+0x1A8
_0800B55C:
	ldrb r0, [r3]
	cmp r0, #1
	bne _0800B588
	ldrb r0, [r3, #2]
	cmp r0, #0xe0
	bls _0800B56C
	subs r0, #2
	b _0800B56E
_0800B56C:
	movs r0, #0xe0
_0800B56E:
	strb r0, [r3, #2]
	ldrb r0, [r3, #3]
	cmp r0, #0xe0
	bls _0800B57A
	subs r0, #2
	b _0800B57C
_0800B57A:
	movs r0, #0xe0
_0800B57C:
	strb r0, [r3, #3]
	ldrh r0, [r3, #4]
	cmp r0, #0xef
	bhi _0800B5AA
	adds r0, #8
	b _0800B5A8
_0800B588:
	cmp r0, #0
	bne _0800B5AA
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0800B596
	adds r0, #2
	strb r0, [r3, #2]
_0800B596:
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _0800B5A0
	adds r0, #2
	strb r0, [r3, #3]
_0800B5A0:
	ldrh r0, [r3, #4]
	cmp r0, #0xa0
	bls _0800B5AA
	subs r0, #4
_0800B5A8:
	strh r0, [r3, #4]
_0800B5AA:
	ldr r2, _0800B5C4
	ldrh r5, [r5, #0x2c]
	cmp r5, #0x7f
	bhi _0800B5C8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	strh r0, [r2, #8]
	b _0800B610
	.align 2, 0
_0800B5C4: .4byte gOamObjects+0x1A8
_0800B5C8:
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r0, #0
	ldrb r0, [r3, #2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r2, #2]
	movs r0, #0xab
	lsls r0, r0, #7
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r0, [r3, #2]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800B620
	strh r0, [r2, #2]
	ldr r0, _0800B624
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r0, [r3, #3]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800B628
	strh r0, [r2, #2]
	ldr r0, _0800B62C
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r0, [r3, #3]
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _0800B630
	strh r0, [r2, #2]
	ldr r0, _0800B634
	strh r0, [r2, #4]
_0800B610:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_800B638
_0800B618:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B620: .4byte 0x00008020
_0800B624: .4byte 0x00005588
_0800B628: .4byte 0x000080B0
_0800B62C: .4byte 0x00005590
_0800B630: .4byte 0x000080D0
_0800B634: .4byte 0x00005598

	THUMB_FUNC_START sub_800B638
sub_800B638: @ 0x0800B638
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	ldr r5, _0800B6E8
	movs r0, #0
	mov sb, r0
	movs r1, #0x8a
	adds r1, r1, r6
	mov sl, r1
	mov r8, r0
_0800B656:
	mov r2, sl
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _0800B754
	movs r0, #5
	ldrb r1, [r2]
	subs r0, r0, r1
	cmp sb, r0
	bne _0800B754
	movs r0, #0x80
	lsls r0, r0, #2
	bl fix_inverse
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r4, #0
	bl fix_mul
	movs r7, #0
	ldr r2, _0800B6EC
	strh r0, [r2, #6]
	movs r0, #0
	adds r1, r4, #0
	bl fix_mul
	ldr r1, _0800B6EC
	strh r0, [r1, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl fix_mul
	ldr r2, _0800B6EC
	strh r0, [r2, #0x16]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r4, #0
	bl fix_mul
	ldr r1, _0800B6EC
	strh r0, [r1, #0x1e]
	adds r1, r6, #0
	adds r1, #0x89
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r6, #0
	adds r2, #0x88
	cmp r0, #2
	bls _0800B706
	strb r7, [r1]
	ldrb r0, [r2]
	cmp r0, #8
	bhi _0800B700
	lsls r0, r0, #7
	ldr r1, _0800B6F0
	adds r0, r0, r1
	ldr r1, _0800B6F4
	str r0, [r1]
	ldr r0, _0800B6F8
	str r0, [r1, #4]
	ldr r0, _0800B6FC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _0800B706
	.align 2, 0
_0800B6E8: .4byte gOamObjects+0x118
_0800B6EC: .4byte gOamObjects
_0800B6F0: .4byte gUnknown_0818C040
_0800B6F4: .4byte 0x040000D4
_0800B6F8: .4byte 0x06013700
_0800B6FC: .4byte 0x80000040
_0800B700:
	movs r0, #0xff
	mov r1, sl
	strb r0, [r1]
_0800B706:
	ldrb r0, [r2]
	cmp r0, #4
	bls _0800B712
	movs r0, #0xc2
	lsls r0, r0, #2
	b _0800B714
_0800B712:
	movs r0, #0x10
_0800B714:
	strh r0, [r5]
	ldrb r0, [r2]
	cmp r0, #8
	bhi _0800B744
	cmp r0, #4
	bls _0800B734
	ldr r1, [sp]
	ldrh r0, [r1, #4]
	add r0, r8
	ldr r2, _0800B730
	adds r0, r0, r2
	strh r0, [r5, #2]
	b _0800B74A
	.align 2, 0
_0800B730: .4byte 0x00003FF8
_0800B734:
	movs r0, #0x80
	lsls r0, r0, #7
	add r0, r8
	ldr r1, [sp]
	ldrh r1, [r1, #4]
	adds r0, r1, r0
	strh r0, [r5, #2]
	b _0800B74A
_0800B744:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
_0800B74A:
	ldr r0, _0800B750
	strh r0, [r5, #4]
	b _0800B786
	.align 2, 0
_0800B750: .4byte 0x000039B8
_0800B754:
	adds r0, r6, #0
	adds r0, #0x8f
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #5
	subs r0, r0, r1
	cmp sb, r0
	blo _0800B780
	movs r0, #0x10
	strh r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	add r0, r8
	ldr r2, [sp]
	ldrh r2, [r2, #4]
	adds r0, r2, r0
	strh r0, [r5, #2]
	ldr r0, _0800B77C
	strh r0, [r5, #4]
	b _0800B786
	.align 2, 0
_0800B77C: .4byte 0x000039BC
_0800B780:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
_0800B786:
	adds r5, #8
	movs r0, #0x10
	add r8, r0
	movs r1, #1
	add sb, r1
	mov r2, sb
	cmp r2, #4
	bhi _0800B798
	b _0800B656
_0800B798:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800B7A8
sub_800B7A8: @ 0x0800B7A8
	adds r2, r0, #0
	strb r1, [r2, #7]
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _0800B7B8
	movs r0, #0xf3
	ands r0, r1
	strb r0, [r2, #7]
_0800B7B8:
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800B7BC
sub_800B7BC: @ 0x0800B7BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #5
	beq _0800B7DA
	ldr r0, _0800B7FC
	adds r1, r5, #0
	adds r1, #0x8d
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
_0800B7DA:
	ldr r1, _0800B800
	ldrb r2, [r5, #5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, _0800B804
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r0, r4, #0
	bl sub_800D3C8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B7FC: .4byte gUnknown_0811DD64
_0800B800: .4byte gUnknown_0811DF7C
_0800B804: .4byte gUnknown_03003A50

	THUMB_FUNC_START sub_800B808
sub_800B808: @ 0x0800B808
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	ldr r7, _0800BA34
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0800BA38
	str r0, [r4]
	ldr r0, _0800BA3C
	str r0, [r4, #4]
	ldr r0, _0800BA40
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sp
	strh r5, [r0]
	str r0, [r4]
	ldr r0, _0800BA44
	str r0, [r4, #4]
	ldr r0, _0800BA48
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl HideAllSprites
	bl sub_8000930
	bl sub_800F804
	bl sub_8005408
	adds r1, r7, #0
	adds r1, #0x4a
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r7]
	ldr r0, _0800BA4C
	strh r0, [r7, #2]
	adds r0, #0xff
	strh r0, [r7, #4]
	ldr r0, _0800BA50
	strh r0, [r7, #6]
	ldr r0, _0800BA54
	str r0, [r4]
	ldr r0, _0800BA58
	str r0, [r4, #4]
	ldr r0, _0800BA5C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA60
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r1, _0800BA64
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA68
	str r0, [r4]
	ldr r0, _0800BA6C
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA70
	str r0, [r4]
	ldr r0, _0800BA74
	str r0, [r4, #4]
	ldr r3, _0800BA78
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA7C
	str r0, [r4]
	ldr r0, _0800BA80
	str r0, [r4, #4]
	ldr r2, _0800BA84
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA88
	str r0, [r4]
	ldr r0, _0800BA8C
	str r0, [r4, #4]
	ldr r1, _0800BA90
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA94
	str r0, [r4]
	ldr r0, _0800BA98
	str r0, [r4, #4]
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA9C
	str r0, [r4]
	ldr r0, _0800BAA0
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BAA4
	str r0, [r4]
	ldr r0, _0800BAA8
	str r0, [r4, #4]
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BAAC
	movs r4, #0
	add r0, sp, #4
	mov sl, r0
	ldr r2, _0800BAB0
	mov ip, r2
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r5, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_0800B8FA:
	mov r0, ip
	strh r0, [r1]
	adds r0, r3, r5
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r4, #1
	cmp r4, #3
	bls _0800B8FA
	mov r0, r8
	movs r1, #0xf
	bl sub_800B7A8
	movs r1, #0
	mov sb, r1
	movs r0, #0xe0
	mov r2, r8
	strb r0, [r2, #0xd]
	mov r0, sb
	strb r0, [r2, #0xe]
	movs r0, #8
	strb r0, [r2, #0xf]
	mov r1, sb
	strb r1, [r2, #0xa]
	strb r1, [r2, #0xb]
	ldr r1, _0800BAB4
	adds r5, r6, #0
	adds r5, #0x8d
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r1, r0, #3
	adds r0, r6, #0
	adds r0, #0xd8
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8001830
	adds r0, r4, #0
	bl sub_8001A9C
	movs r0, #0xff
	bl sub_8001A9C
	ldr r0, _0800BAB8
	strh r0, [r7, #0xe]
	adds r4, r7, #0
	adds r4, #0x4a
	ldr r0, _0800BABC
	mov r8, r0
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldr r1, _0800BAC0
	adds r0, r6, #0
	bl sub_800D77C
	mov r2, sb
	str r2, [sp, #4]
	ldr r1, _0800BA38
	mov r0, sl
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x94
	str r0, [r1, #4]
	ldr r0, _0800BAC4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r1, [r5]
	cmp r1, #1
	bls _0800B9A6
	movs r0, #0
	movs r1, #0x41
	movs r2, #1
	bl SetFlag
_0800B9A6:
	adds r0, r6, #0
	adds r0, #0xb4
	mov r2, sb
	str r2, [r0]
	movs r0, #0xf
	strb r0, [r6, #0x16]
	movs r0, #1
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
	ldr r1, _0800BAC8
	ldr r0, _0800BACC
	strh r0, [r1, #0x1e]
	movs r0, #0x80
	bl sub_800549C
	movs r0, #1
	bl sub_800244C
	ldr r1, _0800BAD0
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #0
	bl sub_800D530
	bl sub_800A348
	movs r0, #0x30
	movs r1, #0xf
	bl sub_8000738
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	adds r1, r7, #0
	adds r1, #0x4e
	movs r0, #0x10
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x8f
	movs r0, #5
	strb r0, [r1]
	ldrb r5, [r5]
	cmp r5, #0xb
	bne _0800BA1C
	mov r0, r8
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	mov r2, sb
	strh r2, [r7, #0xe]
_0800BA1C:
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BA34: .4byte gLCDIORegisters
_0800BA38: .4byte 0x040000D4
_0800BA3C: .4byte gUnknown_03003AB0
_0800BA40: .4byte 0x81000004
_0800BA44: .4byte gUnknown_03003A50
_0800BA48: .4byte 0x8100000C
_0800BA4C: .4byte 0x00003D01
_0800BA50: .4byte 0x00003FC7
_0800BA54: .4byte gUnknown_08185D20
_0800BA58: .4byte 0x06003800
_0800BA5C: .4byte 0x80000400
_0800BA60: .4byte gUnknown_08186540
_0800BA64: .4byte 0x80000800
_0800BA68: .4byte gUnknown_0818E4C0
_0800BA6C: .4byte 0x06012000
_0800BA70: .4byte gUnknown_08194200
_0800BA74: .4byte 0x050002A0
_0800BA78: .4byte 0x80000020
_0800BA7C: .4byte gUnknown_0818F6C0
_0800BA80: .4byte 0x06013000
_0800BA84: .4byte 0x80000100
_0800BA88: .4byte gUnknown_08194260
_0800BA8C: .4byte 0x050002E0
_0800BA90: .4byte 0x80000010
_0800BA94: .4byte gUnknown_08190AC0
_0800BA98: .4byte 0x06013200
_0800BA9C: .4byte gUnknown_081942C0
_0800BAA0: .4byte 0x05000300
_0800BAA4: .4byte gUnknown_081FD92C
_0800BAA8: .4byte 0x05000320
_0800BAAC: .4byte gOamObjects+0x188
_0800BAB0: .4byte 0x000040E0
_0800BAB4: .4byte gUnknown_0811DCDC
_0800BAB8: .4byte 0x0000FFAF
_0800BABC: .4byte 0x0000FDFF
_0800BAC0: .4byte gUnknown_03002840
_0800BAC4: .4byte 0x85000008
_0800BAC8: .4byte gScriptContext
_0800BACC: .4byte 0x0000FFFF
_0800BAD0: .4byte gUnknown_0811DD20

	THUMB_FUNC_START sub_800BAD4
sub_800BAD4: @ 0x0800BAD4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800BB40
	ldr r1, _0800BB4C
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r7, r1, #0
	ldr r3, _0800BB50
	cmp r0, #0
	beq _0800BB0C
	adds r2, r5, #0
	adds r2, #0xb4
	ldr r1, [r2]
	movs r0, #0x10
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	bne _0800BB0C
	movs r0, #5
	ldrh r1, [r3]
	ands r0, r1
	cmp r0, #0
	bne _0800BB78
_0800BB0C:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r7, [r7, #2]
	ands r0, r7
	cmp r0, #0
	beq _0800BB30
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800BB30
	movs r0, #5
	ldrh r2, [r3]
	ands r0, r2
	cmp r0, #0
	bne _0800BBF6
_0800BB30:
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800BB40
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	beq _0800BB54
_0800BB40:
	adds r0, r5, #0
	movs r1, #0
	bl sub_800D530
	b _0800BD6E
	.align 2, 0
_0800BB4C: .4byte gJoypad
_0800BB50: .4byte gScriptContext
_0800BB54:
	adds r0, r5, #0
	movs r1, #1
	bl sub_800D530
	ldr r1, _0800BBB8
	movs r0, #8
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800BBD8
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	bne _0800BBD8
_0800BB78:
	bl PauseBGM
	ldr r1, _0800BBBC
	ldr r0, _0800BBC0
	str r0, [r1]
	ldr r2, _0800BBC4
	str r2, [r1, #4]
	ldr r0, _0800BBC8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800BBCC
	str r4, [r1]
	ldr r0, _0800BBD0
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800BBD4
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
	str r0, [r5, #4]
	b _0800BD6E
	.align 2, 0
_0800BBB8: .4byte gJoypad
_0800BBBC: .4byte 0x040000D4
_0800BBC0: .4byte gOamObjects
_0800BBC4: .4byte gSaveDataBuffer+0x750
_0800BBC8: .4byte 0x80000200
_0800BBCC: .4byte gMain
_0800BBD0: .4byte 0xFFFFF8E4
_0800BBD4: .4byte 0x800000D0
_0800BBD8:
	ldr r6, _0800BC1C
	ldrh r1, [r6, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BC24
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800BBF6
	b _0800BD5A
_0800BBF6:
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800BC20
	ldr r0, [r0]
	str r0, [r5, #8]
	movs r0, #7
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #0
	bl sub_800D530
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	b _0800BD6E
	.align 2, 0
_0800BC1C: .4byte gJoypad
_0800BC20: .4byte gMain+0x4
_0800BC24:
	movs r0, #0x30
	ldrh r2, [r6, #8]
	ands r0, r2
	cmp r0, #0
	beq _0800BC6A
	ldrb r1, [r4, #0xa]
	strb r1, [r4, #0xb]
	movs r0, #0x20
	ldrh r6, [r6, #8]
	ands r0, r6
	cmp r0, #0
	beq _0800BC40
	subs r0, r1, #1
	b _0800BC42
_0800BC40:
	adds r0, r1, #1
_0800BC42:
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0800BC52
	movs r0, #1
	ldrb r1, [r4, #0xa]
	ands r0, r1
	b _0800BC58
_0800BC52:
	movs r0, #3
	ldrb r2, [r4, #0xa]
	ands r0, r2
_0800BC58:
	strb r0, [r4, #0xa]
	movs r0, #0x2a
	bl PlaySE
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	b _0800BD5A
_0800BC6A:
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800BCF0
	movs r0, #0x2b
	bl PlaySE
	movs r6, #0
	movs r0, #0x78
	strh r0, [r4]
	movs r0, #0x32
	strh r0, [r4, #2]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800B7A8
	adds r0, r7, #0
	ldrb r1, [r4, #0xa]
	lsls r0, r1
	ldrb r2, [r4, #7]
	subs r0, r2, r0
	strb r0, [r4, #7]
	movs r0, #0xf0
	strb r0, [r4, #0xd]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r6, [r4, #0xf]
	adds r0, r1, #0
	strb r0, [r4, #0xb]
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r5, #0
	movs r1, #0
	bl sub_800D530
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0800BCD4
	movs r0, #0xc
	movs r1, #1
	bl sub_80106A4
	strb r6, [r4, #0x17]
	strb r6, [r4, #0x16]
	ldr r1, _0800BCE0
	ldr r0, _0800BCE4
	str r0, [r1]
	ldr r0, _0800BCE8
	str r0, [r1, #4]
	ldr r0, _0800BCEC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800BCD4:
	ldrb r0, [r4, #0xa]
	adds r0, #6
	strb r0, [r5, #5]
	strb r6, [r5, #7]
	strb r6, [r5, #6]
	b _0800BD6E
	.align 2, 0
_0800BCE0: .4byte 0x040000D4
_0800BCE4: .4byte gUnknown_081942C0
_0800BCE8: .4byte 0x05000300
_0800BCEC: .4byte 0x80000010
_0800BCF0:
	ldrh r0, [r5, #0x28]
	bl sub_8002224
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0800BD5A
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r6, [r6, #2]
	ands r0, r6
	cmp r0, #0
	beq _0800BD5A
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0800BD1A
	cmp r0, #0x78
	beq _0800BD1A
	cmp r0, #0xf0
	bne _0800BD5A
_0800BD1A:
	movs r0, #0x2b
	bl PlaySE
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0800BD36
	adds r1, #0xe
	movs r0, #6
	b _0800BD44
_0800BD36:
	cmp r0, #0x78
	beq _0800BD3E
	cmp r0, #0xf0
	bne _0800BD46
_0800BD3E:
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0xfa
_0800BD44:
	strb r0, [r1]
_0800BD46:
	movs r0, #0
	movs r1, #3
	strb r1, [r5, #5]
	strb r0, [r5, #7]
	strb r0, [r5, #6]
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800B7A8
_0800BD5A:
	ldrb r0, [r4, #0xe]
	cmp r0, #7
	bhi _0800BD64
	adds r0, #1
	strb r0, [r4, #0xe]
_0800BD64:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0800BD6E
	subs r0, #1
	strb r0, [r4, #0xf]
_0800BD6E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800BD74
sub_800BD74: @ 0x0800BD74
	adds r2, r0, #0
	ldr r1, _0800BDA8
	ldr r0, _0800BDAC
	str r0, [r1]
	ldr r0, _0800BDB0
	str r0, [r1, #4]
	ldr r0, _0800BDB4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800BDB8
	str r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800BDC0
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800BDF2
	ldr r0, _0800BDBC
	b _0800BDF0
	.align 2, 0
_0800BDA8: .4byte 0x040000D4
_0800BDAC: .4byte gMain
_0800BDB0: .4byte gSaveDataBuffer+0x34
_0800BDB4: .4byte 0x800000D0
_0800BDB8: .4byte 0x0100000A
_0800BDBC: .4byte 0x0100000B
_0800BDC0:
	cmp r0, #5
	bne _0800BDDC
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800BDF2
	ldr r0, _0800BDD8
	b _0800BDF0
	.align 2, 0
_0800BDD8: .4byte gSaveDataBuffer+0xB
_0800BDDC:
	cmp r0, #0xb
	bne _0800BDF2
	adds r1, r2, #0
	adds r1, #0x8e
	movs r0, #8
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800BDF2
	ldr r0, _0800BDF4
_0800BDF0:
	str r0, [r2, #4]
_0800BDF2:
	bx lr
	.align 2, 0
_0800BDF4: .4byte gBG2MapBuffer+0xB

	THUMB_FUNC_START sub_800BDF8
sub_800BDF8: @ 0x0800BDF8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	bl sub_800D530
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0800BE44
	ldrh r0, [r4, #0x28]
	bl sub_8002224
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800BE26
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800BE32
	cmp r0, #0xf0
	beq _0800BE32
	b _0800BE50
_0800BE26:
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800BE32
	cmp r0, #0x78
	bne _0800BE50
_0800BE32:
	movs r0, #0
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	b _0800BE50
_0800BE44:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0800BE50
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r4, #4]
_0800BE50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_800BE58
sub_800BE58: @ 0x0800BE58
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_800D530
	ldr r0, _0800BE78
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800BE72
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r4, #4]
_0800BE72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BE78: .4byte gScriptContext

	THUMB_FUNC_START sub_800BE7C
sub_800BE7C: @ 0x0800BE7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0800BEBC
	adds r0, #0x38
	ldrb r7, [r0]
	cmp r7, #1
	bne _0800BF70
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800BF70
	adds r0, r6, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0xd8
	adds r4, r6, r0
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0800BEC0
	bl sub_800F3C4
	ldrb r0, [r4]
	bl sub_8001830
	strb r7, [r6, #6]
	b _0800BF70
	.align 2, 0
_0800BEBC: .4byte gScriptContext
_0800BEC0:
	ldrb r0, [r4]
	bl sub_8001A9C
	ldr r1, _0800BF7C
	movs r2, #0
	movs r0, #0x8d
	adds r0, r0, r6
	mov r8, r0
	adds r4, r1, #0
	adds r4, #0x58
	movs r3, #0x80
	lsls r3, r3, #2
_0800BED8:
	movs r0, #0
_0800BEDA:
	strh r3, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #1
	bls _0800BEDA
	adds r2, #1
	cmp r2, #3
	bls _0800BED8
	adds r1, r4, #0
	movs r2, #0
	ldr r3, _0800BF80
	mov ip, r3
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r7, r0, #0
	movs r3, #0xa2
	lsls r3, r3, #7
_0800BEFE:
	mov r0, ip
	strh r0, [r1]
	adds r0, r4, r7
	strh r0, [r1, #2]
	strh r3, [r1, #4]
	adds r1, #8
	adds r4, #0x3c
	adds r3, #0x20
	adds r2, #1
	cmp r2, #3
	bls _0800BEFE
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
	movs r0, #1
	strb r0, [r5, #0xc]
	bl sub_800F84C
	ldr r0, _0800BF84
	bl sub_8010960
	ldr r0, _0800BF88
	strb r4, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
	ldr r1, _0800BF8C
	mov r2, r8
	ldrb r2, [r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #0
	bl sub_800D530
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #4]
_0800BF70:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF7C: .4byte gOamObjects+0x130
_0800BF80: .4byte 0x000040E0
_0800BF84: .4byte gUnknown_03000800+0x40
_0800BF88: .4byte gUnknown_03003A50
_0800BF8C: .4byte gUnknown_0811DD20

	THUMB_FUNC_START sub_800BF90
sub_800BF90: @ 0x0800BF90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0800C038
	mov r8, r0
	ldr r0, _0800C03C
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0800BFAE
	b _0800C324
_0800BFAE:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800BFBA
	b _0800C324
_0800BFBA:
	ldr r1, _0800C040
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	mov ip, r1
	cmp r0, #0
	beq _0800BFE4
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	bne _0800BFE4
	ldr r1, _0800C044
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800C08A
_0800BFE4:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800C00C
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800C00C
	ldr r1, _0800C044
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800C100
_0800C00C:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0800C014
	b _0800C324
_0800C014:
	ldr r0, _0800C044
	adds r0, #0x38
	ldrb r7, [r0]
	cmp r7, #1
	beq _0800C020
	b _0800C324
_0800C020:
	ldrh r0, [r6, #0x14]
	cmp r0, #0
	beq _0800C028
	b _0800C324
_0800C028:
	ldrb r1, [r6, #6]
	cmp r1, #1
	beq _0800C06C
	cmp r1, #1
	bgt _0800C048
	cmp r1, #0
	beq _0800C050
	b _0800C324
	.align 2, 0
_0800C038: .4byte gOamObjects+0x2C0
_0800C03C: .4byte gUnknown_03000800
_0800C040: .4byte gJoypad
_0800C044: .4byte gScriptContext
_0800C048:
	cmp r1, #2
	bne _0800C04E
	b _0800C2E4
_0800C04E:
	b _0800C324
_0800C050:
	ldrb r0, [r5, #0xe]
	cmp r0, #0xf
	bhi _0800C05A
	adds r0, #1
	strb r0, [r5, #0xe]
_0800C05A:
	strb r1, [r5, #0xf]
	ldrb r5, [r5, #0xe]
	cmp r5, #0xf
	bhi _0800C064
	b _0800C324
_0800C064:
	ldrb r0, [r6, #6]
	adds r0, #1
	strb r0, [r6, #6]
	b _0800C324
_0800C06C:
	movs r3, #3
	movs r0, #8
	mov r2, ip
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800C0E4
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	bne _0800C0E4
_0800C08A:
	bl PauseBGM
	ldr r1, _0800C0C8
	ldr r0, _0800C0CC
	str r0, [r1]
	ldr r2, _0800C0D0
	str r2, [r1, #4]
	ldr r0, _0800C0D4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800C0D8
	str r4, [r1]
	ldr r0, _0800C0DC
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _0800C0E0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r7]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7]
	ldr r0, [r4, #4]
	str r0, [r6, #8]
	movs r0, #0xa
	str r0, [r6, #4]
	b _0800C324
	.align 2, 0
_0800C0C8: .4byte 0x040000D4
_0800C0CC: .4byte gOamObjects
_0800C0D0: .4byte gSaveDataBuffer+0x750
_0800C0D4: .4byte 0x80000200
_0800C0D8: .4byte gMain
_0800C0DC: .4byte 0xFFFFF8E4
_0800C0E0: .4byte 0x800000D0
_0800C0E4:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800C120
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800C120
_0800C100:
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800C11C
	ldr r0, [r0]
	str r0, [r6, #8]
	movs r0, #7
	str r0, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, r8
	strh r0, [r2]
	b _0800C324
	.align 2, 0
_0800C11C: .4byte gMain+0x4
_0800C120:
	mov r0, ip
	ldrh r1, [r0, #2]
	movs r7, #1
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0800C164
	movs r0, #0x2b
	bl PlaySE
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r1, r8
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_800D5B0
	adds r3, r0, #0
	bl sub_800549C
	movs r0, #1
	bl sub_800244C
	strb r7, [r5, #6]
	strb r4, [r5, #0x14]
	strb r4, [r5, #0x15]
	strb r7, [r5, #7]
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0xf0
	strb r0, [r5, #0xd]
	strb r4, [r5, #0xe]
	b _0800C322
_0800C164:
	movs r7, #2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C188
	movs r0, #0x2c
	bl PlaySE
	strb r7, [r6, #6]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_800B7A8
	strb r7, [r5, #0xc]
	movs r0, #0xe0
	strb r0, [r5, #0xd]
	movs r0, #0x10
	b _0800C320
_0800C188:
	movs r0, #0x20
	mov r2, ip
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _0800C1B6
	ldrh r1, [r5]
	subs r0, r1, r3
	strh r0, [r5]
	ldrh r2, [r5, #2]
	cmp r2, #0xf
	bhi _0800C1AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _0800C1AC
	movs r0, #0x3c
	strh r0, [r5]
_0800C1AC:
	ldrh r0, [r5]
	cmp r0, #0xe0
	bls _0800C1B6
	movs r0, #0
	strh r0, [r5]
_0800C1B6:
	movs r0, #0x10
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800C1E4
	ldrh r2, [r5]
	adds r0, r2, r3
	strh r0, [r5]
	ldrh r1, [r5, #2]
	cmp r1, #0xf
	bhi _0800C1DA
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _0800C1DA
	movs r0, #0x3c
	strh r0, [r5]
_0800C1DA:
	ldrh r2, [r5]
	cmp r2, #0xe0
	bls _0800C1E4
	movs r0, #0xe0
	strh r0, [r5]
_0800C1E4:
	movs r0, #0x40
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800C212
	ldrh r2, [r5, #2]
	subs r0, r2, r3
	strh r0, [r5, #2]
	ldrh r1, [r5]
	cmp r1, #0x3b
	bhi _0800C208
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0800C208
	movs r0, #0x10
	strh r0, [r5, #2]
_0800C208:
	ldrh r2, [r5, #2]
	cmp r2, #0x90
	bls _0800C212
	movs r0, #0
	strh r0, [r5, #2]
_0800C212:
	movs r0, #0x80
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800C240
	ldrh r2, [r5, #2]
	adds r0, r2, r3
	strh r0, [r5, #2]
	ldrh r1, [r5]
	cmp r1, #0x3b
	bhi _0800C236
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0800C236
	movs r0, #0x10
	strh r0, [r5, #2]
_0800C236:
	ldrh r2, [r5, #2]
	cmp r2, #0x90
	bls _0800C240
	movs r0, #0x90
	strh r0, [r5, #2]
_0800C240:
	adds r0, r5, #0
	bl sub_800D5B0
	adds r3, r0, #0
	subs r0, #0x18
	cmp r0, #1
	bhi _0800C256
	movs r0, #0
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	b _0800C272
_0800C256:
	ldrb r0, [r5, #0x15]
	adds r0, #1
	strb r0, [r5, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0800C272
	movs r0, #0
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x14]
	adds r0, #4
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x14]
_0800C272:
	ldrh r0, [r5, #2]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r5]
	cmp r0, #0x77
	bhi _0800C288
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r0, r2
	strh r0, [r1, #2]
	b _0800C292
_0800C288:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2, #2]
_0800C292:
	ldrb r1, [r5, #0x14]
	ldr r2, _0800C2D0
	adds r0, r1, r2
	mov r1, r8
	strh r0, [r1, #4]
	ldrb r0, [r5, #0x17]
	adds r0, #1
	strb r0, [r5, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800C324
	movs r0, #0
	strb r0, [r5, #0x17]
	ldrb r0, [r5, #0x16]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x16]
	ldr r1, _0800C2D4
	lsls r0, r0, #5
	ldr r2, _0800C2D8
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _0800C2DC
	str r0, [r1, #4]
	ldr r0, _0800C2E0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800C324
	.align 2, 0
_0800C2D0: .4byte 0x00008190
_0800C2D4: .4byte 0x040000D4
_0800C2D8: .4byte gUnknown_081942C0
_0800C2DC: .4byte 0x05000300
_0800C2E0: .4byte 0x80000010
_0800C2E4:
	ldrb r0, [r5, #0xe]
	cmp r0, #8
	bls _0800C2EE
	subs r0, #1
	strb r0, [r5, #0xe]
_0800C2EE:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0800C324
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r1, r8
	strh r0, [r1]
	ldr r0, _0800C330
	movs r1, #1
	bl sub_800FA74
	movs r0, #1
	movs r1, #1
	bl sub_80106A4
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #4]
	ldrb r2, [r5, #0xa]
	lsls r7, r2
	ldrb r1, [r5, #7]
	adds r0, r1, r7
	strb r0, [r5, #7]
	movs r0, #8
_0800C320:
	strb r0, [r5, #0xe]
_0800C322:
	strb r4, [r5, #0xf]
_0800C324:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C330: .4byte gUnknown_03000800+0x40

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
	bl sub_80007D8
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
_0800C9D8: .4byte gUnknown_030028A0
_0800C9DC: .4byte gOamObjects+0x130
_0800C9E0: .4byte gUnknown_03000800+0x4E
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
_0800CBC0: .4byte gUnknown_030028A0
_0800CBC4: .4byte gUnknown_03000800+0x4E
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
	bl sub_800549C
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
	bl SetFlag
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
_0800D088: .4byte gUnknown_030028A0
_0800D08C: .4byte gUnknown_03000800+0x4E
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
_0800D0E8: .4byte gUnknown_03003A50
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
_0800D1F0: .4byte gUnknown_030028A0
_0800D1F4: .4byte gOamObjects+0x130
_0800D1F8: .4byte gUnknown_03000800+0x4E
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
_0800D310: .4byte gSaveDataBuffer+0x7
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
	bl sub_8002224
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
_0800D630: .4byte gUnknown_03003AC0
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
_0800D64C: .4byte gUnknown_03003AC0
_0800D650:
	cmp r1, #0xfe
	beq _0800D660
	adds r1, r4, #4
	mov r0, sp
	bl sub_800FEC8
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

	THUMB_FUNC_START sub_800D674
sub_800D674: @ 0x0800D674
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800D6B4
	adds r1, r0, #0
	adds r1, #0x8c
	ldrb r1, [r1]
	lsls r1, r1, #3
	adds r1, r0, r1
	adds r1, #0xdc
	movs r4, #0
	ldr r6, _0800D6B8
	ldr r2, _0800D6BC
	ldr r5, _0800D6C0
_0800D68C:
	lsls r0, r4, #0xb
	ldr r7, _0800D6C4
	adds r3, r0, r7
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800D6A6
	ldrb r7, [r1]
	lsls r0, r7, #0xb
	adds r0, r0, r6
	str r0, [r2]
	str r3, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
_0800D6A6:
	adds r1, #1
	adds r4, #1
	cmp r4, #3
	bls _0800D68C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D6B4: .4byte gMain
_0800D6B8: .4byte gUnknown_081FD96C
_0800D6BC: .4byte 0x040000D4
_0800D6C0: .4byte 0x80000400
_0800D6C4: .4byte 0x06013400

	THUMB_FUNC_START sub_800D6C8
sub_800D6C8: @ 0x0800D6C8
	push {r4, r5, r6, r7, lr}
	ldr r2, _0800D748
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0800D6F6
	ldr r0, _0800D74C
	ldrb r3, [r0]
	ldr r4, _0800D750
_0800D6DA:
	cmp r3, r1
	bne _0800D6EC
	ldrb r0, [r4]
	ldrb r1, [r2, #1]
	cmp r0, r1
	bne _0800D6EC
	ldrb r7, [r2, #3]
	cmp r7, #1
	beq _0800D6F6
_0800D6EC:
	adds r2, #0x14
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800D6DA
_0800D6F6:
	adds r1, r2, #4
	movs r4, #0
	ldr r6, _0800D754
	ldr r2, _0800D758
	ldr r5, _0800D75C
_0800D700:
	lsls r0, r4, #0xb
	ldr r7, _0800D760
	adds r3, r0, r7
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800D71A
	ldrb r7, [r1]
	lsls r0, r7, #0xb
	adds r0, r0, r6
	str r0, [r2]
	str r3, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
_0800D71A:
	adds r1, #1
	adds r4, #1
	cmp r4, #3
	bls _0800D700
	ldr r1, _0800D758
	ldr r0, _0800D764
	str r0, [r1]
	ldr r0, _0800D768
	str r0, [r1, #4]
	ldr r0, _0800D76C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800D770
	str r0, [r1]
	ldr r0, _0800D774
	str r0, [r1, #4]
	ldr r0, _0800D778
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D748: .4byte gUnknown_030028A0
_0800D74C: .4byte gMain+0x8C
_0800D750: .4byte gUnknown_03000800+0x4E
_0800D754: .4byte gUnknown_0820816C
_0800D758: .4byte 0x040000D4
_0800D75C: .4byte 0x80000400
_0800D760: .4byte 0x06013400
_0800D764: .4byte gUnknown_08190FC0
_0800D768: .4byte 0x06015400
_0800D76C: .4byte 0x80000100
_0800D770: .4byte gUnknown_081944E0
_0800D774: .4byte 0x05000360
_0800D778: .4byte 0x80000010

	THUMB_FUNC_START sub_800D77C
sub_800D77C: @ 0x0800D77C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov ip, r1
	movs r3, #0
	ldr r0, _0800D820
	mov r8, r0
	mov r2, ip
	adds r2, #0x38
	movs r4, #0xff
	adds r7, r2, #0
_0800D794:
	adds r1, r2, r3
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r3, #1
	cmp r3, #0x1f
	bls _0800D794
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #0x11]
	movs r3, #0
	mov r6, ip
	adds r6, #0x18
	adds r5, #0x8d
	adds r2, r6, #0
	movs r4, #0xff
_0800D7B4:
	adds r1, r2, r3
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r3, #1
	cmp r3, #0x1f
	bls _0800D7B4
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #0x10]
	ldrb r5, [r5]
	lsls r0, r5, #2
	add r0, r8
	ldr r2, [r0]
	movs r3, #0
	ldrb r1, [r2]
	cmp r1, #0xfe
	beq _0800D7F0
	adds r4, r7, #0
_0800D7DA:
	adds r0, r4, r3
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	adds r2, #1
	adds r3, #1
	ldrb r1, [r2]
	cmp r1, #0xfe
	bne _0800D7DA
_0800D7F0:
	adds r2, #1
	movs r3, #0
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0800D816
	adds r4, r6, #0
_0800D7FE:
	adds r0, r4, r3
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	adds r2, #1
	adds r3, #1
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800D7FE
_0800D816:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D820: .4byte gUnknown_0811DC10

	THUMB_FUNC_START sub_800D824
sub_800D824: @ 0x0800D824
	push {lr}
	ldr r1, _0800D84C
	ldr r3, _0800D850
	adds r2, r1, r3
	movs r3, #9
	strh r3, [r2]
	ldr r2, _0800D854
	adds r1, r1, r2
	strh r3, [r1]
	ldr r1, _0800D858
	ldrb r3, [r0, #5]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r1, _0800D85C
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_0800D84C: .4byte gBG1MapBuffer
_0800D850: .4byte 0x000004DC
_0800D854: .4byte 0x000004DE
_0800D858: .4byte gUnknown_0811DFA4
_0800D85C: .4byte gUnknown_03002840

	THUMB_FUNC_START sub_800D860
sub_800D860: @ 0x0800D860
	push {lr}
	ldr r1, _0800D878
	ldrb r3, [r0, #5]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r1, _0800D87C
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_0800D878: .4byte gUnknown_0811DFC4
_0800D87C: .4byte gUnknown_03002840

	THUMB_FUNC_START sub_800D880
sub_800D880: @ 0x0800D880
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0800D934
	movs r0, #0
	ldr r3, _0800D938
	ldr r6, _0800D93C
	movs r2, #0
_0800D890:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, r3
	bls _0800D890
	ldrb r0, [r5, #8]
	adds r3, r4, #0
	adds r3, #0x18
	cmp r0, #6
	beq _0800D8C2
	cmp r0, #4
	bne _0800D8C2
	ldrb r0, [r5, #9]
	cmp r0, #5
	bhi _0800D8C2
	ldr r2, _0800D940
	movs r0, #0
	movs r1, #0xaa
	lsls r1, r1, #7
_0800D8B6:
	strh r1, [r2, #4]
	adds r2, #8
	adds r1, #0x20
	adds r0, #1
	cmp r0, #3
	bls _0800D8B6
_0800D8C2:
	ldrb r1, [r5, #8]
	cmp r1, #5
	bne _0800D8D0
	ldr r2, _0800D940
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_0800D8D0:
	ldrb r2, [r5, #7]
	cmp r2, #2
	bne _0800D8DC
	ldr r2, _0800D944
	ldr r0, _0800D948
	strh r0, [r2, #4]
_0800D8DC:
	adds r2, r6, #0
	adds r2, #0x4a
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r7, #0
	movs r1, #0
	ldrh r7, [r2]
	orrs r0, r7
	strh r0, [r2]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r6, #4]
	movs r0, #4
	ldrb r2, [r5, #0x16]
	orrs r0, r2
	strb r0, [r5, #0x16]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	strb r0, [r4, #0xe]
	str r3, [r4, #0x14]
	bl sub_800E914
	ldr r0, [r4, #0x14]
	ldrb r7, [r4, #0xd]
	adds r0, r7, r0
	ldrb r0, [r0]
	bl sub_800EA80
	ldrb r0, [r5, #7]
	cmp r0, #1
	bne _0800D926
	movs r0, #2
	movs r1, #0xc
	bl sub_80024C8
_0800D926:
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #3
	strb r0, [r5, #5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D934: .4byte gBG2MapBuffer
_0800D938: .4byte 0x000003FF
_0800D93C: .4byte gLCDIORegisters
_0800D940: .4byte gOamObjects+0x188
_0800D944: .4byte gOamObjects+0x1A0
_0800D948: .4byte 0x00006560

	THUMB_FUNC_START sub_800D94C
sub_800D94C: @ 0x0800D94C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r3, _0800D99C
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r1, [r3, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800D9A4
	ldr r0, [r5, #0x14]
	ldrb r2, [r5, #0xd]
	adds r0, r2, r0
	ldr r1, _0800D9A0
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _0800D9A4
	bl PauseBGM
	movs r0, #0x2b
	bl PlaySE
	movs r1, #0
	movs r0, #5
	strb r0, [r6, #5]
	strb r1, [r6, #6]
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	b _0800DD78
	.align 2, 0
_0800D99C: .4byte gJoypad
_0800D9A0: .4byte gUnknown_08018A6C
_0800D9A4:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D9D0
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bls _0800D9D0
	movs r0, #1
	movs r1, #0xc
	bl sub_80024C8
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bls _0800D9FA
	subs r0, r1, #1
	b _0800D9F8
_0800D9D0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800DA74
	ldrb r1, [r5, #0xe]
	cmp r1, #1
	bls _0800DA74
	movs r0, #2
	movs r1, #0xc
	bl sub_80024C8
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5, #0xe]
	cmp r0, r2
	blo _0800D9FA
	movs r0, #0
_0800D9F8:
	strb r0, [r5, #0xd]
_0800D9FA:
	movs r0, #0x36
	bl PlaySE
	movs r0, #1
	strb r0, [r5, #0xf]
	movs r0, #2
	ldrb r3, [r5, #0xc]
	orrs r0, r3
	strb r0, [r5, #0xc]
	ldr r4, _0800DA4C
	ldr r0, _0800DA50
	str r0, [r4]
	ldr r0, _0800DA54
	str r0, [r4, #4]
	ldr r0, _0800DA58
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800DA5C
	str r0, [r4]
	ldr r0, _0800DA60
	str r0, [r4, #4]
	ldr r0, _0800DA64
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r0, r5, #0
	bl sub_800EAF8
	ldr r0, _0800DA68
	str r0, [r4]
	ldr r0, _0800DA6C
	str r0, [r4, #4]
	ldr r0, _0800DA70
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #6
	strb r0, [r6, #5]
	ldrb r0, [r6, #7]
	cmp r0, #1
	bne _0800DA4A
	b _0800DC2E
_0800DA4A:
	b _0800DD6A
	.align 2, 0
_0800DA4C: .4byte 0x040000D4
_0800DA50: .4byte 0x06013C00
_0800DA54: .4byte 0x06001400
_0800DA58: .4byte 0x80000E00
_0800DA5C: .4byte 0x05000220
_0800DA60: .4byte 0x05000020
_0800DA64: .4byte 0x80000010
_0800DA68: .4byte gOamObjects+0x110
_0800DA6C: .4byte 0x07000110
_0800DA70: .4byte 0x8000002C
_0800DA74:
	ldrb r2, [r6, #7]
	cmp r2, #1
	beq _0800DA7C
	b _0800DC8E
_0800DA7C:
	ldrh r3, [r3, #2]
	ands r2, r3
	cmp r2, #0
	bne _0800DA86
	b _0800DC04
_0800DA86:
	movs r0, #0
	bl sub_800EB88
	movs r0, #0
	bl sub_800EBF0
	ldr r2, _0800DAB8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	strh r0, [r2, #8]
	adds r2, r6, #0
	adds r2, #0xb4
	ldr r3, [r2]
	adds r1, r3, #0
	ands r1, r0
	mov sb, r2
	cmp r1, #0
	beq _0800DAC0
	movs r0, #4
	movs r1, #0x12
	bl sub_80024C8
	ldr r0, _0800DABC
	b _0800DBDA
	.align 2, 0
_0800DAB8: .4byte gOamObjects
_0800DABC: .4byte 0x00000707
_0800DAC0:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0800DAD8
	movs r0, #4
	bl sub_8010204
	movs r0, #0x37
	bl PlaySE
	b _0800DAE4
_0800DAD8:
	movs r0, #2
	bl sub_8010204
	movs r0, #0x51
	bl PlaySE
_0800DAE4:
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl sub_80007D8
	ldr r1, _0800DB50
	movs r0, #0xa
	strb r0, [r1, #1]
	ldr r2, _0800DB54
	adds r2, #0x4a
	ldr r1, _0800DB58
	ldrh r3, [r2]
	ands r1, r3
	movs r0, #0
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
	movs r0, #0x1e
	strh r0, [r6, #0x10]
	movs r0, #1
	mov r8, r0
	mov r3, r8
	strb r3, [r6, #0x12]
	mov r3, sb
	ldr r0, [r3]
	mov r3, r8
	orrs r0, r3
	mov r3, sb
	str r0, [r3]
	ldr r0, _0800DB5C
	ands r1, r0
	strh r1, [r2]
	adds r0, r5, #0
	bl sub_800EB6C
	ldr r7, _0800DB60
	ldrh r0, [r7, #0x1e]
	ldr r1, [r5, #0x14]
	ldrb r5, [r5, #0xd]
	adds r1, r5, r1
	ldrb r1, [r1]
	bl sub_800EE20
	adds r4, r0, #0
	cmp r4, #0
	beq _0800DB68
	bl StopBGM
	adds r0, r4, #0
	bl sub_800549C
	ldr r0, _0800DB64
	b _0800DBD6
	.align 2, 0
_0800DB50: .4byte gUnknown_03003AB0
_0800DB54: .4byte gLCDIORegisters
_0800DB58: .4byte 0x0000FDFF
_0800DB5C: .4byte 0x0000FBFF
_0800DB60: .4byte gScriptContext
_0800DB64: .4byte 0x00000103
_0800DB68:
	ldrh r5, [r7, #0x1e]
	movs r0, #0x10
	ldrh r1, [r7]
	ands r0, r1
	cmp r0, #0
	beq _0800DB7E
	adds r5, #1
	adds r0, r5, #0
	bl sub_800549C
	b _0800DBC8
_0800DB7E:
	bl Random
	movs r4, #3
	ands r4, r0
	cmp r4, #1
	beq _0800DBA8
	cmp r4, #1
	blo _0800DB98
	cmp r4, #2
	beq _0800DBB6
	cmp r4, #3
	beq _0800DBBE
	b _0800DBC4
_0800DB98:
	movs r0, #0x1a
	bl sub_800549C
	adds r0, r7, #0
	adds r0, #0x33
	mov r2, r8
	strb r2, [r0]
	b _0800DBC4
_0800DBA8:
	movs r0, #0x1b
	bl sub_800549C
	adds r0, r7, #0
	adds r0, #0x33
	strb r4, [r0]
	b _0800DBC4
_0800DBB6:
	movs r0, #0x1c
	bl sub_800549C
	b _0800DBC4
_0800DBBE:
	movs r0, #0x1d
	bl sub_800549C
_0800DBC4:
	ldr r0, _0800DBF4
	strh r5, [r0, #0x20]
_0800DBC8:
	ldr r0, _0800DBF4
	ldr r1, _0800DBF8
	ldrh r3, [r0]
	ands r1, r3
	strh r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #1
_0800DBD6:
	str r0, [r6, #8]
	ldr r0, _0800DBFC
_0800DBDA:
	str r0, [r6, #4]
	movs r0, #0
	movs r1, #0
	bl sub_80028B4
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _0800DC00
	ands r0, r1
	mov r2, sb
	str r0, [r2]
	b _0800DD78
	.align 2, 0
_0800DBF4: .4byte gScriptContext
_0800DBF8: .4byte 0x0000FFEF
_0800DBFC: .4byte 0x00000506
_0800DC00: .4byte 0xFFFFFCFF
_0800DC04:
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800DC2E
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0800DC2E
	movs r0, #0x2c
	bl PlaySE
	movs r0, #4
	movs r1, #0xc
	bl sub_80024C8
	movs r0, #2
	strb r0, [r6, #5]
_0800DC2E:
	ldrb r3, [r6, #8]
	cmp r3, #4
	beq _0800DC3E
	ldr r1, _0800DC6C
	adds r0, r6, #0
	movs r2, #0
	bl sub_800B51C
_0800DC3E:
	ldr r2, _0800DC70
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800DC84
	movs r1, #0x80
	lsls r1, r1, #7
	strh r1, [r2]
	ldr r0, _0800DC74
	strh r0, [r2, #2]
	ldr r0, _0800DC78
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800DC7C
	strh r0, [r2, #2]
	ldr r0, _0800DC80
	strh r0, [r2, #4]
	b _0800DD6A
	.align 2, 0
_0800DC6C: .4byte gUnknown_03003AB0
_0800DC70: .4byte gOamObjects+0x1B8
_0800DC74: .4byte 0x000080BA
_0800DC78: .4byte 0x00005590
_0800DC7C: .4byte 0x000080DA
_0800DC80: .4byte 0x00005598
_0800DC84:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	strh r0, [r2, #8]
	b _0800DD6A
_0800DC8E:
	cmp r2, #2
	bne _0800DD30
	ldrh r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DD10
	movs r0, #0x2b
	bl PlaySE
	ldr r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	adds r0, r1, r0
	ldrb r1, [r0]
	adds r0, r6, #0
	bl sub_800EEA4
	adds r4, r0, #0
	bl sub_800549C
	movs r0, #1
	bl sub_800244C
	adds r0, r5, #0
	bl sub_800EB6C
	movs r0, #0
	bl sub_800EB88
	movs r0, #0
	bl sub_800EBF0
	ldr r1, _0800DCFC
	adds r1, #0x4a
	ldr r0, _0800DD00
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	ldr r2, _0800DD04
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	strh r0, [r2, #8]
	ldr r1, _0800DD08
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #8
	strb r0, [r1, #7]
	movs r0, #0xf0
	strb r0, [r1, #0xd]
	ldr r1, _0800DD0C
	ldr r0, [r6, #8]
	str r0, [r1]
	b _0800DD78
	.align 2, 0
_0800DCFC: .4byte gLCDIORegisters
_0800DD00: .4byte 0x0000FBFF
_0800DD04: .4byte gOamObjects
_0800DD08: .4byte gUnknown_03003A50
_0800DD0C: .4byte gMain+0x4
_0800DD10:
	ands r2, r1
	cmp r2, #0
	beq _0800DD6A
	movs r0, #0x2c
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl sub_80024C8
	ldr r0, _0800DD2C
	str r0, [r6, #8]
	b _0800DD66
	.align 2, 0
_0800DD2C: .4byte 0x00030904
_0800DD30:
	ldrh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DD50
	movs r0, #0x34
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl sub_80024C8
	movs r0, #4
	strb r0, [r5, #0xf]
	b _0800DD68
_0800DD50:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800DD6A
	movs r0, #0x2c
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl sub_80024C8
_0800DD66:
	movs r0, #2
_0800DD68:
	strb r0, [r6, #5]
_0800DD6A:
	ldr r4, _0800DD84
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
_0800DD78:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD84: .4byte gUnknown_03002840

	THUMB_FUNC_START sub_800DD88
sub_800DD88: @ 0x0800DD88
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r5, #7]
	cmp r0, #2
	bne _0800DDBA
	ldrb r1, [r4, #2]
	cmp r1, #8
	bls _0800DDBA
	ldr r3, _0800DE0C
	ldrh r0, [r3, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	adds r0, #0xc
	ldr r1, _0800DE10
	ands r0, r1
	strh r0, [r3, #2]
	cmp r0, #0xb3
	bls _0800DDB4
	movs r0, #0xb4
	strh r0, [r3, #2]
_0800DDB4:
	ldrh r0, [r3, #2]
	orrs r2, r0
	strh r2, [r3, #2]
_0800DDBA:
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800DE04
	movs r0, #4
	ldrb r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0800DDFE
	ldr r1, _0800DE14
	movs r0, #4
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800DDFE
	ldr r1, _0800DE18
	ldr r0, _0800DE1C
	adds r2, r1, r0
	movs r0, #0x20
	strh r0, [r2]
	ldr r0, _0800DE20
	adds r1, r1, r0
	movs r0, #0x21
	strh r0, [r1]
_0800DDFE:
	ldr r1, _0800DE24
	ldr r0, [r5, #8]
	str r0, [r1]
_0800DE04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DE0C: .4byte gOamObjects+0x1A0
_0800DE10: .4byte 0x000001FF
_0800DE14: .4byte gScriptContext
_0800DE18: .4byte gBG1MapBuffer
_0800DE1C: .4byte 0x000004DC
_0800DE20: .4byte 0x000004DE
_0800DE24: .4byte gMain+0x4

	THUMB_FUNC_START sub_800DE28
sub_800DE28: @ 0x0800DE28
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r5, #7]
	cmp r0, #2
	bne _0800DE5A
	ldrb r1, [r4, #2]
	cmp r1, #8
	bls _0800DE5A
	ldr r3, _0800DE84
	ldrh r0, [r3, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	subs r0, #0xc
	ldr r1, _0800DE88
	ands r0, r1
	strh r0, [r3, #2]
	cmp r0, #0xff
	bls _0800DE54
	movs r0, #0
	strh r0, [r3, #2]
_0800DE54:
	ldrh r0, [r3, #2]
	orrs r2, r0
	strh r2, [r3, #2]
_0800DE5A:
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800DE7E
	movs r0, #4
	ldrb r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xf]
	strb r0, [r5, #5]
_0800DE7E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DE84: .4byte gOamObjects+0x1A0
_0800DE88: .4byte 0x000001FF

	THUMB_FUNC_START sub_800DE8C
sub_800DE8C: @ 0x0800DE8C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800DF2C
	movs r0, #0xfd
	ldrb r1, [r4, #0xc]
	ands r0, r1
	strb r0, [r4, #0xc]
	movs r0, #2
	movs r1, #0xc
	bl sub_80024C8
	movs r1, #1
	strb r1, [r4, #0xf]
	movs r0, #3
	strb r0, [r5, #5]
	ldrb r2, [r4, #0xd]
	ldrb r0, [r4, #0x12]
	strb r0, [r4, #0xd]
	strb r2, [r4, #0x12]
	ldrb r2, [r4, #0xc]
	ands r1, r2
	cmp r1, #0
	beq _0800DF00
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r4, #0xc]
	ldr r1, _0800DEF0
	ldr r0, _0800DEF4
	str r0, [r1]
	ldr r0, _0800DEF8
	str r0, [r1, #4]
	ldr r0, _0800DEFC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r4, #0x10]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x18
	b _0800DF1E
	.align 2, 0
_0800DEF0: .4byte 0x040000D4
_0800DEF4: .4byte gUnknown_081906C0
_0800DEF8: .4byte 0x06013500
_0800DEFC: .4byte 0x80000100
_0800DF00:
	movs r0, #1
	orrs r0, r2
	strb r0, [r4, #0xc]
	ldr r1, _0800DF34
	ldr r0, _0800DF38
	str r0, [r1]
	ldr r0, _0800DF3C
	str r0, [r1, #4]
	ldr r0, _0800DF40
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r4, #0x11]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x38
_0800DF1E:
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r0, r4, r0
	ldrb r0, [r0]
	bl sub_800EA80
_0800DF2C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DF34: .4byte 0x040000D4
_0800DF38: .4byte gUnknown_081908C0
_0800DF3C: .4byte 0x06013500
_0800DF40: .4byte 0x80000100

	THUMB_FUNC_START sub_800DF44
sub_800DF44: @ 0x0800DF44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DF6C
	ldr r0, _0800DF80
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xc]
_0800DF6C:
	ldrb r0, [r5, #6]
	cmp r0, #6
	bls _0800DF74
	b _0800E478
_0800DF74:
	lsls r0, r0, #2
	ldr r1, _0800DF84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DF80: .4byte gLCDIORegisters
_0800DF84: .4byte _0800DF88
_0800DF88: @ jump table
	.4byte _0800DFA4 @ case 0
	.4byte _0800E1BC @ case 1
	.4byte _0800E1D4 @ case 2
	.4byte _0800E25C @ case 3
	.4byte _0800E3B4 @ case 4
	.4byte _0800E3CC @ case 5
	.4byte _0800E3F4 @ case 6
_0800DFA4:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800DFB0
	b _0800E478
_0800DFB0:
	strb r0, [r4, #0x13]
	ldr r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	adds r0, r1, r0
	ldrb r2, [r0]
	ldr r1, _0800DFE0
	ldr r0, _0800DFE4
	str r0, [r1]
	ldr r0, _0800DFE8
	str r0, [r1, #4]
	ldr r0, _0800DFEC
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800DFF0
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0xb
	bhi _0800E054
	lsls r0, r0, #2
	ldr r1, _0800DFF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DFE0: .4byte 0x040000D4
_0800DFE4: .4byte gMain
_0800DFE8: .4byte gSaveDataBuffer+0x34
_0800DFEC: .4byte 0x800000D0
_0800DFF0: .4byte gUnknown_08018A6C
_0800DFF4: .4byte _0800DFF8
_0800DFF8: @ jump table
	.4byte _0800E054 @ case 0
	.4byte _0800E028 @ case 1
	.4byte _0800E02C @ case 2
	.4byte _0800E030 @ case 3
	.4byte _0800E034 @ case 4
	.4byte _0800E038 @ case 5
	.4byte _0800E03C @ case 6
	.4byte _0800E040 @ case 7
	.4byte _0800E044 @ case 8
	.4byte _0800E048 @ case 9
	.4byte _0800E04C @ case 10
	.4byte _0800E050 @ case 11
_0800E028:
	movs r0, #0x1d
	b _0800E052
_0800E02C:
	movs r0, #0x2d
	b _0800E052
_0800E030:
	movs r0, #0x31
	b _0800E052
_0800E034:
	movs r0, #0x3d
	b _0800E052
_0800E038:
	movs r0, #0x39
	b _0800E052
_0800E03C:
	movs r0, #0x5e
	b _0800E052
_0800E040:
	movs r0, #0x57
	b _0800E052
_0800E044:
	movs r0, #0x56
	b _0800E052
_0800E048:
	movs r0, #0x52
	b _0800E052
_0800E04C:
	movs r0, #0x58
	b _0800E052
_0800E050:
	movs r0, #0x59
_0800E052:
	strh r0, [r5, #0x28]
_0800E054:
	ldrh r0, [r5, #0x28]
	bl sub_8001830
	ldr r1, _0800E0BC
	ldr r0, _0800E0C0
	str r0, [r1]
	ldr r2, _0800E0C4
	str r2, [r1, #4]
	ldr r0, _0800E0C8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0800E0CC
	str r3, [r1]
	subs r2, #0xa0
	str r2, [r1, #4]
	ldr r0, _0800E0D0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0
	movs r2, #0xff
_0800E07C:
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
	adds r3, #0x14
	adds r1, #1
	cmp r1, #7
	bls _0800E07C
	ldrb r0, [r5, #8]
	cmp r0, #4
	bne _0800E0E8
	ldr r3, _0800E0D4
	movs r1, #0
	ldr r2, _0800E0D8
	mov r8, r2
	ldr r7, _0800E0DC
	ldr r6, _0800E0E0
	mov ip, r6
	ldr r0, _0800E0E4
	mov sl, r0
	movs r6, #0x80
	lsls r6, r6, #2
	adds r2, r6, #0
_0800E0A8:
	mov r0, sl
	ldrh r6, [r3]
	ands r0, r6
	orrs r0, r2
	strh r0, [r3]
	adds r3, #8
	adds r1, #1
	cmp r1, #3
	bls _0800E0A8
	b _0800E13C
	.align 2, 0
_0800E0BC: .4byte 0x040000D4
_0800E0C0: .4byte gOamObjects
_0800E0C4: .4byte gSaveDataBuffer+0x750
_0800E0C8: .4byte 0x80000200
_0800E0CC: .4byte gUnknown_03003930
_0800E0D0: .4byte 0x80000050
_0800E0D4: .4byte gOamObjects+0x188
_0800E0D8: .4byte gLCDIORegisters
_0800E0DC: .4byte gScriptContext
_0800E0E0: .4byte gSaveDataBuffer
_0800E0E4: .4byte 0x0000FCFF
_0800E0E8:
	cmp r0, #5
	bne _0800E110
	ldr r3, _0800E100
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	ldr r0, _0800E104
	mov r8, r0
	ldr r7, _0800E108
	ldr r1, _0800E10C
	mov ip, r1
	b _0800E13C
	.align 2, 0
_0800E100: .4byte gOamObjects+0x188
_0800E104: .4byte gLCDIORegisters
_0800E108: .4byte gScriptContext
_0800E10C: .4byte gSaveDataBuffer
_0800E110:
	ldr r2, _0800E198
	mov r8, r2
	ldr r7, _0800E19C
	ldr r6, _0800E1A0
	mov ip, r6
	cmp r0, #6
	bne _0800E13C
	ldr r3, _0800E1A4
	ldr r0, _0800E1A8
	adds r1, r0, #0
	ldrh r2, [r3]
	ands r1, r2
	movs r6, #0x80
	lsls r6, r6, #2
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	adds r3, #8
	ldrh r1, [r3]
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
_0800E13C:
	movs r0, #0x80
	lsls r0, r0, #3
	ldrh r7, [r7]
	ands r0, r7
	cmp r0, #0
	beq _0800E150
	ldr r3, _0800E1AC
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
_0800E150:
	ldrb r2, [r5, #0x15]
	mov r0, ip
	adds r0, #0x49
	movs r1, #0
	strb r2, [r0]
	strb r1, [r5, #0x15]
	mov r2, r8
	adds r2, #0x4a
	ldr r0, _0800E1B0
	ldrh r6, [r2]
	ands r0, r6
	ldr r1, _0800E1B4
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xfc
	ldrb r1, [r5, #0x1f]
	ands r0, r1
	strb r0, [r5, #0x1f]
	adds r0, r4, #0
	bl sub_800EB6C
	movs r0, #0
	bl sub_800EB88
	movs r0, #1
	bl sub_800ECA8
	ldr r3, _0800E1B8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	strh r0, [r3, #8]
	ldrb r0, [r5, #6]
	adds r0, #1
	b _0800E476
	.align 2, 0
_0800E198: .4byte gLCDIORegisters
_0800E19C: .4byte gScriptContext
_0800E1A0: .4byte gSaveDataBuffer
_0800E1A4: .4byte gOamObjects+0x1B8
_0800E1A8: .4byte 0x0000FCFF
_0800E1AC: .4byte gOamObjects+0x2C0
_0800E1B0: .4byte 0x0000FDFF
_0800E1B4: .4byte 0x0000FBFF
_0800E1B8: .4byte gOamObjects
_0800E1BC:
	ldrh r0, [r5, #0x28]
	bl sub_8001A9C
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #6]
	adds r0, #1
	b _0800E476
_0800E1D4:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800E1E0
	b _0800E478
_0800E1E0:
	ldr r0, _0800E204
	ldrh r1, [r0, #2]
	ldr r6, _0800E208
	ands r6, r1
	cmp r6, #0
	beq _0800E20C
	movs r0, #0x2c
	bl PlaySE
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #6]
	adds r0, #1
	b _0800E476
	.align 2, 0
_0800E204: .4byte gJoypad
_0800E208: .4byte 0x00000202
_0800E20C:
	movs r0, #0x81
	ands r0, r1
	cmp r0, #0
	bne _0800E216
	b _0800E478
_0800E216:
	ldr r0, [r4, #0x14]
	ldrb r2, [r4, #0xd]
	adds r0, r2, r0
	ldr r1, _0800E258
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #9
	beq _0800E230
	cmp r0, #2
	beq _0800E230
	b _0800E478
_0800E230:
	movs r0, #0x2b
	bl PlaySE
	ldrb r0, [r4, #0x13]
	adds r0, #1
	strb r0, [r4, #0x13]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0800E246
	strb r6, [r4, #0x13]
_0800E246:
	movs r0, #2
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #6
	b _0800E476
	.align 2, 0
_0800E258: .4byte gUnknown_08018A6C
_0800E25C:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800E268
	b _0800E478
_0800E268:
	ldr r2, _0800E390
	adds r0, r2, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	strh r0, [r5, #0x28]
	adds r0, r2, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	strh r0, [r5, #0x2a]
	adds r0, r2, #0
	adds r0, #0x60
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x2e
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x64
	ldrh r0, [r0]
	strh r0, [r5, #0x30]
	adds r0, r2, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r5, #0x32]
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r5, #0x34]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r5, #0x36]
	adds r0, r2, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r5, #0x38]
	adds r0, r2, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r5, #0x3a]
	adds r0, r2, #0
	adds r0, #0x70
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x71
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x72
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x73
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r2, #0x74]
	str r0, [r5, #0x40]
	movs r1, #0
	adds r3, r2, #0
	adds r3, #0x78
	adds r2, r5, #0
	adds r2, #0x44
_0800E306:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xb
	bls _0800E306
	ldrh r0, [r5, #0x28]
	bl sub_8001830
	ldrh r0, [r5, #0x28]
	bl sub_80020B0
	ldr r3, _0800E390
	adds r0, r3, #0
	adds r0, #0x49
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldr r2, _0800E394
	adds r2, #0x4a
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r6, #0
	movs r4, #0
	ldrh r1, [r2]
	orrs r0, r1
	movs r6, #0x80
	lsls r6, r6, #3
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800E398
	movs r2, #0xea
	lsls r2, r2, #3
	adds r0, r3, r2
	str r0, [r1]
	ldr r0, _0800E39C
	str r0, [r1, #4]
	ldr r0, _0800E3A0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r6, #0xd6
	lsls r6, r6, #3
	adds r3, r3, r6
	str r3, [r1]
	ldr r0, _0800E3A4
	str r0, [r1, #4]
	ldr r0, _0800E3A8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_80074E8
	ldrb r0, [r5, #8]
	cmp r0, #5
	bne _0800E374
	ldr r0, _0800E3AC
	strb r4, [r0, #1]
_0800E374:
	movs r0, #3
	ldrb r1, [r5, #0x1f]
	orrs r0, r1
	strb r0, [r5, #0x1f]
	ldr r4, _0800E3B0
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
	ldrb r0, [r5, #6]
	adds r0, #1
	b _0800E476
	.align 2, 0
_0800E390: .4byte gSaveDataBuffer
_0800E394: .4byte gLCDIORegisters
_0800E398: .4byte 0x040000D4
_0800E39C: .4byte gOamObjects
_0800E3A0: .4byte 0x80000200
_0800E3A4: .4byte gUnknown_03003930
_0800E3A8: .4byte 0x80000050
_0800E3AC: .4byte gUnknown_03003AB0
_0800E3B0: .4byte gUnknown_03002840
_0800E3B4:
	ldrh r0, [r5, #0x28]
	bl sub_80020B0
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl sub_80007D8
	ldrb r0, [r5, #6]
	adds r0, #1
	b _0800E476
_0800E3CC:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r4, [r0]
	cmp r4, #0
	bne _0800E3E0
	bl UnpauseBGM
	movs r0, #1
	strb r0, [r5, #5]
	strb r4, [r5, #6]
_0800E3E0:
	ldr r4, _0800E3F0
	adds r0, r4, #0
	bl sub_8002878
	adds r0, r4, #0
	bl sub_800E9D4
	b _0800E478
	.align 2, 0
_0800E3F0: .4byte gUnknown_03002840
_0800E3F4:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800E478
	ldr r0, [r4, #0x14]
	ldrb r2, [r4, #0xd]
	adds r0, r2, r0
	ldr r1, _0800E424
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #2
	bne _0800E43A
	ldrb r0, [r4, #0x13]
	cmp r0, #1
	beq _0800E432
	cmp r0, #1
	bgt _0800E428
	cmp r0, #0
	beq _0800E42E
	b _0800E45C
	.align 2, 0
_0800E424: .4byte gUnknown_08018A6C
_0800E428:
	cmp r0, #2
	beq _0800E436
	b _0800E45C
_0800E42E:
	movs r0, #0x2d
	b _0800E45A
_0800E432:
	movs r0, #0x2e
	b _0800E45A
_0800E436:
	movs r0, #0x30
	b _0800E45A
_0800E43A:
	ldrb r0, [r4, #0x13]
	cmp r0, #1
	beq _0800E454
	cmp r0, #1
	bgt _0800E44A
	cmp r0, #0
	beq _0800E450
	b _0800E45C
_0800E44A:
	cmp r0, #2
	beq _0800E458
	b _0800E45C
_0800E450:
	movs r0, #0x52
	b _0800E45A
_0800E454:
	movs r0, #0x53
	b _0800E45A
_0800E458:
	movs r0, #0x54
_0800E45A:
	strh r0, [r5, #0x28]
_0800E45C:
	ldrh r0, [r5, #0x28]
	bl sub_8001830
	ldrh r0, [r5, #0x28]
	bl sub_8001A9C
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl sub_80007D8
	movs r0, #1
_0800E476:
	strb r0, [r5, #6]
_0800E478:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

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
	bl sub_8010204
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
_0800E574: .4byte gUnknown_03003AB0
_0800E578: .4byte gUnknown_08018A6C
_0800E57C: .4byte gUnknown_081B290C
_0800E580: .4byte 0x040000D4
_0800E584: .4byte 0x05000220
_0800E588: .4byte 0x80000010
_0800E58C: .4byte gUnknown_081B292C
_0800E590: .4byte 0x06011000
_0800E594: .4byte 0x80000400
_0800E598: .4byte 0x0000C058
_0800E59C: .4byte gLCDIORegisters
_0800E5A0: .4byte 0x0000FDFF
_0800E5A4:
	ldrb r0, [r5, #7]
	cmp r0, #7
	bls _0800E5C2
	movs r0, #3
	movs r1, #1
	movs r2, #6
	movs r3, #0x1f
	bl sub_80007D8
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
	bl sub_800549C
	b _0800E676
	.align 2, 0
_0800E610: .4byte gUnknown_03003A50
_0800E614: .4byte gLCDIORegisters
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
	bl sub_800549C
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
	bl sub_800549C
	b _0800E668
_0800E652:
	movs r0, #0x1b
	bl sub_800549C
	b _0800E668
_0800E65A:
	movs r0, #0x1c
	bl sub_800549C
	b _0800E668
_0800E662:
	movs r0, #0x1d
	bl sub_800549C
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
_0800E758: .4byte gUnknown_03002840

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
	bl sub_800F71C
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
_0800E7BC: .4byte gLCDIORegisters

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
	bl sub_800F71C
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
_0800E864: .4byte gUnknown_03003A50
_0800E868:
	ldrb r5, [r5, #5]
	cmp r5, #8
	bne _0800E87C
	ldr r0, _0800E878
	movs r1, #4
	bl sub_800B7A8
	b _0800E888
	.align 2, 0
_0800E878: .4byte gUnknown_03003A50
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
_0800E898: .4byte gUnknown_03003A50
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

	THUMB_FUNC_START sub_800ECF8
sub_800ECF8: @ 0x0800ECF8
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
_0800ED0C: .4byte gUnknown_03002840+0x38
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
_0800ED3C: .4byte gUnknown_03002840+0x18

	THUMB_FUNC_START sub_800ED40
sub_800ED40: @ 0x0800ED40
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
_0800ED54: .4byte gUnknown_03002840+0x18
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
_0800EEE8: .4byte gUnknown_03000800+0x4E
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
_0800F074: .4byte gLCDIORegisters
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
_0800F0C8: .4byte gLCDIORegisters
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

	THUMB_FUNC_START sub_800F3C4
sub_800F3C4: @ 0x0800F3C4
	ldr r1, _0800F3DC
	movs r2, #0
	movs r0, #1
	strb r0, [r1, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x22]
	strh r2, [r1, #0x20]
	movs r0, #0xfe
	strb r0, [r1, #0x1d]
	bx lr
	.align 2, 0
_0800F3DC: .4byte gMain
