#include "gba/gba.h"

struct Struct3003730 
{
    u32 unk0;
    u8 unk4;
    u8 filler5[0x7];
    u8 unkC;
    u8 unkD;
    u8 fillerE[0x1A];
    u16 unk28;
    s16 unk2A;
    s8 unk2C;
};

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

extern struct Struct3003730 gUnknown_03003730;

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
<<<<<<< HEAD

void AgbMain()
{
  u32 v0;
  DmaFill32(3, 0, 0x03000000, 0x7E00); // clear IWRAM

  LOOP1:
    sub_80003E0();
    CheckAButtonOnBoot();
    LOOP2:
      v0 = sub_8000744();
      if ( v0 != 0 )
        goto LOOP1;

      gUnknown_03003730.unkC=v0;

      LOOP3:
      if ( gUnknown_03003730.unkC != gUnknown_03003730.unkD )
      {
        goto LOOP3;
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
=======
>>>>>>> e1ac84f0d51698e7f32e19688b42063c70543aea
