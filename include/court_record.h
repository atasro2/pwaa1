#ifndef GUARD_COURT_RECORD_H
#define GUARD_COURT_RECORD_H

struct CourtRecord
{
    /* +0x00 */ s8 unk0;
    /* +0x01 */ s8 unk1;
    /* +0x02 */ u8 unk2;
    /* +0x03 */ u8 unk3;
    /* +0x04 */ u16 unk4;
    /* +0x06 */ u16 unk6;
    /* +0x08 */ u8 unk8;
    /* +0x09 */ u8 unk9;
    /* +0x0A */ bool8 isSaveScreen;
    /* +0x0B */ u8 unkB;
    /* +0x0C */ u8 unkC;
    /* +0x0D */ u8 unkD;
    /* +0x0E */ u8 unkE;
    /* +0x0F */ u8 unkF;
    /* +0x10 */ u8 evidenceCount;
    /* +0x11 */ u8 profileCount;
    /* +0x12 */ u8 unk12;
    /* +0x13 */ u8 unk13;
    /* +0x14 */ u8 * unk14;
    /* +0x18 */ u8 evidenceList[0x20];
    /* +0x38 */ u8 profileList[0x20];
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

void sub_800D77C(struct Main *, struct CourtRecord *);
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
void sub_800EEFC(struct Main *);
void sub_800F0E0(struct Main *);
void sub_800F134(struct Main *);

void CourtRecordProcess(struct Main *);
void GameProcess08(struct Main *);

#endif//GUARD_COURT_RECORD_H