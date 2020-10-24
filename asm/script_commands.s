	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_80074E8
sub_80074E8: @ 0x080074E8
	push {r4, r5, lr}
	movs r4, #0
	ldr r3, _08007544
	ldr r5, _08007548
	ldr r2, _0800754C
_080074F2:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08007536
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	str r1, [r3]
	ldr r1, [r2, #0x10]
	str r1, [r3, #4]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #4
	ldrb r1, [r2, #5]
	ands r0, r1
	cmp r0, #0
	bne _08007536
	ldrh r0, [r2, #0xe]
	lsls r1, r0, #3
	ldr r0, _08007550
	adds r1, r1, r0
	ldrh r0, [r2, #8]
	strh r0, [r1]
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #4]
_08007536:
	adds r2, #0x14
	adds r4, #1
	cmp r4, #7
	bls _080074F2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007544: .4byte 0x040000D4
_08007548: .4byte gUnknown_080187C8
_0800754C: .4byte gMapMarker
_08007550: .4byte gOamObjects
