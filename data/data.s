	.section .rodata
    .include "asm/macros.inc"

    .global gUnknown_08013B58
gUnknown_08013B58:
    .incbin "baserom.gba", 0x00013B58, 0xC

    .global gUnknown_08013B64
gUnknown_08013B64:
    .incbin "baserom.gba", 0x00013B64, 0x6

    .global gUnknown_08013B6A
gUnknown_08013B6A:
    .incbin "baserom.gba", 0x00013B6A, 0x6

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

    .global gSineTable
gSineTable:
    .2byte 0x0000, 0x0006, 0x000c, 0x0012, 0x0019, 0x001f, 0x0025, 0x002b, 0x0031, 0x0038, 0x003e, 0x0044, 0x004a, 0x0050, 0x0056, 0x005c
    .2byte 0x0061, 0x0067, 0x006d, 0x0073, 0x0078, 0x007e, 0x0083, 0x0088, 0x008e, 0x0093, 0x0098, 0x009d, 0x00a2, 0x00a7, 0x00ab, 0x00b0
    .2byte 0x00b5, 0x00b9, 0x00bd, 0x00c1, 0x00c5, 0x00c9, 0x00cd, 0x00d1, 0x00d4, 0x00d8, 0x00db, 0x00de, 0x00e1, 0x00e4, 0x00e7, 0x00ea
    .2byte 0x00ec, 0x00ee, 0x00f1, 0x00f3, 0x00f4, 0x00f6, 0x00f8, 0x00f9, 0x00fb, 0x00fc, 0x00fd, 0x00fe, 0x00fe, 0x00ff, 0x00ff, 0x00ff
    .2byte 0x0100, 0x00ff, 0x00ff, 0x00ff, 0x00fe, 0x00fe, 0x00fd, 0x00fc, 0x00fb, 0x00f9, 0x00f8, 0x00f6, 0x00f4, 0x00f3, 0x00f1, 0x00ee
    .2byte 0x00ec, 0x00ea, 0x00e7, 0x00e4, 0x00e1, 0x00de, 0x00db, 0x00d8, 0x00d4, 0x00d1, 0x00cd, 0x00c9, 0x00c5, 0x00c1, 0x00bd, 0x00b9
    .2byte 0x00b5, 0x00b0, 0x00ab, 0x00a7, 0x00a2, 0x009d, 0x0098, 0x0093, 0x008e, 0x0088, 0x0083, 0x007e, 0x0078, 0x0073, 0x006d, 0x0067
    .2byte 0x0061, 0x005c, 0x0056, 0x0050, 0x004a, 0x0044, 0x003e, 0x0038, 0x0031, 0x002b, 0x0025, 0x001f, 0x0019, 0x0012, 0x000c, 0x0006
    .2byte 0x0000, 0xfffa, 0xfff4, 0xffee, 0xffe7, 0xffe1, 0xffdb, 0xffd5, 0xffcf, 0xffc8, 0xffc2, 0xffbc, 0xffb6, 0xffb0, 0xffaa, 0xffa4
    .2byte 0xff9f, 0xff99, 0xff93, 0xff8d, 0xff88, 0xff82, 0xff7d, 0xff78, 0xff72, 0xff6d, 0xff68, 0xff63, 0xff5e, 0xff59, 0xff55, 0xff50
    .2byte 0xff4b, 0xff47, 0xff43, 0xff3f, 0xff3b, 0xff37, 0xff33, 0xff2f, 0xff2c, 0xff28, 0xff25, 0xff22, 0xff1f, 0xff1c, 0xff19, 0xff16
    .2byte 0xff14, 0xff12, 0xff0f, 0xff0d, 0xff0c, 0xff0a, 0xff08, 0xff07, 0xff05, 0xff04, 0xff03, 0xff02, 0xff02, 0xff01, 0xff01, 0xff01
    .2byte 0xff00, 0xff01, 0xff01, 0xff01, 0xff02, 0xff02, 0xff03, 0xff04, 0xff05, 0xff07, 0xff08, 0xff0a, 0xff0c, 0xff0d, 0xff0f, 0xff12
    .2byte 0xff14, 0xff16, 0xff19, 0xff1c, 0xff1f, 0xff22, 0xff25, 0xff28, 0xff2c, 0xff2f, 0xff33, 0xff37, 0xff3b, 0xff3f, 0xff43, 0xff47
    .2byte 0xff4b, 0xff50, 0xff55, 0xff59, 0xff5e, 0xff63, 0xff68, 0xff6d, 0xff72, 0xff78, 0xff7d, 0xff82, 0xff88, 0xff8d, 0xff93, 0xff99
    .2byte 0xff9f, 0xffa4, 0xffaa, 0xffb0, 0xffb6, 0xffbc, 0xffc2, 0xffc8, 0xffcf, 0xffd5, 0xffdb, 0xffe1, 0xffe7, 0xffee, 0xfff4, 0xfffa
    .2byte 0x0000, 0x0006, 0x000c, 0x0012, 0x0019, 0x001f, 0x0025, 0x002b, 0x0031, 0x0038, 0x003e, 0x0044, 0x004a, 0x0050, 0x0056, 0x005c
    .2byte 0x0061, 0x0067, 0x006d, 0x0073, 0x0078, 0x007e, 0x0083, 0x0088, 0x008e, 0x0093, 0x0098, 0x009d, 0x00a2, 0x00a7, 0x00ab, 0x00b0
    .2byte 0x00b5, 0x00b9, 0x00bd, 0x00c1, 0x00c5, 0x00c9, 0x00cd, 0x00d1, 0x00d4, 0x00d8, 0x00db, 0x00de, 0x00e1, 0x00e4, 0x00e7, 0x00ea
    .2byte 0x00ec, 0x00ee, 0x00f1, 0x00f3, 0x00f4, 0x00f6, 0x00f8, 0x00f9, 0x00fb, 0x00fc, 0x00fd, 0x00fe, 0x00fe, 0x00ff, 0x00ff, 0x00ff

	.global gUnknown_08014D70
gUnknown_08014D70:
	.incbin "baserom.gba", 0x00014D70, 0x12

	.global gUnknown_08014D82
gUnknown_08014D82:
	.incbin "baserom.gba", 0x00014D82, 0x22

	.global gUnknown_08014DA4
gUnknown_08014DA4:
	.incbin "baserom.gba", 0x00014DA4, 0x8

	.global gUnknown_08014DAC
gUnknown_08014DAC:
	.incbin "baserom.gba", 0x00014DAC, 0x60

	.global gUnknown_08014E0C
gUnknown_08014E0C:
	.incbin "baserom.gba", 0x00014E0C, 0x4

	.global gUnknown_08014E10
gUnknown_08014E10:
	.incbin "baserom.gba", 0x00014E10, 0x10

	.global gUnknown_08014E20
gUnknown_08014E20:
	.incbin "baserom.gba", 0x00014E20, 0x12

	.global gUnknown_08014E32
gUnknown_08014E32:
	.incbin "baserom.gba", 0x00014E32, 0x16

	.global gUnknown_08014E48
gUnknown_08014E48:
	.incbin "baserom.gba", 0x00014E48, 0x78

	.global gUnknown_08014EC0
gUnknown_08014EC0:
	.incbin "baserom.gba", 0x00014EC0, 0x70

	.global gUnknown_08014F30
gUnknown_08014F30:
	.incbin "baserom.gba", 0x00014F30, 0x88

	.global gUnknown_08014FB8
gUnknown_08014FB8:
	.incbin "baserom.gba", 0x00014FB8, 0x118

	.global gUnknown_080150D0
gUnknown_080150D0:
	.incbin "baserom.gba", 0x000150D0, 0x30

	.global gUnknown_08015100
gUnknown_08015100:
	.incbin "baserom.gba", 0x00015100, 0x78

	.global gUnknown_08015178
gUnknown_08015178:
	.incbin "baserom.gba", 0x00015178, 0x64

	.global gUnknown_080151DC
gUnknown_080151DC:
	.incbin "baserom.gba", 0x000151DC, 0xDC

	.global gUnknown_080152B8
gUnknown_080152B8:
	.incbin "baserom.gba", 0x000152B8, 0x28

	.global gUnknown_080152E0
gUnknown_080152E0:
	.incbin "baserom.gba", 0x000152E0, 0x64

	.global gUnknown_08015344
gUnknown_08015344:
	.incbin "baserom.gba", 0x00015344, 0x78

	.global gUnknown_080153BC
gUnknown_080153BC:
	.incbin "baserom.gba", 0x000153BC, 0x60

	.global gUnknown_0801541C
gUnknown_0801541C:
	.incbin "baserom.gba", 0x0001541C, 0x104

	.global gUnknown_08015520
gUnknown_08015520:
	.incbin "baserom.gba", 0x00015520, 0x30

	.global gUnknown_08015550
gUnknown_08015550:
	.incbin "baserom.gba", 0x00015550, 0x64

	.global gUnknown_080155B4
gUnknown_080155B4:
	.incbin "baserom.gba", 0x000155B4, 0x64

	.global gUnknown_08015618
gUnknown_08015618:
	.incbin "baserom.gba", 0x00015618, 0x28

	.global gUnknown_08015640
gUnknown_08015640:
	.incbin "baserom.gba", 0x00015640, 0x78

	.global gUnknown_080156B8
gUnknown_080156B8:
	.incbin "baserom.gba", 0x000156B8, 0x64

	.global gUnknown_0801571C
gUnknown_0801571C:
	.incbin "baserom.gba", 0x0001571C, 0x64

	.global gUnknown_08015780
gUnknown_08015780:
	.incbin "baserom.gba", 0x00015780, 0x78

	.global gUnknown_080157F8
gUnknown_080157F8:
	.incbin "baserom.gba", 0x000157F8, 0x78

	.global gUnknown_08015870
gUnknown_08015870:
	.incbin "baserom.gba", 0x00015870, 0x6

	.global gUnknown_08015876
gUnknown_08015876:
	.incbin "baserom.gba", 0x00015876, 0xE

	.global gUnknown_08015884
gUnknown_08015884:
	.incbin "baserom.gba", 0x00015884, 0xF

	.global gUnknown_08015893
gUnknown_08015893:
	.incbin "baserom.gba", 0x00015893, 0x14

	.global gUnknown_080158A7
gUnknown_080158A7:
	.incbin "baserom.gba", 0x000158A7, 0x14

	.global gUnknown_080158BB
gUnknown_080158BB:
	.incbin "baserom.gba", 0x000158BB, 0x19

	.global gUnknown_080158D4
gUnknown_080158D4:
	.incbin "baserom.gba", 0x000158D4, 0x48

	.global gUnknown_0801591C
gUnknown_0801591C:
	.incbin "baserom.gba", 0x0001591C, 0x28

	.global gUnknown_08015944
gUnknown_08015944:
	.incbin "baserom.gba", 0x00015944, 0x30

	.global gUnknown_08015974
gUnknown_08015974:
	.incbin "baserom.gba", 0x00015974, 0x50

	.global gUnknown_080159C4
gUnknown_080159C4:
	.incbin "baserom.gba", 0x000159C4, 0x58

	.global gUnknown_08015A1C
gUnknown_08015A1C:
	.incbin "baserom.gba", 0x00015A1C, 0x154

	.global gUnknown_08015B70
gUnknown_08015B70:
	.incbin "baserom.gba", 0x00015B70, 0x60

	.global gUnknown_08015BD0
gUnknown_08015BD0:
	.incbin "baserom.gba", 0x00015BD0, 0x64

	.global gUnknown_08015C34
gUnknown_08015C34:
	.incbin "baserom.gba", 0x00015C34, 0x28

	.global gUnknown_08015C5C
gUnknown_08015C5C:
	.incbin "baserom.gba", 0x00015C5C, 0x64

	.global gUnknown_08015CC0
gUnknown_08015CC0:
	.incbin "baserom.gba", 0x00015CC0, 0xC8

	.global gUnknown_08015D88
gUnknown_08015D88:
	.incbin "baserom.gba", 0x00015D88, 0x8C

	.global gUnknown_08015E14
gUnknown_08015E14:
	.incbin "baserom.gba", 0x00015E14, 0x78

	.global gUnknown_08015E8C
gUnknown_08015E8C:
	.incbin "baserom.gba", 0x00015E8C, 0x78

	.global gUnknown_08015F04
gUnknown_08015F04:
	.incbin "baserom.gba", 0x00015F04, 0x120

	.global gUnknown_08016024
gUnknown_08016024:
	.incbin "baserom.gba", 0x00016024, 0x168

	.global gUnknown_0801618C
gUnknown_0801618C:
	.incbin "baserom.gba", 0x0001618C, 0x70

	.global gUnknown_080161FC
gUnknown_080161FC:
	.incbin "baserom.gba", 0x000161FC, 0x64

	.global gUnknown_08016260
gUnknown_08016260:
	.incbin "baserom.gba", 0x00016260, 0x64

	.global gUnknown_080162C4
gUnknown_080162C4:
	.incbin "baserom.gba", 0x000162C4, 0x28

	.global gUnknown_080162EC
gUnknown_080162EC:
	.incbin "baserom.gba", 0x000162EC, 0x64

	.global gUnknown_08016350
gUnknown_08016350:
	.incbin "baserom.gba", 0x00016350, 0x64

	.global gUnknown_080163B4
gUnknown_080163B4:
	.incbin "baserom.gba", 0x000163B4, 0xC8

	.global gUnknown_0801647C
gUnknown_0801647C:
	.incbin "baserom.gba", 0x0001647C, 0xC8

	.global gUnknown_08016544
gUnknown_08016544:
	.incbin "baserom.gba", 0x00016544, 0x8C

	.global gUnknown_080165D0
gUnknown_080165D0:
	.incbin "baserom.gba", 0x000165D0, 0x8C

	.global gUnknown_0801665C
gUnknown_0801665C:
	.incbin "baserom.gba", 0x0001665C, 0x78

	.global gUnknown_080166D4
gUnknown_080166D4:
	.incbin "baserom.gba", 0x000166D4, 0x78

	.global gUnknown_0801674C
gUnknown_0801674C:
	.incbin "baserom.gba", 0x0001674C, 0x78

	.global gUnknown_080167C4
gUnknown_080167C4:
	.incbin "baserom.gba", 0x000167C4, 0x78

	.global gUnknown_0801683C
gUnknown_0801683C:
	.incbin "baserom.gba", 0x0001683C, 0xB4

	.global gUnknown_080168F0
gUnknown_080168F0:
	.incbin "baserom.gba", 0x000168F0, 0xB4

	.global gUnknown_080169A4
gUnknown_080169A4:
	.incbin "baserom.gba", 0x000169A4, 0x8C

	.global gUnknown_08016A30
gUnknown_08016A30:
	.incbin "baserom.gba", 0x00016A30, 0x8C

	.global gUnknown_08016ABC
gUnknown_08016ABC:
	.incbin "baserom.gba", 0x00016ABC, 0xB0

	.global gUnknown_08016B6C
gUnknown_08016B6C:
	.incbin "baserom.gba", 0x00016B6C, 0x104

	.global gUnknown_08016C70
gUnknown_08016C70:
	.incbin "baserom.gba", 0x00016C70, 0x70

	.global gUnknown_08016CE0
gUnknown_08016CE0:
	.incbin "baserom.gba", 0x00016CE0, 0x64

	.global gUnknown_08016D44
gUnknown_08016D44:
	.incbin "baserom.gba", 0x00016D44, 0x28

	.global gUnknown_08016D6C
gUnknown_08016D6C:
	.incbin "baserom.gba", 0x00016D6C, 0x64

	.global gUnknown_08016DD0
gUnknown_08016DD0:
	.incbin "baserom.gba", 0x00016DD0, 0xC8

	.global gUnknown_08016E98
gUnknown_08016E98:
	.incbin "baserom.gba", 0x00016E98, 0x8C

	.global gUnknown_08016F24
gUnknown_08016F24:
	.incbin "baserom.gba", 0x00016F24, 0x8C

	.global gUnknown_08016FB0
gUnknown_08016FB0:
	.incbin "baserom.gba", 0x00016FB0, 0x78

	.global gUnknown_08017028
gUnknown_08017028:
	.incbin "baserom.gba", 0x00017028, 0xB4

	.global gUnknown_080170DC
gUnknown_080170DC:
	.incbin "baserom.gba", 0x000170DC, 0x8C

	.global gUnknown_08017168
gUnknown_08017168:
	.incbin "baserom.gba", 0x00017168, 0x6

	.global gUnknown_0801716E
gUnknown_0801716E:
	.incbin "baserom.gba", 0x0001716E, 0x11

	.global gUnknown_0801717F
gUnknown_0801717F:
	.incbin "baserom.gba", 0x0001717F, 0x16

	.global gUnknown_08017195
gUnknown_08017195:
	.incbin "baserom.gba", 0x00017195, 0x1C

	.global gUnknown_080171B1
gUnknown_080171B1:
	.incbin "baserom.gba", 0x000171B1, 0x1C

	.global gUnknown_080171CD
gUnknown_080171CD:
	.incbin "baserom.gba", 0x000171CD, 0x1B

	.global gUnknown_080171E8
gUnknown_080171E8:
	.incbin "baserom.gba", 0x000171E8, 0x58

	.global gUnknown_08017240
gUnknown_08017240:
	.incbin "baserom.gba", 0x00017240, 0x18

	.global gUnknown_08017258
gUnknown_08017258:
	.incbin "baserom.gba", 0x00017258, 0x40

	.global gUnknown_08017298
gUnknown_08017298:
	.incbin "baserom.gba", 0x00017298, 0x50

	.global gUnknown_080172E8
gUnknown_080172E8:
	.incbin "baserom.gba", 0x000172E8, 0xC8

	.global gUnknown_080173B0
gUnknown_080173B0:
	.incbin "baserom.gba", 0x000173B0, 0x1E0

	.global gUnknown_08017590
gUnknown_08017590:
	.incbin "baserom.gba", 0x00017590, 0xA8

	.global gUnknown_08017638
gUnknown_08017638:
	.incbin "baserom.gba", 0x00017638, 0x64

	.global gUnknown_0801769C
gUnknown_0801769C:
	.incbin "baserom.gba", 0x0001769C, 0x28

	.global gUnknown_080176C4
gUnknown_080176C4:
	.incbin "baserom.gba", 0x000176C4, 0x50

	.global gUnknown_08017714
gUnknown_08017714:
	.incbin "baserom.gba", 0x00017714, 0x8C

	.global gUnknown_080177A0
gUnknown_080177A0:
	.incbin "baserom.gba", 0x000177A0, 0x78

	.global gUnknown_08017818
gUnknown_08017818:
	.incbin "baserom.gba", 0x00017818, 0x8C

	.global gUnknown_080178A4
gUnknown_080178A4:
	.incbin "baserom.gba", 0x000178A4, 0x3C

	.global gUnknown_080178E0
gUnknown_080178E0:
	.incbin "baserom.gba", 0x000178E0, 0x78

	.global gUnknown_08017958
gUnknown_08017958:
	.incbin "baserom.gba", 0x00017958, 0x64

	.global gUnknown_080179BC
gUnknown_080179BC:
	.incbin "baserom.gba", 0x000179BC, 0x168

	.global gUnknown_08017B24
gUnknown_08017B24:
	.incbin "baserom.gba", 0x00017B24, 0x168

	.global gUnknown_08017C8C
gUnknown_08017C8C:
	.incbin "baserom.gba", 0x00017C8C, 0xA8

	.global gUnknown_08017D34
gUnknown_08017D34:
	.incbin "baserom.gba", 0x00017D34, 0x64

	.global gUnknown_08017D98
gUnknown_08017D98:
	.incbin "baserom.gba", 0x00017D98, 0x28

	.global gUnknown_08017DC0
gUnknown_08017DC0:
	.incbin "baserom.gba", 0x00017DC0, 0x50

	.global gUnknown_08017E10
gUnknown_08017E10:
	.incbin "baserom.gba", 0x00017E10, 0x78

	.global gUnknown_08017E88
gUnknown_08017E88:
	.incbin "baserom.gba", 0x00017E88, 0xDC

	.global gUnknown_08017F64
gUnknown_08017F64:
	.incbin "baserom.gba", 0x00017F64, 0x8C

	.global gUnknown_08017FF0
gUnknown_08017FF0:
	.incbin "baserom.gba", 0x00017FF0, 0x3C

	.global gUnknown_0801802C
gUnknown_0801802C:
	.incbin "baserom.gba", 0x0001802C, 0x8C

	.global gUnknown_080180B8
gUnknown_080180B8:
	.incbin "baserom.gba", 0x000180B8, 0x78

	.global gUnknown_08018130
gUnknown_08018130:
	.incbin "baserom.gba", 0x00018130, 0x50

	.global gUnknown_08018180
gUnknown_08018180:
	.incbin "baserom.gba", 0x00018180, 0x64

	.global gUnknown_080181E4
gUnknown_080181E4:
	.incbin "baserom.gba", 0x000181E4, 0x68

	.global gUnknown_0801824C
gUnknown_0801824C:
    .incbin "baserom.gba", 0x0001824C, 0xF0

    .global gUnknown_0801833C
gUnknown_0801833C:
    .incbin "baserom.gba", 0x0001833C, 0xA8

    .global gUnknown_080183E4
gUnknown_080183E4:
    .incbin "baserom.gba", 0x000183E4, 0x64

    .global gUnknown_08018448
gUnknown_08018448:
    .incbin "baserom.gba", 0x00018448, 0x28

    .global gUnknown_08018470
gUnknown_08018470:
    .incbin "baserom.gba", 0x00018470, 0x50

    .global gUnknown_080184C0
gUnknown_080184C0:
    .incbin "baserom.gba", 0x000184C0, 0x78

    .global gUnknown_08018538
gUnknown_08018538:
    .incbin "baserom.gba", 0x00018538, 0x3C

    .global gUnknown_08018574
gUnknown_08018574:
    .incbin "baserom.gba", 0x00018574, 0x8C

    .global gUnknown_08018600
gUnknown_08018600:
    .incbin "baserom.gba", 0x00018600, 0x78

    .global gUnknown_08018678
gUnknown_08018678:
    .incbin "baserom.gba", 0x00018678, 0x64

    .global gUnknown_080186DC
gUnknown_080186DC:
    .incbin "baserom.gba", 0x000186DC, 0x64

    .global gScriptTable @ These are pointers to all the scripts
gScriptTable:
    .4byte scenario_0_script
    .4byte scenario_1_0_script
    .4byte scenario_1_1_script
    .4byte scenario_1_2_script
    .4byte scenario_1_3_script
    .4byte scenario_2_0_script
    .4byte scenario_2_1_script
    .4byte scenario_2_2_script
    .4byte scenario_2_3_script
    .4byte scenario_2_4_script
    .4byte scenario_2_5_script
    .4byte scenario_3_0_script
    .4byte scenario_3_1_script
    .4byte scenario_3_2_script
    .4byte scenario_3_3_script
    .4byte scenario_3_4_script
    .4byte scenario_3_5_script

    .global gSoundCueTable
gSoundCueTable:
    .incbin "baserom.gba", 0x00018784, 0x30

    .global gCourtScrollGfxPointers
gCourtScrollGfxPointers:
    .4byte gUnknown_08427D88
    .4byte gUnknown_08472F88
    .4byte gUnknown_084BE188

    .global gTextboxDownArrowTileIndexes
gTextboxDownArrowTileIndexes:
    .incbin "baserom.gba", 0x000187C0, 0x8

    .global gUnknown_080187C8
gUnknown_080187C8:
	.4byte gUnknown_0824698C
	.2byte 0x0080
	.2byte 0x0000
	.2byte 0x4000
	.2byte 0x0000
	.4byte gUnknown_08246A0C
	.2byte 0x0080
	.2byte 0x0000
	.2byte 0x4000
	.2byte 0x0000
	.4byte gUnknown_08246A8C
	.2byte 0x0400
	.2byte 0x8038
	.2byte 0xc086
	.2byte 0x0000
	.4byte gUnknown_08246E8C
	.2byte 0x0040
	.2byte 0x8050
	.2byte 0x00a0
	.2byte 0x0000
	.4byte gUnknown_08246ECC
	.2byte 0x0800
	.2byte 0x0008
	.2byte 0xc000
	.2byte 0x0000
	.4byte gUnknown_082476CC
	.2byte 0x0800
	.2byte 0x0050
	.2byte 0xc048
	.2byte 0x0000
	.4byte gUnknown_08247ECC
	.2byte 0x0800
	.2byte 0x0028
	.2byte 0xc0b0
	.2byte 0x0000
	.4byte gUnknown_082486CC
	.2byte 0x0080
	.2byte 0x8010
	.2byte 0x4068
	.2byte 0x0000
	.4byte gUnknown_0824874C
	.2byte 0x0100
	.2byte 0x4000
	.2byte 0x8090
	.2byte 0x0000
	.4byte gUnknown_0824884C
	.2byte 0x0080
	.2byte 0x0010
	.2byte 0x4098
	.2byte 0x0000
	.4byte gUnknown_082488CC
	.2byte 0x0040
	.2byte 0x4030
	.2byte 0x0050
	.2byte 0x0000
	.4byte gUnknown_0824890C
	.2byte 0x0200
	.2byte 0x0018
	.2byte 0xc048
	.2byte 0x0000
	.4byte gUnknown_08248B0C
	.2byte 0x0100
	.2byte 0x4008
	.2byte 0x8068
	.2byte 0x0000
	.4byte gUnknown_08248C0C
	.2byte 0x0040
	.2byte 0x8030
	.2byte 0x0050
	.2byte 0x0000

    .global gUnknown_08018870
gUnknown_08018870:
    .incbin "baserom.gba", 0x00018870, 0x134

    .global gUnknown_080189A4
gUnknown_080189A4:
    .incbin "baserom.gba", 0x000189A4, 0x98

    .global gSaveVersion
gSaveVersion:
    .ascii "2001 CAPCOM GBA GYAKUTEN-SAIBAN 06/15 Ver 1.000-"

    .global gUnknown_08018A6C
gUnknown_08018A6C:
	.4byte gUnknown_08196CA8
	.4byte 0x00000012
	.4byte gUnknown_081970DC
	.4byte 0x00000017
	.4byte gUnknown_08197514
	.4byte 0x00000013
	.4byte gUnknown_08197928
	.4byte 0x00000014
	.4byte gUnknown_08197D18
	.4byte 0x00000015
	.4byte gUnknown_081981A0
	.4byte 0x00000016
	.4byte gUnknown_081985D8
	.4byte 0x00000010
	.4byte gUnknown_08198A84
	.4byte 0x0000000e
	.4byte gUnknown_08198E5C
	.4byte 0x0000000f
	.4byte gUnknown_08199228
	.4byte 0x00000011
	.4byte gUnknown_08199690
	.4byte 0x00000012
	.4byte gUnknown_08199AEC
	.4byte 0x00000017
	.4byte gUnknown_08199EC8
	.4byte 0x00000017
	.4byte gUnknown_0819A2E4
	.4byte 0x00000017
	.4byte gUnknown_0819A700
	.4byte 0x0000001e
	.4byte gUnknown_0819ABBC
	.4byte 0x0000000a
	.4byte gUnknown_0819B028
	.4byte 0x0000000b
	.4byte gUnknown_0819B428
	.4byte 0x0000000b
	.4byte gUnknown_0819B868
	.4byte 0x0000000b
	.4byte gUnknown_0819BCE4
	.4byte 0x0000000d
	.4byte gUnknown_0819C0D8
	.4byte 0x0000000c
	.4byte gUnknown_0819C434
	.4byte 0x0000000c
	.4byte gUnknown_0819C810
	.4byte 0x0000001d
	.4byte gUnknown_0819CC44
	.4byte 0x00000006
	.4byte gUnknown_0819D028
	.4byte 0x00000010
	.4byte gUnknown_0819D4C8
	.4byte 0x00000007
	.4byte gUnknown_0819D90C
	.4byte 0x00020003
	.4byte gUnknown_0819DDAC
	.4byte 0x0000001a
	.4byte gUnknown_0819E18C
	.4byte 0x0000000e
	.4byte gUnknown_0819E5A0
	.4byte 0x0000000e
	.4byte gUnknown_0819E9D8
	.4byte 0x00000018
	.4byte gUnknown_0819EDF0
	.4byte 0x00000008
	.4byte gUnknown_0819F208
	.4byte 0x00000002
	.4byte gUnknown_0819F5C0
	.4byte 0x00000011
	.4byte gUnknown_0819F9E8
	.4byte 0x0000001c
	.4byte gUnknown_0819FD84
	.4byte 0x0000000d
	.4byte gUnknown_081A0120
	.4byte 0x0000001b
	.4byte gUnknown_081A0580
	.4byte 0x00010009
	.4byte gUnknown_081A09E4
	.4byte 0x00000011
	.4byte gUnknown_081A0E58
	.4byte 0x00000010
	.4byte gUnknown_081A1324
	.4byte 0x00000007
	.4byte gUnknown_081A1728
	.4byte 0x00000001
	.4byte gUnknown_081A1A10
	.4byte 0x0000002b
	.4byte gUnknown_081A1E1C
	.4byte 0x00000030
	.4byte gUnknown_081A22A4
	.4byte 0x0000002f
	.4byte gUnknown_081A26BC
	.4byte 0x0000002d
	.4byte gUnknown_081A2AE4
	.4byte 0x0000002e
	.4byte gUnknown_081A2EE4
	.4byte 0x0000002c
	.4byte gUnknown_081A3330
	.4byte 0x0000002a
	.4byte gUnknown_081A3714
	.4byte 0x00000011
	.4byte gUnknown_081A3B44
	.4byte 0x00000010
	.4byte gUnknown_081A3FF8
	.4byte 0x00000025
	.4byte gUnknown_081A439C
	.4byte 0x00000009
	.4byte gUnknown_081A47D4
	.4byte 0x00030009
	.4byte gUnknown_081A4BD4
	.4byte 0x00040009
	.4byte gUnknown_081A4FF0
	.4byte 0x00000019
	.4byte gUnknown_081A541C
	.4byte 0x00000019
	.4byte gUnknown_081A5828
	.4byte 0x00000021
	.4byte gUnknown_081A5BF4
	.4byte 0x00000026
	.4byte gUnknown_081A5FA4
	.4byte 0x00000007
	.4byte gUnknown_081A639C
	.4byte 0x00000022
	.4byte gUnknown_081A675C
	.4byte 0x00000027
	.4byte gUnknown_081A6B88
	.4byte 0x0000001f
	.4byte gUnknown_081A6F68
	.4byte 0x00000020
	.4byte gUnknown_081A7310
	.4byte 0x00000028
	.4byte gUnknown_081A775C
	.4byte 0x00000023
	.4byte gUnknown_081A7B68
	.4byte 0x00000024
	.4byte gUnknown_081A7FA4
	.4byte 0x00000021
	.4byte gUnknown_081A83C4
	.4byte 0x00050009
	.4byte gUnknown_081A8828
	.4byte 0x00000029
	.4byte gUnknown_081A8C30
	.4byte 0x00000000
	.4byte gUnknown_081A8F4C
	.4byte 0x0000001e
	.4byte gUnknown_081A9380
	.4byte 0x0000003a
	.4byte gUnknown_081A97CC
	.4byte 0x0000003a
	.4byte gUnknown_081A9BC8
	.4byte 0x00000013
	.4byte gUnknown_081AA054
	.4byte 0x0000003d
	.4byte gUnknown_081AA458
	.4byte 0x0000001c
	.4byte gUnknown_081AA894
	.4byte 0x0000003b
	.4byte gUnknown_081AACDC
	.4byte 0x0000003c
	.4byte gUnknown_081AB178
	.4byte 0x0000003e
	.4byte gUnknown_081AB574
	.4byte 0x0000003e
	.4byte gUnknown_081AB9FC
	.4byte 0x00000031
	.4byte gUnknown_081ABE00
	.4byte 0x00000010
	.4byte gUnknown_081AC2B0
	.4byte 0x00000010
	.4byte gUnknown_081AC75C
	.4byte 0x00000010
	.4byte gUnknown_081ACBFC
	.4byte 0x00000001
	.4byte gUnknown_081AD02C
	.4byte 0x00060009
	.4byte gUnknown_081AD448
	.4byte 0x00070009
	.4byte gUnknown_081AD864
	.4byte 0x00000009
	.4byte gUnknown_081ADCD4
	.4byte 0x0000001c
	.4byte gUnknown_081AE0DC
	.4byte 0x000b0004
	.4byte gUnknown_081AE4FC
	.4byte 0x00000011
	.4byte gUnknown_081AE938
	.4byte 0x00080009
	.4byte gUnknown_081AED3C
	.4byte 0x00000005
	.4byte gUnknown_081AF15C
	.4byte 0x00000005
	.4byte gUnknown_081AF5A8
	.4byte 0x00000032
	.4byte gUnknown_081AF9DC
	.4byte 0x00000011
	.4byte gUnknown_081AFE0C
	.4byte 0x00000033
	.4byte gUnknown_081B01D0
	.4byte 0x00000035
	.4byte gUnknown_081B0594
	.4byte 0x00000038
	.4byte gUnknown_081B0984
	.4byte 0x00000034
	.4byte gUnknown_081B0DC4
	.4byte 0x00000039
	.4byte gUnknown_081B1150
	.4byte 0x0000003f
	.4byte gUnknown_081B14EC
	.4byte 0x00090010
	.4byte gUnknown_081B18C0
	.4byte 0x000a0009
	.4byte gUnknown_081B1CBC
	.4byte 0x00000007
	.4byte gUnknown_081B2150
	.4byte 0x00000037
	.4byte gUnknown_081B25F0
	.4byte 0x00000036

    .global gUnknown_08018DCC
gUnknown_08018DCC:
    .incbin "baserom.gba", 0x00018DCC, 0x4

    .global gUnknown_08018DD0
gUnknown_08018DD0:
    .incbin "baserom.gba", 0x00018DD0, 0x4

    .global gUnknown_08018DD4
gUnknown_08018DD4: @ person data
    .4byte 0x00000000
    .4byte 0x00000000
    .2byte 0x0000
    .2byte 0x0000
    .4byte 0x00000000
    .4byte 0x00000000
    .2byte 0x0000
    .2byte 0x0000
    .4byte gUnknown_08509388
    .4byte gUnknown_08532B84
    .2byte 0x0025
    .2byte 0x0000
    .4byte 0x00000000
    .4byte 0x00000000
    .2byte 0x0000
    .2byte 0x0000
    .4byte gUnknown_08536720
    .4byte gUnknown_08555EF4
    .2byte 0x001c
    .2byte 0x0000
    .4byte gUnknown_0855DCE4
    .4byte gUnknown_08569D8C
    .2byte 0x001c
    .2byte 0x0000
    .4byte 0x00000000
    .4byte 0x00000000
    .2byte 0x0000
    .2byte 0x0000
    .4byte gUnknown_0856C438
    .4byte gUnknown_08575EC0
    .2byte 0x001c
    .2byte 0x0000
    .4byte gUnknown_08577ADC
    .4byte gUnknown_0857CA00
    .2byte 0x0013
    .2byte 0x0000
    .4byte gUnknown_0857D794
    .4byte gUnknown_085B76BC
    .2byte 0x0026
    .2byte 0x0000
    .4byte gUnknown_08622F20
    .4byte gUnknown_08626564
    .2byte 0x0017
    .2byte 0x0000
    .4byte 0x00000000
    .4byte 0x00000000
    .2byte 0x0000
    .2byte 0x0000
    .4byte gUnknown_08670494
    .4byte gUnknown_08675038
    .2byte 0x0021
    .2byte 0x0000
    .4byte 0x00000000
    .4byte 0x00000000
    .2byte 0x0000
    .2byte 0x0000
    .4byte 0x00000000
    .4byte 0x00000000
    .2byte 0x0000
    .2byte 0x0000
    .4byte 0x00000000
    .4byte 0x00000000
    .2byte 0x0000
    .2byte 0x0000
    .4byte gUnknown_086812FC
    .4byte gUnknown_086851E0
    .2byte 0x000e
    .2byte 0x0000
    .4byte gUnknown_086758CC
    .4byte gUnknown_0867EAB4
    .2byte 0x001d
    .2byte 0x0000
    .4byte gUnknown_08691040
    .4byte gUnknown_086A146C
    .2byte 0x0027
    .2byte 0x0000
    .4byte 0x00000000
    .4byte 0x00000000
    .2byte 0x0000
    .2byte 0x0000
    .4byte gUnknown_085C2C94
    .4byte gUnknown_085E3388
    .2byte 0x0027
    .2byte 0x0000
    .4byte gUnknown_085E8A48
    .4byte gUnknown_0860EF60
    .2byte 0x0024
    .2byte 0x0000
    .4byte gUnknown_08612014
    .4byte gUnknown_0862057C
    .2byte 0x001e
    .2byte 0x0000
    .4byte gUnknown_08626AD0
    .4byte gUnknown_0862ADB4
    .2byte 0x0023
    .2byte 0x0000
    .4byte gUnknown_086A3A80
    .4byte gUnknown_086B0EA8
    .2byte 0x001d
    .2byte 0x0000
    .4byte gUnknown_0862BA68
    .4byte gUnknown_08651F00
    .2byte 0x0027
    .2byte 0x0000
    .4byte gUnknown_0865787C
    .4byte gUnknown_0866E26C
    .2byte 0x0026
    .2byte 0x0000
    .4byte gUnknown_08685AEC
    .4byte gUnknown_0868FCF4
    .2byte 0x0027
    .2byte 0x0000
    .4byte gUnknown_086B4504
    .4byte gUnknown_086C4B90
    .2byte 0x0012
    .2byte 0x0000
    .4byte gUnknown_086C7128
    .4byte gUnknown_086C9ECC
    .2byte 0x0007
    .2byte 0x0000
    .4byte gUnknown_086CA0FC
    .4byte gUnknown_086CCA60
    .2byte 0x000a
    .2byte 0x0000
    .4byte gUnknown_086CCD04
    .4byte gUnknown_086D7AEC
    .2byte 0x0018
    .2byte 0x0000
    .4byte gUnknown_086DA640
    .4byte gUnknown_086EF710
    .2byte 0x001d
    .2byte 0x0000
    .4byte gUnknown_086F328C
    .4byte gUnknown_087195C8
    .2byte 0x0024
    .2byte 0x0000
    .4byte gUnknown_0871CF30
    .4byte gUnknown_0871E9F4
    .2byte 0x000a
    .2byte 0x0000

    .global gUnknown_08018F78
gUnknown_08018F78:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
	.2byte 0x0000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06013d00
	.4byte gUnknown_08748520
	.2byte 0x002d
	.2byte 0x0050
	.byte 0x0d
	.byte 0x07
	.byte 0x00
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06013d00
	.4byte gUnknown_087484E8
	.2byte 0x002d
	.2byte 0x0050
	.byte 0x0d
	.byte 0x07
	.byte 0x00
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06013d00
	.4byte gUnknown_087484E8
	.2byte 0x00be
	.2byte 0x0050
	.byte 0x0d
	.byte 0x07
	.byte 0x00
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06013d00
	.4byte gUnknown_08748558
	.2byte 0x002d
	.2byte 0x0050
	.byte 0x0d
	.byte 0x07
	.byte 0x00
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06013400
	.4byte gUnknown_08748AB4
	.2byte 0x003c
	.2byte 0x0050
	.byte 0x0e
	.byte 0x07
	.byte 0x21
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06013fc0
	.4byte gUnknown_08748AEC
	.2byte 0x0104
	.2byte 0x0050
	.byte 0x0e
	.byte 0x07
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x060162e0
	.4byte gUnknown_08748D74
	.2byte 0x0050
	.2byte 0x0050
	.byte 0x0d
	.byte 0x07
	.byte 0x22
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x060162e0
	.4byte gUnknown_08748D74
	.2byte 0x00dc
	.2byte 0x0050
	.byte 0x0d
	.byte 0x07
	.byte 0x22
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x060162e0
	.4byte gUnknown_08748D74
	.2byte 0x0168
	.2byte 0x0050
	.byte 0x0d
	.byte 0x07
	.byte 0x22
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06013d00
	.4byte gUnknown_08748520
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x07
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06013d00
	.4byte gUnknown_087484E8
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x07
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871EBBC
	.4byte 0x06015800
	.4byte gUnknown_0871FCF4
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x01
	.byte 0x22
	.byte 0x00
	.4byte gUnknown_0871EBBC
	.4byte 0x06015800
	.4byte gUnknown_0871FD60
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x01
	.byte 0x22
	.byte 0x00
	.4byte gUnknown_0871EBBC
	.4byte 0x060175a0
	.4byte gUnknown_0871FD80
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x04
	.byte 0x22
	.byte 0x00
	.4byte gUnknown_0871EBBC
	.4byte 0x06017be0
	.4byte gUnknown_0871FDAC
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x02
	.byte 0x22
	.byte 0x00
	.4byte gUnknown_0871EBBC
	.4byte 0x060175a0
	.4byte gUnknown_0871FDD0
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x03
	.byte 0x22
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015000
	.4byte gUnknown_08748218
	.2byte 0x0078
	.2byte 0x003c
	.byte 0x06
	.byte 0x03
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015000
	.4byte gUnknown_08748340
	.2byte 0x0078
	.2byte 0x003c
	.byte 0x06
	.byte 0x03
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014c00
	.4byte gUnknown_08748468
	.2byte 0x0000
	.2byte 0x003c
	.byte 0x06
	.byte 0x01
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014800
	.4byte gUnknown_08748488
	.2byte 0x00f0
	.2byte 0x003c
	.byte 0x06
	.byte 0x01
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014c00
	.4byte gUnknown_087484A8
	.2byte 0x0000
	.2byte 0x003c
	.byte 0x06
	.byte 0x01
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014800
	.4byte gUnknown_087484C8
	.2byte 0x00f0
	.2byte 0x003c
	.byte 0x06
	.byte 0x01
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06016ec0
	.4byte gUnknown_08748590
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0e
	.byte 0x05
	.byte 0x21
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06016ec0
	.4byte gUnknown_087485C0
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0e
	.byte 0x06
	.byte 0x21
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015800
	.4byte gUnknown_087485F4
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x01
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015800
	.4byte gUnknown_08748684
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x01
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871EBBC
	.4byte 0x06015800
	.4byte gUnknown_0871FD14
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x0c
	.byte 0x22
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015800
	.4byte gUnknown_08748774
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0c
	.byte 0x0f
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06016800
	.4byte gUnknown_08748E0C
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0c
	.byte 0x06
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015800
	.4byte gUnknown_08748EE4
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x04
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015800
	.4byte gUnknown_08748B24
	.2byte 0x0078
	.2byte 0x0030
	.byte 0x0d
	.byte 0x0c
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015800
	.4byte gUnknown_08748C38
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x04
	.byte 0x20
	.byte 0x08
	.4byte gUnknown_0871FDF8
	.4byte 0x06015800
	.4byte gUnknown_08748CA0
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x0d
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015800
	.4byte gUnknown_08748D98
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x01
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015a00
	.4byte gUnknown_08748DB8
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0c
	.byte 0x02
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015da0
	.4byte gUnknown_08748F44
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0f
	.byte 0x08
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015c80
	.4byte gUnknown_08748F80
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0e
	.byte 0x02
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014ee0
	.4byte gUnknown_08748FA4
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x07
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015120
	.4byte gUnknown_08748FDC
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x02
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014a40
	.4byte gUnknown_08749000
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x0a
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015960
	.4byte gUnknown_08749044
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0c
	.byte 0x04
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015720
	.4byte gUnknown_087490B0
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0c
	.byte 0x04
	.byte 0x20
	.byte 0x01
	.4byte gUnknown_0871FDF8
	.4byte 0x060142a0
	.4byte gUnknown_0874911C
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x08
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x060144a0
	.4byte gUnknown_08749158
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x08
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014a60
	.4byte gUnknown_08749194
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x05
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x060148c0
	.4byte gUnknown_087491C4
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x03
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015c20
	.4byte gUnknown_087491EC
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0e
	.byte 0x02
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015ca0
	.4byte gUnknown_08749210
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0e
	.byte 0x05
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015960
	.4byte gUnknown_08749044
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0c
	.byte 0x04
	.byte 0x20
	.byte 0x10
	.4byte gUnknown_0871FDF8
	.4byte 0x06015720
	.4byte gUnknown_087490B0
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0c
	.byte 0x04
	.byte 0x20
	.byte 0x11
	.4byte gUnknown_0871FDF8
	.4byte 0x06014400
	.4byte gUnknown_08749240
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x03
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014340
	.4byte gUnknown_08749268
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x03
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014140
	.4byte gUnknown_08749290
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x05
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x060143e0
	.4byte gUnknown_087492C0
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x0e
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06015ba0
	.4byte gUnknown_08749314
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0b
	.byte 0x01
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014200
	.4byte gUnknown_08749334
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x04
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014280
	.4byte gUnknown_08749360
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x02
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014280
	.4byte gUnknown_08749384
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x02
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014880
	.4byte gUnknown_087493A8
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0d
	.byte 0x04
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x06014300
	.4byte gUnknown_087493D4
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x05
	.byte 0x20
	.byte 0x00
	.4byte gUnknown_0871FDF8
	.4byte 0x060142c0
	.4byte gUnknown_08749404
	.2byte 0x0078
	.2byte 0x0050
	.byte 0x0a
	.byte 0x02
	.byte 0x20
	.byte 0x00

    .global gUnknown_08019450
gUnknown_08019450:
    .incbin "baserom.gba", 0x00019450, 0x3C

    .global gUnknown_0801948C
gUnknown_0801948C:
    .incbin "baserom.gba", 0x0001948C, 0x1F

    .global gUnknown_080194AB
gUnknown_080194AB:
    .incbin "baserom.gba", 0x000194AB, 0x1F

    .global gUnknown_080194CA
gUnknown_080194CA:
    .incbin "baserom.gba", 0x000194CA, 0x22
    
    @ SOUND_DATA.s 

    @ SOUND_DATA2.s
