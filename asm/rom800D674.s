	.include "asm/macros.inc"
	.syntax unified

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
_0800D748: .4byte gTalkData
_0800D74C: .4byte gMain+0x8C
_0800D750: .4byte gAnimation+0x4E
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