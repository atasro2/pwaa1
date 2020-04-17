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

void sub_800F84C() 
{
    struct Struct3000840* r4;
    for (r4 = gUnknown_03000800.unk40; r4 < &gUnknown_03000800.unk40[0x1f]; r4++)
    {
        if (r4->unk0 & 0x10000000) 
        {
            if (&gOamObjects[r4->unk3A] < &gOamObjects[r4->unk3B]) 
            {
                struct OamAttrs* r2;
                for (r2 = &gOamObjects[r4->unk3A]; r2 < &gOamObjects[r4->unk3B]; r2++)
                {
                    r2->attr0 = 0x200;
                }
            }
        }
    }
}

struct Struct3000840* sub_800F8BC(u32 r0)
{
    struct Struct3000840* r1 = &gUnknown_03000800.unk40[0x1E];
    s32 r2 = 0x1f;
    do
    {
        if (r1->unkC == r0 && r1->unk0 & 0x10000000)
        {
            return r1;
        }
        r1--;
    } while (--r2 != -1);
    return NULL;
}

struct Struct3000840* sub_800F8F4(u32 r0)
{
    u32 r0_2, r5;
    s32 r1;
    struct Struct3000840* r4 = sub_800F8BC(r0);
    if(r4 != NULL) 
    {
        r1 = -(r4->unk0 & 0x02000000);
        r5 = r1 >> 0x1f;
        r5 = r5 & 0x02000000;
        if(r4->unk0 & 0x08000000)
        {
            r5 = 0x08000000;
        }
        sub_8010960(r4);
        DmaFill16(3, 0, r4, 0x40)
        r4->unk0 = 0xF1000000 | r5;
        r4->unk28 = 0xffff;
        if(r5 & 0x08000000)
        {
            r4->unk0 &= 0xdfffffff;
        }
        r4->unkC = r0;
        return r4;
    }
    else 
    {
        r4 = &gUnknown_03000800.unk40[0x1e];
        for(r0_2 = 0x1f; r0_2 != -1; r0_2--)
        {
            r1 = r4->unk0 & 0x10000000;
            if(r1 == 0)
            {
                if(r4 != &gUnknown_03000800.unk40[0])
                {
                    DmaFill16(3, r1, r4, 0x40)
                    r4->unk0 = 0xf1 << 0x18;
                    r4->unkC = r0;
                    return r4;
                }
            }
            r4--;
        }
        return 0;
    }
}