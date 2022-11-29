#ifndef GUARD_COURT_RECORD_H
#define GUARD_COURT_RECORD_H

#define COURT_RECORD_VIEW_PROFILES 0x1

struct CourtRecord
{
    /* +0x00 */ s8 unk0; // unity AA4: bg_x_add
    /* +0x01 */ s8 unk1; // unity AA4: bg_x_speed
    /* +0x02 */ u8 unk2; // unity AA4: bg_x_level
    /* +0x03 */ u8 unk3; // unity AA4: bg_x_status
    /* +0x04 */ u16 unk4; // unity AA4: bg_x_pos
    /* +0x06 */ u16 unk6; // unity AA4: bg_x_pos_old
    /* +0x08 */ u8 unk8; // unity AA4: arrow_type
    /* +0x09 */ u8 unk9; // unity AA4: arrow_timer
    /* +0x0A */ bool8 isSaveScreen; // unity AA4: win_flag
    /* +0x0B */ u8 unkB; // unity AA4: win_type
    /* +0x0C */ u8 flags; // unity AA4: page_status
    /* +0x0D */ u8 selectedItem; // unity AA4: page_now
    /* +0x0E */ u8 displayItemCount; // unity AA4: page_now_max
    /* +0x0F */ u8 nextState; // unity AA4: page_set_rno1
    /* +0x10 */ u8 evidenceCount; // unity AA4: item_page_max
    /* +0x11 */ u8 profileCount; // unity AA4: name_page_max
    /* +0x12 */ u8 selectedItemBackup; // unity AA4: page_now_bk
    /* +0x13 */ u8 fullScreenPage; // unity AA4: exception_page
    /* +0x14 */ u8 * displayItemList; // unity AA4: now_file
    /* +0x18 */ u8 evidenceList[0x20]; // unity AA4: item_file
    /* +0x38 */ u8 profileList[0x20]; // unity AA4: name_file
};

extern struct CourtRecord gCourtRecord;

//~ gCourtRecordProcessStates:
void CourtRecordInit(struct Main *, struct CourtRecord * courtRecord);
void CourtRecordMain(struct Main *, struct CourtRecord * courtRecord);
void CourtRecordExit(struct Main *, struct CourtRecord * courtRecord);
void CourtRecordChangeState(struct Main *, struct CourtRecord * courtRecord);
void CourtRecordChangeRecord(struct Main *, struct CourtRecord * courtRecord);
void CourtRecordDetailSubMenu(struct Main *, struct CourtRecord * courtRecord);
void CourtRecordLoadGfxChangeState(struct Main *, struct CourtRecord * courtRecord);
void CourtRecordTakeThatSpecial(struct Main *, struct CourtRecord * courtRecord);

//~ gEvidenceAddedProcessStates:
void EvidenceAddedInit(struct Main *, struct CourtRecord * courtRecord);
void EvidenceAddedMain(struct Main *, struct CourtRecord * courtRecord);
void EvidenceAddedExit(struct Main *, struct CourtRecord * courtRecord);

void InitializeCourtRecordForScenario(struct Main *, struct CourtRecord *);
void UpdateCourtRecordArrows(struct CourtRecord *);
void LoadEvidenceWindowGraphics();
void sub_800E9D4(struct CourtRecord *);
void LoadEvidenceGraphics(u32);
void sub_800EAF8(struct CourtRecord *);
void sub_800EB88(u32);
void sub_800EB6C(struct CourtRecord *);
void sub_800EBF0(u32);
void sub_800ECA8(u32);
s32 FindEvidenceInCourtRecord(u32, u32);
s32 FindFirstEmptySlotInCourtRecord(u32);
void SortCourtRecordAndSyncListCount(struct CourtRecord *);
u32 GetQuestioningPresentedSection(u32, u32);
u32 GetEvidenceCommentSection(struct Main *, u32);
void UpdateItemPlate(struct Main *);
void LoadItemPlateGfx(struct Main *);
void DrawItemPlate(struct Main *);

void CourtRecordProcess(struct Main *);
void EvidenceAddedProcess(struct Main *);

#endif//GUARD_COURT_RECORD_H