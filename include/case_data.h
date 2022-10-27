#ifndef GUARD_CASE_DATA_H
#define GUARD_CASE_DATA_H

struct CourtPresentData
{
    /* +0x00 */ u16 presentingSection; // unity: keyhole
    /* +0x02 */ u16 evidenceId; // unity: key
    /* +0x04 */ u16 presentedSection; // unity: jump
    /* +0x06 */ u8 flagId; // unity: sce_flag
    /* +0x07 */ u8 unk7; // unity: win_flag
};

struct InvestigationPresentData
{
    /* +0x00 */ u8 roomId; // unity: room
    /* +0x01 */ u8 evidenceId; // unity: item
    /* +0x02 */ u8 personId; // unity: pl_id
    /* +0x03 */ u8 end; // unity: end
    /* +0x04 */ u16 evidenceCommentSection; // unity: mess_true
    /* +0x06 */ u16 wrongEvidenceSection; // unity: mess_false
};

extern const u8 gCaseStartProcess[];
extern const u16 gCaseGameoverSections[];

extern const u8 * gCourtRecordInitialItemLists[17];
extern const struct CourtPresentData * gCourtPresentData[17];
extern const struct InvestigationPresentData * gInvestigationPresentData[17];
extern void (*gInvestigationSegmentSetupFunctions[])(struct Main *);
extern void (*gInvestigationRoomSetupFunctions[])(struct Main *);
extern void (*gInvestigationRoomUpdateFunctions[])(struct Main *);

void InvestigationSetPersonAnimation(u32 arg0, u32 arg1, u32 arg2);
void InvestigationSetScriptSectionAndFlag(u32 section, u32 flagId);

#define LOADEXAMDATA(x) DmaCopy16(3, (x), gExaminationData, sizeof(x))

#endif//GUARD_CASE_DATA_H