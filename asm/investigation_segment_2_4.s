	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_80040A4
sub_80040A4: @ 0x080040A4
	ldr r2, _080040CC
	ldr r1, _080040D0
	str r1, [r2]
	ldr r1, _080040D4
	str r1, [r2, #4]
	ldr r1, _080040D8
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _080040DC
	str r1, [r2]
	ldr r1, _080040E0
	str r1, [r2, #4]
	ldr r1, _080040E4
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #6
	strb r1, [r0]
	bx lr
	.align 2, 0
_080040CC: .4byte 0x040000D4
_080040D0: .4byte gUnknown_08016C70
_080040D4: .4byte gMain+0xD8
_080040D8: .4byte 0x80000038
_080040DC: .4byte gUnknown_08016B6C
_080040E0: .4byte gTalkData
_080040E4: .4byte 0x80000082

	THUMB_FUNC_START sub_80040E8
sub_80040E8: @ 0x080040E8
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _0800411C
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08004120
	mov r1, sp
	str r1, [r2]
	ldr r1, _08004124
	str r1, [r2, #4]
	ldr r1, _08004128
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #0xb
	bls _08004110
	b _0800446E
_08004110:
	lsls r0, r0, #2
	ldr r1, _0800412C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800411C: .4byte 0x0000FFFF
_08004120: .4byte 0x040000D4
_08004124: .4byte gExaminationData
_08004128: .4byte 0x810000A0
_0800412C: .4byte _08004130
_08004130: @ jump table
	.4byte _0800419C @ case 0
	.4byte _0800446E @ case 1
	.4byte _0800446E @ case 2
	.4byte _0800446E @ case 3
	.4byte _08004160 @ case 4
	.4byte _080041E0 @ case 5
	.4byte _08004258 @ case 6
	.4byte _080042F4 @ case 7
	.4byte _080043B8 @ case 8
	.4byte _0800446E @ case 9
	.4byte _080043F4 @ case 10
	.4byte _08004434 @ case 11
_08004160:
	movs r0, #0
	movs r1, #0xe0
	bl GetFlag
	cmp r0, #0
	beq _0800417E
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl PlayBGM
_0800417E:
	ldr r1, _0800418C
	ldr r0, _08004190
	str r0, [r1]
	ldr r0, _08004194
	str r0, [r1, #4]
	ldr r0, _08004198
	b _0800446A
	.align 2, 0
_0800418C: .4byte 0x040000D4
_08004190: .4byte gUnknown_08016CE0
_08004194: .4byte gExaminationData
_08004198: .4byte 0x80000032
_0800419C:
	movs r0, #0
	movs r1, #0xe1
	bl GetFlag
	cmp r0, #0
	bne _080041B2
	movs r0, #0x8e
	movs r1, #0xe1
	bl sub_8002CCC
	b _080041C2
_080041B2:
	movs r0, #0x1b
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0
	bl PlayBGM
_080041C2:
	ldr r1, _080041D0
	ldr r0, _080041D4
	str r0, [r1]
	ldr r0, _080041D8
	str r0, [r1, #4]
	ldr r0, _080041DC
	b _0800446A
	.align 2, 0
_080041D0: .4byte 0x040000D4
_080041D4: .4byte gUnknown_08016D44
_080041D8: .4byte gExaminationData
_080041DC: .4byte 0x80000014
_080041E0:
	movs r0, #2
	movs r1, #0x77
	bl GetFlag
	cmp r0, #0
	beq _08004214
	movs r0, #0
	movs r1, #0xee
	bl GetFlag
	cmp r0, #0
	bne _08004202
	movs r0, #0xa3
	movs r1, #0xee
	bl sub_8002CCC
	b _0800423A
_08004202:
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl PlayBGM
	b _0800423A
_08004214:
	movs r0, #0
	movs r1, #0xe2
	bl GetFlag
	cmp r0, #0
	bne _0800422A
	movs r0, #0x98
	movs r1, #0xe2
	bl sub_8002CCC
	b _0800423A
_0800422A:
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl PlayBGM
_0800423A:
	ldr r1, _08004248
	ldr r0, _0800424C
	str r0, [r1]
	ldr r0, _08004250
	str r0, [r1, #4]
	ldr r0, _08004254
	b _0800446A
	.align 2, 0
_08004248: .4byte 0x040000D4
_0800424C: .4byte gUnknown_08016D6C
_08004250: .4byte gExaminationData
_08004254: .4byte 0x80000032
_08004258:
	movs r0, #0
	movs r1, #0xef
	bl GetFlag
	adds r4, r0, #0
	cmp r4, #0
	beq _0800427C
	movs r0, #0
	movs r1, #0xf0
	bl GetFlag
	cmp r0, #0
	bne _080042C8
	movs r0, #0xc6
	movs r1, #0xf0
	bl sub_8002CCC
	b _080042C8
_0800427C:
	movs r0, #0
	movs r1, #0xe3
	bl GetFlag
	cmp r0, #0
	bne _08004292
	movs r0, #0xb4
	movs r1, #0xe3
	bl sub_8002CCC
	b _080042C8
_08004292:
	movs r0, #0
	movs r1, #0xe4
	bl GetFlag
	cmp r0, #0
	beq _080042C2
	ldr r0, _080042D8
	adds r1, r0, #0
	adds r1, #0x90
	strh r4, [r1]
	adds r0, #0x92
	strh r4, [r0]
	ldr r0, _080042DC
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl PlayPersonAnimation
	ldr r0, _080042E0
	movs r1, #1
	strb r1, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
_080042C2:
	movs r0, #1
	bl PlayBGM
_080042C8:
	ldr r1, _080042E4
	ldr r0, _080042E8
	str r0, [r1]
	ldr r0, _080042EC
	str r0, [r1, #4]
	ldr r0, _080042F0
	b _0800446A
	.align 2, 0
_080042D8: .4byte gMain
_080042DC: .4byte 0x00008014
_080042E0: .4byte gInvestigation
_080042E4: .4byte 0x040000D4
_080042E8: .4byte gUnknown_08016DD0
_080042EC: .4byte gExaminationData
_080042F0: .4byte 0x80000064
_080042F4:
	movs r0, #0
	movs r1, #0xef
	bl GetFlag
	cmp r0, #0
	beq _08004334
	movs r0, #0
	movs r1, #0xf1
	bl GetFlag
	cmp r0, #0
	bne _08004314
	movs r0, #0xdf
	movs r1, #0xf1
	bl sub_8002CCC
_08004314:
	ldr r1, _08004324
	ldr r0, _08004328
	str r0, [r1]
	ldr r0, _0800432C
	str r0, [r1, #4]
	ldr r0, _08004330
	b _0800446A
	.align 2, 0
_08004324: .4byte 0x040000D4
_08004328: .4byte gUnknown_08016E98
_0800432C: .4byte gExaminationData
_08004330: .4byte 0x80000046
_08004334:
	movs r0, #0
	movs r1, #0xe9
	bl GetFlag
	cmp r0, #0
	beq _08004384
	movs r0, #0
	movs r1, #0xea
	bl GetFlag
	cmp r0, #0
	bne _08004356
	movs r0, #0xca
	movs r1, #0xea
	bl sub_8002CCC
	b _08004366
_08004356:
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl PlayBGM
_08004366:
	ldr r1, _08004374
	ldr r0, _08004378
	str r0, [r1]
	ldr r0, _0800437C
	str r0, [r1, #4]
	ldr r0, _08004380
	b _0800446A
	.align 2, 0
_08004374: .4byte 0x040000D4
_08004378: .4byte gUnknown_08016F24
_0800437C: .4byte gExaminationData
_08004380: .4byte 0x80000046
_08004384:
	movs r0, #0
	movs r1, #0xe5
	bl GetFlag
	cmp r0, #0
	bne _08004398
	movs r0, #0xc7
	movs r1, #0xe5
	bl sub_8002CCC
_08004398:
	ldr r1, _080043A8
	ldr r0, _080043AC
	str r0, [r1]
	ldr r0, _080043B0
	str r0, [r1, #4]
	ldr r0, _080043B4
	b _0800446A
	.align 2, 0
_080043A8: .4byte 0x040000D4
_080043AC: .4byte gUnknown_08016E98
_080043B0: .4byte gExaminationData
_080043B4: .4byte 0x80000046
_080043B8:
	movs r0, #0
	movs r1, #0xe6
	bl GetFlag
	cmp r0, #0
	bne _080043CE
	movs r0, #0xe0
	movs r1, #0xe6
	bl sub_8002CCC
	b _080043D4
_080043CE:
	movs r0, #0x1f
	bl PlayBGM
_080043D4:
	ldr r1, _080043E4
	ldr r0, _080043E8
	str r0, [r1]
	ldr r0, _080043EC
	str r0, [r1, #4]
	ldr r0, _080043F0
	b _0800446A
	.align 2, 0
_080043E4: .4byte 0x040000D4
_080043E8: .4byte gUnknown_08016FB0
_080043EC: .4byte gExaminationData
_080043F0: .4byte 0x8000003C
_080043F4:
	movs r0, #0
	movs r1, #0xe7
	bl GetFlag
	cmp r0, #0
	bne _0800440A
	movs r0, #0xe7
	movs r1, #0xe7
	bl sub_8002CCC
	b _08004426
_0800440A:
	movs r0, #0
	movs r1, #0xf2
	bl GetFlag
	cmp r0, #0
	bne _08004420
	movs r0, #0x18
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_08004420:
	movs r0, #0x1f
	bl PlayBGM
_08004426:
	ldr r1, _0800442C
	ldr r0, _08004430
	b _08004462
	.align 2, 0
_0800442C: .4byte 0x040000D4
_08004430: .4byte gUnknown_08017028
_08004434:
	movs r0, #0
	movs r1, #0xf2
	bl GetFlag
	cmp r0, #0
	beq _0800444A
	movs r0, #0xff
	movs r1, #0xff
	bl sub_8002CCC
	b _0800445E
_0800444A:
	movs r0, #0
	movs r1, #0xe8
	bl GetFlag
	cmp r0, #0
	bne _0800445E
	movs r0, #0xf7
	movs r1, #0xe8
	bl sub_8002CCC
_0800445E:
	ldr r1, _08004478
	ldr r0, _0800447C
_08004462:
	str r0, [r1]
	ldr r0, _08004480
	str r0, [r1, #4]
	ldr r0, _08004484
_0800446A:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800446E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004478: .4byte 0x040000D4
_0800447C: .4byte gUnknown_080170DC
_08004480: .4byte gExaminationData
_08004484: .4byte 0x8000005A

	THUMB_FUNC_START sub_8004488
sub_8004488: @ 0x08004488
	push {lr}
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #2
	bne _080044CC
	movs r0, #0
	movs r1, #0xe9
	bl GetFlag
	cmp r0, #0
	bne _080044CC
	movs r0, #2
	movs r1, #0x6d
	bl GetFlag
	cmp r0, #0
	beq _080044CC
	movs r0, #2
	movs r1, #0x6e
	bl GetFlag
	cmp r0, #0
	beq _080044CC
	movs r0, #2
	movs r1, #0x6f
	bl GetFlag
	cmp r0, #0
	beq _080044CC
	movs r0, #0
	movs r1, #0xe9
	movs r2, #1
	bl ChangeFlag
_080044CC:
	pop {r0}
	bx r0
