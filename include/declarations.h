#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

#include "structs.h"

//DATA
extern const u16 gUnknown_08014D82[]; // GS1_gameover_message_data_table
extern const u8 gUnknown_08013B70[0x400];
extern void (*gUnknown_0811DBB4[15])(struct Main *);
extern u32 * gUnknown_0811DC04[3]; 
extern s16 gSineTable[256+64];
extern u32 gUnknown_080150D0[12];
extern u16 gUnknown_08014FB8[0x8C];
extern u8 gTextPal[0x20];
extern u32 common_scripts[0xDEC/4];
extern u32 * gScriptTable[17];
extern u8 gUnknown_08018784[0x30];
extern u8 gUnknown_080187C0[8];
extern u8 * gUnknown_080187B4[3];
extern struct Struct80187C8 gUnknown_080187C8[16];
extern u8 gUnknown_0824696C[32]; // palette
extern u8 gUnknown_08190AC0[]; // some tiles
extern u8 gUnknown_081914A0[];
extern u8 gUnknown_081924A0[];
extern u8 gUnknown_08191CA0[];
extern u8 gUnknown_081942C0[]; // probably 8bpp palette
extern u8 gUnknown_08194520[]; // 4bpp palette
extern u8 gUnknown_08194540[]; // 4bpp palette

extern u8 gUnknown_08360834[]; // 4bpp palette
extern u16 gUnknown_08360854[]; // palette?
extern u8 gUnknown_08362524[]; // 4bpp palette
extern u16 gUnknown_08362544[]; // palette?
//FUNCTIONS // these should be moved soon
void sub_80007A0(struct Struct3004000 *);
u8 Random();
void sub_800549C(u32);
void sub_8005408();
void sub_800F804();
void sub_8005470();
void sub_80003E0();
void HideAllSprites();
void SetLCDIORegs();
void sub_8000738(u16, u16);
u32 sub_8000744();
void sub_8000804();
void sub_8000930();
void sub_80009AC();
void MoveSpritesToOAM();
void SetFlag(u32, u32, bool32);
void sub_80007D8(u32 arg0, u32 arg1, u32 arg2, u32 arg3);
void sub_800077C(u8 *, u32, u32, u32);
bool32 GetFlag(u32 arg0, u32 arg1);
void sub_800F9C4(struct Struct3000840* arg0, u32 arg1, u32 arg2);
void sub_800F9D0(struct Struct3000840* arg1, u32 arg2);
void sub_800FA50(struct Struct3000840* arg0, u32 arg1, u32 arg2);
void sub_800FA60(struct Struct3000840* arg0);
void sub_800FA74(struct Struct3000840* arg0, bool32 arg1);
void sub_800FB64(struct Struct3000840* arg0, bool32 arg1);
void sub_800FB84(struct Struct3000840* arg0, u32 arg1);
//ASMFUNCTIONS
extern void sub_8001744(u16);
extern void sub_8010E14(s16);
extern void sub_800EEFC(struct Main *);
extern void sub_800232C();
extern void sub_8001A9C(u16);
extern void sub_8010C4C(u8);
extern void sub_80029B0();
extern void sub_80013EC();
extern void sub_800F3C4();
extern void sub_8010048(u32, u32, u32, u32);
extern void sub_800B7A8(struct Struct3003A50 *, u32);
extern void sub_800244C(u32);
extern void sub_80028B4(u32, u32);
extern void sub_8002244(u32);
extern void sub_800FA74(struct Struct3000840 *, u32);
extern void sub_800FBA0(struct Struct3000840 *, u32);
extern s32 sub_800ECF8(u16, u32);
extern s32 sub_800ED40(u16);
extern void sub_800ED68(struct Struct3002840 *);
extern void sub_8011108(u32, u32, u32, u32);
extern void sub_8010960(struct Struct3000840 *);
extern struct Struct3000840 * sub_8010204(u32);
extern void sub_80106A4(u32, u32);
extern struct Struct3000840 * sub_800F8BC(u32);
extern u32 sub_8002224(u32);
extern u32 sub_8007554(u32);
//EWRAM
extern EWRAM_DATA u32 gScriptHeap[0x1B000/4];
#define eScriptHeap ((void*) (EWRAM_START + 0x11FC0))
extern EWRAM_DATA struct SaveData gSaveDataBuffer;
extern EWRAM_DATA u8 gUnknown_0202CFC0[0x5000];
extern EWRAM_DATA u8 gUnknown_02031FC0[0x4B00];
//IWRAM
extern u16 gBG2MapBuffer[0x400]; // BG 2 Map buffer
extern struct Struct3000800 gUnknown_03000800; // size unknown
extern u16 gBG3MapBuffer[0x400]; // BG 3 Map buffer
extern u16 gBG3MapBufferCopy[0x400]; // BG 3 Map buffer copy TODO: this 1 array is keeping me away from naming the other ones..  BG Pan related?
extern u16 gBG1MapBuffer[0x400]; // BG 1 Map buffer
extern void (*gIntrTable[0x10]);
extern struct Struct3002840 gUnknown_03002840;
extern struct Struct30028A0 gUnknown_030028A0;
extern struct OamAttrs gOamObjects[128];
extern u16 gBG0MapBuffer[0x400]; // BG 0 Map buffer
extern struct Struct3003930 gUnknown_03003930[8];
extern u8 gUnknown_030039D0[0x80];
extern struct Struct3003A50 gUnknown_03003A50;
extern struct ScriptContext gScriptContext;
extern struct Struct3003AB0 gUnknown_03003AB0; 
extern struct Struct3003C00 gUnknown_03003C00[0x3F];
extern struct Struct3004000 gUnknown_03004000;
extern struct MusicPlayerInfo gMPlayInfo_BGM;
extern struct MusicPlayerInfo gMPlayInfo_SE1;
extern struct MusicPlayerInfo gMPlayInfo_SE2;
extern struct MusicPlayerInfo gMPlayInfo_SE3;
#endif//GUARD_DECLARATIONS_H