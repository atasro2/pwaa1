	.include "asm/macros.inc"
	.syntax unified

	THUMB_FUNC_START CpuSet
CpuSet: @ 0x080133EC
	svc #0xb
	bx lr

	THUMB_FUNC_START LZ77UnCompWram
LZ77UnCompWram: @ 0x080133F0
	svc #0x11
	bx lr

	THUMB_FUNC_START RegisterRamReset
RegisterRamReset: @ 0x080133F4
	svc #1
	bx lr
