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
    DmaFill16(3, 0, &gUnknown_03000800, sizeof(gUnknown_03000800));
    gMain.unk1F |= 3;
    iwstruct840p = &iwstruct800p->unk40[0];
    iwstruct840p->unkC = 0xFF;
    iwstruct840p->unkE = 0;
    sub_800F7F0();
}

void sub_800F84C() 
{
    struct Struct3000840* struct840p;
    for (struct840p = gUnknown_03000800.unk40; struct840p < &gUnknown_03000800.unk40[0x1f]; struct840p++)
    {
        if (struct840p->unk0 & 0x10000000) 
        {
            if (&gOamObjects[struct840p->unk3A] < &gOamObjects[struct840p->unk3B]) 
            {
                struct OamAttrs* oam;
                for (oam = &gOamObjects[struct840p->unk3A]; oam < &gOamObjects[struct840p->unk3B]; oam++)
                {
                    oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_DOUBLE_MASK, 0, 0, 0, 0);
                }
            }
        }
    }
}

struct Struct3000840* sub_800F8BC(u32 arg1)
{
    struct Struct3000840* struct840p = &gUnknown_03000800.unk40[0x1E];
    s32 i = 0x1f;
    do
    {
        if (struct840p->unkC == arg1 && struct840p->unk0 & 0x10000000)
        {
            return struct840p;
        }
        struct840p--;
    } while (--i != -1);
    return NULL;
}

struct Struct3000840* sub_800F8F4(u32 arg1)
{
    u32 flags;
    s32 r1, i;
    struct Struct3000840* struct840p = sub_800F8BC(arg1);
    if (struct840p != NULL) 
    {
        r1 = -(struct840p->unk0 & 0x02000000);
        flags = r1 >> 0x1f;
        flags = flags & 0x02000000;
        if (struct840p->unk0 & 0x08000000)
        {
            flags = 0x08000000;
        }
        sub_8010960(struct840p);
        DmaFill16(3, 0, struct840p, 0x40)
        struct840p->unk0 = 0xF1000000 | flags;
        struct840p->unk28 = 0xffff;
        if (flags & 0x08000000)
        {
            struct840p->unk0 &= ~0x20000000;
        }
        struct840p->unkC = arg1;
        return struct840p;
    }
    else 
    {
        struct840p = &gUnknown_03000800.unk40[0x1e];
        for (i = 0x1f; i != -1; i--)
        {
            r1 = struct840p->unk0 & 0x10000000;
            if (r1 == 0)
            {
                if (struct840p != &gUnknown_03000800.unk40[0])
                {
                    DmaFill16(3, r1, struct840p, 0x40)
                    struct840p->unk0 = 0xf1000000;
                    struct840p->unkC = arg1;
                    return struct840p;
                }
            }
            struct840p--;
        }
        return 0;
    }
}

void sub_800F9C4(struct Struct3000840* arg0, u32 arg1, u32 arg2)
{
    if (arg0 != NULL)
    {
        arg0->unk10 = arg1;
        arg0->unk12 = arg2;
    }
}

void sub_800F9D0(struct Struct3000840* arg1, u32 arg2)
{
    s32 r0; 
    s32 r4;
    u32 r5;
    r5 = arg2 << 2;
    if (arg1 != NULL)
    {
        if (arg2 > 0x1f)
        {
            arg2 = 0x1f;
        }
        arg1->unk0 = (arg1->unk0 & ~1) | 0x100000;
        arg1->unk3C &= 0xff;
        arg1->unk3E &= 0xff00; 
        arg1->unk3E |= arg2;
        r4 = _Cos(arg1->unk3C);
        r0 = -_Sin(arg1->unk3C);
        gOamObjects[r5++].attr3 = r4;
        gOamObjects[r5++].attr3 = -r0;
        gOamObjects[r5++].attr3 = r0;
        gOamObjects[r5++].attr3 = r4;
    }
}

void sub_800FA50(struct Struct3000840* arg0, u32 arg1, u32 arg2)
{
    if (arg0 != NULL)
    {
        arg0->unk3C = arg2;
        sub_800F9D0(arg0, arg1);
    }
}

void sub_800FA60(struct Struct3000840* arg0)
{
    if (arg0 != NULL)
    {
        arg0->unk0 &= ~0x100000;
    }
}

void sub_800FA74(struct Struct3000840* arg0, bool32 arg1)
{
    u32 i;
    if (arg0 != 0 && (arg0->unk0 & 0x10000000))
    {
        if (arg1)
        {
            arg0->unk0 &= ~0x8000000;
            arg0->unk0 |= 0x20000000;
        }
        else
        {
            arg0->unk0 &= ~0x20000000;
            arg0->unk0 |= 0x08000000;
            for(i = arg0->unk3A; i < arg0->unk3B; i++)
            {
                gOamObjects[i].attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_DOUBLE_MASK, 0, 0, 0, 0);
            }
        }
        if (arg0->unkC == 0xff && arg0->unkE == 0x16)
        {
            if ((arg0 = sub_800F8BC(0x17)) != NULL || (arg0 = sub_800F8BC(0x18)) != NULL)
            {
                if (arg1 != 0)
                {
                    arg0->unk0 &= ~0x8000000;
                    arg0->unk0 |= 0x20000000;
                }
                else
                {
                    arg0->unk0 &= ~0x20000000;
                    arg0->unk0 |= 0x08000000;
                    for(i = arg0->unk3A; i < arg0->unk3B; i++)
                    {
                        gOamObjects[i].attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_DOUBLE_MASK, 0, 0, 0, 0);
                    }
                }
            }
        }
    }
}

void sub_800FB64(struct Struct3000840* arg0, bool32 arg1)
{
    if (arg0 != NULL)
    {
        if (arg1)
        {
            arg0->unk0 |= 1;
        }
        else
        {
            arg0->unk0 &= ~1;
        }
    }
}

void sub_800FB84(struct Struct3000840* arg0, u32 arg1)
{
    if (arg0 != NULL)
    {
        if (arg1 > 3)
        {
            arg1 = 3;
        }
        arg0->unk3E &= 0xff;
        arg0->unk3E |= arg1 << 8;
    }
}

void sub_800FBA0(struct Struct3000840 * arg0, u32 arg1)
{
    if(arg0 != NULL)
    {
        if(arg0->unkC == 0xFF)
        {
        u8 * ptr1;
            ptr1 = gUnknown_08018DD4[arg0->unkE].unk4 + arg1;
            if(arg0->unk14 == ptr1)
            {
                return;
            }
            arg0->unk14 = ptr1;
            arg0->unk20 = gUnknown_08018DD4[arg0->unkE].unk0;
        }
        else
        {
            if(arg0->unkC > 0xb)
            {
                if(arg0->unkC <= 0x10)
                {
                    arg0->unk14 = (u8 *)0x871FCF4 + arg1; // ! FOR THE LOVE OF GOD CAPCOM
                    arg0->unk20 = (u8 *)0x871EBBC;
                }
                else
                {
                    if(arg0->unkC > 0x18)
                    {
                        return;
                    }
                    arg0->unk14 = (u8 *)0x8748218 + arg1;
                    arg0->unk20 = (u8 *)0x871FDF8;
                }
            }
            else
            {
                arg0->unk14 = (u8 *)0x8748218 + arg1;
                arg0->unk20 = (u8 *)0x871FDF8;
            }
        }
        arg0->unk0 |= 0xC0000000; 
        arg0->unk28 = 0xFFFF;
        arg0->unk20 += 1[(u32 *)arg0->unk14];
        arg0->unk18 = arg0->unk20 + 4 + (*(u32 *)arg0->unk20) * 0x20;
        arg0->unk34 = arg0->unk14+8;
        arg0->unk30 = arg0->unk14 + *(u16 *)arg0->unk34; 
    }
}