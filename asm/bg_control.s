	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_80024C8
sub_80024C8: @ 0x080024C8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r2, _080024DC
	cmp r3, #4
	bls _080024E0
	movs r0, #1
	strb r0, [r2, #0xa]
	subs r3, #4
	b _080024E4
	.align 2, 0
_080024DC: .4byte gCourtRecord
_080024E0:
	movs r0, #0
	strb r0, [r2, #0xa]
_080024E4:
	movs r0, #0
	strb r3, [r2, #3]
	strb r0, [r2]
	ldrh r0, [r2, #4]
	strh r0, [r2, #6]
	movs r0, #0xfb
	ldrb r1, [r2, #0xc]
	ands r0, r1
	strb r0, [r2, #0xc]
	cmp r3, #4
	bhi _08002540
	lsls r0, r3, #2
	ldr r1, _08002504
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002504: .4byte _08002508
_08002508: @ jump table
	.4byte _08002540 @ case 0
	.4byte _0800251C @ case 1
	.4byte _0800252A @ case 2
	.4byte _08002538 @ case 3
	.4byte _0800253C @ case 4
_0800251C:
	movs r0, #0
	strb r4, [r2, #1]
	strb r0, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #4]
	b _08002540
_0800252A:
	rsbs r0, r4, #0
	strb r0, [r2, #1]
	movs r0, #0x1f
	strb r0, [r2, #2]
	adds r0, #0xf1
	strh r0, [r2, #4]
	b _08002540
_08002538:
	strb r4, [r2, #1]
	b _08002540
_0800253C:
	rsbs r0, r4, #0
	strb r0, [r2, #1]
_08002540:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START nullsub_1
nullsub_1: @ 0x08002548
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_800254C
sub_800254C: @ 0x0800254C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrb r0, [r5]
	ldrb r2, [r5, #1]
	adds r1, r0, r2
	strb r1, [r5]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r3, [r5, #4]
	subs r0, r3, r0
	ldr r2, _08002600
	ands r0, r2
	strh r0, [r5, #4]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r6, [r5, #6]
	subs r0, r6, r0
	ands r0, r2
	strh r0, [r5, #6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #7
	ble _0800264A
	movs r0, #0
	mov sl, r0
	ldr r2, _08002604
	mov ip, r2
	ldr r3, _08002608
	mov sb, r3
_0800258E:
	ldrb r0, [r5]
	subs r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	adds r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0x1f
	bne _080025AC
	mov r6, sl
	strb r6, [r5]
	strb r6, [r5, #1]
	movs r0, #8
	strh r0, [r5, #4]
_080025AC:
	movs r3, #2
	ldr r1, _0800260C
	ldr r0, _08002610
	mov r8, r0
	ldr r7, _08002614
	mov r2, ip
	adds r2, #0x80
	ldr r6, _08002618
	ldr r4, _0800261C
_080025BE:
	str r2, [r1]
	mov r0, r8
	str r0, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	str r7, [r1]
	str r2, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #0x40
	adds r3, #1
	cmp r3, #0xb
	bls _080025BE
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08002624
	movs r3, #0x40
	mov r2, sb
	ldr r4, _08002620
	mov r1, ip
	adds r1, #0xbe
_080025E8:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _080025E8
	b _08002642
	.align 2, 0
_08002600: .4byte 0x000001FF
_08002604: .4byte gBG2MapBuffer
_08002608: .4byte 0x0000017F
_0800260C: .4byte 0x040000D4
_08002610: .4byte gBG3MapBufferCopy
_08002614: .4byte gBG3MapBufferCopy+0x2
_08002618: .4byte 0x80000020
_0800261C: .4byte 0x8000001F
_08002620: .4byte gUnknown_08014270
_08002624:
	movs r3, #0x40
	mov r2, sb
	ldr r4, _080026D8
	mov r1, ip
	adds r1, #0xbe
_0800262E:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _0800262E
_08002642:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bgt _0800258E
_0800264A:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #8
	rsbs r2, r2, #0
	cmp r0, r2
	bgt _08002724
	ldr r0, _080026DC
	mov sb, r0
	ldr r2, _080026D8
	mov sl, r2
	ldr r3, _080026E0
	mov ip, r3
_08002664:
	adds r0, r1, #0
	adds r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	subs r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0
	bne _08002680
	strb r1, [r5]
	strb r1, [r5, #1]
	movs r0, #8
	strh r0, [r5, #4]
_08002680:
	movs r3, #2
	ldr r1, _080026E4
	ldr r6, _080026E8
	mov r4, ip
	adds r4, #0x82
	mov r2, ip
	adds r2, #0x80
	ldr r0, _080026EC
	mov r8, r0
	ldr r7, _080026F0
_08002694:
	str r2, [r1]
	str r6, [r1, #4]
	mov r0, r8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r6, [r1]
	str r4, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, #0x40
	adds r2, #0x40
	adds r3, #1
	cmp r3, #0xb
	bls _08002694
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080026F8
	movs r3, #0x40
	mov r2, sb
	ldr r4, _080026F4
	mov r1, ip
	adds r1, #0x80
_080026C0:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _080026C0
	b _08002716
	.align 2, 0
_080026D8: .4byte gUnknown_08013F70
_080026DC: .4byte 0x0000017F
_080026E0: .4byte gBG2MapBuffer
_080026E4: .4byte 0x040000D4
_080026E8: .4byte gBG3MapBufferCopy
_080026EC: .4byte 0x80000020
_080026F0: .4byte 0x8000001F
_080026F4: .4byte gUnknown_08014270
_080026F8:
	movs r3, #0x40
	mov r2, sb
	mov r4, sl
	mov r1, ip
	adds r1, #0x80
_08002702:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _08002702
_08002716:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #8
	rsbs r2, r2, #0
	cmp r0, r2
	ble _08002664
_08002724:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START sub_8002734
sub_8002734: @ 0x08002734
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrb r1, [r5]
	ldrb r2, [r5, #1]
	adds r0, r1, r2
	strb r0, [r5]
	movs r1, #1
	ldrsb r1, [r5, r1]
	ldrh r2, [r5, #4]
	subs r1, r2, r1
	ldr r2, _08002858
	ands r1, r2
	strh r1, [r5, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _080027CA
	movs r0, #0
	mov sb, r0
	ldr r1, _0800285C
	mov sl, r1
	ldr r2, _08002860
	mov r8, r2
_0800276A:
	ldrb r0, [r5]
	subs r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	adds r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0x1f
	bne _08002784
	mov r0, sb
	strb r0, [r5]
	strb r0, [r5, #1]
_08002784:
	movs r4, #2
	ldr r1, _08002864
	mov ip, sl
	ldr r7, _08002868
	mov r2, r8
	adds r2, #0x80
	ldr r6, _0800286C
	ldr r3, _08002870
_08002794:
	str r2, [r1]
	mov r0, ip
	str r0, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	str r7, [r1]
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #0x40
	adds r4, #1
	cmp r4, #0xb
	bls _08002794
	movs r4, #0x40
	ldr r2, _08002874
	movs r1, #0
	mov r0, r8
	adds r0, #0xbe
_080027B8:
	strh r1, [r0]
	adds r0, #0x40
	adds r4, #0x20
	cmp r4, r2
	bls _080027B8
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bgt _0800276A
_080027CA:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #8
	rsbs r2, r2, #0
	cmp r0, r2
	bgt _08002848
	mov sl, r2
	ldr r2, _0800285C
	mov sb, r2
	ldr r0, _08002860
	mov r8, r0
_080027E2:
	adds r0, r1, #0
	adds r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	subs r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0
	bne _080027FA
	strb r1, [r5]
	strb r1, [r5, #1]
_080027FA:
	movs r4, #2
	ldr r1, _08002864
	mov r6, sb
	mov r3, r8
	adds r3, #0x82
	mov r2, r8
	adds r2, #0x80
	ldr r0, _0800286C
	mov ip, r0
	ldr r7, _08002870
_0800280E:
	str r2, [r1]
	str r6, [r1, #4]
	mov r0, ip
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r6, [r1]
	str r3, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r3, #0x40
	adds r2, #0x40
	adds r4, #1
	cmp r4, #0xb
	bls _0800280E
	movs r4, #0x40
	ldr r2, _08002874
	movs r1, #0
	mov r0, r8
	adds r0, #0x80
_08002834:
	strh r1, [r0]
	adds r0, #0x40
	adds r4, #0x20
	cmp r4, r2
	bls _08002834
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, sl
	ble _080027E2
_08002848:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002858: .4byte 0x000001FF
_0800285C: .4byte gBG3MapBufferCopy
_08002860: .4byte gBG2MapBuffer
_08002864: .4byte 0x040000D4
_08002868: .4byte gBG3MapBufferCopy+0x2
_0800286C: .4byte 0x80000020
_08002870: .4byte 0x8000001F
_08002874: .4byte 0x0000017F

	THUMB_FUNC_START sub_8002878
sub_8002878: @ 0x08002878
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080028A8
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _080028A0
	ldr r1, _080028AC
	ldrb r2, [r4, #3]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _080028B0
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #8
	strh r0, [r1, #0x10]
_080028A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080028A8: .4byte gMain
_080028AC: .4byte gUnknown_0811DBF0
_080028B0: .4byte gLCDIORegisters

	THUMB_FUNC_START sub_80028B4
sub_80028B4: @ 0x080028B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r5, #0
	bne _080028EC
	movs r4, #0xc0
	lsls r4, r4, #1
	ldr r3, _080028E0
	ldr r0, _080028E4
	ldr r2, _080028E8
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r1, r0, r5
_080028CE:
	adds r0, r4, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, r3
	bls _080028CE
	b _0800299A
	.align 2, 0
_080028E0: .4byte 0x000001DF
_080028E4: .4byte gBG1MapBuffer
_080028E8: .4byte gUnknown_08013B70
_080028EC:
	adds r0, r5, #0
	movs r1, #5
	bl __udivsi3
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #5
	bl __umodsi3
	lsls r4, r4, #0xb
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r2, _08002934
	adds r0, r4, r2
	adds r1, r1, r0
	ldr r0, _08002938
	str r1, [r0]
	ldr r2, _0800293C
	str r2, [r0, #4]
	ldr r2, _08002940
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r1, r3
	str r1, [r0]
	ldr r1, _08002944
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	cmp r6, #0
	beq _0800294C
	movs r6, #0x18
	ldr r2, _08002948
	b _0800294E
	.align 2, 0
_08002934: .4byte gUnknown_08187540
_08002938: .4byte 0x040000D4
_0800293C: .4byte 0x06000A80
_08002940: .4byte 0x80000060
_08002944: .4byte 0x06000B40
_08002948: .4byte gUnknown_08013B6A
_0800294C:
	ldr r2, _080029A0
_0800294E:
	ldr r3, _080029A4
	lsls r0, r6, #1
	adds r3, r0, r3
	movs r4, #0
	adds r1, r0, #0
	ldr r5, _080029A8
	ldr r6, _080029AC
	adds r7, r5, #0
	adds r7, #0x40
	adds r0, r6, #6
	mov ip, r0
_08002964:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	adds r4, #1
	cmp r4, #5
	bls _08002964
	adds r3, r1, r5
	adds r2, r6, #0
	movs r4, #0
_08002978:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	adds r4, #1
	cmp r4, #5
	bls _08002978
	adds r3, r1, r7
	mov r2, ip
	movs r4, #0
_0800298C:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	adds r4, #1
	cmp r4, #5
	bls _0800298C
_0800299A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080029A0: .4byte gUnknown_08013B64
_080029A4: .4byte gBG1MapBuffer+0x380
_080029A8: .4byte gBG1MapBuffer+0x300
_080029AC: .4byte gUnknown_08013B58

	THUMB_FUNC_START UpdateBGTilemaps
UpdateBGTilemaps: @ 0x080029B0
	ldr r2, _08002A1C
	movs r0, #1
	ldrb r1, [r2, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _080029CC
	ldr r1, _08002A20
	ldr r0, _08002A24
	str r0, [r1]
	ldr r0, _08002A28
	str r0, [r1, #4]
	ldr r0, _08002A2C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080029CC:
	ldrb r2, [r2, #0x16]
	movs r0, #2
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	beq _080029E8
	ldr r1, _08002A20
	ldr r0, _08002A30
	str r0, [r1]
	ldr r0, _08002A34
	str r0, [r1, #4]
	ldr r0, _08002A2C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080029E8:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08002A00
	ldr r1, _08002A20
	ldr r0, _08002A38
	str r0, [r1]
	ldr r0, _08002A3C
	str r0, [r1, #4]
	ldr r0, _08002A2C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08002A00:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08002A18
	ldr r1, _08002A20
	ldr r0, _08002A40
	str r0, [r1]
	ldr r0, _08002A44
	str r0, [r1, #4]
	ldr r0, _08002A2C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08002A18:
	bx lr
	.align 2, 0
_08002A1C: .4byte gMain
_08002A20: .4byte 0x040000D4
_08002A24: .4byte gBG0MapBuffer
_08002A28: .4byte 0x0600E000
_08002A2C: .4byte 0x80000400
_08002A30: .4byte gBG1MapBuffer
_08002A34: .4byte 0x0600E800
_08002A38: .4byte gBG2MapBuffer
_08002A3C: .4byte 0x0600F000
_08002A40: .4byte gBG3MapBuffer
_08002A44: .4byte 0x0600F800
