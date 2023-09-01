	.section gfx_data, "aw", %progbits
	.include "asm/macros.inc"

	.global gPalTitleScreen
gPalTitleScreen:
	.incbin "graphics/title_screen.gbapal"

	.global gGfx8lzTitleScreen
gGfx8lzTitleScreen:
	.incbin "graphics/title_screen.8bpp.lz"

	.global gPalTitleScreenDemo
gPalTitleScreenDemo:
	.incbin "graphics/title_screen_demo.gbapal"

	.global gGfx8lzTitleScreenDemo
gGfx8lzTitleScreenDemo:
	.incbin "graphics/title_screen_demo.8bpp.lz"

	.global gUnusedAsciiCharSet
gUnusedAsciiCharSet:
	.incbin "graphics/unused_ascii_charset.4bpp"

	.global gPalEvidenceProfileDesc
gPalEvidenceProfileDesc:
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

	.global gGfx4bppTrialLife
gGfx4bppTrialLife:
	.incbin "graphics/ui/trial/exclamation_point.4bpp"

	.global gGfx4bppUnusedTestimonyCharacters
gGfx4bppUnusedTestimonyCharacters:
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

	.global gGfxTrialPressPresentButtons
gGfxTrialPressPresentButtons:
	.incbin "graphics/ui/trial/press_present_buttons.4bpp"

	.global gGfxCourtRecordPresentBackText
gGfxCourtRecordPresentBackText:
	.incbin "graphics/ui/court_record/present_back_text.4bpp"

	.global gGfxCourtRecordProfilesText
gGfxCourtRecordProfilesText:
	.incbin "graphics/ui/court_record/profiles_text.4bpp"

	.global gGfxCourtRecordEvidenceText
gGfxCourtRecordEvidenceText:
	.incbin "graphics/ui/court_record/evidence_text.4bpp"

	.global gGfxInvestigationExamineCursor
gGfxInvestigationExamineCursor:
	.incbin "graphics/ui/investigation/examine_cursor.4bpp"

	.global gGfxInvestigationCheckmark
gGfxInvestigationCheckmark:
	.incbin "graphics/ui/investigation/checkmark.4bpp"

	.global gGfxTrialGameOverDoors
gGfxTrialGameOverDoors:
	.incbin "graphics/ui/trial/game_over_doors.4bpp"

	.global gGfxTrialNotGuilty1
gGfxTrialNotGuilty1:
	.incbin "graphics/ui/trial/not_guilty1.4bpp"

	.global gGfxTrialGuilty1
gGfxTrialGuilty1:
	.incbin "graphics/ui/trial/guilty1.4bpp"

	.global gGfxTrialGuiltyNotGuilty2
gGfxTrialGuiltyNotGuilty2:
	.incbin "graphics/ui/trial/guilty_not_guilty2.4bpp"

	.global gGfxTrialGameOverText
gGfxTrialGameOverText:
	.incbin "graphics/ui/trial/game_over_text.4bpp"

	.global gGfxNewGameContinue
gGfxNewGameContinue:
	.incbin "graphics/ui/new_game_continue.4bpp"

	.global gGfxTrialConfetti
gGfxTrialConfetti:
	.incbin "graphics/ui/trial/confetti.4bpp"
	.incbin "graphics/unk_1940C0.gbapal"

	.global gPalCrossExaminationUI
gPalCrossExaminationUI:
	.incbin "graphics/ui/cross_examination_ui.gbapal"
	.incbin "graphics/unk_194100.gbapal"

	.global gPalActionButtons
gPalActionButtons:
	.incbin "graphics/ui/investigation/action_buttons_0.gbapal"
	.incbin "graphics/ui/investigation/action_buttons_1.gbapal"

	.global gPalCourtRecordControlsBlurb
gPalCourtRecordControlsBlurb:
	.incbin "graphics/ui/court_record/controls_blurb.gbapal"

	.global gPalInvestigationScrollPrompt
gPalInvestigationScrollPrompt:
	.incbin "graphics/ui/investigation/scroll_prompt.gbapal"

	.global gPalTrialTestimonyTextTiles
gPalTrialTestimonyTextTiles:
	.incbin "graphics/ui/trial/testimony_text_tiles.gbapal"

	.global gPalTrialPressPresentButtons
gPalTrialPressPresentButtons:
	.incbin "graphics/ui/trial/press_present_buttons.gbapal"

	.global gPalInvestigationExamineCursors
gPalInvestigationExamineCursors:
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

	.global gPalInvestigationCheckmark
gPalInvestigationCheckmark:
	.incbin "graphics/ui/investigation/checkmark.gbapal"

	.global gPalTrialGameOverDoors
gPalTrialGameOverDoors:
	.incbin "graphics/ui/trial/game_over_doors.gbapal"

	.global gPalTrialGuilty
gPalTrialGuilty:
	.incbin "graphics/ui/trial/guilty.gbapal"

	.global gPalTrialNotGuilty
gPalTrialNotGuilty:
	.incbin "graphics/ui/trial/not_guilty.gbapal"

	.global gPalTrialGameOverText
gPalTrialGameOverText:
	.incbin "graphics/ui/trial/game_over_text.gbapal"

	.global gPalNewGameContinue
gPalNewGameContinue:
	.incbin "graphics/ui/new_game_continue_0.gbapal"
	.incbin "graphics/ui/new_game_continue_1.gbapal"
	.incbin "graphics/ui/new_game_continue_2.gbapal"
	.incbin "graphics/ui/new_game_continue_3.gbapal"
	.incbin "graphics/ui/new_game_continue_4.gbapal"
	.incbin "graphics/ui/new_game_continue_5.gbapal"

	.global gPalConfetti
gPalConfetti:
	.incbin "graphics/ui/trial/confetti_0.gbapal"
	.incbin "graphics/ui/trial/confetti_1.gbapal"
	.incbin "graphics/ui/trial/confetti_2.gbapal"
	.incbin "graphics/ui/trial/confetti_3.gbapal"

	.global gGfx4lzEpisodeSelectOptions
gGfx4lzEpisodeSelectOptions:
	.incbin "graphics/episode_select_options.4bpp.lz"

	.global gGfxFromSaveOrBeginning
gGfxFromSaveOrBeginning:
	.incbin "graphics/from_save_or_beginning_options.4bpp"

	.global gGfxSaveYesOrNo
gGfxSaveYesOrNo:
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

	.global gGfxEvidenceProfilePictures
gGfxEvidenceProfilePictures:

	.global gPalEvidenceEmptyPlate
gPalEvidenceEmptyPlate:
	.incbin "graphics/evidence_profile_pictures/evidence/empty_plate.gbapal"

	.global gGfxEvidenceEmptyPlate
gGfxEvidenceEmptyPlate:
	.incbin "graphics/evidence_profile_pictures/evidence/empty_plate.4bpp"

	.global gPalEvidenceLottasCamera
gPalEvidenceLottasCamera:
	.incbin "graphics/evidence_profile_pictures/evidence/lottas_camera.gbapal"

	.global gGfxEvidenceLottasCamera
gGfxEvidenceLottasCamera:
	.incbin "graphics/evidence_profile_pictures/evidence/lottas_camera.4bpp"

	.global gPalEvidenceWiretap
gPalEvidenceWiretap:
	.incbin "graphics/evidence_profile_pictures/evidence/wiretap.gbapal"

	.global gGfxEvidenceWiretap
gGfxEvidenceWiretap:
	.incbin "graphics/evidence_profile_pictures/evidence/wiretap.4bpp"

	.global gPalEvidenceMayasCellphone
gPalEvidenceMayasCellphone:
	.incbin "graphics/evidence_profile_pictures/evidence/mayas_cellphone.gbapal"

	.global gGfxEvidenceMayasCellphone
gGfxEvidenceMayasCellphone:
	.incbin "graphics/evidence_profile_pictures/evidence/mayas_cellphone.4bpp"

	.global gPalEvidenceArticleGourdy
gPalEvidenceArticleGourdy:
	.incbin "graphics/evidence_profile_pictures/evidence/article_gourdy.gbapal"

	.global gGfxEvidenceArticleGourdy
gGfxEvidenceArticleGourdy:
	.incbin "graphics/evidence_profile_pictures/evidence/article_gourdy.4bpp"

	.global gPalEvidenceBullet
gPalEvidenceBullet:
	.incbin "graphics/evidence_profile_pictures/evidence/bullet.gbapal"

	.global gGfxEvidenceBullet
gGfxEvidenceBullet:
	.incbin "graphics/evidence_profile_pictures/evidence/bullet.4bpp"

	.global gUnknown_081B59CC_pal
gUnknown_081B59CC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/phoenix_badge.gbapal"

	.global gUnknown_081B59CC_gfx
gUnknown_081B59CC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/phoenix_badge.4bpp"

	.global gUnknown_081B61EC_pal
gUnknown_081B61EC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/generic_letter.gbapal"

	.global gUnknown_081B61EC_gfx
gUnknown_081B61EC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/generic_letter.4bpp"

	.global gUnknown_081B6A0C_pal
gUnknown_081B6A0C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/note_from_the_safe.gbapal"

	.global gUnknown_081B6A0C_gfx
gUnknown_081B6A0C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/note_from_the_safe.4bpp"

	.global gUnknown_081B722C_pal
gUnknown_081B722C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/generic_photo.gbapal"

	.global gUnknown_081B722C_gfx
gUnknown_081B722C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/generic_photo.4bpp"

	.global gUnknown_081B7A4C_pal
gUnknown_081B7A4C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/dick_gumshoe.gbapal"

	.global gUnknown_081B7A4C_gfx
gUnknown_081B7A4C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/dick_gumshoe.4bpp"

	.global gUnknown_081B826C_pal
gUnknown_081B826C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/april_may.gbapal"

	.global gUnknown_081B826C_gfx
gUnknown_081B826C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/april_may.4bpp"

	.global gUnknown_081B8A8C_pal
gUnknown_081B8A8C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/bellboy.gbapal"

	.global gUnknown_081B8A8C_gfx
gUnknown_081B8A8C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/bellboy.4bpp"

	.global gUnknown_081B92AC_pal
gUnknown_081B92AC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/redd_white.gbapal"

	.global gUnknown_081B92AC_gfx
gUnknown_081B92AC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/redd_white.4bpp"

	.global gUnknown_081B9ACC_pal
gUnknown_081B9ACC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/the_thinker.gbapal"

	.global gUnknown_081B9ACC_gfx
gUnknown_081B9ACC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/the_thinker.4bpp"

	.global gUnknown_081BA2EC_pal
gUnknown_081BA2EC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/cindy_stones_passport.gbapal"

	.global gUnknown_081BA2EC_gfx
gUnknown_081BA2EC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/cindy_stones_passport.4bpp"

	.global gUnknown_081BAB0C_pal
gUnknown_081BAB0C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/generic_autopsy_report.gbapal"

	.global gUnknown_081BAB0C_gfx
gUnknown_081BAB0C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/generic_autopsy_report.4bpp"

	.global gUnknown_081BB32C_pal
gUnknown_081BB32C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/generic_affidavit.gbapal"

	.global gUnknown_081BB32C_gfx
gUnknown_081BB32C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/generic_affidavit.4bpp"

	.global gUnknown_081BBB4C_pal
gUnknown_081BBB4C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/mia_fey.gbapal"

	.global gUnknown_081BBB4C_gfx
gUnknown_081BBB4C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/mia_fey.4bpp"

	.global gUnknown_081BC36C_pal
gUnknown_081BC36C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/larry_butz.gbapal"

	.global gUnknown_081BC36C_gfx
gUnknown_081BC36C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/larry_butz.4bpp"

	.global gUnknown_081BCB8C_pal
gUnknown_081BCB8C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/cindy_stone.gbapal"

	.global gUnknown_081BCB8C_gfx
gUnknown_081BCB8C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/cindy_stone.4bpp"

	.global gUnknown_081BD3AC_pal
gUnknown_081BD3AC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/frank_sahwit.gbapal"

	.global gUnknown_081BD3AC_gfx
gUnknown_081BD3AC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/frank_sahwit.4bpp"

	.global gUnknown_081BDBCC_pal
gUnknown_081BDBCC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/winston_payne.gbapal"

	.global gUnknown_081BDBCC_gfx
gUnknown_081BDBCC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/winston_payne.4bpp"

	.global gUnknown_081BE3EC_pal
gUnknown_081BE3EC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/maya_fey.gbapal"

	.global gUnknown_081BE3EC_gfx
gUnknown_081BE3EC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/maya_fey.4bpp"

	.global gUnknown_081BEC0C_pal
gUnknown_081BEC0C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/maya_memo.gbapal"

	.global gUnknown_081BEC0C_gfx
gUnknown_081BEC0C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/maya_memo.4bpp"

	.global gUnknown_081BF42C_pal
gUnknown_081BF42C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/steel_samurai_spear.gbapal"

	.global gUnknown_081BF42C_gfx
gUnknown_081BF42C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/steel_samurai_spear.4bpp"

	.global gUnknown_081BFC4C_pal
gUnknown_081BFC4C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/glass_shards.gbapal"

	.global gUnknown_081BFC4C_gfx
gUnknown_081BFC4C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/glass_shards.4bpp"

	.global gUnknown_081C046C_pal
gUnknown_081C046C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/generic_newspaper_clipping.gbapal"

	.global gUnknown_081C046C_gfx
gUnknown_081C046C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/generic_newspaper_clipping.4bpp"

	.global gUnknown_081C0C8C_pal
gUnknown_081C0C8C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/misty_fey.gbapal"

	.global gUnknown_081C0C8C_gfx
gUnknown_081C0C8C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/misty_fey.4bpp"

	.global gUnknown_081C14AC_pal
gUnknown_081C14AC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/marvin_grossberg.gbapal"

	.global gUnknown_081C14AC_gfx
gUnknown_081C14AC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/marvin_grossberg.4bpp"

	.global gUnknown_081C1CCC_pal
gUnknown_081C1CCC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/miles_edgeworth.gbapal"

	.global gUnknown_081C1CCC_gfx
gUnknown_081C1CCC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/miles_edgeworth.4bpp"

	.global gUnknown_081C24EC_pal
gUnknown_081C24EC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/steel_samurai_cards.gbapal"

	.global gUnknown_081C24EC_gfx
gUnknown_081C24EC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/steel_samurai_cards.4bpp"

	.global gUnknown_081C2D0C_pal
gUnknown_081C2D0C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/steel_samurai_ultra_rare_card.gbapal"

	.global gUnknown_081C2D0C_gfx
gUnknown_081C2D0C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/steel_samurai_ultra_rare_card.4bpp"

	.global gUnknown_081C352C_pal
gUnknown_081C352C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/empty_bottle.gbapal"

	.global gUnknown_081C352C_gfx
gUnknown_081C352C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/empty_bottle.4bpp"

	.global gUnknown_081C3D4C_pal
gUnknown_081C3D4C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/steel_samurai_script.gbapal"

	.global gUnknown_081C3D4C_gfx
gUnknown_081C3D4C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/steel_samurai_script.4bpp"

	.global gUnknown_081C456C_pal
gUnknown_081C456C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/codys_digital_camera.gbapal"

	.global gUnknown_081C456C_gfx
gUnknown_081C456C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/codys_digital_camera.4bpp"

	.global gUnknown_081C4D8C_pal
gUnknown_081C4D8C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/plate_with_steak_bones.gbapal"

	.global gUnknown_081C4D8C_gfx
gUnknown_081C4D8C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/plate_with_steak_bones.4bpp"

	.global gUnknown_081C55AC_pal
gUnknown_081C55AC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/global_studios_card_key.gbapal"

	.global gUnknown_081C55AC_gfx
gUnknown_081C55AC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/global_studios_card_key.4bpp"

	.global gUnknown_081C5DCC_pal
gUnknown_081C5DCC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/key_to_cottage.gbapal"

	.global gUnknown_081C5DCC_gfx
gUnknown_081C5DCC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/key_to_cottage.4bpp"

	.global gUnknown_081C65EC_pal
gUnknown_081C65EC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/mr_monkey.gbapal"

	.global gUnknown_081C65EC_gfx
gUnknown_081C65EC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/mr_monkey.4bpp"

	.global gUnknown_081C6E0C_pal
gUnknown_081C6E0C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/codys_steel_samurai_scrapbook.gbapal"

	.global gUnknown_081C6E0C_gfx
gUnknown_081C6E0C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/codys_steel_samurai_scrapbook.4bpp"

	.global gUnknown_081C762C_pal
gUnknown_081C762C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/global_studios_van.gbapal"

	.global gUnknown_081C762C_gfx
gUnknown_081C762C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/global_studios_van.4bpp"

	.global gUnknown_081C7E4C_pal
gUnknown_081C7E4C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/cody_hackins.gbapal"

	.global gUnknown_081C7E4C_gfx
gUnknown_081C7E4C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/cody_hackins.4bpp"

	.global gUnknown_081C866C_pal
gUnknown_081C866C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/will_powers.gbapal"

	.global gUnknown_081C866C_gfx
gUnknown_081C866C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/will_powers.4bpp"

	.global gUnknown_081C8E8C_pal
gUnknown_081C8E8C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/dee_vasquez.gbapal"

	.global gUnknown_081C8E8C_gfx
gUnknown_081C8E8C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/dee_vasquez.4bpp"

	.global gUnknown_081C96AC_pal
gUnknown_081C96AC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/penny_nichols.gbapal"

	.global gUnknown_081C96AC_gfx
gUnknown_081C96AC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/penny_nichols.4bpp"

	.global gUnknown_081C9ECC_pal
gUnknown_081C9ECC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/sal_manella.gbapal"

	.global gUnknown_081C9ECC_gfx
gUnknown_081C9ECC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/sal_manella.4bpp"

	.global gUnknown_081CA6EC_pal
gUnknown_081CA6EC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/jack_hammer.gbapal"

	.global gUnknown_081CA6EC_gfx
gUnknown_081CA6EC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/jack_hammer.4bpp"

	.global gUnknown_081CAF0C_pal
gUnknown_081CAF0C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/wendy_oldbag.gbapal"

	.global gUnknown_081CAF0C_gfx
gUnknown_081CAF0C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/wendy_oldbag.4bpp"

	.global gUnknown_081CB72C_pal
gUnknown_081CB72C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/firecrackers.gbapal"

	.global gUnknown_081CB72C_gfx
gUnknown_081CB72C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/firecrackers.4bpp"

	.global gUnknown_081CBF4C_pal
gUnknown_081CBF4C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/pistol.gbapal"

	.global gUnknown_081CBF4C_gfx
gUnknown_081CBF4C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/pistol.4bpp"

	.global gUnknown_081CC76C_pal
gUnknown_081CC76C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/air_tube.gbapal"

	.global gUnknown_081CC76C_gfx
gUnknown_081CC76C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/air_tube.4bpp"

	.global gUnknown_081CCF8C_pal
gUnknown_081CCF8C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/metal_detector.gbapal"

	.global gUnknown_081CCF8C_gfx
gUnknown_081CCF8C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/metal_detector.4bpp"

	.global gUnknown_081CD7AC_pal
gUnknown_081CD7AC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/missile.gbapal"

	.global gUnknown_081CD7AC_gfx
gUnknown_081CD7AC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/missile.4bpp"

	.global gUnknown_081CDFCC_pal
gUnknown_081CDFCC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/missile_angry.gbapal"

	.global gUnknown_081CDFCC_gfx
gUnknown_081CDFCC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/missile_angry.4bpp"

	.global gUnknown_081CE7EC_pal
gUnknown_081CE7EC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/dl-6_bullet.gbapal"

	.global gUnknown_081CE7EC_gfx
gUnknown_081CE7EC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/dl-6_bullet.4bpp"

	.global gUnknown_081CF00C_pal
gUnknown_081CF00C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/fishing_pole.gbapal"

	.global gUnknown_081CF00C_gfx
gUnknown_081CF00C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/fishing_pole.4bpp"

	.global gUnknown_081CF82C_pal
gUnknown_081CF82C_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/polly.gbapal"

	.global gUnknown_081CF82C_gfx
gUnknown_081CF82C_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/polly.4bpp"

	.global gUnknown_081D004C_pal
gUnknown_081D004C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/lotta_hart.gbapal"

	.global gUnknown_081D004C_gfx
gUnknown_081D004C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/lotta_hart.4bpp"

	.global gUnknown_081D086C_pal
gUnknown_081D086C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/manfred_von_karma.gbapal"

	.global gUnknown_081D086C_gfx
gUnknown_081D086C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/manfred_von_karma.4bpp"

	.global gUnknown_081D108C_pal
gUnknown_081D108C_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/gregory_edgeworth.gbapal"

	.global gUnknown_081D108C_gfx
gUnknown_081D108C_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/gregory_edgeworth.4bpp"

	.global gUnknown_081D18AC_pal
gUnknown_081D18AC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/robert_hammond.gbapal"

	.global gUnknown_081D18AC_gfx
gUnknown_081D18AC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/robert_hammond.4bpp"

	.global gUnknown_081D20CC_pal
gUnknown_081D20CC_pal:
	.incbin "graphics/evidence_profile_pictures/profiles/old_man.gbapal"

	.global gUnknown_081D20CC_gfx
gUnknown_081D20CC_gfx:
	.incbin "graphics/evidence_profile_pictures/profiles/old_man.4bpp"

	.global gUnknown_081D28EC_pal
gUnknown_081D28EC_pal:
	.incbin "graphics/evidence_profile_pictures/evidence/yannis_safe.gbapal"

	.global gUnknown_081D28EC_gfx
gUnknown_081D28EC_gfx:
	.incbin "graphics/evidence_profile_pictures/evidence/yannis_safe.4bpp"

@ END EVIDENCE AND PROFILE PICTURES

	.global gTextPal
gTextPal:
	.incbin "graphics/charset.gbapal"

	.global gCharSet
gCharSet:  @ Charset
	.incbin "graphics/charset.4bpp"

@ BEGIN TALK AND LOCATION CHOICES

	.global gPalChoiceSelected
gPalChoiceSelected:
	.incbin "graphics/choice_selected.gbapal"

	.global gPalChoiceGreyedOut
gPalChoiceGreyedOut:
	.incbin "graphics/choice_greyed_out.gbapal"
	
@ first block of stuffs

	.global gGfxLocationChoices
gGfxLocationChoices:
	.incbin "graphics/location_choices/001FD96C.4bpp"
	.incbin "graphics/location_choices/001FE16C.4bpp"
	.incbin "graphics/location_choices/001FE96C.4bpp"
	.incbin "graphics/location_choices/001FF16C.4bpp"
	.incbin "graphics/location_choices/001FF96C.4bpp"
	.incbin "graphics/location_choices/0020016C.4bpp"
	.incbin "graphics/location_choices/0020096C.4bpp"
	.incbin "graphics/location_choices/0020116C.4bpp"
	.incbin "graphics/location_choices/0020196C.4bpp"
	.incbin "graphics/location_choices/0020216C.4bpp"
	.incbin "graphics/location_choices/0020296C.4bpp"
	.incbin "graphics/location_choices/0020316C.4bpp"
	.incbin "graphics/location_choices/0020396C.4bpp"
	.incbin "graphics/location_choices/0020416C.4bpp"
	.incbin "graphics/location_choices/0020496C.4bpp"
	.incbin "graphics/location_choices/0020516C.4bpp"
	.incbin "graphics/location_choices/0020596C.4bpp"
	.incbin "graphics/location_choices/0020616C.4bpp"
	.incbin "graphics/location_choices/0020696C.4bpp"
	.incbin "graphics/location_choices/0020716C.4bpp"
	.incbin "graphics/location_choices/0020796C.4bpp"

@ second block of stuffs

	.global gGfxTalkChoices
gGfxTalkChoices:
	.incbin "graphics/talk_choices/0020816C.4bpp"
	.incbin "graphics/talk_choices/0020896C.4bpp"
	.incbin "graphics/talk_choices/0020916C.4bpp"
	.incbin "graphics/talk_choices/0020996C.4bpp"
	.incbin "graphics/talk_choices/0020A16C.4bpp"
	.incbin "graphics/talk_choices/0020A96C.4bpp"
	.incbin "graphics/talk_choices/0020B16C.4bpp"
	.incbin "graphics/talk_choices/0020B96C.4bpp"
	.incbin "graphics/talk_choices/0020C16C.4bpp"
	.incbin "graphics/talk_choices/0020C96C.4bpp"
	.incbin "graphics/talk_choices/0020D16C.4bpp"
	.incbin "graphics/talk_choices/0020D96C.4bpp"
	.incbin "graphics/talk_choices/0020E16C.4bpp"
	.incbin "graphics/talk_choices/0020E96C.4bpp"
	.incbin "graphics/talk_choices/0020F16C.4bpp"
	.incbin "graphics/talk_choices/0020F96C.4bpp"
	.incbin "graphics/talk_choices/0021016C.4bpp"
	.incbin "graphics/talk_choices/0021096C.4bpp"
	.incbin "graphics/talk_choices/0021116C.4bpp"
	.incbin "graphics/talk_choices/0021196C.4bpp"
	.incbin "graphics/talk_choices/0021216C.4bpp"
	.incbin "graphics/talk_choices/0021296C.4bpp"
	.incbin "graphics/talk_choices/0021316C.4bpp"
	.incbin "graphics/talk_choices/0021396C.4bpp"
	.incbin "graphics/talk_choices/0021416C.4bpp"
	.incbin "graphics/talk_choices/0021496C.4bpp"
	.incbin "graphics/talk_choices/0021516C.4bpp"
	.incbin "graphics/talk_choices/0021596C.4bpp"
	.incbin "graphics/talk_choices/0021616C.4bpp"
	.incbin "graphics/talk_choices/0021696C.4bpp"
	.incbin "graphics/talk_choices/0021716C.4bpp"
	.incbin "graphics/talk_choices/0021796C.4bpp"
	.incbin "graphics/talk_choices/0021816C.4bpp"
	.incbin "graphics/talk_choices/0021896C.4bpp"
	.incbin "graphics/talk_choices/0021916C.4bpp"
	.incbin "graphics/talk_choices/0021996C.4bpp"
	.incbin "graphics/talk_choices/0021A16C.4bpp"
	.incbin "graphics/talk_choices/0021A96C.4bpp"
	.incbin "graphics/talk_choices/0021B16C.4bpp"
	.incbin "graphics/talk_choices/0021B96C.4bpp"
	.incbin "graphics/talk_choices/0021C16C.4bpp"
	.incbin "graphics/talk_choices/0021C96C.4bpp"
	.incbin "graphics/talk_choices/0021D16C.4bpp"
	.incbin "graphics/talk_choices/0021D96C.4bpp"
	.incbin "graphics/talk_choices/0021E16C.4bpp"
	.incbin "graphics/talk_choices/0021E96C.4bpp"
	.incbin "graphics/talk_choices/0021F16C.4bpp"
	.incbin "graphics/talk_choices/0021F96C.4bpp"
	.incbin "graphics/talk_choices/0022016C.4bpp"
	.incbin "graphics/talk_choices/0022096C.4bpp"
	.incbin "graphics/talk_choices/0022116C.4bpp"
	.incbin "graphics/talk_choices/0022196C.4bpp"
	.incbin "graphics/talk_choices/0022216C.4bpp"
	.incbin "graphics/talk_choices/0022296C.4bpp"
	.incbin "graphics/talk_choices/0022316C.4bpp"
	.incbin "graphics/talk_choices/0022396C.4bpp"
	.incbin "graphics/talk_choices/0022416C.4bpp"
	.incbin "graphics/talk_choices/0022496C.4bpp"
	.incbin "graphics/talk_choices/0022516C.4bpp"
	.incbin "graphics/talk_choices/0022596C.4bpp"
	.incbin "graphics/talk_choices/0022616C.4bpp"
	.incbin "graphics/talk_choices/0022696C.4bpp"
	.incbin "graphics/talk_choices/0022716C.4bpp"
	.incbin "graphics/talk_choices/0022796C.4bpp"
	.incbin "graphics/talk_choices/0022816C.4bpp"
	.incbin "graphics/talk_choices/0022896C.4bpp"
	.incbin "graphics/talk_choices/0022916C.4bpp"
	.incbin "graphics/talk_choices/0022996C.4bpp"
	.incbin "graphics/talk_choices/0022A16C.4bpp"
	.incbin "graphics/talk_choices/0022A96C.4bpp"
	.incbin "graphics/talk_choices/0022B16C.4bpp"
	.incbin "graphics/talk_choices/0022B96C.4bpp"
	.incbin "graphics/talk_choices/0022C16C.4bpp"
	.incbin "graphics/talk_choices/0022C96C.4bpp"
	.incbin "graphics/talk_choices/0022D16C.4bpp"
	.incbin "graphics/talk_choices/0022D96C.4bpp"
	.incbin "graphics/talk_choices/0022E16C.4bpp"
	.incbin "graphics/talk_choices/0022E96C.4bpp"
	.incbin "graphics/talk_choices/0022F16C.4bpp"
	.incbin "graphics/talk_choices/0022F96C.4bpp"
	.incbin "graphics/talk_choices/0023016C.4bpp"
	.incbin "graphics/talk_choices/0023096C.4bpp"
	.incbin "graphics/talk_choices/0023116C.4bpp"
	.incbin "graphics/talk_choices/0023196C.4bpp"
	.incbin "graphics/talk_choices/0023216C.4bpp"
	.incbin "graphics/talk_choices/0023296C.4bpp"
	.incbin "graphics/talk_choices/0023316C.4bpp"
	.incbin "graphics/talk_choices/0023396C.4bpp"
	.incbin "graphics/talk_choices/0023416C.4bpp"
	.incbin "graphics/talk_choices/0023496C.4bpp"
	.incbin "graphics/talk_choices/0023516C.4bpp"
	.incbin "graphics/talk_choices/0023596C.4bpp"
	.incbin "graphics/talk_choices/0023616C.4bpp"
	.incbin "graphics/talk_choices/0023696C.4bpp"
	.incbin "graphics/talk_choices/0023716C.4bpp"
	.incbin "graphics/talk_choices/0023796C.4bpp"
	.incbin "graphics/talk_choices/0023816C.4bpp"
	.incbin "graphics/talk_choices/0023896C.4bpp"
	.incbin "graphics/talk_choices/0023916C.4bpp"
	.incbin "graphics/talk_choices/0023996C.4bpp"
	.incbin "graphics/talk_choices/0023A16C.4bpp"
	.incbin "graphics/talk_choices/0023A96C.4bpp"
	.incbin "graphics/talk_choices/0023B16C.4bpp"
	.incbin "graphics/talk_choices/0023B96C.4bpp"
	.incbin "graphics/talk_choices/0023C16C.4bpp"
	.incbin "graphics/talk_choices/0023C96C.4bpp"
	.incbin "graphics/talk_choices/0023D16C.4bpp"
	.incbin "graphics/talk_choices/0023D96C.4bpp"
	.incbin "graphics/talk_choices/0023E16C.4bpp"
	.incbin "graphics/talk_choices/0023E96C.4bpp"
	.incbin "graphics/talk_choices/0023F16C.4bpp"
	.incbin "graphics/talk_choices/0023F96C.4bpp"
	.incbin "graphics/talk_choices/0024016C.4bpp"
	.incbin "graphics/talk_choices/0024096C.4bpp"
	.incbin "graphics/talk_choices/0024116C.4bpp"
	.incbin "graphics/talk_choices/0024196C.4bpp"
	.incbin "graphics/talk_choices/0024216C.4bpp"
	.incbin "graphics/talk_choices/0024296C.4bpp"
	.incbin "graphics/talk_choices/0024316C.4bpp"
	.incbin "graphics/talk_choices/0024396C.4bpp"
	.incbin "graphics/talk_choices/0024416C.4bpp"
	.incbin "graphics/talk_choices/0024496C.4bpp"
	.incbin "graphics/talk_choices/0024516C.4bpp"
	.incbin "graphics/talk_choices/0024596C.4bpp"
	.incbin "graphics/talk_choices/0024616C.4bpp"

@ END TALK AND LOCATION CHOICES

	.global gPalMapMarkersPalette
gPalMapMarkersPalette:
	.incbin "graphics/map_markers/palette.gbapal"

		.global gGfxMapMarkersKiller
gGfxMapMarkersKiller:
	.incbin "graphics/map_markers/killer.4bpp"

	.global gGfxMapMarkersVictim
gGfxMapMarkersVictim:
	.incbin "graphics/map_markers/victim.4bpp"

	.global gGfxMapMarkersCase2MiaBody
gGfxMapMarkersCase2MiaBody:
	.incbin "graphics/map_markers/case2_mia_body.4bpp"

	.global gGfxMapMarkersCase2Thinker
gGfxMapMarkersCase2Thinker:
	.incbin "graphics/map_markers/case2_thinker.4bpp"

	.global gGfxMapMarkersCase3Studio1
gGfxMapMarkersCase3Studio1:
	.incbin "graphics/map_markers/case3_studio_1.4bpp"

	.global gGfxMapMarkersCase3Studio2
gGfxMapMarkersCase3Studio2:
	.incbin "graphics/map_markers/case3_studio_2.4bpp"

	.global gGfxMapMarkersCase3EmployeeArea
gGfxMapMarkersCase3EmployeeArea:
	.incbin "graphics/map_markers/case3_employee_area.4bpp"

	.global gGfxMapMarkersCase3Gate
gGfxMapMarkersCase3Gate:
	.incbin "graphics/map_markers/case3_gate.4bpp"

	.global gGfxMapMarkersCase3MainGate
gGfxMapMarkersCase3MainGate:
	.incbin "graphics/map_markers/case3_main_gate.4bpp"

	.global gGfxMapMarkersGreen
gGfxMapMarkersGreen:
	.incbin "graphics/map_markers/green.4bpp"

	.global gGfxMapMarkersCase4BoatHorizontal
gGfxMapMarkersCase4BoatHorizontal:
	.incbin "graphics/map_markers/case4_boat_horizontal.4bpp"

	.global gGfxMapMarkersCase4BoatRentalShop
gGfxMapMarkersCase4BoatRentalShop:
	.incbin "graphics/map_markers/case4_boat_rental_shop.4bpp"

	.global gGfxMapMarkersCase4LottaSuv
gGfxMapMarkersCase4LottaSuv:
	.incbin "graphics/map_markers/case4_lotta_suv.4bpp"

	.global gGfxMapMarkersCase4BoatVertical
gGfxMapMarkersCase4BoatVertical:
	.incbin "graphics/map_markers/case4_boat_vertical.4bpp"

@ ; BEGIN BACKGROUNDS

	.global gGfx_BG000_FeyCoMurderNight
gGfx_BG000_FeyCoMurderNight:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/fey_co_murder_night.8bpp.striped"

	.global gGfx_BG001_WrightCoOfficeDay
gGfx_BG001_WrightCoOfficeDay:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/office_day.8bpp.striped"

	.global gGfx_BG002_CourtDefendantLobby
gGfx_BG002_CourtDefendantLobby:
	.incbin "graphics/striped_images/backgrounds/court/defendant_lobby.8bpp.striped"

	.global gGfx_BG003_CourtDefenseBench
gGfx_BG003_CourtDefenseBench:
	.incbin "graphics/striped_images/backgrounds/court/defense_bench.4bpp.striped"

	.global gGfx_BG004_CourtProsecutionBench
gGfx_BG004_CourtProsecutionBench:
	.incbin "graphics/striped_images/backgrounds/court/prosecution_bench.4bpp.striped"

	.global gGfx_BG005_CourtWitnessStand
gGfx_BG005_CourtWitnessStand:
	.incbin "graphics/striped_images/backgrounds/court/witness_stand.4bpp.striped"

	.global gGfx_BG006_CourtRoom
gGfx_BG006_CourtRoom:
	.incbin "graphics/striped_images/backgrounds/court/court_room.8bpp.striped"

	.global gGfx_BG007_CourtCoCounsel
gGfx_BG007_CourtCoCounsel:
	.incbin "graphics/striped_images/backgrounds/court/co_counsel.8bpp.striped"

	.global gGfx_BG008_CourtJudgeSeat
gGfx_BG008_CourtJudgeSeat:
	.incbin "graphics/striped_images/backgrounds/court/judge_seat.8bpp.striped"

	.global gGfx_BG009_FeyCoEntranceNight
gGfx_BG009_FeyCoEntranceNight:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/office_entry_night.8bpp.striped"

	.global gGfx_BG010_Case2MayaSeeingDeadMia
gGfx_BG010_Case2MayaSeeingDeadMia:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/maya_seeing_dead_mia.8bpp.striped"

	.global gGfx_BG011_GlobalStudiosStudioPath
gGfx_BG011_GlobalStudiosStudioPath:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_path.8bpp.striped"

	.global gGfx_BG012_GlobalStudiosStaffArea
gGfx_BG012_GlobalStudiosStaffArea:
	.incbin "graphics/striped_images/backgrounds/global_studios/staff_area.8bpp.striped"

	.global gGfx_BG013_WitnessMiaDodgingRight
gGfx_BG013_WitnessMiaDodgingRight:
	.incbin "graphics/striped_images/backgrounds/witness_account/mia_dodging_right.4bpp.striped"

	.global gGfx_BG014_WitnessMiaDodgingLeft
gGfx_BG014_WitnessMiaDodgingLeft:
	.incbin "graphics/striped_images/backgrounds/witness_account/mia_dodging_left.4bpp.striped"

	.global gGfx_BG015_EvidenceFeyCoDiagram
gGfx_BG015_EvidenceFeyCoDiagram:
	.incbin "graphics/striped_images/backgrounds/evidence/fey_co_diagram.4bpp.striped"

	.global gGfx_BG016_WitnessAprilGettingRoomService
gGfx_BG016_WitnessAprilGettingRoomService:
	.incbin "graphics/striped_images/backgrounds/witness_account/april_getting_room_service.4bpp.striped"

	.global gGfx_BG017_Case2MiaDeadOnGround
gGfx_BG017_Case2MiaDeadOnGround:
	.incbin "graphics/striped_images/backgrounds/wright_co_law_offices/mia_dead_on_ground.8bpp.striped"

	.global gGfx_BG018_Case2PhoenixMayaMia
gGfx_BG018_Case2PhoenixMayaMia:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/phoenix_maya_mia.8bpp.striped"

	.global gGfx_BG019_GlobalStudiosStudio2Trailer
gGfx_BG019_GlobalStudiosStudio2Trailer:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_2_trailer.8bpp.striped"

	.global gGfx_BG020_Case2AprilCallingPolice
gGfx_BG020_Case2AprilCallingPolice:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/april_calling_police.8bpp.striped"

	.global gGfx_BG021_Case2ReddHittingMia
gGfx_BG021_Case2ReddHittingMia:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/redd_hitting_mia.8bpp.striped"

	.global gGfx_BG022_Case2MiaBeingAttacked
gGfx_BG022_Case2MiaBeingAttacked:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/mia_being_attacked.8bpp.striped"

	.global gGfx_BG023_Case2ReddHoldingThinker
gGfx_BG023_Case2ReddHoldingThinker:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case2/redd_holding_thinker.4bpp.striped"

	.global gGfx_BG024_GlobalStudiosDressingRoom
gGfx_BG024_GlobalStudiosDressingRoom:
	.incbin "graphics/striped_images/backgrounds/global_studios/will_power_dressing_room.8bpp.striped"

	.global gGfx_BG025_GlobalStudiosFrontGate
gGfx_BG025_GlobalStudiosFrontGate:
	.incbin "graphics/striped_images/backgrounds/global_studios/front_gate.8bpp.striped"

	.global gGfx_BG026_GlobalStudiosStudio1
gGfx_BG026_GlobalStudiosStudio1:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_1.8bpp.striped"

	.global gGfx_BG027_Gavel2
gGfx_BG027_Gavel2:
	.incbin "graphics/striped_images/backgrounds/gavel/2.8bpp.striped"

	.global gGfx_BG028_Gavel3
gGfx_BG028_Gavel3:
	.incbin "graphics/striped_images/backgrounds/gavel/3.8bpp.striped"

	.global gGfx_BG029_EvidenceFeyCoDiagramLight
gGfx_BG029_EvidenceFeyCoDiagramLight:
	.incbin "graphics/striped_images/backgrounds/evidence/fey_co_diagram_light.4bpp.striped"

	.global gGfx_BG030_DetentionCenter
gGfx_BG030_DetentionCenter:
	.incbin "graphics/striped_images/backgrounds/detention_center.8bpp.striped"

	.global gGfx_BG031_BlueCorpCeoOffice
gGfx_BG031_BlueCorpCeoOffice:
	.incbin "graphics/striped_images/backgrounds/bluecorp_ceo_office.8bpp.striped"

	.global gGfx_BG032_GatewaterHotelRoom
gGfx_BG032_GatewaterHotelRoom:
	.incbin "graphics/striped_images/backgrounds/gatewater_hotelroom.8bpp.striped"

	.global gGfx_BG033_Case1FrankHoldingThinker
gGfx_BG033_Case1FrankHoldingThinker:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_holding_thinker.8bpp.striped"

	.global gGfx_BG034_Case1CindyDeadOnFloor
gGfx_BG034_Case1CindyDeadOnFloor:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/cindy_dead_on_floor.8bpp.striped"

	.global gGfx_BG035_Case1CindyAndFrank
gGfx_BG035_Case1CindyAndFrank:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/cindy_and_frank.8bpp.striped"

	.global gGfx_BG036_Case1FrankCloseup1
gGfx_BG036_Case1FrankCloseup1:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_closeup_1.8bpp.striped"

	.global gGfx_BG037_Case1FrankCloseup2
gGfx_BG037_Case1FrankCloseup2:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_closeup_2.8bpp.striped"

	.global gGfx_BG038_Case1FrankCloseup3
gGfx_BG038_Case1FrankCloseup3:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case1/frank_closeup_3.8bpp.striped"

	.global gGfx_BG039_GrossbergLawOfficesPainting
gGfx_BG039_GrossbergLawOfficesPainting:
	.incbin "graphics/striped_images/backgrounds/grossberg_law_offices/grossberg_law_offices_painting.8bpp.striped"

	.global gGfx_BG040_GrossbergLawOfficesNoPainting
gGfx_BG040_GrossbergLawOfficesNoPainting:
	.incbin "graphics/striped_images/backgrounds/grossberg_law_offices/grossberg_law_offices_no_painting.8bpp.striped"

	.global gGfx_BG041_WitnessCindyFindingFrank
gGfx_BG041_WitnessCindyFindingFrank:
	.incbin "graphics/striped_images/backgrounds/witness_account/cindy_finding_frank.4bpp.striped"

	.global gGfx_BG042_WitnessFrankWitnessingLarry
gGfx_BG042_WitnessFrankWitnessingLarry:
	.incbin "graphics/striped_images/backgrounds/witness_account/frank_witnessing_larry.4bpp.striped"

	.global gGfx_BG043_WitnessFrankFindingCindy
gGfx_BG043_WitnessFrankFindingCindy:
	.incbin "graphics/striped_images/backgrounds/witness_account/frank_finding_cindy.4bpp.striped"

	.global gGfx_BG044_GlobalStudiosStudio2
gGfx_BG044_GlobalStudiosStudio2:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_2.8bpp.striped"

	.global gGfx_BG045_EvidenceMayaPhoneCall1
gGfx_BG045_EvidenceMayaPhoneCall1:
	.incbin "graphics/striped_images/backgrounds/evidence/maya_phone_call_page_1.4bpp.striped"
	.global gGfx_BG046_EvidenceMayaPhoneCall2
gGfx_BG046_EvidenceMayaPhoneCall2:
	.incbin "graphics/striped_images/backgrounds/evidence/maya_phone_call_page_2.4bpp.striped"

	.global gGfx_BG047_Gavel1
gGfx_BG047_Gavel1:
	.incbin "graphics/striped_images/backgrounds/gavel/1.8bpp.striped"

	.global gGfx_BG048_EvidenceMayaPhoneCall3
gGfx_BG048_EvidenceMayaPhoneCall3:
	.incbin "graphics/striped_images/backgrounds/evidence/maya_phone_call_page_3.4bpp.striped"

	.global gGfx_BG049_WitnessJackAtGate
gGfx_BG049_WitnessJackAtGate:
	.incbin "graphics/striped_images/backgrounds/witness_account/jack_at_gate_photo.4bpp.striped"

	.global gGfx_BG050_WitnessJackDeadAtStudio1
gGfx_BG050_WitnessJackDeadAtStudio1:
	.incbin "graphics/striped_images/backgrounds/witness_account/jack_dead_at_studio_1.4bpp.striped"

	.global gGfx_BG051_WitnessJackWearingSamuraiSuit
gGfx_BG051_WitnessJackWearingSamuraiSuit:
	.incbin "graphics/striped_images/backgrounds/witness_account/jack_wearing_samurai_suit.4bpp.striped"

	.global gGfx_BG052_WitnessVasquezPushingJackAftermath
gGfx_BG052_WitnessVasquezPushingJackAftermath:
	.incbin "graphics/striped_images/backgrounds/witness_account/vasquez_pushing_jack_aftermath.4bpp.striped"

	.global gGfx_BG053_WitnessStaffEatingLunch
gGfx_BG053_WitnessStaffEatingLunch:
	.incbin "graphics/striped_images/backgrounds/witness_account/staff_eating_lunch.4bpp.striped"

	.global gGfx_BG054_WitnessStudio2JackAndVasquez
gGfx_BG054_WitnessStudio2JackAndVasquez:
	.incbin "graphics/striped_images/backgrounds/witness_account/studio_2_jack_and_vasquez.4bpp.striped"

	.global gGfx_BG055_WitnessCodyWitnessingSamurai
gGfx_BG055_WitnessCodyWitnessingSamurai:
	.incbin "graphics/striped_images/backgrounds/witness_account/cody_witnessing_samurai.4bpp.striped"

	.global gGfx_BG056_WitnessSamuraiAtStudio2
gGfx_BG056_WitnessSamuraiAtStudio2:
	.incbin "graphics/striped_images/backgrounds/witness_account/samurai_at_studio_2_photo.4bpp.striped"

	.global gGfx_BG057_Witness5YearOldPhoto
gGfx_BG057_Witness5YearOldPhoto:
	.incbin "graphics/striped_images/backgrounds/witness_account/5_year_old_photo.4bpp.striped"

	.global gGfx_BG058_GlobalStudiosStudio2TrailerMafia
gGfx_BG058_GlobalStudiosStudio2TrailerMafia:
	.incbin "graphics/striped_images/backgrounds/global_studios/studio_2_trailer_mafia.8bpp.striped"

	.global gGfx_BG059_Case3PinkPrincess
gGfx_BG059_Case3PinkPrincess:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case3/pink_princess.8bpp.striped"

	.global gGfx_BG060_GlobalStudiosMonkeyOnStudio2Path
gGfx_BG060_GlobalStudiosMonkeyOnStudio2Path:
	.incbin "graphics/striped_images/backgrounds/global_studios/monkey_on_studio_2_path.8bpp.striped"

	.global gGfx_BG061_EvidenceGlobalStudiosDiagram
gGfx_BG061_EvidenceGlobalStudiosDiagram:
	.incbin "graphics/striped_images/backgrounds/evidence/global_studio_diagram.4bpp.striped"

	.global gGfx_BG062_WitnessWillPowerInjury
gGfx_BG062_WitnessWillPowerInjury:
	.incbin "graphics/striped_images/backgrounds/witness_account/will_power_injury.4bpp.striped"

	.global gGfx_BG063_Case3SteelSamurai
gGfx_BG063_Case3SteelSamurai:
	.incbin "graphics/striped_images/backgrounds/cutscenes/case3/steel_samurai.8bpp.striped"
	
@ ; END BACKGROUNDS

	.global gPal_BG064_BustupPhoenix
gPal_BG064_BustupPhoenix:
	.incbin "graphics/bustup_phoenix.gbapal"


	.global gMap_BG064_BustupPhoenix
gMap_BG064_BustupPhoenix:
	.incbin "graphics/bustup_phoenix.bin"


	.global gGfx_BG064_BustupPhoenix
gGfx_BG064_BustupPhoenix:
	.incbin "graphics/bustup_phoenix.4bpp"


	.global gPal_BG065_BustupEdgeworth
gPal_BG065_BustupEdgeworth:
	.incbin "graphics/bustup_edgeworth.gbapal"


	.global gMap_BG065_BustupEdgeworth
gMap_BG065_BustupEdgeworth:
	.incbin "graphics/bustup_edgeworth.bin"


	.global gGfx_BG065_BustupEdgeworth
gGfx_BG065_BustupEdgeworth:
	.incbin "graphics/bustup_edgeworth.4bpp"

@ ; BEGIN BACKGROUNDS


	.global gGfx_BG066_Speedlines
gGfx_BG066_Speedlines:
	.incbin "graphics/striped_images/speedlines.4bpp.striped"


	.global gGfx_BG067_CourtroomBackground
gGfx_BG067_CourtroomBackground:
	.incbin "graphics/striped_images/courtroom_background.4bpp.striped"


	.global gGfx_BG068_CapcomScreen
gGfx_BG068_CapcomScreen:
	.incbin "graphics/striped_images/capcom_screen.4bpp.striped"

@ ; this entry here spills over into an explicitly referenced one (the next), why though...
@	.global gGfx_BG069_SteelSamuraiNight

@ ; it looks like this reference skips the "table" of this striped image and directly goes to the data?
@	.global gUnknown_083698B8

	.global gGfx_BG069_SteelSamuraiNight
gGfx_BG069_SteelSamuraiNight:
	.incbin "graphics/striped_images/steel_samurai_night.4bpp.striped"


	.global gGfx_BG070_GourdLakeEntrance
gGfx_BG070_GourdLakeEntrance:
	.incbin "graphics/striped_images/gourd_lake_entrance.8bpp.striped"


	.global gGfx_BG071_GourdLakePark
gGfx_BG071_GourdLakePark:
	.incbin "graphics/striped_images/gourd_lake_park.8bpp.striped"


	.global gGfx_BG072_GourdLakeParkNoBalloon
gGfx_BG072_GourdLakeParkNoBalloon:
	.incbin "graphics/striped_images/gourd_lake_park_no_balloon.8bpp.striped"


	.global gGfx_BG073_GourdLakeBeach
gGfx_BG073_GourdLakeBeach:
	.incbin "graphics/striped_images/gourd_lake_beach.8bpp.striped"


	.global gGfx_BG074_Case3IntroGrass
gGfx_BG074_Case3IntroGrass:
	.incbin "graphics/striped_images/case3_intro_grass.4bpp.striped"


	.global gGfx_BG075_Case3IntroTrees
gGfx_BG075_Case3IntroTrees:
	.incbin "graphics/striped_images/case3_intro_trees.4bpp.striped"


	.global gGfx_BG076_Case3IntroSteelSamuraiPosing
gGfx_BG076_Case3IntroSteelSamuraiPosing:
	.incbin "graphics/striped_images/case3_intro_steel_samurai_posing.4bpp.striped"


	.global gGfx_BG077_GourdLakeBoatRental
gGfx_BG077_GourdLakeBoatRental:
	.incbin "graphics/striped_images/gourd_lake_boat_rental.8bpp.striped"


	.global gGfx_BG078_GourdLakeBoatRentalHouse
gGfx_BG078_GourdLakeBoatRentalHouse:
	.incbin "graphics/striped_images/gourd_lake_boat_rental_house.8bpp.striped"


	.global gGfx_BG079_PoliceStationLobby
gGfx_BG079_PoliceStationLobby:
	.incbin "graphics/striped_images/police_station_lobby.8bpp.striped"


	.global gGfx_BG080_PoliceStationEvidenceStorage
gGfx_BG080_PoliceStationEvidenceStorage:
	.incbin "graphics/striped_images/police_station_evidence_storage.8bpp.striped"


	.global gGfx_BG081_Case3IntroFaceoff
gGfx_BG081_Case3IntroFaceoff:
	.incbin "graphics/striped_images/case3_intro_faceoff.4bpp.striped"


	.global gGfx_BG082_EvidenceDL6CaseFile1
gGfx_BG082_EvidenceDL6CaseFile1:
	.incbin "graphics/striped_images/backgrounds/evidence/dl6_case_file_page_1.4bpp.striped"


	.global gGfx_BG083_EvidenceDL6CaseFile2
gGfx_BG083_EvidenceDL6CaseFile2:
	.incbin "graphics/striped_images/backgrounds/evidence/dl6_case_file_page_2.4bpp.striped"


	.global gGfx_BG084_EvidenceDL6CaseFile3
gGfx_BG084_EvidenceDL6CaseFile3:
	.incbin "graphics/striped_images/backgrounds/evidence/dl6_case_file_page_3.4bpp.striped"


	.global gGfx_BG085_Case4TrainStation
gGfx_BG085_Case4TrainStation:
	.incbin "graphics/striped_images/case4_train_station.8bpp.striped"


	.global gGfx_BG086_Case4GourdLakeMap
gGfx_BG086_Case4GourdLakeMap:
	.incbin "graphics/striped_images/case4_gourd_lake_map.4bpp.striped"


	.global gGfx_BG087_Case4LottasPhotoZoomed
gGfx_BG087_Case4LottasPhotoZoomed:
	.incbin "graphics/striped_images/case4_lottas_photo_zoomed.4bpp.striped"


	.global gGfx_BG088_Case4ElevatorPhoto
gGfx_BG088_Case4ElevatorPhoto:
	.incbin "graphics/striped_images/case4_elevator_photo.4bpp.striped"


	.global gGfx_BG089_Case4Newspaper
gGfx_BG089_Case4Newspaper:
	.incbin "graphics/striped_images/case4_newspaper.8bpp.striped"


	.global gGfx_BG090_Case4BalloonLaunching
gGfx_BG090_Case4BalloonLaunching:
	.incbin "graphics/striped_images/case4_balloon_launching.4bpp.striped"


	.global gGfx_BG091_Case4BalloonLandingInLake
gGfx_BG091_Case4BalloonLandingInLake:
	.incbin "graphics/striped_images/case4_balloon_landing_in_lake.4bpp.striped"


	.global gGfx_BG092_Case4LarrySearchingLake
gGfx_BG092_Case4LarrySearchingLake:
	.incbin "graphics/striped_images/case4_larry_searching_lake.4bpp.striped"


	.global gGfx_BG093_Case4ClassTrial
gGfx_BG093_Case4ClassTrial:
	.incbin "graphics/striped_images/case4_class_trial.8bpp.striped"


	.global gGfx_BG094_Case4LottasPhotoFar
gGfx_BG094_Case4LottasPhotoFar:
	.incbin "graphics/striped_images/case4_lottas_photo_far.4bpp.striped"


	.global gGfx_BG095_Case4ClassTrialPhoenix
gGfx_BG095_Case4ClassTrialPhoenix:
	.incbin "graphics/striped_images/case4_class_trial_phoenix.8bpp.striped"


	.global gGfx_BG096_Case4ClassTrialEdgeworth
gGfx_BG096_Case4ClassTrialEdgeworth:
	.incbin "graphics/striped_images/case4_class_trial_edgeworth.8bpp.striped"


	.global gGfx_BG097_Case4ClassTrialLarry
gGfx_BG097_Case4ClassTrialLarry:
	.incbin "graphics/striped_images/case4_class_trial_larry.8bpp.striped"


	.global gGfx_BG098_Case4YanniThreatening
gGfx_BG098_Case4YanniThreatening:
	.incbin "graphics/striped_images/case4_yanni_threatening.4bpp.striped"


	.global gGfx_BG099_Case4ShootWaterFromBoat
gGfx_BG099_Case4ShootWaterFromBoat:
	.incbin "graphics/striped_images/case4_shoot_water_from_boat.4bpp.striped"


	.global gGfx_BG100_Case4ElevatorSuffocating
gGfx_BG100_Case4ElevatorSuffocating:
	.incbin "graphics/striped_images/case4_elevator_suffocating.4bpp.striped"


	.global gGfx_BG101_Case4ElevatorEdgeworthThrow
gGfx_BG101_Case4ElevatorEdgeworthThrow:
	.incbin "graphics/striped_images/case4_elevator_edgeworth_throw.4bpp.striped"


	.global gGfx_BG102_Case4ElevatorVonKarmaShot
gGfx_BG102_Case4ElevatorVonKarmaShot:
	.incbin "graphics/striped_images/case4_elevator_vonkarma_shot.4bpp.striped"


	.global gGfx_BG103_Case4ElevatorVonKarmaInDoor
gGfx_BG103_Case4ElevatorVonKarmaInDoor:
	.incbin "graphics/striped_images/case4_elevator_vonkarma_in_door.4bpp.striped"


	.global gGfx_BG104_Case4TrainStationMayaLeaving
gGfx_BG104_Case4TrainStationMayaLeaving:
	.incbin "graphics/striped_images/case4_train_station_maya_leaving.8bpp.striped"


	.global gGfx_BG105_TrialWon
gGfx_BG105_TrialWon:
	.incbin "graphics/striped_images/trial_won.8bpp.striped"


	.global gGfx_BG106_Case4IntroLakeOneInBoat
gGfx_BG106_Case4IntroLakeOneInBoat:
	.incbin "graphics/striped_images/case4_intro_lake_one_in_boat.4bpp.striped"


	.global gGfx_BG107_Case4IntroThreatenedToShoot
gGfx_BG107_Case4IntroThreatenedToShoot:
	.incbin "graphics/striped_images/case4_intro_threatened_to_shoot.4bpp.striped"


	.global gGfx_BG108_Case4IntroEdgeworthPicksUpGun
gGfx_BG108_Case4IntroEdgeworthPicksUpGun:
	.incbin "graphics/striped_images/case4_intro_edgeworth_picks_gun_up.8bpp.striped"


	.global gGfx_BG109_CapcomScreenBW
gGfx_BG109_CapcomScreenBW:
	.incbin "graphics/striped_images/capcom_screen_bw.4bpp.striped"


	.global gGfx_BG110_DemoTitleScreen
gGfx_BG110_DemoTitleScreen:
	.incbin "graphics/striped_images/title_screen_demo.8bpp.striped"


	.global gGfx_BG111_DemoComingSoon
gGfx_BG111_DemoComingSoon:
	.incbin "graphics/striped_images/coming_soon_screen.8bpp.striped"

@ ; END

	.global gGfx_SpeedlinesFirstAndLastColumns
gGfx_SpeedlinesFirstAndLastColumns:
	.incbin "graphics/speedlines_first_and_last_columns.4bpp"
	
@ BEGIN COURT SCROLLS

	.global gGfxCourtscroll01
gGfxCourtscroll01:
	.incbin "graphics/court_scrolls/court_scroll01.gbapal"
	.incbin "graphics/court_scrolls/court_scroll01.4bpp"

	.incbin "graphics/court_scrolls/court_scroll02.gbapal"
	.incbin "graphics/court_scrolls/court_scroll02.4bpp"

	.incbin "graphics/court_scrolls/court_scroll03.gbapal"
	.incbin "graphics/court_scrolls/court_scroll03.4bpp"

	.incbin "graphics/court_scrolls/court_scroll04.gbapal"
	.incbin "graphics/court_scrolls/court_scroll04.4bpp"

	.incbin "graphics/court_scrolls/court_scroll05.gbapal"
	.incbin "graphics/court_scrolls/court_scroll05.4bpp"

	.incbin "graphics/court_scrolls/court_scroll06.gbapal"
	.incbin "graphics/court_scrolls/court_scroll06.4bpp"

	.incbin "graphics/court_scrolls/court_scroll07.gbapal"
	.incbin "graphics/court_scrolls/court_scroll07.4bpp"

	.incbin "graphics/court_scrolls/court_scroll08.gbapal"
	.incbin "graphics/court_scrolls/court_scroll08.4bpp"

	.incbin "graphics/court_scrolls/court_scroll09.gbapal"
	.incbin "graphics/court_scrolls/court_scroll09.4bpp"

	.incbin "graphics/court_scrolls/court_scroll10.gbapal"
	.incbin "graphics/court_scrolls/court_scroll10.4bpp"

	.incbin "graphics/court_scrolls/court_scroll11.gbapal"
	.incbin "graphics/court_scrolls/court_scroll11.4bpp"

	.incbin "graphics/court_scrolls/court_scroll12.gbapal"
	.incbin "graphics/court_scrolls/court_scroll12.4bpp"

	.incbin "graphics/court_scrolls/court_scroll13.gbapal"
	.incbin "graphics/court_scrolls/court_scroll13.4bpp"

	.incbin "graphics/court_scrolls/court_scroll14.gbapal"
	.incbin "graphics/court_scrolls/court_scroll14.4bpp"

	.incbin "graphics/court_scrolls/court_scroll15.gbapal"
	.incbin "graphics/court_scrolls/court_scroll15.4bpp"

	.incbin "graphics/court_scrolls/court_scroll16.gbapal"
	.incbin "graphics/court_scrolls/court_scroll16.4bpp"

	.global gGfxCourtscroll02
gGfxCourtscroll02:
	.incbin "graphics/court_scrolls/court_scroll17.gbapal"
	.incbin "graphics/court_scrolls/court_scroll17.4bpp"

	.incbin "graphics/court_scrolls/court_scroll18.gbapal"
	.incbin "graphics/court_scrolls/court_scroll18.4bpp"

	.incbin "graphics/court_scrolls/court_scroll19.gbapal"
	.incbin "graphics/court_scrolls/court_scroll19.4bpp"

	.incbin "graphics/court_scrolls/court_scroll20.gbapal"
	.incbin "graphics/court_scrolls/court_scroll20.4bpp"

	.incbin "graphics/court_scrolls/court_scroll21.gbapal"
	.incbin "graphics/court_scrolls/court_scroll21.4bpp"

	.incbin "graphics/court_scrolls/court_scroll22.gbapal"
	.incbin "graphics/court_scrolls/court_scroll22.4bpp"

	.incbin "graphics/court_scrolls/court_scroll23.gbapal"
	.incbin "graphics/court_scrolls/court_scroll23.4bpp"

	.incbin "graphics/court_scrolls/court_scroll24.gbapal"
	.incbin "graphics/court_scrolls/court_scroll24.4bpp"

	.incbin "graphics/court_scrolls/court_scroll25.gbapal"
	.incbin "graphics/court_scrolls/court_scroll25.4bpp"

	.incbin "graphics/court_scrolls/court_scroll26.gbapal"
	.incbin "graphics/court_scrolls/court_scroll26.4bpp"

	.incbin "graphics/court_scrolls/court_scroll27.gbapal"
	.incbin "graphics/court_scrolls/court_scroll27.4bpp"

	.incbin "graphics/court_scrolls/court_scroll28.gbapal"
	.incbin "graphics/court_scrolls/court_scroll28.4bpp"

	.incbin "graphics/court_scrolls/court_scroll29.gbapal"
	.incbin "graphics/court_scrolls/court_scroll29.4bpp"

	.incbin "graphics/court_scrolls/court_scroll30.gbapal"
	.incbin "graphics/court_scrolls/court_scroll30.4bpp"

	.incbin "graphics/court_scrolls/court_scroll31.gbapal"
	.incbin "graphics/court_scrolls/court_scroll31.4bpp"

	.incbin "graphics/court_scrolls/court_scroll32.gbapal"
	.incbin "graphics/court_scrolls/court_scroll32.4bpp"

	.global gGfxCourtscroll03
gGfxCourtscroll03:
	.incbin "graphics/court_scrolls/court_scroll33.gbapal"
	.incbin "graphics/court_scrolls/court_scroll33.4bpp"

	.incbin "graphics/court_scrolls/court_scroll34.gbapal"
	.incbin "graphics/court_scrolls/court_scroll34.4bpp"

	.incbin "graphics/court_scrolls/court_scroll35.gbapal"
	.incbin "graphics/court_scrolls/court_scroll35.4bpp"

	.incbin "graphics/court_scrolls/court_scroll36.gbapal"
	.incbin "graphics/court_scrolls/court_scroll36.4bpp"

	.incbin "graphics/court_scrolls/court_scroll37.gbapal"
	.incbin "graphics/court_scrolls/court_scroll37.4bpp"

	.incbin "graphics/court_scrolls/court_scroll38.gbapal"
	.incbin "graphics/court_scrolls/court_scroll38.4bpp"

	.incbin "graphics/court_scrolls/court_scroll39.gbapal"
	.incbin "graphics/court_scrolls/court_scroll39.4bpp"

	.incbin "graphics/court_scrolls/court_scroll40.gbapal"
	.incbin "graphics/court_scrolls/court_scroll40.4bpp"

	.incbin "graphics/court_scrolls/court_scroll41.gbapal"
	.incbin "graphics/court_scrolls/court_scroll41.4bpp"

	.incbin "graphics/court_scrolls/court_scroll42.gbapal"
	.incbin "graphics/court_scrolls/court_scroll42.4bpp"

	.incbin "graphics/court_scrolls/court_scroll43.gbapal"
	.incbin "graphics/court_scrolls/court_scroll43.4bpp"

	.incbin "graphics/court_scrolls/court_scroll44.gbapal"
	.incbin "graphics/court_scrolls/court_scroll44.4bpp"

	.incbin "graphics/court_scrolls/court_scroll45.gbapal"
	.incbin "graphics/court_scrolls/court_scroll45.4bpp"

	.incbin "graphics/court_scrolls/court_scroll46.gbapal"
	.incbin "graphics/court_scrolls/court_scroll46.4bpp"

	.incbin "graphics/court_scrolls/court_scroll47.gbapal"
	.incbin "graphics/court_scrolls/court_scroll47.4bpp"

	.incbin "graphics/court_scrolls/court_scroll48.gbapal"
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
