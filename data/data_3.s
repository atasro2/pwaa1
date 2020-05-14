	.section .data
    .include "asm/macros.inc"

    .global gGameProcesses
gGameProcesses: @ there was a debug menu in here at one point
    .4byte CapcomLogoProcess
    .4byte TitleScreenProcess
    .4byte GameOverScreenProcess
    .4byte GameProcess03 @ trial
    .4byte GameProcess04 @ investigation
    .4byte GameProcess05 @ testimony
    .4byte GameProcess06 @ cross exam
    .4byte CourtRecordProcess @ court record
    .4byte GameProcess08 @ for displaying stuff that gets added to court record
    .4byte GameProcess09 @ deliver judgement or some bs
    .4byte SaveGameProcess
    .4byte EpisodeClearedProcess
    .4byte SelectEpisodeProcess
    .4byte ContinueSaveProcess
    .4byte ClearSaveProcess

    .global gUnknown_0811DBF0
gUnknown_0811DBF0:
    .4byte nullsub_1
	.4byte sub_800254C
	.4byte sub_800254C
	.4byte sub_8002734
	.4byte sub_8002734

    .global gFlagPtrs
gFlagPtrs:
    .4byte gMain+0x94 @ sce flag
	.4byte gMain+0xB4 @ status flag
	.4byte gMain+0xB8 @ talk end flag

    .global gUnknown_0811DC10
gUnknown_0811DC10:
	.4byte gUnknown_08014DA4
	.4byte gUnknown_08014E0C
	.4byte gUnknown_08014E10
	.4byte gUnknown_08014E20
	.4byte gUnknown_08014E32
	.4byte gUnknown_08015870
	.4byte gUnknown_08015876
	.4byte gUnknown_08015884
	.4byte gUnknown_08015893
	.4byte gUnknown_080158A7
	.4byte gUnknown_080158BB
	.4byte gUnknown_08017168
	.4byte gUnknown_0801716E
	.4byte gUnknown_0801717F
	.4byte gUnknown_08017195
	.4byte gUnknown_080171B1
	.4byte gUnknown_080171CD

    .global gUnknown_0811DC54
gUnknown_0811DC54:
	.4byte gUnknown_08014DAC
	.4byte gUnknown_08014E48
	.4byte gUnknown_08014E48
	.4byte gUnknown_08014EC0
	.4byte gUnknown_08014EC0
	.4byte gUnknown_080158D4
	.4byte gUnknown_080158D4
	.4byte gUnknown_0801591C
	.4byte gUnknown_0801591C
	.4byte gUnknown_08015944
	.4byte gUnknown_08015974
	.4byte gUnknown_080171E8
	.4byte gUnknown_080171E8
	.4byte gUnknown_08017240
	.4byte gUnknown_08017258
	.4byte gUnknown_08017298
	.4byte gUnknown_08017298

    .global gUnknown_0811DC98
gUnknown_0811DC98:
	.4byte gUnknown_08014F30
	.4byte gUnknown_08014F30
	.4byte gUnknown_08014F30
	.4byte gUnknown_080153BC
	.4byte gUnknown_08014F30
	.4byte gUnknown_080159C4
	.4byte gUnknown_080159C4
	.4byte gUnknown_08015F04
	.4byte gUnknown_080159C4
	.4byte gUnknown_08016ABC
	.4byte gUnknown_080159C4
	.4byte gUnknown_080172E8
	.4byte gUnknown_080172E8
	.4byte gUnknown_080179BC
	.4byte gUnknown_080172E8
	.4byte gUnknown_080181E4
	.4byte gUnknown_080172E8

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
    .4byte Command21
    .4byte Command22
    .4byte Command23
    .4byte Command24
    .4byte Command25
    .4byte Command26
    .4byte Command27
    .4byte Command28
    .4byte Command29
    .4byte Command2A
    .4byte Command2B
    .4byte Command2C
    .4byte Command02
    .4byte Command2E
    .4byte Command2F
    .4byte Command30
    .4byte Command31
    .4byte Command32
    .4byte Command33
    .4byte Command34
    .4byte Command35
    .4byte Command36
    .4byte Command37
    .4byte Command38
    .4byte Command39
    .4byte Command3A
    .4byte Command3B
    .4byte Command3C
    .4byte Command3D
    .4byte Command3E
    .4byte Command3F
    .4byte Command40
    .4byte Command41
    .4byte Command42
    .4byte Command43
    .4byte Command44
    .4byte Command15
    .4byte Command46
    .4byte Command47
    .4byte Command48
    .4byte Command49
    .4byte Command4A
    .4byte Command4B
    .4byte Command4C
    .4byte Command4D
    .4byte Command4E
    .4byte Command4F
    .4byte Command50
    .4byte Command51
    .4byte Command52
    .4byte Command53
    .4byte Command54
    .4byte Command55
    .4byte Command56
    .4byte Command57
    .4byte Command58
    .4byte Command59
    .4byte Command5A
    .4byte Command5B
    .4byte Command5C
    .4byte Command5D
    .4byte Command5E
    .4byte Command5F

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
    .4byte sub_8011068
    .4byte sub_80110A8
    .4byte sub_8010F68
    .4byte sub_8010FA8
    .4byte sub_8010FEC
    .4byte sub_801102C
