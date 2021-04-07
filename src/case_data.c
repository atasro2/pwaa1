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

const u8 * gUnknown_0811DC10[17] = {
	gUnknown_08014DA4,
	gUnknown_08014E0C,
	gUnknown_08014E10,
	gUnknown_08014E20,
	gUnknown_08014E32,
	gUnknown_08015870,
	gUnknown_08015876,
	gUnknown_08015884,
	gUnknown_08015893,
	gUnknown_080158A7,
	gUnknown_080158BB,
	gUnknown_08017168,
	gUnknown_0801716E,
	gUnknown_0801717F,
	gUnknown_08017195,
	gUnknown_080171B1,
	gUnknown_080171CD,
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

void (*gUnknown_0811DCDC[17])(struct Main *) = {
	InvestigationSegmentDummy,
	sub_8002D70,
	InvestigationSegmentDummy,
	sub_800318C,
	InvestigationSegmentDummy,
	sub_8003594,
	InvestigationSegmentDummy,
	sub_8003924,
	InvestigationSegmentDummy,
	sub_80040A4,
	InvestigationSegmentDummy,
	sub_80044D0,
	InvestigationSegmentDummy,
	sub_80049F8,
	InvestigationSegmentDummy,
	sub_8005034,
	InvestigationSegmentDummy,
};

void (*gUnknown_0811DD20[17])(struct Main *) = {
	InvestigationSegmentDummy,
	sub_8002DB4,
	InvestigationSegmentDummy,
	sub_80031D0,
	InvestigationSegmentDummy,
	sub_80035D8,
	InvestigationSegmentDummy,
	sub_8003968,
	InvestigationSegmentDummy,
	sub_80040E8,
	InvestigationSegmentDummy,
	sub_8004514,
	InvestigationSegmentDummy,
	sub_8004A3C,
	InvestigationSegmentDummy,
	sub_8005078,
	InvestigationSegmentDummy,
};

void (*gUnknown_0811DD64[17])(struct Main *) = {
	InvestigationSegmentDummy,
	nullsub_7,
	InvestigationSegmentDummy,
	sub_8003544,
	InvestigationSegmentDummy,
	nullsub_8,
	InvestigationSegmentDummy,
	nullsub_9,
	InvestigationSegmentDummy,
	sub_8004488,
	InvestigationSegmentDummy,
	nullsub_10,
	InvestigationSegmentDummy,
	nullsub_11,
	InvestigationSegmentDummy,
	nullsub_37,
	InvestigationSegmentDummy,
};

void sub_8002C98(u32 arg0, u32 arg1, u32 arg2) // Set_char
{
    struct Main * main = &gMain;
    main->talkingAnimationOffset = arg1;
    main->idleAnimationOffset = arg2;
    PlayPersonAnimation(arg0, 0, arg1, 0);
    gInvestigation.unk5 = 1;
    sub_800B7A8(&gInvestigation, 0xF);
}

void sub_8002CCC(u32 section, u32 flagId) // Set_event
{
    ChangeFlag(0, flagId, TRUE);
    ChangeScriptSection(section);
    sub_800244C(1);
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
    sub_800244C(1);
    sub_800B7A8(&gInvestigation, 0xF);
    gInvestigation.unkE = 0x40;
}

void InvestigationSegmentDummy(struct Main *main)
{
}
