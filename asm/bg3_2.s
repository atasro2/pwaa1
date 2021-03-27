	.include "asm/macros.inc"
	.syntax unified

	@ More than two thirds of the way through decompiling this
	@ I had to force close Firefox because it was unresponsive
	@ so because of that I lost all the progress i had made on
	@ decompiling this, I will have a go at this later in life     

	THUMB_FUNC_START sub_8001A9C
sub_8001A9C: @ 0x08001A9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08001AC0
	mov r8, r0
	ldr r1, _08001AC4
	mov sb, r1
	adds r0, r4, #0
	subs r0, #0x4a
	cmp r0, #1
	bhi _08001AC8
	bl sub_80018F8
	b _08002088
	.align 2, 0
_08001AC0: .4byte gMain
_08001AC4: .4byte gIORegisters
_08001AC8:
	movs r0, #0
	bl MoveAnimationTilesToRam
	bl MoveSpritesToOAM
	adds r5, r4, #0
	ldr r4, _08001B30
	ands r4, r5
	movs r0, #0
	movs r2, #0
	movs r1, #8
	mov r3, sb
	strh r1, [r3, #0x16]
	strh r1, [r3, #0x14]
	mov r1, r8
	adds r1, #0x2e
	strb r0, [r1]
	mov r6, r8
	strh r2, [r6, #0x34]
	strh r2, [r6, #0x36]
	strh r4, [r6, #0x28]
	adds r7, r1, #0
	cmp r4, #0xff
	bne _08001B58
	ldr r4, _08001B34
	ldr r6, _08001B38
	ldr r1, _08001B3C
	str r4, [r1]
	str r6, [r1, #4]
	ldr r0, _08001B40
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r2, [r0]
	str r0, [r1]
	ldr r0, _08001B44
	str r0, [r1, #4]
	ldr r0, _08001B48
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r3, _08001B4C
	adds r0, r3, #0
	strh r0, [r2]
	str r2, [r1]
	ldr r0, _08001B50
	str r0, [r1, #4]
	ldr r0, _08001B54
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08002088
	.align 2, 0
_08001B30: .4byte 0xFFFF7FFF
_08001B34: .4byte gUnknown_08014570
_08001B38: .4byte gBG3MapBuffer
_08001B3C: .4byte 0x040000D4
_08001B40: .4byte 0x800002C0
_08001B44: .4byte 0x05000040
_08001B48: .4byte 0x810000E0
_08001B4C: .4byte 0x00002222
_08001B50: .4byte 0x06004000
_08001B54: .4byte 0x81004B00
_08001B58:
	ldr r1, _08001BF8
	lsls r2, r4, #3
	adds r0, r1, #4
	adds r0, r2, r0
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r3
	mov ip, r1
	cmp r0, #0
	beq _08001BD0
	ldr r4, _08001BFC
	ldr r6, _08001C00
	ldr r0, _08001C04
	str r4, [r0]
	str r6, [r0, #4]
	ldr r1, _08001C08
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r4, #0x96
	lsls r4, r4, #2
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r6, r0, #0
	ldr r1, _08001C00
	adds r1, #0x40
_08001B8E:
	adds r0, r4, #0
	orrs r0, r6
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #1
	adds r4, #1
	cmp r3, #0x13
	bls _08001B8E
	movs r3, #0
	ldr r0, _08001C00
	movs r1, #0x80
	lsls r1, r1, #6
	adds r6, r1, #0
	adds r1, r0, #0
	adds r1, #0x7e
_08001BAC:
	adds r0, r4, #0
	orrs r0, r6
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #1
	adds r4, #1
	cmp r3, #0x13
	bls _08001BAC
	movs r0, #1
	strb r0, [r7]
	ldr r1, _08001C04
	ldr r0, _08001C0C
	str r0, [r1]
	ldr r0, _08001C10
	str r0, [r1, #4]
	ldr r0, _08001C14
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08001BD0:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08001C4E
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	ldr r5, [r0]
	movs r1, #0x40
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08001C18
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r5, r0
	movs r0, #0x80
	orrs r5, r0
	b _08001C56
	.align 2, 0
_08001BF8: .4byte gBackgroundTable
_08001BFC: .4byte gUnknown_08014570
_08001C00: .4byte gBG3MapBuffer
_08001C04: .4byte 0x040000D4
_08001C08: .4byte 0x800002C0
_08001C0C: .4byte gUnknown_08427608
_08001C10: .4byte gBGDecompBuffer+0x4B00
_08001C14: .4byte 0x80000280
_08001C18:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _08001C26
	movs r0, #0x81
	rsbs r0, r0, #0
	b _08001C48
_08001C26:
	movs r1, #0x10
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08001C3C
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r5, r0
	movs r0, #0x20
	orrs r5, r0
	b _08001C56
_08001C3C:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _08001C56
	movs r0, #0x21
	rsbs r0, r0, #0
_08001C48:
	ands r5, r0
	orrs r5, r1
	b _08001C56
_08001C4E:
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	ldr r5, [r0]
_08001C56:
	mov r3, ip
	adds r0, r2, r3
	ldr r0, [r0]
	adds r7, r0, #0
	adds r7, #0x28
	cmp r5, #0
	bge _08001D28
	movs r6, #1
	mov sl, r6
	ldr r0, _08001CD4
	mov r1, sb
	ldrh r1, [r1, #6]
	ands r0, r1
	mov r3, sb
	strh r0, [r3, #6]
	ldr r3, _08001CD8
	str r7, [r3]
	ldr r0, _08001CDC
	str r0, [r3, #4]
	ldr r7, _08001CE0
	str r7, [r3, #8]
	ldr r0, [r3, #8]
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	beq _08001D0C
	ldr r4, _08001CE4
	ldr r6, _08001CE8
	str r4, [r3]
	str r6, [r3, #4]
	str r7, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _08001CEC
	adds r6, #0x20
	str r4, [r3]
	str r6, [r3, #4]
	str r7, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _08001CF0
	ldr r6, _08001CF4
	str r4, [r3]
	str r6, [r3, #4]
	ldr r0, _08001CF8
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _08001CFC
	ldr r6, _08001D00
	str r4, [r3]
	str r6, [r3, #4]
	ldr r0, _08001D04
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _08001D08
	mov r6, sb
	ldrh r0, [r6, #4]
	strh r0, [r1]
	b _08001D48
	.align 2, 0
_08001CD4: .4byte 0x0000FF7F
_08001CD8: .4byte 0x040000D4
_08001CDC: .4byte 0x05000040
_08001CE0: .4byte 0x80000010
_08001CE4: .4byte gUnknown_08360834
_08001CE8: .4byte 0x050001C0
_08001CEC: .4byte gUnknown_08362524
_08001CF0: .4byte gBGDecompBuffer+0x4B00
_08001CF4: .4byte 0x06008B00
_08001CF8: .4byte 0x80002800
_08001CFC: .4byte gBG2MapBuffer
_08001D00: .4byte 0x0600F000
_08001D04: .4byte 0x800002C0
_08001D08: .4byte 0x0400000C
_08001D0C:
	mov r0, sp
	strh r1, [r0]
	str r0, [r3]
	ldr r0, _08001D20
	str r0, [r3, #4]
	ldr r0, _08001D24
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	b _08001D48
	.align 2, 0
_08001D20: .4byte 0x06008EC0
_08001D24: .4byte 0x81000010
_08001D28:
	movs r0, #0
	mov sl, r0
	movs r0, #0x80
	mov r1, sb
	ldrh r1, [r1, #6]
	orrs r0, r1
	mov r2, sb
	strh r0, [r2, #6]
	ldr r1, _08001DBC
	str r7, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08001DC0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08001D48:
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r3, _08001DC4
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #0xe
	mov r6, sb
	ldrh r0, [r6, #6]
	strh r0, [r1]
	adds r1, #0xe
	ldr r0, [r6, #0x14]
	str r0, [r1]
	movs r0, #0
	mov sb, r0
	mov r1, r8
	strh r5, [r1, #0x3a]
	ldr r7, _08001DC8
	movs r0, #0xf
	ands r0, r5
	cmp r0, #0
	bne _08001DE4
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r5
	cmp r0, #0
	bne _08001D8C
	ldr r4, _08001DCC
	ldr r6, _08001DD0
	ldr r0, _08001DBC
	str r4, [r0]
	str r6, [r0, #4]
	ldr r1, _08001DD4
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08001D8C:
	ldr r4, _08001DD0
	ldr r6, _08001DD8
	ldr r2, _08001DBC
	str r4, [r2]
	str r6, [r2, #4]
	ldr r0, _08001DDC
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r7, [r2]
	ldr r0, _08001DE0
	str r0, [r2, #4]
	movs r0, #0x96
	lsls r0, r0, #8
	mov r3, sl
	asrs r0, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08002088
	.align 2, 0
_08001DBC: .4byte 0x040000D4
_08001DC0: .4byte 0x80000100
_08001DC4: .4byte gIORegisters+0x4A
_08001DC8: .4byte gBGDecompBuffer
_08001DCC: .4byte gUnknown_08014570
_08001DD0: .4byte gBG3MapBuffer
_08001DD4: .4byte 0x800002C0
_08001DD8: .4byte 0x0600F800
_08001DDC: .4byte 0x80000400
_08001DE0: .4byte 0x06004000
_08001DE4:
	movs r0, #0xc
	ands r0, r5
	cmp r0, #0
	bne _08001DEE
	b _08001F2C
_08001DEE:
	movs r3, #0x40
	ands r3, r5
	cmp r3, #0
	beq _08001E98
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08001E18
	movs r0, #0x96
	lsls r0, r0, #8
	mov r5, sl
	asrs r0, r5
	adds r7, r0, r7
	mov r1, r8
	adds r1, #0x3e
	movs r0, #0x12
	strb r0, [r1]
	movs r0, #0xa0
	mov r6, r8
	strh r0, [r6, #0x36]
	b _08001E30
_08001E18:
	movs r0, #0x96
	lsls r0, r0, #7
	mov r1, sl
	asrs r0, r1
	subs r7, r7, r0
	mov r1, r8
	adds r1, #0x3e
	movs r0, #8
	strb r0, [r1]
	movs r0, #0x50
	mov r2, r8
	strh r0, [r2, #0x36]
_08001E30:
	ldr r3, _08001E8C
	str r7, [r3]
	ldr r5, _08001E90
	str r5, [r3, #4]
	movs r2, #0x96
	lsls r2, r2, #8
	mov r6, sl
	asrs r2, r6
	lsrs r0, r2, #0x1f
	adds r0, r2, r0
	asrs r0, r0, #1
	movs r4, #0x80
	lsls r4, r4, #0x18
	orrs r0, r4
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #7
	asrs r0, r6
	ldr r1, _08001E94
	adds r7, r0, r1
	movs r0, #0xf0
	lsls r0, r0, #3
	asrs r0, r6
	adds r7, r7, r0
	str r7, [r3]
	adds r2, r2, r5
	str r2, [r3, #4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	orrs r0, r4
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, r8
	adds r1, #0x3f
	movs r0, #0x13
	strb r0, [r1]
	subs r1, #0x10
	movs r0, #0x26
	b _08001EEA
	.align 2, 0
_08001E8C: .4byte 0x040000D4
_08001E90: .4byte 0x06004000
_08001E94: .4byte gBGDecompBuffer
_08001E98:
	ldr r2, _08001ED8
	str r7, [r2]
	ldr r0, _08001EDC
	str r0, [r2, #4]
	ldr r0, _08001EE0
	mov r6, sl
	asrs r0, r6
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, r8
	strh r3, [r0, #0x36]
	adds r0, #0x3f
	mov r1, sb
	strb r1, [r0]
	mov r1, r8
	adds r1, #0x3e
	movs r0, #0x15
	strb r0, [r1]
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08001EE4
	subs r1, #0xf
	movs r0, #1
	b _08001EEA
	.align 2, 0
_08001ED8: .4byte 0x040000D4
_08001EDC: .4byte 0x06004000
_08001EE0: .4byte 0x00009D80
_08001EE4:
	mov r1, r8
	adds r1, #0x2f
	movs r0, #0x20
_08001EEA:
	strb r0, [r1]
	movs r3, #0
	ldr r7, _08001F28
	movs r2, #0x96
	lsls r2, r2, #2
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r5, r0, #0
_08001EFC:
	movs r4, #0
	adds r2, r3, #1
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #5
	adds r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
_08001F10:
	adds r0, r4, r6
	orrs r0, r5
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1d
	bls _08001F10
	adds r3, r2, #0
	cmp r3, #1
	bls _08001EFC
	b _08002078
	.align 2, 0
_08001F28: .4byte gBG3MapBuffer
_08001F2C:
	movs r6, #1
	adds r2, r5, #0
	ands r2, r6
	movs r4, #0xb4
	lsls r4, r4, #4
	cmp r2, #0
	beq _08001F3E
	movs r4, #0xf0
	lsls r4, r4, #4
_08001F3E:
	movs r3, #0x10
	ands r3, r5
	cmp r3, #0
	beq _08001FBC
	mov r1, r8
	adds r1, #0x3f
	movs r0, #0x1e
	strb r0, [r1]
	subs r1, #0x10
	movs r0, #0x3a
	strb r0, [r1]
	cmp r2, #0
	beq _08001F6C
	movs r2, #0xe8
	lsls r2, r2, #3
	adds r7, r7, r2
	adds r1, #0xf
	movs r0, #0x1c
	strb r0, [r1]
	movs r0, #0xf0
	mov r3, r8
	strh r0, [r3, #0x34]
	b _08001F80
_08001F6C:
	movs r5, #0xe0
	lsls r5, r5, #2
	adds r7, r7, r5
	mov r1, r8
	adds r1, #0x3e
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x78
	mov r6, r8
	strh r0, [r6, #0x34]
_08001F80:
	movs r3, #0
	mov r0, sl
	lsrs r4, r0
	mov ip, r4
	ldr r1, _08001FB8
	mov r8, r1
	movs r5, #0
_08001F8E:
	movs r4, #0
	adds r2, r5, #0
	lsls r0, r3, #6
	adds r0, #0x40
	mov r6, r8
	adds r1, r0, r6
_08001F9A:
	adds r0, r4, r2
	movs r6, #0x80
	lsls r6, r6, #6
	orrs r0, r6
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1e
	bls _08001F9A
	adds r5, #0x1f
	adds r3, #1
	cmp r3, #0x13
	bls _08001F8E
	b _08002026
	.align 2, 0
_08001FB8: .4byte gBG3MapBuffer
_08001FBC:
	movs r0, #0x20
	ands r0, r5
	mov ip, r4
	mov r1, ip
	mov r5, sl
	lsrs r1, r5
	mov ip, r1
	cmp r0, #0
	beq _08002026
	mov r1, r8
	adds r1, #0x3e
	movs r0, #0x1f
	strb r0, [r1]
	mov r0, r8
	strh r3, [r0, #0x34]
	adds r0, #0x3f
	mov r1, sb
	strb r1, [r0]
	cmp r2, #0
	beq _08001FEA
	subs r0, #0x10
	strb r6, [r0]
	b _08001FF2
_08001FEA:
	mov r1, r8
	adds r1, #0x2f
	movs r0, #0x2f
	strb r0, [r1]
_08001FF2:
	movs r3, #0
	mov r2, sl
	lsrs r4, r2
	mov ip, r4
	ldr r5, _08002098
	mov r8, r5
	movs r5, #0
_08002000:
	movs r4, #0
	adds r2, r5, #0
	lsls r0, r3, #6
	adds r0, #0x42
	mov r6, r8
	adds r1, r0, r6
_0800200C:
	adds r0, r4, r2
	movs r6, #0x80
	lsls r6, r6, #6
	orrs r0, r6
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1e
	bls _0800200C
	adds r5, #0x1f
	adds r3, #1
	cmp r3, #0x13
	bls _08002000
_08002026:
	movs r3, #0
	ldr r5, _08002098
	ldr r2, _0800209C
	movs r1, #0
_0800202E:
	movs r4, #0
	lsls r0, r1, #1
	adds r0, r0, r5
_08002034:
	strh r2, [r0]
	adds r0, #2
	adds r4, #1
	cmp r4, #0x1f
	bls _08002034
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r3, #1
	cmp r3, #1
	bls _0800202E
	ldr r5, _080020A0
	movs r3, #0
	ldr r2, _080020A4
	movs r4, #0xf8
	lsls r4, r4, #3
	mov r1, sl
	asrs r4, r1
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r1, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	mov r6, ip
_08002066:
	str r7, [r2]
	str r5, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r7, r7, r6
	adds r5, r5, r4
	adds r3, #1
	cmp r3, #0x13
	bls _08002066
_08002078:
	ldr r4, _08002098
	ldr r6, _080020A8
	ldr r0, _080020A4
	str r4, [r0]
	str r6, [r0, #4]
	ldr r1, _080020AC
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08002088:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002098: .4byte gBG3MapBuffer
_0800209C: .4byte 0x00002276
_080020A0: .4byte 0x06004000
_080020A4: .4byte 0x040000D4
_080020A8: .4byte 0x0600F800
_080020AC: .4byte 0x80000400
