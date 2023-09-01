#ifndef GUARD_GRAPHICS_H
#define GUARD_GRAPHICS_H

#ifndef NONMATCHING

#ifndef ROM_START
#define ROM_START 0x08000000 // why is this not already a fucking define 
#endif

#define GFX_BASE_ADDR (ROM_START + 0x180000)

#define gPalTitleScreen ((u8*)(ROM_START + 0x180000))
#define gGfx8lzTitleScreen ((u8*)(ROM_START + 0x180200))
#define gPalTitleScreenDemo ((u8*)(ROM_START + 0x182D08))
#define gGfx8lzTitleScreenDemo ((u8*)(ROM_START + 0x182F08))
#define gUnusedAsciiCharSet ((u8*)(ROM_START + 0x185D20))
#define gPalEvidenceProfileDesc ((u8*)(GFX_BASE_ADDR + 0x6520))
#define gUnknown_08186540 ((u8*)(ROM_START + 0x186540))
#define gGfx4bppNametags ((u8*)(ROM_START + 0x187540))
#define gGfx4bppTestimonyArrows ((u8*)(GFX_BASE_ADDR + 0xBD40))
#define gGfx4bppTrialLife ((u8*)(GFX_BASE_ADDR + 0xC040))
#define gGfx4bppInvestigationActions ((u8*)(ROM_START + 0x18E4C0))
#define gGfx4bppControllerButtons ((u8*)(GFX_BASE_ADDR + 0xF4C0))
#define gGfx4bppInvestigationScrollButton ((u8*)(ROM_START + 0x18F6C0))
#define gGfx4bppTestimonyTextTiles ((u8*)(ROM_START + 0x18F8C0))
#define gGfxTrialPressPresentButtons ((u8*)(ROM_START + 0x1900C0))
#define gGfxCourtRecordPresentBackText ((u8*)(GFX_BASE_ADDR + 0x104C0))
#define gGfxCourtRecordProfilesText ((u8*)(GFX_BASE_ADDR + 0x106C0))
#define gGfxCourtRecordEvidenceText ((u8*)(ROM_START + 0x1908C0))
#define gGfxInvestigationExamineCursor ((u8*)(ROM_START + 0x190AC0))
#define gGfxInvestigationCheckmark ((u8*)(ROM_START + 0x190FC0))
#define gGfxTrialGameOverDoors ((u8*)(ROM_START + 0x1911C0))
#define gGfxTrialNotGuilty1 ((u8*)(ROM_START + 0x1914A0))
#define gGfxTrialGuilty1 ((u8*)(ROM_START + 0x191CA0))
#define gGfxTrialGuiltyNotGuilty2 ((u8*)(ROM_START + 0x1924A0))
#define gGfxTrialGameOverText ((u8*)(ROM_START + 0x192CA0))
#define gGfxNewGameContinue ((u8*)(ROM_START + 0x193CA0))
#define gGfxTrialConfetti ((u8*)(ROM_START + 0x1940A0))
#define gPalCrossExaminationUI ((u8*)(GFX_BASE_ADDR + 0x140E0))
#define gPalActionButtons ((u8*)(GFX_BASE_ADDR + 0x14200))
#define gPalCourtRecordControlsBlurb ((u8*)(GFX_BASE_ADDR + 0x14240))
#define gPalInvestigationScrollPrompt ((u8*)(GFX_BASE_ADDR + 0x14260))
#define gPalTrialTestimonyTextTiles ((u8*)(ROM_START + 0x194280))
#define gPalTrialPressPresentButtons ((u8*)(ROM_START + 0x1942A0))
#define gPalInvestigationExamineCursors ((u8*)(GFX_BASE_ADDR + 0x142C0))
#define gPalInvestigationCheckmark ((u8*)(ROM_START + 0x1944E0))
#define gPalTrialGameOverDoors ((u8*)(ROM_START + 0x194500))
#define gPalTrialGuilty ((u8*)(ROM_START + 0x194520))
#define gPalTrialNotGuilty ((u8*)(ROM_START + 0x194540))
#define gPalTrialGameOverText ((u8*)(ROM_START + 0x194560))
#define gPalNewGameContinue ((u8*)(ROM_START + 0x194580))
#define gPalConfetti ((u8*)(ROM_START + 0x194640))
#define gGfx4lzEpisodeSelectOptions ((u8*)(ROM_START + 0x1946C0))
#define gGfxFromSaveOrBeginning ((u8*)(ROM_START + 0x1954A8))
#define gGfxSaveYesOrNo ((u8*)(ROM_START + 0x1964A8))
#define gGfxProfilesMiaFey0_description ((u8*)(ROM_START + 0x196CA8))
#define gGfxProfilesMayaFey0_description ((u8*)(ROM_START + 0x1970DC))
#define gGfxProfilesLarryButz0_description ((u8*)(ROM_START + 0x197514))
#define gGfxProfilesCindyStone_description ((u8*)(ROM_START + 0x197928))
#define gGfxProfilesFrankSahwit_description ((u8*)(ROM_START + 0x197D18))
#define gGfxProfilesWinstonPayne_description ((u8*)(ROM_START + 0x1981A0))
#define gGfxEvidenceGenericAutopsyReport0_description ((u8*)(ROM_START + 0x1985D8))
#define gGfxEvidenceTheThinker0_description ((u8*)(ROM_START + 0x198A84))
#define gGfxEvidenceCindyStonesPassport_description ((u8*)(ROM_START + 0x198E5C))
#define gGfxEvidenceGenericAffidavit0_description ((u8*)(ROM_START + 0x199228))
#define gGfxProfilesMiaFey1_description ((u8*)(ROM_START + 0x199690))
#define gGfxProfilesMayaFey1_description ((u8*)(ROM_START + 0x199AEC))
#define gGfxProfilesMayaFey2_description ((u8*)(ROM_START + 0x199EC8))
#define gGfxProfilesMayaFey3_description ((u8*)(ROM_START + 0x19A2E4))
#define gGfxProfilesMilesEdgeworth0_description ((u8*)(ROM_START + 0x19A700))
#define gGfxProfilesDickGumshoe_description ((u8*)(ROM_START + 0x19ABBC))
#define gGfxProfilesAprilMay0_description ((u8*)(ROM_START + 0x19B028))
#define gGfxProfilesAprilMay1_description ((u8*)(ROM_START + 0x19B428))
#define gGfxProfilesAprilMay2_description ((u8*)(ROM_START + 0x19B868))
#define gGfxProfilesReddWhite0_description ((u8*)(ROM_START + 0x19BCE4))
#define gGfxProfilesBellboy0_description ((u8*)(ROM_START + 0x19C0D8))
#define gGfxProfilesBellboy1_description ((u8*)(ROM_START + 0x19C434))
#define gGfxProfilesMarvinGrossberg_description ((u8*)(ROM_START + 0x19C810))
#define gGfxEvidencePhoenixBadge_description ((u8*)(ROM_START + 0x19CC44))
#define gGfxEvidenceGenericAutopsyReport1_description ((u8*)(ROM_START + 0x19D028))
#define gGfxEvidenceGenericLetter0_description ((u8*)(ROM_START + 0x19D4C8))
#define gGfxEvidenceMayasCellphone_description ((u8*)(ROM_START + 0x19D90C))
#define gGfxEvidenceGlassShards_description ((u8*)(ROM_START + 0x19DDAC))
#define gGfxEvidenceTheThinker1_description ((u8*)(ROM_START + 0x19E18C))
#define gGfxEvidenceTheThinker2_description ((u8*)(ROM_START + 0x19E5A0))
#define gGfxEvidenceMayaMemo_description ((u8*)(ROM_START + 0x19E9D8))
#define gGfxEvidenceNoteFromTheSafe_description ((u8*)(ROM_START + 0x19EDF0))
#define gGfxEvidenceWiretap_description ((u8*)(ROM_START + 0x19F208))
#define gGfxEvidenceGenericAffidavit1_description ((u8*)(ROM_START + 0x19F5C0))
#define gGfxProfilesMistyFey0_description ((u8*)(ROM_START + 0x19F9E8))
#define gGfxProfilesReddWhite1_description ((u8*)(ROM_START + 0x19FD84))
#define gGfxEvidenceGenericNewspaperClipping_description ((u8*)(ROM_START + 0x1A0120))
#define gGfxEvidenceGenericPhoto0_description ((u8*)(ROM_START + 0x1A0580))
#define gGfxEvidenceGenericAffidavit2_description ((u8*)(ROM_START + 0x1A09E4))
#define gGfxEvidenceGenericAutopsyReport2_description ((u8*)(ROM_START + 0x1A0E58))
#define gGfxEvidenceGenericLetter1_description ((u8*)(ROM_START + 0x1A1324))
#define gGfxEvidenceLottasCamera0_description ((u8*)(ROM_START + 0x1A1728))
#define gGfxProfilesWillPowers_description ((u8*)(ROM_START + 0x1A1A10))
#define gGfxProfilesWendyOldbag_description ((u8*)(ROM_START + 0x1A1E1C))
#define gGfxProfilesJackHammer_description ((u8*)(ROM_START + 0x1A22A4))
#define gGfxProfilesPennyNichols_description ((u8*)(ROM_START + 0x1A26BC))
#define gGfxProfilesSalManella_description ((u8*)(ROM_START + 0x1A2AE4))
#define gGfxProfilesDeeVasquez_description ((u8*)(ROM_START + 0x1A2EE4))
#define gGfxProfilesCodyHackins_description ((u8*)(ROM_START + 0x1A3330))
#define gGfxEvidenceGenericAffidavit3_description ((u8*)(ROM_START + 0x1A3714))
#define gGfxEvidenceGenericAutopsyReport3_description ((u8*)(ROM_START + 0x1A3B44))
#define gGfxEvidenceGlobalStudiosCardKey_description ((u8*)(ROM_START + 0x1A3FF8))
#define gGfxEvidenceGenericPhoto1_description ((u8*)(ROM_START + 0x1A439C))
#define gGfxEvidenceGenericPhoto2_description ((u8*)(ROM_START + 0x1A47D4))
#define gGfxEvidenceGenericPhoto3_description ((u8*)(ROM_START + 0x1A4BD4))
#define gGfxEvidenceSteelSamuraiSpear0_description ((u8*)(ROM_START + 0x1A4FF0))
#define gGfxEvidenceSteelSamuraiSpear1_description ((u8*)(ROM_START + 0x1A541C))
#define gGfxEvidenceEmptyBottle0_description ((u8*)(ROM_START + 0x1A5828))
#define gGfxEvidenceKeyToCottage_description ((u8*)(ROM_START + 0x1A5BF4))
#define gGfxEvidenceGenericLetter2_description ((u8*)(ROM_START + 0x1A5FA4))
#define gGfxEvidenceSteelSamuraiScript_description ((u8*)(ROM_START + 0x1A639C))
#define gGfxEvidenceMrMonkey_description ((u8*)(ROM_START + 0x1A675C))
#define gGfxEvidenceSteelSamuraiCards_description ((u8*)(ROM_START + 0x1A6B88))
#define gGfxEvidenceSteelSamuraiUltraRareCard_description ((u8*)(ROM_START + 0x1A6F68))
#define gGfxEvidenceCodysSteelSamuraiScrapbook_description ((u8*)(ROM_START + 0x1A7310))
#define gGfxEvidenceCodysDigitalCamera_description ((u8*)(ROM_START + 0x1A775C))
#define gGfxEvidencePlateWithSteakBones_description ((u8*)(ROM_START + 0x1A7B68))
#define gGfxEvidenceEmptyBottle1_description ((u8*)(ROM_START + 0x1A7FA4))
#define gGfxEvidenceGenericPhoto4_description ((u8*)(ROM_START + 0x1A83C4))
#define gGfxEvidenceGlobalStudiosVan_description ((u8*)(ROM_START + 0x1A8828))
#define gGfxEvidenceEmptyPlate_description ((u8*)(ROM_START + 0x1A8C30))
#define gGfxProfilesMilesEdgeworth1_description ((u8*)(ROM_START + 0x1A8F4C))
#define gGfxProfilesLottaHart0_description ((u8*)(ROM_START + 0x1A9380))
#define gGfxProfilesLottaHart1_description ((u8*)(ROM_START + 0x1A97CC))
#define gGfxProfilesLarryButz1_description ((u8*)(ROM_START + 0x1A9BC8))
#define gGfxProfilesRobertHammond_description ((u8*)(ROM_START + 0x1AA054))
#define gGfxProfilesMistyFey1_description ((u8*)(ROM_START + 0x1AA458))
#define gGfxProfilesManfredVonKarma_description ((u8*)(ROM_START + 0x1AA894))
#define gGfxProfilesGregoryEdgeworth_description ((u8*)(ROM_START + 0x1AACDC))
#define gGfxProfilesOldMan0_description ((u8*)(ROM_START + 0x1AB178))
#define gGfxProfilesOldMan1_description ((u8*)(ROM_START + 0x1AB574))
#define gGfxEvidenceFirecrackers_description ((u8*)(ROM_START + 0x1AB9FC))
#define gGfxEvidenceGenericAutopsyReport4_description ((u8*)(ROM_START + 0x1ABE00))
#define gGfxEvidenceGenericAutopsyReport5_description ((u8*)(ROM_START + 0x1AC2B0))
#define gGfxEvidenceGenericAutopsyReport6_description ((u8*)(ROM_START + 0x1AC75C))
#define gGfxEvidenceLottasCamera1_description ((u8*)(ROM_START + 0x1ACBFC))
#define gGfxEvidenceGenericPhoto5_description ((u8*)(ROM_START + 0x1AD02C))
#define gGfxEvidenceGenericPhoto6_description ((u8*)(ROM_START + 0x1AD448))
#define gGfxEvidenceGenericPhoto7_description ((u8*)(ROM_START + 0x1AD864))
#define gGfxProfilesMistyFey2_description ((u8*)(ROM_START + 0x1ADCD4))
#define gGfxEvidenceArticleGourdy_description ((u8*)(ROM_START + 0x1AE0DC))
#define gGfxEvidenceGenericAffidavit4_description ((u8*)(ROM_START + 0x1AE4FC))
#define gGfxEvidenceGenericPhoto8_description ((u8*)(ROM_START + 0x1AE938))
#define gGfxEvidenceBullet0_description ((u8*)(ROM_START + 0x1AED3C))
#define gGfxEvidenceBullet1_description ((u8*)(ROM_START + 0x1AF15C))
#define gGfxEvidencePistol_description ((u8*)(ROM_START + 0x1AF5A8))
#define gGfxEvidenceGenericAffidavit5_description ((u8*)(ROM_START + 0x1AF9DC))
#define gGfxEvidenceAirTube_description ((u8*)(ROM_START + 0x1AFE0C))
#define gGfxEvidenceMissile_description ((u8*)(ROM_START + 0x1B01D0))
#define gGfxEvidenceFishingPole_description ((u8*)(ROM_START + 0x1B0594))
#define gGfxEvidenceMetalDetector_description ((u8*)(ROM_START + 0x1B0984))
#define gGfxEvidencePolly_description ((u8*)(ROM_START + 0x1B0DC4))
#define gGfxEvidenceYannisSafe_description ((u8*)(ROM_START + 0x1B1150))
#define gGfxEvidenceGenericAutopsyReport7_description ((u8*)(ROM_START + 0x1B14EC))
#define gGfxEvidenceGenericPhoto9_description ((u8*)(ROM_START + 0x1B18C0))
#define gGfxEvidenceGenericLetter3_description ((u8*)(ROM_START + 0x1B1CBC))
#define gGfxEvidenceDl6Bullet_description ((u8*)(ROM_START + 0x1B2150))
#define gGfxEvidenceMissileAngry_description ((u8*)(ROM_START + 0x1B25F0))

#define gGfxEvidenceProfilePictures ((u8*)(GFX_BASE_ADDR + 0x3290C))

//~ extern u8 gTextPal[0x20];
#define gTextPal ((u8*)(ROM_START + 0x1d310c))
#define gCharSet ((u8*)(GFX_BASE_ADDR + 0x5312C))

#define gPalChoiceSelected ((u8*)(ROM_START + 0x1FD92C))
#define gPalChoiceGreyedOut ((u8*)(ROM_START + 0x1FD94C))
	
#define gGfxLocationChoices ((u8*)(ROM_START + 0x1FD96C))
#define gGfxTalkChoices ((u8*)(ROM_START + 0x20816C))
#define gPalMapMarkersPalette ((u8*)(ROM_START + 0x24696C))
#define gGfxMapMarkersKiller ((u8*)(ROM_START + 0x24698C))
#define gGfxMapMarkersVictim ((u8*)(ROM_START + 0x246A0C))
#define gGfxMapMarkersCase2MiaBody ((u8*)(ROM_START + 0x246A8C))
#define gGfxMapMarkersCase2Thinker ((u8*)(ROM_START + 0x246E8C))
#define gGfxMapMarkersCase3Studio1 ((u8*)(ROM_START + 0x246ECC))
#define gGfxMapMarkersCase3Studio2 ((u8*)(ROM_START + 0x2476CC))
#define gGfxMapMarkersCase3EmployeeArea ((u8*)(ROM_START + 0x247ECC))
#define gGfxMapMarkersCase3Gate ((u8*)(ROM_START + 0x2486CC))
#define gGfxMapMarkersCase3MainGate ((u8*)(ROM_START + 0x24874C))
#define gGfxMapMarkersGreen ((u8*)(ROM_START + 0x24884C))
#define gGfxMapMarkersCase4BoatHorizontal ((u8*)(ROM_START + 0x2488CC))
#define gGfxMapMarkersCase4BoatRentalShop ((u8*)(ROM_START + 0x24890C))
#define gGfxMapMarkersCase4LottaSuv ((u8*)(ROM_START + 0x248B0C))
#define gGfxMapMarkersCase4BoatVertical ((u8*)(ROM_START + 0x248C0C))
#define gGfx_BG000_FeyCoMurderNight ((u8*)(ROM_START + 0x248C4C))
#define gGfx_BG001_WrightCoOfficeDay ((u8*)(ROM_START + 0x25280C))
#define gGfx_BG002_CourtDefendantLobby ((u8*)(ROM_START + 0x257F28))
#define gGfx_BG003_CourtDefenseBench ((u8*)(ROM_START + 0x25CCCC))
#define gGfx_BG004_CourtProsecutionBench ((u8*)(ROM_START + 0x25EF64))
#define gGfx_BG005_CourtWitnessStand ((u8*)(ROM_START + 0x2610F0))
#define gGfx_BG006_CourtRoom ((u8*)(ROM_START + 0x263898))
#define gGfx_BG007_CourtCoCounsel ((u8*)(ROM_START + 0x26B6DC))
#define gGfx_BG008_CourtJudgeSeat ((u8*)(ROM_START + 0x271DE8))
#define gGfx_BG009_FeyCoEntranceNight ((u8*)(ROM_START + 0x278824))
#define gGfx_BG010_Case2MayaSeeingDeadMia ((u8*)(ROM_START + 0x27CEEC))
#define gGfx_BG011_GlobalStudiosStudioPath ((u8*)(ROM_START + 0x282870))
#define gGfx_BG012_GlobalStudiosStaffArea ((u8*)(ROM_START + 0x288AE0))
#define gGfx_BG013_WitnessMiaDodgingRight ((u8*)(ROM_START + 0x291ADC))
#define gGfx_BG014_WitnessMiaDodgingLeft ((u8*)(ROM_START + 0x293DC0))
#define gGfx_BG015_EvidenceFeyCoDiagram ((u8*)(ROM_START + 0x296138))
#define gGfx_BG016_WitnessAprilGettingRoomService ((u8*)(ROM_START + 0x296E28))
#define gGfx_BG017_Case2MiaDeadOnGround ((u8*)(ROM_START + 0x29A23C))
#define gGfx_BG018_Case2PhoenixMayaMia ((u8*)(ROM_START + 0x29E7A4))
#define gGfx_BG019_GlobalStudiosStudio2Trailer ((u8*)(ROM_START + 0x2A3BA8))
#define gGfx_BG020_Case2AprilCallingPolice ((u8*)(ROM_START + 0x2A8E3C))
#define gGfx_BG021_Case2ReddHittingMia ((u8*)(ROM_START + 0x2AE378))
#define gGfx_BG022_Case2MiaBeingAttacked ((u8*)(ROM_START + 0x2B6B78))
#define gGfx_BG023_Case2ReddHoldingThinker ((u8*)(ROM_START + 0x2BDC88))
#define gGfx_BG024_GlobalStudiosDressingRoom ((u8*)(ROM_START + 0x2BFC24))
#define gGfx_BG025_GlobalStudiosFrontGate ((u8*)(ROM_START + 0x2C5020))
#define gGfx_BG026_GlobalStudiosStudio1 ((u8*)(ROM_START + 0x2C9600))
#define gGfx_BG027_Gavel2 ((u8*)(ROM_START + 0x2CE308))
#define gGfx_BG028_Gavel3 ((u8*)(ROM_START + 0x2D1A90))
#define gGfx_BG029_EvidenceFeyCoDiagramLight ((u8*)(ROM_START + 0x2D79EC))
#define gGfx_BG030_DetentionCenter ((u8*)(ROM_START + 0x2D8974))
#define gGfx_BG031_BlueCorpCeoOffice ((u8*)(ROM_START + 0x2DC188))
#define gGfx_BG032_GatewaterHotelRoom ((u8*)(ROM_START + 0x2E1FA4))
#define gGfx_BG033_Case1FrankHoldingThinker ((u8*)(ROM_START + 0x2E6BBC))
#define gGfx_BG034_Case1CindyDeadOnFloor ((u8*)(ROM_START + 0x2EB2B8))
#define gGfx_BG035_Case1CindyAndFrank ((u8*)(ROM_START + 0x2EF904))
#define gGfx_BG036_Case1FrankCloseup1 ((u8*)(ROM_START + 0x2F7D4C))
#define gGfx_BG037_Case1FrankCloseup2 ((u8*)(ROM_START + 0x2FAF44))
#define gGfx_BG038_Case1FrankCloseup3 ((u8*)(ROM_START + 0x2FE610))
#define gGfx_BG039_GrossbergLawOfficesPainting ((u8*)(ROM_START + 0x3022F0))
#define gGfx_BG040_GrossbergLawOfficesNoPainting ((u8*)(ROM_START + 0x3081E4))
#define gGfx_BG041_WitnessCindyFindingFrank ((u8*)(ROM_START + 0x30D2D8))
#define gGfx_BG042_WitnessFrankWitnessingLarry ((u8*)(ROM_START + 0x31002C))
#define gGfx_BG043_WitnessFrankFindingCindy ((u8*)(ROM_START + 0x312664))
#define gGfx_BG044_GlobalStudiosStudio2 ((u8*)(ROM_START + 0x314F8C))
#define gGfx_BG045_EvidenceMayaPhoneCall1 ((u8*)(ROM_START + 0x31E8E0))
#define gGfx_BG046_EvidenceMayaPhoneCall2 ((u8*)(ROM_START + 0x31F624))
#define gGfx_BG047_Gavel1 ((u8*)(ROM_START + 0x320328))
#define gGfx_BG048_EvidenceMayaPhoneCall3 ((u8*)(ROM_START + 0x3230C0))
#define gGfx_BG049_WitnessJackAtGate ((u8*)(ROM_START + 0x323EDC))
#define gGfx_BG050_WitnessJackDeadAtStudio1 ((u8*)(ROM_START + 0x327074))
#define gGfx_BG051_WitnessJackWearingSamuraiSuit ((u8*)(ROM_START + 0x32AFB8))
#define gGfx_BG052_WitnessVasquezPushingJackAftermath ((u8*)(ROM_START + 0x32E7B0))
#define gGfx_BG053_WitnessStaffEatingLunch ((u8*)(ROM_START + 0x331B38))
#define gGfx_BG054_WitnessStudio2JackAndVasquez ((u8*)(ROM_START + 0x335A58))
#define gGfx_BG055_WitnessCodyWitnessingSamurai ((u8*)(ROM_START + 0x339144))
#define gGfx_BG056_WitnessSamuraiAtStudio2 ((u8*)(ROM_START + 0x33DC0C))
#define gGfx_BG057_Witness5YearOldPhoto ((u8*)(ROM_START + 0x33F720))
#define gGfx_BG058_GlobalStudiosStudio2TrailerMafia ((u8*)(ROM_START + 0x342908))
#define gGfx_BG059_Case3PinkPrincess ((u8*)(ROM_START + 0x34863C))
#define gGfx_BG060_GlobalStudiosMonkeyOnStudio2Path ((u8*)(ROM_START + 0x34F218))
#define gGfx_BG061_EvidenceGlobalStudiosDiagram ((u8*)(ROM_START + 0x35699C))
#define gGfx_BG062_WitnessWillPowerInjury ((u8*)(ROM_START + 0x357870))
#define gGfx_BG063_Case3SteelSamurai ((u8*)(ROM_START + 0x35ABD8))
	
#define gPal_BG064_BustupPhoenix ((u8*)(ROM_START + 0x360834))
#define gMap_BG064_BustupPhoenix ((u16*)(ROM_START + 0x360854))
#define gGfx_BG064_BustupPhoenix ((u8*)(ROM_START + 0x360D04))
#define gPal_BG065_BustupEdgeworth ((u8*)(ROM_START + 0x362524))
#define gMap_BG065_BustupEdgeworth ((u16*)(ROM_START + 0x362544))
#define gGfx_BG065_BustupEdgeworth ((u8*)(ROM_START + 0x3629F4))
#define gGfx_BG066_Speedlines ((u8*)(ROM_START + 0x364794))
#define gGfx_BG067_CourtroomBackground ((u8*)(ROM_START + 0x365640))
#define gGfx_BG068_CapcomScreen ((u8*)(ROM_START + 0x368BC4))
#define gGfx_BG069_SteelSamuraiNight ((u8*)(GFX_BASE_ADDR + 0x1E9890))
#define gGfx_BG070_GourdLakeEntrance ((u8*)(ROM_START + 0x36B924))
#define gGfx_BG071_GourdLakePark ((u8*)(ROM_START + 0x372D2C))
#define gGfx_BG072_GourdLakeParkNoBalloon ((u8*)(ROM_START + 0x37920C))
#define gGfx_BG073_GourdLakeBeach ((u8*)(ROM_START + 0x37E52C))
#define gGfx_BG074_Case3IntroGrass ((u8*)(GFX_BASE_ADDR + 0x2099C4))
#define gGfx_BG075_Case3IntroTrees ((u8*)(ROM_START + 0x38A6F4))
#define gGfx_BG076_Case3IntroSteelSamuraiPosing ((u8*)(ROM_START + 0x38B364))
#define gGfx_BG077_GourdLakeBoatRental ((u8*)(ROM_START + 0x38D370))
#define gGfx_BG078_GourdLakeBoatRentalHouse ((u8*)(ROM_START + 0x392118))
#define gGfx_BG079_PoliceStationLobby ((u8*)(ROM_START + 0x396EB0))
#define gGfx_BG080_PoliceStationEvidenceStorage ((u8*)(ROM_START + 0x39CD04))
#define gGfx_BG081_Case3IntroFaceoff ((u8*)(ROM_START + 0x3A3504))
#define gGfx_BG082_EvidenceDL6CaseFile1 ((u8*)(ROM_START + 0x3A6934))
#define gGfx_BG083_EvidenceDL6CaseFile2 ((u8*)(ROM_START + 0x3A7790))
#define gGfx_BG084_EvidenceDL6CaseFile3 ((u8*)(ROM_START + 0x3A8648))
#define gGfx_BG085_Case4TrainStation ((u8*)(ROM_START + 0x3A9514))
#define gGfx_BG086_Case4GourdLakeMap ((u8*)(ROM_START + 0x3AFCC8))
#define gGfx_BG087_Case4LottasPhotoZoomed ((u8*)(ROM_START + 0x3B0A94))
#define gGfx_BG088_Case4ElevatorPhoto ((u8*)(ROM_START + 0x3B3724))
#define gGfx_BG089_Case4Newspaper ((u8*)(ROM_START + 0x3B6C8C))
#define gGfx_BG090_Case4BalloonLaunching ((u8*)(ROM_START + 0x3BF1BC))
#define gGfx_BG091_Case4BalloonLandingInLake ((u8*)(ROM_START + 0x3C3724))
#define gGfx_BG092_Case4LarrySearchingLake ((u8*)(ROM_START + 0x3C7654))
#define gGfx_BG093_Case4ClassTrial ((u8*)(ROM_START + 0x3CB0BC))
#define gGfx_BG094_Case4LottasPhotoFar ((u8*)(ROM_START + 0x3D27A8))
#define gGfx_BG095_Case4ClassTrialPhoenix ((u8*)(ROM_START + 0x3D5E64))
#define gGfx_BG096_Case4ClassTrialEdgeworth ((u8*)(ROM_START + 0x3DAAC0))
#define gGfx_BG097_Case4ClassTrialLarry ((u8*)(ROM_START + 0x3E1514))
#define gGfx_BG098_Case4YanniThreatening ((u8*)(ROM_START + 0x3E74E8))
#define gGfx_BG099_Case4ShootWaterFromBoat ((u8*)(ROM_START + 0x3EAB84))
#define gGfx_BG100_Case4ElevatorSuffocating ((u8*)(ROM_START + 0x3EEAC0))
#define gGfx_BG101_Case4ElevatorEdgeworthThrow ((u8*)(ROM_START + 0x3F2BA4))
#define gGfx_BG102_Case4ElevatorVonKarmaShot ((u8*)(ROM_START + 0x3F6C48))
#define gGfx_BG103_Case4ElevatorVonKarmaInDoor ((u8*)(ROM_START + 0x3FB1D4))
#define gGfx_BG104_Case4TrainStationMayaLeaving ((u8*)(ROM_START + 0x3FD8D4))
#define gGfx_BG105_TrialWon ((u8*)(ROM_START + 0x4037F8))
#define gGfx_BG106_Case4IntroLakeOneInBoat ((u8*)(ROM_START + 0x40AC3C))
#define gGfx_BG107_Case4IntroThreatenedToShoot ((u8*)(ROM_START + 0x40D3C8))
#define gGfx_BG108_Case4IntroEdgeworthPicksUpGun ((u8*)(ROM_START + 0x40F8C0))
#define gGfx_BG109_CapcomScreenBW ((u8*)(ROM_START + 0x41B0F4))
#define gGfx_BG110_DemoTitleScreen ((u8*)(ROM_START + 0x41BD7C))
#define gGfx_BG111_DemoComingSoon ((u8*)(ROM_START + 0x41EFC4))
#define gGfx_SpeedlinesFirstAndLastColumns ((u8*)(ROM_START + 0x427608))
	
#define gGfxCourtscroll01 ((u8*)(ROM_START + 0x427D88))
#define gGfxCourtscroll02 ((u8*)(ROM_START + 0x472F88))
#define gGfxCourtscroll03 ((u8*)(ROM_START + 0x4BE188))

#define gGfxPixAnimationChar01 ((u8*)(ROM_START + 0x509388))
#define gGfxSeqAnimationChar01 ((u8*)(ROM_START + 0x532B84))
#define gGfxPixAnimationChar02 ((u8*)(ROM_START + 0x536720))
#define gGfxSeqAnimationChar02 ((u8*)(ROM_START + 0x555EF4))
#define gGfxPixAnimationChar03 ((u8*)(ROM_START + 0x55DCE4))
#define gGfxSeqAnimationChar03 ((u8*)(ROM_START + 0x569D8C))
#define gGfxPixAnimationChar04 ((u8*)(ROM_START + 0x56C438))
#define gGfxSeqAnimationChar04 ((u8*)(ROM_START + 0x575EC0))
#define gGfxPixAnimationChar05 ((u8*)(ROM_START + 0x577ADC))
#define gGfxSeqAnimationChar05 ((u8*)(ROM_START + 0x57CA00))
#define gGfxPixAnimationChar06 ((u8*)(ROM_START + 0x57D794))
#define gGfxSeqAnimationChar06 ((u8*)(ROM_START + 0x5B76BC))
#define gGfxPixAnimationChar07 ((u8*)(ROM_START + 0x5C2C94))
#define gGfxSeqAnimationChar07 ((u8*)(ROM_START + 0x5E3388))
#define gGfxPixAnimationChar08 ((u8*)(ROM_START + 0x5E8A48))
#define gGfxSeqAnimationChar08 ((u8*)(ROM_START + 0x60EF60))
#define gGfxPixAnimationChar09 ((u8*)(ROM_START + 0x612014))
#define gGfxSeqAnimationChar09 ((u8*)(ROM_START + 0x62057C))
#define gGfxPixAnimationChar10 ((u8*)(ROM_START + 0x622F20))
#define gGfxSeqAnimationChar10 ((u8*)(ROM_START + 0x626564))
#define gGfxPixAnimationChar11 ((u8*)(ROM_START + 0x626AD0))
#define gGfxSeqAnimationChar11 ((u8*)(ROM_START + 0x62ADB4))
#define gGfxPixAnimationChar12 ((u8*)(ROM_START + 0x62BA68))
#define gGfxSeqAnimationChar12 ((u8*)(ROM_START + 0x651F00))
#define gGfxPixAnimationChar13 ((u8*)(ROM_START + 0x65787C))
#define gGfxSeqAnimationChar13 ((u8*)(ROM_START + 0x66E26C))
#define gGfxPixAnimationChar14 ((u8*)(ROM_START + 0x670494))
#define gGfxSeqAnimationChar14 ((u8*)(ROM_START + 0x675038))
#define gGfxPixAnimationChar15 ((u8*)(ROM_START + 0x6758CC))
#define gGfxSeqAnimationChar15 ((u8*)(ROM_START + 0x67EAB4))
#define gGfxPixAnimationChar16 ((u8*)(ROM_START + 0x6812FC))
#define gGfxSeqAnimationChar16 ((u8*)(ROM_START + 0x6851E0))
#define gGfxPixAnimationChar17 ((u8*)(ROM_START + 0x685AEC))
#define gGfxSeqAnimationChar17 ((u8*)(ROM_START + 0x68FCF4))
#define gGfxPixAnimationChar18 ((u8*)(ROM_START + 0x691040))
#define gGfxSeqAnimationChar18 ((u8*)(ROM_START + 0x6A146C))
#define gGfxPixAnimationChar19 ((u8*)(ROM_START + 0x6A3A80))
#define gGfxSeqAnimationChar19 ((u8*)(ROM_START + 0x6B0EA8))
#define gGfxPixAnimationChar20 ((u8*)(ROM_START + 0x6B4504))
#define gGfxSeqAnimationChar20 ((u8*)(ROM_START + 0x6C4B90))
#define gGfxPixAnimationChar21 ((u8*)(ROM_START + 0x6C7128))
#define gGfxSeqAnimationChar21 ((u8*)(ROM_START + 0x6C9ECC))
#define gGfxPixAnimationChar22 ((u8*)(ROM_START + 0x6CA0FC))
#define gGfxSeqAnimationChar22 ((u8*)(ROM_START + 0x6CCA60))
#define gGfxPixAnimationChar23 ((u8*)(ROM_START + 0x6CCD04))
#define gGfxSeqAnimationChar23 ((u8*)(ROM_START + 0x6D7AEC))
#define gGfxPixAnimationChar24 ((u8*)(ROM_START + 0x6DA640))
#define gGfxSeqAnimationChar24 ((u8*)(ROM_START + 0x6EF710))
#define gGfxPixAnimationChar25 ((u8*)(ROM_START + 0x6F328C))
#define gGfxSeqAnimationChar25 ((u8*)(ROM_START + 0x7195C8))
#define gGfxPixAnimationChar26 ((u8*)(ROM_START + 0x71CF30))
#define gGfxSeqAnimationChar26 ((u8*)(ROM_START + 0x71E9F4))

#define gGfxPixAnimationTileset01 ((u8*)(GFX_BASE_ADDR + 0x59EBBC))
#define gGfxSeqAnimation01 ((u8*)(GFX_BASE_ADDR + 0x59FCF4))

#define gGfxSeqAnimation02 ((u8*)(ROM_START + 0x71FD14))
#define gGfxSeqAnimation03 ((u8*)(ROM_START + 0x71FD60))
#define gGfxSeqAnimation04 ((u8*)(ROM_START + 0x71FD80))
#define gGfxSeqAnimation05 ((u8*)(ROM_START + 0x71FDAC))
#define gGfxSeqAnimation06 ((u8*)(ROM_START + 0x71FDD0))

#define gGfxPixAnimationTileset02 ((u8*)(GFX_BASE_ADDR + 0x59FDF8))
#define gGfxSeqAnimation07 ((u8*)(GFX_BASE_ADDR + 0x5C8218))

#define gGfxSeqAnimation08 ((u8*)(ROM_START + 0x748340))
#define gGfxSeqAnimation09 ((u8*)(ROM_START + 0x748468))
#define gGfxSeqAnimation10 ((u8*)(ROM_START + 0x748488))
#define gGfxSeqAnimation11 ((u8*)(ROM_START + 0x7484A8))
#define gGfxSeqAnimation12 ((u8*)(ROM_START + 0x7484C8))
#define gGfxSeqAnimation13 ((u8*)(ROM_START + 0x7484E8))
#define gGfxSeqAnimation14 ((u8*)(ROM_START + 0x748520))
#define gGfxSeqAnimation15 ((u8*)(ROM_START + 0x748558))
#define gGfxSeqAnimation16 ((u8*)(ROM_START + 0x748590))
#define gGfxSeqAnimation17 ((u8*)(ROM_START + 0x7485C0))
#define gGfxSeqAnimation18 ((u8*)(ROM_START + 0x7485F4))
#define gGfxSeqAnimation19 ((u8*)(ROM_START + 0x748684))
#define gGfxSeqAnimation20 ((u8*)(ROM_START + 0x748774))
#define gGfxSeqAnimation21 ((u8*)(ROM_START + 0x748AB4))
#define gGfxSeqAnimation22 ((u8*)(ROM_START + 0x748AEC))
#define gGfxSeqAnimation23 ((u8*)(ROM_START + 0x748B24))
#define gGfxSeqAnimation24 ((u8*)(ROM_START + 0x748C38))
#define gGfxSeqAnimation25 ((u8*)(ROM_START + 0x748CA0))
#define gGfxSeqAnimation26 ((u8*)(ROM_START + 0x748D74))
#define gGfxSeqAnimation27 ((u8*)(ROM_START + 0x748D98))
#define gGfxSeqAnimation28 ((u8*)(ROM_START + 0x748DB8))
#define gGfxSeqAnimation29 ((u8*)(ROM_START + 0x748E0C))
#define gGfxSeqAnimation30 ((u8*)(ROM_START + 0x748EE4))
#define gGfxSeqAnimation31 ((u8*)(ROM_START + 0x748F44))
#define gGfxSeqAnimation32 ((u8*)(ROM_START + 0x748F80))
#define gGfxSeqAnimation33 ((u8*)(ROM_START + 0x748FA4))
#define gGfxSeqAnimation34 ((u8*)(ROM_START + 0x748FDC))
#define gGfxSeqAnimation35 ((u8*)(ROM_START + 0x749000))
#define gGfxSeqAnimation36 ((u8*)(ROM_START + 0x749044))
#define gGfxSeqAnimation37 ((u8*)(ROM_START + 0x7490B0))
#define gGfxSeqAnimation38 ((u8*)(ROM_START + 0x74911C))
#define gGfxSeqAnimation39 ((u8*)(ROM_START + 0x749158))
#define gGfxSeqAnimation40 ((u8*)(ROM_START + 0x749194))
#define gGfxSeqAnimation41 ((u8*)(ROM_START + 0x7491C4))
#define gGfxSeqAnimation42 ((u8*)(ROM_START + 0x7491EC))
#define gGfxSeqAnimation43 ((u8*)(ROM_START + 0x749210))
#define gGfxSeqAnimation44 ((u8*)(ROM_START + 0x749240))
#define gGfxSeqAnimation45 ((u8*)(ROM_START + 0x749268))
#define gGfxSeqAnimation46 ((u8*)(ROM_START + 0x749290))
#define gGfxSeqAnimation47 ((u8*)(ROM_START + 0x7492C0))
#define gGfxSeqAnimation48 ((u8*)(ROM_START + 0x749314))
#define gGfxSeqAnimation49 ((u8*)(ROM_START + 0x749334))
#define gGfxSeqAnimation50 ((u8*)(ROM_START + 0x749360))
#define gGfxSeqAnimation51 ((u8*)(ROM_START + 0x749384))
#define gGfxSeqAnimation52 ((u8*)(ROM_START + 0x7493A8))
#define gGfxSeqAnimation53 ((u8*)(ROM_START + 0x7493D4))
#define gGfxSeqAnimation54 ((u8*)(ROM_START + 0x749404))

#else
extern u8 gPalTitleScreen[];
extern u8 gGfx8lzTitleScreen[];
extern u8 gPalTitleScreenDemo[];
extern u8 gGfx8lzTitleScreenDemo[];
extern u8 gUnusedAsciiCharSet[];
extern u8 gPalEvidenceProfileDesc[];
extern u8 gUnknown_08186540[];
extern u8 gGfx4bppNametags[];
extern u8 gGfx4bppTestimonyArrows[];
extern u8 gGfx4bppTrialLife[];
extern u8 gGfx4bppInvestigationActions[];
extern u8 gGfx4bppControllerButtons[];
extern u8 gGfx4bppInvestigationScrollButton[];
extern u8 gGfx4bppTestimonyTextTiles[];
extern u8 gGfxTrialPressPresentButtons[];
extern u8 gGfxCourtRecordPresentBackText[];
extern u8 gGfxCourtRecordProfilesText[];
extern u8 gGfxCourtRecordEvidenceText[];
extern u8 gGfxInvestigationExamineCursor[];
extern u8 gGfxInvestigationCheckmark[];
extern u8 gGfxTrialGameOverDoors[];
extern u8 gGfxTrialNotGuilty1[];
extern u8 gGfxTrialGuilty1[];
extern u8 gGfxTrialGuiltyNotGuilty2[];
extern u8 gGfxTrialGameOverText[];
extern u8 gGfxNewGameContinue[];
extern u8 gGfxTrialConfetti[];
extern u8 gPalCrossExaminationUI[];
extern u8 gPalActionButtons[];
extern u8 gPalCourtRecordControlsBlurb[];
extern u8 gPalInvestigationScrollPrompt[];
extern u8 gPalTrialTestimonyTextTiles[];
extern u8 gPalTrialPressPresentButtons[];
extern u8 gPalInvestigationExamineCursors[];
extern u8 gPalInvestigationCheckmark[];
extern u8 gPalTrialGameOverDoors[];
extern u8 gPalTrialGuilty[];
extern u8 gPalTrialNotGuilty[];
extern u8 gPalTrialGameOverText[];
extern u8 gPalNewGameContinue[];
extern u8 gPalConfetti[];
extern u8 gGfx4lzEpisodeSelectOptions[];
extern u8 gGfxFromSaveOrBeginning[];
extern u8 gGfxSaveYesOrNo[];
extern u8 gGfxProfilesMiaFey0_description[];
extern u8 gGfxProfilesMayaFey0_description[];
extern u8 gGfxProfilesLarryButz0_description[];
extern u8 gGfxProfilesCindyStone_description[];
extern u8 gGfxProfilesFrankSahwit_description[];
extern u8 gGfxProfilesWinstonPayne_description[];
extern u8 gGfxEvidenceGenericAutopsyReport0_description[];
extern u8 gGfxEvidenceTheThinker0_description[];
extern u8 gGfxEvidenceCindyStonesPassport_description[];
extern u8 gGfxEvidenceGenericAffidavit0_description[];
extern u8 gGfxProfilesMiaFey1_description[];
extern u8 gGfxProfilesMayaFey1_description[];
extern u8 gGfxProfilesMayaFey2_description[];
extern u8 gGfxProfilesMayaFey3_description[];
extern u8 gGfxProfilesMilesEdgeworth0_description[];
extern u8 gGfxProfilesDickGumshoe_description[];
extern u8 gGfxProfilesAprilMay0_description[];
extern u8 gGfxProfilesAprilMay1_description[];
extern u8 gGfxProfilesAprilMay2_description[];
extern u8 gGfxProfilesReddWhite0_description[];
extern u8 gGfxProfilesBellboy0_description[];
extern u8 gGfxProfilesBellboy1_description[];
extern u8 gGfxProfilesMarvinGrossberg_description[];
extern u8 gGfxEvidencePhoenixBadge_description[];
extern u8 gGfxEvidenceGenericAutopsyReport1_description[];
extern u8 gGfxEvidenceGenericLetter0_description[];
extern u8 gGfxEvidenceMayasCellphone_description[];
extern u8 gGfxEvidenceGlassShards_description[];
extern u8 gGfxEvidenceTheThinker1_description[];
extern u8 gGfxEvidenceTheThinker2_description[];
extern u8 gGfxEvidenceMayaMemo_description[];
extern u8 gGfxEvidenceNoteFromTheSafe_description[];
extern u8 gGfxEvidenceWiretap_description[];
extern u8 gGfxEvidenceGenericAffidavit1_description[];
extern u8 gGfxProfilesMistyFey0_description[];
extern u8 gGfxProfilesReddWhite1_description[];
extern u8 gGfxEvidenceGenericNewspaperClipping_description[];
extern u8 gGfxEvidenceGenericPhoto0_description[];
extern u8 gGfxEvidenceGenericAffidavit2_description[];
extern u8 gGfxEvidenceGenericAutopsyReport2_description[];
extern u8 gGfxEvidenceGenericLetter1_description[];
extern u8 gGfxEvidenceLottasCamera0_description[];
extern u8 gGfxProfilesWillPowers_description[];
extern u8 gGfxProfilesWendyOldbag_description[];
extern u8 gGfxProfilesJackHammer_description[];
extern u8 gGfxProfilesPennyNichols_description[];
extern u8 gGfxProfilesSalManella_description[];
extern u8 gGfxProfilesDeeVasquez_description[];
extern u8 gGfxProfilesCodyHackins_description[];
extern u8 gGfxEvidenceGenericAffidavit3_description[];
extern u8 gGfxEvidenceGenericAutopsyReport3_description[];
extern u8 gGfxEvidenceGlobalStudiosCardKey_description[];
extern u8 gGfxEvidenceGenericPhoto1_description[];
extern u8 gGfxEvidenceGenericPhoto2_description[];
extern u8 gGfxEvidenceGenericPhoto3_description[];
extern u8 gGfxEvidenceSteelSamuraiSpear0_description[];
extern u8 gGfxEvidenceSteelSamuraiSpear1_description[];
extern u8 gGfxEvidenceEmptyBottle0_description[];
extern u8 gGfxEvidenceKeyToCottage_description[];
extern u8 gGfxEvidenceGenericLetter2_description[];
extern u8 gGfxEvidenceSteelSamuraiScript_description[];
extern u8 gGfxEvidenceMrMonkey_description[];
extern u8 gGfxEvidenceSteelSamuraiCards_description[];
extern u8 gGfxEvidenceSteelSamuraiUltraRareCard_description[];
extern u8 gGfxEvidenceCodysSteelSamuraiScrapbook_description[];
extern u8 gGfxEvidenceCodysDigitalCamera_description[];
extern u8 gGfxEvidencePlateWithSteakBones_description[];
extern u8 gGfxEvidenceEmptyBottle1_description[];
extern u8 gGfxEvidenceGenericPhoto4_description[];
extern u8 gGfxEvidenceGlobalStudiosVan_description[];
extern u8 gGfxEvidenceEmptyPlate_description[];
extern u8 gGfxProfilesMilesEdgeworth1_description[];
extern u8 gGfxProfilesLottaHart0_description[];
extern u8 gGfxProfilesLottaHart1_description[];
extern u8 gGfxProfilesLarryButz1_description[];
extern u8 gGfxProfilesRobertHammond_description[];
extern u8 gGfxProfilesMistyFey1_description[];
extern u8 gGfxProfilesManfredVonKarma_description[];
extern u8 gGfxProfilesGregoryEdgeworth_description[];
extern u8 gGfxProfilesOldMan0_description[];
extern u8 gGfxProfilesOldMan1_description[];
extern u8 gGfxEvidenceFirecrackers_description[];
extern u8 gGfxEvidenceGenericAutopsyReport4_description[];
extern u8 gGfxEvidenceGenericAutopsyReport5_description[];
extern u8 gGfxEvidenceGenericAutopsyReport6_description[];
extern u8 gGfxEvidenceLottasCamera1_description[];
extern u8 gGfxEvidenceGenericPhoto5_description[];
extern u8 gGfxEvidenceGenericPhoto6_description[];
extern u8 gGfxEvidenceGenericPhoto7_description[];
extern u8 gGfxProfilesMistyFey2_description[];
extern u8 gGfxEvidenceArticleGourdy_description[];
extern u8 gGfxEvidenceGenericAffidavit4_description[];
extern u8 gGfxEvidenceGenericPhoto8_description[];
extern u8 gGfxEvidenceBullet0_description[];
extern u8 gGfxEvidenceBullet1_description[];
extern u8 gGfxEvidencePistol_description[];
extern u8 gGfxEvidenceGenericAffidavit5_description[];
extern u8 gGfxEvidenceAirTube_description[];
extern u8 gGfxEvidenceMissile_description[];
extern u8 gGfxEvidenceFishingPole_description[];
extern u8 gGfxEvidenceMetalDetector_description[];
extern u8 gGfxEvidencePolly_description[];
extern u8 gGfxEvidenceYannisSafe_description[];
extern u8 gGfxEvidenceGenericAutopsyReport7_description[];
extern u8 gGfxEvidenceGenericPhoto9_description[];
extern u8 gGfxEvidenceGenericLetter3_description[];
extern u8 gGfxEvidenceDl6Bullet_description[];
extern u8 gGfxEvidenceMissileAngry_description[];
extern u8 gGfxEvidenceProfilePictures[];
extern u8 gPalEvidenceEmptyPlate[];
extern u8 gGfxEvidenceEmptyPlate[];
extern u8 gPalEvidenceLottasCamera[];
extern u8 gGfxEvidenceLottasCamera[];
extern u8 gPalEvidenceWiretap[];
extern u8 gGfxEvidenceWiretap[];
extern u8 gPalEvidenceMayasCellphone[];
extern u8 gGfxEvidenceMayasCellphone[];
extern u8 gPalEvidenceArticleGourdy[];
extern u8 gGfxEvidenceArticleGourdy[];
extern u8 gPalEvidenceBullet[];
extern u8 gGfxEvidenceBullet[];
extern u8 gUnknown_081B59CC_pal[];
extern u8 gUnknown_081B59CC_gfx[];
extern u8 gUnknown_081B61EC_pal[];
extern u8 gUnknown_081B61EC_gfx[];
extern u8 gUnknown_081B6A0C_pal[];
extern u8 gUnknown_081B6A0C_gfx[];
extern u8 gUnknown_081B722C_pal[];
extern u8 gUnknown_081B722C_gfx[];
extern u8 gUnknown_081B7A4C_pal[];
extern u8 gUnknown_081B7A4C_gfx[];
extern u8 gUnknown_081B826C_pal[];
extern u8 gUnknown_081B826C_gfx[];
extern u8 gUnknown_081B8A8C_pal[];
extern u8 gUnknown_081B8A8C_gfx[];
extern u8 gUnknown_081B92AC_pal[];
extern u8 gUnknown_081B92AC_gfx[];
extern u8 gUnknown_081B9ACC_pal[];
extern u8 gUnknown_081B9ACC_gfx[];
extern u8 gUnknown_081BA2EC_pal[];
extern u8 gUnknown_081BA2EC_gfx[];
extern u8 gUnknown_081BAB0C_pal[];
extern u8 gUnknown_081BAB0C_gfx[];
extern u8 gUnknown_081BB32C_pal[];
extern u8 gUnknown_081BB32C_gfx[];
extern u8 gUnknown_081BBB4C_pal[];
extern u8 gUnknown_081BBB4C_gfx[];
extern u8 gUnknown_081BC36C_pal[];
extern u8 gUnknown_081BC36C_gfx[];
extern u8 gUnknown_081BCB8C_pal[];
extern u8 gUnknown_081BCB8C_gfx[];
extern u8 gUnknown_081BD3AC_pal[];
extern u8 gUnknown_081BD3AC_gfx[];
extern u8 gUnknown_081BDBCC_pal[];
extern u8 gUnknown_081BDBCC_gfx[];
extern u8 gUnknown_081BE3EC_pal[];
extern u8 gUnknown_081BE3EC_gfx[];
extern u8 gUnknown_081BEC0C_pal[];
extern u8 gUnknown_081BEC0C_gfx[];
extern u8 gUnknown_081BF42C_pal[];
extern u8 gUnknown_081BF42C_gfx[];
extern u8 gUnknown_081BFC4C_pal[];
extern u8 gUnknown_081BFC4C_gfx[];
extern u8 gUnknown_081C046C_pal[];
extern u8 gUnknown_081C046C_gfx[];
extern u8 gUnknown_081C0C8C_pal[];
extern u8 gUnknown_081C0C8C_gfx[];
extern u8 gUnknown_081C14AC_pal[];
extern u8 gUnknown_081C14AC_gfx[];
extern u8 gUnknown_081C1CCC_pal[];
extern u8 gUnknown_081C1CCC_gfx[];
extern u8 gUnknown_081C24EC_pal[];
extern u8 gUnknown_081C24EC_gfx[];
extern u8 gUnknown_081C2D0C_pal[];
extern u8 gUnknown_081C2D0C_gfx[];
extern u8 gUnknown_081C352C_pal[];
extern u8 gUnknown_081C352C_gfx[];
extern u8 gUnknown_081C3D4C_pal[];
extern u8 gUnknown_081C3D4C_gfx[];
extern u8 gUnknown_081C456C_pal[];
extern u8 gUnknown_081C456C_gfx[];
extern u8 gUnknown_081C4D8C_pal[];
extern u8 gUnknown_081C4D8C_gfx[];
extern u8 gUnknown_081C55AC_pal[];
extern u8 gUnknown_081C55AC_gfx[];
extern u8 gUnknown_081C5DCC_pal[];
extern u8 gUnknown_081C5DCC_gfx[];
extern u8 gUnknown_081C65EC_pal[];
extern u8 gUnknown_081C65EC_gfx[];
extern u8 gUnknown_081C6E0C_pal[];
extern u8 gUnknown_081C6E0C_gfx[];
extern u8 gUnknown_081C762C_pal[];
extern u8 gUnknown_081C762C_gfx[];
extern u8 gUnknown_081C7E4C_pal[];
extern u8 gUnknown_081C7E4C_gfx[];
extern u8 gUnknown_081C866C_pal[];
extern u8 gUnknown_081C866C_gfx[];
extern u8 gUnknown_081C8E8C_pal[];
extern u8 gUnknown_081C8E8C_gfx[];
extern u8 gUnknown_081C96AC_pal[];
extern u8 gUnknown_081C96AC_gfx[];
extern u8 gUnknown_081C9ECC_pal[];
extern u8 gUnknown_081C9ECC_gfx[];
extern u8 gUnknown_081CA6EC_pal[];
extern u8 gUnknown_081CA6EC_gfx[];
extern u8 gUnknown_081CAF0C_pal[];
extern u8 gUnknown_081CAF0C_gfx[];
extern u8 gUnknown_081CB72C_pal[];
extern u8 gUnknown_081CB72C_gfx[];
extern u8 gUnknown_081CBF4C_pal[];
extern u8 gUnknown_081CBF4C_gfx[];
extern u8 gUnknown_081CC76C_pal[];
extern u8 gUnknown_081CC76C_gfx[];
extern u8 gUnknown_081CCF8C_pal[];
extern u8 gUnknown_081CCF8C_gfx[];
extern u8 gUnknown_081CD7AC_pal[];
extern u8 gUnknown_081CD7AC_gfx[];
extern u8 gUnknown_081CDFCC_pal[];
extern u8 gUnknown_081CDFCC_gfx[];
extern u8 gUnknown_081CE7EC_pal[];
extern u8 gUnknown_081CE7EC_gfx[];
extern u8 gUnknown_081CF00C_pal[];
extern u8 gUnknown_081CF00C_gfx[];
extern u8 gUnknown_081CF82C_pal[];
extern u8 gUnknown_081CF82C_gfx[];
extern u8 gUnknown_081D004C_pal[];
extern u8 gUnknown_081D004C_gfx[];
extern u8 gUnknown_081D086C_pal[];
extern u8 gUnknown_081D086C_gfx[];
extern u8 gUnknown_081D108C_pal[];
extern u8 gUnknown_081D108C_gfx[];
extern u8 gUnknown_081D18AC_pal[];
extern u8 gUnknown_081D18AC_gfx[];
extern u8 gUnknown_081D20CC_pal[];
extern u8 gUnknown_081D20CC_gfx[];
extern u8 gUnknown_081D28EC_pal[];
extern u8 gUnknown_081D28EC_gfx[];
extern u8 gTextPal[];
extern u8 gCharSet[];  
extern u8 gPalChoiceSelected[];
extern u8 gPalChoiceGreyedOut[];
	
extern u8 gGfxLocationChoices[];
extern u8 gGfxTalkChoices[];
extern u8 gPalMapMarkersPalette[];
extern u8 gGfxMapMarkersKiller[];
extern u8 gGfxMapMarkersVictim[];
extern u8 gGfxMapMarkersCase2MiaBody[];
extern u8 gGfxMapMarkersCase2Thinker[];
extern u8 gGfxMapMarkersCase3Studio1[];
extern u8 gGfxMapMarkersCase3Studio2[];
extern u8 gGfxMapMarkersCase3EmployeeArea[];
extern u8 gGfxMapMarkersCase3Gate[];
extern u8 gGfxMapMarkersCase3MainGate[];
extern u8 gGfxMapMarkersGreen[];
extern u8 gGfxMapMarkersCase4BoatHorizontal[];
extern u8 gGfxMapMarkersCase4BoatRentalShop[];
extern u8 gGfxMapMarkersCase4LottaSuv[];
extern u8 gGfxMapMarkersCase4BoatVertical[];
extern u8 gGfx_BG000_FeyCoMurderNight[];
extern u8 gGfx_BG001_WrightCoOfficeDay[];
extern u8 gGfx_BG002_CourtDefendantLobby[];
extern u8 gGfx_BG003_CourtDefenseBench[];
extern u8 gGfx_BG004_CourtProsecutionBench[];
extern u8 gGfx_BG005_CourtWitnessStand[];
extern u8 gGfx_BG006_CourtRoom[];
extern u8 gGfx_BG007_CourtCoCounsel[];
extern u8 gGfx_BG008_CourtJudgeSeat[];
extern u8 gGfx_BG009_FeyCoEntranceNight[];
extern u8 gGfx_BG010_Case2MayaSeeingDeadMia[];
extern u8 gGfx_BG011_GlobalStudiosStudioPath[];
extern u8 gGfx_BG012_GlobalStudiosStaffArea[];
extern u8 gGfx_BG013_WitnessMiaDodgingRight[];
extern u8 gGfx_BG014_WitnessMiaDodgingLeft[];
extern u8 gGfx_BG015_EvidenceFeyCoDiagram[];
extern u8 gGfx_BG016_WitnessAprilGettingRoomService[];
extern u8 gGfx_BG017_Case2MiaDeadOnGround[];
extern u8 gGfx_BG018_Case2PhoenixMayaMia[];
extern u8 gGfx_BG019_GlobalStudiosStudio2Trailer[];
extern u8 gGfx_BG020_Case2AprilCallingPolice[];
extern u8 gGfx_BG021_Case2ReddHittingMia[];
extern u8 gGfx_BG022_Case2MiaBeingAttacked[];
extern u8 gGfx_BG023_Case2ReddHoldingThinker[];
extern u8 gGfx_BG024_GlobalStudiosDressingRoom[];
extern u8 gGfx_BG025_GlobalStudiosFrontGate[];
extern u8 gGfx_BG026_GlobalStudiosStudio1[];
extern u8 gGfx_BG027_Gavel2[];
extern u8 gGfx_BG028_Gavel3[];
extern u8 gGfx_BG029_EvidenceFeyCoDiagramLight[];
extern u8 gGfx_BG030_DetentionCenter[];
extern u8 gGfx_BG031_BlueCorpCeoOffice[];
extern u8 gGfx_BG032_GatewaterHotelRoom[];
extern u8 gGfx_BG033_Case1FrankHoldingThinker[];
extern u8 gGfx_BG034_Case1CindyDeadOnFloor[];
extern u8 gGfx_BG035_Case1CindyAndFrank[];
extern u8 gGfx_BG036_Case1FrankCloseup1[];
extern u8 gGfx_BG037_Case1FrankCloseup2[];
extern u8 gGfx_BG038_Case1FrankCloseup3[];
extern u8 gGfx_BG039_GrossbergLawOfficesPainting[];
extern u8 gGfx_BG040_GrossbergLawOfficesNoPainting[];
extern u8 gGfx_BG041_WitnessCindyFindingFrank[];
extern u8 gGfx_BG042_WitnessFrankWitnessingLarry[];
extern u8 gGfx_BG043_WitnessFrankFindingCindy[];
extern u8 gGfx_BG044_GlobalStudiosStudio2[];
extern u8 gGfx_BG045_EvidenceMayaPhoneCall1[];
extern u8 gGfx_BG046_EvidenceMayaPhoneCall2[];
extern u8 gGfx_BG047_Gavel1[];
extern u8 gGfx_BG048_EvidenceMayaPhoneCall3[];
extern u8 gGfx_BG049_WitnessJackAtGate[];
extern u8 gGfx_BG050_WitnessJackDeadAtStudio1[];
extern u8 gGfx_BG051_WitnessJackWearingSamuraiSuit[];
extern u8 gGfx_BG052_WitnessVasquezPushingJackAftermath[];
extern u8 gGfx_BG053_WitnessStaffEatingLunch[];
extern u8 gGfx_BG054_WitnessStudio2JackAndVasquez[];
extern u8 gGfx_BG055_WitnessCodyWitnessingSamurai[];
extern u8 gGfx_BG056_WitnessSamuraiAtStudio2[];
extern u8 gGfx_BG057_Witness5YearOldPhoto[];
extern u8 gGfx_BG058_GlobalStudiosStudio2TrailerMafia[];
extern u8 gGfx_BG059_Case3PinkPrincess[];
extern u8 gGfx_BG060_GlobalStudiosMonkeyOnStudio2Path[];
extern u8 gGfx_BG061_EvidenceGlobalStudiosDiagram[];
extern u8 gGfx_BG062_WitnessWillPowerInjury[];
extern u8 gGfx_BG063_Case3SteelSamurai[];
	
extern u8 gPal_BG064_BustupPhoenix[];
extern u8 gMap_BG064_BustupPhoenix[];
extern u8 gGfx_BG064_BustupPhoenix[];
extern u8 gPal_BG065_BustupEdgeworth[];
extern u8 gMap_BG065_BustupEdgeworth[];
extern u8 gGfx_BG065_BustupEdgeworth[];
extern u8 gGfx_BG066_Speedlines[];
extern u8 gGfx_BG067_CourtroomBackground[];
extern u8 gGfx_BG068_CapcomScreen[];
extern u8 gGfx_BG069_SteelSamuraiNight[];
extern u8 gGfx_BG070_GourdLakeEntrance[];
extern u8 gGfx_BG071_GourdLakePark[];
extern u8 gGfx_BG072_GourdLakeParkNoBalloon[];
extern u8 gGfx_BG073_GourdLakeBeach[];
extern u8 gGfx_BG074_Case3IntroGrass[];
extern u8 gGfx_BG075_Case3IntroTrees[];
extern u8 gGfx_BG076_Case3IntroSteelSamuraiPosing[];
extern u8 gGfx_BG077_GourdLakeBoatRental[];
extern u8 gGfx_BG078_GourdLakeBoatRentalHouse[];
extern u8 gGfx_BG079_PoliceStationLobby[];
extern u8 gGfx_BG080_PoliceStationEvidenceStorage[];
extern u8 gGfx_BG081_Case3IntroFaceoff[];
extern u8 gGfx_BG082_EvidenceDL6CaseFile1[];
extern u8 gGfx_BG083_EvidenceDL6CaseFile2[];
extern u8 gGfx_BG084_EvidenceDL6CaseFile3[];
extern u8 gGfx_BG085_Case4TrainStation[];
extern u8 gGfx_BG086_Case4GourdLakeMap[];
extern u8 gGfx_BG087_Case4LottasPhotoZoomed[];
extern u8 gGfx_BG088_Case4ElevatorPhoto[];
extern u8 gGfx_BG089_Case4Newspaper[];
extern u8 gGfx_BG090_Case4BalloonLaunching[];
extern u8 gGfx_BG091_Case4BalloonLandingInLake[];
extern u8 gGfx_BG092_Case4LarrySearchingLake[];
extern u8 gGfx_BG093_Case4ClassTrial[];
extern u8 gGfx_BG094_Case4LottasPhotoFar[];
extern u8 gGfx_BG095_Case4ClassTrialPhoenix[];
extern u8 gGfx_BG096_Case4ClassTrialEdgeworth[];
extern u8 gGfx_BG097_Case4ClassTrialLarry[];
extern u8 gGfx_BG098_Case4YanniThreatening[];
extern u8 gGfx_BG099_Case4ShootWaterFromBoat[];
extern u8 gGfx_BG100_Case4ElevatorSuffocating[];
extern u8 gGfx_BG101_Case4ElevatorEdgeworthThrow[];
extern u8 gGfx_BG102_Case4ElevatorVonKarmaShot[];
extern u8 gGfx_BG103_Case4ElevatorVonKarmaInDoor[];
extern u8 gGfx_BG104_Case4TrainStationMayaLeaving[];
extern u8 gGfx_BG105_TrialWon[];
extern u8 gGfx_BG106_Case4IntroLakeOneInBoat[];
extern u8 gGfx_BG107_Case4IntroThreatenedToShoot[];
extern u8 gGfx_BG108_Case4IntroEdgeworthPicksUpGun[];
extern u8 gGfx_BG109_CapcomScreenBW[];
extern u8 gGfx_BG110_DemoTitleScreen[];
extern u8 gGfx_BG111_DemoComingSoon[];
extern u8 gGfx_SpeedlinesFirstAndLastColumns[];
	
extern u8 gGfxCourtscroll01[];
extern u8 gGfxCourtscroll02[];
extern u8 gGfxCourtscroll03[];

extern u8 gGfxPixAnimationChar01[];
extern u8 gGfxSeqAnimationChar01[];
extern u8 gGfxPixAnimationChar02[];
extern u8 gGfxSeqAnimationChar02[];
extern u8 gGfxPixAnimationChar03[];
extern u8 gGfxSeqAnimationChar03[];
extern u8 gGfxPixAnimationChar04[];
extern u8 gGfxSeqAnimationChar04[];
extern u8 gGfxPixAnimationChar05[];
extern u8 gGfxSeqAnimationChar05[];
extern u8 gGfxPixAnimationChar06[];
extern u8 gGfxSeqAnimationChar06[];
extern u8 gGfxPixAnimationChar07[];
extern u8 gGfxSeqAnimationChar07[];
extern u8 gGfxPixAnimationChar08[];
extern u8 gGfxSeqAnimationChar08[];
extern u8 gGfxPixAnimationChar09[];
extern u8 gGfxSeqAnimationChar09[];
extern u8 gGfxPixAnimationChar10[];
extern u8 gGfxSeqAnimationChar10[];
extern u8 gGfxPixAnimationChar11[];
extern u8 gGfxSeqAnimationChar11[];
extern u8 gGfxPixAnimationChar12[];
extern u8 gGfxSeqAnimationChar12[];
extern u8 gGfxPixAnimationChar13[];
extern u8 gGfxSeqAnimationChar13[];
extern u8 gGfxPixAnimationChar14[];
extern u8 gGfxSeqAnimationChar14[];
extern u8 gGfxPixAnimationChar15[];
extern u8 gGfxSeqAnimationChar15[];
extern u8 gGfxPixAnimationChar16[];
extern u8 gGfxSeqAnimationChar16[];
extern u8 gGfxPixAnimationChar17[];
extern u8 gGfxSeqAnimationChar17[];
extern u8 gGfxPixAnimationChar18[];
extern u8 gGfxSeqAnimationChar18[];
extern u8 gGfxPixAnimationChar19[];
extern u8 gGfxSeqAnimationChar19[];
extern u8 gGfxPixAnimationChar20[];
extern u8 gGfxSeqAnimationChar20[];
extern u8 gGfxPixAnimationChar21[];
extern u8 gGfxSeqAnimationChar21[];
extern u8 gGfxPixAnimationChar22[];
extern u8 gGfxSeqAnimationChar22[];
extern u8 gGfxPixAnimationChar23[];
extern u8 gGfxSeqAnimationChar23[];
extern u8 gGfxPixAnimationChar24[];
extern u8 gGfxSeqAnimationChar24[];
extern u8 gGfxPixAnimationChar25[];
extern u8 gGfxSeqAnimationChar25[];
extern u8 gGfxPixAnimationChar26[];
extern u8 gGfxSeqAnimationChar26[];
extern u8 gGfxPixAnimationTileset01[];
extern u8 gGfxSeqAnimation01[];
extern u8 gGfxSeqAnimation02[];
extern u8 gGfxSeqAnimation03[];
extern u8 gGfxSeqAnimation04[];
extern u8 gGfxSeqAnimation05[];
extern u8 gGfxSeqAnimation06[];
extern u8 gGfxPixAnimationTileset02[];
extern u8 gGfxSeqAnimation07[];
extern u8 gGfxSeqAnimation08[];
extern u8 gGfxSeqAnimation09[];
extern u8 gGfxSeqAnimation10[];
extern u8 gGfxSeqAnimation11[];
extern u8 gGfxSeqAnimation12[];
extern u8 gGfxSeqAnimation13[];
extern u8 gGfxSeqAnimation14[];
extern u8 gGfxSeqAnimation15[];
extern u8 gGfxSeqAnimation16[];
extern u8 gGfxSeqAnimation17[];
extern u8 gGfxSeqAnimation18[];
extern u8 gGfxSeqAnimation19[];
extern u8 gGfxSeqAnimation20[];
extern u8 gGfxSeqAnimation21[];
extern u8 gGfxSeqAnimation22[];
extern u8 gGfxSeqAnimation23[];
extern u8 gGfxSeqAnimation24[];
extern u8 gGfxSeqAnimation25[];
extern u8 gGfxSeqAnimation26[];
extern u8 gGfxSeqAnimation27[];
extern u8 gGfxSeqAnimation28[];
extern u8 gGfxSeqAnimation29[];
extern u8 gGfxSeqAnimation30[];
extern u8 gGfxSeqAnimation31[];
extern u8 gGfxSeqAnimation32[];
extern u8 gGfxSeqAnimation33[];
extern u8 gGfxSeqAnimation34[];
extern u8 gGfxSeqAnimation35[];
extern u8 gGfxSeqAnimation36[];
extern u8 gGfxSeqAnimation37[];
extern u8 gGfxSeqAnimation38[];
extern u8 gGfxSeqAnimation39[];
extern u8 gGfxSeqAnimation40[];
extern u8 gGfxSeqAnimation41[];
extern u8 gGfxSeqAnimation42[];
extern u8 gGfxSeqAnimation43[];
extern u8 gGfxSeqAnimation44[];
extern u8 gGfxSeqAnimation45[];
extern u8 gGfxSeqAnimation46[];
extern u8 gGfxSeqAnimation47[];
extern u8 gGfxSeqAnimation48[];
extern u8 gGfxSeqAnimation49[];
extern u8 gGfxSeqAnimation50[];
extern u8 gGfxSeqAnimation51[];
extern u8 gGfxSeqAnimation52[];
extern u8 gGfxSeqAnimation53[];
extern u8 gGfxSeqAnimation54[];
#endif


#endif