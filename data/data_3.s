	.section .data
    .include "asm/macros.inc"

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

    .global gSaveGameSubProcesses
gSaveGameSubProcesses:
    .4byte SaveGameInit1SubProcess
	.4byte SaveGameInit2SubProcess
	.4byte SaveGameInitButtonsSubProcess
	.4byte SaveGameWaitForInputSubProcess
	.4byte SaveGameExitSaveScreenSubProcess
	.4byte SaveGameSubProcess5
	.4byte sub_8008CC0
	.4byte sub_8008D68

    .global gProcess3SubProcesses
gProcess3SubProcesses:
    .4byte sub_800A3EC
    .4byte sub_800A5B0
    .4byte sub_800A6AC

    .global gProcess5SubProcesses
gProcess5SubProcesses:
    .4byte sub_800A894
    .4byte sub_800A8E0
    .4byte sub_800A9FC
    .4byte sub_800A730

    .global gProcess6SubProcesses
gProcess6SubProcesses:
    .4byte sub_800AB58
	.4byte sub_800AC1C
	.4byte nullsub_32
	.4byte sub_800AA10
	.4byte sub_800AE58
	.4byte sub_800AF2C

    .global gProcess4SubProcesses
gProcess4SubProcesses:
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
