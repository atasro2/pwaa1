	.section .data
    .include "asm/macros.inc"

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
