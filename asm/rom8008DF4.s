	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START SelectEpisodeProcess
SelectEpisodeProcess: @ 0x080094E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #0xc
	bls _080094FA
	b _08009A52
_080094FA:
	lsls r0, r0, #2
	ldr r1, _08009504
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009504: .4byte _08009508
_08009508: @ jump table
	.4byte _0800953C @ case 0
	.4byte _08009544 @ case 1
	.4byte _080095E4 @ case 2
	.4byte _080095EC @ case 3
	.4byte _080095F4 @ case 4
	.4byte _080095FC @ case 5
	.4byte _08009688 @ case 6
	.4byte _0800981E @ case 7
	.4byte _080098D8 @ case 8
	.4byte _0800994C @ case 9
	.4byte _08009966 @ case 10
	.4byte _080099EE @ case 11
	.4byte _08009A44 @ case 12
_0800953C:
	adds r0, r5, #0
	bl sub_8008DF4
	b _08009A52
_08009544:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009550
	b _08009A52
_08009550:
	adds r0, r5, #0
	bl sub_8008E18
	movs r0, #0xf0
	ldrb r1, [r5, #0x17]
	ands r0, r1
	adds r2, r5, #0
	adds r2, #0x8e
	str r2, [sp]
	cmp r0, #0
	beq _0800956E
	ldr r0, _080095A8
	adds r0, #0xc2
	ldrb r0, [r0]
	strb r0, [r2]
_0800956E:
	ldrb r0, [r5, #7]
	strb r0, [r5, #0x13]
	ldr r4, _080095AC
	movs r7, #0
	ldr r3, _080095B0
	mov sl, r3
	ldr r0, _080095B4
	mov sb, r0
_0800957E:
	ldr r1, [sp]
	ldrb r2, [r1]
	asrs r2, r7
	movs r6, #0
	adds r3, r7, #1
	mov r8, r3
	movs r0, #1
	ands r2, r0
	str r2, [sp, #8]
	mov ip, r6
	lsls r1, r7, #6
	adds r2, r1, #0
	add r2, sl
	ldr r3, _080095B8
	adds r1, r1, r3
_0800959C:
	ldrb r0, [r5, #0x13]
	cmp r0, r7
	bne _080095BC
	strh r1, [r4, #4]
	b _080095CC
	.align 2, 0
_080095A8: .4byte gSaveDataBuffer
_080095AC: .4byte gOamObjects+0x130
_080095B0: .4byte 0x0000A1E0
_080095B4: .4byte 0x0000A1A0
_080095B8: .4byte 0x000091E0
_080095BC:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080095C6
	strh r2, [r4, #4]
	b _080095CC
_080095C6:
	mov r0, ip
	add r0, sb
	strh r0, [r4, #4]
_080095CC:
	adds r4, #8
	movs r3, #0x20
	add ip, r3
	adds r2, #0x20
	adds r1, #0x20
	adds r6, #1
	cmp r6, #1
	bls _0800959C
	mov r7, r8
	cmp r7, #3
	bls _0800957E
	b _08009A52
_080095E4:
	adds r0, r5, #0
	bl sub_8008F68
	b _08009A52
_080095EC:
	adds r0, r5, #0
	bl sub_8008FE8
	b _08009A52
_080095F4:
	adds r0, r5, #0
	bl sub_8009068
	b _08009A52
_080095FC:
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _08009674
	ands r1, r2
	strh r1, [r0]
	ldr r4, _08009678
	movs r7, #3
	mov sb, r0
	mov ip, sb
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
_08009618:
	movs r6, #0
	adds r7, #1
	mov r8, r7
	movs r1, #0xc0
	lsls r1, r1, #8
_08009622:
	mov r0, ip
	ldrh r3, [r0]
	add r3, sl
	ands r3, r2
	adds r0, r3, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r6, #1
	cmp r6, #1
	bls _08009622
	mov r7, r8
	cmp r7, #3
	bls _08009618
	mov r1, sb
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _08009648
	b _08009A52
_08009648:
	ldr r4, _08009678
	ldr r0, _0800967C
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	ldr r1, _08009680
	ldr r0, _08009684
	strh r0, [r1, #0x1e]
	movs r0, #2
	bl ChangeScriptSection
	movs r0, #0xc0
	movs r1, #0x14
	bl SetTimedKeysAndDelay
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	b _08009A52
	.align 2, 0
_08009674: .4byte 0x000001FF
_08009678: .4byte gOamObjects+0x160
_0800967C: .4byte 0x0000C068
_08009680: .4byte gScriptContext
_08009684: .4byte 0x0000FFFF
_08009688:
	ldr r1, _080096D0
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	adds r2, r5, #0
	adds r2, #0x8e
	str r2, [sp]
	cmp r0, #0
	beq _0800977A
	ldr r2, _080096D4
	ldrh r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080096D8
	ldrb r6, [r5, #0x13]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_080096B0:
	ldrb r0, [r5, #0x13]
	subs r0, #1
	ands r0, r4
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0x13]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _080096C8
	cmp r6, r0
	bne _08009754
_080096C8:
	adds r7, #1
	cmp r7, #3
	bls _080096B0
	b _0800977A
	.align 2, 0
_080096D0: .4byte gScriptContext
_080096D4: .4byte gJoypad
_080096D8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800970E
	ldrb r6, [r5, #0x13]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_080096EE:
	ldrb r0, [r5, #0x13]
	adds r0, #1
	ands r0, r4
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0x13]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _08009706
	cmp r6, r0
	bne _08009754
_08009706:
	adds r7, #1
	cmp r7, #3
	bls _080096EE
	b _0800977A
_0800970E:
	ldrh r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800975C
	movs r0, #0x2b
	bl PlaySE
	adds r0, r5, #0
	adds r0, #0x86
	movs r2, #0
	strh r4, [r0]
	strb r2, [r5, #0x14]
	strb r2, [r5, #0x15]
	ldr r1, _0800974C
	adds r1, #0x4a
	ldr r0, _08009750
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r0, #0xfd
	ldrb r1, [r5, #0x16]
	ands r0, r1
	strb r0, [r5, #0x16]
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	strb r2, [r5, #7]
	strb r2, [r5, #6]
	b _0800977A
	.align 2, 0
_0800974C: .4byte gIORegisters
_08009750: .4byte 0x0000FDFF
_08009754:
	movs r0, #0x2a
	bl PlaySE
	b _0800977A
_0800975C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800977A
	movs r0, #0x2c
	bl PlaySE
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0xc
	strb r0, [r5, #5]
_0800977A:
	ldr r4, _080097B0
	movs r7, #0
_0800977E:
	ldrb r2, [r5, #0x13]
	cmp r7, r2
	bne _080097D0
	movs r6, #0
	adds r3, r7, #1
	mov r8, r3
	ldr r0, [sp]
	mov ip, r0
	movs r1, #1
	mov sl, r1
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _080097B4
	adds r1, r0, r3
	ldr r0, _080097B8
	mov sb, r0
_0800979E:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _080097BC
	strh r1, [r4, #4]
	b _080097C2
	.align 2, 0
_080097B0: .4byte gOamObjects+0x130
_080097B4: .4byte 0x000091E0
_080097B8: .4byte 0x000091A0
_080097BC:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_080097C2:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r6, #1
	cmp r6, #1
	bls _0800979E
	b _08009816
_080097D0:
	movs r6, #0
	adds r0, r7, #1
	mov r8, r0
	ldr r1, [sp]
	mov ip, r1
	movs r2, #1
	mov sl, r2
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _080097FC
	adds r1, r0, r3
	ldr r0, _08009800
	mov sb, r0
_080097EA:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _08009804
	strh r1, [r4, #4]
	b _0800980A
	.align 2, 0
_080097FC: .4byte 0x0000A1E0
_08009800: .4byte 0x0000A1A0
_08009804:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_0800980A:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r6, #1
	cmp r6, #1
	bls _080097EA
_08009816:
	mov r7, r8
	cmp r7, #3
	bls _0800977E
	b _08009A52
_0800981E:
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x86
	adds r1, r1, r5
	mov sb, r1
	cmp r0, #0x28
	bls _08009844
	movs r0, #0
	movs r1, #0
	mov r2, sb
	strh r1, [r2]
	ldrb r1, [r5, #5]
	adds r1, #1
	strb r1, [r5, #5]
	strb r0, [r5, #7]
	strb r0, [r5, #6]
_08009844:
	ldr r4, _0800987C
	movs r7, #0
	ldr r3, _08009880
	mov ip, r3
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sl, r0
_08009852:
	movs r6, #0
	adds r1, r7, #1
	mov r8, r1
_08009858:
	ldrb r2, [r5, #0x13]
	cmp r7, r2
	bne _08009894
	ldrh r1, [r4, #2]
	mov r3, ip
	ands r3, r1
	mov r0, sl
	ands r0, r1
	strh r0, [r4, #2]
	cmp r6, #0
	bne _08009884
	cmp r3, #0x37
	bhi _08009874
	adds r3, #4
_08009874:
	cmp r3, #0x38
	bls _08009890
	b _0800988E
	.align 2, 0
_0800987C: .4byte gOamObjects+0x130
_08009880: .4byte 0x000001FF
_08009884:
	cmp r3, #0x77
	bhi _0800988A
	adds r3, #4
_0800988A:
	cmp r3, #0x78
	bls _08009890
_0800988E:
	subs r3, #4
_08009890:
	ldrh r1, [r4, #2]
	b _080098B6
_08009894:
	ldrh r0, [r4, #2]
	mov r3, ip
	ands r3, r0
	mov r1, sl
	ands r1, r0
	strh r1, [r4, #2]
	mov r2, sb
	ldrh r2, [r2]
	adds r3, r2, r3
	mov r0, ip
	ands r3, r0
	cmp r3, #0xf0
	bls _080098B6
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	b _080098BA
_080098B6:
	adds r0, r1, r3
	strh r0, [r4, #2]
_080098BA:
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	bls _08009858
	mov r7, r8
	cmp r7, #3
	bls _08009852
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #7
	bls _080098D2
	b _08009A52
_080098D2:
	adds r0, #1
	strh r0, [r1]
	b _08009A52
_080098D8:
	ldr r4, _08009924
	movs r7, #0
	movs r2, #0x86
	adds r2, r2, r5
	mov sb, r2
	movs r3, #0xff
	lsls r3, r3, #8
	mov sl, r3
	movs r1, #0
_080098EA:
	movs r6, #0
	adds r0, r7, #1
	mov r8, r0
_080098F0:
	ldrb r2, [r5, #0x13]
	cmp r7, r2
	bne _08009928
	ldrb r3, [r4]
	mov r0, sl
	ldrh r2, [r4]
	ands r0, r2
	strh r0, [r4]
	cmp r3, #0x37
	bhi _0800990A
	adds r3, #4
	cmp r3, #0x37
	bhi _08009914
_0800990A:
	cmp r3, #0x38
	bls _0800991E
	subs r3, #4
	cmp r3, #0x38
	bhi _0800991E
_08009914:
	movs r0, #9
	strb r0, [r5, #5]
	strb r1, [r5, #7]
	strb r1, [r5, #6]
	movs r3, #0x38
_0800991E:
	ldrh r2, [r4]
	adds r0, r2, r3
	b _0800992C
	.align 2, 0
_08009924: .4byte gOamObjects+0x130
_08009928:
	movs r0, #0x80
	lsls r0, r0, #2
_0800992C:
	strh r0, [r4]
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	bls _080098F0
	mov r7, r8
	cmp r7, #3
	bls _080098EA
	mov r3, sb
	ldrh r0, [r3]
	cmp r0, #7
	bls _08009946
	b _08009A52
_08009946:
	adds r0, #1
	strh r0, [r3]
	b _08009A52
_0800994C:
	ldrb r0, [r5, #6]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _08009A52
	movs r0, #0xa
	strb r0, [r5, #5]
	strb r1, [r5, #7]
	strb r1, [r5, #6]
	b _08009A52
_08009966:
	ldrb r0, [r5, #6]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x32
	bls _0800998C
	movs r0, #2
	movs r1, #4
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	strb r4, [r5, #7]
	b _0800999A
_0800998C:
	ldrb r0, [r5, #7]
	cmp r0, #5
	bls _08009994
	strb r4, [r5, #7]
_08009994:
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
_0800999A:
	ldr r4, _080099C8
	movs r7, #0
	ldr r1, _080099CC
	mov sb, r1
	ldr r2, _080099D0
	mov sl, r2
	movs r2, #0x80
	lsls r2, r2, #2
_080099AA:
	movs r6, #0
	adds r3, r7, #1
	mov r8, r3
	lsls r0, r7, #6
	mov r3, sl
	adds r1, r0, r3
	add r0, sb
_080099B8:
	ldrb r3, [r5, #0x13]
	cmp r7, r3
	bne _080099D8
	ldrb r3, [r5, #7]
	cmp r3, #2
	bls _080099D4
	strh r0, [r4, #4]
	b _080099DA
	.align 2, 0
_080099C8: .4byte gOamObjects+0x130
_080099CC: .4byte 0x0000A1E0
_080099D0: .4byte 0x000091E0
_080099D4:
	strh r1, [r4, #4]
	b _080099DA
_080099D8:
	strh r2, [r4]
_080099DA:
	adds r4, #8
	adds r1, #0x20
	adds r0, #0x20
	adds r6, #1
	cmp r6, #1
	bls _080099B8
	mov r7, r8
	cmp r7, #3
	bls _080099AA
	b _08009A52
_080099EE:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08009A52
	ldrb r2, [r5, #0x13]
	cmp r2, #1
	beq _08009A12
	cmp r2, #1
	bgt _08009A08
	cmp r2, #0
	beq _08009A12
	b _08009A2C
_08009A08:
	cmp r2, #2
	beq _08009A1C
	cmp r2, #3
	beq _08009A24
	b _08009A2C
_08009A12:
	adds r0, r5, #0
	adds r0, #0x8d
	strb r2, [r0]
	adds r1, r0, #0
	b _08009A34
_08009A1C:
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #5
	b _08009A32
_08009A24:
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #0xb
	b _08009A32
_08009A2C:
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #0
_08009A32:
	strb r0, [r1]
_08009A34:
	ldr r0, _08009A40
	ldrb r1, [r1]
	adds r0, r1, r0
	ldrb r0, [r0]
	b _08009A50
	.align 2, 0
_08009A40: .4byte gCaseStartProcess
_08009A44:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08009A52
	movs r0, #1
_08009A50:
	str r0, [r5, #4]
_08009A52:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
