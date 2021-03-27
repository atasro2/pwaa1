	.include "asm/macros.inc"
	.syntax unified

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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
