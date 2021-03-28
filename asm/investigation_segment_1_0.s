	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START sub_8002DB4
sub_8002DB4: @ 0x08002DB4
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08002DE4
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08002DE8
	mov r1, sp
	str r1, [r2]
	ldr r1, _08002DEC
	str r1, [r2, #4]
	ldr r1, _08002DF0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #5
	bls _08002DDA
	b _08003170
_08002DDA:
	lsls r0, r0, #2
	ldr r1, _08002DF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002DE4: .4byte 0x0000FFFF
_08002DE8: .4byte 0x040000D4
_08002DEC: .4byte gExaminationData
_08002DF0: .4byte 0x810000A0
_08002DF4: .4byte _08002DF8
_08002DF8: @ jump table
	.4byte _08002E10 @ case 0
	.4byte _08002F34 @ case 1
	.4byte _08002F88 @ case 2
	.4byte _08003090 @ case 3
	.4byte _08003170 @ case 4
	.4byte _08003104 @ case 5
_08002E10:
	movs r0, #0
	movs r1, #0x53
	bl GetFlag
	cmp r0, #0
	beq _08002E50
	movs r0, #0
	movs r1, #0x4f
	bl GetFlag
	cmp r0, #0
	bne _08002E30
	movs r0, #0xb1
	movs r1, #0x4f
	bl sub_8002CCC
_08002E30:
	ldr r1, _08002E40
	ldr r0, _08002E44
	str r0, [r1]
	ldr r0, _08002E48
	str r0, [r1, #4]
	ldr r0, _08002E4C
	b _0800316C
	.align 2, 0
_08002E40: .4byte 0x040000D4
_08002E44: .4byte gUnknown_08015178
_08002E48: .4byte gExaminationData
_08002E4C: .4byte 0x80000032
_08002E50:
	movs r0, #0
	movs r1, #0x48
	bl GetFlag
	cmp r0, #0
	beq _08002EA0
	movs r0, #0
	movs r1, #0x4a
	bl GetFlag
	cmp r0, #0
	bne _08002E72
	movs r0, #0x94
	movs r1, #0x4a
	bl sub_8002CCC
	b _08002E82
_08002E72:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0x19
	bl PlayBGM
_08002E82:
	ldr r1, _08002E90
	ldr r0, _08002E94
	str r0, [r1]
	ldr r0, _08002E98
	str r0, [r1, #4]
	ldr r0, _08002E9C
	b _0800316C
	.align 2, 0
_08002E90: .4byte 0x040000D4
_08002E94: .4byte gUnknown_08015178
_08002E98: .4byte gExaminationData
_08002E9C: .4byte 0x80000032
_08002EA0:
	movs r0, #0
	movs r1, #0x41
	bl GetFlag
	cmp r0, #0
	beq _08002F1C
	movs r0, #0
	movs r1, #0x42
	bl GetFlag
	cmp r0, #0
	bne _08002EC2
	movs r0, #0x84
	movs r1, #0x42
	bl sub_8002CCC
	b _08002F0C
_08002EC2:
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
	movs r0, #0
	movs r1, #0x44
	bl GetFlag
	cmp r0, #0
	beq _08002F06
	movs r0, #0
	movs r1, #0x43
	bl GetFlag
	cmp r0, #0
	beq _08002F06
	movs r0, #0
	movs r1, #0x45
	bl GetFlag
	cmp r0, #0
	beq _08002F06
	movs r0, #0
	movs r1, #0x46
	bl GetFlag
	cmp r0, #0
	beq _08002F06
	movs r0, #0x85
	movs r1, #0x47
	bl sub_8002CCC
	b _08002F0C
_08002F06:
	movs r0, #0xc
	bl PlayBGM
_08002F0C:
	ldr r1, _08002F14
	ldr r0, _08002F18
	b _08003164
	.align 2, 0
_08002F14: .4byte 0x040000D4
_08002F18: .4byte gUnknown_08015100
_08002F1C:
	movs r0, #0
	movs r1, #0x3f
	bl GetFlag
	cmp r0, #0
	bne _08002F2A
	b _08003170
_08002F2A:
	movs r0, #0x82
	movs r1, #0x40
	bl sub_8002CCC
	b _08003170
_08002F34:
	movs r0, #0
	movs r1, #0x41
	bl GetFlag
	cmp r0, #0
	bne _08002F50
	movs r0, #0xb3
	movs r1, #0x41
	bl sub_8002CCC
	movs r0, #0x1b
	bl PlayAnimation
	b _08002F56
_08002F50:
	movs r0, #0xc
	bl PlayBGM
_08002F56:
	movs r0, #0
	movs r1, #0x49
	bl GetFlag
	cmp r0, #0
	beq _08002F68
	movs r0, #0xc
	bl PlayAnimation
_08002F68:
	ldr r1, _08002F78
	ldr r0, _08002F7C
	str r0, [r1]
	ldr r0, _08002F80
	str r0, [r1, #4]
	ldr r0, _08002F84
	b _0800316C
	.align 2, 0
_08002F78: .4byte 0x040000D4
_08002F7C: .4byte gUnknown_080151DC
_08002F80: .4byte gExaminationData
_08002F84: .4byte 0x8000006E
_08002F88:
	movs r0, #0
	movs r1, #0x62
	bl GetFlag
	cmp r0, #0
	beq _08002FEC
	movs r0, #0
	movs r1, #0x64
	bl GetFlag
	cmp r0, #0
	beq _08002FEC
	movs r0, #0
	movs r1, #0x63
	bl GetFlag
	cmp r0, #0
	beq _08002FEC
	movs r0, #0
	movs r1, #0x5c
	bl GetFlag
	cmp r0, #0
	bne _08002FC2
	movs r0, #0xe1
	movs r1, #0x5c
	bl sub_8002CCC
	b _0800306E
_08002FC2:
	ldr r2, _08002FE0
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0
	movs r1, #0x5a
	bl GetFlag
	cmp r0, #0
	beq _08002FE4
	movs r0, #0xc
	bl PlayBGM
	b _0800306E
	.align 2, 0
_08002FE0: .4byte 0x00001FB0
_08002FE4:
	movs r0, #0x1c
	bl PlayBGM
	b _0800306E
_08002FEC:
	movs r0, #0
	movs r1, #0x53
	bl GetFlag
	cmp r0, #0
	beq _0800300E
	movs r0, #0
	movs r1, #0x61
	bl GetFlag
	cmp r0, #0
	bne _0800306E
	movs r0, #0xea
	movs r1, #0x61
	bl sub_8002CCC
	b _0800306E
_0800300E:
	movs r0, #0
	movs r1, #0x50
	bl GetFlag
	cmp r0, #0
	beq _08003048
	movs r0, #0
	movs r1, #0x5b
	bl GetFlag
	cmp r0, #0
	bne _08003030
	movs r0, #0xd8
	movs r1, #0x5b
	bl sub_8002CCC
	b _0800306E
_08003030:
	ldr r2, _08003044
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0
	bl PlayBGM
	b _0800306E
	.align 2, 0
_08003044: .4byte 0x00001FB0
_08003048:
	movs r0, #0
	movs r1, #0x48
	bl GetFlag
	cmp r0, #0
	bne _0800305E
	movs r0, #0xc2
	movs r1, #0x48
	bl sub_8002CCC
	b _0800306E
_0800305E:
	ldr r2, _0800307C
	movs r0, #4
	adds r1, r2, #0
	bl sub_8002C98
	movs r0, #0
	bl PlayBGM
_0800306E:
	ldr r1, _08003080
	ldr r0, _08003084
	str r0, [r1]
	ldr r0, _08003088
	str r0, [r1, #4]
	ldr r0, _0800308C
	b _0800316C
	.align 2, 0
_0800307C: .4byte 0x00001FB0
_08003080: .4byte 0x040000D4
_08003084: .4byte gUnknown_080152B8
_08003088: .4byte gExaminationData
_0800308C: .4byte 0x80000014
_08003090:
	movs r0, #0
	movs r1, #0x52
	bl GetFlag
	cmp r0, #0
	beq _080030D0
	movs r0, #0
	movs r1, #0x53
	bl GetFlag
	cmp r0, #0
	bne _080030B2
	movs r0, #0xfb
	movs r1, #0x53
	bl sub_8002CCC
	b _080030E4
_080030B2:
	movs r0, #0
	movs r1, #0x53
	bl GetFlag
	cmp r0, #0
	beq _080030C8
	movs r0, #0xc
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_080030C8:
	movs r0, #0x1a
	bl PlayBGM
	b _080030E4
_080030D0:
	movs r0, #0
	movs r1, #0x50
	bl GetFlag
	cmp r0, #0
	bne _080030E4
	movs r0, #0xfa
	movs r1, #0x50
	bl sub_8002CCC
_080030E4:
	ldr r1, _080030F4
	ldr r0, _080030F8
	str r0, [r1]
	ldr r0, _080030FC
	str r0, [r1, #4]
	ldr r0, _08003100
	b _0800316C
	.align 2, 0
_080030F4: .4byte 0x040000D4
_080030F8: .4byte gUnknown_080152E0
_080030FC: .4byte gExaminationData
_08003100: .4byte 0x80000032
_08003104:
	movs r0, #0
	movs r1, #0x5a
	bl GetFlag
	cmp r0, #0
	beq _0800312E
	movs r0, #0
	movs r1, #0x54
	bl GetFlag
	cmp r0, #0
	bne _08003126
	movs r0, #0xf7
	movs r1, #0x54
	bl sub_8002CCC
	b _08003160
_08003126:
	movs r0, #0xc
	bl PlayBGM
	b _08003160
_0800312E:
	movs r0, #0
	movs r1, #0x51
	bl GetFlag
	cmp r0, #0
	bne _08003144
	movs r0, #0xeb
	movs r1, #0x51
	bl sub_8002CCC
	b _08003160
_08003144:
	movs r0, #0
	movs r1, #0x52
	bl GetFlag
	cmp r0, #0
	beq _0800315A
	movs r0, #0x16
	movs r1, #0
	movs r2, #0
	bl sub_8002C98
_0800315A:
	movs r0, #0x16
	bl PlayBGM
_08003160:
	ldr r1, _08003178
	ldr r0, _0800317C
_08003164:
	str r0, [r1]
	ldr r0, _08003180
	str r0, [r1, #4]
	ldr r0, _08003184
_0800316C:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08003170:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08003178: .4byte 0x040000D4
_0800317C: .4byte gUnknown_08015344
_08003180: .4byte gExaminationData
_08003184: .4byte 0x8000003C

	THUMB_FUNC_START nullsub_7
nullsub_7: @ 0x08003188
	bx lr
	.align 2, 0
