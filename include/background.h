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
extern u16 gTilemapBuffer[0x400];

extern const u8 gUnknown_08013B70[0x400];
extern const u16 gUnknown_08014570[0x2C0];

struct CourtScroll
{
    /* +0x00 */ u8 * frameDataPtr;
    /* +0x04 */ u16 state;
    /* +0x06 */ u8 scrollMode;
    /* +0x07 */ u8 unk7; // padding
    /* +0x08 */ u16 scrollingPersonAnimId;
    /* +0x0A */ u16 animOffset;
    /* +0x0C */ s16 frameCounter;
    /* +0x0E */ s16 endFrame;
};

extern struct CourtScroll gCourtScroll;

void InitBGs();
void InitBG3();
void UpdateBackground();
void DecompressCurrentBGStripe(u32);
void DecompressBackgroundIntoBuffer(u32);
void CopyBGDataToVram(u32);
u32 GetBGControlBits(u32);
u8 * GetBGPalettePtr(u32);
void CopyBGDataToVramAndScrollBG(u32);
void SetTextboxSize(u32);
void UpdateTextbox();
void SlideTextbox(u32);
void SlideInBG2Window(u32, u32);
void UpdateBG2Window(struct CourtRecord *);
void SetTextboxNametag(u32, u32);
void UpdateBGTilemaps();

#endif//GUARD_BACKGROUND_H