#include "gba/gba.h"

struct Struct3004000
{
    u8 filler0[0x4];
    u16 unk4;
};

struct Struct3003730 
{
    u32 unk0;
    u8 unk4;
    u8 filler5[0x7];
    u8 unkC;
    u8 unkD;
    s8 unkE;
    s8 unkF;
    u16 unk10;
    u8 unk12;
    u8 filler13[0x14];
    u16 unk28;
    s16 unk2A;
    s8 unk2C;
    u8 filler2D[0x84];
    u32 unkB4;
};

struct Struct30038D0
{
    u8 filler0[0xc];
    s16 unkC;
    s16 unkE;
    u8 fillerF[0x4];
    s16 unk14;
    s16 unk16;
};

extern void (*gUnknown_0811DBB4[15])(struct Struct3003730 *);

extern void sub_8011F70();
extern void sub_800F614();
extern void sub_8001744(u16);
extern void sub_8000804();
extern void sub_8010E14(s16);
extern void sub_80002E4();
extern void sub_800EEFC(struct Struct3003730 *);
extern void sub_800232C();
extern void sub_8005470();
extern void sub_8001A9C(u16);
extern void sub_8000624();
extern void sub_8002A48();
extern void sub_8010C4C(u8 arg0);
extern void sub_80029B0();
extern void sub_80013EC();
extern void sub_80003E0();
extern u32 sub_8000744();
extern void sub_80007A0(struct Struct3004000 *);
extern u8 sub_8002B40();

extern struct Struct3004000 gUnknown_03004000;
extern struct Struct3003730 gUnknown_03003730;
extern struct Struct30038D0 gUnknown_030038D0;

void CheckAButtonOnBoot() 
{
    u16 *input;
    u16 keys;
    if(!gUnknown_03003730.unk4) 
    {
        input = (u16 *)0x04000130;
        keys = (0x3FF ^ *input);
        if (A_BUTTON & keys)
            gUnknown_03003730.unk4 = 0xe;
    }
}

void AgbMain()
{
    u32 v0;
    DmaFill32(3, 0, 0x03000000, 0x7E00); // clear IWRAM

    LOOP1:
    {
        sub_80003E0();
        CheckAButtonOnBoot();
        LOOP2:
        {   
            v0 = sub_8000744();
            if ( v0 != 0 )
                goto LOOP1;

            gUnknown_03003730.unkC=v0;

            LOOP3:
            {
                if ( gUnknown_03003730.unkC != gUnknown_03003730.unkD )
                {
                    goto LOOP3;
                }
            }

            if ( gUnknown_03003730.unk2C == 0 )
            {
            gUnknown_03003730.unk0++;
            sub_80013EC();
            sub_80029B0();
            sub_8010C4C(0);
            sub_8002A48();
            sub_8000624();
            }
            if ( gUnknown_03003730.unk2C > 10 )
            {
                gUnknown_03003730.unk2C = 0;
                sub_8001A9C(gUnknown_03003730.unk28);
            }
            if ( gUnknown_03003730.unk2C == 0 && (sub_8005470(), gUnknown_03003730.unk2C == 0 ) )
            {
                sub_800232C(gUnknown_03003730.unk2C);
                sub_800EEFC(&gUnknown_03003730);
                sub_80002E4();
                sub_8010E14(gUnknown_03003730.unk2A);
                sub_8000804();
            }
            else
            {
                sub_8001744(gUnknown_03003730.unk28);
            }
            sub_800F614();
            sub_8011F70();
            goto LOOP2;
        }
    }
}

void sub_80002E4()
{
    struct Struct3004000 * struct1 = &gUnknown_03004000;
    struct Struct3003730 * struct0 = &gUnknown_03003730;

    u8 var0;
    u8 var1;
    u32 var2 = struct0->unkB4 & 1;

    if((var2))
    {
        switch(struct0->unk12)
        {
            case 0:
                var0 = 1;
                break;
            case 2:
                var0 = 7;
                break;
            case 1:
            default:
                var0 = 3;
                break;
        }
        var1 = (sub_8002B40() & 15);
        if(var1 > 7)
        {
            struct0->unkE = var1 & var0;
            struct0->unkE *= -1;
        }
        else
        {
            struct0->unkE = (var1 & var0);
        }
        var1 = sub_8002B40() & 15;
        if(var1 > 7)
        {
            struct0->unkF = var1 & var0;
            struct0->unkF *= -1;
        }
        else
        {
            struct0->unkF = var1 & var0;
        }
        gUnknown_030038D0.unk16 = struct0->unkF + 8;
        gUnknown_030038D0.unk14 = struct0->unkE + 8;
        gUnknown_030038D0.unkE = struct0->unkE;
        gUnknown_030038D0.unkC = struct0->unkF;
        if(struct0->unk10 != 0)
        {
            struct0->unk10--;
            if(struct0->unk10 == 0)
            {
                struct0->unkB4 &= -2;
                gUnknown_030038D0.unk16 = 8;
                gUnknown_030038D0.unk14 = 8;
                gUnknown_030038D0.unkE = 0;
                gUnknown_030038D0.unkC = 0;
            }
        }
    }
    else
    {
        gUnknown_03003730.unkE = var2;
        gUnknown_03003730.unkF = var2;
    }
    gUnknown_0811DBB4[gUnknown_03003730.unk4](&gUnknown_03003730);
    if(struct1->unk4)
    {
        sub_80007A0(struct1);
    }
}
