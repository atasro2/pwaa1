	.section gfx_data, "aw", %progbits
	.include "asm/macros.inc"

	.global gGfxPalTitleScreen
gGfxPalTitleScreen:
	.incbin "graphics/title_screen.gbapal"

	.global gGfx8lzTitleScreen
gGfx8lzTitleScreen:
	.incbin "graphics/title_screen.8bpp.lz"

	.global gGfxPalTitleScreenDemo
gGfxPalTitleScreenDemo:
	.incbin "graphics/title_screen_demo.gbapal"

	.global gGfx8lzTitleScreenDemo
gGfx8lzTitleScreenDemo:
	.incbin "graphics/title_screen_demo.8bpp.lz"

	.global gUnusedAsciiCharSet
gUnusedAsciiCharSet:
	.incbin "graphics/unused_ascii_charset.4bpp"

	.global gGfxPalEvidenceProfileDesc
gGfxPalEvidenceProfileDesc:
	.incbin "graphics/evidence_profile_descriptions/evidence_profile_descriptions.gbapal"

	.global gUnknown_08186540
gUnknown_08186540:
	.incbin "graphics/ui/message_box/unk_186540.4bpp"

	.global gGfx4bppNametags
gGfx4bppNametags:
	.incbin "graphics/ui/message_box/nametags.4bpp"

	.global gGfx4bppTestimonyArrows
gGfx4bppTestimonyArrows:
	.incbin "graphics/ui/left_right_arrows.4bpp"

	.global gGfx4bppTrialLifeAndUnused
gGfx4bppTrialLifeAndUnused:
	.incbin "graphics/ui/trial/exclamation_point.4bpp"
	.incbin "graphics/ui/trial/unused_testimony_characters.4bpp"

	.global gGfx4bppInvestigationActions
gGfx4bppInvestigationActions:
	.incbin "graphics/ui/investigation/action_buttons.4bpp"

	.global gGfx4bppControllerButtons
gGfx4bppControllerButtons:
	.incbin "graphics/ui/court_record/controller_buttons.4bpp"

	.global gGfx4bppInvestigationScrollButton
gGfx4bppInvestigationScrollButton:
	.incbin "graphics/ui/investigation/scroll_prompt.4bpp"

	.global gGfx4bppTestimonyTextTiles
gGfx4bppTestimonyTextTiles:
	.incbin "graphics/ui/trial/testimony_text_tiles.4bpp"

	.global gUnknown_081900C0
gUnknown_081900C0:
	.incbin "graphics/ui/trial/press_present_buttons.4bpp"

	.global gUnknown_081904C0
gUnknown_081904C0:
	.incbin "graphics/ui/court_record/present_back_text.4bpp"

	.global gUnknown_081906C0
gUnknown_081906C0:
	.incbin "graphics/ui/court_record/profiles_text.4bpp"

	.global gUnknown_081908C0
gUnknown_081908C0:
	.incbin "graphics/ui/court_record/evidence_text.4bpp"

	.global gUnknown_08190AC0
gUnknown_08190AC0:
	.incbin "graphics/ui/investigation/examine_cursor.4bpp"

	.global gUnknown_08190FC0
gUnknown_08190FC0:
	.incbin "graphics/ui/investigation/checkmark.4bpp"

	.global gUnknown_081911C0
gUnknown_081911C0:
	.incbin "graphics/ui/trial/game_over_doors.4bpp"

	.global gUnknown_081914A0
gUnknown_081914A0:
	.incbin "graphics/ui/trial/not_guilty1.4bpp"

	.global gUnknown_08191CA0
gUnknown_08191CA0:
	.incbin "graphics/ui/trial/guilty1.4bpp"

	.global gUnknown_081924A0
gUnknown_081924A0:
	.incbin "graphics/ui/trial/guilty_not_guilty2.4bpp"

	.global gUnknown_08192CA0
gUnknown_08192CA0:
	.incbin "graphics/ui/trial/game_over_text.4bpp"

	.global gUnknown_08193CA0
gUnknown_08193CA0:
	.incbin "graphics/ui/new_game_continue.4bpp"

	.global gUnknown_081940A0
gUnknown_081940A0:
	.incbin "graphics/ui/trial/confetti.4bpp"
	.incbin "graphics/unk_1940C0.gbapal"

	.global gUnknown_081940E0
gUnknown_081940E0:
	.incbin "graphics/ui/cross_examination_ui.gbapal"
	.incbin "graphics/unk_194100.gbapal"

	.global gUnknown_08194200
gUnknown_08194200:
	.incbin "graphics/ui/investigation/action_buttons_0.gbapal"
	.incbin "graphics/ui/investigation/action_buttons_1.gbapal"

	.global gUnknown_08194240
gUnknown_08194240:
	.incbin "graphics/ui/court_record/controls_blurb.gbapal"

	.global gUnknown_08194260
gUnknown_08194260:
	.incbin "graphics/ui/investigation/scroll_prompt.gbapal"

	.global gUnknown_08194280
gUnknown_08194280:
	.incbin "graphics/ui/trial/testimony_text_tiles.gbapal"

	.global gUnknown_081942A0
gUnknown_081942A0:
	.incbin "graphics/ui/trial/press_present_buttons.gbapal"

	.global gUnknown_081942C0
gUnknown_081942C0:
	.incbin "graphics/ui/investigation/examine_cursor_00.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_01.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_02.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_03.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_04.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_05.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_06.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_07.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_08.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_09.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_10.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_11.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_12.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_13.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_14.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_15.gbapal"
	.incbin "graphics/ui/investigation/examine_cursor_16.gbapal"

	.global gUnknown_081944E0
gUnknown_081944E0:
	.incbin "graphics/ui/investigation/checkmark.gbapal"

	.global gUnknown_08194500
gUnknown_08194500:
	.incbin "graphics/ui/trial/game_over_doors.gbapal"

	.global gUnknown_08194520
gUnknown_08194520:
	.incbin "graphics/ui/trial/guilty.gbapal"

	.global gUnknown_08194540
gUnknown_08194540:
	.incbin "graphics/ui/trial/not_guilty.gbapal"

	.global gUnknown_08194560
gUnknown_08194560:
	.incbin "graphics/ui/trial/game_over_text.gbapal"

	.global gUnknown_08194580
gUnknown_08194580:
	.incbin "graphics/ui/new_game_continue_0.gbapal"
	.incbin "graphics/ui/new_game_continue_1.gbapal"
	.incbin "graphics/ui/new_game_continue_2.gbapal"
	.incbin "graphics/ui/new_game_continue_3.gbapal"
	.incbin "graphics/ui/new_game_continue_4.gbapal"
	.incbin "graphics/ui/new_game_continue_5.gbapal"

	.global gUnknown_08194640
gUnknown_08194640:
	.incbin "graphics/ui/trial/confetti_0.gbapal"
	.incbin "graphics/ui/trial/confetti_1.gbapal"
	.incbin "graphics/ui/trial/confetti_2.gbapal"
	.incbin "graphics/ui/trial/confetti_3.gbapal"

	.global gUnknown_081946C0
gUnknown_081946C0:
	.incbin "graphics/episode_select_options.4bpp.lz"

	.global gUnknown_081954A8
gUnknown_081954A8:
	.incbin "graphics/from_save_or_beginning_options.4bpp"

	.global gUnknown_081964A8
gUnknown_081964A8:
	.incbin "graphics/save_yes_no.4bpp"

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

	.global gUnknown_081B290C
gUnknown_081B290C:

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

	.global gGfxPalChoiceSelected
gGfxPalChoiceSelected:
	.incbin "graphics/talk_location_choices/choice_selected.gbapal"

	.global gGfxPalChoiceGreyedOut
gGfxPalChoiceGreyedOut:
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
	.incbin "graphics/map_markers/palette.gbapal"

		.global gUnknown_0824698C
gUnknown_0824698C:
	.incbin "graphics/map_markers/killer.4bpp"

	.global gUnknown_08246A0C
gUnknown_08246A0C:
	.incbin "graphics/map_markers/victim.4bpp"

	.global gUnknown_08246A8C
gUnknown_08246A8C:
	.incbin "graphics/map_markers/case2_mia_body.4bpp"

	.global gUnknown_08246E8C
gUnknown_08246E8C:
	.incbin "graphics/map_markers/case2_thinker.4bpp"

	.global gUnknown_08246ECC
gUnknown_08246ECC:
	.incbin "graphics/map_markers/case3_studio_1.4bpp"

	.global gUnknown_082476CC
gUnknown_082476CC:
	.incbin "graphics/map_markers/case3_studio_2.4bpp"

	.global gUnknown_08247ECC
gUnknown_08247ECC:
	.incbin "graphics/map_markers/case3_employee_area.4bpp"

	.global gUnknown_082486CC
gUnknown_082486CC:
	.incbin "graphics/map_markers/case3_gate.4bpp"

	.global gUnknown_0824874C
gUnknown_0824874C:
	.incbin "graphics/map_markers/case3_main_gate.4bpp"

	.global gUnknown_0824884C
gUnknown_0824884C:
	.incbin "graphics/map_markers/green.4bpp"

	.global gUnknown_082488CC
gUnknown_082488CC:
	.incbin "graphics/map_markers/case4_boat_horizontal.4bpp"

	.global gUnknown_0824890C
gUnknown_0824890C:
	.incbin "graphics/map_markers/case4_boat_rental_shop.4bpp"

	.global gUnknown_08248B0C
gUnknown_08248B0C:
	.incbin "graphics/map_markers/case4_lotta_suv.4bpp"

	.global gUnknown_08248C0C
gUnknown_08248C0C:
	.incbin "graphics/map_markers/case4_boat_vertical.4bpp"

@ ; BEGIN BACKGROUNDS

	.global gGfx_BG000
gGfx_BG000:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/fey_co_murder_night.8bpp.striped"

	.global gGfx_BG001
gGfx_BG001:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/office_day.8bpp.striped"

	.global gGfx_BG002
gGfx_BG002:
	.incbin "graphics/striped_images/backgrounds/court/defendant_lobby.8bpp.striped"

	.global gGfx_BG003
gGfx_BG003:
	.incbin "graphics/striped_images/backgrounds/court/defense_bench.4bpp.striped"

	.global gGfx_BG004
gGfx_BG004:
	.incbin "graphics/striped_images/backgrounds/court/prosecution_bench.4bpp.striped"

	.global gGfx_BG005
gGfx_BG005:
	.incbin "graphics/striped_images/backgrounds/court/witness_stand.4bpp.striped"

	.global gGfx_BG006
gGfx_BG006:
	.incbin "graphics/striped_images/backgrounds/court/court_room.8bpp.striped"

	.global gGfx_BG007
gGfx_BG007:
	.incbin "graphics/striped_images/backgrounds/court/co_counsel.8bpp.striped"

	.global gGfx_BG008
gGfx_BG008:
	.incbin "graphics/striped_images/backgrounds/court/judge_seat.8bpp.striped"

	.global gGfx_BG009
gGfx_BG009:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/office_entry_night.8bpp.striped"

	.global gGfx_BG010
gGfx_BG010:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/maya_seeing_dead_mia.8bpp.striped"

	.global gGfx_BG011
gGfx_BG011:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_path.8bpp.striped"

	.global gGfx_BG012
gGfx_BG012:
	.incbin "graphics/striped_images/backgrounds/global_studios/staff_area.8bpp.striped"

	.global gGfx_BG013
gGfx_BG013:
	.incbin "graphics/striped_images/backgrounds/witness_account/mia_dodging_right.4bpp.striped"

	.global gGfx_BG014
gGfx_BG014:
	.incbin "graphics/striped_images/backgrounds/witness_account/mia_dodging_left.4bpp.striped"

	.global gGfx_BG015
gGfx_BG015:
	.incbin "graphics/striped_images/backgrounds/evidence/fey_co_diagram.4bpp.striped"

	.global gGfx_BG016
gGfx_BG016:
	.incbin "graphics/striped_images/backgrounds/witness_account/april_getting_room_service.4bpp.striped"

	.global gGfx_BG017
gGfx_BG017:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/mia_dead_on_ground.8bpp.striped"

	.global gGfx_BG018
gGfx_BG018:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/phoenix_maya_mia.8bpp.striped"

	.global gGfx_BG019
gGfx_BG019:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_2_trailer.8bpp.striped"

	.global gGfx_BG020
gGfx_BG020:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/april_calling_police.8bpp.striped"

	.global gGfx_BG021
gGfx_BG021:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/redd_hitting_mia.8bpp.striped"

	.global gGfx_BG022
gGfx_BG022:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/mia_being_attacked.8bpp.striped"

	.global gGfx_BG023
gGfx_BG023:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/redd_holding_thinker.4bpp.striped"

	.global gGfx_BG024
gGfx_BG024:
	.incbin "graphics/striped_images/backgrounds/global_studios/will_power_dressing_room.8bpp.striped"

	.global gGfx_BG025
gGfx_BG025:
	.incbin "graphics/striped_images/backgrounds/global_studios/front_gate.8bpp.striped"

	.global gGfx_BG026
gGfx_BG026:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_1.8bpp.striped"

	.global gGfx_BG027
gGfx_BG027:
	.incbin "graphics/striped_images/backgrounds/gavel/2.8bpp.striped"

	.global gGfx_BG028
gGfx_BG028:
	.incbin "graphics/striped_images/backgrounds/gavel/3.8bpp.striped"

	.global gGfx_BG029
gGfx_BG029:
	.incbin "graphics/striped_images/backgrounds/evidence/fey_co_diagram_light.4bpp.striped"

	.global gGfx_BG030
gGfx_BG030:
	.incbin "graphics/striped_images/backgrounds/detention_center.8bpp.striped"

	.global gGfx_BG031
gGfx_BG031:
	.incbin "graphics/striped_images/backgrounds/bluecorp_ceo_office.8bpp.striped"

	.global gGfx_BG032
gGfx_BG032:
	.incbin "graphics/striped_images/backgrounds/gatewater_hotelroom.8bpp.striped"

	.global gGfx_BG033
gGfx_BG033:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_holding_thinker.8bpp.striped"

	.global gGfx_BG034
gGfx_BG034:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/cindy_dead_on_floor.8bpp.striped"

	.global gGfx_BG035
gGfx_BG035:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/cindy_and_frank.8bpp.striped"

	.global gGfx_BG036
gGfx_BG036:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_closeup_1.8bpp.striped"

	.global gGfx_BG037
gGfx_BG037:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_closeup_2.8bpp.striped"

	.global gGfx_BG038
gGfx_BG038:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_closeup_3.8bpp.striped"

	.global gGfx_BG039
gGfx_BG039:
	.incbin "graphics/striped_images/backgrounds/grossberg_law_offices/grossberg_law_offices_painting.8bpp.striped"

	.global gGfx_BG040
gGfx_BG040:
	.incbin "graphics/striped_images/backgrounds/grossberg_law_offices/grossberg_law_offices_no_painting.8bpp.striped"

	.global gGfx_BG041
gGfx_BG041:
	.incbin "graphics/striped_images/backgrounds/witness_account/cindy_finding_frank.4bpp.striped"

	.global gGfx_BG042
gGfx_BG042:
	.incbin "graphics/striped_images/backgrounds/witness_account/frank_witnessing_larry.4bpp.striped"

	.global gGfx_BG043
gGfx_BG043:
	.incbin "graphics/striped_images/backgrounds/witness_account/frank_finding_cindy.4bpp.striped"

	.global gGfx_BG044
gGfx_BG044:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_2.8bpp.striped"

	.global gGfx_BG045
gGfx_BG045:
	.incbin "graphics/striped_images/backgrounds/evidence/maya_phone_call_page_1.4bpp.striped"
	.global gGfx_BG046
gGfx_BG046:
	.incbin "graphics/striped_images/backgrounds/evidence/maya_phone_call_page_2.4bpp.striped"

	.global gGfx_BG047
gGfx_BG047:
	.incbin "graphics/striped_images/backgrounds/gavel/1.8bpp.striped"

	.global gGfx_BG048
gGfx_BG048:
	.incbin "graphics/striped_images/backgrounds/evidence/maya_phone_call_page_3.4bpp.striped"

	.global gGfx_BG049
gGfx_BG049:
	.incbin "graphics/striped_images/backgrounds/witness_account/jack_at_gate_photo.4bpp.striped"

	.global gGfx_BG050
gGfx_BG050:
	.incbin "graphics/striped_images/backgrounds/witness_account/jack_dead_at_studio_1.4bpp.striped"

	.global gGfx_BG051
gGfx_BG051:
	.incbin "graphics/striped_images/backgrounds/witness_account/jack_wearing_samurai_suit.4bpp.striped"

	.global gGfx_BG052
gGfx_BG052:
	.incbin "graphics/striped_images/backgrounds/witness_account/vasquez_pushing_jack_aftermath.4bpp.striped"

	.global gGfx_BG053
gGfx_BG053:
	.incbin "graphics/striped_images/backgrounds/witness_account/staff_eating_lunch.4bpp.striped"

	.global gGfx_BG054
gGfx_BG054:
	.incbin "graphics/striped_images/backgrounds/witness_account/studio_2_jack_and_vasquez.4bpp.striped"

	.global gGfx_BG055
gGfx_BG055:
	.incbin "graphics/striped_images/backgrounds/witness_account/cody_witnessing_samurai.4bpp.striped"

	.global gGfx_BG056
gGfx_BG056:
	.incbin "graphics/striped_images/backgrounds/witness_account/samurai_at_studio_2_photo.4bpp.striped"

	.global gGfx_BG057
gGfx_BG057:
	.incbin "graphics/striped_images/backgrounds/witness_account/5_year_old_photo.4bpp.striped"

	.global gGfx_BG058
gGfx_BG058:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_2_trailer_mafia.8bpp.striped"

	.global gGfx_BG059
gGfx_BG059:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case3/pink_princess.8bpp.striped"

	.global gGfx_BG060
gGfx_BG060:
	.incbin "graphics/striped_images/backgrounds/global_studios/monkey_on_studio_2_path.8bpp.striped"

	.global gGfx_BG061
gGfx_BG061:
	.incbin "graphics/striped_images/backgrounds/evidence/global_studio_diagram.4bpp.striped"

	.global gGfx_BG062
gGfx_BG062:
	.incbin "graphics/striped_images/backgrounds/witness_account/will_power_injury.4bpp.striped"

	.global gGfx_BG063
gGfx_BG063:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case3/steel_samurai.8bpp.striped"
	
@ ; END BACKGROUNDS

	.global gGfx_BG064
gGfx_BG064:
	.incbin "graphics/bustup_phoenix.gbapal"


	.global gUnknown_08360854
gUnknown_08360854:
	.incbin "graphics/bustup_phoenix.bin"


	.global gUnknown_08360D04
gUnknown_08360D04:
	.incbin "graphics/bustup_phoenix.4bpp"


	.global gGfx_BG065
gGfx_BG065:
	.incbin "graphics/bustup_edgeworth.gbapal"


	.global gUnknown_08362544
gUnknown_08362544:
	.incbin "graphics/bustup_edgeworth.bin"


	.global gUnknown_083629F4
gUnknown_083629F4:
	.incbin "graphics/bustup_edgeworth.4bpp"

@ ; BEGIN BACKGROUNDS


	.global gGfx_BG066
gGfx_BG066:
	.incbin "graphics/striped_images/speedlines.4bpp.striped"


	.global gGfx_BG067
gGfx_BG067:
	.incbin "graphics/striped_images/courtroom_background.4bpp.striped"


	.global gGfx_BG068
gGfx_BG068:
	.incbin "graphics/striped_images/capcom_screen.4bpp.striped"

@ ; this entry here spills over into an explicitly referenced one (the next), why though...
@	.global gGfx_BG069

@ ; it looks like this reference skips the "table" of this striped image and directly goes to the data?
@	.global gUnknown_083698B8

	.global gGfx_BG069
gGfx_BG069:
	.incbin "graphics/striped_images/steel_samurai_night.4bpp.striped"


	.global gGfx_BG070
gGfx_BG070:
	.incbin "graphics/striped_images/gourd_lake_entrance.8bpp.striped"


	.global gGfx_BG071
gGfx_BG071:
	.incbin "graphics/striped_images/gourd_lake_park.8bpp.striped"


	.global gGfx_BG072
gGfx_BG072:
	.incbin "graphics/striped_images/gourd_lake_park_no_balloon.8bpp.striped"


	.global gGfx_BG073
gGfx_BG073:
	.incbin "graphics/striped_images/gourd_lake_beach.8bpp.striped"


	.global gUnknown_083899C4
gUnknown_083899C4:
	.incbin "graphics/striped_images/case3_intro_grass.4bpp.striped"


	.global gUnknown_0838A6F4
gUnknown_0838A6F4:
	.incbin "graphics/striped_images/case3_intro_trees.4bpp.striped"


	.global gGfx_BG076
gGfx_BG076:
	.incbin "graphics/striped_images/case3_intro_steel_samurai_posing.4bpp.striped"


	.global gGfx_BG077
gGfx_BG077:
	.incbin "graphics/striped_images/gourd_lake_boat_rental.8bpp.striped"


	.global gGfx_BG078
gGfx_BG078:
	.incbin "graphics/striped_images/gourd_lake_boat_rental_house.8bpp.striped"


	.global gGfx_BG079
gGfx_BG079:
	.incbin "graphics/striped_images/police_station_lobby.8bpp.striped"


	.global gGfx_BG080
gGfx_BG080:
	.incbin "graphics/striped_images/police_station_evidence_storage.8bpp.striped"


	.global gGfx_BG081
gGfx_BG081:
	.incbin "graphics/striped_images/case3_intro_faceoff.4bpp.striped"


	.global gGfx_BG082
gGfx_BG082:
	.incbin "graphics/striped_images/3A6934.4bpp.striped"


	.global gGfx_BG083
gGfx_BG083:
	.incbin "graphics/striped_images/3A7790.4bpp.striped"


	.global gGfx_BG084
gGfx_BG084:
	.incbin "graphics/striped_images/3A8648.4bpp.striped"


	.global gGfx_BG085
gGfx_BG085:
	.incbin "graphics/striped_images/case4_train_station.8bpp.striped"


	.global gGfx_BG086
gGfx_BG086:
	.incbin "graphics/striped_images/case4_gourd_lake_map.4bpp.striped"


	.global gGfx_BG087
gGfx_BG087:
	.incbin "graphics/striped_images/case4_lottas_photo_zoomed.4bpp.striped"


	.global gGfx_BG088
gGfx_BG088:
	.incbin "graphics/striped_images/case4_elevator_photo.4bpp.striped"


	.global gGfx_BG089
gGfx_BG089:
	.incbin "graphics/striped_images/case4_newspaper.8bpp.striped"


	.global gGfx_BG090
gGfx_BG090:
	.incbin "graphics/striped_images/case4_balloon_launching.4bpp.striped"


	.global gGfx_BG091
gGfx_BG091:
	.incbin "graphics/striped_images/case4_balloon_landing_in_lake.4bpp.striped"


	.global gGfx_BG092
gGfx_BG092:
	.incbin "graphics/striped_images/case4_larry_searching_lake.4bpp.striped"


	.global gGfx_BG093
gGfx_BG093:
	.incbin "graphics/striped_images/case4_class_trial.8bpp.striped"


	.global gGfx_BG094
gGfx_BG094:
	.incbin "graphics/striped_images/case4_lottas_photo_far.4bpp.striped"


	.global gGfx_BG095
gGfx_BG095:
	.incbin "graphics/striped_images/case4_class_trial_phoenix.8bpp.striped"


	.global gGfx_BG096
gGfx_BG096:
	.incbin "graphics/striped_images/case4_class_trial_edgeworth.8bpp.striped"


	.global gGfx_BG097
gGfx_BG097:
	.incbin "graphics/striped_images/case4_class_trial_larry.8bpp.striped"


	.global gGfx_BG098
gGfx_BG098:
	.incbin "graphics/striped_images/case4_yanni_threatening.4bpp.striped"


	.global gGfx_BG099
gGfx_BG099:
	.incbin "graphics/striped_images/case4_shoot_water_from_boat.4bpp.striped"


	.global gGfx_BG100
gGfx_BG100:
	.incbin "graphics/striped_images/case4_elevator_suffocating.4bpp.striped"


	.global gGfx_BG101
gGfx_BG101:
	.incbin "graphics/striped_images/case4_elevator_edgeworth_throw.4bpp.striped"


	.global gGfx_BG102
gGfx_BG102:
	.incbin "graphics/striped_images/case4_elevator_vonkarma_shot.4bpp.striped"


	.global gGfx_BG103
gGfx_BG103:
	.incbin "graphics/striped_images/case4_elevator_vonkarma_in_door.4bpp.striped"


	.global gGfx_BG104
gGfx_BG104:
	.incbin "graphics/striped_images/case4_train_station_maya_leaving.8bpp.striped"


	.global gGfx_BG105
gGfx_BG105:
	.incbin "graphics/striped_images/trial_won.8bpp.striped"


	.global gGfx_BG106
gGfx_BG106:
	.incbin "graphics/striped_images/case4_intro_lake_one_in_boat.4bpp.striped"


	.global gGfx_BG107
gGfx_BG107:
	.incbin "graphics/striped_images/case4_intro_threatened_to_shoot.4bpp.striped"


	.global gGfx_BG108
gGfx_BG108:
	.incbin "graphics/striped_images/case4_intro_edgeworth_picks_gun_up.8bpp.striped"


	.global gGfx_BG109
gGfx_BG109:
	.incbin "graphics/striped_images/capcom_screen_bw.4bpp.striped"


	.global gGfx_BG110
gGfx_BG110:
	.incbin "graphics/striped_images/title_screen_demo.8bpp.striped"


	.global gGfx_BG111
gGfx_BG111:
	.incbin "graphics/striped_images/coming_soon_screen.8bpp.striped"

@ ; END

	.global gUnknown_08427608
gUnknown_08427608:
	.incbin "graphics/speedlines_first_and_last_columns.4bpp"
	
@ BEGIN COURT SCROLLS

@ scroll left to center

	.global gGfxPalCourtScroll01
gGfxPalCourtScroll01:
	.incbin "graphics/court_scrolls/court_scroll01.gbapal"


	.global gGfx4bppCourtScroll01
gGfx4bppCourtScroll01:
	.incbin "graphics/court_scrolls/court_scroll01.4bpp"


	.global gGfxPalCourtScroll02
gGfxPalCourtScroll02:
	.incbin "graphics/court_scrolls/court_scroll02.gbapal"


	.global gGfx4bppCourtScroll02
gGfx4bppCourtScroll02:
	.incbin "graphics/court_scrolls/court_scroll02.4bpp"


	.global gGfxPalCourtScroll03
gGfxPalCourtScroll03:
	.incbin "graphics/court_scrolls/court_scroll03.gbapal"


	.global gGfx4bppCourtScroll03
gGfx4bppCourtScroll03:
	.incbin "graphics/court_scrolls/court_scroll03.4bpp"


	.global gGfxPalCourtScroll04
gGfxPalCourtScroll04:
	.incbin "graphics/court_scrolls/court_scroll04.gbapal"


	.global gGfx4bppCourtScroll04
gGfx4bppCourtScroll04:
	.incbin "graphics/court_scrolls/court_scroll04.4bpp"


	.global gGfxPalCourtScroll05
gGfxPalCourtScroll05:
	.incbin "graphics/court_scrolls/court_scroll05.gbapal"


	.global gGfx4bppCourtScroll05
gGfx4bppCourtScroll05:
	.incbin "graphics/court_scrolls/court_scroll05.4bpp"


	.global gGfxPalCourtScroll06
gGfxPalCourtScroll06:
	.incbin "graphics/court_scrolls/court_scroll06.gbapal"


	.global gGfx4bppCourtScroll06
gGfx4bppCourtScroll06:
	.incbin "graphics/court_scrolls/court_scroll06.4bpp"


	.global gGfxPalCourtScroll07
gGfxPalCourtScroll07:
	.incbin "graphics/court_scrolls/court_scroll07.gbapal"


	.global gGfx4bppCourtScroll07
gGfx4bppCourtScroll07:
	.incbin "graphics/court_scrolls/court_scroll07.4bpp"


	.global gGfxPalCourtScroll08
gGfxPalCourtScroll08:
	.incbin "graphics/court_scrolls/court_scroll08.gbapal"


	.global gGfx4bppCourtScroll08
gGfx4bppCourtScroll08:
	.incbin "graphics/court_scrolls/court_scroll08.4bpp"


	.global gGfxPalCourtScroll09
gGfxPalCourtScroll09:
	.incbin "graphics/court_scrolls/court_scroll09.gbapal"


	.global gGfx4bppCourtScroll09
gGfx4bppCourtScroll09:
	.incbin "graphics/court_scrolls/court_scroll09.4bpp"


	.global gGfxPalCourtScroll10
gGfxPalCourtScroll10:
	.incbin "graphics/court_scrolls/court_scroll10.gbapal"


	.global gGfx4bppCourtScroll10
gGfx4bppCourtScroll10:
	.incbin "graphics/court_scrolls/court_scroll10.4bpp"


	.global gGfxPalCourtScroll11
gGfxPalCourtScroll11:
	.incbin "graphics/court_scrolls/court_scroll11.gbapal"


	.global gGfx4bppCourtScroll11
gGfx4bppCourtScroll11:
	.incbin "graphics/court_scrolls/court_scroll11.4bpp"


	.global gGfxPalCourtScroll12
gGfxPalCourtScroll12:
	.incbin "graphics/court_scrolls/court_scroll12.gbapal"


	.global gGfx4bppCourtScroll12
gGfx4bppCourtScroll12:
	.incbin "graphics/court_scrolls/court_scroll12.4bpp"


	.global gGfxPalCourtScroll13
gGfxPalCourtScroll13:
	.incbin "graphics/court_scrolls/court_scroll13.gbapal"


	.global gGfx4bppCourtScroll13
gGfx4bppCourtScroll13:
	.incbin "graphics/court_scrolls/court_scroll13.4bpp"


	.global gGfxPalCourtScroll14
gGfxPalCourtScroll14:
	.incbin "graphics/court_scrolls/court_scroll14.gbapal"


	.global gGfx4bppCourtScroll14
gGfx4bppCourtScroll14:
	.incbin "graphics/court_scrolls/court_scroll14.4bpp"


	.global gGfxPalCourtScroll15
gGfxPalCourtScroll15:
	.incbin "graphics/court_scrolls/court_scroll15.gbapal"


	.global gGfx4bppCourtScroll15
gGfx4bppCourtScroll15:
	.incbin "graphics/court_scrolls/court_scroll15.4bpp"


	.global gGfxPalCourtScroll16
gGfxPalCourtScroll16:
	.incbin "graphics/court_scrolls/court_scroll16.gbapal"


	.global gGfx4bppCourtScroll16
gGfx4bppCourtScroll16:
	.incbin "graphics/court_scrolls/court_scroll16.4bpp"

@ scroll right to left

	.global gGfxPalCourtScroll17
gGfxPalCourtScroll17:
	.incbin "graphics/court_scrolls/court_scroll17.gbapal"


	.global gGfx4bppCourtScroll17
gGfx4bppCourtScroll17:
	.incbin "graphics/court_scrolls/court_scroll17.4bpp"


	.global gGfxPalCourtScroll18
gGfxPalCourtScroll18:
	.incbin "graphics/court_scrolls/court_scroll18.gbapal"


	.global gGfx4bppCourtScroll18
gGfx4bppCourtScroll18:
	.incbin "graphics/court_scrolls/court_scroll18.4bpp"


	.global gGfxPalCourtScroll19
gGfxPalCourtScroll19:
	.incbin "graphics/court_scrolls/court_scroll19.gbapal"


	.global gGfx4bppCourtScroll19
gGfx4bppCourtScroll19:
	.incbin "graphics/court_scrolls/court_scroll19.4bpp"


	.global gGfxPalCourtScroll20
gGfxPalCourtScroll20:
	.incbin "graphics/court_scrolls/court_scroll20.gbapal"


	.global gGfx4bppCourtScroll20
gGfx4bppCourtScroll20:
	.incbin "graphics/court_scrolls/court_scroll20.4bpp"


	.global gGfxPalCourtScroll21
gGfxPalCourtScroll21:
	.incbin "graphics/court_scrolls/court_scroll21.gbapal"


	.global gGfx4bppCourtScroll21
gGfx4bppCourtScroll21:
	.incbin "graphics/court_scrolls/court_scroll21.4bpp"


	.global gGfxPalCourtScroll22
gGfxPalCourtScroll22:
	.incbin "graphics/court_scrolls/court_scroll22.gbapal"


	.global gGfx4bppCourtScroll22
gGfx4bppCourtScroll22:
	.incbin "graphics/court_scrolls/court_scroll22.4bpp"


	.global gGfxPalCourtScroll23
gGfxPalCourtScroll23:
	.incbin "graphics/court_scrolls/court_scroll23.gbapal"


	.global gGfx4bppCourtScroll23
gGfx4bppCourtScroll23:
	.incbin "graphics/court_scrolls/court_scroll23.4bpp"


	.global gGfxPalCourtScroll24
gGfxPalCourtScroll24:
	.incbin "graphics/court_scrolls/court_scroll24.gbapal"


	.global gGfx4bppCourtScroll24
gGfx4bppCourtScroll24:
	.incbin "graphics/court_scrolls/court_scroll24.4bpp"


	.global gGfxPalCourtScroll25
gGfxPalCourtScroll25:
	.incbin "graphics/court_scrolls/court_scroll25.gbapal"


	.global gGfx4bppCourtScroll25
gGfx4bppCourtScroll25:
	.incbin "graphics/court_scrolls/court_scroll25.4bpp"


	.global gGfxPalCourtScroll26
gGfxPalCourtScroll26:
	.incbin "graphics/court_scrolls/court_scroll26.gbapal"


	.global gGfx4bppCourtScroll26
gGfx4bppCourtScroll26:
	.incbin "graphics/court_scrolls/court_scroll26.4bpp"


	.global gGfxPalCourtScroll27
gGfxPalCourtScroll27:
	.incbin "graphics/court_scrolls/court_scroll27.gbapal"


	.global gGfx4bppCourtScroll27
gGfx4bppCourtScroll27:
	.incbin "graphics/court_scrolls/court_scroll27.4bpp"


	.global gGfxPalCourtScroll28
gGfxPalCourtScroll28:
	.incbin "graphics/court_scrolls/court_scroll28.gbapal"


	.global gGfx4bppCourtScroll28
gGfx4bppCourtScroll28:
	.incbin "graphics/court_scrolls/court_scroll28.4bpp"


	.global gGfxPalCourtScroll29
gGfxPalCourtScroll29:
	.incbin "graphics/court_scrolls/court_scroll29.gbapal"


	.global gGfx4bppCourtScroll29
gGfx4bppCourtScroll29:
	.incbin "graphics/court_scrolls/court_scroll29.4bpp"


	.global gGfxPalCourtScroll30
gGfxPalCourtScroll30:
	.incbin "graphics/court_scrolls/court_scroll30.gbapal"


	.global gGfx4bppCourtScroll30
gGfx4bppCourtScroll30:
	.incbin "graphics/court_scrolls/court_scroll30.4bpp"


	.global gGfxPalCourtScroll31
gGfxPalCourtScroll31:
	.incbin "graphics/court_scrolls/court_scroll31.gbapal"


	.global gGfx4bppCourtScroll31
gGfx4bppCourtScroll31:
	.incbin "graphics/court_scrolls/court_scroll31.4bpp"


	.global gGfxPalCourtScroll32
gGfxPalCourtScroll32:
	.incbin "graphics/court_scrolls/court_scroll32.gbapal"


	.global gGfx4bppCourtScroll32
gGfx4bppCourtScroll32:
	.incbin "graphics/court_scrolls/court_scroll32.4bpp"

@ scroll right to center

	.global gGfxPalCourtScroll33
gGfxPalCourtScroll33:
	.incbin "graphics/court_scrolls/court_scroll33.gbapal"


	.global gGfx4bppCourtScroll33
gGfx4bppCourtScroll33:
	.incbin "graphics/court_scrolls/court_scroll33.4bpp"


	.global gGfxPalCourtScroll34
gGfxPalCourtScroll34:
	.incbin "graphics/court_scrolls/court_scroll34.gbapal"


	.global gGfx4bppCourtScroll34
gGfx4bppCourtScroll34:
	.incbin "graphics/court_scrolls/court_scroll34.4bpp"


	.global gGfxPalCourtScroll35
gGfxPalCourtScroll35:
	.incbin "graphics/court_scrolls/court_scroll35.gbapal"


	.global gGfx4bppCourtScroll35
gGfx4bppCourtScroll35:
	.incbin "graphics/court_scrolls/court_scroll35.4bpp"


	.global gGfxPalCourtScroll36
gGfxPalCourtScroll36:
	.incbin "graphics/court_scrolls/court_scroll36.gbapal"


	.global gGfx4bppCourtScroll36
gGfx4bppCourtScroll36:
	.incbin "graphics/court_scrolls/court_scroll36.4bpp"


	.global gGfxPalCourtScroll37
gGfxPalCourtScroll37:
	.incbin "graphics/court_scrolls/court_scroll37.gbapal"


	.global gGfx4bppCourtScroll37
gGfx4bppCourtScroll37:
	.incbin "graphics/court_scrolls/court_scroll37.4bpp"


	.global gGfxPalCourtScroll38
gGfxPalCourtScroll38:
	.incbin "graphics/court_scrolls/court_scroll38.gbapal"


	.global gGfx4bppCourtScroll38
gGfx4bppCourtScroll38:
	.incbin "graphics/court_scrolls/court_scroll38.4bpp"


	.global gGfxPalCourtScroll39
gGfxPalCourtScroll39:
	.incbin "graphics/court_scrolls/court_scroll39.gbapal"


	.global gGfx4bppCourtScroll39
gGfx4bppCourtScroll39:
	.incbin "graphics/court_scrolls/court_scroll39.4bpp"


	.global gGfxPalCourtScroll40
gGfxPalCourtScroll40:
	.incbin "graphics/court_scrolls/court_scroll40.gbapal"


	.global gGfx4bppCourtScroll40
gGfx4bppCourtScroll40:
	.incbin "graphics/court_scrolls/court_scroll40.4bpp"


	.global gGfxPalCourtScroll41
gGfxPalCourtScroll41:
	.incbin "graphics/court_scrolls/court_scroll41.gbapal"


	.global gGfx4bppCourtScroll41
gGfx4bppCourtScroll41:
	.incbin "graphics/court_scrolls/court_scroll41.4bpp"


	.global gGfxPalCourtScroll42
gGfxPalCourtScroll42:
	.incbin "graphics/court_scrolls/court_scroll42.gbapal"


	.global gGfx4bppCourtScroll42
gGfx4bppCourtScroll42:
	.incbin "graphics/court_scrolls/court_scroll42.4bpp"


	.global gGfxPalCourtScroll43
gGfxPalCourtScroll43:
	.incbin "graphics/court_scrolls/court_scroll43.gbapal"


	.global gGfx4bppCourtScroll43
gGfx4bppCourtScroll43:
	.incbin "graphics/court_scrolls/court_scroll43.4bpp"


	.global gGfxPalCourtScroll44
gGfxPalCourtScroll44:
	.incbin "graphics/court_scrolls/court_scroll44.gbapal"


	.global gGfx4bppCourtScroll44
gGfx4bppCourtScroll44:
	.incbin "graphics/court_scrolls/court_scroll44.4bpp"


	.global gGfxPalCourtScroll45
gGfxPalCourtScroll45:
	.incbin "graphics/court_scrolls/court_scroll45.gbapal"


	.global gGfx4bppCourtScroll45
gGfx4bppCourtScroll45:
	.incbin "graphics/court_scrolls/court_scroll45.4bpp"


	.global gGfxPalCourtScroll46
gGfxPalCourtScroll46:
	.incbin "graphics/court_scrolls/court_scroll46.gbapal"


	.global gGfx4bppCourtScroll46
gGfx4bppCourtScroll46:
	.incbin "graphics/court_scrolls/court_scroll46.4bpp"


	.global gGfxPalCourtScroll47
gGfxPalCourtScroll47:
	.incbin "graphics/court_scrolls/court_scroll47.gbapal"


	.global gGfx4bppCourtScroll47
gGfx4bppCourtScroll47:
	.incbin "graphics/court_scrolls/court_scroll47.4bpp"


	.global gGfxPalCourtScroll48
gGfxPalCourtScroll48:
	.incbin "graphics/court_scrolls/court_scroll48.gbapal"


	.global gGfx4bppCourtScroll48
gGfx4bppCourtScroll48:
	.incbin "graphics/court_scrolls/court_scroll48.4bpp"

@ END COURT SCROLLS

@ BEGIN CHARACTER ANIMATION GRAPHICS PACKAGES AND SEQUENCES

	.global gGfxPixAnimationChar01
gGfxPixAnimationChar01:
	.incbin "graphics/animations/characters/animation01.pix"


	.global gGfxSeqAnimationChar01
gGfxSeqAnimationChar01:
	.incbin "graphics/animations/characters/animation01.seq"


	.global gGfxPixAnimationChar02
gGfxPixAnimationChar02:
	.incbin "graphics/animations/characters/animation02.pix"


	.global gGfxSeqAnimationChar02
gGfxSeqAnimationChar02:
	.incbin "graphics/animations/characters/animation02.seq"


	.global gGfxPixAnimationChar03
gGfxPixAnimationChar03:
	.incbin "graphics/animations/characters/animation03.pix"


	.global gGfxSeqAnimationChar03
gGfxSeqAnimationChar03:
	.incbin "graphics/animations/characters/animation03.seq"


	.global gGfxPixAnimationChar04
gGfxPixAnimationChar04:
	.incbin "graphics/animations/characters/animation04.pix"


	.global gGfxSeqAnimationChar04
gGfxSeqAnimationChar04:
	.incbin "graphics/animations/characters/animation04.seq"


	.global gGfxPixAnimationChar05
gGfxPixAnimationChar05:
	.incbin "graphics/animations/characters/animation05.pix"


	.global gGfxSeqAnimationChar05
gGfxSeqAnimationChar05:
	.incbin "graphics/animations/characters/animation05.seq"


	.global gGfxPixAnimationChar06
gGfxPixAnimationChar06:
	.incbin "graphics/animations/characters/animation06.pix"


	.global gGfxSeqAnimationChar06
gGfxSeqAnimationChar06:
	.incbin "graphics/animations/characters/animation06.seq"


	.global gGfxPixAnimationChar07
gGfxPixAnimationChar07:
	.incbin "graphics/animations/characters/animation07.pix"


	.global gGfxSeqAnimationChar07
gGfxSeqAnimationChar07:
	.incbin "graphics/animations/characters/animation07.seq"


	.global gGfxPixAnimationChar08
gGfxPixAnimationChar08:
	.incbin "graphics/animations/characters/animation08.pix"


	.global gGfxSeqAnimationChar08
gGfxSeqAnimationChar08:
	.incbin "graphics/animations/characters/animation08.seq"


	.global gGfxPixAnimationChar09
gGfxPixAnimationChar09:
	.incbin "graphics/animations/characters/animation09.pix"


	.global gGfxSeqAnimationChar09
gGfxSeqAnimationChar09:
	.incbin "graphics/animations/characters/animation09.seq"


	.global gGfxPixAnimationChar10
gGfxPixAnimationChar10:
	.incbin "graphics/animations/characters/animation10.pix"


	.global gGfxSeqAnimationChar10
gGfxSeqAnimationChar10:
	.incbin "graphics/animations/characters/animation10.seq"


	.global gGfxPixAnimationChar11
gGfxPixAnimationChar11:
	.incbin "graphics/animations/characters/animation11.pix"


	.global gGfxSeqAnimationChar11
gGfxSeqAnimationChar11:
	.incbin "graphics/animations/characters/animation11.seq"


	.global gGfxPixAnimationChar12
gGfxPixAnimationChar12:
	.incbin "graphics/animations/characters/animation12.pix"


	.global gGfxSeqAnimationChar12
gGfxSeqAnimationChar12:
	.incbin "graphics/animations/characters/animation12.seq"


	.global gGfxPixAnimationChar13
gGfxPixAnimationChar13:
	.incbin "graphics/animations/characters/animation13.pix"


	.global gGfxSeqAnimationChar13
gGfxSeqAnimationChar13:
	.incbin "graphics/animations/characters/animation13.seq"


	.global gGfxPixAnimationChar14
gGfxPixAnimationChar14:
	.incbin "graphics/animations/characters/animation14.pix"


	.global gGfxSeqAnimationChar14
gGfxSeqAnimationChar14:
	.incbin "graphics/animations/characters/animation14.seq"


	.global gGfxPixAnimationChar15
gGfxPixAnimationChar15:
	.incbin "graphics/animations/characters/animation15.pix"


	.global gGfxSeqAnimationChar15
gGfxSeqAnimationChar15:
	.incbin "graphics/animations/characters/animation15.seq"


	.global gGfxPixAnimationChar16
gGfxPixAnimationChar16:
	.incbin "graphics/animations/characters/animation16.pix"


	.global gGfxSeqAnimationChar16
gGfxSeqAnimationChar16:
	.incbin "graphics/animations/characters/animation16.seq"


	.global gGfxPixAnimationChar17
gGfxPixAnimationChar17:
	.incbin "graphics/animations/characters/animation17.pix"


	.global gGfxSeqAnimationChar17
gGfxSeqAnimationChar17:
	.incbin "graphics/animations/characters/animation17.seq"


	.global gGfxPixAnimationChar18
gGfxPixAnimationChar18:
	.incbin "graphics/animations/characters/animation18.pix"


	.global gGfxSeqAnimationChar18
gGfxSeqAnimationChar18:
	.incbin "graphics/animations/characters/animation18.seq"


	.global gGfxPixAnimationChar19
gGfxPixAnimationChar19:
	.incbin "graphics/animations/characters/animation19.pix"


	.global gGfxSeqAnimationChar19
gGfxSeqAnimationChar19:
	.incbin "graphics/animations/characters/animation19.seq"


	.global gGfxPixAnimationChar20
gGfxPixAnimationChar20:
	.incbin "graphics/animations/characters/animation20.pix"


	.global gGfxSeqAnimationChar20
gGfxSeqAnimationChar20:
	.incbin "graphics/animations/characters/animation20.seq"


	.global gGfxPixAnimationChar21
gGfxPixAnimationChar21:
	.incbin "graphics/animations/characters/animation21.pix"


	.global gGfxSeqAnimationChar21
gGfxSeqAnimationChar21:
	.incbin "graphics/animations/characters/animation21.seq"


	.global gGfxPixAnimationChar22
gGfxPixAnimationChar22:
	.incbin "graphics/animations/characters/animation22.pix"


	.global gGfxSeqAnimationChar22
gGfxSeqAnimationChar22:
	.incbin "graphics/animations/characters/animation22.seq"


	.global gGfxPixAnimationChar23
gGfxPixAnimationChar23:
	.incbin "graphics/animations/characters/animation23.pix"


	.global gGfxSeqAnimationChar23
gGfxSeqAnimationChar23:
	.incbin "graphics/animations/characters/animation23.seq"


	.global gGfxPixAnimationChar24
gGfxPixAnimationChar24:
	.incbin "graphics/animations/characters/animation24.pix"


	.global gGfxSeqAnimationChar24
gGfxSeqAnimationChar24:
	.incbin "graphics/animations/characters/animation24.seq"


	.global gGfxPixAnimationChar25
gGfxPixAnimationChar25:
	.incbin "graphics/animations/characters/animation25.pix"


	.global gGfxSeqAnimationChar25
gGfxSeqAnimationChar25:
	.incbin "graphics/animations/characters/animation25.seq"


	.global gGfxPixAnimationChar26
gGfxPixAnimationChar26:
	.incbin "graphics/animations/characters/animation26.pix"


	.global gGfxSeqAnimationChar26
gGfxSeqAnimationChar26:
	.incbin "graphics/animations/characters/animation26.seq"

@ END CHARACTER ANIMATION GRAPHICS PACKAGES AND SEQUENCES

@ BEGIN ANIMATION GRAPHICS PACKAGES AND SEQUENCES

	.global gGfxPixAnimationTileset01
gGfxPixAnimationTileset01:
	.incbin "graphics/animations/tileset01.pix"


	.global gGfxSeqAnimation01
gGfxSeqAnimation01:
	.incbin "graphics/animations/animation01.seq"


	.global gGfxSeqAnimation02
gGfxSeqAnimation02:
	.incbin "graphics/animations/animation02.seq"


	.global gGfxSeqAnimation03
gGfxSeqAnimation03:
	.incbin "graphics/animations/animation03.seq"


	.global gGfxSeqAnimation04
gGfxSeqAnimation04:
	.incbin "graphics/animations/animation04.seq"


	.global gGfxSeqAnimation05
gGfxSeqAnimation05:
	.incbin "graphics/animations/animation05.seq"


	.global gGfxSeqAnimation06
gGfxSeqAnimation06:
	.incbin "graphics/animations/animation06.seq"


	.global gGfxPixAnimationTileset02
gGfxPixAnimationTileset02:
	.incbin "graphics/animations/tileset02.pix"


	.global gGfxSeqAnimation07
gGfxSeqAnimation07:
	.incbin "graphics/animations/animation07.seq"


	.global gGfxSeqAnimation08
gGfxSeqAnimation08:
	.incbin "graphics/animations/animation08.seq"


	.global gGfxSeqAnimation09
gGfxSeqAnimation09:
	.incbin "graphics/animations/animation09.seq"


	.global gGfxSeqAnimation10
gGfxSeqAnimation10:
	.incbin "graphics/animations/animation10.seq"


	.global gGfxSeqAnimation11
gGfxSeqAnimation11:
	.incbin "graphics/animations/animation11.seq"


	.global gGfxSeqAnimation12
gGfxSeqAnimation12:
	.incbin "graphics/animations/animation12.seq"


	.global gGfxSeqAnimation13
gGfxSeqAnimation13:
	.incbin "graphics/animations/animation13.seq"


	.global gGfxSeqAnimation14
gGfxSeqAnimation14:
	.incbin "graphics/animations/animation14.seq"


	.global gGfxSeqAnimation15
gGfxSeqAnimation15:
	.incbin "graphics/animations/animation15.seq"


	.global gGfxSeqAnimation16
gGfxSeqAnimation16:
	.incbin "graphics/animations/animation16.seq"


	.global gGfxSeqAnimation17
gGfxSeqAnimation17:
	.incbin "graphics/animations/animation17.seq"


	.global gGfxSeqAnimation18
gGfxSeqAnimation18:
	.incbin "graphics/animations/animation18.seq"


	.global gGfxSeqAnimation19
gGfxSeqAnimation19:
	.incbin "graphics/animations/animation19.seq"


	.global gGfxSeqAnimation20
gGfxSeqAnimation20:
	.incbin "graphics/animations/animation20.seq"


	.global gGfxSeqAnimation21
gGfxSeqAnimation21:
	.incbin "graphics/animations/animation21.seq"


	.global gGfxSeqAnimation22
gGfxSeqAnimation22:
	.incbin "graphics/animations/animation22.seq"


	.global gGfxSeqAnimation23
gGfxSeqAnimation23:
	.incbin "graphics/animations/animation23.seq"


	.global gGfxSeqAnimation24
gGfxSeqAnimation24:
	.incbin "graphics/animations/animation24.seq"


	.global gGfxSeqAnimation25
gGfxSeqAnimation25:
	.incbin "graphics/animations/animation25.seq"


	.global gGfxSeqAnimation26
gGfxSeqAnimation26:
	.incbin "graphics/animations/animation26.seq"


	.global gGfxSeqAnimation27
gGfxSeqAnimation27:
	.incbin "graphics/animations/animation27.seq"


	.global gGfxSeqAnimation28
gGfxSeqAnimation28:
	.incbin "graphics/animations/animation28.seq"


	.global gGfxSeqAnimation29
gGfxSeqAnimation29:
	.incbin "graphics/animations/animation29.seq"


	.global gGfxSeqAnimation30
gGfxSeqAnimation30:
	.incbin "graphics/animations/animation30.seq"


	.global gGfxSeqAnimation31
gGfxSeqAnimation31:
	.incbin "graphics/animations/animation31.seq"


	.global gGfxSeqAnimation32
gGfxSeqAnimation32:
	.incbin "graphics/animations/animation32.seq"


	.global gGfxSeqAnimation33
gGfxSeqAnimation33:
	.incbin "graphics/animations/animation33.seq"


	.global gGfxSeqAnimation34
gGfxSeqAnimation34:
	.incbin "graphics/animations/animation34.seq"


	.global gGfxSeqAnimation35
gGfxSeqAnimation35:
	.incbin "graphics/animations/animation35.seq"


	.global gGfxSeqAnimation36
gGfxSeqAnimation36:
	.incbin "graphics/animations/animation36.seq"


	.global gGfxSeqAnimation37
gGfxSeqAnimation37:
	.incbin "graphics/animations/animation37.seq"


	.global gGfxSeqAnimation38
gGfxSeqAnimation38:
	.incbin "graphics/animations/animation38.seq"


	.global gGfxSeqAnimation39
gGfxSeqAnimation39:
	.incbin "graphics/animations/animation39.seq"


	.global gGfxSeqAnimation40
gGfxSeqAnimation40:
	.incbin "graphics/animations/animation40.seq"


	.global gGfxSeqAnimation41
gGfxSeqAnimation41:
	.incbin "graphics/animations/animation41.seq"


	.global gGfxSeqAnimation42
gGfxSeqAnimation42:
	.incbin "graphics/animations/animation42.seq"


	.global gGfxSeqAnimation43
gGfxSeqAnimation43:
	.incbin "graphics/animations/animation43.seq"


	.global gGfxSeqAnimation44
gGfxSeqAnimation44:
	.incbin "graphics/animations/animation44.seq"


	.global gGfxSeqAnimation45
gGfxSeqAnimation45:
	.incbin "graphics/animations/animation45.seq"


	.global gGfxSeqAnimation46
gGfxSeqAnimation46:
	.incbin "graphics/animations/animation46.seq"


	.global gGfxSeqAnimation47
gGfxSeqAnimation47:
	.incbin "graphics/animations/animation47.seq"


	.global gGfxSeqAnimation48
gGfxSeqAnimation48:
	.incbin "graphics/animations/animation48.seq"


	.global gGfxSeqAnimation49
gGfxSeqAnimation49:
	.incbin "graphics/animations/animation49.seq"


	.global gGfxSeqAnimation50
gGfxSeqAnimation50:
	.incbin "graphics/animations/animation50.seq"


	.global gGfxSeqAnimation51
gGfxSeqAnimation51:
	.incbin "graphics/animations/animation51.seq"


	.global gGfxSeqAnimation52
gGfxSeqAnimation52:
	.incbin "graphics/animations/animation52.seq"


	.global gGfxSeqAnimation53
gGfxSeqAnimation53:
	.incbin "graphics/animations/animation53.seq"


	.global gGfxSeqAnimation54
gGfxSeqAnimation54:
	.incbin "graphics/animations/animation54.seq"

@ END ANIMATION GRAPHICS PACKAGES AND SEQUENCES
