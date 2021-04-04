	.section .rodata
    .include "asm/macros.inc"

    .global gUnknown_08013B58
gUnknown_08013B58:
    .incbin "baserom.gba", 0x00013B58, 0xC

    .global gUnknown_08013B64
gUnknown_08013B64:
    .incbin "baserom.gba", 0x00013B64, 0xC

    .global gUnknown_08013B70
gUnknown_08013B70:
    .incbin "baserom.gba", 0x00013B70, 0x400

    .global gUnknown_08013F70
gUnknown_08013F70:
    .incbin "baserom.gba", 0x00013F70, 0x300

    .global gUnknown_08014270
gUnknown_08014270:
    .incbin "baserom.gba", 0x00014270, 0x300

    .global gUnknown_08014570
gUnknown_08014570:
    .incbin "baserom.gba", 0x00014570, 0x580
