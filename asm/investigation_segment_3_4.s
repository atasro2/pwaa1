	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_8005034
sub_8005034: @ 0x08005034
	ldr r2, _0800505C
	ldr r1, _08005060
	str r1, [r2]
	ldr r1, _08005064
	str r1, [r2, #4]
	ldr r1, _08005068
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800506C
	str r1, [r2]
	ldr r1, _08005070
	str r1, [r2, #4]
	ldr r1, _08005074
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #6
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800505C: .4byte 0x040000D4
_08005060: .4byte gUnknown_0801833C
_08005064: .4byte gMain+0xD8
_08005068: .4byte 0x80000054
_0800506C: .4byte gUnknown_0801824C
_08005070: .4byte gTalkData
_08005074: .4byte 0x80000078

	THUMB_FUNC_START sub_8005078
sub_8005078: @ 0x08005078
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _080050AC
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _080050B0
	mov r1, sp
	str r1, [r2]
	ldr r1, _080050B4
	str r1, [r2, #4]
	ldr r1, _080050B8
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #0x12
	bls _080050A0
	b _080053EC
_080050A0:
	lsls r0, r0, #2
	ldr r1, _080050BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080050AC: .4byte 0x0000FFFF
_080050B0: .4byte 0x040000D4
_080050B4: .4byte gExaminationData
_080050B8: .4byte 0x810000A0
_080050BC: .4byte _080050C0
_080050C0: @ jump table
	.4byte _08005188 @ case 0
	.4byte _08005394 @ case 1
	.4byte _080053EC @ case 2
	.4byte _080053EC @ case 3
	.4byte _0800510C @ case 4
	.4byte _080053EC @ case 5
	.4byte _080053EC @ case 6
	.4byte _080053EC @ case 7
	.4byte _080053EC @ case 8
	.4byte _080053EC @ case 9
	.4byte _080053EC @ case 10
	.4byte _080053EC @ case 11
	.4byte _080052E4 @ case 12
	.4byte _08005348 @ case 13
	.4byte _080051F4 @ case 14
	.4byte _08005230 @ case 15
	.4byte _080053EC @ case 16
	.4byte _0800526C @ case 17
	.4byte _080052A8 @ case 18
_0800510C:
	movs r0, #0
	movs r1, #0xa2
	bl GetFlag
	cmp r0, #0
	beq _0800514E
	movs r0, #0
	movs r1, #0x93
	bl GetFlag
	cmp r0, #0
	beq _0800514E
	movs r0, #0
	movs r1, #0x91
	bl GetFlag
	cmp r0, #0
	bne _0800513A
	movs r0, #0x8d
	movs r1, #0x91
	bl sub_8002CCC
	b _08005174
_0800513A:
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl PlayBGM
	b _08005174
_0800514E:
	movs r0, #0
	movs r1, #0x90
	bl GetFlag
	cmp r0, #0
	bne _08005164
	movs r0, #0x80
	movs r1, #0x90
	bl sub_8002CCC
	b _08005174
_08005164:
	ldr r2, _0800517C
	movs r0, #0x19
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0x16
	bl PlayBGM
_08005174:
	ldr r1, _08005180
	ldr r0, _08005184
	b _080053E0
	.align 2, 0
_0800517C: .4byte 0x000013B0
_08005180: .4byte 0x040000D4
_08005184: .4byte gUnknown_080183E4
_08005188:
	movs r0, #0
	movs r1, #0x93
	bl GetFlag
	cmp r0, #0
	beq _080051C0
	movs r0, #0
	movs r1, #0x95
	bl GetFlag
	cmp r0, #0
	bne _080051AA
	movs r0, #0x93
	movs r1, #0x95
	bl sub_8002CCC
	b _080051D4
_080051AA:
	ldr r2, _080051BC
	movs r0, #9
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0
	bl PlayBGM
	b _080051D4
	.align 2, 0
_080051BC: .4byte 0x000055D0
_080051C0:
	movs r0, #0
	movs r1, #0x94
	bl GetFlag
	cmp r0, #0
	bne _080051D4
	movs r0, #0x90
	movs r1, #0x94
	bl sub_8002CCC
_080051D4:
	ldr r1, _080051E4
	ldr r0, _080051E8
	str r0, [r1]
	ldr r0, _080051EC
	str r0, [r1, #4]
	ldr r0, _080051F0
	b _080053E8
	.align 2, 0
_080051E4: .4byte 0x040000D4
_080051E8: .4byte gUnknown_08018448
_080051EC: .4byte gExaminationData
_080051F0: .4byte 0x80000014
_080051F4:
	movs r0, #0
	movs r1, #0x98
	bl GetFlag
	cmp r0, #0
	bne _0800520A
	movs r0, #0x9e
	movs r1, #0x98
	bl sub_8002CCC
	b _08005210
_0800520A:
	movs r0, #0x1f
	bl PlayBGM
_08005210:
	ldr r1, _08005220
	ldr r0, _08005224
	str r0, [r1]
	ldr r0, _08005228
	str r0, [r1, #4]
	ldr r0, _0800522C
	b _080053E8
	.align 2, 0
_08005220: .4byte 0x040000D4
_08005224: .4byte gUnknown_08018470
_08005228: .4byte gExaminationData
_0800522C: .4byte 0x80000028
_08005230:
	movs r0, #0
	movs r1, #0x99
	bl GetFlag
	cmp r0, #0
	bne _08005246
	movs r0, #0x9f
	movs r1, #0x99
	bl sub_8002CCC
	b _0800524C
_08005246:
	movs r0, #0x1f
	bl PlayBGM
_0800524C:
	ldr r1, _0800525C
	ldr r0, _08005260
	str r0, [r1]
	ldr r0, _08005264
	str r0, [r1, #4]
	ldr r0, _08005268
	b _080053E8
	.align 2, 0
_0800525C: .4byte 0x040000D4
_08005260: .4byte gUnknown_080184C0
_08005264: .4byte gExaminationData
_08005268: .4byte 0x8000003C
_0800526C:
	movs r0, #0
	movs r1, #0x9a
	bl GetFlag
	cmp r0, #0
	bne _08005282
	movs r0, #0xa0
	movs r1, #0x9a
	bl sub_8002CCC
	b _08005288
_08005282:
	movs r0, #0x1f
	bl PlayBGM
_08005288:
	ldr r1, _08005298
	ldr r0, _0800529C
	str r0, [r1]
	ldr r0, _080052A0
	str r0, [r1, #4]
	ldr r0, _080052A4
	b _080053E8
	.align 2, 0
_08005298: .4byte 0x040000D4
_0800529C: .4byte gUnknown_08018538
_080052A0: .4byte gExaminationData
_080052A4: .4byte 0x8000001E
_080052A8:
	movs r0, #0
	movs r1, #0xa1
	bl GetFlag
	cmp r0, #0
	bne _080052BE
	movs r0, #0xba
	movs r1, #0xa1
	bl sub_8002CCC
	b _080052C4
_080052BE:
	movs r0, #0xc
	bl PlayBGM
_080052C4:
	ldr r1, _080052D4
	ldr r0, _080052D8
	str r0, [r1]
	ldr r0, _080052DC
	str r0, [r1, #4]
	ldr r0, _080052E0
	b _080053E8
	.align 2, 0
_080052D4: .4byte 0x040000D4
_080052D8: .4byte gUnknown_08018574
_080052DC: .4byte gExaminationData
_080052E0: .4byte 0x80000046
_080052E4:
	movs r0, #0
	movs r1, #0xa0
	bl GetFlag
	cmp r0, #0
	beq _0800530E
	movs r0, #0
	movs r1, #0x9c
	bl GetFlag
	cmp r0, #0
	bne _08005306
	movs r0, #0xa2
	movs r1, #0x9c
	bl sub_8002CCC
	b _0800532A
_08005306:
	movs r0, #1
	bl PlayBGM
	b _0800532A
_0800530E:
	movs r0, #0
	movs r1, #0x9b
	bl GetFlag
	cmp r0, #0
	bne _08005324
	movs r0, #0xa1
	movs r1, #0x9b
	bl sub_8002CCC
	b _0800532A
_08005324:
	movs r0, #1
	bl PlayBGM
_0800532A:
	ldr r1, _08005338
	ldr r0, _0800533C
	str r0, [r1]
	ldr r0, _08005340
	str r0, [r1, #4]
	ldr r0, _08005344
	b _080053E8
	.align 2, 0
_08005338: .4byte 0x040000D4
_0800533C: .4byte gUnknown_08018600
_08005340: .4byte gExaminationData
_08005344: .4byte 0x8000003C
_08005348:
	movs r0, #0
	movs r1, #0xa3
	bl GetFlag
	cmp r0, #0
	bne _0800535E
	movs r0, #0xbe
	movs r1, #0xa3
	bl sub_8002CCC
	b _0800537A
_0800535E:
	movs r0, #0
	movs r1, #0xa4
	bl GetFlag
	cmp r0, #0
	beq _08005374
	ldr r2, _08005388
	movs r0, #0x21
	adds r1, r2, #0
	bl sub_8002C98
_08005374:
	movs r0, #0xc
	bl PlayBGM
_0800537A:
	movs r0, #0xf
	bl PlayAnimation
	ldr r1, _0800538C
	ldr r0, _08005390
	b _080053E0
	.align 2, 0
_08005388: .4byte 0x00002260
_0800538C: .4byte 0x040000D4
_08005390: .4byte gUnknown_08018678
_08005394:
	movs r0, #0
	movs r1, #0x97
	bl GetFlag
	cmp r0, #0
	beq _080053C8
	movs r0, #0
	movs r1, #0x9e
	bl GetFlag
	cmp r0, #0
	bne _080053B6
	movs r0, #0xa9
	movs r1, #0x9e
	bl sub_8002CCC
	b _080053DC
_080053B6:
	movs r0, #0xc
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl PlayBGM
	b _080053DC
_080053C8:
	movs r0, #0
	movs r1, #0x9d
	bl GetFlag
	cmp r0, #0
	bne _080053DC
	movs r0, #0xa3
	movs r1, #0x9d
	bl sub_8002CCC
_080053DC:
	ldr r1, _080053F4
	ldr r0, _080053F8
_080053E0:
	str r0, [r1]
	ldr r0, _080053FC
	str r0, [r1, #4]
	ldr r0, _08005400
_080053E8:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080053EC:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080053F4: .4byte 0x040000D4
_080053F8: .4byte gUnknown_080186DC
_080053FC: .4byte gExaminationData
_08005400: .4byte 0x80000032

	THUMB_FUNC_START nullsub_37
nullsub_37: @ 0x08005404
	bx lr
	.align 2, 0
