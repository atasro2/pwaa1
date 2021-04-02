	.section gfx_data, "aw", %progbits
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
	.incbin "graphics/unused_ascii_charset.4bpp"

	.global gUnknown_08186520
gUnknown_08186520:
	.incbin "graphics/evidence_profile_descriptions/evidence_profile_descriptions.gbapal"

	.global gUnknown_08186540
gUnknown_08186540:
	.incbin "graphics/ui/message_box/unk_186540.4bpp"

	.global gUnknown_08187540
gUnknown_08187540:
	.incbin "graphics/ui/message_box/nametags.4bpp"

	.global gUnknown_0818BD40
gUnknown_0818BD40:
	.incbin "graphics/ui/left_arrow.4bpp"
	.incbin "graphics/ui/right_arrow.4bpp"

	.global gUnknown_0818C040
gUnknown_0818C040:
	.incbin "graphics/ui/trial/exclamation_point.4bpp"
	.incbin "graphics/ui/trial/unused_testimony_characters.4bpp"

	.global gUnknown_0818E4C0
gUnknown_0818E4C0:
	.incbin "graphics/ui/investigation/action_buttons.4bpp"

	.global gUnknown_0818F4C0
gUnknown_0818F4C0:
	.incbin "graphics/ui/controller_buttons.4bpp"

	.global gUnknown_0818F6C0
gUnknown_0818F6C0:
	.incbin "graphics/ui/investigation/scroll_prompt.4bpp"

	.global gUnknown_0818F8C0
gUnknown_0818F8C0:
	.incbin "graphics/ui/trial/testimony_text_tiles.4bpp"

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
	.incbin "graphics/unk_194200_0.gbapal"
	.incbin "graphics/unk_194200_1.gbapal"

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

@ BEGIN PROFILE AND EVIDENCE DESCRIPTIONS

	.global gUnknown_08196CA8
gUnknown_08196CA8:
	.incbin "graphics/evidence_profile_descriptions/00196CA8.4bpp.lz"

	.global gUnknown_081970DC
gUnknown_081970DC:
	.incbin "graphics/evidence_profile_descriptions/001970DC.4bpp.lz"

	.global gUnknown_08197514
gUnknown_08197514:
	.incbin "graphics/evidence_profile_descriptions/00197514.4bpp.lz"

	.global gUnknown_08197928
gUnknown_08197928:
	.incbin "graphics/evidence_profile_descriptions/00197928.4bpp.lz"

	.global gUnknown_08197D18
gUnknown_08197D18:
	.incbin "graphics/evidence_profile_descriptions/00197D18.4bpp.lz"

	.global gUnknown_081981A0
gUnknown_081981A0:
	.incbin "graphics/evidence_profile_descriptions/001981A0.4bpp.lz"

	.global gUnknown_081985D8
gUnknown_081985D8:
	.incbin "graphics/evidence_profile_descriptions/001985D8.4bpp.lz"

	.global gUnknown_08198A84
gUnknown_08198A84:
	.incbin "graphics/evidence_profile_descriptions/00198A84.4bpp.lz"

	.global gUnknown_08198E5C
gUnknown_08198E5C:
	.incbin "graphics/evidence_profile_descriptions/00198E5C.4bpp.lz"

	.global gUnknown_08199228
gUnknown_08199228:
	.incbin "graphics/evidence_profile_descriptions/00199228.4bpp.lz"

	.global gUnknown_08199690
gUnknown_08199690:
	.incbin "graphics/evidence_profile_descriptions/00199690.4bpp.lz"

	.global gUnknown_08199AEC
gUnknown_08199AEC:
	.incbin "graphics/evidence_profile_descriptions/00199AEC.4bpp.lz"

	.global gUnknown_08199EC8
gUnknown_08199EC8:
	.incbin "graphics/evidence_profile_descriptions/00199EC8.4bpp.lz"

	.global gUnknown_0819A2E4
gUnknown_0819A2E4:
	.incbin "graphics/evidence_profile_descriptions/0019A2E4.4bpp.lz"

	.global gUnknown_0819A700
gUnknown_0819A700:
	.incbin "graphics/evidence_profile_descriptions/0019A700.4bpp.lz"

	.global gUnknown_0819ABBC
gUnknown_0819ABBC:
	.incbin "graphics/evidence_profile_descriptions/0019ABBC.4bpp.lz"

	.global gUnknown_0819B028
gUnknown_0819B028:
	.incbin "graphics/evidence_profile_descriptions/0019B028.4bpp.lz"

	.global gUnknown_0819B428
gUnknown_0819B428:
	.incbin "graphics/evidence_profile_descriptions/0019B428.4bpp.lz"

	.global gUnknown_0819B868
gUnknown_0819B868:
	.incbin "graphics/evidence_profile_descriptions/0019B868.4bpp.lz"

	.global gUnknown_0819BCE4
gUnknown_0819BCE4:
	.incbin "graphics/evidence_profile_descriptions/0019BCE4.4bpp.lz"

	.global gUnknown_0819C0D8
gUnknown_0819C0D8:
	.incbin "graphics/evidence_profile_descriptions/0019C0D8.4bpp.lz"

	.global gUnknown_0819C434
gUnknown_0819C434:
	.incbin "graphics/evidence_profile_descriptions/0019C434.4bpp.lz"

	.global gUnknown_0819C810
gUnknown_0819C810:
	.incbin "graphics/evidence_profile_descriptions/0019C810.4bpp.lz"

	.global gUnknown_0819CC44
gUnknown_0819CC44:
	.incbin "graphics/evidence_profile_descriptions/0019CC44.4bpp.lz"

	.global gUnknown_0819D028
gUnknown_0819D028:
	.incbin "graphics/evidence_profile_descriptions/0019D028.4bpp.lz"

	.global gUnknown_0819D4C8
gUnknown_0819D4C8:
	.incbin "graphics/evidence_profile_descriptions/0019D4C8.4bpp.lz"

	.global gUnknown_0819D90C
gUnknown_0819D90C:
	.incbin "graphics/evidence_profile_descriptions/0019D90C.4bpp.lz"

	.global gUnknown_0819DDAC
gUnknown_0819DDAC:
	.incbin "graphics/evidence_profile_descriptions/0019DDAC.4bpp.lz"

	.global gUnknown_0819E18C
gUnknown_0819E18C:
	.incbin "graphics/evidence_profile_descriptions/0019E18C.4bpp.lz"

	.global gUnknown_0819E5A0
gUnknown_0819E5A0:
	.incbin "graphics/evidence_profile_descriptions/0019E5A0.4bpp.lz"

	.global gUnknown_0819E9D8
gUnknown_0819E9D8:
	.incbin "graphics/evidence_profile_descriptions/0019E9D8.4bpp.lz"

	.global gUnknown_0819EDF0
gUnknown_0819EDF0:
	.incbin "graphics/evidence_profile_descriptions/0019EDF0.4bpp.lz"

	.global gUnknown_0819F208
gUnknown_0819F208:
	.incbin "graphics/evidence_profile_descriptions/0019F208.4bpp.lz"

	.global gUnknown_0819F5C0
gUnknown_0819F5C0:
	.incbin "graphics/evidence_profile_descriptions/0019F5C0.4bpp.lz"

	.global gUnknown_0819F9E8
gUnknown_0819F9E8:
	.incbin "graphics/evidence_profile_descriptions/0019F9E8.4bpp.lz"

	.global gUnknown_0819FD84
gUnknown_0819FD84:
	.incbin "graphics/evidence_profile_descriptions/0019FD84.4bpp.lz"

	.global gUnknown_081A0120
gUnknown_081A0120:
	.incbin "graphics/evidence_profile_descriptions/001A0120.4bpp.lz"

	.global gUnknown_081A0580
gUnknown_081A0580:
	.incbin "graphics/evidence_profile_descriptions/001A0580.4bpp.lz"

	.global gUnknown_081A09E4
gUnknown_081A09E4:
	.incbin "graphics/evidence_profile_descriptions/001A09E4.4bpp.lz"

	.global gUnknown_081A0E58
gUnknown_081A0E58:
	.incbin "graphics/evidence_profile_descriptions/001A0E58.4bpp.lz"

	.global gUnknown_081A1324
gUnknown_081A1324:
	.incbin "graphics/evidence_profile_descriptions/001A1324.4bpp.lz"

	.global gUnknown_081A1728
gUnknown_081A1728:
	.incbin "graphics/evidence_profile_descriptions/001A1728.4bpp.lz"

	.global gUnknown_081A1A10
gUnknown_081A1A10:
	.incbin "graphics/evidence_profile_descriptions/001A1A10.4bpp.lz"

	.global gUnknown_081A1E1C
gUnknown_081A1E1C:
	.incbin "graphics/evidence_profile_descriptions/001A1E1C.4bpp.lz"

	.global gUnknown_081A22A4
gUnknown_081A22A4:
	.incbin "graphics/evidence_profile_descriptions/001A22A4.4bpp.lz"

	.global gUnknown_081A26BC
gUnknown_081A26BC:
	.incbin "graphics/evidence_profile_descriptions/001A26BC.4bpp.lz"

	.global gUnknown_081A2AE4
gUnknown_081A2AE4:
	.incbin "graphics/evidence_profile_descriptions/001A2AE4.4bpp.lz"

	.global gUnknown_081A2EE4
gUnknown_081A2EE4:
	.incbin "graphics/evidence_profile_descriptions/001A2EE4.4bpp.lz"

	.global gUnknown_081A3330
gUnknown_081A3330:
	.incbin "graphics/evidence_profile_descriptions/001A3330.4bpp.lz"

	.global gUnknown_081A3714
gUnknown_081A3714:
	.incbin "graphics/evidence_profile_descriptions/001A3714.4bpp.lz"

	.global gUnknown_081A3B44
gUnknown_081A3B44:
	.incbin "graphics/evidence_profile_descriptions/001A3B44.4bpp.lz"

	.global gUnknown_081A3FF8
gUnknown_081A3FF8:
	.incbin "graphics/evidence_profile_descriptions/001A3FF8.4bpp.lz"

	.global gUnknown_081A439C
gUnknown_081A439C:
	.incbin "graphics/evidence_profile_descriptions/001A439C.4bpp.lz"

	.global gUnknown_081A47D4
gUnknown_081A47D4:
	.incbin "graphics/evidence_profile_descriptions/001A47D4.4bpp.lz"

	.global gUnknown_081A4BD4
gUnknown_081A4BD4:
	.incbin "graphics/evidence_profile_descriptions/001A4BD4.4bpp.lz"

	.global gUnknown_081A4FF0
gUnknown_081A4FF0:
	.incbin "graphics/evidence_profile_descriptions/001A4FF0.4bpp.lz"

	.global gUnknown_081A541C
gUnknown_081A541C:
	.incbin "graphics/evidence_profile_descriptions/001A541C.4bpp.lz"

	.global gUnknown_081A5828
gUnknown_081A5828:
	.incbin "graphics/evidence_profile_descriptions/001A5828.4bpp.lz"

	.global gUnknown_081A5BF4
gUnknown_081A5BF4:
	.incbin "graphics/evidence_profile_descriptions/001A5BF4.4bpp.lz"

	.global gUnknown_081A5FA4
gUnknown_081A5FA4:
	.incbin "graphics/evidence_profile_descriptions/001A5FA4.4bpp.lz"

	.global gUnknown_081A639C
gUnknown_081A639C:
	.incbin "graphics/evidence_profile_descriptions/001A639C.4bpp.lz"

	.global gUnknown_081A675C
gUnknown_081A675C:
	.incbin "graphics/evidence_profile_descriptions/001A675C.4bpp.lz"

	.global gUnknown_081A6B88
gUnknown_081A6B88:
	.incbin "graphics/evidence_profile_descriptions/001A6B88.4bpp.lz"

	.global gUnknown_081A6F68
gUnknown_081A6F68:
	.incbin "graphics/evidence_profile_descriptions/001A6F68.4bpp.lz"

	.global gUnknown_081A7310
gUnknown_081A7310:
	.incbin "graphics/evidence_profile_descriptions/001A7310.4bpp.lz"

	.global gUnknown_081A775C
gUnknown_081A775C:
	.incbin "graphics/evidence_profile_descriptions/001A775C.4bpp.lz"

	.global gUnknown_081A7B68
gUnknown_081A7B68:
	.incbin "graphics/evidence_profile_descriptions/001A7B68.4bpp.lz"

	.global gUnknown_081A7FA4
gUnknown_081A7FA4:
	.incbin "graphics/evidence_profile_descriptions/001A7FA4.4bpp.lz"

	.global gUnknown_081A83C4
gUnknown_081A83C4:
	.incbin "graphics/evidence_profile_descriptions/001A83C4.4bpp.lz"

	.global gUnknown_081A8828
gUnknown_081A8828:
	.incbin "graphics/evidence_profile_descriptions/001A8828.4bpp.lz"

	.global gUnknown_081A8C30
gUnknown_081A8C30:
	.incbin "graphics/evidence_profile_descriptions/001A8C30.4bpp.lz"

	.global gUnknown_081A8F4C
gUnknown_081A8F4C:
	.incbin "graphics/evidence_profile_descriptions/001A8F4C.4bpp.lz"

	.global gUnknown_081A9380
gUnknown_081A9380:
	.incbin "graphics/evidence_profile_descriptions/001A9380.4bpp.lz"

	.global gUnknown_081A97CC
gUnknown_081A97CC:
	.incbin "graphics/evidence_profile_descriptions/001A97CC.4bpp.lz"

	.global gUnknown_081A9BC8
gUnknown_081A9BC8:
	.incbin "graphics/evidence_profile_descriptions/001A9BC8.4bpp.lz"

	.global gUnknown_081AA054
gUnknown_081AA054:
	.incbin "graphics/evidence_profile_descriptions/001AA054.4bpp.lz"

	.global gUnknown_081AA458
gUnknown_081AA458:
	.incbin "graphics/evidence_profile_descriptions/001AA458.4bpp.lz"

	.global gUnknown_081AA894
gUnknown_081AA894:
	.incbin "graphics/evidence_profile_descriptions/001AA894.4bpp.lz"

	.global gUnknown_081AACDC
gUnknown_081AACDC:
	.incbin "graphics/evidence_profile_descriptions/001AACDC.4bpp.lz"

	.global gUnknown_081AB178
gUnknown_081AB178:
	.incbin "graphics/evidence_profile_descriptions/001AB178.4bpp.lz"

	.global gUnknown_081AB574
gUnknown_081AB574:
	.incbin "graphics/evidence_profile_descriptions/001AB574.4bpp.lz"

	.global gUnknown_081AB9FC
gUnknown_081AB9FC:
	.incbin "graphics/evidence_profile_descriptions/001AB9FC.4bpp.lz"

	.global gUnknown_081ABE00
gUnknown_081ABE00:
	.incbin "graphics/evidence_profile_descriptions/001ABE00.4bpp.lz"

	.global gUnknown_081AC2B0
gUnknown_081AC2B0:
	.incbin "graphics/evidence_profile_descriptions/001AC2B0.4bpp.lz"

	.global gUnknown_081AC75C
gUnknown_081AC75C:
	.incbin "graphics/evidence_profile_descriptions/001AC75C.4bpp.lz"

	.global gUnknown_081ACBFC
gUnknown_081ACBFC:
	.incbin "graphics/evidence_profile_descriptions/001ACBFC.4bpp.lz"

	.global gUnknown_081AD02C
gUnknown_081AD02C:
	.incbin "graphics/evidence_profile_descriptions/001AD02C.4bpp.lz"

	.global gUnknown_081AD448
gUnknown_081AD448:
	.incbin "graphics/evidence_profile_descriptions/001AD448.4bpp.lz"

	.global gUnknown_081AD864
gUnknown_081AD864:
	.incbin "graphics/evidence_profile_descriptions/001AD864.4bpp.lz"

	.global gUnknown_081ADCD4
gUnknown_081ADCD4:
	.incbin "graphics/evidence_profile_descriptions/001ADCD4.4bpp.lz"

	.global gUnknown_081AE0DC
gUnknown_081AE0DC:
	.incbin "graphics/evidence_profile_descriptions/001AE0DC.4bpp.lz"

	.global gUnknown_081AE4FC
gUnknown_081AE4FC:
	.incbin "graphics/evidence_profile_descriptions/001AE4FC.4bpp.lz"

	.global gUnknown_081AE938
gUnknown_081AE938:
	.incbin "graphics/evidence_profile_descriptions/001AE938.4bpp.lz"

	.global gUnknown_081AED3C
gUnknown_081AED3C:
	.incbin "graphics/evidence_profile_descriptions/001AED3C.4bpp.lz"

	.global gUnknown_081AF15C
gUnknown_081AF15C:
	.incbin "graphics/evidence_profile_descriptions/001AF15C.4bpp.lz"

	.global gUnknown_081AF5A8
gUnknown_081AF5A8:
	.incbin "graphics/evidence_profile_descriptions/001AF5A8.4bpp.lz"

	.global gUnknown_081AF9DC
gUnknown_081AF9DC:
	.incbin "graphics/evidence_profile_descriptions/001AF9DC.4bpp.lz"

	.global gUnknown_081AFE0C
gUnknown_081AFE0C:
	.incbin "graphics/evidence_profile_descriptions/001AFE0C.4bpp.lz"

	.global gUnknown_081B01D0
gUnknown_081B01D0:
	.incbin "graphics/evidence_profile_descriptions/001B01D0.4bpp.lz"

	.global gUnknown_081B0594
gUnknown_081B0594:
	.incbin "graphics/evidence_profile_descriptions/001B0594.4bpp.lz"

	.global gUnknown_081B0984
gUnknown_081B0984:
	.incbin "graphics/evidence_profile_descriptions/001B0984.4bpp.lz"

	.global gUnknown_081B0DC4
gUnknown_081B0DC4:
	.incbin "graphics/evidence_profile_descriptions/001B0DC4.4bpp.lz"

	.global gUnknown_081B1150
gUnknown_081B1150:
	.incbin "graphics/evidence_profile_descriptions/001B1150.4bpp.lz"

	.global gUnknown_081B14EC
gUnknown_081B14EC:
	.incbin "graphics/evidence_profile_descriptions/001B14EC.4bpp.lz"

	.global gUnknown_081B18C0
gUnknown_081B18C0:
	.incbin "graphics/evidence_profile_descriptions/001B18C0.4bpp.lz"

	.global gUnknown_081B1CBC
gUnknown_081B1CBC:
	.incbin "graphics/evidence_profile_descriptions/001B1CBC.4bpp.lz"

	.global gUnknown_081B2150
gUnknown_081B2150:
	.incbin "graphics/evidence_profile_descriptions/001B2150.4bpp.lz"

	.global gUnknown_081B25F0
gUnknown_081B25F0:
	.incbin "graphics/evidence_profile_descriptions/001B25F0.4bpp.lz"

@ END EVIDENCE AND PROFILE DESCRIPTIONS

@ BEGIN EVIDENCE AND PROFILE PICTURES

	.global gUnknown_081B290C_pal
gUnknown_081B290C_pal:
	.incbin "graphics/evidence_profile_pictures/001B290C.gbapal"

	.global gUnknown_081B290C_gfx
gUnknown_081B290C_gfx:
	.incbin "graphics/evidence_profile_pictures/001B290C.4bpp"

	.global gUnknown_081B312C_pal
gUnknown_081B312C_pal:
	.incbin "graphics/evidence_profile_pictures/001B312C.gbapal"

	.global gUnknown_081B312C_gfx
gUnknown_081B312C_gfx:
	.incbin "graphics/evidence_profile_pictures/001B312C.4bpp"

	.global gUnknown_081B394C_pal
gUnknown_081B394C_pal:
	.incbin "graphics/evidence_profile_pictures/001B394C.gbapal"

	.global gUnknown_081B394C_gfx
gUnknown_081B394C_gfx:
	.incbin "graphics/evidence_profile_pictures/001B394C.4bpp"

	.global gUnknown_081B416C_pal
gUnknown_081B416C_pal:
	.incbin "graphics/evidence_profile_pictures/001B416C.gbapal"

	.global gUnknown_081B416C_gfx
gUnknown_081B416C_gfx:
	.incbin "graphics/evidence_profile_pictures/001B416C.4bpp"

	.global gUnknown_081B498C_pal
gUnknown_081B498C_pal:
	.incbin "graphics/evidence_profile_pictures/001B498C.gbapal"

	.global gUnknown_081B498C_gfx
gUnknown_081B498C_gfx:
	.incbin "graphics/evidence_profile_pictures/001B498C.4bpp"

	.global gUnknown_081B51AC_pal
gUnknown_081B51AC_pal:
	.incbin "graphics/evidence_profile_pictures/001B51AC.gbapal"

	.global gUnknown_081B51AC_gfx
gUnknown_081B51AC_gfx:
	.incbin "graphics/evidence_profile_pictures/001B51AC.4bpp"

	.global gUnknown_081B59CC_pal
gUnknown_081B59CC_pal:
	.incbin "graphics/evidence_profile_pictures/001B59CC.gbapal"

	.global gUnknown_081B59CC_gfx
gUnknown_081B59CC_gfx:
	.incbin "graphics/evidence_profile_pictures/001B59CC.4bpp"

	.global gUnknown_081B61EC_pal
gUnknown_081B61EC_pal:
	.incbin "graphics/evidence_profile_pictures/001B61EC.gbapal"

	.global gUnknown_081B61EC_gfx
gUnknown_081B61EC_gfx:
	.incbin "graphics/evidence_profile_pictures/001B61EC.4bpp"

	.global gUnknown_081B6A0C_pal
gUnknown_081B6A0C_pal:
	.incbin "graphics/evidence_profile_pictures/001B6A0C.gbapal"

	.global gUnknown_081B6A0C_gfx
gUnknown_081B6A0C_gfx:
	.incbin "graphics/evidence_profile_pictures/001B6A0C.4bpp"

	.global gUnknown_081B722C_pal
gUnknown_081B722C_pal:
	.incbin "graphics/evidence_profile_pictures/001B722C.gbapal"

	.global gUnknown_081B722C_gfx
gUnknown_081B722C_gfx:
	.incbin "graphics/evidence_profile_pictures/001B722C.4bpp"

	.global gUnknown_081B7A4C_pal
gUnknown_081B7A4C_pal:
	.incbin "graphics/evidence_profile_pictures/001B7A4C.gbapal"

	.global gUnknown_081B7A4C_gfx
gUnknown_081B7A4C_gfx:
	.incbin "graphics/evidence_profile_pictures/001B7A4C.4bpp"

	.global gUnknown_081B826C_pal
gUnknown_081B826C_pal:
	.incbin "graphics/evidence_profile_pictures/001B826C.gbapal"

	.global gUnknown_081B826C_gfx
gUnknown_081B826C_gfx:
	.incbin "graphics/evidence_profile_pictures/001B826C.4bpp"

	.global gUnknown_081B8A8C_pal
gUnknown_081B8A8C_pal:
	.incbin "graphics/evidence_profile_pictures/001B8A8C.gbapal"

	.global gUnknown_081B8A8C_gfx
gUnknown_081B8A8C_gfx:
	.incbin "graphics/evidence_profile_pictures/001B8A8C.4bpp"

	.global gUnknown_081B92AC_pal
gUnknown_081B92AC_pal:
	.incbin "graphics/evidence_profile_pictures/001B92AC.gbapal"

	.global gUnknown_081B92AC_gfx
gUnknown_081B92AC_gfx:
	.incbin "graphics/evidence_profile_pictures/001B92AC.4bpp"

	.global gUnknown_081B9ACC_pal
gUnknown_081B9ACC_pal:
	.incbin "graphics/evidence_profile_pictures/001B9ACC.gbapal"

	.global gUnknown_081B9ACC_gfx
gUnknown_081B9ACC_gfx:
	.incbin "graphics/evidence_profile_pictures/001B9ACC.4bpp"

	.global gUnknown_081BA2EC_pal
gUnknown_081BA2EC_pal:
	.incbin "graphics/evidence_profile_pictures/001BA2EC.gbapal"

	.global gUnknown_081BA2EC_gfx
gUnknown_081BA2EC_gfx:
	.incbin "graphics/evidence_profile_pictures/001BA2EC.4bpp"

	.global gUnknown_081BAB0C_pal
gUnknown_081BAB0C_pal:
	.incbin "graphics/evidence_profile_pictures/001BAB0C.gbapal"

	.global gUnknown_081BAB0C_gfx
gUnknown_081BAB0C_gfx:
	.incbin "graphics/evidence_profile_pictures/001BAB0C.4bpp"

	.global gUnknown_081BB32C_pal
gUnknown_081BB32C_pal:
	.incbin "graphics/evidence_profile_pictures/001BB32C.gbapal"

	.global gUnknown_081BB32C_gfx
gUnknown_081BB32C_gfx:
	.incbin "graphics/evidence_profile_pictures/001BB32C.4bpp"

	.global gUnknown_081BBB4C_pal
gUnknown_081BBB4C_pal:
	.incbin "graphics/evidence_profile_pictures/001BBB4C.gbapal"

	.global gUnknown_081BBB4C_gfx
gUnknown_081BBB4C_gfx:
	.incbin "graphics/evidence_profile_pictures/001BBB4C.4bpp"

	.global gUnknown_081BC36C_pal
gUnknown_081BC36C_pal:
	.incbin "graphics/evidence_profile_pictures/001BC36C.gbapal"

	.global gUnknown_081BC36C_gfx
gUnknown_081BC36C_gfx:
	.incbin "graphics/evidence_profile_pictures/001BC36C.4bpp"

	.global gUnknown_081BCB8C_pal
gUnknown_081BCB8C_pal:
	.incbin "graphics/evidence_profile_pictures/001BCB8C.gbapal"

	.global gUnknown_081BCB8C_gfx
gUnknown_081BCB8C_gfx:
	.incbin "graphics/evidence_profile_pictures/001BCB8C.4bpp"

	.global gUnknown_081BD3AC_pal
gUnknown_081BD3AC_pal:
	.incbin "graphics/evidence_profile_pictures/001BD3AC.gbapal"

	.global gUnknown_081BD3AC_gfx
gUnknown_081BD3AC_gfx:
	.incbin "graphics/evidence_profile_pictures/001BD3AC.4bpp"

	.global gUnknown_081BDBCC_pal
gUnknown_081BDBCC_pal:
	.incbin "graphics/evidence_profile_pictures/001BDBCC.gbapal"

	.global gUnknown_081BDBCC_gfx
gUnknown_081BDBCC_gfx:
	.incbin "graphics/evidence_profile_pictures/001BDBCC.4bpp"

	.global gUnknown_081BE3EC_pal
gUnknown_081BE3EC_pal:
	.incbin "graphics/evidence_profile_pictures/001BE3EC.gbapal"

	.global gUnknown_081BE3EC_gfx
gUnknown_081BE3EC_gfx:
	.incbin "graphics/evidence_profile_pictures/001BE3EC.4bpp"

	.global gUnknown_081BEC0C_pal
gUnknown_081BEC0C_pal:
	.incbin "graphics/evidence_profile_pictures/001BEC0C.gbapal"

	.global gUnknown_081BEC0C_gfx
gUnknown_081BEC0C_gfx:
	.incbin "graphics/evidence_profile_pictures/001BEC0C.4bpp"

	.global gUnknown_081BF42C_pal
gUnknown_081BF42C_pal:
	.incbin "graphics/evidence_profile_pictures/001BF42C.gbapal"

	.global gUnknown_081BF42C_gfx
gUnknown_081BF42C_gfx:
	.incbin "graphics/evidence_profile_pictures/001BF42C.4bpp"

	.global gUnknown_081BFC4C_pal
gUnknown_081BFC4C_pal:
	.incbin "graphics/evidence_profile_pictures/001BFC4C.gbapal"

	.global gUnknown_081BFC4C_gfx
gUnknown_081BFC4C_gfx:
	.incbin "graphics/evidence_profile_pictures/001BFC4C.4bpp"

	.global gUnknown_081C046C_pal
gUnknown_081C046C_pal:
	.incbin "graphics/evidence_profile_pictures/001C046C.gbapal"

	.global gUnknown_081C046C_gfx
gUnknown_081C046C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C046C.4bpp"

	.global gUnknown_081C0C8C_pal
gUnknown_081C0C8C_pal:
	.incbin "graphics/evidence_profile_pictures/001C0C8C.gbapal"

	.global gUnknown_081C0C8C_gfx
gUnknown_081C0C8C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C0C8C.4bpp"

	.global gUnknown_081C14AC_pal
gUnknown_081C14AC_pal:
	.incbin "graphics/evidence_profile_pictures/001C14AC.gbapal"

	.global gUnknown_081C14AC_gfx
gUnknown_081C14AC_gfx:
	.incbin "graphics/evidence_profile_pictures/001C14AC.4bpp"

	.global gUnknown_081C1CCC_pal
gUnknown_081C1CCC_pal:
	.incbin "graphics/evidence_profile_pictures/001C1CCC.gbapal"

	.global gUnknown_081C1CCC_gfx
gUnknown_081C1CCC_gfx:
	.incbin "graphics/evidence_profile_pictures/001C1CCC.4bpp"

	.global gUnknown_081C24EC_pal
gUnknown_081C24EC_pal:
	.incbin "graphics/evidence_profile_pictures/001C24EC.gbapal"

	.global gUnknown_081C24EC_gfx
gUnknown_081C24EC_gfx:
	.incbin "graphics/evidence_profile_pictures/001C24EC.4bpp"

	.global gUnknown_081C2D0C_pal
gUnknown_081C2D0C_pal:
	.incbin "graphics/evidence_profile_pictures/001C2D0C.gbapal"

	.global gUnknown_081C2D0C_gfx
gUnknown_081C2D0C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C2D0C.4bpp"

	.global gUnknown_081C352C_pal
gUnknown_081C352C_pal:
	.incbin "graphics/evidence_profile_pictures/001C352C.gbapal"

	.global gUnknown_081C352C_gfx
gUnknown_081C352C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C352C.4bpp"

	.global gUnknown_081C3D4C_pal
gUnknown_081C3D4C_pal:
	.incbin "graphics/evidence_profile_pictures/001C3D4C.gbapal"

	.global gUnknown_081C3D4C_gfx
gUnknown_081C3D4C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C3D4C.4bpp"

	.global gUnknown_081C456C_pal
gUnknown_081C456C_pal:
	.incbin "graphics/evidence_profile_pictures/001C456C.gbapal"

	.global gUnknown_081C456C_gfx
gUnknown_081C456C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C456C.4bpp"

	.global gUnknown_081C4D8C_pal
gUnknown_081C4D8C_pal:
	.incbin "graphics/evidence_profile_pictures/001C4D8C.gbapal"

	.global gUnknown_081C4D8C_gfx
gUnknown_081C4D8C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C4D8C.4bpp"

	.global gUnknown_081C55AC_pal
gUnknown_081C55AC_pal:
	.incbin "graphics/evidence_profile_pictures/001C55AC.gbapal"

	.global gUnknown_081C55AC_gfx
gUnknown_081C55AC_gfx:
	.incbin "graphics/evidence_profile_pictures/001C55AC.4bpp"

	.global gUnknown_081C5DCC_pal
gUnknown_081C5DCC_pal:
	.incbin "graphics/evidence_profile_pictures/001C5DCC.gbapal"

	.global gUnknown_081C5DCC_gfx
gUnknown_081C5DCC_gfx:
	.incbin "graphics/evidence_profile_pictures/001C5DCC.4bpp"

	.global gUnknown_081C65EC_pal
gUnknown_081C65EC_pal:
	.incbin "graphics/evidence_profile_pictures/001C65EC.gbapal"

	.global gUnknown_081C65EC_gfx
gUnknown_081C65EC_gfx:
	.incbin "graphics/evidence_profile_pictures/001C65EC.4bpp"

	.global gUnknown_081C6E0C_pal
gUnknown_081C6E0C_pal:
	.incbin "graphics/evidence_profile_pictures/001C6E0C.gbapal"

	.global gUnknown_081C6E0C_gfx
gUnknown_081C6E0C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C6E0C.4bpp"

	.global gUnknown_081C762C_pal
gUnknown_081C762C_pal:
	.incbin "graphics/evidence_profile_pictures/001C762C.gbapal"

	.global gUnknown_081C762C_gfx
gUnknown_081C762C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C762C.4bpp"

	.global gUnknown_081C7E4C_pal
gUnknown_081C7E4C_pal:
	.incbin "graphics/evidence_profile_pictures/001C7E4C.gbapal"

	.global gUnknown_081C7E4C_gfx
gUnknown_081C7E4C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C7E4C.4bpp"

	.global gUnknown_081C866C_pal
gUnknown_081C866C_pal:
	.incbin "graphics/evidence_profile_pictures/001C866C.gbapal"

	.global gUnknown_081C866C_gfx
gUnknown_081C866C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C866C.4bpp"

	.global gUnknown_081C8E8C_pal
gUnknown_081C8E8C_pal:
	.incbin "graphics/evidence_profile_pictures/001C8E8C.gbapal"

	.global gUnknown_081C8E8C_gfx
gUnknown_081C8E8C_gfx:
	.incbin "graphics/evidence_profile_pictures/001C8E8C.4bpp"

	.global gUnknown_081C96AC_pal
gUnknown_081C96AC_pal:
	.incbin "graphics/evidence_profile_pictures/001C96AC.gbapal"

	.global gUnknown_081C96AC_gfx
gUnknown_081C96AC_gfx:
	.incbin "graphics/evidence_profile_pictures/001C96AC.4bpp"

	.global gUnknown_081C9ECC_pal
gUnknown_081C9ECC_pal:
	.incbin "graphics/evidence_profile_pictures/001C9ECC.gbapal"

	.global gUnknown_081C9ECC_gfx
gUnknown_081C9ECC_gfx:
	.incbin "graphics/evidence_profile_pictures/001C9ECC.4bpp"

	.global gUnknown_081CA6EC_pal
gUnknown_081CA6EC_pal:
	.incbin "graphics/evidence_profile_pictures/001CA6EC.gbapal"

	.global gUnknown_081CA6EC_gfx
gUnknown_081CA6EC_gfx:
	.incbin "graphics/evidence_profile_pictures/001CA6EC.4bpp"

	.global gUnknown_081CAF0C_pal
gUnknown_081CAF0C_pal:
	.incbin "graphics/evidence_profile_pictures/001CAF0C.gbapal"

	.global gUnknown_081CAF0C_gfx
gUnknown_081CAF0C_gfx:
	.incbin "graphics/evidence_profile_pictures/001CAF0C.4bpp"

	.global gUnknown_081CB72C_pal
gUnknown_081CB72C_pal:
	.incbin "graphics/evidence_profile_pictures/001CB72C.gbapal"

	.global gUnknown_081CB72C_gfx
gUnknown_081CB72C_gfx:
	.incbin "graphics/evidence_profile_pictures/001CB72C.4bpp"

	.global gUnknown_081CBF4C_pal
gUnknown_081CBF4C_pal:
	.incbin "graphics/evidence_profile_pictures/001CBF4C.gbapal"

	.global gUnknown_081CBF4C_gfx
gUnknown_081CBF4C_gfx:
	.incbin "graphics/evidence_profile_pictures/001CBF4C.4bpp"

	.global gUnknown_081CC76C_pal
gUnknown_081CC76C_pal:
	.incbin "graphics/evidence_profile_pictures/001CC76C.gbapal"

	.global gUnknown_081CC76C_gfx
gUnknown_081CC76C_gfx:
	.incbin "graphics/evidence_profile_pictures/001CC76C.4bpp"

	.global gUnknown_081CCF8C_pal
gUnknown_081CCF8C_pal:
	.incbin "graphics/evidence_profile_pictures/001CCF8C.gbapal"

	.global gUnknown_081CCF8C_gfx
gUnknown_081CCF8C_gfx:
	.incbin "graphics/evidence_profile_pictures/001CCF8C.4bpp"

	.global gUnknown_081CD7AC_pal
gUnknown_081CD7AC_pal:
	.incbin "graphics/evidence_profile_pictures/001CD7AC.gbapal"

	.global gUnknown_081CD7AC_gfx
gUnknown_081CD7AC_gfx:
	.incbin "graphics/evidence_profile_pictures/001CD7AC.4bpp"

	.global gUnknown_081CDFCC_pal
gUnknown_081CDFCC_pal:
	.incbin "graphics/evidence_profile_pictures/001CDFCC.gbapal"

	.global gUnknown_081CDFCC_gfx
gUnknown_081CDFCC_gfx:
	.incbin "graphics/evidence_profile_pictures/001CDFCC.4bpp"

	.global gUnknown_081CE7EC_pal
gUnknown_081CE7EC_pal:
	.incbin "graphics/evidence_profile_pictures/001CE7EC.gbapal"

	.global gUnknown_081CE7EC_gfx
gUnknown_081CE7EC_gfx:
	.incbin "graphics/evidence_profile_pictures/001CE7EC.4bpp"

	.global gUnknown_081CF00C_pal
gUnknown_081CF00C_pal:
	.incbin "graphics/evidence_profile_pictures/001CF00C.gbapal"

	.global gUnknown_081CF00C_gfx
gUnknown_081CF00C_gfx:
	.incbin "graphics/evidence_profile_pictures/001CF00C.4bpp"

	.global gUnknown_081CF82C_pal
gUnknown_081CF82C_pal:
	.incbin "graphics/evidence_profile_pictures/001CF82C.gbapal"

	.global gUnknown_081CF82C_gfx
gUnknown_081CF82C_gfx:
	.incbin "graphics/evidence_profile_pictures/001CF82C.4bpp"

	.global gUnknown_081D004C_pal
gUnknown_081D004C_pal:
	.incbin "graphics/evidence_profile_pictures/001D004C.gbapal"

	.global gUnknown_081D004C_gfx
gUnknown_081D004C_gfx:
	.incbin "graphics/evidence_profile_pictures/001D004C.4bpp"

	.global gUnknown_081D086C_pal
gUnknown_081D086C_pal:
	.incbin "graphics/evidence_profile_pictures/001D086C.gbapal"

	.global gUnknown_081D086C_gfx
gUnknown_081D086C_gfx:
	.incbin "graphics/evidence_profile_pictures/001D086C.4bpp"

	.global gUnknown_081D108C_pal
gUnknown_081D108C_pal:
	.incbin "graphics/evidence_profile_pictures/001D108C.gbapal"

	.global gUnknown_081D108C_gfx
gUnknown_081D108C_gfx:
	.incbin "graphics/evidence_profile_pictures/001D108C.4bpp"

	.global gUnknown_081D18AC_pal
gUnknown_081D18AC_pal:
	.incbin "graphics/evidence_profile_pictures/001D18AC.gbapal"

	.global gUnknown_081D18AC_gfx
gUnknown_081D18AC_gfx:
	.incbin "graphics/evidence_profile_pictures/001D18AC.4bpp"

	.global gUnknown_081D20CC_pal
gUnknown_081D20CC_pal:
	.incbin "graphics/evidence_profile_pictures/001D20CC.gbapal"

	.global gUnknown_081D20CC_gfx
gUnknown_081D20CC_gfx:
	.incbin "graphics/evidence_profile_pictures/001D20CC.4bpp"

	.global gUnknown_081D28EC_pal
gUnknown_081D28EC_pal:
	.incbin "graphics/evidence_profile_pictures/001D28EC.gbapal"

	.global gUnknown_081D28EC_gfx
gUnknown_081D28EC_gfx:
	.incbin "graphics/evidence_profile_pictures/001D28EC.4bpp"

@ END EVIDENCE AND PROFILE PICTURES

	.global gTextPal
gTextPal:
	.incbin "graphics/charset.gbapal"

	.global gCharSet
gCharSet:  @ Charset
	.incbin "graphics/charset.4bpp"

@ BEGIN TALK AND LOCATION CHOICES

	.global gUnknown_081FD92C
gUnknown_081FD92C:
	.incbin "graphics/talk_location_choices/choice_selected.gbapal"

	.global gUnknown_081FD94C
gUnknown_081FD94C:
	.incbin "graphics/talk_location_choices/choice_greyed_out.gbapal"
	
@ first block of stuffs

	.global gUnknown_081FD96C
gUnknown_081FD96C:
	.incbin "graphics/talk_location_choices/001FD96C.4bpp"

	.global gUnknown_081FE16C
gUnknown_081FE16C:
	.incbin "graphics/talk_location_choices/001FE16C.4bpp"

	.global gUnknown_081FE96C
gUnknown_081FE96C:
	.incbin "graphics/talk_location_choices/001FE96C.4bpp"

	.global gUnknown_081FF16C
gUnknown_081FF16C:
	.incbin "graphics/talk_location_choices/001FF16C.4bpp"

	.global gUnknown_081FF96C
gUnknown_081FF96C:
	.incbin "graphics/talk_location_choices/001FF96C.4bpp"

	.global gUnknown_0820016C
gUnknown_0820016C:
	.incbin "graphics/talk_location_choices/0020016C.4bpp"

	.global gUnknown_0820096C
gUnknown_0820096C:
	.incbin "graphics/talk_location_choices/0020096C.4bpp"

	.global gUnknown_0820116C
gUnknown_0820116C:
	.incbin "graphics/talk_location_choices/0020116C.4bpp"

	.global gUnknown_0820196C
gUnknown_0820196C:
	.incbin "graphics/talk_location_choices/0020196C.4bpp"

	.global gUnknown_0820216C
gUnknown_0820216C:
	.incbin "graphics/talk_location_choices/0020216C.4bpp"

	.global gUnknown_0820296C
gUnknown_0820296C:
	.incbin "graphics/talk_location_choices/0020296C.4bpp"

	.global gUnknown_0820316C
gUnknown_0820316C:
	.incbin "graphics/talk_location_choices/0020316C.4bpp"

	.global gUnknown_0820396C
gUnknown_0820396C:
	.incbin "graphics/talk_location_choices/0020396C.4bpp"

	.global gUnknown_0820416C
gUnknown_0820416C:
	.incbin "graphics/talk_location_choices/0020416C.4bpp"

	.global gUnknown_0820496C
gUnknown_0820496C:
	.incbin "graphics/talk_location_choices/0020496C.4bpp"

	.global gUnknown_0820516C
gUnknown_0820516C:
	.incbin "graphics/talk_location_choices/0020516C.4bpp"

	.global gUnknown_0820596C
gUnknown_0820596C:
	.incbin "graphics/talk_location_choices/0020596C.4bpp"

	.global gUnknown_0820616C
gUnknown_0820616C:
	.incbin "graphics/talk_location_choices/0020616C.4bpp"

	.global gUnknown_0820696C
gUnknown_0820696C:
	.incbin "graphics/talk_location_choices/0020696C.4bpp"

	.global gUnknown_0820716C
gUnknown_0820716C:
	.incbin "graphics/talk_location_choices/0020716C.4bpp"

	.global gUnknown_0820796C
gUnknown_0820796C:
	.incbin "graphics/talk_location_choices/0020796C.4bpp"

@ second block of stuffs

	.global gUnknown_0820816C
gUnknown_0820816C:
	.incbin "graphics/talk_location_choices/0020816C.4bpp"

	.global gUnknown_0820896C
gUnknown_0820896C:
	.incbin "graphics/talk_location_choices/0020896C.4bpp"

	.global gUnknown_0820916C
gUnknown_0820916C:
	.incbin "graphics/talk_location_choices/0020916C.4bpp"

	.global gUnknown_0820996C
gUnknown_0820996C:
	.incbin "graphics/talk_location_choices/0020996C.4bpp"

	.global gUnknown_0820A16C
gUnknown_0820A16C:
	.incbin "graphics/talk_location_choices/0020A16C.4bpp"

	.global gUnknown_0820A96C
gUnknown_0820A96C:
	.incbin "graphics/talk_location_choices/0020A96C.4bpp"

	.global gUnknown_0820B16C
gUnknown_0820B16C:
	.incbin "graphics/talk_location_choices/0020B16C.4bpp"

	.global gUnknown_0820B96C
gUnknown_0820B96C:
	.incbin "graphics/talk_location_choices/0020B96C.4bpp"

	.global gUnknown_0820C16C
gUnknown_0820C16C:
	.incbin "graphics/talk_location_choices/0020C16C.4bpp"

	.global gUnknown_0820C96C
gUnknown_0820C96C:
	.incbin "graphics/talk_location_choices/0020C96C.4bpp"

	.global gUnknown_0820D16C
gUnknown_0820D16C:
	.incbin "graphics/talk_location_choices/0020D16C.4bpp"

	.global gUnknown_0820D96C
gUnknown_0820D96C:
	.incbin "graphics/talk_location_choices/0020D96C.4bpp"

	.global gUnknown_0820E16C
gUnknown_0820E16C:
	.incbin "graphics/talk_location_choices/0020E16C.4bpp"

	.global gUnknown_0820E96C
gUnknown_0820E96C:
	.incbin "graphics/talk_location_choices/0020E96C.4bpp"

	.global gUnknown_0820F16C
gUnknown_0820F16C:
	.incbin "graphics/talk_location_choices/0020F16C.4bpp"

	.global gUnknown_0820F96C
gUnknown_0820F96C:
	.incbin "graphics/talk_location_choices/0020F96C.4bpp"

	.global gUnknown_0821016C
gUnknown_0821016C:
	.incbin "graphics/talk_location_choices/0021016C.4bpp"

	.global gUnknown_0821096C
gUnknown_0821096C:
	.incbin "graphics/talk_location_choices/0021096C.4bpp"

	.global gUnknown_0821116C
gUnknown_0821116C:
	.incbin "graphics/talk_location_choices/0021116C.4bpp"

	.global gUnknown_0821196C
gUnknown_0821196C:
	.incbin "graphics/talk_location_choices/0021196C.4bpp"

	.global gUnknown_0821216C
gUnknown_0821216C:
	.incbin "graphics/talk_location_choices/0021216C.4bpp"

	.global gUnknown_0821296C
gUnknown_0821296C:
	.incbin "graphics/talk_location_choices/0021296C.4bpp"

	.global gUnknown_0821316C
gUnknown_0821316C:
	.incbin "graphics/talk_location_choices/0021316C.4bpp"

	.global gUnknown_0821396C
gUnknown_0821396C:
	.incbin "graphics/talk_location_choices/0021396C.4bpp"

	.global gUnknown_0821416C
gUnknown_0821416C:
	.incbin "graphics/talk_location_choices/0021416C.4bpp"

	.global gUnknown_0821496C
gUnknown_0821496C:
	.incbin "graphics/talk_location_choices/0021496C.4bpp"

	.global gUnknown_0821516C
gUnknown_0821516C:
	.incbin "graphics/talk_location_choices/0021516C.4bpp"

	.global gUnknown_0821596C
gUnknown_0821596C:
	.incbin "graphics/talk_location_choices/0021596C.4bpp"

	.global gUnknown_0821616C
gUnknown_0821616C:
	.incbin "graphics/talk_location_choices/0021616C.4bpp"

	.global gUnknown_0821696C
gUnknown_0821696C:
	.incbin "graphics/talk_location_choices/0021696C.4bpp"

	.global gUnknown_0821716C
gUnknown_0821716C:
	.incbin "graphics/talk_location_choices/0021716C.4bpp"

	.global gUnknown_0821796C
gUnknown_0821796C:
	.incbin "graphics/talk_location_choices/0021796C.4bpp"

	.global gUnknown_0821816C
gUnknown_0821816C:
	.incbin "graphics/talk_location_choices/0021816C.4bpp"

	.global gUnknown_0821896C
gUnknown_0821896C:
	.incbin "graphics/talk_location_choices/0021896C.4bpp"

	.global gUnknown_0821916C
gUnknown_0821916C:
	.incbin "graphics/talk_location_choices/0021916C.4bpp"

	.global gUnknown_0821996C
gUnknown_0821996C:
	.incbin "graphics/talk_location_choices/0021996C.4bpp"

	.global gUnknown_0821A16C
gUnknown_0821A16C:
	.incbin "graphics/talk_location_choices/0021A16C.4bpp"

	.global gUnknown_0821A96C
gUnknown_0821A96C:
	.incbin "graphics/talk_location_choices/0021A96C.4bpp"

	.global gUnknown_0821B16C
gUnknown_0821B16C:
	.incbin "graphics/talk_location_choices/0021B16C.4bpp"

	.global gUnknown_0821B96C
gUnknown_0821B96C:
	.incbin "graphics/talk_location_choices/0021B96C.4bpp"

	.global gUnknown_0821C16C
gUnknown_0821C16C:
	.incbin "graphics/talk_location_choices/0021C16C.4bpp"

	.global gUnknown_0821C96C
gUnknown_0821C96C:
	.incbin "graphics/talk_location_choices/0021C96C.4bpp"

	.global gUnknown_0821D16C
gUnknown_0821D16C:
	.incbin "graphics/talk_location_choices/0021D16C.4bpp"

	.global gUnknown_0821D96C
gUnknown_0821D96C:
	.incbin "graphics/talk_location_choices/0021D96C.4bpp"

	.global gUnknown_0821E16C
gUnknown_0821E16C:
	.incbin "graphics/talk_location_choices/0021E16C.4bpp"

	.global gUnknown_0821E96C
gUnknown_0821E96C:
	.incbin "graphics/talk_location_choices/0021E96C.4bpp"

	.global gUnknown_0821F16C
gUnknown_0821F16C:
	.incbin "graphics/talk_location_choices/0021F16C.4bpp"

	.global gUnknown_0821F96C
gUnknown_0821F96C:
	.incbin "graphics/talk_location_choices/0021F96C.4bpp"

	.global gUnknown_0822016C
gUnknown_0822016C:
	.incbin "graphics/talk_location_choices/0022016C.4bpp"

	.global gUnknown_0822096C
gUnknown_0822096C:
	.incbin "graphics/talk_location_choices/0022096C.4bpp"

	.global gUnknown_0822116C
gUnknown_0822116C:
	.incbin "graphics/talk_location_choices/0022116C.4bpp"

	.global gUnknown_0822196C
gUnknown_0822196C:
	.incbin "graphics/talk_location_choices/0022196C.4bpp"

	.global gUnknown_0822216C
gUnknown_0822216C:
	.incbin "graphics/talk_location_choices/0022216C.4bpp"

	.global gUnknown_0822296C
gUnknown_0822296C:
	.incbin "graphics/talk_location_choices/0022296C.4bpp"

	.global gUnknown_0822316C
gUnknown_0822316C:
	.incbin "graphics/talk_location_choices/0022316C.4bpp"

	.global gUnknown_0822396C
gUnknown_0822396C:
	.incbin "graphics/talk_location_choices/0022396C.4bpp"

	.global gUnknown_0822416C
gUnknown_0822416C:
	.incbin "graphics/talk_location_choices/0022416C.4bpp"

	.global gUnknown_0822496C
gUnknown_0822496C:
	.incbin "graphics/talk_location_choices/0022496C.4bpp"

	.global gUnknown_0822516C
gUnknown_0822516C:
	.incbin "graphics/talk_location_choices/0022516C.4bpp"

	.global gUnknown_0822596C
gUnknown_0822596C:
	.incbin "graphics/talk_location_choices/0022596C.4bpp"

	.global gUnknown_0822616C
gUnknown_0822616C:
	.incbin "graphics/talk_location_choices/0022616C.4bpp"

	.global gUnknown_0822696C
gUnknown_0822696C:
	.incbin "graphics/talk_location_choices/0022696C.4bpp"

	.global gUnknown_0822716C
gUnknown_0822716C:
	.incbin "graphics/talk_location_choices/0022716C.4bpp"

	.global gUnknown_0822796C
gUnknown_0822796C:
	.incbin "graphics/talk_location_choices/0022796C.4bpp"

	.global gUnknown_0822816C
gUnknown_0822816C:
	.incbin "graphics/talk_location_choices/0022816C.4bpp"

	.global gUnknown_0822896C
gUnknown_0822896C:
	.incbin "graphics/talk_location_choices/0022896C.4bpp"

	.global gUnknown_0822916C
gUnknown_0822916C:
	.incbin "graphics/talk_location_choices/0022916C.4bpp"

	.global gUnknown_0822996C
gUnknown_0822996C:
	.incbin "graphics/talk_location_choices/0022996C.4bpp"

	.global gUnknown_0822A16C
gUnknown_0822A16C:
	.incbin "graphics/talk_location_choices/0022A16C.4bpp"

	.global gUnknown_0822A96C
gUnknown_0822A96C:
	.incbin "graphics/talk_location_choices/0022A96C.4bpp"

	.global gUnknown_0822B16C
gUnknown_0822B16C:
	.incbin "graphics/talk_location_choices/0022B16C.4bpp"

	.global gUnknown_0822B96C
gUnknown_0822B96C:
	.incbin "graphics/talk_location_choices/0022B96C.4bpp"

	.global gUnknown_0822C16C
gUnknown_0822C16C:
	.incbin "graphics/talk_location_choices/0022C16C.4bpp"

	.global gUnknown_0822C96C
gUnknown_0822C96C:
	.incbin "graphics/talk_location_choices/0022C96C.4bpp"

	.global gUnknown_0822D16C
gUnknown_0822D16C:
	.incbin "graphics/talk_location_choices/0022D16C.4bpp"

	.global gUnknown_0822D96C
gUnknown_0822D96C:
	.incbin "graphics/talk_location_choices/0022D96C.4bpp"

	.global gUnknown_0822E16C
gUnknown_0822E16C:
	.incbin "graphics/talk_location_choices/0022E16C.4bpp"

	.global gUnknown_0822E96C
gUnknown_0822E96C:
	.incbin "graphics/talk_location_choices/0022E96C.4bpp"

	.global gUnknown_0822F16C
gUnknown_0822F16C:
	.incbin "graphics/talk_location_choices/0022F16C.4bpp"

	.global gUnknown_0822F96C
gUnknown_0822F96C:
	.incbin "graphics/talk_location_choices/0022F96C.4bpp"

	.global gUnknown_0823016C
gUnknown_0823016C:
	.incbin "graphics/talk_location_choices/0023016C.4bpp"

	.global gUnknown_0823096C
gUnknown_0823096C:
	.incbin "graphics/talk_location_choices/0023096C.4bpp"

	.global gUnknown_0823116C
gUnknown_0823116C:
	.incbin "graphics/talk_location_choices/0023116C.4bpp"

	.global gUnknown_0823196C
gUnknown_0823196C:
	.incbin "graphics/talk_location_choices/0023196C.4bpp"

	.global gUnknown_0823216C
gUnknown_0823216C:
	.incbin "graphics/talk_location_choices/0023216C.4bpp"

	.global gUnknown_0823296C
gUnknown_0823296C:
	.incbin "graphics/talk_location_choices/0023296C.4bpp"

	.global gUnknown_0823316C
gUnknown_0823316C:
	.incbin "graphics/talk_location_choices/0023316C.4bpp"

	.global gUnknown_0823396C
gUnknown_0823396C:
	.incbin "graphics/talk_location_choices/0023396C.4bpp"

	.global gUnknown_0823416C
gUnknown_0823416C:
	.incbin "graphics/talk_location_choices/0023416C.4bpp"

	.global gUnknown_0823496C
gUnknown_0823496C:
	.incbin "graphics/talk_location_choices/0023496C.4bpp"

	.global gUnknown_0823516C
gUnknown_0823516C:
	.incbin "graphics/talk_location_choices/0023516C.4bpp"

	.global gUnknown_0823596C
gUnknown_0823596C:
	.incbin "graphics/talk_location_choices/0023596C.4bpp"

	.global gUnknown_0823616C
gUnknown_0823616C:
	.incbin "graphics/talk_location_choices/0023616C.4bpp"

	.global gUnknown_0823696C
gUnknown_0823696C:
	.incbin "graphics/talk_location_choices/0023696C.4bpp"

	.global gUnknown_0823716C
gUnknown_0823716C:
	.incbin "graphics/talk_location_choices/0023716C.4bpp"

	.global gUnknown_0823796C
gUnknown_0823796C:
	.incbin "graphics/talk_location_choices/0023796C.4bpp"

	.global gUnknown_0823816C
gUnknown_0823816C:
	.incbin "graphics/talk_location_choices/0023816C.4bpp"

	.global gUnknown_0823896C
gUnknown_0823896C:
	.incbin "graphics/talk_location_choices/0023896C.4bpp"

	.global gUnknown_0823916C
gUnknown_0823916C:
	.incbin "graphics/talk_location_choices/0023916C.4bpp"

	.global gUnknown_0823996C
gUnknown_0823996C:
	.incbin "graphics/talk_location_choices/0023996C.4bpp"

	.global gUnknown_0823A16C
gUnknown_0823A16C:
	.incbin "graphics/talk_location_choices/0023A16C.4bpp"

	.global gUnknown_0823A96C
gUnknown_0823A96C:
	.incbin "graphics/talk_location_choices/0023A96C.4bpp"

	.global gUnknown_0823B16C
gUnknown_0823B16C:
	.incbin "graphics/talk_location_choices/0023B16C.4bpp"

	.global gUnknown_0823B96C
gUnknown_0823B96C:
	.incbin "graphics/talk_location_choices/0023B96C.4bpp"

	.global gUnknown_0823C16C
gUnknown_0823C16C:
	.incbin "graphics/talk_location_choices/0023C16C.4bpp"

	.global gUnknown_0823C96C
gUnknown_0823C96C:
	.incbin "graphics/talk_location_choices/0023C96C.4bpp"

	.global gUnknown_0823D16C
gUnknown_0823D16C:
	.incbin "graphics/talk_location_choices/0023D16C.4bpp"

	.global gUnknown_0823D96C
gUnknown_0823D96C:
	.incbin "graphics/talk_location_choices/0023D96C.4bpp"

	.global gUnknown_0823E16C
gUnknown_0823E16C:
	.incbin "graphics/talk_location_choices/0023E16C.4bpp"

	.global gUnknown_0823E96C
gUnknown_0823E96C:
	.incbin "graphics/talk_location_choices/0023E96C.4bpp"

	.global gUnknown_0823F16C
gUnknown_0823F16C:
	.incbin "graphics/talk_location_choices/0023F16C.4bpp"

	.global gUnknown_0823F96C
gUnknown_0823F96C:
	.incbin "graphics/talk_location_choices/0023F96C.4bpp"

	.global gUnknown_0824016C
gUnknown_0824016C:
	.incbin "graphics/talk_location_choices/0024016C.4bpp"

	.global gUnknown_0824096C
gUnknown_0824096C:
	.incbin "graphics/talk_location_choices/0024096C.4bpp"

	.global gUnknown_0824116C
gUnknown_0824116C:
	.incbin "graphics/talk_location_choices/0024116C.4bpp"

	.global gUnknown_0824196C
gUnknown_0824196C:
	.incbin "graphics/talk_location_choices/0024196C.4bpp"

	.global gUnknown_0824216C
gUnknown_0824216C:
	.incbin "graphics/talk_location_choices/0024216C.4bpp"

	.global gUnknown_0824296C
gUnknown_0824296C:
	.incbin "graphics/talk_location_choices/0024296C.4bpp"

	.global gUnknown_0824316C
gUnknown_0824316C:
	.incbin "graphics/talk_location_choices/0024316C.4bpp"

	.global gUnknown_0824396C
gUnknown_0824396C:
	.incbin "graphics/talk_location_choices/0024396C.4bpp"

	.global gUnknown_0824416C
gUnknown_0824416C:
	.incbin "graphics/talk_location_choices/0024416C.4bpp"

	.global gUnknown_0824496C
gUnknown_0824496C:
	.incbin "graphics/talk_location_choices/0024496C.4bpp"

	.global gUnknown_0824516C
gUnknown_0824516C:
	.incbin "graphics/talk_location_choices/0024516C.4bpp"

	.global gUnknown_0824596C
gUnknown_0824596C:
	.incbin "graphics/talk_location_choices/0024596C.4bpp"

	.global gUnknown_0824616C
gUnknown_0824616C:
	.incbin "graphics/talk_location_choices/0024616C.4bpp"

@ END TALK AND LOCATION CHOICES

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
	.incbin "graphics/bustup_phoenix.gbapal"


	.global gUnknown_08360854
gUnknown_08360854:
	.incbin "graphics/bustup_phoenix.bin"


	.global gUnknown_08360D04
gUnknown_08360D04:
	.incbin "graphics/bustup_phoenix.4bpp"


	.global gUnknown_08362524
gUnknown_08362524:
	.incbin "graphics/bustup_edgeworth.gbapal"


	.global gUnknown_08362544
gUnknown_08362544:
	.incbin "graphics/bustup_edgeworth.bin"


	.global gUnknown_083629F4
gUnknown_083629F4:
	.incbin "graphics/bustup_edgeworth.4bpp"

@ ; BEGIN BACKGROUNDS


	.global gUnknown_08364794
gUnknown_08364794:
	.incbin "graphics/striped_images/speedlines.4bpp.striped"


	.global gUnknown_08365640
gUnknown_08365640:
	.incbin "graphics/striped_images/courtroom_background.4bpp.striped"


	.global gUnknown_08368BC4
gUnknown_08368BC4:
	.incbin "graphics/striped_images/capcom_screen.4bpp.striped"

@ ; this entry here spills over into an explicitly referenced one (the next), why though...
@	.global gUnknown_08369890

@ ; it looks like this reference skips the "table" of this striped image and directly goes to the data?
@	.global gUnknown_083698B8

	.global gUnknown_08369890
gUnknown_08369890:
	.incbin "graphics/striped_images/steel_samurai_night.4bpp.striped"


	.global gUnknown_0836B924
gUnknown_0836B924:
	.incbin "graphics/striped_images/gourd_lake_entrance.8bpp.striped"


	.global gUnknown_08372D2C
gUnknown_08372D2C:
	.incbin "graphics/striped_images/gourd_lake_park.8bpp.striped"


	.global gUnknown_0837920C
gUnknown_0837920C:
	.incbin "graphics/striped_images/gourd_lake_park_no_balloon.8bpp.striped"


	.global gUnknown_0837E52C
gUnknown_0837E52C:
	.incbin "graphics/striped_images/gourd_lake_beach.8bpp.striped"


	.global gUnknown_083899C4
gUnknown_083899C4:
	.incbin "graphics/striped_images/case3_intro_grass.4bpp.striped"


	.global gUnknown_0838A6F4
gUnknown_0838A6F4:
	.incbin "graphics/striped_images/case3_intro_trees.4bpp.striped"


	.global gUnknown_0838B364
gUnknown_0838B364:
	.incbin "graphics/striped_images/case3_intro_steel_samurai_posing.4bpp.striped"


	.global gUnknown_0838D370
gUnknown_0838D370:
	.incbin "graphics/striped_images/gourd_lake_boat_rental.8bpp.striped"


	.global gUnknown_08392118
gUnknown_08392118:
	.incbin "graphics/striped_images/gourd_lake_boat_rental_house.8bpp.striped"


	.global gUnknown_08396EB0
gUnknown_08396EB0:
	.incbin "graphics/striped_images/police_station_lobby.8bpp.striped"


	.global gUnknown_0839CD04
gUnknown_0839CD04:
	.incbin "graphics/striped_images/police_station_evidence_storage.8bpp.striped"


	.global gUnknown_083A3504
gUnknown_083A3504:
	.incbin "graphics/striped_images/case3_intro_faceoff.4bpp.striped"


	.global gUnknown_083A6934
gUnknown_083A6934:
	.incbin "graphics/striped_images/3A6934.4bpp.striped"


	.global gUnknown_083A7790
gUnknown_083A7790:
	.incbin "graphics/striped_images/3A7790.4bpp.striped"


	.global gUnknown_083A8648
gUnknown_083A8648:
	.incbin "graphics/striped_images/3A8648.4bpp.striped"


	.global gUnknown_083A9514
gUnknown_083A9514:
	.incbin "graphics/striped_images/case4_train_station.8bpp.striped"


	.global gUnknown_083AFCC8
gUnknown_083AFCC8:
	.incbin "graphics/striped_images/case4_gourd_lake_map.4bpp.striped"


	.global gUnknown_083B0A94
gUnknown_083B0A94:
	.incbin "graphics/striped_images/case4_lottas_photo_zoomed.4bpp.striped"


	.global gUnknown_083B3724
gUnknown_083B3724:
	.incbin "graphics/striped_images/case4_elevator_photo.4bpp.striped"


	.global gUnknown_083B6C8C
gUnknown_083B6C8C:
	.incbin "graphics/striped_images/case4_newspaper.8bpp.striped"


	.global gUnknown_083BF1BC
gUnknown_083BF1BC:
	.incbin "graphics/striped_images/case4_balloon_launching.4bpp.striped"


	.global gUnknown_083C3724
gUnknown_083C3724:
	.incbin "graphics/striped_images/case4_balloon_landing_in_lake.4bpp.striped"


	.global gUnknown_083C7654
gUnknown_083C7654:
	.incbin "graphics/striped_images/case4_larry_searching_lake.4bpp.striped"


	.global gUnknown_083CB0BC
gUnknown_083CB0BC:
	.incbin "graphics/striped_images/case4_class_trial.8bpp.striped"


	.global gUnknown_083D27A8
gUnknown_083D27A8:
	.incbin "graphics/striped_images/case4_lottas_photo_far.4bpp.striped"


	.global gUnknown_083D5E64
gUnknown_083D5E64:
	.incbin "graphics/striped_images/case4_class_trial_phoenix.8bpp.striped"


	.global gUnknown_083DAAC0
gUnknown_083DAAC0:
	.incbin "graphics/striped_images/case4_class_trial_edgeworth.8bpp.striped"


	.global gUnknown_083E1514
gUnknown_083E1514:
	.incbin "graphics/striped_images/case4_class_trial_larry.8bpp.striped"


	.global gUnknown_083E74E8
gUnknown_083E74E8:
	.incbin "graphics/striped_images/case4_yanni_threatening.4bpp.striped"


	.global gUnknown_083EAB84
gUnknown_083EAB84:
	.incbin "graphics/striped_images/case4_shoot_water_from_boat.4bpp.striped"


	.global gUnknown_083EEAC0
gUnknown_083EEAC0:
	.incbin "graphics/striped_images/case4_elevator_suffocating.4bpp.striped"


	.global gUnknown_083F2BA4
gUnknown_083F2BA4:
	.incbin "graphics/striped_images/case4_elevator_edgeworth_throw.4bpp.striped"


	.global gUnknown_083F6C48
gUnknown_083F6C48:
	.incbin "graphics/striped_images/case4_elevator_vonkarma_shot.4bpp.striped"


	.global gUnknown_083FB1D4
gUnknown_083FB1D4:
	.incbin "graphics/striped_images/case4_elevator_vonkarma_in_door.4bpp.striped"


	.global gUnknown_083FD8D4
gUnknown_083FD8D4:
	.incbin "graphics/striped_images/case4_train_station_maya_leaving.8bpp.striped"


	.global gUnknown_084037F8
gUnknown_084037F8:
	.incbin "graphics/striped_images/trial_won.8bpp.striped"


	.global gUnknown_0840AC3C
gUnknown_0840AC3C:
	.incbin "graphics/striped_images/case4_intro_lake_one_in_boat.4bpp.striped"


	.global gUnknown_0840D3C8
gUnknown_0840D3C8:
	.incbin "graphics/striped_images/case4_intro_theatened_to_shoot.4bpp.striped"


	.global gUnknown_0840F8C0
gUnknown_0840F8C0:
	.incbin "graphics/striped_images/case4_intro_edgeworth_picks_gun_up.8bpp.striped"


	.global gUnknown_0841B0F4
gUnknown_0841B0F4:
	.incbin "graphics/striped_images/capcom_screen_bw.4bpp.striped"


	.global gUnknown_0841BD7C
gUnknown_0841BD7C:
	.incbin "graphics/striped_images/title_screen_demo.8bpp.striped"


	.global gUnknown_0841EFC4
gUnknown_0841EFC4:
	.incbin "graphics/striped_images/coming_soon_screen.8bpp.striped"

@ ; END

	.global gUnknown_08427608
gUnknown_08427608:
	.incbin "baserom.gba", 0x00427608, 0x780
	
@ BEGIN COURT SCROLLS

@ scroll left to center

	.global gUnknown_08427D88
gUnknown_08427D88:
	.incbin "graphics/court_scrolls/court_scroll01.gbapal"


	.global gUnknown_08427DA8
gUnknown_08427DA8:
	.incbin "graphics/court_scrolls/court_scroll01.4bpp"


	.global gUnknown_0842C8A8
gUnknown_0842C8A8:
	.incbin "graphics/court_scrolls/court_scroll02.gbapal"


	.global gUnknown_0842C8C8
gUnknown_0842C8C8:
	.incbin "graphics/court_scrolls/court_scroll02.4bpp"


	.global gUnknown_084313C8
gUnknown_084313C8:
	.incbin "graphics/court_scrolls/court_scroll03.gbapal"


	.global gUnknown_084313E8
gUnknown_084313E8:
	.incbin "graphics/court_scrolls/court_scroll03.4bpp"


	.global gUnknown_08435EE8
gUnknown_08435EE8:
	.incbin "graphics/court_scrolls/court_scroll04.gbapal"


	.global gUnknown_08435F08
gUnknown_08435F08:
	.incbin "graphics/court_scrolls/court_scroll04.4bpp"


	.global gUnknown_0843AA08
gUnknown_0843AA08:
	.incbin "graphics/court_scrolls/court_scroll05.gbapal"


	.global gUnknown_0843AA28
gUnknown_0843AA28:
	.incbin "graphics/court_scrolls/court_scroll05.4bpp"


	.global gUnknown_0843F528
gUnknown_0843F528:
	.incbin "graphics/court_scrolls/court_scroll06.gbapal"


	.global gUnknown_0843F548
gUnknown_0843F548:
	.incbin "graphics/court_scrolls/court_scroll06.4bpp"


	.global gUnknown_08444048
gUnknown_08444048:
	.incbin "graphics/court_scrolls/court_scroll07.gbapal"


	.global gUnknown_08444068
gUnknown_08444068:
	.incbin "graphics/court_scrolls/court_scroll07.4bpp"


	.global gUnknown_08448B68
gUnknown_08448B68:
	.incbin "graphics/court_scrolls/court_scroll08.gbapal"


	.global gUnknown_08448B88
gUnknown_08448B88:
	.incbin "graphics/court_scrolls/court_scroll08.4bpp"


	.global gUnknown_0844D688
gUnknown_0844D688:
	.incbin "graphics/court_scrolls/court_scroll09.gbapal"


	.global gUnknown_0844D6A8
gUnknown_0844D6A8:
	.incbin "graphics/court_scrolls/court_scroll09.4bpp"


	.global gUnknown_084521A8
gUnknown_084521A8:
	.incbin "graphics/court_scrolls/court_scroll10.gbapal"


	.global gUnknown_084521C8
gUnknown_084521C8:
	.incbin "graphics/court_scrolls/court_scroll10.4bpp"


	.global gUnknown_08456CC8
gUnknown_08456CC8:
	.incbin "graphics/court_scrolls/court_scroll11.gbapal"


	.global gUnknown_08456CE8
gUnknown_08456CE8:
	.incbin "graphics/court_scrolls/court_scroll11.4bpp"


	.global gUnknown_0845B7E8
gUnknown_0845B7E8:
	.incbin "graphics/court_scrolls/court_scroll12.gbapal"


	.global gUnknown_0845B808
gUnknown_0845B808:
	.incbin "graphics/court_scrolls/court_scroll12.4bpp"


	.global gUnknown_08460308
gUnknown_08460308:
	.incbin "graphics/court_scrolls/court_scroll13.gbapal"


	.global gUnknown_08460328
gUnknown_08460328:
	.incbin "graphics/court_scrolls/court_scroll13.4bpp"


	.global gUnknown_08464E28
gUnknown_08464E28:
	.incbin "graphics/court_scrolls/court_scroll14.gbapal"


	.global gUnknown_08464E48
gUnknown_08464E48:
	.incbin "graphics/court_scrolls/court_scroll14.4bpp"


	.global gUnknown_08469948
gUnknown_08469948:
	.incbin "graphics/court_scrolls/court_scroll15.gbapal"


	.global gUnknown_08469968
gUnknown_08469968:
	.incbin "graphics/court_scrolls/court_scroll15.4bpp"


	.global gUnknown_0846E468
gUnknown_0846E468:
	.incbin "graphics/court_scrolls/court_scroll16.gbapal"


	.global gUnknown_0846E488
gUnknown_0846E488:
	.incbin "graphics/court_scrolls/court_scroll16.4bpp"

@ scroll right to left

	.global gUnknown_08472F88
gUnknown_08472F88:
	.incbin "graphics/court_scrolls/court_scroll17.gbapal"


	.global gUnknown_08472FA8
gUnknown_08472FA8:
	.incbin "graphics/court_scrolls/court_scroll17.4bpp"


	.global gUnknown_08477AA8
gUnknown_08477AA8:
	.incbin "graphics/court_scrolls/court_scroll18.gbapal"


	.global gUnknown_08477AC8
gUnknown_08477AC8:
	.incbin "graphics/court_scrolls/court_scroll18.4bpp"


	.global gUnknown_0847C5C8
gUnknown_0847C5C8:
	.incbin "graphics/court_scrolls/court_scroll19.gbapal"


	.global gUnknown_0847C5E8
gUnknown_0847C5E8:
	.incbin "graphics/court_scrolls/court_scroll19.4bpp"


	.global gUnknown_084810E8
gUnknown_084810E8:
	.incbin "graphics/court_scrolls/court_scroll20.gbapal"


	.global gUnknown_08481108
gUnknown_08481108:
	.incbin "graphics/court_scrolls/court_scroll20.4bpp"


	.global gUnknown_08485C08
gUnknown_08485C08:
	.incbin "graphics/court_scrolls/court_scroll21.gbapal"


	.global gUnknown_08485C28
gUnknown_08485C28:
	.incbin "graphics/court_scrolls/court_scroll21.4bpp"


	.global gUnknown_0848A728
gUnknown_0848A728:
	.incbin "graphics/court_scrolls/court_scroll22.gbapal"


	.global gUnknown_0848A748
gUnknown_0848A748:
	.incbin "graphics/court_scrolls/court_scroll22.4bpp"


	.global gUnknown_0848F248
gUnknown_0848F248:
	.incbin "graphics/court_scrolls/court_scroll23.gbapal"


	.global gUnknown_0848F268
gUnknown_0848F268:
	.incbin "graphics/court_scrolls/court_scroll23.4bpp"


	.global gUnknown_08493D68
gUnknown_08493D68:
	.incbin "graphics/court_scrolls/court_scroll24.gbapal"


	.global gUnknown_08493D88
gUnknown_08493D88:
	.incbin "graphics/court_scrolls/court_scroll24.4bpp"


	.global gUnknown_08498888
gUnknown_08498888:
	.incbin "graphics/court_scrolls/court_scroll25.gbapal"


	.global gUnknown_084988A8
gUnknown_084988A8:
	.incbin "graphics/court_scrolls/court_scroll25.4bpp"


	.global gUnknown_0849D3A8
gUnknown_0849D3A8:
	.incbin "graphics/court_scrolls/court_scroll26.gbapal"


	.global gUnknown_0849D3C8
gUnknown_0849D3C8:
	.incbin "graphics/court_scrolls/court_scroll26.4bpp"


	.global gUnknown_084A1EC8
gUnknown_084A1EC8:
	.incbin "graphics/court_scrolls/court_scroll27.gbapal"


	.global gUnknown_084A1EE8
gUnknown_084A1EE8:
	.incbin "graphics/court_scrolls/court_scroll27.4bpp"


	.global gUnknown_084A69E8
gUnknown_084A69E8:
	.incbin "graphics/court_scrolls/court_scroll28.gbapal"


	.global gUnknown_084A6A08
gUnknown_084A6A08:
	.incbin "graphics/court_scrolls/court_scroll28.4bpp"


	.global gUnknown_084AB508
gUnknown_084AB508:
	.incbin "graphics/court_scrolls/court_scroll29.gbapal"


	.global gUnknown_084AB528
gUnknown_084AB528:
	.incbin "graphics/court_scrolls/court_scroll29.4bpp"


	.global gUnknown_084B0028
gUnknown_084B0028:
	.incbin "graphics/court_scrolls/court_scroll30.gbapal"


	.global gUnknown_084B0048
gUnknown_084B0048:
	.incbin "graphics/court_scrolls/court_scroll30.4bpp"


	.global gUnknown_084B4B48
gUnknown_084B4B48:
	.incbin "graphics/court_scrolls/court_scroll31.gbapal"


	.global gUnknown_084B4B68
gUnknown_084B4B68:
	.incbin "graphics/court_scrolls/court_scroll31.4bpp"


	.global gUnknown_084B9668
gUnknown_084B9668:
	.incbin "graphics/court_scrolls/court_scroll32.gbapal"


	.global gUnknown_084B9688
gUnknown_084B9688:
	.incbin "graphics/court_scrolls/court_scroll32.4bpp"

@ scroll right to center

	.global gUnknown_084BE188
gUnknown_084BE188:
	.incbin "graphics/court_scrolls/court_scroll33.gbapal"


	.global gUnknown_084BE1A8
gUnknown_084BE1A8:
	.incbin "graphics/court_scrolls/court_scroll33.4bpp"


	.global gUnknown_084C2CA8
gUnknown_084C2CA8:
	.incbin "graphics/court_scrolls/court_scroll34.gbapal"


	.global gUnknown_084C2CC8
gUnknown_084C2CC8:
	.incbin "graphics/court_scrolls/court_scroll34.4bpp"


	.global gUnknown_084C77C8
gUnknown_084C77C8:
	.incbin "graphics/court_scrolls/court_scroll35.gbapal"


	.global gUnknown_084C77E8
gUnknown_084C77E8:
	.incbin "graphics/court_scrolls/court_scroll35.4bpp"


	.global gUnknown_084CC2E8
gUnknown_084CC2E8:
	.incbin "graphics/court_scrolls/court_scroll36.gbapal"


	.global gUnknown_084CC308
gUnknown_084CC308:
	.incbin "graphics/court_scrolls/court_scroll36.4bpp"


	.global gUnknown_084D0E08
gUnknown_084D0E08:
	.incbin "graphics/court_scrolls/court_scroll37.gbapal"


	.global gUnknown_084D0E28
gUnknown_084D0E28:
	.incbin "graphics/court_scrolls/court_scroll37.4bpp"


	.global gUnknown_084D5928
gUnknown_084D5928:
	.incbin "graphics/court_scrolls/court_scroll38.gbapal"


	.global gUnknown_084D5948
gUnknown_084D5948:
	.incbin "graphics/court_scrolls/court_scroll38.4bpp"


	.global gUnknown_084DA448
gUnknown_084DA448:
	.incbin "graphics/court_scrolls/court_scroll39.gbapal"


	.global gUnknown_084DA468
gUnknown_084DA468:
	.incbin "graphics/court_scrolls/court_scroll39.4bpp"


	.global gUnknown_084DEF68
gUnknown_084DEF68:
	.incbin "graphics/court_scrolls/court_scroll40.gbapal"


	.global gUnknown_084DEF88
gUnknown_084DEF88:
	.incbin "graphics/court_scrolls/court_scroll40.4bpp"


	.global gUnknown_084E3A88
gUnknown_084E3A88:
	.incbin "graphics/court_scrolls/court_scroll41.gbapal"


	.global gUnknown_084E3AA8
gUnknown_084E3AA8:
	.incbin "graphics/court_scrolls/court_scroll41.4bpp"


	.global gUnknown_084E85A8
gUnknown_084E85A8:
	.incbin "graphics/court_scrolls/court_scroll42.gbapal"


	.global gUnknown_084E85C8
gUnknown_084E85C8:
	.incbin "graphics/court_scrolls/court_scroll42.4bpp"


	.global gUnknown_084ED0C8
gUnknown_084ED0C8:
	.incbin "graphics/court_scrolls/court_scroll43.gbapal"


	.global gUnknown_084ED0E8
gUnknown_084ED0E8:
	.incbin "graphics/court_scrolls/court_scroll43.4bpp"


	.global gUnknown_084F1BE8
gUnknown_084F1BE8:
	.incbin "graphics/court_scrolls/court_scroll44.gbapal"


	.global gUnknown_084F1C08
gUnknown_084F1C08:
	.incbin "graphics/court_scrolls/court_scroll44.4bpp"


	.global gUnknown_084F6708
gUnknown_084F6708:
	.incbin "graphics/court_scrolls/court_scroll45.gbapal"


	.global gUnknown_084F6728
gUnknown_084F6728:
	.incbin "graphics/court_scrolls/court_scroll45.4bpp"


	.global gUnknown_084FB228
gUnknown_084FB228:
	.incbin "graphics/court_scrolls/court_scroll46.gbapal"


	.global gUnknown_084FB248
gUnknown_084FB248:
	.incbin "graphics/court_scrolls/court_scroll46.4bpp"


	.global gUnknown_084FFD48
gUnknown_084FFD48:
	.incbin "graphics/court_scrolls/court_scroll47.gbapal"


	.global gUnknown_084FFD68
gUnknown_084FFD68:
	.incbin "graphics/court_scrolls/court_scroll47.4bpp"


	.global gUnknown_08504868
gUnknown_08504868:
	.incbin "graphics/court_scrolls/court_scroll48.gbapal"


	.global gUnknown_08504888
gUnknown_08504888:
	.incbin "graphics/court_scrolls/court_scroll48.4bpp"

@ END COURT SCROLLS

@ BEGIN CHARACTER ANIMATION GRAPHICS PACKAGES AND SEQUENCES

	.global gUnknown_08509388
gUnknown_08509388:
	.incbin "graphics/animations/characters/animation01.pix"


	.global gUnknown_08532B84
gUnknown_08532B84:
	.incbin "graphics/animations/characters/animation01.seq"


	.global gUnknown_08536720
gUnknown_08536720:
	.incbin "graphics/animations/characters/animation02.pix"


	.global gUnknown_08555EF4
gUnknown_08555EF4:
	.incbin "graphics/animations/characters/animation02.seq"


	.global gUnknown_0855DCE4
gUnknown_0855DCE4:
	.incbin "graphics/animations/characters/animation03.pix"


	.global gUnknown_08569D8C
gUnknown_08569D8C:
	.incbin "graphics/animations/characters/animation03.seq"


	.global gUnknown_0856C438
gUnknown_0856C438:
	.incbin "graphics/animations/characters/animation04.pix"


	.global gUnknown_08575EC0
gUnknown_08575EC0:
	.incbin "graphics/animations/characters/animation04.seq"


	.global gUnknown_08577ADC
gUnknown_08577ADC:
	.incbin "graphics/animations/characters/animation05.pix"


	.global gUnknown_0857CA00
gUnknown_0857CA00:
	.incbin "graphics/animations/characters/animation05.seq"


	.global gUnknown_0857D794
gUnknown_0857D794:
	.incbin "graphics/animations/characters/animation06.pix"


	.global gUnknown_085B76BC
gUnknown_085B76BC:
	.incbin "graphics/animations/characters/animation06.seq"


	.global gUnknown_085C2C94
gUnknown_085C2C94:
	.incbin "graphics/animations/characters/animation07.pix"


	.global gUnknown_085E3388
gUnknown_085E3388:
	.incbin "graphics/animations/characters/animation07.seq"


	.global gUnknown_085E8A48
gUnknown_085E8A48:
	.incbin "graphics/animations/characters/animation08.pix"


	.global gUnknown_0860EF60
gUnknown_0860EF60:
	.incbin "graphics/animations/characters/animation08.seq"


	.global gUnknown_08612014
gUnknown_08612014:
	.incbin "graphics/animations/characters/animation09.pix"


	.global gUnknown_0862057C
gUnknown_0862057C:
	.incbin "graphics/animations/characters/animation09.seq"


	.global gUnknown_08622F20
gUnknown_08622F20:
	.incbin "graphics/animations/characters/animation11.pix"


	.global gUnknown_08626564
gUnknown_08626564:
	.incbin "graphics/animations/characters/animation11.seq"


	.global gUnknown_08626AD0
gUnknown_08626AD0:
	.incbin "graphics/animations/characters/animation12.pix"


	.global gUnknown_0862ADB4
gUnknown_0862ADB4:
	.incbin "graphics/animations/characters/animation12.seq"


	.global gUnknown_0862BA68
gUnknown_0862BA68:
	.incbin "graphics/animations/characters/animation13.pix"


	.global gUnknown_08651F00
gUnknown_08651F00:
	.incbin "graphics/animations/characters/animation13.seq"


	.global gUnknown_0865787C
gUnknown_0865787C:
	.incbin "graphics/animations/characters/animation14.pix"


	.global gUnknown_0866E26C
gUnknown_0866E26C:
	.incbin "graphics/animations/characters/animation14.seq"


	.global gUnknown_08670494
gUnknown_08670494:
	.incbin "graphics/animations/characters/animation15.pix"


	.global gUnknown_08675038
gUnknown_08675038:
	.incbin "graphics/animations/characters/animation15.seq"


	.global gUnknown_086758CC
gUnknown_086758CC:
	.incbin "graphics/animations/characters/animation16.pix"


	.global gUnknown_0867EAB4
gUnknown_0867EAB4:
	.incbin "graphics/animations/characters/animation16.seq"


	.global gUnknown_086812FC
gUnknown_086812FC:
	.incbin "graphics/animations/characters/animation17.pix"


	.global gUnknown_086851E0
gUnknown_086851E0:
	.incbin "graphics/animations/characters/animation17.seq"


	.global gUnknown_08685AEC
gUnknown_08685AEC:
	.incbin "graphics/animations/characters/animation18.pix"


	.global gUnknown_0868FCF4
gUnknown_0868FCF4:
	.incbin "graphics/animations/characters/animation18.seq"


	.global gUnknown_08691040
gUnknown_08691040:
	.incbin "graphics/animations/characters/animation19.pix"


	.global gUnknown_086A146C
gUnknown_086A146C:
	.incbin "graphics/animations/characters/animation19.seq"


	.global gUnknown_086A3A80
gUnknown_086A3A80:
	.incbin "graphics/animations/characters/animation21.pix"


	.global gUnknown_086B0EA8
gUnknown_086B0EA8:
	.incbin "graphics/animations/characters/animation21.seq"


	.global gUnknown_086B4504
gUnknown_086B4504:
	.incbin "graphics/animations/characters/animation22.pix"


	.global gUnknown_086C4B90
gUnknown_086C4B90:
	.incbin "graphics/animations/characters/animation22.seq"


	.global gUnknown_086C7128
gUnknown_086C7128:
	.incbin "graphics/animations/characters/animation23.pix"


	.global gUnknown_086C9ECC
gUnknown_086C9ECC:
	.incbin "graphics/animations/characters/animation23.seq"


	.global gUnknown_086CA0FC
gUnknown_086CA0FC:
	.incbin "graphics/animations/characters/animation24.pix"


	.global gUnknown_086CCA60
gUnknown_086CCA60:
	.incbin "graphics/animations/characters/animation24.seq"


	.global gUnknown_086CCD04
gUnknown_086CCD04:
	.incbin "graphics/animations/characters/animation25.pix"


	.global gUnknown_086D7AEC
gUnknown_086D7AEC:
	.incbin "graphics/animations/characters/animation25.seq"


	.global gUnknown_086DA640
gUnknown_086DA640:
	.incbin "graphics/animations/characters/animation26.pix"


	.global gUnknown_086EF710
gUnknown_086EF710:
	.incbin "graphics/animations/characters/animation26.seq"


	.global gUnknown_086F328C
gUnknown_086F328C:
	.incbin "graphics/animations/characters/animation27.pix"


	.global gUnknown_087195C8
gUnknown_087195C8:
	.incbin "graphics/animations/characters/animation27.seq"


	.global gUnknown_0871CF30
gUnknown_0871CF30:
	.incbin "graphics/animations/characters/animation28.pix"


	.global gUnknown_0871E9F4
gUnknown_0871E9F4:
	.incbin "graphics/animations/characters/animation28.seq"

@ END CHARACTER ANIMATION GRAPHICS PACKAGES AND SEQUENCES

@ BEGIN ANIMATION GRAPHICS PACKAGES AND SEQUENCES

	.global gUnknown_0871EBBC
gUnknown_0871EBBC:
	.incbin "graphics/animations/tileset01.pix"


	.global gUnknown_0871FCF4
gUnknown_0871FCF4:
	.incbin "graphics/animations/animation01.seq"


	.global gUnknown_0871FD14
gUnknown_0871FD14:
	.incbin "graphics/animations/animation02.seq"


	.global gUnknown_0871FD60
gUnknown_0871FD60:
	.incbin "graphics/animations/animation03.seq"


	.global gUnknown_0871FD80
gUnknown_0871FD80:
	.incbin "graphics/animations/animation04.seq"


	.global gUnknown_0871FDAC
gUnknown_0871FDAC:
	.incbin "graphics/animations/animation05.seq"


	.global gUnknown_0871FDD0
gUnknown_0871FDD0:
	.incbin "graphics/animations/animation06.seq"


	.global gUnknown_0871FDF8
gUnknown_0871FDF8:
	.incbin "graphics/animations/tileset02.pix"


	.global gUnknown_08748218
gUnknown_08748218:
	.incbin "graphics/animations/animation07.seq"


	.global gUnknown_08748340
gUnknown_08748340:
	.incbin "graphics/animations/animation08.seq"


	.global gUnknown_08748468
gUnknown_08748468:
	.incbin "graphics/animations/animation09.seq"


	.global gUnknown_08748488
gUnknown_08748488:
	.incbin "graphics/animations/animation10.seq"


	.global gUnknown_087484A8
gUnknown_087484A8:
	.incbin "graphics/animations/animation11.seq"


	.global gUnknown_087484C8
gUnknown_087484C8:
	.incbin "graphics/animations/animation12.seq"


	.global gUnknown_087484E8
gUnknown_087484E8:
	.incbin "graphics/animations/animation13.seq"


	.global gUnknown_08748520
gUnknown_08748520:
	.incbin "graphics/animations/animation14.seq"


	.global gUnknown_08748558
gUnknown_08748558:
	.incbin "graphics/animations/animation15.seq"


	.global gUnknown_08748590
gUnknown_08748590:
	.incbin "graphics/animations/animation16.seq"


	.global gUnknown_087485C0
gUnknown_087485C0:
	.incbin "graphics/animations/animation17.seq"


	.global gUnknown_087485F4
gUnknown_087485F4:
	.incbin "graphics/animations/animation18.seq"


	.global gUnknown_08748684
gUnknown_08748684:
	.incbin "graphics/animations/animation19.seq"


	.global gUnknown_08748774
gUnknown_08748774:
	.incbin "graphics/animations/animation20.seq"


	.global gUnknown_08748AB4
gUnknown_08748AB4:
	.incbin "graphics/animations/animation21.seq"


	.global gUnknown_08748AEC
gUnknown_08748AEC:
	.incbin "graphics/animations/animation22.seq"


	.global gUnknown_08748B24
gUnknown_08748B24:
	.incbin "graphics/animations/animation23.seq"


	.global gUnknown_08748C38
gUnknown_08748C38:
	.incbin "graphics/animations/animation24.seq"


	.global gUnknown_08748CA0
gUnknown_08748CA0:
	.incbin "graphics/animations/animation25.seq"


	.global gUnknown_08748D74
gUnknown_08748D74:
	.incbin "graphics/animations/animation26.seq"


	.global gUnknown_08748D98
gUnknown_08748D98:
	.incbin "graphics/animations/animation27.seq"


	.global gUnknown_08748DB8
gUnknown_08748DB8:
	.incbin "graphics/animations/animation28.seq"


	.global gUnknown_08748E0C
gUnknown_08748E0C:
	.incbin "graphics/animations/animation29.seq"


	.global gUnknown_08748EE4
gUnknown_08748EE4:
	.incbin "graphics/animations/animation30.seq"


	.global gUnknown_08748F44
gUnknown_08748F44:
	.incbin "graphics/animations/animation31.seq"


	.global gUnknown_08748F80
gUnknown_08748F80:
	.incbin "graphics/animations/animation32.seq"


	.global gUnknown_08748FA4
gUnknown_08748FA4:
	.incbin "graphics/animations/animation33.seq"


	.global gUnknown_08748FDC
gUnknown_08748FDC:
	.incbin "graphics/animations/animation34.seq"


	.global gUnknown_08749000
gUnknown_08749000:
	.incbin "graphics/animations/animation35.seq"


	.global gUnknown_08749044
gUnknown_08749044:
	.incbin "graphics/animations/animation36.seq"


	.global gUnknown_087490B0
gUnknown_087490B0:
	.incbin "graphics/animations/animation37.seq"


	.global gUnknown_0874911C
gUnknown_0874911C:
	.incbin "graphics/animations/animation38.seq"


	.global gUnknown_08749158
gUnknown_08749158:
	.incbin "graphics/animations/animation39.seq"


	.global gUnknown_08749194
gUnknown_08749194:
	.incbin "graphics/animations/animation40.seq"


	.global gUnknown_087491C4
gUnknown_087491C4:
	.incbin "graphics/animations/animation41.seq"


	.global gUnknown_087491EC
gUnknown_087491EC:
	.incbin "graphics/animations/animation42.seq"


	.global gUnknown_08749210
gUnknown_08749210:
	.incbin "graphics/animations/animation43.seq"


	.global gUnknown_08749240
gUnknown_08749240:
	.incbin "graphics/animations/animation44.seq"


	.global gUnknown_08749268
gUnknown_08749268:
	.incbin "graphics/animations/animation45.seq"


	.global gUnknown_08749290
gUnknown_08749290:
	.incbin "graphics/animations/animation46.seq"


	.global gUnknown_087492C0
gUnknown_087492C0:
	.incbin "graphics/animations/animation47.seq"


	.global gUnknown_08749314
gUnknown_08749314:
	.incbin "graphics/animations/animation48.seq"


	.global gUnknown_08749334
gUnknown_08749334:
	.incbin "graphics/animations/animation49.seq"


	.global gUnknown_08749360
gUnknown_08749360:
	.incbin "graphics/animations/animation50.seq"


	.global gUnknown_08749384
gUnknown_08749384:
	.incbin "graphics/animations/animation51.seq"


	.global gUnknown_087493A8
gUnknown_087493A8:
	.incbin "graphics/animations/animation52.seq"


	.global gUnknown_087493D4
gUnknown_087493D4:
	.incbin "graphics/animations/animation53.seq"


	.global gUnknown_08749404
gUnknown_08749404:
	.incbin "graphics/animations/animation54.seq"

@ END ANIMATION GRAPHICS PACKAGES AND SEQUENCES
