	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START nullsub_7
nullsub_7: @ 0x08003188
	bx lr
	.align 2, 0

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
	bl ChangeBGM
	b _0800329C
_08003296:
	movs r0, #0x19
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
	b _0800352E
_08003416:
	movs r0, #0x1a
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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

	THUMB_FUNC_START sub_8003594
sub_8003594: @ 0x08003594
	ldr r2, _080035BC
	ldr r1, _080035C0
	str r1, [r2]
	ldr r1, _080035C4
	str r1, [r2, #4]
	ldr r1, _080035C8
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _080035CC
	str r1, [r2]
	ldr r1, _080035D0
	str r1, [r2, #4]
	ldr r1, _080035D4
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #6
	strb r1, [r0]
	bx lr
	.align 2, 0
_080035BC: .4byte 0x040000D4
_080035C0: .4byte gUnknown_08015B70
_080035C4: .4byte gMain+0xD8
_080035C8: .4byte 0x80000030
_080035CC: .4byte gUnknown_08015A1C
_080035D0: .4byte gTalkData
_080035D4: .4byte 0x800000AA

	THUMB_FUNC_START sub_80035D8
sub_80035D8: @ 0x080035D8
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _0800360C
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08003610
	mov r1, sp
	str r1, [r2]
	ldr r1, _08003614
	str r1, [r2, #4]
	ldr r1, _08003618
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #9
	bls _08003600
	b _08003908
_08003600:
	lsls r0, r0, #2
	ldr r1, _0800361C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800360C: .4byte 0x0000FFFF
_08003610: .4byte 0x040000D4
_08003614: .4byte gExaminationData
_08003618: .4byte 0x810000A0
_0800361C: .4byte _08003620
_08003620: @ jump table
	.4byte _080036BC @ case 0
	.4byte _08003908 @ case 1
	.4byte _08003908 @ case 2
	.4byte _08003908 @ case 3
	.4byte _08003648 @ case 4
	.4byte _08003758 @ case 5
	.4byte _08003808 @ case 6
	.4byte _0800383C @ case 7
	.4byte _08003870 @ case 8
	.4byte _080038A4 @ case 9
_08003648:
	movs r0, #0
	movs r1, #0xa0
	bl GetFlag
	cmp r0, #0
	beq _0800367E
	movs r0, #0
	movs r1, #0x95
	bl GetFlag
	cmp r0, #0
	bne _0800366A
	movs r0, #0x8c
	movs r1, #0x95
	bl sub_8002CCC
	b _0800369C
_0800366A:
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl ChangeBGM
	b _0800369C
_0800367E:
	movs r0, #0
	movs r1, #0x94
	bl GetFlag
	cmp r0, #0
	beq _0800369C
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl ChangeBGM
_0800369C:
	ldr r1, _080036AC
	ldr r0, _080036B0
	str r0, [r1]
	ldr r0, _080036B4
	str r0, [r1, #4]
	ldr r0, _080036B8
	b _08003904
	.align 2, 0
_080036AC: .4byte 0x040000D4
_080036B0: .4byte gUnknown_08015BD0
_080036B4: .4byte gExaminationData
_080036B8: .4byte 0x80000032
_080036BC:
	movs r0, #0
	movs r1, #0xa0
	bl GetFlag
	cmp r0, #0
	beq _080036DE
	movs r0, #0
	movs r1, #0x92
	bl GetFlag
	cmp r0, #0
	bne _08003738
	movs r0, #0x9f
	movs r1, #0x92
	bl sub_8002CCC
	b _08003738
_080036DE:
	movs r0, #0
	movs r1, #0x9a
	bl GetFlag
	cmp r0, #0
	beq _08003712
	movs r0, #0
	movs r1, #0x91
	bl GetFlag
	cmp r0, #0
	bne _08003700
	movs r0, #0x99
	movs r1, #0x91
	bl sub_8002CCC
	b _08003738
_08003700:
	movs r0, #0x1b
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0
	bl ChangeBGM
	b _08003738
_08003712:
	movs r0, #0
	movs r1, #0x90
	bl GetFlag
	cmp r0, #0
	bne _08003728
	movs r0, #0x90
	movs r1, #0x90
	bl sub_8002CCC
	b _08003738
_08003728:
	movs r0, #0x1b
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0
	bl ChangeBGM
_08003738:
	ldr r1, _08003748
	ldr r0, _0800374C
	str r0, [r1]
	ldr r0, _08003750
	str r0, [r1, #4]
	ldr r0, _08003754
	b _08003904
	.align 2, 0
_08003748: .4byte 0x040000D4
_0800374C: .4byte gUnknown_08015C34
_08003750: .4byte gExaminationData
_08003754: .4byte 0x80000014
_08003758:
	movs r0, #0
	movs r1, #0xa8
	bl GetFlag
	cmp r0, #0
	beq _0800378E
	movs r0, #0
	movs r1, #0xa9
	bl GetFlag
	cmp r0, #0
	bne _0800377A
	movs r0, #0xb4
	movs r1, #0xa9
	bl sub_8002CCC
	b _080037E8
_0800377A:
	movs r0, #0
	movs r1, #0xaa
	bl GetFlag
	cmp r0, #0
	beq _080037B0
	movs r0, #0x1f
	bl ChangeBGM
	b _080037E8
_0800378E:
	movs r0, #0
	movs r1, #0xa0
	bl GetFlag
	cmp r0, #0
	beq _080037C2
	movs r0, #0
	movs r1, #0xa1
	bl GetFlag
	cmp r0, #0
	bne _080037B0
	movs r0, #0xae
	movs r1, #0xa1
	bl sub_8002CCC
	b _080037E8
_080037B0:
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl ChangeBGM
	b _080037E8
_080037C2:
	movs r0, #0
	movs r1, #0x93
	bl GetFlag
	cmp r0, #0
	bne _080037D8
	movs r0, #0xa1
	movs r1, #0x93
	bl sub_8002CCC
	b _080037E8
_080037D8:
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl ChangeBGM
_080037E8:
	ldr r1, _080037F8
	ldr r0, _080037FC
	str r0, [r1]
	ldr r0, _08003800
	str r0, [r1, #4]
	ldr r0, _08003804
	b _08003904
	.align 2, 0
_080037F8: .4byte 0x040000D4
_080037FC: .4byte gUnknown_08015C5C
_08003800: .4byte gExaminationData
_08003804: .4byte 0x80000032
_08003808:
	movs r0, #0
	movs r1, #0x9d
	bl GetFlag
	cmp r0, #0
	bne _0800381C
	movs r0, #0xbe
	movs r1, #0x9d
	bl sub_8002CCC
_0800381C:
	ldr r1, _0800382C
	ldr r0, _08003830
	str r0, [r1]
	ldr r0, _08003834
	str r0, [r1, #4]
	ldr r0, _08003838
	b _08003904
	.align 2, 0
_0800382C: .4byte 0x040000D4
_08003830: .4byte gUnknown_08015CC0
_08003834: .4byte gExaminationData
_08003838: .4byte 0x80000064
_0800383C:
	movs r0, #0
	movs r1, #0xa2
	bl GetFlag
	cmp r0, #0
	bne _08003850
	movs r0, #0xc9
	movs r1, #0xa2
	bl sub_8002CCC
_08003850:
	ldr r1, _08003860
	ldr r0, _08003864
	str r0, [r1]
	ldr r0, _08003868
	str r0, [r1, #4]
	ldr r0, _0800386C
	b _08003904
	.align 2, 0
_08003860: .4byte 0x040000D4
_08003864: .4byte gUnknown_08015D88
_08003868: .4byte gExaminationData
_0800386C: .4byte 0x80000046
_08003870:
	movs r0, #0
	movs r1, #0x9c
	bl GetFlag
	cmp r0, #0
	bne _08003886
	movs r0, #0xd2
	movs r1, #0x9c
	bl sub_8002CCC
	b _08003896
_08003886:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #1
	bl ChangeBGM
_08003896:
	ldr r1, _0800389C
	ldr r0, _080038A0
	b _080038FC
	.align 2, 0
_0800389C: .4byte 0x040000D4
_080038A0: .4byte gUnknown_08015E14
_080038A4:
	movs r0, #0
	movs r1, #0xaa
	bl GetFlag
	cmp r0, #0
	beq _080038C6
	movs r0, #0
	movs r1, #0xab
	bl GetFlag
	cmp r0, #0
	bne _080038F8
	movs r0, #0xfa
	movs r1, #0xab
	bl sub_8002CCC
	b _080038F8
_080038C6:
	movs r0, #0
	movs r1, #0xa4
	bl GetFlag
	cmp r0, #0
	bne _080038DC
	movs r0, #0xed
	movs r1, #0xa4
	bl sub_8002CCC
	b _080038F8
_080038DC:
	movs r0, #0
	movs r1, #0xa5
	bl GetFlag
	cmp r0, #0
	beq _080038F2
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_080038F2:
	movs r0, #0x19
	bl ChangeBGM
_080038F8:
	ldr r1, _08003910
	ldr r0, _08003914
_080038FC:
	str r0, [r1]
	ldr r0, _08003918
	str r0, [r1, #4]
	ldr r0, _0800391C
_08003904:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08003908:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08003910: .4byte 0x040000D4
_08003914: .4byte gUnknown_08015E8C
_08003918: .4byte gExaminationData
_0800391C: .4byte 0x8000003C

	THUMB_FUNC_START nullsub_8
nullsub_8: @ 0x08003920
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_8003924
sub_8003924: @ 0x08003924
	ldr r2, _0800394C
	ldr r1, _08003950
	str r1, [r2]
	ldr r1, _08003954
	str r1, [r2, #4]
	ldr r1, _08003958
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800395C
	str r1, [r2]
	ldr r1, _08003960
	str r1, [r2, #4]
	ldr r1, _08003964
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #6
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800394C: .4byte 0x040000D4
_08003950: .4byte gUnknown_0801618C
_08003954: .4byte gMain+0xD8
_08003958: .4byte 0x80000038
_0800395C: .4byte gUnknown_08016024
_08003960: .4byte gTalkData
_08003964: .4byte 0x800000B4

	THUMB_FUNC_START sub_8003968
sub_8003968: @ 0x08003968
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _0800399C
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _080039A0
	mov r1, sp
	str r1, [r2]
	ldr r1, _080039A4
	str r1, [r2, #4]
	ldr r1, _080039A8
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #0xb
	bls _08003990
	b _0800408A
_08003990:
	lsls r0, r0, #2
	ldr r1, _080039AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800399C: .4byte 0x0000FFFF
_080039A0: .4byte 0x040000D4
_080039A4: .4byte gExaminationData
_080039A8: .4byte 0x810000A0
_080039AC: .4byte _080039B0
_080039B0: @ jump table
	.4byte _08003A6C @ case 0
	.4byte _0800408A @ case 1
	.4byte _0800408A @ case 2
	.4byte _0800408A @ case 3
	.4byte _080039E0 @ case 4
	.4byte _08003AD4 @ case 5
	.4byte _08003C6C @ case 6
	.4byte _08003D74 @ case 7
	.4byte _08003E20 @ case 8
	.4byte _08003EA8 @ case 9
	.4byte _08003F30 @ case 10
	.4byte _08003FE4 @ case 11
_080039E0:
	movs r0, #0
	movs r1, #0xca
	bl GetFlag
	cmp r0, #0
	beq _08003A30
	movs r0, #0
	movs r1, #0xcc
	bl GetFlag
	cmp r0, #0
	bne _08003A02
	movs r0, #0x8d
	movs r1, #0xcc
	bl sub_8002CCC
	b _08003A12
_08003A02:
	movs r0, #5
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl ChangeBGM
_08003A12:
	ldr r1, _08003A20
	ldr r0, _08003A24
	str r0, [r1]
	ldr r0, _08003A28
	str r0, [r1, #4]
	ldr r0, _08003A2C
	b _08004086
	.align 2, 0
_08003A20: .4byte 0x040000D4
_08003A24: .4byte gUnknown_08016260
_08003A28: .4byte gExaminationData
_08003A2C: .4byte 0x80000032
_08003A30:
	movs r0, #0
	movs r1, #0xb0
	bl GetFlag
	cmp r0, #0
	beq _08003A4E
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl ChangeBGM
_08003A4E:
	ldr r1, _08003A5C
	ldr r0, _08003A60
	str r0, [r1]
	ldr r0, _08003A64
	str r0, [r1, #4]
	ldr r0, _08003A68
	b _08004086
	.align 2, 0
_08003A5C: .4byte 0x040000D4
_08003A60: .4byte gUnknown_080161FC
_08003A64: .4byte gExaminationData
_08003A68: .4byte 0x80000032
_08003A6C:
	movs r0, #0
	movs r1, #0xcc
	bl GetFlag
	cmp r0, #0
	beq _08003A8E
	movs r0, #0
	movs r1, #0xd9
	bl GetFlag
	cmp r0, #0
	bne _08003AB4
	movs r0, #0x9c
	movs r1, #0xd9
	bl sub_8002CCC
	b _08003AB4
_08003A8E:
	movs r0, #0
	movs r1, #0xb1
	bl GetFlag
	cmp r0, #0
	bne _08003AA4
	movs r0, #0x93
	movs r1, #0xb1
	bl sub_8002CCC
	b _08003AB4
_08003AA4:
	movs r0, #0x1b
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0
	bl ChangeBGM
_08003AB4:
	ldr r1, _08003AC4
	ldr r0, _08003AC8
	str r0, [r1]
	ldr r0, _08003ACC
	str r0, [r1, #4]
	ldr r0, _08003AD0
	b _08004086
	.align 2, 0
_08003AC4: .4byte 0x040000D4
_08003AC8: .4byte gUnknown_080162C4
_08003ACC: .4byte gExaminationData
_08003AD0: .4byte 0x80000014
_08003AD4:
	movs r0, #0
	movs r1, #0xcc
	bl GetFlag
	cmp r0, #0
	beq _08003B3C
	movs r0, #0
	movs r1, #0xcd
	bl GetFlag
	cmp r0, #0
	bne _08003AF6
	movs r0, #0xb5
	movs r1, #0xcd
	bl sub_8002CCC
	b _08003B1C
_08003AF6:
	movs r0, #0
	movs r1, #0xd0
	bl GetFlag
	cmp r0, #0
	bne _08003B16
	movs r2, #0x82
	lsls r2, r2, #4
	movs r0, #0x11
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl ChangeBGM
	b _08003B1C
_08003B16:
	movs r0, #0x1f
	bl ChangeBGM
_08003B1C:
	ldr r1, _08003B2C
	ldr r0, _08003B30
	str r0, [r1]
	ldr r0, _08003B34
	str r0, [r1, #4]
	ldr r0, _08003B38
	b _08004086
	.align 2, 0
_08003B2C: .4byte 0x040000D4
_08003B30: .4byte gUnknown_080162EC
_08003B34: .4byte gExaminationData
_08003B38: .4byte 0x80000032
_08003B3C:
	movs r0, #0
	movs r1, #0xc1
	bl GetFlag
	cmp r0, #0
	beq _08003B84
	movs r0, #0
	movs r1, #0xc2
	bl GetFlag
	cmp r0, #0
	bne _08003B5E
	movs r0, #0xb3
	movs r1, #0xc2
	bl sub_8002CCC
	b _08003B64
_08003B5E:
	movs r0, #0x1f
	bl ChangeBGM
_08003B64:
	ldr r1, _08003B74
	ldr r0, _08003B78
	str r0, [r1]
	ldr r0, _08003B7C
	str r0, [r1, #4]
	ldr r0, _08003B80
	b _08004086
	.align 2, 0
_08003B74: .4byte 0x040000D4
_08003B78: .4byte gUnknown_08016350
_08003B7C: .4byte gExaminationData
_08003B80: .4byte 0x80000032
_08003B84:
	movs r0, #0
	movs r1, #0xbb
	bl GetFlag
	cmp r0, #0
	beq _08003BE0
	movs r0, #0
	movs r1, #0xbc
	bl GetFlag
	cmp r0, #0
	beq _08003BE0
	movs r0, #0
	movs r1, #0xbd
	bl GetFlag
	cmp r0, #0
	bne _08003BB2
	movs r0, #0xae
	movs r1, #0xbd
	bl sub_8002CCC
	b _08003BC2
_08003BB2:
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl ChangeBGM
_08003BC2:
	ldr r1, _08003BD0
	ldr r0, _08003BD4
	str r0, [r1]
	ldr r0, _08003BD8
	str r0, [r1, #4]
	ldr r0, _08003BDC
	b _08004086
	.align 2, 0
_08003BD0: .4byte 0x040000D4
_08003BD4: .4byte gUnknown_080162EC
_08003BD8: .4byte gExaminationData
_08003BDC: .4byte 0x80000032
_08003BE0:
	movs r0, #0
	movs r1, #0xb8
	bl GetFlag
	cmp r0, #0
	beq _08003C30
	movs r0, #0
	movs r1, #0xb9
	bl GetFlag
	cmp r0, #0
	bne _08003C02
	movs r0, #0xa5
	movs r1, #0xb9
	bl sub_8002CCC
	b _08003C12
_08003C02:
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl ChangeBGM
_08003C12:
	ldr r1, _08003C20
	ldr r0, _08003C24
	str r0, [r1]
	ldr r0, _08003C28
	str r0, [r1, #4]
	ldr r0, _08003C2C
	b _08004086
	.align 2, 0
_08003C20: .4byte 0x040000D4
_08003C24: .4byte gUnknown_080162EC
_08003C28: .4byte gExaminationData
_08003C2C: .4byte 0x80000032
_08003C30:
	movs r0, #0
	movs r1, #0xb2
	bl GetFlag
	cmp r0, #0
	bne _08003C46
	movs r0, #0x9e
	movs r1, #0xb2
	bl sub_8002CCC
	b _08003C4C
_08003C46:
	movs r0, #0x1f
	bl ChangeBGM
_08003C4C:
	ldr r1, _08003C5C
	ldr r0, _08003C60
	str r0, [r1]
	ldr r0, _08003C64
	str r0, [r1, #4]
	ldr r0, _08003C68
	b _08004086
	.align 2, 0
_08003C5C: .4byte 0x040000D4
_08003C60: .4byte gUnknown_080162EC
_08003C64: .4byte gExaminationData
_08003C68: .4byte 0x80000032
_08003C6C:
	movs r0, #0
	movs r1, #0xcc
	bl GetFlag
	cmp r0, #0
	beq _08003CAC
	movs r0, #0
	movs r1, #0xce
	bl GetFlag
	cmp r0, #0
	bne _08003C8C
	movs r0, #0xd4
	movs r1, #0xce
	bl sub_8002CCC
_08003C8C:
	ldr r1, _08003C9C
	ldr r0, _08003CA0
	str r0, [r1]
	ldr r0, _08003CA4
	str r0, [r1, #4]
	ldr r0, _08003CA8
	b _08004086
	.align 2, 0
_08003C9C: .4byte 0x040000D4
_08003CA0: .4byte gUnknown_0801647C
_08003CA4: .4byte gExaminationData
_08003CA8: .4byte 0x80000064
_08003CAC:
	movs r0, #0
	movs r1, #0xbd
	bl GetFlag
	cmp r0, #0
	beq _08003D30
	movs r0, #0
	movs r1, #0xbe
	bl GetFlag
	cmp r0, #0
	bne _08003CCE
	movs r0, #0xcd
	movs r1, #0xbe
	bl sub_8002CCC
	b _08003D06
_08003CCE:
	movs r0, #0
	movs r1, #0xc1
	bl GetFlag
	adds r2, r0, #0
	cmp r2, #0
	bne _08003D06
	ldr r0, _08003D14
	adds r1, r0, #0
	adds r1, #0x90
	strh r2, [r1]
	adds r0, #0x92
	strh r2, [r0]
	ldr r0, _08003D18
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl PlayPersonAnimation
	ldr r0, _08003D1C
	movs r1, #1
	strb r1, [r0, #5]
	movs r1, #0xf
	bl sub_800B7A8
	movs r0, #0x15
	bl ChangeBGM
_08003D06:
	ldr r1, _08003D20
	ldr r0, _08003D24
	str r0, [r1]
	ldr r0, _08003D28
	str r0, [r1, #4]
	ldr r0, _08003D2C
	b _08004086
	.align 2, 0
_08003D14: .4byte gMain
_08003D18: .4byte 0x0000801C
_08003D1C: .4byte gInvestigation
_08003D20: .4byte 0x040000D4
_08003D24: .4byte gUnknown_080163B4
_08003D28: .4byte gExaminationData
_08003D2C: .4byte 0x80000064
_08003D30:
	movs r0, #0
	movs r1, #0xb8
	bl GetFlag
	cmp r0, #0
	bne _08003D42
	movs r0, #0xe
	bl PlayAnimation
_08003D42:
	movs r0, #0
	movs r1, #0xb3
	bl GetFlag
	cmp r0, #0
	bne _08003D56
	movs r0, #0xbf
	movs r1, #0xb3
	bl sub_8002CCC
_08003D56:
	ldr r1, _08003D64
	ldr r0, _08003D68
	str r0, [r1]
	ldr r0, _08003D6C
	str r0, [r1, #4]
	ldr r0, _08003D70
	b _08004086
	.align 2, 0
_08003D64: .4byte 0x040000D4
_08003D68: .4byte gUnknown_080163B4
_08003D6C: .4byte gExaminationData
_08003D70: .4byte 0x80000064
_08003D74:
	movs r0, #0
	movs r1, #0xcc
	bl GetFlag
	cmp r0, #0
	beq _08003DB4
	movs r0, #0
	movs r1, #0xcf
	bl GetFlag
	cmp r0, #0
	bne _08003D96
	movs r0, #0xeb
	movs r1, #0xcf
	bl sub_8002CCC
	b _08003DA6
_08003D96:
	movs r0, #0x1c
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x15
	bl ChangeBGM
_08003DA6:
	ldr r1, _08003DAC
	ldr r0, _08003DB0
	b _0800407E
	.align 2, 0
_08003DAC: .4byte 0x040000D4
_08003DB0: .4byte gUnknown_080165D0
_08003DB4:
	movs r0, #0
	movs r1, #0xba
	bl GetFlag
	cmp r0, #0
	beq _08003DF4
	movs r0, #0
	movs r1, #0xbb
	bl GetFlag
	cmp r0, #0
	bne _08003DD6
	movs r0, #0xe2
	movs r1, #0xbb
	bl sub_8002CCC
	b _08003DE6
_08003DD6:
	movs r0, #0x12
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x15
	bl ChangeBGM
_08003DE6:
	ldr r1, _08003DEC
	ldr r0, _08003DF0
	b _0800407E
	.align 2, 0
_08003DEC: .4byte 0x040000D4
_08003DF0: .4byte gUnknown_08016544
_08003DF4:
	movs r0, #0
	movs r1, #0xb4
	bl GetFlag
	cmp r0, #0
	bne _08003E0A
	movs r0, #0xda
	movs r1, #0xb4
	bl sub_8002CCC
	b _08003E10
_08003E0A:
	movs r0, #0x19
	bl ChangeBGM
_08003E10:
	ldr r1, _08003E18
	ldr r0, _08003E1C
	b _0800407E
	.align 2, 0
_08003E18: .4byte 0x040000D4
_08003E1C: .4byte gUnknown_08016544
_08003E20:
	movs r0, #0
	movs r1, #0xca
	bl GetFlag
	cmp r0, #0
	beq _08003E68
	movs r0, #0
	movs r1, #0xcb
	bl GetFlag
	cmp r0, #0
	bne _08003E44
	movs r0, #0x85
	lsls r0, r0, #1
	movs r1, #0xcb
	bl sub_8002CCC
	b _08003E4A
_08003E44:
	movs r0, #0x1f
	bl ChangeBGM
_08003E4A:
	ldr r1, _08003E58
	ldr r0, _08003E5C
	str r0, [r1]
	ldr r0, _08003E60
	str r0, [r1, #4]
	ldr r0, _08003E64
	b _08004086
	.align 2, 0
_08003E58: .4byte 0x040000D4
_08003E5C: .4byte gUnknown_080166D4
_08003E60: .4byte gExaminationData
_08003E64: .4byte 0x8000003C
_08003E68:
	movs r0, #0
	movs r1, #0xb5
	bl GetFlag
	cmp r0, #0
	bne _08003E84
	ldr r0, _08003E80
	movs r1, #0xb5
	bl sub_8002CCC
	b _08003E8A
	.align 2, 0
_08003E80: .4byte 0x00000103
_08003E84:
	movs r0, #0x1f
	bl ChangeBGM
_08003E8A:
	ldr r1, _08003E98
	ldr r0, _08003E9C
	str r0, [r1]
	ldr r0, _08003EA0
	str r0, [r1, #4]
	ldr r0, _08003EA4
	b _08004086
	.align 2, 0
_08003E98: .4byte 0x040000D4
_08003E9C: .4byte gUnknown_0801665C
_08003EA0: .4byte gExaminationData
_08003EA4: .4byte 0x8000003C
_08003EA8:
	movs r0, #0
	movs r1, #0xcc
	bl GetFlag
	cmp r0, #0
	beq _08003ED4
	ldr r1, _08003EC4
	ldr r0, _08003EC8
	str r0, [r1]
	ldr r0, _08003ECC
	str r0, [r1, #4]
	ldr r0, _08003ED0
	b _08004086
	.align 2, 0
_08003EC4: .4byte 0x040000D4
_08003EC8: .4byte gUnknown_080167C4
_08003ECC: .4byte gExaminationData
_08003ED0: .4byte 0x8000003C
_08003ED4:
	movs r0, #0
	movs r1, #0xc7
	bl GetFlag
	cmp r0, #0
	beq _08003EF8
	movs r0, #0
	movs r1, #0xc8
	bl GetFlag
	cmp r0, #0
	bne _08003F0C
	movs r0, #0x8b
	lsls r0, r0, #1
	movs r1, #0xc8
	bl sub_8002CCC
	b _08003F0C
_08003EF8:
	movs r0, #0
	movs r1, #0xb6
	bl GetFlag
	cmp r0, #0
	bne _08003F0C
	ldr r0, _08003F1C
	movs r1, #0xb6
	bl sub_8002CCC
_08003F0C:
	ldr r1, _08003F20
	ldr r0, _08003F24
	str r0, [r1]
	ldr r0, _08003F28
	str r0, [r1, #4]
	ldr r0, _08003F2C
	b _08004086
	.align 2, 0
_08003F1C: .4byte 0x0000010F
_08003F20: .4byte 0x040000D4
_08003F24: .4byte gUnknown_0801674C
_08003F28: .4byte gExaminationData
_08003F2C: .4byte 0x8000003C
_08003F30:
	movs r0, #0
	movs r1, #0xcc
	bl GetFlag
	cmp r0, #0
	beq _08003F60
	movs r0, #0x1f
	bl ChangeBGM
	ldr r1, _08003F50
	ldr r0, _08003F54
	str r0, [r1]
	ldr r0, _08003F58
	str r0, [r1, #4]
	ldr r0, _08003F5C
	b _08004086
	.align 2, 0
_08003F50: .4byte 0x040000D4
_08003F54: .4byte gUnknown_080168F0
_08003F58: .4byte gExaminationData
_08003F5C: .4byte 0x8000005A
_08003F60:
	movs r0, #0
	movs r1, #0xb8
	bl GetFlag
	cmp r0, #0
	beq _08003FA8
	movs r0, #0
	movs r1, #0xda
	bl GetFlag
	cmp r0, #0
	bne _08003F84
	movs r0, #0x94
	lsls r0, r0, #1
	movs r1, #0xda
	bl sub_8002CCC
	b _08003F8A
_08003F84:
	movs r0, #0x1f
	bl ChangeBGM
_08003F8A:
	ldr r1, _08003F98
	ldr r0, _08003F9C
	str r0, [r1]
	ldr r0, _08003FA0
	str r0, [r1, #4]
	ldr r0, _08003FA4
	b _08004086
	.align 2, 0
_08003F98: .4byte 0x040000D4
_08003F9C: .4byte gUnknown_0801683C
_08003FA0: .4byte gExaminationData
_08003FA4: .4byte 0x8000005A
_08003FA8:
	movs r0, #0
	movs r1, #0xb7
	bl GetFlag
	cmp r0, #0
	bne _08003FC0
	movs r0, #0x8f
	lsls r0, r0, #1
	movs r1, #0xb7
	bl sub_8002CCC
	b _08003FC6
_08003FC0:
	movs r0, #0x1f
	bl ChangeBGM
_08003FC6:
	ldr r1, _08003FD4
	ldr r0, _08003FD8
	str r0, [r1]
	ldr r0, _08003FDC
	str r0, [r1, #4]
	ldr r0, _08003FE0
	b _08004086
	.align 2, 0
_08003FD4: .4byte 0x040000D4
_08003FD8: .4byte gUnknown_0801683C
_08003FDC: .4byte gExaminationData
_08003FE0: .4byte 0x8000005A
_08003FE4:
	movs r0, #0
	movs r1, #0xd3
	bl GetFlag
	cmp r0, #0
	beq _08004030
	movs r0, #0
	movs r1, #0xd4
	bl GetFlag
	cmp r0, #0
	bne _0800400C
	ldr r0, _08004008
	movs r1, #0xd4
	bl sub_8002CCC
	b _08004022
	.align 2, 0
_08004008: .4byte 0x00000143
_0800400C:
	movs r0, #0
	movs r1, #0xd1
	bl GetFlag
	cmp r0, #0
	bne _08004022
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_08004022:
	ldr r1, _08004028
	ldr r0, _0800402C
	b _0800407E
	.align 2, 0
_08004028: .4byte 0x040000D4
_0800402C: .4byte gUnknown_08016A30
_08004030:
	movs r0, #0
	movs r1, #0xcc
	bl GetFlag
	cmp r0, #0
	beq _0800404C
	ldr r1, _08004044
	ldr r0, _08004048
	b _0800407E
	.align 2, 0
_08004044: .4byte 0x040000D4
_08004048: .4byte gUnknown_08016A30
_0800404C:
	movs r0, #0
	movs r1, #0xc5
	bl GetFlag
	cmp r0, #0
	bne _08004064
	movs r0, #0x9a
	lsls r0, r0, #1
	movs r1, #0xc5
	bl sub_8002CCC
	b _0800407A
_08004064:
	movs r0, #0
	movs r1, #0xcb
	bl GetFlag
	cmp r0, #0
	bne _0800407A
	movs r0, #0x18
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_0800407A:
	ldr r1, _08004090
	ldr r0, _08004094
_0800407E:
	str r0, [r1]
	ldr r0, _08004098
	str r0, [r1, #4]
	ldr r0, _0800409C
_08004086:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800408A:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08004090: .4byte 0x040000D4
_08004094: .4byte gUnknown_080169A4
_08004098: .4byte gExaminationData
_0800409C: .4byte 0x80000046

	THUMB_FUNC_START nullsub_9
nullsub_9: @ 0x080040A0
	bx lr
	.align 2, 0

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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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

	THUMB_FUNC_START sub_80044D0
sub_80044D0: @ 0x080044D0
	ldr r2, _080044F8
	ldr r1, _080044FC
	str r1, [r2]
	ldr r1, _08004500
	str r1, [r2, #4]
	ldr r1, _08004504
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08004508
	str r1, [r2]
	ldr r1, _0800450C
	str r1, [r2, #4]
	ldr r1, _08004510
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #6
	strb r1, [r0]
	bx lr
	.align 2, 0
_080044F8: .4byte 0x040000D4
_080044FC: .4byte gUnknown_08017590
_08004500: .4byte gMain+0xD8
_08004504: .4byte 0x80000054
_08004508: .4byte gUnknown_080173B0
_0800450C: .4byte gTalkData
_08004510: .4byte 0x800000F0

	THUMB_FUNC_START sub_8004514
sub_8004514: @ 0x08004514
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08004548
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _0800454C
	mov r1, sp
	str r1, [r2]
	ldr r1, _08004550
	str r1, [r2, #4]
	ldr r1, _08004554
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #0x11
	bls _0800453C
	b _080049DC
_0800453C:
	lsls r0, r0, #2
	ldr r1, _08004558
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004548: .4byte 0x0000FFFF
_0800454C: .4byte 0x040000D4
_08004550: .4byte gExaminationData
_08004554: .4byte 0x810000A0
_08004558: .4byte _0800455C
_0800455C: @ jump table
	.4byte _08004608 @ case 0
	.4byte _08004978 @ case 1
	.4byte _080049DC @ case 2
	.4byte _080049DC @ case 3
	.4byte _080045A4 @ case 4
	.4byte _080049DC @ case 5
	.4byte _080049DC @ case 6
	.4byte _080049DC @ case 7
	.4byte _080049DC @ case 8
	.4byte _080049DC @ case 9
	.4byte _080049DC @ case 10
	.4byte _080049DC @ case 11
	.4byte _080048C4 @ case 12
	.4byte _080049DC @ case 13
	.4byte _080046A0 @ case 14
	.4byte _0800473C @ case 15
	.4byte _080047DC @ case 16
	.4byte _08004888 @ case 17
_080045A4:
	movs r0, #0
	movs r1, #0xa2
	bl GetFlag
	cmp r0, #0
	beq _080045DA
	movs r0, #0
	movs r1, #0xa7
	bl GetFlag
	cmp r0, #0
	bne _080045C6
	movs r0, #0x8b
	movs r1, #0xa7
	bl sub_8002CCC
	b _080045F8
_080045C6:
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl ChangeBGM
	b _080045F8
_080045DA:
	movs r0, #0
	movs r1, #0x9f
	bl GetFlag
	cmp r0, #0
	beq _080045F8
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl ChangeBGM
_080045F8:
	ldr r1, _08004600
	ldr r0, _08004604
	b _080049D0
	.align 2, 0
_08004600: .4byte 0x040000D4
_08004604: .4byte gUnknown_08017638
_08004608:
	movs r0, #0
	movs r1, #0xb1
	bl GetFlag
	cmp r0, #0
	beq _0800464C
	movs r0, #0
	movs r1, #0xb2
	bl GetFlag
	cmp r0, #0
	bne _0800462A
	movs r0, #0x99
	movs r1, #0xb2
	bl sub_8002CCC
	b _0800467E
_0800462A:
	movs r0, #0
	movs r1, #0xb9
	bl GetFlag
	cmp r0, #0
	bne _08004640
	ldr r2, _08004648
	movs r0, #9
	adds r1, r2, #0
	bl sub_8002C98
_08004640:
	movs r0, #0
	bl ChangeBGM
	b _0800467E
	.align 2, 0
_08004648: .4byte 0x000055D0
_0800464C:
	movs r0, #0
	movs r1, #0x90
	bl GetFlag
	cmp r0, #0
	bne _08004662
	movs r0, #0x91
	movs r1, #0x90
	bl sub_8002CCC
	b _0800467E
_08004662:
	movs r0, #2
	movs r1, #0x85
	bl GetFlag
	cmp r0, #0
	bne _08004678
	ldr r2, _0800468C
	movs r0, #9
	adds r1, r2, #0
	bl sub_8002C98
_08004678:
	movs r0, #0
	bl ChangeBGM
_0800467E:
	ldr r1, _08004690
	ldr r0, _08004694
	str r0, [r1]
	ldr r0, _08004698
	str r0, [r1, #4]
	ldr r0, _0800469C
	b _080049D8
	.align 2, 0
_0800468C: .4byte 0x000055D0
_08004690: .4byte 0x040000D4
_08004694: .4byte gUnknown_0801769C
_08004698: .4byte gExaminationData
_0800469C: .4byte 0x80000014
_080046A0:
	movs r0, #0
	movs r1, #0x94
	bl GetFlag
	cmp r0, #0
	bne _080046B6
	movs r0, #0xa7
	movs r1, #0x94
	bl sub_8002CCC
	b _0800471E
_080046B6:
	movs r0, #0
	movs r1, #0x98
	bl GetFlag
	cmp r0, #0
	bne _08004718
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #2
	movs r1, #0x8b
	bl GetFlag
	cmp r0, #0
	beq _08004710
	movs r0, #2
	movs r1, #0x8c
	bl GetFlag
	cmp r0, #0
	beq _08004710
	movs r0, #2
	movs r1, #0x8d
	bl GetFlag
	cmp r0, #0
	beq _08004710
	movs r0, #2
	movs r1, #0x8e
	bl GetFlag
	cmp r0, #0
	beq _08004710
	movs r0, #0
	movs r1, #0x91
	bl GetFlag
	cmp r0, #0
	beq _08004710
	movs r0, #0xa8
	movs r1, #0x98
	bl sub_8002CCC
_08004710:
	movs r0, #1
	bl ChangeBGM
	b _0800471E
_08004718:
	movs r0, #0x1f
	bl ChangeBGM
_0800471E:
	ldr r1, _0800472C
	ldr r0, _08004730
	str r0, [r1]
	ldr r0, _08004734
	str r0, [r1, #4]
	ldr r0, _08004738
	b _080049D8
	.align 2, 0
_0800472C: .4byte 0x040000D4
_08004730: .4byte gUnknown_080176C4
_08004734: .4byte gExaminationData
_08004738: .4byte 0x80000028
_0800473C:
	movs r0, #0
	movs r1, #0xa8
	bl GetFlag
	cmp r0, #0
	beq _08004790
	movs r0, #0
	movs r1, #0xa9
	bl GetFlag
	cmp r0, #0
	bne _0800475E
	movs r0, #0xb7
	movs r1, #0xa9
	bl sub_8002CCC
	b _0800476E
_0800475E:
	ldr r2, _0800477C
	movs r0, #0x19
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0x16
	bl ChangeBGM
_0800476E:
	ldr r1, _08004780
	ldr r0, _08004784
	str r0, [r1]
	ldr r0, _08004788
	str r0, [r1, #4]
	ldr r0, _0800478C
	b _080049D8
	.align 2, 0
_0800477C: .4byte 0x00003F70
_08004780: .4byte 0x040000D4
_08004784: .4byte gUnknown_080177A0
_08004788: .4byte gExaminationData
_0800478C: .4byte 0x8000003C
_08004790:
	movs r0, #0
	movs r1, #0x99
	bl GetFlag
	cmp r0, #0
	bne _080047A6
	movs r0, #0xb3
	movs r1, #0x99
	bl sub_8002CCC
	b _080047AC
_080047A6:
	movs r0, #0x1f
	bl ChangeBGM
_080047AC:
	movs r0, #0
	movs r1, #0xa0
	bl GetFlag
	cmp r0, #0
	bne _080047BE
	movs r0, #0x10
	bl PlayAnimation
_080047BE:
	ldr r1, _080047CC
	ldr r0, _080047D0
	str r0, [r1]
	ldr r0, _080047D4
	str r0, [r1, #4]
	ldr r0, _080047D8
	b _080049D8
	.align 2, 0
_080047CC: .4byte 0x040000D4
_080047D0: .4byte gUnknown_08017714
_080047D4: .4byte gExaminationData
_080047D8: .4byte 0x80000046
_080047DC:
	movs r0, #0
	movs r1, #0xa2
	bl GetFlag
	cmp r0, #0
	beq _08004806
	movs r0, #0
	movs r1, #0xa8
	bl GetFlag
	cmp r0, #0
	bne _080047FE
	movs r0, #0xd1
	movs r1, #0xa8
	bl sub_8002CCC
	b _0800486A
_080047FE:
	movs r0, #0x1f
	bl ChangeBGM
	b _0800486A
_08004806:
	movs r0, #0
	movs r1, #0x9a
	bl GetFlag
	cmp r0, #0
	bne _0800481C
	movs r0, #0xc3
	movs r1, #0x9a
	bl sub_8002CCC
	b _0800486A
_0800481C:
	movs r0, #0
	movs r1, #0xa1
	bl GetFlag
	cmp r0, #0
	beq _08004864
	movs r0, #0
	movs r1, #0x9e
	bl GetFlag
	cmp r0, #0
	bne _08004864
	movs r0, #0
	movs r1, #0x9c
	bl GetFlag
	cmp r0, #0
	beq _0800484C
	movs r0, #0x1f
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	b _08004856
_0800484C:
	ldr r2, _08004860
	movs r0, #0x1f
	adds r1, r2, #0
	bl sub_8002C98
_08004856:
	movs r0, #0x16
	bl ChangeBGM
	b _0800486A
	.align 2, 0
_08004860: .4byte 0x00000B94
_08004864:
	movs r0, #0x1f
	bl ChangeBGM
_0800486A:
	ldr r1, _08004878
	ldr r0, _0800487C
	str r0, [r1]
	ldr r0, _08004880
	str r0, [r1, #4]
	ldr r0, _08004884
	b _080049D8
	.align 2, 0
_08004878: .4byte 0x040000D4
_0800487C: .4byte gUnknown_08017818
_08004880: .4byte gExaminationData
_08004884: .4byte 0x80000046
_08004888:
	movs r0, #0
	movs r1, #0xa4
	bl GetFlag
	cmp r0, #0
	bne _0800489E
	movs r0, #0xc2
	movs r1, #0xa4
	bl sub_8002CCC
	b _080048A4
_0800489E:
	movs r0, #0x1f
	bl ChangeBGM
_080048A4:
	ldr r1, _080048B4
	ldr r0, _080048B8
	str r0, [r1]
	ldr r0, _080048BC
	str r0, [r1, #4]
	ldr r0, _080048C0
	b _080049D8
	.align 2, 0
_080048B4: .4byte 0x040000D4
_080048B8: .4byte gUnknown_080178A4
_080048BC: .4byte gExaminationData
_080048C0: .4byte 0x8000001E
_080048C4:
	movs r0, #0
	movs r1, #0xb1
	bl GetFlag
	cmp r0, #0
	beq _080048E6
	movs r0, #0
	movs r1, #0xb7
	bl GetFlag
	cmp r0, #0
	bne _0800492A
	movs r0, #0xdf
	movs r1, #0xb7
	bl sub_8002CCC
	b _08004958
_080048E6:
	movs r0, #0
	movs r1, #0xa8
	bl GetFlag
	cmp r0, #0
	beq _08004908
	movs r0, #0
	movs r1, #0xae
	bl GetFlag
	cmp r0, #0
	bne _08004934
	movs r0, #0xde
	movs r1, #0xae
	bl sub_8002CCC
	b _08004958
_08004908:
	movs r0, #0
	movs r1, #0x9e
	bl GetFlag
	cmp r0, #0
	beq _0800493C
	movs r0, #0
	movs r1, #0xa6
	bl GetFlag
	cmp r0, #0
	bne _0800492A
	movs r0, #0xd6
	movs r1, #0xa6
	bl sub_8002CCC
	b _08004958
_0800492A:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_08004934:
	movs r0, #1
	bl ChangeBGM
	b _08004958
_0800493C:
	movs r0, #0
	movs r1, #0xa5
	bl GetFlag
	cmp r0, #0
	bne _08004952
	movs r0, #0xd5
	movs r1, #0xa5
	bl sub_8002CCC
	b _08004958
_08004952:
	movs r0, #1
	bl ChangeBGM
_08004958:
	ldr r1, _08004968
	ldr r0, _0800496C
	str r0, [r1]
	ldr r0, _08004970
	str r0, [r1, #4]
	ldr r0, _08004974
	b _080049D8
	.align 2, 0
_08004968: .4byte 0x040000D4
_0800496C: .4byte gUnknown_080178E0
_08004970: .4byte gExaminationData
_08004974: .4byte 0x8000003C
_08004978:
	movs r0, #2
	movs r1, #0x91
	bl GetFlag
	cmp r0, #0
	beq _080049B8
	movs r0, #0
	movs r1, #0xad
	bl GetFlag
	cmp r0, #0
	beq _080049B8
	movs r0, #0
	movs r1, #0xaf
	bl GetFlag
	cmp r0, #0
	bne _080049A6
	movs r0, #0xeb
	movs r1, #0xaf
	bl sub_8002CCC
	b _080049CC
_080049A6:
	movs r0, #0xc
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x1a
	bl ChangeBGM
	b _080049CC
_080049B8:
	movs r0, #0
	movs r1, #0xac
	bl GetFlag
	cmp r0, #0
	bne _080049CC
	movs r0, #0xe5
	movs r1, #0xac
	bl sub_8002CCC
_080049CC:
	ldr r1, _080049E4
	ldr r0, _080049E8
_080049D0:
	str r0, [r1]
	ldr r0, _080049EC
	str r0, [r1, #4]
	ldr r0, _080049F0
_080049D8:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080049DC:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080049E4: .4byte 0x040000D4
_080049E8: .4byte gUnknown_08017958
_080049EC: .4byte gExaminationData
_080049F0: .4byte 0x80000032

	THUMB_FUNC_START nullsub_10
nullsub_10: @ 0x080049F4
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_80049F8
sub_80049F8: @ 0x080049F8
	ldr r2, _08004A20
	ldr r1, _08004A24
	str r1, [r2]
	ldr r1, _08004A28
	str r1, [r2, #4]
	ldr r1, _08004A2C
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08004A30
	str r1, [r2]
	ldr r1, _08004A34
	str r1, [r2, #4]
	ldr r1, _08004A38
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	movs r1, #2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08004A20: .4byte 0x040000D4
_08004A24: .4byte gUnknown_08017C8C
_08004A28: .4byte gMain+0xD8
_08004A2C: .4byte 0x80000054
_08004A30: .4byte gUnknown_08017B24
_08004A34: .4byte gTalkData
_08004A38: .4byte 0x800000B4

	THUMB_FUNC_START sub_8004A3C
sub_8004A3C: @ 0x08004A3C
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08004A70
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08004A74
	mov r1, sp
	str r1, [r2]
	ldr r1, _08004A78
	str r1, [r2, #4]
	ldr r1, _08004A7C
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #0x12
	bls _08004A64
	b _08005018
_08004A64:
	lsls r0, r0, #2
	ldr r1, _08004A80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004A70: .4byte 0x0000FFFF
_08004A74: .4byte 0x040000D4
_08004A78: .4byte gExaminationData
_08004A7C: .4byte 0x810000A0
_08004A80: .4byte _08004A84
_08004A84: @ jump table
	.4byte _08004B28 @ case 0
	.4byte _08004FF4 @ case 1
	.4byte _08005018 @ case 2
	.4byte _08005018 @ case 3
	.4byte _08004AD0 @ case 4
	.4byte _08005018 @ case 5
	.4byte _08005018 @ case 6
	.4byte _08005018 @ case 7
	.4byte _08005018 @ case 8
	.4byte _08005018 @ case 9
	.4byte _08005018 @ case 10
	.4byte _08005018 @ case 11
	.4byte _08004ED8 @ case 12
	.4byte _08004FAC @ case 13
	.4byte _08004BA8 @ case 14
	.4byte _08004C2C @ case 15
	.4byte _08004CE0 @ case 16
	.4byte _08004DAC @ case 17
	.4byte _08004E78 @ case 18
_08004AD0:
	movs r0, #0
	movs r1, #0xc3
	bl GetFlag
	cmp r0, #0
	beq _08004B06
	movs r0, #0
	movs r1, #0xc1
	bl GetFlag
	cmp r0, #0
	bne _08004AF2
	movs r0, #0x86
	movs r1, #0xc1
	bl sub_8002CCC
	b _08004B1A
_08004AF2:
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl ChangeBGM
	b _08004B1A
_08004B06:
	movs r0, #0
	movs r1, #0xc0
	bl GetFlag
	cmp r0, #0
	bne _08004B1A
	movs r0, #0x80
	movs r1, #0xc0
	bl sub_8002CCC
_08004B1A:
	ldr r1, _08004B20
	ldr r0, _08004B24
	b _0800500C
	.align 2, 0
_08004B20: .4byte 0x040000D4
_08004B24: .4byte gUnknown_08017D34
_08004B28:
	movs r0, #0
	movs r1, #0xc3
	bl GetFlag
	cmp r0, #0
	beq _08004B4A
	movs r0, #0
	movs r1, #0xc4
	bl GetFlag
	cmp r0, #0
	bne _08004B86
	movs r0, #0x99
	movs r1, #0xc4
	bl sub_8002CCC
	b _08004B86
_08004B4A:
	movs r0, #0
	movs r1, #0xc5
	bl GetFlag
	cmp r0, #0
	beq _08004B60
	movs r0, #0x96
	movs r1, #0xc3
	bl sub_8002CCC
	b _08004B86
_08004B60:
	movs r0, #0
	movs r1, #0xc2
	bl GetFlag
	cmp r0, #0
	bne _08004B76
	movs r0, #0x8a
	movs r1, #0xc2
	bl sub_8002CCC
	b _08004B86
_08004B76:
	ldr r2, _08004B94
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #6
	bl ChangeBGM
_08004B86:
	ldr r1, _08004B98
	ldr r0, _08004B9C
	str r0, [r1]
	ldr r0, _08004BA0
	str r0, [r1, #4]
	ldr r0, _08004BA4
	b _08005014
	.align 2, 0
_08004B94: .4byte 0x000017B8
_08004B98: .4byte 0x040000D4
_08004B9C: .4byte gUnknown_08017D98
_08004BA0: .4byte gExaminationData
_08004BA4: .4byte 0x80000014
_08004BA8:
	movs r0, #0
	movs r1, #0xc3
	bl GetFlag
	cmp r0, #0
	beq _08004BF0
	movs r0, #0
	movs r1, #0xc7
	bl GetFlag
	cmp r0, #0
	bne _08004BCA
	movs r0, #0x9b
	movs r1, #0xc7
	bl sub_8002CCC
	b _08004C0C
_08004BCA:
	movs r0, #0
	movs r1, #0xc8
	bl GetFlag
	cmp r0, #0
	bne _08004BE8
	movs r0, #0x1f
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x16
	bl ChangeBGM
	b _08004C0C
_08004BE8:
	movs r0, #0x1f
	bl ChangeBGM
	b _08004C0C
_08004BF0:
	movs r0, #0
	movs r1, #0xc6
	bl GetFlag
	cmp r0, #0
	bne _08004C06
	movs r0, #0x9a
	movs r1, #0xc6
	bl sub_8002CCC
	b _08004C0C
_08004C06:
	movs r0, #0x1f
	bl ChangeBGM
_08004C0C:
	ldr r1, _08004C1C
	ldr r0, _08004C20
	str r0, [r1]
	ldr r0, _08004C24
	str r0, [r1, #4]
	ldr r0, _08004C28
	b _08005014
	.align 2, 0
_08004C1C: .4byte 0x040000D4
_08004C20: .4byte gUnknown_08017DC0
_08004C24: .4byte gExaminationData
_08004C28: .4byte 0x80000028
_08004C2C:
	movs r0, #0
	movs r1, #0xc3
	bl GetFlag
	cmp r0, #0
	beq _08004CA4
	movs r0, #0
	movs r1, #0xca
	bl GetFlag
	cmp r0, #0
	bne _08004C4E
	movs r0, #0xa6
	movs r1, #0xca
	bl sub_8002CCC
	b _08004C80
_08004C4E:
	movs r0, #0
	movs r1, #0xcb
	bl GetFlag
	cmp r0, #0
	bne _08004C70
	movs r0, #0
	movs r1, #0xd0
	bl GetFlag
	cmp r0, #0
	beq _08004C70
	movs r0, #0xa7
	movs r1, #0xcb
	bl sub_8002CCC
	b _08004C7A
_08004C70:
	ldr r2, _08004C90
	movs r0, #0x19
	adds r1, r2, #0
	bl sub_8002C98
_08004C7A:
	movs r0, #0x15
	bl ChangeBGM
_08004C80:
	ldr r1, _08004C94
	ldr r0, _08004C98
	str r0, [r1]
	ldr r0, _08004C9C
	str r0, [r1, #4]
	ldr r0, _08004CA0
	b _08005014
	.align 2, 0
_08004C90: .4byte 0x000013B0
_08004C94: .4byte 0x040000D4
_08004C98: .4byte gUnknown_08017E88
_08004C9C: .4byte gExaminationData
_08004CA0: .4byte 0x8000006E
_08004CA4:
	movs r0, #0
	movs r1, #0xc9
	bl GetFlag
	cmp r0, #0
	bne _08004CBA
	movs r0, #0xa5
	movs r1, #0xc9
	bl sub_8002CCC
	b _08004CC0
_08004CBA:
	movs r0, #0x1f
	bl ChangeBGM
_08004CC0:
	ldr r1, _08004CD0
	ldr r0, _08004CD4
	str r0, [r1]
	ldr r0, _08004CD8
	str r0, [r1, #4]
	ldr r0, _08004CDC
	b _08005014
	.align 2, 0
_08004CD0: .4byte 0x040000D4
_08004CD4: .4byte gUnknown_08017E10
_08004CD8: .4byte gExaminationData
_08004CDC: .4byte 0x8000003C
_08004CE0:
	movs r0, #0
	movs r1, #0xc8
	bl GetFlag
	cmp r0, #0
	beq _08004D50
	movs r0, #0
	movs r1, #0xf1
	bl GetFlag
	cmp r0, #0
	bne _08004D10
	movs r0, #0
	movs r1, #0xcf
	bl GetFlag
	cmp r0, #0
	beq _08004D10
	movs r0, #0x9c
	lsls r0, r0, #1
	movs r1, #0xf1
	bl sub_8002CCC
	b _08004D8E
_08004D10:
	movs r0, #0
	movs r1, #0xd3
	bl GetFlag
	cmp r0, #0
	bne _08004D26
	movs r0, #0xc9
	movs r1, #0xd3
	bl sub_8002CCC
	b _08004D8E
_08004D26:
	movs r0, #0
	movs r1, #0xd7
	bl GetFlag
	cmp r0, #0
	bne _08004D48
	ldr r0, _08004D44
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x16
	bl ChangeBGM
	b _08004D8E
	.align 2, 0
_08004D44: .4byte 0x0000401F
_08004D48:
	movs r0, #0x1f
	bl ChangeBGM
	b _08004D8E
_08004D50:
	movs r0, #0
	movs r1, #0xd2
	bl GetFlag
	cmp r0, #0
	bne _08004D66
	movs r0, #0xbc
	movs r1, #0xd2
	bl sub_8002CCC
	b _08004D8E
_08004D66:
	movs r0, #0
	movs r1, #0xc5
	bl GetFlag
	cmp r0, #0
	bne _08004D88
	ldr r0, _08004D84
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #1
	bl ChangeBGM
	b _08004D8E
	.align 2, 0
_08004D84: .4byte 0x00004014
_08004D88:
	movs r0, #0x1f
	bl ChangeBGM
_08004D8E:
	ldr r1, _08004D9C
	ldr r0, _08004DA0
	str r0, [r1]
	ldr r0, _08004DA4
	str r0, [r1, #4]
	ldr r0, _08004DA8
	b _08005014
	.align 2, 0
_08004D9C: .4byte 0x040000D4
_08004DA0: .4byte gUnknown_08017F64
_08004DA4: .4byte gExaminationData
_08004DA8: .4byte 0x80000046
_08004DAC:
	movs r0, #0
	movs r1, #0xdd
	bl GetFlag
	cmp r0, #0
	beq _08004DCE
	movs r0, #0
	movs r1, #0xdb
	bl GetFlag
	cmp r0, #0
	bne _08004E34
	movs r0, #0xbb
	movs r1, #0xdb
	bl sub_8002CCC
	b _08004E58
_08004DCE:
	movs r0, #0
	movs r1, #0xd7
	bl GetFlag
	cmp r0, #0
	beq _08004DF0
	movs r0, #0
	movs r1, #0xda
	bl GetFlag
	cmp r0, #0
	bne _08004E34
	movs r0, #0xba
	movs r1, #0xda
	bl sub_8002CCC
	b _08004E58
_08004DF0:
	movs r0, #0
	movs r1, #0xc8
	bl GetFlag
	cmp r0, #0
	beq _08004E3C
	movs r0, #0
	movs r1, #0xd9
	bl GetFlag
	cmp r0, #0
	bne _08004E12
	movs r0, #0xb8
	movs r1, #0xd9
	bl sub_8002CCC
	b _08004E58
_08004E12:
	movs r0, #0
	movs r1, #0xdc
	bl GetFlag
	cmp r0, #0
	bne _08004E34
	movs r0, #0
	movs r1, #0xd1
	bl GetFlag
	cmp r0, #0
	beq _08004E34
	movs r0, #0xb9
	movs r1, #0xdc
	bl sub_8002CCC
	b _08004E58
_08004E34:
	movs r0, #0x1f
	bl ChangeBGM
	b _08004E58
_08004E3C:
	movs r0, #0
	movs r1, #0xd8
	bl GetFlag
	cmp r0, #0
	bne _08004E52
	movs r0, #0xb7
	movs r1, #0xd8
	bl sub_8002CCC
	b _08004E58
_08004E52:
	movs r0, #0x1f
	bl ChangeBGM
_08004E58:
	ldr r1, _08004E68
	ldr r0, _08004E6C
	str r0, [r1]
	ldr r0, _08004E70
	str r0, [r1, #4]
	ldr r0, _08004E74
	b _08005014
	.align 2, 0
_08004E68: .4byte 0x040000D4
_08004E6C: .4byte gUnknown_08017FF0
_08004E70: .4byte gExaminationData
_08004E74: .4byte 0x8000001E
_08004E78:
	movs r0, #0
	movs r1, #0xe6
	bl GetFlag
	cmp r0, #0
	bne _08004E8E
	movs r0, #0xf5
	movs r1, #0xe6
	bl sub_8002CCC
	b _08004EB8
_08004E8E:
	movs r0, #0
	movs r1, #0xe7
	bl GetFlag
	cmp r0, #0
	beq _08004EA6
	movs r0, #0x20
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	b _08004EB2
_08004EA6:
	movs r2, #0xad
	lsls r2, r2, #4
	movs r0, #0x20
	adds r1, r2, #0
	bl sub_8002C98
_08004EB2:
	movs r0, #0x1a
	bl ChangeBGM
_08004EB8:
	ldr r1, _08004EC8
	ldr r0, _08004ECC
	str r0, [r1]
	ldr r0, _08004ED0
	str r0, [r1, #4]
	ldr r0, _08004ED4
	b _08005014
	.align 2, 0
_08004EC8: .4byte 0x040000D4
_08004ECC: .4byte gUnknown_0801802C
_08004ED0: .4byte gExaminationData
_08004ED4: .4byte 0x80000046
_08004ED8:
	movs r0, #0
	movs r1, #0xdd
	bl GetFlag
	cmp r0, #0
	beq _08004F06
	movs r0, #0
	movs r1, #0xe1
	bl GetFlag
	cmp r0, #0
	bne _08004EFA
	movs r0, #0xe9
	movs r1, #0xe1
	bl sub_8002CCC
	b _08004F8E
_08004EFA:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	b _08004F72
_08004F06:
	movs r0, #0
	movs r1, #0xdc
	bl GetFlag
	cmp r0, #0
	beq _08004F28
	movs r0, #0
	movs r1, #0xe0
	bl GetFlag
	cmp r0, #0
	bne _08004F8E
	movs r0, #0xe8
	movs r1, #0xe0
	bl sub_8002CCC
	b _08004F8E
_08004F28:
	movs r0, #0
	movs r1, #0xc8
	bl GetFlag
	cmp r0, #0
	beq _08004F7A
	movs r0, #0
	movs r1, #0xdf
	bl GetFlag
	cmp r0, #0
	bne _08004F4A
	movs r0, #0xdd
	movs r1, #0xdf
	bl sub_8002CCC
	b _08004F8E
_08004F4A:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #2
	movs r1, #0xbb
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xf2
	bl GetFlag
	cmp r0, #0
	beq _08004F72
	movs r0, #0xc
	bl ChangeBGM
	b _08004F8E
_08004F72:
	movs r0, #1
	bl ChangeBGM
	b _08004F8E
_08004F7A:
	movs r0, #0
	movs r1, #0xde
	bl GetFlag
	cmp r0, #0
	bne _08004F8E
	movs r0, #0xdc
	movs r1, #0xde
	bl sub_8002CCC
_08004F8E:
	ldr r1, _08004F9C
	ldr r0, _08004FA0
	str r0, [r1]
	ldr r0, _08004FA4
	str r0, [r1, #4]
	ldr r0, _08004FA8
	b _08005014
	.align 2, 0
_08004F9C: .4byte 0x040000D4
_08004FA0: .4byte gUnknown_080180B8
_08004FA4: .4byte gExaminationData
_08004FA8: .4byte 0x8000003C
_08004FAC:
	movs r0, #0
	movs r1, #0xec
	bl GetFlag
	cmp r0, #0
	bne _08004FC4
	movs r0, #0x84
	lsls r0, r0, #1
	movs r1, #0xec
	bl sub_8002CCC
	b _08004FD6
_08004FC4:
	movs r2, #0xa2
	lsls r2, r2, #3
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0xc
	bl ChangeBGM
_08004FD6:
	ldr r1, _08004FE4
	ldr r0, _08004FE8
	str r0, [r1]
	ldr r0, _08004FEC
	str r0, [r1, #4]
	ldr r0, _08004FF0
	b _08005014
	.align 2, 0
_08004FE4: .4byte 0x040000D4
_08004FE8: .4byte gUnknown_08018130
_08004FEC: .4byte gExaminationData
_08004FF0: .4byte 0x80000028
_08004FF4:
	movs r0, #0
	movs r1, #0xe5
	bl GetFlag
	cmp r0, #0
	bne _08005008
	movs r0, #0xef
	movs r1, #0xe5
	bl sub_8002CCC
_08005008:
	ldr r1, _08005020
	ldr r0, _08005024
_0800500C:
	str r0, [r1]
	ldr r0, _08005028
	str r0, [r1, #4]
	ldr r0, _0800502C
_08005014:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08005018:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08005020: .4byte 0x040000D4
_08005024: .4byte gUnknown_08018180
_08005028: .4byte gExaminationData
_0800502C: .4byte 0x80000032

	THUMB_FUNC_START nullsub_11
nullsub_11: @ 0x08005030
	bx lr
	.align 2, 0

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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
	bl ChangeBGM
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
