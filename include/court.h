#ifndef GUARD_COURT_H
#define GUARD_COURT_H

struct TestimonyStruct
{
    /* +0x00 */ u8 unk0;
    /* +0x01 */ u8 unk1;
    /* +0x02 */ u8 unk2;
    /* +0x03 */ u8 unk3;
    /* +0x04 */ u16 unk4;
    /* +0x06 */ u8 unk6;
    /* +0x07 */ u8 unk7; // filler?
};

extern struct TestimonyStruct gTestimony;

void sub_800B51C(struct Main *, struct TestimonyStruct *, u32);
void sub_800B638(struct Main *, struct TestimonyStruct *);

void GameProcess03(struct Main *);
void GameProcess05(struct Main *);
void GameProcess06(struct Main *);
extern void GameProcess09(struct Main *);

#endif//GUARD_COURT_H