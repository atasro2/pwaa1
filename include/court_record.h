#ifndef GUARD_COURT_RECORD_H
#define GUARD_COURT_RECORD_H

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

#endif//GUARD_COURT_RECORD_H