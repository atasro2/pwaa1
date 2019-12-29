#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

#include "structs.h"

//DATA
extern const u8 gUnknown_08013B70[0x400];
extern void (*gUnknown_0811DBB4[15])(struct Struct3003730 *);
extern u32 * gUnknown_0811DC04[3]; 
extern s16 gSineTable[256+64];
extern u32 gUnknown_080150D0[12];
extern u16 gUnknown_08014FB8[0x8C];
extern u8 gTextPal[0x20];
extern u32 * gUnknown_08018740[17];
extern u32 gUnknown_08749428[0xDEC/4];

//FUNCTIONS // these should be moved soon
void sub_80003E0();
void sub_800060C();
void sub_8000624();
void sub_8000738(u16, u16);
u32 sub_8000744();
void sub_8000804();
void sub_8000930();
void sub_80009AC();
void MoveSpritesToOAM();

//ASMFUNCTIONS
extern void sub_800F614();
extern void sub_8001744(u16);
extern void sub_8010E14(s16);
extern void sub_800EEFC(struct Struct3003730 *);
extern void sub_800232C();
extern void sub_8005470();
extern void sub_8001A9C(u16);
extern void sub_8010C4C(u8);
extern void sub_80029B0();
extern void sub_80013EC();
extern void sub_80007A0(struct Struct3004000 *);
extern u8 sub_8002B40();
extern void sub_800F804();
extern void sub_800F3C4();
extern void sub_8005408();
extern void sub_8010048(u32, u32, u32, u32);
extern void sub_800B7A8(struct Struct3003A50 *, u32);
extern void sub_800549C(u32);
extern void sub_800244C(u32);

//EWRAM
extern EWRAM_DATA u32 gUnknown_02011DC0[0x80];
extern EWRAM_DATA u32 gScriptHeap[0x1B000/4];
extern EWRAM_DATA struct SaveData gSaveDataBuffer;
extern EWRAM_DATA u8 gUnknown_0202CFC0[0x9B00]; // got no idea how big this actually is
//IWRAM
extern u16 gUnknown_03000000[0x400]; // BG2 map buffer
extern struct Struct3000800 gUnknown_03000800; // size unknown
extern u16 gUnknown_03001000[0x400]; // BG3 map buffer
extern u16 gUnknown_03001800[0x400]; // BG3 map buffer copy?
extern u16 gUnknown_03002000[0x400]; // BG1 map buffer
extern void (*gIntrTable[0x10]);
extern struct Struct3002840 gUnknown_03002840;
extern struct Struct30028A0 gUnknown_030028A0;
extern struct OamBits gOamObjects[128];
extern u16 gUnknown_03002F20[0x400]; // BG0 map buffer
extern struct Struct3003720 gUnknown_03003720;
extern struct Struct3003730 gUnknown_03003730;
extern struct LCDIORegisters gLCDIORegisters;
extern struct Struct3003930 gUnknown_03003930[8];
extern struct Struct3003A50 gUnknown_03003A50;
extern struct Struct3003A70 gUnknown_03003A70;
extern struct Struct3003AB0 gUnknown_03003AB0; 
extern u16 gUnknown_03003C00[0x3F][6];
extern struct Struct3004000 gUnknown_03004000;
extern struct MusicPlayerInfo gMPlayInfo_BGM;
extern struct MusicPlayerInfo gMPlayInfo_SE1;
extern struct MusicPlayerInfo gMPlayInfo_SE2;
extern struct MusicPlayerInfo gMPlayInfo_SE3;
#endif//GUARD_DECLARATIONS_H