	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START RedrawTextboxCharacters
RedrawTextboxCharacters: @ 0x08005AB8
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
