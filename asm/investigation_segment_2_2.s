	.include "asm/macros.inc"
	.syntax unified

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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
	b _08003B1C
_08003B16:
	movs r0, #0x1f
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
	bl PlayBGM
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
