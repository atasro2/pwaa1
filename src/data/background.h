#include "graphics.h"

const struct Background gBackgroundTable[] =
{
	{
		.bgData = gGfx_BG000_FeyCoMurderNight,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG001_WrightCoOfficeDay,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG002_CourtDefendantLobby,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG003_CourtDefenseBench,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG004_CourtProsecutionBench,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG005_CourtWitnessStand,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG006_CourtRoom,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG007_CourtCoCounsel,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG008_CourtJudgeSeat,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG009_FeyCoEntranceNight,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG010_Case2MayaSeeingDeadMia,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG011_GlobalStudiosStudioPath,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG012_GlobalStudiosStaffArea,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG013_WitnessMiaDodgingRight,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG014_WitnessMiaDodgingLeft,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG015_EvidenceFeyCoDiagram,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG016_WitnessAprilGettingRoomService,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG017_Case2MiaDeadOnGround,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG018_Case2PhoenixMayaMia,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG019_GlobalStudiosStudio2Trailer,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG020_Case2AprilCallingPolice,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG021_Case2ReddHittingMia,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG022_Case2MiaBeingAttacked,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG023_Case2ReddHoldingThinker,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG024_GlobalStudiosDressingRoom,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG025_GlobalStudiosFrontGate,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG026_GlobalStudiosStudio1,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG027_Gavel2,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG028_Gavel3,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG029_EvidenceFeyCoDiagramLight,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG030_DetentionCenter,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG031_BlueCorpCeoOffice,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG032_GatewaterHotelRoom,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG033_Case1FrankHoldingThinker,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG034_Case1CindyDeadOnFloor,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG035_Case1CindyAndFrank,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG036_Case1FrankCloseup1,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG037_Case1FrankCloseup2,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG038_Case1FrankCloseup3,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG039_GrossbergLawOfficesPainting,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG040_GrossbergLawOfficesNoPainting,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG041_WitnessCindyFindingFrank,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG042_WitnessFrankWitnessingLarry,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG043_WitnessFrankFindingCindy,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG044_GlobalStudiosStudio2,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG045_EvidenceMayaPhoneCall1,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG046_EvidenceMayaPhoneCall2,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG047_Gavel1,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG048_EvidenceMayaPhoneCall3,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG049_WitnessJackAtGate,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG050_WitnessJackDeadAtStudio1,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG051_WitnessJackWearingSamuraiSuit,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG052_WitnessVasquezPushingJackAftermath,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG053_WitnessStaffEatingLunch,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG054_WitnessStudio2JackAndVasquez,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG055_WitnessCodyWitnessingSamurai,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG056_WitnessSamuraiAtStudio2,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG057_Witness5YearOldPhoto,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG058_GlobalStudiosStudio2TrailerMafia,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG059_Case3PinkPrincess,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG060_GlobalStudiosMonkeyOnStudio2Path,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG061_EvidenceGlobalStudiosDiagram,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG062_WitnessWillPowerInjury,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG063_Case3SteelSamurai,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gPal_BG064_BustupPhoenix,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gPal_BG065_BustupEdgeworth,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG066_Speedlines,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_SPECIAL_SPEEDLINE | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG067_CourtroomBackground,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG068_CapcomScreen,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG069_SteelSamuraiNight,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG070_GourdLakeEntrance,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG071_GourdLakePark,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG072_GourdLakeParkNoBalloon,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG073_GourdLakeBeach,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG069_SteelSamuraiNight,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_NO_SCROLL | BG_MODE_SCROLL_SPECIAL_SLOW | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG069_SteelSamuraiNight,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_NO_SCROLL | BG_MODE_SCROLL_SPECIAL_SLOW | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG076_Case3IntroSteelSamuraiPosing,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG077_GourdLakeBoatRental,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG078_GourdLakeBoatRentalHouse,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG079_PoliceStationLobby,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG080_PoliceStationEvidenceStorage,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG081_Case3IntroFaceoff,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG082_EvidenceDL6CaseFile1,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG083_EvidenceDL6CaseFile2,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG084_EvidenceDL6CaseFile3,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG085_Case4TrainStation,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG086_Case4GourdLakeMap,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG087_Case4LottasPhotoZoomed,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG088_Case4ElevatorPhoto,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG089_Case4Newspaper,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG090_Case4BalloonLaunching,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG091_Case4BalloonLandingInLake,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG092_Case4LarrySearchingLake,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG093_Case4ClassTrial,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG094_Case4LottasPhotoFar,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG095_Case4ClassTrialPhoenix,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG096_Case4ClassTrialEdgeworth,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG097_Case4ClassTrialLarry,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG098_Case4YanniThreatening,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG099_Case4ShootWaterFromBoat,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG100_Case4ElevatorSuffocating,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG101_Case4ElevatorEdgeworthThrow,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG102_Case4ElevatorVonKarmaShot,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG103_Case4ElevatorVonKarmaInDoor,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG104_Case4TrainStationMayaLeaving,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG105_TrialWon,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG106_Case4IntroLakeOneInBoat,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG107_Case4IntroThreatenedToShoot,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG108_Case4IntroEdgeworthPicksUpGun,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG109_CapcomScreenBW,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG110_DemoTitleScreen,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG111_DemoComingSoon,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
};
