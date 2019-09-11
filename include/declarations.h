#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this
#define GUARD_DECLARATIONS_H

#include "structs.h"

//DATA
extern const u32 gUnknown_08013798[0x10];
extern const u8 gUnknown_08013B70[0x400];
extern void (*gUnknown_0811DBB4[15])(struct Struct3003730 *); 

//FUNCTIONS
void sub_80003E0();
void sub_800060C();
void sub_8000624();
void sub_8000738(u16, u16);
u32 sub_8000744();
void sub_8000804();
void sub_8000930();
void sub_80009AC();

//ASMFUNCTIONS
extern void sub_8011F70();
extern void sub_800F614();
extern void sub_8001744(u16);
extern void sub_8010E14(s16);
extern void sub_800EEFC(struct Struct3003730 *);
extern void sub_800232C();
extern void sub_8005470();
extern void sub_8001A9C(u16);
extern void sub_8002A48();
extern void sub_8010C4C(u8 arg0);
extern void sub_80029B0();
extern void sub_80013EC();
extern void sub_80007A0(struct Struct3004000 *);
extern u8 sub_8002B40();
extern void sub_800F804();
extern void sub_800F3C4();
extern void sub_8005408();

//EWRAM
extern struct Struct2000000 gUnknown_02000000;

//IWRAM
extern struct Struct3000000 gUnknown_03000000;
extern u16 gUnknown_03002000[0x400];
extern u32 gUnknown_03002800[0x10];
extern struct Struct3002840 gUnknown_03002840;
extern struct Struct3002F20 gUnknown_03002F20;
extern struct Struct3003720 gUnknown_03003720;
extern struct Struct3003730 gUnknown_03003730;
extern struct Struct30038D0 gUnknown_030038D0;
extern struct Struct3003A50 gUnknown_03003A50;
extern struct Struct3003A70 gUnknown_03003A70;
extern struct Struct3003AB0 gUnknown_03003AB0; 
extern struct Struct3004000 gUnknown_03004000;
extern struct MusicPlayerInfo gUnknown_030058C0;
extern struct MusicPlayerInfo gUnknown_03005900;
extern struct MusicPlayerInfo gUnknown_03005940;
extern struct OamData gOamObjects[128];
#endif//GUARD_DECLARATIONS_H