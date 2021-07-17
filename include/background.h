#ifndef GUARD_BACKGROUND_H
#define GUARD_BACKGROUND_H

#include "court_record.h"

struct Background
{
    /* +0x00 */ u8 * bgData;
    /* +0x04 */ u32 controlBits;
};

extern const struct Background gBackgroundTable[];

extern u16 gBG0MapBuffer[0x400];
extern u16 gBG1MapBuffer[0x400];
extern u16 gBG2MapBuffer[0x400];
extern u16 gBG3MapBuffer[0x400];
extern u16 gBG3MapBufferCopy[0x400];

extern const u8 gUnknown_08013B70[0x400];
extern const u16 gUnknown_08014570[0x2C0];

struct CourtScroll
{
    /* +0x00 */ u8 * unk0;
    /* +0x04 */ u16 state;
    /* +0x06 */ u8 unk6;
    /* +0x07 */ u8 unk7; // padding??
    /* +0x08 */ u16 unk8;
    /* +0x0A */ u16 unkA;
    /* +0x0C */ s16 unkC;
    /* +0x0E */ s16 unkE;
};

extern struct CourtScroll gCourtScroll;

void InitBGs();
void InitBG3();
void UpdateBackground();
void DecompressCurrentBGStripe(u32);
void sub_8001830(u32);
void sub_8001A9C(u32);
u32 GetBGControlBits(u32);
u8 * GetBGPalettePtr(u32);
void sub_80020B0(u32);
void sub_8002244(u32);
void UpdateTextbox();
void sub_800244C(u32);
void sub_80024C8(u32, u32);
void sub_8002878(struct CourtRecord *);
void sub_80028B4(u32, u32);
void UpdateBGTilemaps();

#endif//GUARD_BACKGROUND_H