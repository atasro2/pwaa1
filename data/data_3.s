	.section .data
    .include "asm/macros.inc"

    .align 2
    .global gUnknown_0811DA98
gUnknown_0811DA98:
    .incbin "baserom.gba", 0x11DA98, 0x11C

    .global gUnknown_0811DBB4
gUnknown_0811DBB4:
    .4byte sub_8007A0C
    .4byte sub_8007AC4
    .4byte sub_8007E78
    .4byte sub_800A3D4
    .4byte sub_800B7BC
    .4byte sub_800A87C
    .4byte sub_800AB40
    .4byte sub_800D824
    .4byte sub_800D860
    .4byte sub_800B038
    .4byte sub_80084D4
    .4byte sub_80090E8
    .4byte sub_80094E4
    .4byte sub_8009A64
    .4byte sub_80081EC

    .global gUnknown_0811DBF0
gUnknown_0811DBF0:
    .4byte nullsub_1
	.4byte sub_800254C
	.4byte sub_800254C
	.4byte sub_8002734
	.4byte sub_8002734

    .global gUnknown_0811DC04
gUnknown_0811DC04:
    .4byte gUnknown_03003730+0x94
	.4byte gUnknown_03003730+0xB4
	.4byte gUnknown_03003730+0xB8

    .global gUnknown_0811DC10
gUnknown_0811DC10:
    .4byte 0x08014da4
	.4byte 0x08014e0c
	.4byte 0x08014e10
	.4byte 0x08014e20
	.4byte 0x08014e32
	.4byte 0x08015870
	.4byte 0x08015876
	.4byte 0x08015884
	.4byte 0x08015893
	.4byte 0x080158a7
	.4byte 0x080158bb
	.4byte 0x08017168
	.4byte 0x0801716e
	.4byte 0x0801717f
	.4byte 0x08017195
	.4byte 0x080171b1
	.4byte 0x080171cd

    .global gUnknown_0811DC54
gUnknown_0811DC54:
    .4byte 0x08014dac
	.4byte 0x08014e48
	.4byte 0x08014e48
	.4byte 0x08014ec0
	.4byte 0x08014ec0
	.4byte 0x080158d4
	.4byte 0x080158d4
	.4byte 0x0801591c
	.4byte 0x0801591c
	.4byte 0x08015944
	.4byte 0x08015974
	.4byte 0x080171e8
	.4byte 0x080171e8
	.4byte 0x08017240
	.4byte 0x08017258
	.4byte 0x08017298
	.4byte 0x08017298

    .global gUnknown_0811DC98
gUnknown_0811DC98:
    .4byte 0x08014f30
	.4byte 0x08014f30
	.4byte 0x08014f30
	.4byte 0x080153bc
	.4byte 0x08014f30
	.4byte 0x080159c4
	.4byte 0x080159c4
	.4byte 0x08015f04
	.4byte 0x080159c4
	.4byte 0x08016abc
	.4byte 0x080159c4
	.4byte 0x080172e8
	.4byte 0x080172e8
	.4byte 0x080179bc
	.4byte 0x080172e8
	.4byte 0x080181e4
	.4byte 0x080172e8

    .global gUnknown_0811DCDC
gUnknown_0811DCDC:
    .4byte nullsub_4
	.4byte sub_8002D70
	.4byte nullsub_4
	.4byte sub_800318C
	.4byte nullsub_4
	.4byte sub_8003594
	.4byte nullsub_4
	.4byte sub_8003924
	.4byte nullsub_4
	.4byte sub_80040A4
	.4byte nullsub_4
	.4byte sub_80044D0
	.4byte nullsub_4
	.4byte sub_80049F8
	.4byte nullsub_4
	.4byte sub_8005034
	.4byte nullsub_4

    .global gUnknown_0811DD20
gUnknown_0811DD20:
    .4byte nullsub_4
	.4byte sub_8002DB4
	.4byte nullsub_4
	.4byte sub_80031D0
	.4byte nullsub_4
	.4byte sub_80035D8
	.4byte nullsub_4
	.4byte sub_8003968
	.4byte nullsub_4
	.4byte sub_80040E8
	.4byte nullsub_4
	.4byte sub_8004514
	.4byte nullsub_4
	.4byte sub_8004A3C
	.4byte nullsub_4
	.4byte sub_8005078
	.4byte nullsub_4

    .global gUnknown_0811DD64
gUnknown_0811DD64:
    .4byte nullsub_4
	.4byte nullsub_7
	.4byte nullsub_4
	.4byte sub_8003544
	.4byte nullsub_4
	.4byte nullsub_8
	.4byte nullsub_4
	.4byte nullsub_9
	.4byte nullsub_4
	.4byte sub_8004488
	.4byte nullsub_4
	.4byte nullsub_10
	.4byte nullsub_4
	.4byte nullsub_11
	.4byte nullsub_4
	.4byte nullsub_37
	.4byte nullsub_4

    .global gScriptCmdFuncs
gScriptCmdFuncs:
    .4byte Command00
    .4byte Command01
    .4byte Command02
    .4byte Command03
    .4byte Command04
    .4byte Command05
    .4byte Command06
    .4byte Command02
    .4byte Command08
    .4byte Command09
    .4byte Command02
    .4byte Command0B
    .4byte Command0C
    .4byte Command0D
    .4byte Command0E
    .4byte Command0F
    .4byte Command10
    .4byte Command11
    .4byte Command12
    .4byte Command13
    .4byte Command14
    .4byte Command15
    .4byte Command16
    .4byte Command17
    .4byte Command18
    .4byte Command19
    .4byte Command1A
    .4byte Command1B
    .4byte Command1C
    .4byte Command1D
    .4byte Command1E
    .4byte Command1F
    .4byte Command20
    .4byte sub_8006988
    .4byte sub_80069C8
    .4byte sub_80069F4
    .4byte sub_8006A20
    .4byte sub_8006A3C
    .4byte sub_8006A4C
    .4byte sub_8006A88
    .4byte sub_8006AB4
    .4byte sub_8006AEC
    .4byte sub_8006B98
    .4byte sub_8006BC8
    .4byte sub_8006C20
    .4byte Command02
    .4byte sub_8006C8C
    .4byte sub_8006CF4
    .4byte sub_8006D28
    .4byte sub_8006D4C
    .4byte sub_8006D70
    .4byte sub_8006D90
    .4byte sub_8006DE8
    .4byte sub_8006E1C
    .4byte sub_8006EA0
    .4byte sub_8006ED4
    .4byte sub_8006F00
    .4byte sub_8006F3C
    .4byte sub_8007054
    .4byte sub_80070BC
    .4byte sub_8007124
    .4byte sub_800718C
    .4byte sub_80071D8
    .4byte sub_800724C
    .4byte sub_8007574
    .4byte sub_800759C
    .4byte sub_8007604
    .4byte sub_8007648
    .4byte sub_80076B4
    .4byte Command15
    .4byte sub_80077A0
    .4byte sub_8007868
    .4byte sub_800788C
    .4byte sub_80078EC
    .4byte sub_8007908
    .4byte sub_8007944
    .4byte sub_80079A0
    .4byte nullsub_13
    .4byte nullsub_14
    .4byte nullsub_15
    .4byte nullsub_38
    .4byte nullsub_17
    .4byte nullsub_18
    .4byte nullsub_19
    .4byte nullsub_20
    .4byte nullsub_21
    .4byte nullsub_39
    .4byte nullsub_23
    .4byte nullsub_24
    .4byte nullsub_25
    .4byte nullsub_26
    .4byte nullsub_27
    .4byte nullsub_28
    .4byte nullsub_29
    .4byte nullsub_30
    .4byte nullsub_31

    .global gUnknown_0811DF28
gUnknown_0811DF28:
    .4byte sub_80084F4
	.4byte sub_80085D8
	.4byte sub_8008794
	.4byte sub_800885C
	.4byte sub_8008A18
	.4byte sub_8008C64
	.4byte sub_8008CC0
	.4byte sub_8008D68

    .global gUnknown_0811DF48
gUnknown_0811DF48:
    .4byte sub_800A3EC
    .4byte sub_800A5B0
    .4byte sub_800A6AC

    .global gUnknown_0811DF54
gUnknown_0811DF54:
    .4byte sub_800A894
    .4byte sub_800A8E0
    .4byte sub_800A9FC
    .4byte sub_800A730

    .global gUnknown_0811DF64
gUnknown_0811DF64:
    .4byte sub_800AB58
	.4byte sub_800AC1C
	.4byte nullsub_32
	.4byte sub_800AA10
	.4byte sub_800AE58
	.4byte sub_800AF2C

    .global gUnknown_0811DF7C
gUnknown_0811DF7C:
    .4byte sub_800B808
	.4byte sub_800BAD4
	.4byte sub_800BD74
	.4byte sub_800BDF8
	.4byte sub_800BE58
	.4byte sub_800BE7C
	.4byte sub_800BF90
	.4byte sub_800C334
	.4byte sub_800C8B8
	.4byte sub_800D2B0

    .global gUnknown_0811DFA4
gUnknown_0811DFA4:
    .4byte sub_800D880
	.4byte sub_800D94C
	.4byte sub_800DD88
	.4byte sub_800DE28
	.4byte sub_800DE8C
	.4byte sub_800DF44
	.4byte sub_800E488
	.4byte sub_800E4A4

    .global gUnknown_0811DFC4
gUnknown_0811DFC4:
    .4byte sub_800E75C
    .4byte sub_800E7C0
    .4byte sub_800E828

    .global gUnknown_0811DFD0
gUnknown_0811DFD0:
    .4byte sub_8011130
	.4byte sub_8011130
	.4byte sub_8011130
	.4byte sub_8011130
	.4byte sub_80111A0
	.4byte sub_80111A0
	.4byte sub_80111A0
	.4byte sub_80111A0
	.4byte sub_80111A0
	.4byte sub_8011130
	.4byte sub_8011130

    .global gUnknown_0811DFFC
gUnknown_0811DFFC:
    .incbin "baserom.gba", 0x0011DFFC, 0x62004

    .global gUnknown_08180000
gUnknown_08180000:
    .incbin "baserom.gba", 0x00180000, 0x200

    .global gUnknown_08180200
gUnknown_08180200:
    .incbin "baserom.gba", 0x00180200, 0x5B20

    .global gUnknown_08185D20
gUnknown_08185D20:
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
    .incbin "baserom.gba", 0x001964A8, 0x1C464

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
    .incbin "baserom.gba", 0x0024696C, 0x22E0

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
    .incbin "baserom.gba", 0x00509388, 0x215834

    .global gUnknown_0871EBBC
gUnknown_0871EBBC:
    .incbin "baserom.gba", 0x0071EBBC, 0x1138

    .global gUnknown_0871FCF4
gUnknown_0871FCF4:
    .incbin "baserom.gba", 0x0071FCF4, 0x104

    .global gUnknown_0871FDF8
gUnknown_0871FDF8:
    .incbin "baserom.gba", 0x0071FDF8, 0x28420

    .global gUnknown_08748218
gUnknown_08748218:
    .incbin "baserom.gba", 0x00748218, 0x1210

@ ; BEGIN SCRIPTS
    
    .global gUnknown_08749428 @ uncompressed
gUnknown_08749428:
    .incbin "baserom.gba", 0x00749428, 0xDEC
    
    .global gUnknown_0874A214
gUnknown_0874A214:
    .incbin "baserom.gba", 0x0074A214, 0x5A28
    
    .global gUnknown_0874FC3C
gUnknown_0874FC3C:
    .incbin "baserom.gba", 0x0074FC3C, 0x64BC
    
    .global gUnknown_087560F8
gUnknown_087560F8:
    .incbin "baserom.gba", 0x007560F8, 0x80fc ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global gUnknown_0875E1F4
gUnknown_0875E1F4:
    .incbin "baserom.gba", 0x0075E1F4, 0x6810
    
    .global gUnknown_08764A04
gUnknown_08764A04:
    .incbin "baserom.gba", 0x00764A04, 0x63E8
    
    .global gUnknown_0876ADEC
gUnknown_0876ADEC:
    .incbin "baserom.gba", 0x0076ADEC, 0x6068
    
    .global gUnknown_08770E54
gUnknown_08770E54:
    .incbin "baserom.gba", 0x00770E54, 0x5748
    
    .global gUnknown_0877659C
gUnknown_0877659C:
    .incbin "baserom.gba", 0x0077659C, 0x806c ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global gUnknown_0877E608
gUnknown_0877E608:
    .incbin "baserom.gba", 0x0077E608, 0x6f6c ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global gUnknown_08785574
gUnknown_08785574:
    .incbin "baserom.gba", 0x00785574, 0x512C
    
    .global gUnknown_0878A6A0
gUnknown_0878A6A0:
    .incbin "baserom.gba", 0x0078A6A0, 0x6114
    
    .global gUnknown_087907B4
gUnknown_087907B4:
    .incbin "baserom.gba", 0x007907B4, 0x8264 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global gUnknown_08798A18
gUnknown_08798A18:
    .incbin "baserom.gba", 0x00798A18, 0x75c8 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global gUnknown_0879FFE0
gUnknown_0879FFE0:
    .incbin "baserom.gba", 0x0079FFE0, 0x977c ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global gUnknown_087A975C
gUnknown_087A975C:
    .incbin "baserom.gba", 0x007A975C, 0x6bf4 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global gUnknown_087B0350
gUnknown_087B0350:
    .incbin "baserom.gba", 0x007B0350, 0x6E00

    .global gUnknown_087B7150
gUnknown_087B7150:
    .incbin "baserom.gba", 0x007B7150, 0xB88C ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
@ ; END SCRIPTS
