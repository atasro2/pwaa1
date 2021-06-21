	.include "asm/macros.inc"
	.syntax unified

_start:
	b _init
rom_header:
	.include "asm/rom_header.inc"
_init:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, =0x03007F80
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, =0x03007F00
	ldr r0, =_intr
	ldr r1, =0x03007FFC
	str r0, [r1]
	ldr r0, =AgbMain+1
	bx r0
	b _start
	
	ARM_FUNC_START _intr
_intr:
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
	ldr r1, =gIntrTable
	add r1, r1, r2
	ldr r0, [r1]
	stmdb sp!, {lr}
	mov lr, pc
	bx r0
_080001CC:
	ldm sp!, {lr}
	bx lr

	.pool
