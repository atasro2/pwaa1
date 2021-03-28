	.include "asm/macros.inc"
	.syntax unified

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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
	b _08004C0C
_08004BE8:
	movs r0, #0x1f
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
	b _08004D8E
	.align 2, 0
_08004D44: .4byte 0x0000401F
_08004D48:
	movs r0, #0x1f
	bl PlayBGM
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
	bl PlayBGM
	b _08004D8E
	.align 2, 0
_08004D84: .4byte 0x00004014
_08004D88:
	movs r0, #0x1f
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
	b _08004F8E
_08004F72:
	movs r0, #1
	bl PlayBGM
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
	bl PlayBGM
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
