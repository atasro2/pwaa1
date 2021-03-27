	.include "asm/macros.inc"
	.syntax unified

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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
	b _0800471E
_08004718:
	movs r0, #0x1f
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
	b _0800486A
	.align 2, 0
_08004860: .4byte 0x00000B94
_08004864:
	movs r0, #0x1f
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
