	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_8005890 @ moves shit into OAM according to unity it should be textbox characters and the blips that appear on the screen
sub_8005890: @ 0x08005890
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #4
	ldrh r1, [r7]
	ands r0, r1
	cmp r0, #0
	beq _080058A8
	b _080059BC
_080058A8:
	ldr r2, _08005924
	movs r4, #0xdc
	lsls r4, r4, #1
	adds r5, r2, r4
	ldr r6, _08005928
	mov sb, r6
	movs r0, #0x80
	lsls r0, r0, #2
	mov sl, r0
	movs r1, #0xff
	mov r8, r1
	ldr r2, _0800592C
	mov ip, r2
	mov r3, sb
_080058C4:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080059AC
	ldrh r0, [r3, #8]
	strh r0, [r5]
	ldrh r0, [r3, #0xa]
	strh r0, [r5, #2]
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080058EA
	ldrb r1, [r3, #2]
	adds r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r3, #2]
	cmp r1, #0xf
	bhi _080058EA
	mov r4, sl
	strh r4, [r5]
_080058EA:
	ldrb r6, [r3, #5]
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0800599C
	ldrb r4, [r3, #3]
	ldrb r0, [r3, #7]
	adds r1, r4, r0
	strb r1, [r3, #7]
	ldrb r2, [r3, #6]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	blo _08005912
	subs r0, r1, r2
	subs r0, r4, r0
	strb r0, [r3, #3]
	movs r0, #0xfd
	ands r0, r6
	strb r0, [r3, #5]
_08005912:
	ldrb r0, [r3, #4]
	cmp r0, #1
	beq _08005950
	cmp r0, #1
	bgt _08005930
	cmp r0, #0
	beq _0800593A
	b _0800599C
	.align 2, 0
_08005924: .4byte gOamObjects+0x10
_08005928: .4byte gUnknown_03003930
_0800592C: .4byte 0x000001FF
_08005930:
	cmp r0, #2
	beq _0800596C
	cmp r0, #3
	beq _08005982
	b _0800599C
_0800593A:
	ldrh r1, [r3, #8]
	mov r2, r8
	ands r2, r1
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldrb r1, [r3, #3]
	subs r2, r2, r1
	mov r4, r8
	ands r2, r4
	b _08005964
_08005950:
	ldrh r1, [r3, #8]
	mov r2, r8
	ands r2, r1
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldrb r6, [r3, #3]
	adds r2, r6, r2
	mov r1, r8
	ands r2, r1
_08005964:
	adds r0, r0, r2
	strh r0, [r3, #8]
	strh r0, [r5]
	b _0800599C
_0800596C:
	ldrh r1, [r3, #0xa]
	mov r2, ip
	ands r2, r1
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldrb r4, [r3, #3]
	subs r2, r2, r4
	mov r6, ip
	ands r2, r6
	b _08005996
_08005982:
	ldrh r1, [r3, #0xa]
	mov r2, ip
	ands r2, r1
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldrb r1, [r3, #3]
	adds r2, r1, r2
	mov r4, ip
	ands r2, r4
_08005996:
	adds r0, r0, r2
	strh r0, [r3, #0xa]
	strh r0, [r5, #2]
_0800599C:
	movs r0, #4
	ldrb r6, [r3, #5]
	ands r0, r6
	cmp r0, #0
	beq _080059B0
	mov r0, sl
	strh r0, [r5]
	b _080059B0
_080059AC:
	mov r1, sl
	strh r1, [r5]
_080059B0:
	adds r5, #8
	adds r3, #0x14
	mov r0, sb
	adds r0, #0x8c
	cmp r3, r0
	bls _080058C4
_080059BC:
	ldr r2, _080059F4
	ldrb r0, [r2, #0x15]
	cmp r0, #0
	beq _08005A72
	ldr r5, _080059F8
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #8
	ldr r2, _080059FC
_080059CE:
	adds r0, r3, #0
	ldrh r4, [r2]
	ands r0, r4
	cmp r0, #0
	beq _08005A00
	ldrh r6, [r2, #6]
	ldrh r4, [r7, #0x1a]
	adds r0, r6, r4
	strh r0, [r5]
	ldrh r6, [r2, #4]
	ldrh r4, [r7, #0x18]
	adds r0, r6, r4
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r0, r6
	strh r0, [r5, #2]
	ldrh r0, [r2, #2]
	strh r0, [r5, #4]
	b _08005A06
	.align 2, 0
_080059F4: .4byte gMain
_080059F8: .4byte gOamObjects+0x10
_080059FC: .4byte gTextBoxCharacters
_08005A00:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
_08005A06:
	adds r5, #8
	adds r2, #0xc
	adds r1, #1
	cmp r1, #0x1f
	bls _080059CE
	ldr r1, _08005A58
	movs r0, #4
	ldrh r2, [r7]
	ands r0, r2
	cmp r0, #0
	beq _08005AA4
	movs r4, #0xdc
	lsls r4, r4, #1
	adds r5, r1, r4
	movs r1, #0x20
	ldr r0, _08005A5C
	movs r3, #0x80
	lsls r3, r3, #8
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r2, r0, r6
_08005A30:
	adds r0, r3, #0
	ldrh r4, [r2]
	ands r0, r4
	cmp r0, #0
	beq _08005A60
	ldrh r6, [r2, #6]
	ldrh r4, [r7, #0x2a]
	adds r0, r6, r4
	strh r0, [r5]
	ldrh r6, [r2, #4]
	ldrh r4, [r7, #0x28]
	adds r0, r6, r4
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r0, r6
	strh r0, [r5, #2]
	ldrh r0, [r2, #2]
	strh r0, [r5, #4]
	b _08005A66
	.align 2, 0
_08005A58: .4byte gOamObjects+0x10
_08005A5C: .4byte gTextBoxCharacters
_08005A60:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
_08005A66:
	adds r5, #8
	adds r2, #0xc
	adds r1, #1
	cmp r1, #0x3e
	bls _08005A30
	b _08005AA4
_08005A72:
	ldr r5, _08005AB4
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
_08005A7A:
	strh r0, [r5]
	adds r5, #8
	adds r1, #1
	cmp r1, #0x1f
	bls _08005A7A
	ldr r1, _08005AB4
	movs r0, #4
	ldrh r7, [r7]
	ands r0, r7
	cmp r0, #0
	beq _08005AA4
	movs r0, #0xdc
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r1, #0x20
	adds r0, #0x48
_08005A9A:
	strh r0, [r5]
	adds r5, #8
	adds r1, #1
	cmp r1, #0x3e
	bls _08005A9A
_08005AA4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005AB4: .4byte gOamObjects+0x10

	THUMB_FUNC_START sub_8005AB8
sub_8005AB8: @ 0x08005AB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r6, #0
	ldr r5, _08005B50
	ldr r0, _08005B54
	mov sl, r0
_08005ACC:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08005B58
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	adds r3, r6, #1
	mov sb, r3
	cmp r0, #0
	beq _08005B7C
	ldr r3, _08005B5C
	ands r3, r1
	lsls r3, r3, #7
	ldr r7, _08005B60
	adds r3, r3, r7
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _08005B6C
	str r3, [r5]
	ldr r0, _08005B64
	str r0, [r5, #4]
	mov r1, sl
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _08005B64
	ldrb r3, [r2, #8]
	lsls r0, r3, #1
	adds r3, r0, r3
	movs r0, #0
	lsls r6, r6, #7
	str r6, [sp]
	movs r7, #0xf
	mov r8, r7
	movs r1, #0xf0
	mov ip, r1
	lsls r6, r3, #4
_08005B1A:
	ldrb r2, [r4]
	adds r1, r2, #0
	mov r7, r8
	ands r1, r7
	mov r7, ip
	ands r2, r7
	cmp r1, #0
	beq _08005B2C
	adds r1, r1, r3
_08005B2C:
	cmp r2, #0
	beq _08005B32
	adds r2, r2, r6
_08005B32:
	orrs r1, r2
	strb r1, [r4]
	adds r4, #1
	adds r0, #1
	cmp r0, #0x7f
	bls _08005B1A
	ldr r1, [sp]
	ldr r2, _08005B68
	adds r0, r1, r2
	ldr r3, _08005B64
	str r3, [r5]
	str r0, [r5, #4]
	mov r7, sl
	str r7, [r5, #8]
	b _08005B7A
	.align 2, 0
_08005B50: .4byte 0x040000D4
_08005B54: .4byte 0x80000040
_08005B58: .4byte gTextBoxCharacters
_08005B5C: .4byte 0x00007FFF
_08005B60: .4byte gCharSet
_08005B64: .4byte gTextColorTileBuffer
_08005B68: .4byte 0x06010000
_08005B6C:
	lsls r0, r6, #7
	ldr r1, _08005B94
	adds r0, r0, r1
	str r3, [r5]
	str r0, [r5, #4]
	mov r2, sl
	str r2, [r5, #8]
_08005B7A:
	ldr r0, [r5, #8]
_08005B7C:
	mov r6, sb
	cmp r6, #0x3e
	bls _08005ACC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005B94: .4byte 0x06010000
