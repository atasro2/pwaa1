#ifndef GUARD_CASE_DATA_H
#define GUARD_CASE_DATA_H

struct Struct811DC54
{
    /* +0x00 */ u16 scriptSection;
    /* +0x02 */ u16 evidenceId;
    /* +0x04 */ u16 unk4;
    /* +0x06 */ u8 flagId;
    /* +0x07 */ u8 unk7;
};

struct Struct811DC98
{
    /* +0x00 */ u8 roomId;
    /* +0x01 */ u8 evidenceId;
    /* +0x02 */ u8 unk2;
    /* +0x03 */ u8 unk3;
    /* +0x04 */ u16 unk4;
    /* +0x06 */ u16 unk6;
};

extern const u8 gCaseStartProcess[];
extern const u16 gCaseGameoverSections[];

extern const u8 * gCourtRecordInitialItemLists[17];
extern const struct Struct811DC54 * gUnknown_0811DC54[17];
extern const struct Struct811DC98 * gUnknown_0811DC98[17];
extern void (*gInvestigationSegmentSetupFunctions[])(struct Main *);
extern void (*gInvestigationRoomSetupFunctions[])(struct Main *);
extern void (*gInvestigationRoomUpdateFunctions[])(struct Main *);

void InvestigationSetPersonAnimation(u32 arg0, u32 arg1, u32 arg2);
void InvestigationSetScriptSectionAndFlag(u32 section, u32 flagId);

#define LOADEXAMDATA(x) DmaCopy16(3, (x), gExaminationData, sizeof(x))

#endif//GUARD_CASE_DATA_H