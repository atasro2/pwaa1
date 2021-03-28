	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_800318C
sub_800318C: @ 0x0800318C
	ldr r2, _080031B4
	ldr r1, _080031B8
	str r1, [r2]
	ldr r1, _080031BC
	str r1, [r2, #4]
	ldr r1, _080031C0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _080031C4
	str r1, [r2]
	ldr r1, _080031C8
	str r1, [r2, #4]
	ldr r1, _080031CC
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080031B4: .4byte 0x040000D4
_080031B8: .4byte gUnknown_08015520
_080031BC: .4byte gMain+0xD8
_080031C0: .4byte 0x80000018
_080031C4: .4byte gUnknown_0801541C
_080031C8: .4byte gTalkData
_080031CC: .4byte 0x80000082

	THUMB_FUNC_START sub_80031D0
sub_80031D0: @ 0x080031D0
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08003200
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08003204
	mov r1, sp
	str r1, [r2]
	ldr r3, _08003208
	str r3, [r2, #4]
	ldr r1, _0800320C
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #5
	bls _080031F6
	b _0800352E
_080031F6:
	lsls r0, r0, #2
	ldr r1, _08003210
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003200: .4byte 0x0000FFFF
_08003204: .4byte 0x040000D4
_08003208: .4byte gExaminationData
_0800320C: .4byte 0x810000A0
_08003210: .4byte _08003214
_08003214: @ jump table
	.4byte _0800322C @ case 0
	.4byte _0800352E @ case 1
	.4byte _080032BC @ case 2
	.4byte _08003348 @ case 3
	.4byte _0800341E @ case 4
	.4byte _080034C0 @ case 5
_0800322C:
	movs r0, #0
	movs r1, #0x74
	bl GetFlag
	cmp r0, #0
	bne _0800326C
	movs r0, #0
	movs r1, #0x7b
	bl GetFlag
	cmp r0, #0
	bne _0800324C
	movs r0, #0x80
	movs r1, #0x7b
	bl sub_8002CCC
_0800324C:
	ldr r1, _0800325C
	ldr r0, _08003260
	str r0, [r1]
	ldr r0, _08003264
	str r0, [r1, #4]
	ldr r0, _08003268
	b _0800352A
	.align 2, 0
_0800325C: .4byte 0x040000D4
_08003260: .4byte gUnknown_08015550
_08003264: .4byte gExaminationData
_08003268: .4byte 0x80000032
_0800326C:
	movs r0, #0
	movs r1, #0x7c
	bl GetFlag
	cmp r0, #0
	bne _08003282
	movs r0, #0x87
	movs r1, #0x7c
	bl sub_8002CCC
	b _0800329C
_08003282:
	movs r0, #0
	movs r1, #0x75
	bl GetFlag
	cmp r0, #0
	beq _08003296
	movs r0, #0xc
	bl PlayBGM
	b _0800329C
_08003296:
	movs r0, #0x19
	bl PlayBGM
_0800329C:
	ldr r1, _080032AC
	ldr r0, _080032B0
	str r0, [r1]
	ldr r0, _080032B4
	str r0, [r1, #4]
	ldr r0, _080032B8
	b _0800352A
	.align 2, 0
_080032AC: .4byte 0x040000D4
_080032B0: .4byte gUnknown_080155B4
_080032B4: .4byte gExaminationData
_080032B8: .4byte 0x80000032
_080032BC:
	ldr r1, _080032EC
	ldr r0, _080032F0
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _080032F4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x80
	bl GetFlag
	cmp r0, #0
	bne _080032F8
	movs r0, #0
	movs r1, #0x7d
	bl GetFlag
	cmp r0, #0
	bne _0800331A
	movs r0, #0x9a
	movs r1, #0x7d
	bl sub_8002CCC
	b _0800352E
	.align 2, 0
_080032EC: .4byte 0x040000D4
_080032F0: .4byte gUnknown_08015618
_080032F4: .4byte 0x80000014
_080032F8:
	movs r0, #0
	movs r1, #0x70
	bl GetFlag
	cmp r0, #0
	bne _08003330
	movs r0, #0
	movs r1, #0x7e
	bl GetFlag
	cmp r0, #0
	bne _0800331A
	movs r0, #0xa2
	movs r1, #0x7e
	bl sub_8002CCC
	b _0800352E
_0800331A:
	ldr r2, _0800332C
	movs r0, #0x16
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0x16
	bl PlayBGM
	b _0800352E
	.align 2, 0
_0800332C: .4byte 0x00001D0C
_08003330:
	movs r0, #0
	movs r1, #0x7f
	bl GetFlag
	cmp r0, #0
	beq _0800333E
	b _0800352E
_0800333E:
	movs r0, #0xb0
	movs r1, #0x7f
	bl sub_8002CCC
	b _0800352E
_08003348:
	ldr r1, _08003380
	ldr r0, _08003384
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08003388
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x72
	bl GetFlag
	cmp r0, #0
	bne _0800338C
	movs r0, #0
	movs r1, #0x80
	bl GetFlag
	cmp r0, #0
	bne _08003376
	movs r0, #0xb9
	movs r1, #0x80
	bl sub_8002CCC
_08003376:
	movs r0, #0xd
	bl PlayAnimation
	b _0800352E
	.align 2, 0
_08003380: .4byte 0x040000D4
_08003384: .4byte gUnknown_08015640
_08003388: .4byte 0x8000003C
_0800338C:
	movs r0, #0
	movs r1, #0x73
	bl GetFlag
	cmp r0, #0
	bne _080033B0
	movs r0, #0
	movs r1, #0x81
	bl GetFlag
	cmp r0, #0
	beq _080033A6
	b _0800352E
_080033A6:
	movs r0, #0xcb
	movs r1, #0x81
	bl sub_8002CCC
	b _0800352E
_080033B0:
	movs r0, #0
	movs r1, #0x70
	bl GetFlag
	cmp r0, #0
	bne _080033E0
	movs r0, #0
	movs r1, #0x83
	bl GetFlag
	cmp r0, #0
	bne _080033D2
	movs r0, #0xd4
	movs r1, #0x83
	bl sub_8002CCC
	b _0800352E
_080033D2:
	movs r2, #0xb2
	lsls r2, r2, #2
	movs r0, #0xc
	adds r1, r2, #0
	bl sub_8002C98
	b _08003416
_080033E0:
	movs r0, #0
	movs r1, #0x82
	bl GetFlag
	cmp r0, #0
	bne _080033F6
	movs r0, #0xe4
	movs r1, #0x82
	bl sub_8002CCC
	b _0800352E
_080033F6:
	movs r2, #0xb2
	lsls r2, r2, #2
	movs r0, #0xc
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0
	movs r1, #0x88
	bl GetFlag
	cmp r0, #0
	beq _08003416
	movs r0, #0xc
	bl PlayBGM
	b _0800352E
_08003416:
	movs r0, #0x1a
	bl PlayBGM
	b _0800352E
_0800341E:
	movs r0, #0
	movs r1, #0x75
	bl GetFlag
	cmp r0, #0
	bne _08003474
	movs r0, #0
	movs r1, #0x84
	bl GetFlag
	cmp r0, #0
	bne _08003442
	movs r0, #0x8d
	lsls r0, r0, #1
	movs r1, #0x84
	bl sub_8002CCC
	b _08003452
_08003442:
	ldr r2, _08003460
	movs r0, #0x15
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl PlayBGM
_08003452:
	ldr r1, _08003464
	ldr r0, _08003468
	str r0, [r1]
	ldr r0, _0800346C
	str r0, [r1, #4]
	ldr r0, _08003470
	b _0800352A
	.align 2, 0
_08003460: .4byte 0x00002564
_08003464: .4byte 0x040000D4
_08003468: .4byte gUnknown_080156B8
_0800346C: .4byte gExaminationData
_08003470: .4byte 0x80000032
_08003474:
	movs r0, #0
	movs r1, #0x85
	bl GetFlag
	cmp r0, #0
	bne _0800348C
	movs r0, #0x96
	lsls r0, r0, #1
	movs r1, #0x85
	bl sub_8002CCC
	b _0800349C
_0800348C:
	ldr r2, _080034AC
	movs r0, #0x15
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl PlayBGM
_0800349C:
	ldr r1, _080034B0
	ldr r0, _080034B4
	str r0, [r1]
	ldr r0, _080034B8
	str r0, [r1, #4]
	ldr r0, _080034BC
	b _0800352A
	.align 2, 0
_080034AC: .4byte 0x00002564
_080034B0: .4byte 0x040000D4
_080034B4: .4byte gUnknown_0801571C
_080034B8: .4byte gExaminationData
_080034BC: .4byte 0x80000032
_080034C0:
	movs r0, #0
	movs r1, #0x73
	bl GetFlag
	cmp r0, #0
	bne _08003508
	movs r0, #0
	movs r1, #0x86
	bl GetFlag
	cmp r0, #0
	bne _080034E4
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x86
	bl sub_8002CCC
	b _080034F4
_080034E4:
	ldr r2, _080034FC
	movs r0, #0x17
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl PlayBGM
_080034F4:
	ldr r1, _08003500
	ldr r0, _08003504
	b _08003522
	.align 2, 0
_080034FC: .4byte 0x00000894
_08003500: .4byte 0x040000D4
_08003504: .4byte gUnknown_08015780
_08003508:
	movs r0, #0
	movs r1, #0x87
	bl GetFlag
	cmp r0, #0
	bne _0800351E
	movs r0, #0x89
	lsls r0, r0, #1
	movs r1, #0x87
	bl sub_8002CCC
_0800351E:
	ldr r1, _08003534
	ldr r0, _08003538
_08003522:
	str r0, [r1]
	ldr r0, _0800353C
	str r0, [r1, #4]
	ldr r0, _08003540
_0800352A:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800352E:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08003534: .4byte 0x040000D4
_08003538: .4byte gUnknown_080157F8
_0800353C: .4byte gExaminationData
_08003540: .4byte 0x8000003C

	THUMB_FUNC_START sub_8003544
sub_8003544: @ 0x08003544
	push {lr}
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #4
	bne _08003580
	movs r0, #0
	movs r1, #0x71
	bl GetFlag
	cmp r0, #0
	bne _08003580
	movs r0, #0
	movs r1, #0x70
	bl GetFlag
	cmp r0, #0
	beq _08003580
	ldr r1, _08003584
	ldr r0, _08003588
	str r0, [r1]
	ldr r0, _0800358C
	str r0, [r1, #4]
	ldr r0, _08003590
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x71
	movs r2, #1
	bl ChangeFlag
_08003580:
	pop {r0}
	bx r0
	.align 2, 0
_08003584: .4byte 0x040000D4
_08003588: .4byte gUnknown_0801571C
_0800358C: .4byte gExaminationData
_08003590: .4byte 0x80000032
