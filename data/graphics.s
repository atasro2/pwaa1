    .section .data
    .include "asm/macros.inc"

    .global gUnknown_08180000
gUnknown_08180000:
    .incbin "graphics/title_screen.gbapal"

    .global gUnknown_08180200
gUnknown_08180200:
    .incbin "graphics/title_screen.8bpp.lz"

    .global gUnknown_08182D08
gUnknown_08182D08:
    .incbin "graphics/title_screen_demo.gbapal"

    .global gUnknown_08182F08
gUnknown_08182F08:
    .incbin "graphics/title_screen_demo.8bpp.lz"

    .global gUnusedAsciiCharSet
gUnusedAsciiCharSet:
    .incbin "baserom.gba", 0x00185D20, 0x800

    .global gUnknown_08186520
gUnknown_08186520:
    .incbin "baserom.gba", 0x00186520, 0x20

    .global gUnknown_08186540
gUnknown_08186540:
    .incbin "baserom.gba", 0x00186540, 0x1000

    .global gUnknown_08187540
gUnknown_08187540:
    .incbin "baserom.gba", 0x00187540, 0x4800

    .global gUnknown_0818BD40
gUnknown_0818BD40:
    .incbin "baserom.gba", 0x0018BD40, 0x180

    .global gUnknown_0818BEC0
gUnknown_0818BEC0:
    .incbin "baserom.gba", 0x0018BEC0, 0x180

    .global gUnknown_0818C040
gUnknown_0818C040:
    .incbin "baserom.gba", 0x0018C040, 0x2480

    .global gUnknown_0818E4C0
gUnknown_0818E4C0:
    .incbin "baserom.gba", 0x0018E4C0, 0x1000

    .global gUnknown_0818F4C0
gUnknown_0818F4C0:
    .incbin "baserom.gba", 0x0018F4C0, 0x200

    .global gUnknown_0818F6C0
gUnknown_0818F6C0:
    .incbin "baserom.gba", 0x0018F6C0, 0x200

    .global gUnknown_0818F8C0
gUnknown_0818F8C0:
    .incbin "baserom.gba", 0x0018F8C0, 0x800

    .global gUnknown_081900C0
gUnknown_081900C0:
    .incbin "baserom.gba", 0x001900C0, 0x400

    .global gUnknown_081904C0
gUnknown_081904C0:
    .incbin "baserom.gba", 0x001904C0, 0x200

    .global gUnknown_081906C0
gUnknown_081906C0:
    .incbin "baserom.gba", 0x001906C0, 0x200

    .global gUnknown_081908C0
gUnknown_081908C0:
    .incbin "baserom.gba", 0x001908C0, 0x200

    .global gUnknown_08190AC0
gUnknown_08190AC0:
    .incbin "baserom.gba", 0x00190AC0, 0x500

    .global gUnknown_08190FC0
gUnknown_08190FC0:
    .incbin "baserom.gba", 0x00190FC0, 0x200

    .global gUnknown_081911C0
gUnknown_081911C0:
    .incbin "baserom.gba", 0x001911C0, 0x2E0

    .global gUnknown_081914A0
gUnknown_081914A0:
    .incbin "baserom.gba", 0x001914A0, 0x800

    .global gUnknown_08191CA0
gUnknown_08191CA0:
    .incbin "baserom.gba", 0x00191CA0, 0x800

    .global gUnknown_081924A0
gUnknown_081924A0:
    .incbin "baserom.gba", 0x001924A0, 0x800

    .global gUnknown_08192CA0
gUnknown_08192CA0:
    .incbin "baserom.gba", 0x00192CA0, 0x1000

    .global gUnknown_08193CA0
gUnknown_08193CA0:
    .incbin "baserom.gba", 0x00193CA0, 0x400

    .global gUnknown_081940A0
gUnknown_081940A0:
    .incbin "baserom.gba", 0x001940A0, 0x40

    .global gUnknown_081940E0
gUnknown_081940E0:
    .incbin "baserom.gba", 0x001940E0, 0x120

    .global gUnknown_08194200
gUnknown_08194200:
    .incbin "baserom.gba", 0x00194200, 0x40

    .global gUnknown_08194240
gUnknown_08194240:
    .incbin "baserom.gba", 0x00194240, 0x20

    .global gUnknown_08194260
gUnknown_08194260:
    .incbin "baserom.gba", 0x00194260, 0x20

    .global gUnknown_08194280
gUnknown_08194280:
    .incbin "baserom.gba", 0x00194280, 0x20

    .global gUnknown_081942A0
gUnknown_081942A0:
    .incbin "baserom.gba", 0x001942A0, 0x20

    .global gUnknown_081942C0
gUnknown_081942C0:
    .incbin "baserom.gba", 0x001942C0, 0x220

    .global gUnknown_081944E0
gUnknown_081944E0:
    .incbin "baserom.gba", 0x001944E0, 0x20

    .global gUnknown_08194500
gUnknown_08194500:
    .incbin "baserom.gba", 0x00194500, 0x20

    .global gUnknown_08194520
gUnknown_08194520:
    .incbin "baserom.gba", 0x00194520, 0x20

    .global gUnknown_08194540
gUnknown_08194540:
    .incbin "baserom.gba", 0x00194540, 0x20

    .global gUnknown_08194560
gUnknown_08194560:
    .incbin "baserom.gba", 0x00194560, 0x20

    .global gUnknown_08194580
gUnknown_08194580:
    .incbin "baserom.gba", 0x00194580, 0xC0

    .global gUnknown_08194640
gUnknown_08194640:
    .incbin "baserom.gba", 0x00194640, 0x80

    .global gUnknown_081946C0
gUnknown_081946C0:
    .incbin "baserom.gba", 0x001946C0, 0xDE8

    .global gUnknown_081954A8
gUnknown_081954A8:
    .incbin "baserom.gba", 0x001954A8, 0x1000

    .global gUnknown_081964A8
gUnknown_081964A8:
    .incbin "baserom.gba", 0x001964A8, 0x800

	.global gUnknown_08196CA8
gUnknown_08196CA8:
	.incbin "baserom.gba", 0x00196CA8, 0x434

	.global gUnknown_081970DC
gUnknown_081970DC:
	.incbin "baserom.gba", 0x001970DC, 0x438

	.global gUnknown_08197514
gUnknown_08197514:
	.incbin "baserom.gba", 0x00197514, 0x414

	.global gUnknown_08197928
gUnknown_08197928:
	.incbin "baserom.gba", 0x00197928, 0x3F0

	.global gUnknown_08197D18
gUnknown_08197D18:
	.incbin "baserom.gba", 0x00197D18, 0x488

	.global gUnknown_081981A0
gUnknown_081981A0:
	.incbin "baserom.gba", 0x001981A0, 0x438

	.global gUnknown_081985D8
gUnknown_081985D8:
	.incbin "baserom.gba", 0x001985D8, 0x4AC

	.global gUnknown_08198A84
gUnknown_08198A84:
	.incbin "baserom.gba", 0x00198A84, 0x3D8

	.global gUnknown_08198E5C
gUnknown_08198E5C:
	.incbin "baserom.gba", 0x00198E5C, 0x3CC

	.global gUnknown_08199228
gUnknown_08199228:
	.incbin "baserom.gba", 0x00199228, 0x468

	.global gUnknown_08199690
gUnknown_08199690:
	.incbin "baserom.gba", 0x00199690, 0x45C

	.global gUnknown_08199AEC
gUnknown_08199AEC:
	.incbin "baserom.gba", 0x00199AEC, 0x3DC

	.global gUnknown_08199EC8
gUnknown_08199EC8:
	.incbin "baserom.gba", 0x00199EC8, 0x41C

	.global gUnknown_0819A2E4
gUnknown_0819A2E4:
	.incbin "baserom.gba", 0x0019A2E4, 0x41C

	.global gUnknown_0819A700
gUnknown_0819A700:
	.incbin "baserom.gba", 0x0019A700, 0x4BC

	.global gUnknown_0819ABBC
gUnknown_0819ABBC:
	.incbin "baserom.gba", 0x0019ABBC, 0x46C

	.global gUnknown_0819B028
gUnknown_0819B028:
	.incbin "baserom.gba", 0x0019B028, 0x400

	.global gUnknown_0819B428
gUnknown_0819B428:
	.incbin "baserom.gba", 0x0019B428, 0x440

	.global gUnknown_0819B868
gUnknown_0819B868:
	.incbin "baserom.gba", 0x0019B868, 0x47C

	.global gUnknown_0819BCE4
gUnknown_0819BCE4:
	.incbin "baserom.gba", 0x0019BCE4, 0x3F4

	.global gUnknown_0819C0D8
gUnknown_0819C0D8:
	.incbin "baserom.gba", 0x0019C0D8, 0x35C

	.global gUnknown_0819C434
gUnknown_0819C434:
	.incbin "baserom.gba", 0x0019C434, 0x3DC

	.global gUnknown_0819C810
gUnknown_0819C810:
	.incbin "baserom.gba", 0x0019C810, 0x434

	.global gUnknown_0819CC44
gUnknown_0819CC44:
	.incbin "baserom.gba", 0x0019CC44, 0x3E4

	.global gUnknown_0819D028
gUnknown_0819D028:
	.incbin "baserom.gba", 0x0019D028, 0x4A0

	.global gUnknown_0819D4C8
gUnknown_0819D4C8:
	.incbin "baserom.gba", 0x0019D4C8, 0x444

	.global gUnknown_0819D90C
gUnknown_0819D90C:
	.incbin "baserom.gba", 0x0019D90C, 0x4A0

	.global gUnknown_0819DDAC
gUnknown_0819DDAC:
	.incbin "baserom.gba", 0x0019DDAC, 0x3E0

	.global gUnknown_0819E18C
gUnknown_0819E18C:
	.incbin "baserom.gba", 0x0019E18C, 0x414

	.global gUnknown_0819E5A0
gUnknown_0819E5A0:
	.incbin "baserom.gba", 0x0019E5A0, 0x438

	.global gUnknown_0819E9D8
gUnknown_0819E9D8:
	.incbin "baserom.gba", 0x0019E9D8, 0x418

	.global gUnknown_0819EDF0
gUnknown_0819EDF0:
	.incbin "baserom.gba", 0x0019EDF0, 0x418

	.global gUnknown_0819F208
gUnknown_0819F208:
	.incbin "baserom.gba", 0x0019F208, 0x3B8

	.global gUnknown_0819F5C0
gUnknown_0819F5C0:
	.incbin "baserom.gba", 0x0019F5C0, 0x428

	.global gUnknown_0819F9E8
gUnknown_0819F9E8:
	.incbin "baserom.gba", 0x0019F9E8, 0x39C

	.global gUnknown_0819FD84
gUnknown_0819FD84:
	.incbin "baserom.gba", 0x0019FD84, 0x39C

	.global gUnknown_081A0120
gUnknown_081A0120:
	.incbin "baserom.gba", 0x001A0120, 0x460

	.global gUnknown_081A0580
gUnknown_081A0580:
	.incbin "baserom.gba", 0x001A0580, 0x464

	.global gUnknown_081A09E4
gUnknown_081A09E4:
	.incbin "baserom.gba", 0x001A09E4, 0x474

	.global gUnknown_081A0E58
gUnknown_081A0E58:
	.incbin "baserom.gba", 0x001A0E58, 0x4CC

	.global gUnknown_081A1324
gUnknown_081A1324:
	.incbin "baserom.gba", 0x001A1324, 0x404

	.global gUnknown_081A1728
gUnknown_081A1728:
	.incbin "baserom.gba", 0x001A1728, 0x2E8

	.global gUnknown_081A1A10
gUnknown_081A1A10:
	.incbin "baserom.gba", 0x001A1A10, 0x40C

	.global gUnknown_081A1E1C
gUnknown_081A1E1C:
	.incbin "baserom.gba", 0x001A1E1C, 0x488

	.global gUnknown_081A22A4
gUnknown_081A22A4:
	.incbin "baserom.gba", 0x001A22A4, 0x418

	.global gUnknown_081A26BC
gUnknown_081A26BC:
	.incbin "baserom.gba", 0x001A26BC, 0x428

	.global gUnknown_081A2AE4
gUnknown_081A2AE4:
	.incbin "baserom.gba", 0x001A2AE4, 0x400

	.global gUnknown_081A2EE4
gUnknown_081A2EE4:
	.incbin "baserom.gba", 0x001A2EE4, 0x44C

	.global gUnknown_081A3330
gUnknown_081A3330:
	.incbin "baserom.gba", 0x001A3330, 0x3E4

	.global gUnknown_081A3714
gUnknown_081A3714:
	.incbin "baserom.gba", 0x001A3714, 0x430

	.global gUnknown_081A3B44
gUnknown_081A3B44:
	.incbin "baserom.gba", 0x001A3B44, 0x4B4

	.global gUnknown_081A3FF8
gUnknown_081A3FF8:
	.incbin "baserom.gba", 0x001A3FF8, 0x3A4

	.global gUnknown_081A439C
gUnknown_081A439C:
	.incbin "baserom.gba", 0x001A439C, 0x438

	.global gUnknown_081A47D4
gUnknown_081A47D4:
	.incbin "baserom.gba", 0x001A47D4, 0x400

	.global gUnknown_081A4BD4
gUnknown_081A4BD4:
	.incbin "baserom.gba", 0x001A4BD4, 0x41C

	.global gUnknown_081A4FF0
gUnknown_081A4FF0:
	.incbin "baserom.gba", 0x001A4FF0, 0x42C

	.global gUnknown_081A541C
gUnknown_081A541C:
	.incbin "baserom.gba", 0x001A541C, 0x40C

	.global gUnknown_081A5828
gUnknown_081A5828:
	.incbin "baserom.gba", 0x001A5828, 0x3CC

	.global gUnknown_081A5BF4
gUnknown_081A5BF4:
	.incbin "baserom.gba", 0x001A5BF4, 0x3B0

	.global gUnknown_081A5FA4
gUnknown_081A5FA4:
	.incbin "baserom.gba", 0x001A5FA4, 0x3F8

	.global gUnknown_081A639C
gUnknown_081A639C:
	.incbin "baserom.gba", 0x001A639C, 0x3C0

	.global gUnknown_081A675C
gUnknown_081A675C:
	.incbin "baserom.gba", 0x001A675C, 0x42C

	.global gUnknown_081A6B88
gUnknown_081A6B88:
	.incbin "baserom.gba", 0x001A6B88, 0x3E0

	.global gUnknown_081A6F68
gUnknown_081A6F68:
	.incbin "baserom.gba", 0x001A6F68, 0x3A8

	.global gUnknown_081A7310
gUnknown_081A7310:
	.incbin "baserom.gba", 0x001A7310, 0x44C

	.global gUnknown_081A775C
gUnknown_081A775C:
	.incbin "baserom.gba", 0x001A775C, 0x40C

	.global gUnknown_081A7B68
gUnknown_081A7B68:
	.incbin "baserom.gba", 0x001A7B68, 0x43C

	.global gUnknown_081A7FA4
gUnknown_081A7FA4:
	.incbin "baserom.gba", 0x001A7FA4, 0x420

	.global gUnknown_081A83C4
gUnknown_081A83C4:
	.incbin "baserom.gba", 0x001A83C4, 0x464

	.global gUnknown_081A8828
gUnknown_081A8828:
	.incbin "baserom.gba", 0x001A8828, 0x408

	.global gUnknown_081A8C30
gUnknown_081A8C30:
	.incbin "baserom.gba", 0x001A8C30, 0x31C

	.global gUnknown_081A8F4C
gUnknown_081A8F4C:
	.incbin "baserom.gba", 0x001A8F4C, 0x434

	.global gUnknown_081A9380
gUnknown_081A9380:
	.incbin "baserom.gba", 0x001A9380, 0x44C

	.global gUnknown_081A97CC
gUnknown_081A97CC:
	.incbin "baserom.gba", 0x001A97CC, 0x3FC

	.global gUnknown_081A9BC8
gUnknown_081A9BC8:
	.incbin "baserom.gba", 0x001A9BC8, 0x48C

	.global gUnknown_081AA054
gUnknown_081AA054:
	.incbin "baserom.gba", 0x001AA054, 0x404

	.global gUnknown_081AA458
gUnknown_081AA458:
	.incbin "baserom.gba", 0x001AA458, 0x43C

	.global gUnknown_081AA894
gUnknown_081AA894:
	.incbin "baserom.gba", 0x001AA894, 0x448

	.global gUnknown_081AACDC
gUnknown_081AACDC:
	.incbin "baserom.gba", 0x001AACDC, 0x49C

	.global gUnknown_081AB178
gUnknown_081AB178:
	.incbin "baserom.gba", 0x001AB178, 0x3FC

	.global gUnknown_081AB574
gUnknown_081AB574:
	.incbin "baserom.gba", 0x001AB574, 0x488

	.global gUnknown_081AB9FC
gUnknown_081AB9FC:
	.incbin "baserom.gba", 0x001AB9FC, 0x404

	.global gUnknown_081ABE00
gUnknown_081ABE00:
	.incbin "baserom.gba", 0x001ABE00, 0x4B0

	.global gUnknown_081AC2B0
gUnknown_081AC2B0:
	.incbin "baserom.gba", 0x001AC2B0, 0x4AC

	.global gUnknown_081AC75C
gUnknown_081AC75C:
	.incbin "baserom.gba", 0x001AC75C, 0x4A0

	.global gUnknown_081ACBFC
gUnknown_081ACBFC:
	.incbin "baserom.gba", 0x001ACBFC, 0x430

	.global gUnknown_081AD02C
gUnknown_081AD02C:
	.incbin "baserom.gba", 0x001AD02C, 0x41C

	.global gUnknown_081AD448
gUnknown_081AD448:
	.incbin "baserom.gba", 0x001AD448, 0x41C

	.global gUnknown_081AD864
gUnknown_081AD864:
	.incbin "baserom.gba", 0x001AD864, 0x470

	.global gUnknown_081ADCD4
gUnknown_081ADCD4:
	.incbin "baserom.gba", 0x001ADCD4, 0x408

	.global gUnknown_081AE0DC
gUnknown_081AE0DC:
	.incbin "baserom.gba", 0x001AE0DC, 0x420

	.global gUnknown_081AE4FC
gUnknown_081AE4FC:
	.incbin "baserom.gba", 0x001AE4FC, 0x43C

	.global gUnknown_081AE938
gUnknown_081AE938:
	.incbin "baserom.gba", 0x001AE938, 0x404

	.global gUnknown_081AED3C
gUnknown_081AED3C:
	.incbin "baserom.gba", 0x001AED3C, 0x420

	.global gUnknown_081AF15C
gUnknown_081AF15C:
	.incbin "baserom.gba", 0x001AF15C, 0x44C

	.global gUnknown_081AF5A8
gUnknown_081AF5A8:
	.incbin "baserom.gba", 0x001AF5A8, 0x434

	.global gUnknown_081AF9DC
gUnknown_081AF9DC:
	.incbin "baserom.gba", 0x001AF9DC, 0x430

	.global gUnknown_081AFE0C
gUnknown_081AFE0C:
	.incbin "baserom.gba", 0x001AFE0C, 0x3C4

	.global gUnknown_081B01D0
gUnknown_081B01D0:
	.incbin "baserom.gba", 0x001B01D0, 0x3C4

	.global gUnknown_081B0594
gUnknown_081B0594:
	.incbin "baserom.gba", 0x001B0594, 0x3F0

	.global gUnknown_081B0984
gUnknown_081B0984:
	.incbin "baserom.gba", 0x001B0984, 0x440

	.global gUnknown_081B0DC4
gUnknown_081B0DC4:
	.incbin "baserom.gba", 0x001B0DC4, 0x38C

	.global gUnknown_081B1150
gUnknown_081B1150:
	.incbin "baserom.gba", 0x001B1150, 0x39C

	.global gUnknown_081B14EC
gUnknown_081B14EC:
	.incbin "baserom.gba", 0x001B14EC, 0x3D4

	.global gUnknown_081B18C0
gUnknown_081B18C0:
	.incbin "baserom.gba", 0x001B18C0, 0x3FC

	.global gUnknown_081B1CBC
gUnknown_081B1CBC:
	.incbin "baserom.gba", 0x001B1CBC, 0x494

	.global gUnknown_081B2150
gUnknown_081B2150:
	.incbin "baserom.gba", 0x001B2150, 0x4A0

	.global gUnknown_081B25F0
gUnknown_081B25F0:
    .incbin "baserom.gba", 0x001B25F0, 0x31C

    .global gUnknown_081B290C
gUnknown_081B290C:
    .incbin "baserom.gba", 0x001B290C, 0x20

    .global gUnknown_081B292C
gUnknown_081B292C:
    .incbin "baserom.gba", 0x001B292C, 0x207E0

    .global gTextPal
gTextPal:
    .incbin "baserom.gba", 0x001D310C, 0x20

    .global gCharSet
gCharSet:  @ Charset
    .incbin "baserom.gba", 0x001D312C, 0x2A800

    .global gUnknown_081FD92C
gUnknown_081FD92C:
    .incbin "baserom.gba", 0x001FD92C, 0x40

    .global gUnknown_081FD96C
gUnknown_081FD96C:
    .incbin "baserom.gba", 0x001FD96C, 0xA800

    .global gUnknown_0820816C
gUnknown_0820816C:
    .incbin "baserom.gba", 0x0020816C, 0x3E800

    .global gUnknown_0824696C
gUnknown_0824696C:
    .incbin "baserom.gba", 0x0024696C, 0x20

    	.global gUnknown_0824698C
gUnknown_0824698C:
	.incbin "baserom.gba", 0x0024698C, 0x80

	.global gUnknown_08246A0C
gUnknown_08246A0C:
	.incbin "baserom.gba", 0x00246A0C, 0x80

	.global gUnknown_08246A8C
gUnknown_08246A8C:
	.incbin "baserom.gba", 0x00246A8C, 0x400

	.global gUnknown_08246E8C
gUnknown_08246E8C:
	.incbin "baserom.gba", 0x00246E8C, 0x40

	.global gUnknown_08246ECC
gUnknown_08246ECC:
	.incbin "baserom.gba", 0x00246ECC, 0x800

	.global gUnknown_082476CC
gUnknown_082476CC:
	.incbin "baserom.gba", 0x002476CC, 0x800

	.global gUnknown_08247ECC
gUnknown_08247ECC:
	.incbin "baserom.gba", 0x00247ECC, 0x800

	.global gUnknown_082486CC
gUnknown_082486CC:
	.incbin "baserom.gba", 0x002486CC, 0x80

	.global gUnknown_0824874C
gUnknown_0824874C:
	.incbin "baserom.gba", 0x0024874C, 0x100

	.global gUnknown_0824884C
gUnknown_0824884C:
	.incbin "baserom.gba", 0x0024884C, 0x80

	.global gUnknown_082488CC
gUnknown_082488CC:
	.incbin "baserom.gba", 0x002488CC, 0x40

	.global gUnknown_0824890C
gUnknown_0824890C:
	.incbin "baserom.gba", 0x0024890C, 0x200

	.global gUnknown_08248B0C
gUnknown_08248B0C:
	.incbin "baserom.gba", 0x00248B0C, 0x100

	.global gUnknown_08248C0C
gUnknown_08248C0C:
	.incbin "baserom.gba", 0x00248C0C, 0x40

@ ; BEGIN BACKGROUNDS

    .global gUnknown_08248C4C
gUnknown_08248C4C:
    .incbin "graphics/striped_images/backgrounds/wright_co_law_offices/fey_co_murder_night.8bpp.striped"

    .global gUnknown_0825280C
gUnknown_0825280C:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/office_day.8bpp.striped"

    .global gUnknown_08257F28
gUnknown_08257F28:
	.incbin "graphics/striped_images/backgrounds/court/defendant_lobby.8bpp.striped"

    .global gUnknown_0825CCCC
gUnknown_0825CCCC:
	.incbin "graphics/striped_images/backgrounds/court/defense_bench.4bpp.striped"

    .global gUnknown_0825EF64
gUnknown_0825EF64:
	.incbin "graphics/striped_images/backgrounds/court/prosecution_bench.4bpp.striped"

    .global gUnknown_082610F0
gUnknown_082610F0:
	.incbin "graphics/striped_images/backgrounds/court/witness_stand.4bpp.striped"

    .global gUnknown_08263898
gUnknown_08263898:
	.incbin "graphics/striped_images/backgrounds/court/court_room.8bpp.striped"

    .global gUnknown_0826B6DC
gUnknown_0826B6DC:
	.incbin "graphics/striped_images/backgrounds/court/co_counsel.8bpp.striped"

    .global gUnknown_08271DE8
gUnknown_08271DE8:
	.incbin "graphics/striped_images/backgrounds/court/judge_seat.8bpp.striped"

    .global gUnknown_08278824
gUnknown_08278824:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/office_entry_night.8bpp.striped"

    .global gUnknown_0827CEEC
gUnknown_0827CEEC:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/maya_seeing_dead_mia.8bpp.striped"

    .global gUnknown_08282870
gUnknown_08282870:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_path.8bpp.striped"

    .global gUnknown_08288AE0
gUnknown_08288AE0:
	.incbin "graphics/striped_images/backgrounds/global_studios/staff_area.8bpp.striped"

    .global gUnknown_08291ADC
gUnknown_08291ADC:
	.incbin "graphics/striped_images/backgrounds/witness_account/mia_dodging_right.4bpp.striped"

    .global gUnknown_08293DC0
gUnknown_08293DC0:
	.incbin "graphics/striped_images/backgrounds/witness_account/mia_dodging_left.4bpp.striped"

    .global gUnknown_08296138
gUnknown_08296138:
	.incbin "graphics/striped_images/backgrounds/evidence/fey_co_diagram.4bpp.striped"

    .global gUnknown_08296E28
gUnknown_08296E28:
	.incbin "graphics/striped_images/backgrounds/witness_account/april_getting_room_service.4bpp.striped"

    .global gUnknown_0829A23C
gUnknown_0829A23C:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/mia_dead_on_ground.8bpp.striped"

    .global gUnknown_0829E7A4
gUnknown_0829E7A4:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/phoenix_maya_mia.8bpp.striped"

    .global gUnknown_082A3BA8
gUnknown_082A3BA8:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_2_trailer.8bpp.striped"

    .global gUnknown_082A8E3C
gUnknown_082A8E3C:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/april_calling_police.8bpp.striped"

    .global gUnknown_082AE378
gUnknown_082AE378:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/redd_hitting_mia.8bpp.striped"

    .global gUnknown_082B6B78
gUnknown_082B6B78:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/mia_being_attacked.8bpp.striped"

    .global gUnknown_082BDC88
gUnknown_082BDC88:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/redd_holding_thinker.4bpp.striped"

    .global gUnknown_082BFC24
gUnknown_082BFC24:
	.incbin "graphics/striped_images/backgrounds/global_studios/will_power_dressing_room.8bpp.striped"

    .global gUnknown_082C5020
gUnknown_082C5020:
	.incbin "graphics/striped_images/backgrounds/global_studios/front_gate.8bpp.striped"

    .global gUnknown_082C9600
gUnknown_082C9600:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_1.8bpp.striped"

    .global gUnknown_082CE308
gUnknown_082CE308:
	.incbin "graphics/striped_images/backgrounds/gavel/2.8bpp.striped"

    .global gUnknown_082D1A90
gUnknown_082D1A90:
	.incbin "graphics/striped_images/backgrounds/gavel/3.8bpp.striped"

    .global gUnknown_082D79EC
gUnknown_082D79EC:
	.incbin "graphics/striped_images/backgrounds/evidence/fey_co_diagram_light.4bpp.striped"

    .global gUnknown_082D8974
gUnknown_082D8974:
	.incbin "graphics/striped_images/backgrounds/detention_center.8bpp.striped"

    .global gUnknown_082DC188
gUnknown_082DC188:
	.incbin "graphics/striped_images/backgrounds/bluecorp_ceo_office.8bpp.striped"

    .global gUnknown_082E1FA4
gUnknown_082E1FA4:
	.incbin "graphics/striped_images/backgrounds/gatewater_hotelroom.8bpp.striped"

    .global gUnknown_082E6BBC
gUnknown_082E6BBC:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_holding_thinker.8bpp.striped"

    .global gUnknown_082EB2B8
gUnknown_082EB2B8:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/cindy_dead_on_floor.8bpp.striped"

    .global gUnknown_082EF904
gUnknown_082EF904:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/cindy_and_frank.8bpp.striped"

    .global gUnknown_082F7D4C
gUnknown_082F7D4C:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_closeup_1.8bpp.striped"

    .global gUnknown_082FAF44
gUnknown_082FAF44:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_closeup_2.8bpp.striped"

    .global gUnknown_082FE610
gUnknown_082FE610:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_closeup_3.8bpp.striped"

    .global gUnknown_083022F0
gUnknown_083022F0:
	.incbin "graphics/striped_images/backgrounds/grossberg_law_offices/grossberg_law_offices_painting.8bpp.striped"

    .global gUnknown_083081E4
gUnknown_083081E4:
	.incbin "graphics/striped_images/backgrounds/grossberg_law_offices/grossberg_law_offices_no_painting.8bpp.striped"

    .global gUnknown_0830D2D8
gUnknown_0830D2D8:
	.incbin "graphics/striped_images/backgrounds/witness_account/cindy_finding_frank.4bpp.striped"

    .global gUnknown_0831002C
gUnknown_0831002C:
	.incbin "graphics/striped_images/backgrounds/witness_account/frank_witnessing_larry.4bpp.striped"

    .global gUnknown_08312664
gUnknown_08312664:
	.incbin "graphics/striped_images/backgrounds/witness_account/frank_finding_cindy.4bpp.striped"

    .global gUnknown_08314F8C
gUnknown_08314F8C:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_2.8bpp.striped"

    .global gUnknown_0831E8E0
gUnknown_0831E8E0:
	.incbin "graphics/striped_images/backgrounds/evidence/maya_phone_call_page_1.4bpp.striped"
    .global gUnknown_0831F624
gUnknown_0831F624:
	.incbin "graphics/striped_images/backgrounds/evidence/maya_phone_call_page_2.4bpp.striped"

    .global gUnknown_08320328
gUnknown_08320328:
	.incbin "graphics/striped_images/backgrounds/gavel/1.8bpp.striped"

    .global gUnknown_083230C0
gUnknown_083230C0:
	.incbin "graphics/striped_images/backgrounds/evidence/maya_phone_call_page_3.4bpp.striped"

    .global gUnknown_08323EDC
gUnknown_08323EDC:
	.incbin "graphics/striped_images/backgrounds/witness_account/jack_at_gate_photo.4bpp.striped"

    .global gUnknown_08327074
gUnknown_08327074:
	.incbin "graphics/striped_images/backgrounds/witness_account/jack_dead_at_studio_1.4bpp.striped"

    .global gUnknown_0832AFB8
gUnknown_0832AFB8:
	.incbin "graphics/striped_images/backgrounds/witness_account/jack_wearing_samurai_suit.4bpp.striped"

    .global gUnknown_0832E7B0
gUnknown_0832E7B0:
	.incbin "graphics/striped_images/backgrounds/witness_account/vasquez_pushing_jack_aftermath.4bpp.striped"

    .global gUnknown_08331B38
gUnknown_08331B38:
	.incbin "graphics/striped_images/backgrounds/witness_account/staff_eating_lunch.4bpp.striped"

    .global gUnknown_08335A58
gUnknown_08335A58:
	.incbin "graphics/striped_images/backgrounds/witness_account/studio_2_jack_and_vasquez.4bpp.striped"

    .global gUnknown_08339144
gUnknown_08339144:
	.incbin "graphics/striped_images/backgrounds/witness_account/cody_witnessing_samurai.4bpp.striped"

    .global gUnknown_0833DC0C
gUnknown_0833DC0C:
	.incbin "graphics/striped_images/backgrounds/witness_account/samurai_at_studio_2_photo.4bpp.striped"

    .global gUnknown_0833F720
gUnknown_0833F720:
	.incbin "graphics/striped_images/backgrounds/witness_account/5_year_old_photo.4bpp.striped"

    .global gUnknown_08342908
gUnknown_08342908:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_2_trailer_mafia.8bpp.striped"

    .global gUnknown_0834863C
gUnknown_0834863C:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case3/pink_princess.8bpp.striped"

    .global gUnknown_0834F218
gUnknown_0834F218:
	.incbin "graphics/striped_images/backgrounds/global_studios/monkey_on_studio_2_path.8bpp.striped"

    .global gUnknown_0835699C
gUnknown_0835699C:
	.incbin "graphics/striped_images/backgrounds/evidence/global_studio_diagram.4bpp.striped"

    .global gUnknown_08357870
gUnknown_08357870:
	.incbin "graphics/striped_images/backgrounds/witness_account/will_power_injury.4bpp.striped"

    .global gUnknown_0835ABD8
gUnknown_0835ABD8:
    .incbin "graphics/striped_images/backgrounds/cutscenes/case3/steel_samurai.8bpp.striped"
    
@ ; END BACKGROUNDS

    .global gUnknown_08360834
gUnknown_08360834:
    .incbin "baserom.gba", 0x00360834, 0x20

    .global gUnknown_08360854
gUnknown_08360854:
    .incbin "baserom.gba", 0x00360854, 0x1CD0

    .global gUnknown_08362524
gUnknown_08362524:
    .incbin "baserom.gba", 0x00362524, 0x20

    .global gUnknown_08362544
gUnknown_08362544:
    .incbin "baserom.gba", 0x00362544, 0x2250
    
@ ; BEGIN BACKGROUNDS

    .global gUnknown_08364794
gUnknown_08364794:
    .incbin "baserom.gba", 0x00364794, 0xEAC


    .global gUnknown_08365640
gUnknown_08365640:
    .incbin "baserom.gba", 0x00365640, 0x3584

    .global gUnknown_08368BC4
gUnknown_08368BC4:
    .incbin "baserom.gba", 0x00368BC4, 0xCCC

@ ; this entry here spills over into an explicitly referenced one (the next), why though...
    .global gUnknown_08369890
gUnknown_08369890:
    .incbin "baserom.gba", 0x00369890, 0x28

@ ; it looks like this reference skips the "table" of this striped image and directly goes to the data?
    .global gUnknown_083698B8
gUnknown_083698B8:
    .incbin "baserom.gba", 0x003698B8, 0x206C
    
@ ;

    .global gUnknown_0836B924
gUnknown_0836B924:
    .incbin "baserom.gba", 0x0036B924, 0x7408


    .global gUnknown_08372D2C
gUnknown_08372D2C:
    .incbin "baserom.gba", 0x00372D2C, 0x64E0


    .global gUnknown_0837920C
gUnknown_0837920C:
    .incbin "baserom.gba", 0x0037920C, 0x5320


    .global gUnknown_0837E52C
gUnknown_0837E52C:
    .incbin "baserom.gba", 0x0037E52C, 0xB498

@ ; this striped image is referenced in code

    .global gUnknown_083899C4
gUnknown_083899C4:
    .incbin "baserom.gba", 0x003899C4, 0x28

    .global gUnknown_083899EC
gUnknown_083899EC:
    .incbin "baserom.gba", 0x003899EC, 0x1978
    
@ ;
    
    .global gUnknown_0838B364
gUnknown_0838B364:
    .incbin "baserom.gba", 0x0038B364, 0x200C


    .global gUnknown_0838D370
gUnknown_0838D370:
    .incbin "baserom.gba", 0x0038D370, 0x4DA8


    .global gUnknown_08392118
gUnknown_08392118:
    .incbin "baserom.gba", 0x00392118, 0x4D98


    .global gUnknown_08396EB0
gUnknown_08396EB0:
    .incbin "baserom.gba", 0x00396EB0, 0x5E54


    .global gUnknown_0839CD04
gUnknown_0839CD04:
    .incbin "baserom.gba", 0x0039CD04, 0x6800


    .global gUnknown_083A3504
gUnknown_083A3504:
    .incbin "baserom.gba", 0x003A3504, 0x3430


    .global gUnknown_083A6934
gUnknown_083A6934:
    .incbin "baserom.gba", 0x003A6934, 0xE5C


    .global gUnknown_083A7790
gUnknown_083A7790:
    .incbin "baserom.gba", 0x003A7790, 0xEB8


    .global gUnknown_083A8648
gUnknown_083A8648:
    .incbin "baserom.gba", 0x003A8648, 0xECC


    .global gUnknown_083A9514
gUnknown_083A9514:
    .incbin "baserom.gba", 0x003A9514, 0x67B4


    .global gUnknown_083AFCC8
gUnknown_083AFCC8:
    .incbin "baserom.gba", 0x003AFCC8, 0xDCC


    .global gUnknown_083B0A94
gUnknown_083B0A94:
    .incbin "baserom.gba", 0x003B0A94, 0x2C90


    .global gUnknown_083B3724
gUnknown_083B3724:
    .incbin "baserom.gba", 0x003B3724, 0x3568


    .global gUnknown_083B6C8C
gUnknown_083B6C8C:
    .incbin "baserom.gba", 0x003B6C8C, 0x8530


    .global gUnknown_083BF1BC
gUnknown_083BF1BC:
    .incbin "baserom.gba", 0x003BF1BC, 0x4568


    .global gUnknown_083C3724
gUnknown_083C3724:
    .incbin "baserom.gba", 0x003C3724, 0x3F30


    .global gUnknown_083C7654
gUnknown_083C7654:
    .incbin "baserom.gba", 0x003C7654, 0x3A68


    .global gUnknown_083CB0BC
gUnknown_083CB0BC:
    .incbin "baserom.gba", 0x003CB0BC, 0x76EC


    .global gUnknown_083D27A8
gUnknown_083D27A8:
    .incbin "baserom.gba", 0x003D27A8, 0x36BC


    .global gUnknown_083D5E64
gUnknown_083D5E64:
    .incbin "baserom.gba", 0x003D5E64, 0x4C5C


    .global gUnknown_083DAAC0
gUnknown_083DAAC0:
    .incbin "baserom.gba", 0x003DAAC0, 0x6A54


    .global gUnknown_083E1514
gUnknown_083E1514:
    .incbin "baserom.gba", 0x003E1514, 0x5FD4


    .global gUnknown_083E74E8
gUnknown_083E74E8:
    .incbin "baserom.gba", 0x003E74E8, 0x369C


    .global gUnknown_083EAB84
gUnknown_083EAB84:
    .incbin "baserom.gba", 0x003EAB84, 0x3F3C


    .global gUnknown_083EEAC0
gUnknown_083EEAC0:
    .incbin "baserom.gba", 0x003EEAC0, 0x40E4


    .global gUnknown_083F2BA4
gUnknown_083F2BA4:
    .incbin "baserom.gba", 0x003F2BA4, 0x40A4


    .global gUnknown_083F6C48
gUnknown_083F6C48:
    .incbin "baserom.gba", 0x003F6C48, 0x458C


    .global gUnknown_083FB1D4
gUnknown_083FB1D4:
    .incbin "baserom.gba", 0x003FB1D4, 0x2700


    .global gUnknown_083FD8D4
gUnknown_083FD8D4:
    .incbin "baserom.gba", 0x003FD8D4, 0x5F24


    .global gUnknown_084037F8
gUnknown_084037F8:
    .incbin "baserom.gba", 0x004037F8, 0x7444


    .global gUnknown_0840AC3C
gUnknown_0840AC3C:
    .incbin "baserom.gba", 0x0040AC3C, 0x278C


    .global gUnknown_0840D3C8
gUnknown_0840D3C8:
    .incbin "baserom.gba", 0x0040D3C8, 0x24F8


    .global gUnknown_0840F8C0
gUnknown_0840F8C0:
    .incbin "baserom.gba", 0x0040F8C0, 0xB834


    .global gUnknown_0841B0F4
gUnknown_0841B0F4:
    .incbin "baserom.gba", 0x0041B0F4, 0xC88


    .global gUnknown_0841BD7C
gUnknown_0841BD7C:
    .incbin "baserom.gba", 0x0041BD7C, 0x3248


    .global gUnknown_0841EFC4
gUnknown_0841EFC4:
    .incbin "baserom.gba", 0x0041EFC4, 0x8644

@ ; END

    .global gUnknown_08427608
gUnknown_08427608:
    .incbin "baserom.gba", 0x00427608, 0x780

    .global gUnknown_08427D88
gUnknown_08427D88:
    .incbin "baserom.gba", 0x00427D88, 0x4B200

    .global gUnknown_08472F88
gUnknown_08472F88:
    .incbin "baserom.gba", 0x00472F88, 0x4B200
    
    .global gUnknown_084BE188
gUnknown_084BE188:
    .incbin "baserom.gba", 0x004BE188, 0x4B200

    .global gUnknown_08509388 @ character animations and shit
gUnknown_08509388:
    .incbin "baserom.gba", 0x00509388, 0x297FC
    
    .global gUnknown_08532B84
gUnknown_08532B84:
    .incbin "baserom.gba", 0x00532B84, 0x3B9C

    .global gUnknown_08536720
gUnknown_08536720:
    .incbin "baserom.gba", 0x00536720, 0x1F7D4
    
    .global gUnknown_08555EF4
gUnknown_08555EF4:
    .incbin "baserom.gba", 0x00555EF4, 0x7DF0

    .global gUnknown_0855DCE4
gUnknown_0855DCE4:
    .incbin "baserom.gba", 0x0055DCE4, 0xC0A8

    .global gUnknown_08569D8C
gUnknown_08569D8C:
    .incbin "baserom.gba", 0x00569D8C, 0x26AC

    .global gUnknown_0856C438
gUnknown_0856C438:
    .incbin "baserom.gba", 0x0056C438, 0x9A88

    .global gUnknown_08575EC0
gUnknown_08575EC0:
    .incbin "baserom.gba", 0x00575EC0, 0x1C1C

    .global gUnknown_08577ADC
gUnknown_08577ADC:
    .incbin "baserom.gba", 0x00577ADC, 0x4F24

    .global gUnknown_0857CA00
gUnknown_0857CA00:
    .incbin "baserom.gba", 0x0057CA00, 0xD94

	.global gUnknown_0857D794
gUnknown_0857D794:
	.incbin "baserom.gba", 0x0057D794, 0x39F28

	.global gUnknown_085B76BC
gUnknown_085B76BC:
	.incbin "baserom.gba", 0x005B76BC, 0xB5D8

	.global gUnknown_085C2C94
gUnknown_085C2C94:
	.incbin "baserom.gba", 0x005C2C94, 0x206F4

	.global gUnknown_085E3388
gUnknown_085E3388:
	.incbin "baserom.gba", 0x005E3388, 0x56C0

	.global gUnknown_085E8A48
gUnknown_085E8A48:
	.incbin "baserom.gba", 0x005E8A48, 0x26518

	.global gUnknown_0860EF60
gUnknown_0860EF60:
	.incbin "baserom.gba", 0x0060EF60, 0x30B4

	.global gUnknown_08612014
gUnknown_08612014:
	.incbin "baserom.gba", 0x00612014, 0xE568

	.global gUnknown_0862057C
gUnknown_0862057C:
	.incbin "baserom.gba", 0x0062057C, 0x29A4

	.global gUnknown_08622F20
gUnknown_08622F20:
	.incbin "baserom.gba", 0x00622F20, 0x3644

	.global gUnknown_08626564
gUnknown_08626564:
	.incbin "baserom.gba", 0x00626564, 0x56C

	.global gUnknown_08626AD0
gUnknown_08626AD0:
	.incbin "baserom.gba", 0x00626AD0, 0x42E4

	.global gUnknown_0862ADB4
gUnknown_0862ADB4:
	.incbin "baserom.gba", 0x0062ADB4, 0xCB4

	.global gUnknown_0862BA68
gUnknown_0862BA68:
	.incbin "baserom.gba", 0x0062BA68, 0x26498

	.global gUnknown_08651F00
gUnknown_08651F00:
	.incbin "baserom.gba", 0x00651F00, 0x597C

	.global gUnknown_0865787C
gUnknown_0865787C:
	.incbin "baserom.gba", 0x0065787C, 0x169F0

	.global gUnknown_0866E26C
gUnknown_0866E26C:
	.incbin "baserom.gba", 0x0066E26C, 0x2228

	.global gUnknown_08670494
gUnknown_08670494:
	.incbin "baserom.gba", 0x00670494, 0x4BA4

	.global gUnknown_08675038
gUnknown_08675038:
	.incbin "baserom.gba", 0x00675038, 0x894

	.global gUnknown_086758CC
gUnknown_086758CC:
	.incbin "baserom.gba", 0x006758CC, 0x91E8

	.global gUnknown_0867EAB4
gUnknown_0867EAB4:
	.incbin "baserom.gba", 0x0067EAB4, 0x2848

	.global gUnknown_086812FC
gUnknown_086812FC:
	.incbin "baserom.gba", 0x006812FC, 0x3EE4

	.global gUnknown_086851E0
gUnknown_086851E0:
	.incbin "baserom.gba", 0x006851E0, 0x90C

	.global gUnknown_08685AEC
gUnknown_08685AEC:
	.incbin "baserom.gba", 0x00685AEC, 0xA208

	.global gUnknown_0868FCF4
gUnknown_0868FCF4:
	.incbin "baserom.gba", 0x0068FCF4, 0x134C

	.global gUnknown_08691040
gUnknown_08691040:
	.incbin "baserom.gba", 0x00691040, 0x1042C

	.global gUnknown_086A146C
gUnknown_086A146C:
	.incbin "baserom.gba", 0x006A146C, 0x2614

	.global gUnknown_086A3A80
gUnknown_086A3A80:
	.incbin "baserom.gba", 0x006A3A80, 0xD428

	.global gUnknown_086B0EA8
gUnknown_086B0EA8:
	.incbin "baserom.gba", 0x006B0EA8, 0x365C

	.global gUnknown_086B4504
gUnknown_086B4504:
	.incbin "baserom.gba", 0x006B4504, 0x1068C

	.global gUnknown_086C4B90
gUnknown_086C4B90:
	.incbin "baserom.gba", 0x006C4B90, 0x2598

	.global gUnknown_086C7128
gUnknown_086C7128:
	.incbin "baserom.gba", 0x006C7128, 0x2DA4

	.global gUnknown_086C9ECC
gUnknown_086C9ECC:
	.incbin "baserom.gba", 0x006C9ECC, 0x230

	.global gUnknown_086CA0FC
gUnknown_086CA0FC:
	.incbin "baserom.gba", 0x006CA0FC, 0x2964

	.global gUnknown_086CCA60
gUnknown_086CCA60:
	.incbin "baserom.gba", 0x006CCA60, 0x2A4

	.global gUnknown_086CCD04
gUnknown_086CCD04:
	.incbin "baserom.gba", 0x006CCD04, 0xADE8

	.global gUnknown_086D7AEC
gUnknown_086D7AEC:
	.incbin "baserom.gba", 0x006D7AEC, 0x2B54

	.global gUnknown_086DA640
gUnknown_086DA640:
	.incbin "baserom.gba", 0x006DA640, 0x150D0

	.global gUnknown_086EF710
gUnknown_086EF710:
	.incbin "baserom.gba", 0x006EF710, 0x3B7C

	.global gUnknown_086F328C
gUnknown_086F328C:
	.incbin "baserom.gba", 0x006F328C, 0x2633C

	.global gUnknown_087195C8
gUnknown_087195C8:
	.incbin "baserom.gba", 0x007195C8, 0x3968

	.global gUnknown_0871CF30
gUnknown_0871CF30:
	.incbin "baserom.gba", 0x0071CF30, 0x1AC4

	.global gUnknown_0871E9F4
gUnknown_0871E9F4:
    .incbin "baserom.gba", 0x0071E9F4, 0x1C8

@ end dump

    .global gUnknown_0871EBBC
gUnknown_0871EBBC:
    .incbin "baserom.gba", 0x0071EBBC, 0x1138

	.global gUnknown_0871FCF4
gUnknown_0871FCF4:
	.incbin "baserom.gba", 0x0071FCF4, 0x20

	.global gUnknown_0871FD14
gUnknown_0871FD14:
	.incbin "baserom.gba", 0x0071FD14, 0x4C

	.global gUnknown_0871FD60
gUnknown_0871FD60:
	.incbin "baserom.gba", 0x0071FD60, 0x20

	.global gUnknown_0871FD80
gUnknown_0871FD80:
	.incbin "baserom.gba", 0x0071FD80, 0x2C

	.global gUnknown_0871FDAC
gUnknown_0871FDAC:
	.incbin "baserom.gba", 0x0071FDAC, 0x24

	.global gUnknown_0871FDD0
gUnknown_0871FDD0:
	.incbin "baserom.gba", 0x0071FDD0, 0x28

    .global gUnknown_0871FDF8
gUnknown_0871FDF8:
    .incbin "baserom.gba", 0x0071FDF8, 0x28420
    
	.global gUnknown_08748218
gUnknown_08748218:
	.incbin "baserom.gba", 0x00748218, 0x128

	.global gUnknown_08748340
gUnknown_08748340:
	.incbin "baserom.gba", 0x00748340, 0x128

	.global gUnknown_08748468
gUnknown_08748468:
	.incbin "baserom.gba", 0x00748468, 0x20

	.global gUnknown_08748488
gUnknown_08748488:
	.incbin "baserom.gba", 0x00748488, 0x20

	.global gUnknown_087484A8
gUnknown_087484A8:
	.incbin "baserom.gba", 0x007484A8, 0x20

	.global gUnknown_087484C8
gUnknown_087484C8:
	.incbin "baserom.gba", 0x007484C8, 0x20

	.global gUnknown_087484E8
gUnknown_087484E8:
	.incbin "baserom.gba", 0x007484E8, 0x38

	.global gUnknown_08748520
gUnknown_08748520:
	.incbin "baserom.gba", 0x00748520, 0x38

	.global gUnknown_08748558
gUnknown_08748558:
	.incbin "baserom.gba", 0x00748558, 0x38

	.global gUnknown_08748590
gUnknown_08748590:
	.incbin "baserom.gba", 0x00748590, 0x30

	.global gUnknown_087485C0
gUnknown_087485C0:
	.incbin "baserom.gba", 0x007485C0, 0x34

	.global gUnknown_087485F4
gUnknown_087485F4:
	.incbin "baserom.gba", 0x007485F4, 0x90

	.global gUnknown_08748684
gUnknown_08748684:
	.incbin "baserom.gba", 0x00748684, 0xF0

	.global gUnknown_08748774
gUnknown_08748774:
	.incbin "baserom.gba", 0x00748774, 0x340

	.global gUnknown_08748AB4
gUnknown_08748AB4:
	.incbin "baserom.gba", 0x00748AB4, 0x38

	.global gUnknown_08748AEC
gUnknown_08748AEC:
	.incbin "baserom.gba", 0x00748AEC, 0x38

	.global gUnknown_08748B24
gUnknown_08748B24:
	.incbin "baserom.gba", 0x00748B24, 0x114

	.global gUnknown_08748C38
gUnknown_08748C38:
	.incbin "baserom.gba", 0x00748C38, 0x68

	.global gUnknown_08748CA0
gUnknown_08748CA0:
	.incbin "baserom.gba", 0x00748CA0, 0xD4

	.global gUnknown_08748D74
gUnknown_08748D74:
	.incbin "baserom.gba", 0x00748D74, 0x24

	.global gUnknown_08748D98
gUnknown_08748D98:
	.incbin "baserom.gba", 0x00748D98, 0x20

	.global gUnknown_08748DB8
gUnknown_08748DB8:
	.incbin "baserom.gba", 0x00748DB8, 0x54

	.global gUnknown_08748E0C
gUnknown_08748E0C:
	.incbin "baserom.gba", 0x00748E0C, 0xD8

	.global gUnknown_08748EE4
gUnknown_08748EE4:
	.incbin "baserom.gba", 0x00748EE4, 0x60

	.global gUnknown_08748F44
gUnknown_08748F44:
	.incbin "baserom.gba", 0x00748F44, 0x3C

	.global gUnknown_08748F80
gUnknown_08748F80:
	.incbin "baserom.gba", 0x00748F80, 0x24

	.global gUnknown_08748FA4
gUnknown_08748FA4:
	.incbin "baserom.gba", 0x00748FA4, 0x38

	.global gUnknown_08748FDC
gUnknown_08748FDC:
	.incbin "baserom.gba", 0x00748FDC, 0x24

	.global gUnknown_08749000
gUnknown_08749000:
	.incbin "baserom.gba", 0x00749000, 0x44

	.global gUnknown_08749044
gUnknown_08749044:
	.incbin "baserom.gba", 0x00749044, 0x6C

	.global gUnknown_087490B0
gUnknown_087490B0:
	.incbin "baserom.gba", 0x007490B0, 0x6C

	.global gUnknown_0874911C
gUnknown_0874911C:
	.incbin "baserom.gba", 0x0074911C, 0x3C

	.global gUnknown_08749158
gUnknown_08749158:
	.incbin "baserom.gba", 0x00749158, 0x3C

	.global gUnknown_08749194
gUnknown_08749194:
	.incbin "baserom.gba", 0x00749194, 0x30

	.global gUnknown_087491C4
gUnknown_087491C4:
	.incbin "baserom.gba", 0x007491C4, 0x28

	.global gUnknown_087491EC
gUnknown_087491EC:
	.incbin "baserom.gba", 0x007491EC, 0x24

	.global gUnknown_08749210
gUnknown_08749210:
	.incbin "baserom.gba", 0x00749210, 0x30

	.global gUnknown_08749240
gUnknown_08749240:
	.incbin "baserom.gba", 0x00749240, 0x28

	.global gUnknown_08749268
gUnknown_08749268:
	.incbin "baserom.gba", 0x00749268, 0x28

	.global gUnknown_08749290
gUnknown_08749290:
	.incbin "baserom.gba", 0x00749290, 0x30

	.global gUnknown_087492C0
gUnknown_087492C0:
	.incbin "baserom.gba", 0x007492C0, 0x54

	.global gUnknown_08749314
gUnknown_08749314:
	.incbin "baserom.gba", 0x00749314, 0x20

	.global gUnknown_08749334
gUnknown_08749334:
	.incbin "baserom.gba", 0x00749334, 0x2C

	.global gUnknown_08749360
gUnknown_08749360:
	.incbin "baserom.gba", 0x00749360, 0x24

	.global gUnknown_08749384
gUnknown_08749384:
	.incbin "baserom.gba", 0x00749384, 0x24

	.global gUnknown_087493A8
gUnknown_087493A8:
	.incbin "baserom.gba", 0x007493A8, 0x2C

	.global gUnknown_087493D4
gUnknown_087493D4:
	.incbin "baserom.gba", 0x007493D4, 0x30

	.global gUnknown_08749404
gUnknown_08749404:
    .incbin "baserom.gba", 0x00749404, 0x24
