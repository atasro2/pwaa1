#include "global.h"
#include "case_data.h"
#include "animation.h"
#include "background.h"
#include "investigation.h"
#include "script.h"
#include "utils.h"
#include "sound.h"
#include "constants/process.h"
#include "constants/oam_allocations.h"

// Sce_init_proc_tbl
const u8 gCaseStartProcess[] = {
    COURT_PROCESS,
    INVESTIGATION_PROCESS,
    COURT_PROCESS,
    INVESTIGATION_PROCESS,
    COURT_PROCESS,
    INVESTIGATION_PROCESS,
    COURT_PROCESS,
    INVESTIGATION_PROCESS,
    COURT_PROCESS,
    INVESTIGATION_PROCESS,
    COURT_PROCESS,
    INVESTIGATION_PROCESS,
    COURT_PROCESS,
    INVESTIGATION_PROCESS,
    COURT_PROCESS,
    INVESTIGATION_PROCESS,
    COURT_PROCESS,
};

// gameover_message_data_table
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

// Note_init_data
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

// Mujyun_ck_data_tbl
const struct CourtPresentData * gCourtPresentData[17] = {
	gCourtPresentData_0_0,
	gCourtPresentData_1_1,
	gCourtPresentData_1_1,
	gCourtPresentData_1_3,
	gCourtPresentData_1_3,
	gCourtPresentData_2_1,
	gCourtPresentData_2_1,
	gCourtPresentData_2_3,
	gCourtPresentData_2_3,
	gCourtPresentData_2_4,
	gCourtPresentData_2_5,
	gCourtPresentData_3_1,
	gCourtPresentData_3_1,
	gCourtPresentData_3_2,
	gCourtPresentData_3_3,
	gCourtPresentData_3_5,
	gCourtPresentData_3_5,
};

// Tantei_show_data_tbl
const struct InvestigationPresentData * gInvestigationPresentData[17] = {
	gInvestigationPresentData_1_0,
	gInvestigationPresentData_1_0,
	gInvestigationPresentData_1_0,
	gInvestigationPresentData_1_2,
	gInvestigationPresentData_1_0,
	gInvestigationPresentData_2_0,
	gInvestigationPresentData_2_0,
	gInvestigationPresentData_2_2,
	gInvestigationPresentData_2_0,
	gInvestigationPresentData_2_4,
	gInvestigationPresentData_2_0,
	gInvestigationPresentData_3_0,
	gInvestigationPresentData_3_0,
	gInvestigationPresentData_3_2,
	gInvestigationPresentData_3_0,
	gInvestigationPresentData_3_4,
	gInvestigationPresentData_3_0,
};

// Sce_init_proc_tbl
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

// Sce_room_init_tbl
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

// Sce_loop_proc_tbl
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
    SetInactiveActionButtons(&gInvestigation, 0xF);
}

void InvestigationSetScriptSectionAndFlag(u32 section, u32 flagId) // Set_event
{
    ChangeFlag(0, flagId, TRUE);
    ChangeScriptSection(section);
    SlideTextbox(1);
    PauseBGM();
} 

void sub_8002CF0(u32 section, u32 flagId) // Set_event2, Unused
{
    struct OamAttrs * sprite = &gOamObjects[OAM_IDX_INVESTIGATION_ACTIONS];
    u32 i = 0;

    for(i = 0; i < OAM_COUNT_INVESTIGATION_ACTIONS; sprite++, i++)
    {
        sprite->attr0 = SPRITE_ATTR0((-64 & 255), ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        //64x32 sprite
        sprite->attr1 = SPRITE_ATTR1_NONAFFINE(60 * i, 0, 0, 3);
        sprite->attr2 = SPRITE_ATTR2((0x100 + i * 0x20), 0, 5);
    }
    SET_PROCESS(INVESTIGATION_PROCESS, INVESTIGATION_MAIN, 0, 0);
    ChangeFlag(0, flagId, TRUE);
    ChangeScriptSection(section);
    SlideTextbox(1);
    SetInactiveActionButtons(&gInvestigation, 0xF);
    gInvestigation.selectedActionYOffset = 0x40;
}

void InvestigationDummy(struct Main *main)
{
}
