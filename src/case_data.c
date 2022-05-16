#include "global.h"
#include "case_data.h"
#include "animation.h"
#include "background.h"
#include "investigation.h"
#include "script.h"
#include "utils.h"
#include "sound.h"

const u8 gCaseStartProcess[] = {
    3,
    4,
    3,
    4,
    3,
    4,
    3,
    4,
    3,
    4,
    3,
    4,
    3,
    4,
    3,
    4,
    3,
};

const u16 gCaseGameoverSections[] = {
    0xF1,
    0x0,
    0x11D,
    0x0,
    0xE8,
    0x0,
    0xDC,
    0x0,
    0xFD,
    0x0,
    0xE0,
    0x0,
    0xF9,
    0x0,
    0xE4,
    0x0,
    0xF7
};

const u8 * gCourtRecordInitialItemLists[17] = {
	gCourtRecordInitialItems_0_0,
	gCourtRecordInitialItems_1_0,
	gCourtRecordInitialItems_1_1,
	gCourtRecordInitialItems_1_2,
	gCourtRecordInitialItems_1_3,
	gCourtRecordInitialItems_2_0,
	gCourtRecordInitialItems_2_1,
	gCourtRecordInitialItems_2_2,
	gCourtRecordInitialItems_2_3,
	gCourtRecordInitialItems_2_4,
	gCourtRecordInitialItems_2_5,
	gCourtRecordInitialItems_3_0,
	gCourtRecordInitialItems_3_1,
	gCourtRecordInitialItems_3_2,
	gCourtRecordInitialItems_3_3,
	gCourtRecordInitialItems_3_4,
	gCourtRecordInitialItems_3_5,
};

const struct Struct811DC54 * gUnknown_0811DC54[17] = {
	gUnknown_08014DAC,
	gUnknown_08014E48,
	gUnknown_08014E48,
	gUnknown_08014EC0,
	gUnknown_08014EC0,
	gUnknown_080158D4,
	gUnknown_080158D4,
	gUnknown_0801591C,
	gUnknown_0801591C,
	gUnknown_08015944,
	gUnknown_08015974,
	gUnknown_080171E8,
	gUnknown_080171E8,
	gUnknown_08017240,
	gUnknown_08017258,
	gUnknown_08017298,
	gUnknown_08017298,
};

const struct Struct811DC98 * gUnknown_0811DC98[17] = {
	gUnknown_08014F30,
	gUnknown_08014F30,
	gUnknown_08014F30,
	gUnknown_080153BC,
	gUnknown_08014F30,
	gUnknown_080159C4,
	gUnknown_080159C4,
	gUnknown_08015F04,
	gUnknown_080159C4,
	gUnknown_08016ABC,
	gUnknown_080159C4,
	gUnknown_080172E8,
	gUnknown_080172E8,
	gUnknown_080179BC,
	gUnknown_080172E8,
	gUnknown_080181E4,
	gUnknown_080172E8,
};

void (*gInvestigationSegmentSetupFunctions[17])(struct Main *) = {
	InvestigationDummy,
	InvestigationSegmentSetup_1_0,
	InvestigationDummy,
	InvestigationSegmentSetup_1_2,
	InvestigationDummy,
	InvestigationSegmentSetup_2_0,
	InvestigationDummy,
	InvestigationSegmentSetup_2_2,
	InvestigationDummy,
	InvestigationSegmentSetup_2_4,
	InvestigationDummy,
	InvestigationSegmentSetup_3_0,
	InvestigationDummy,
	InvestigationSegmentSetup_3_2,
	InvestigationDummy,
	InvestigationSegmentSetup_3_4,
	InvestigationDummy,
};

void (*gInvestigationRoomSetupFunctions[17])(struct Main *) = {
	InvestigationDummy,
	InvestigationRoomSetup_1_0,
	InvestigationDummy,
	InvestigationRoomSetup_1_2,
	InvestigationDummy,
	InvestigationRoomSetup_2_0,
	InvestigationDummy,
	InvestigationRoomSetup_2_2,
	InvestigationDummy,
	InvestigationRoomSetup_2_4,
	InvestigationDummy,
	InvestigationRoomSetup_3_0,
	InvestigationDummy,
	InvestigationRoomSetup_3_2,
	InvestigationDummy,
	InvestigationRoomSetup_3_4,
	InvestigationDummy,
};

void (*gInvestigationRoomUpdateFunctions[17])(struct Main *) = {
	InvestigationDummy,
	InvestigationRoomUpdate_1_0,
	InvestigationDummy,
	InvestigationRoomUpdate_1_2,
	InvestigationDummy,
	InvestigationRoomUpdate_2_0,
	InvestigationDummy,
	InvestigationRoomUpdate_2_2,
	InvestigationDummy,
	InvestigationRoomUpdate_2_4,
	InvestigationDummy,
	InvestigationRoomUpdate_3_0,
	InvestigationDummy,
	InvestigationRoomUpdate_3_2,
	InvestigationDummy,
	InvestigationRoomUpdate_3_4,
	InvestigationDummy,
};

void InvestigationSetPersonAnimation(u32 arg0, u32 arg1, u32 arg2) // Set_char
{
    struct Main * main = &gMain;
    main->talkingAnimationOffset = arg1;
    main->idleAnimationOffset = arg2;
    PlayPersonAnimation(arg0, 0, arg1, 0);
    gInvestigation.personActive = 1;
    sub_800B7A8(&gInvestigation, 0xF);
}

void InvestigationSetScriptSectionAndFlag(u32 section, u32 flagId) // Set_event
{
    ChangeFlag(0, flagId, TRUE);
    ChangeScriptSection(section);
    SlideTextbox(1);
    PauseBGM();
}

void sub_8002CF0(u32 section, u32 flagId) // unused? Set_event2?
{
    struct OamAttrs * sprite = &gOamObjects[49];
    u32 i = 0;

    for(i = 0; i < 4; sprite++, i++)
    {
        sprite->attr0 = SPRITE_ATTR0((-64 & 255), ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        //64x32 sprite
        sprite->attr1 = SPRITE_ATTR1_NONAFFINE(60 * i, 0, 0, 3);
        sprite->attr2 = SPRITE_ATTR2((0x100 + i * 0x20), 0, 5);
    }
    SET_PROCESS(4, 1, 0, 0);
    ChangeFlag(0, flagId, TRUE);
    ChangeScriptSection(section);
    SlideTextbox(1);
    sub_800B7A8(&gInvestigation, 0xF);
    gInvestigation.unkE = 0x40;
}

void InvestigationDummy(struct Main *main)
{
}
