#ifndef GUARD_COURT_RECORD_H
#define GUARD_COURT_RECORD_H

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
    /* +0x0F */ u8 unkF; // unity AA4: page_set_rno1
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
void sub_800D880(struct Main *, struct CourtRecord * courtRecord);
void sub_800D94C(struct Main *, struct CourtRecord * courtRecord);
void sub_800DD88(struct Main *, struct CourtRecord * courtRecord);
void sub_800DE28(struct Main *, struct CourtRecord * courtRecord);
void sub_800DE8C(struct Main *, struct CourtRecord * courtRecord);
void sub_800DF44(struct Main *, struct CourtRecord * courtRecord);
void sub_800E488(struct Main *, struct CourtRecord * courtRecord);
void sub_800E4A4(struct Main *, struct CourtRecord * courtRecord);

//~ gProcess8ProcessStates:
void sub_800E75C(struct Main *, struct CourtRecord * courtRecord);
void sub_800E7C0(struct Main *, struct CourtRecord * courtRecord);
void sub_800E828(struct Main *, struct CourtRecord * courtRecord);

void InitializeCourtRecordForScenario(struct Main *, struct CourtRecord *);
void sub_800E8A0(struct CourtRecord *);
void sub_800E914();
void sub_800E9D4(struct CourtRecord *);
void sub_800EA80(u32);
void sub_800EAF8(struct CourtRecord *);
void sub_800EB88(u32);
void sub_800EB6C(struct CourtRecord *);
void sub_800EBF0(u32);
void sub_800ECA8(u32);
s32 FindEvidenceInCourtRecord(u32, u32);
s32 FindFirstEmptySlotInCourtRecord(u32);
void SortCourtRecordAndSyncListCount(struct CourtRecord *);
u32 sub_800EE20(u32, u32);
u32 sub_800EEA4(struct Main *, u32);
void UpdateItemPlate(struct Main *);
void LoadItemPlateGfx(struct Main *);
void DrawItemPlate(struct Main *);

void CourtRecordProcess(struct Main *);
void GameProcess08(struct Main *);

#endif//GUARD_COURT_RECORD_H