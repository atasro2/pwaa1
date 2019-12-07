#include "global.h"

void sub_800F7F0()
{
    gUnknown_03000800.unk0 = 1;
    gUnknown_03000800.unk8 = 0;
    gUnknown_03000800.unk4 = 0;
}

void sub_800F804()
{
    struct Struct3000800 * iwstruct800p = &gUnknown_03000800;
    struct Struct3000840 * iwstruct840p;
    DmaFill16(3, 0, iwstruct800p, 0x800);
    gUnknown_03003730.unk1F |= 3;
    iwstruct840p = &iwstruct800p->unk40;
    iwstruct840p->unkC = 0xFF;
    iwstruct840p->unkE = 0;
    sub_800F7F0();
}