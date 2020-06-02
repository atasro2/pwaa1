#ifndef GUARD_BACKGROUNDS_H
#define GUARD_BACKGROUNDS_H

struct Background
{
    u8 * bgData;
    u32 controlBits;
};

extern void InitBGs();
extern void InitBG3();
extern void sub_80013EC();
extern void sub_8001744(u16);
extern void sub_8001830(u16);
extern void sub_8001A9C(u16);
extern u32 GetBGControlBits(u32);
extern u8 * GetBGPalettePtr(u32);
extern void sub_8002244(u32);
extern void sub_800232C();
extern void sub_800244C(u32);
extern void sub_80024C8(u32, u32);
extern void sub_80028B4(u32, u32);
extern void UpdateBGTilemaps();
#endif//GUARD_BACKGROUNDS_H