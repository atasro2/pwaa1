	.include "asm/macros.inc"
	.syntax unified

_start:
	b _init
rom_header:
	.include "asm/rom_header.inc"
_init:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, sp_irq
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, sp_sys
	ldr r0, _080001DC
	ldr r1, INTR_VECTOR
	str r0, [r1]
	ldr r0, _080001E4
	bx r0

	ARM_FUNC_START _init.ret
_init.ret: @ 0x080000EC
	b _start

	ARM_FUNC_START _intr
_intr: @ sub_80000F0
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	add r2, r2, #4
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
_08000110:
	bne _08000110
	mov r2, #0
	ands r0, r1, #1
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #2
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #4
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #8
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x80
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x1000
	bne _080001B0
_080001B0:
	strh r0, [r3, #2]
	ldr r1, _080001E8
	add r1, r1, r2
	ldr r0, [r1]
	stmdb sp!, {lr}
	mov lr, pc
	bx r0
_080001CC:
	ldm	sp!, {lr}
	bx lr
sp_irq: .4byte 0x03007F80
sp_sys: .4byte 0x03007F00
_080001DC: .4byte _intr
INTR_VECTOR: .4byte 0x03007FFC
_080001E4: .4byte AgbMain+1
_080001E8: .4byte gIntrTable
