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
    gMain.unk1F |= 3;
    iwstruct840p = iwstruct800p->unk40;
    iwstruct840p->unkC = 0xFF;
    iwstruct840p->unkE = 0;
    sub_800F7F0();
}

void sub_800F84C() {
    struct Struct3000840* r4;
    for(r4 = gUnknown_03000800.unk40; r4 < &gUnknown_03000800.unk40[0x1F]; r4++){
        if((r4->unk0 & (0x80 << 0x15)) != 0) {
            struct OamAttrs* r2 = &gOamObjects[r4->unk3A];
            struct OamAttrs* r0_2 = &gOamObjects[r4->unk3B];
            if(r2 < r0_2) {
                for(; r2 < &gOamObjects[r4->unk3B]; r2++){
                    r2->attr0 = 0x80 * 4;
                }
            }
        }
    }
}