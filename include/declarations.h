#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

#include "structs.h"

//DATA
extern const u8 gUnknown_08014D70[];
extern const u16 gUnknown_08014D82[]; // GS1_gameover_message_data_table
extern const u8 gUnknown_08013B70[0x400];
extern u8 gUnknown_080189A4[];
extern u8 gSaveVersion[0x30];
extern void (*gGameProcesses[15])(struct Main *);
extern u32 * gFlagPtrs[3]; 
extern s16 gSineTable[256+64];
extern u32 gUnknown_080150D0[12];
extern u16 gUnknown_08014FB8[0x8C];
extern u8 gTextPal[0x20];
extern u32 std_scripts[0xDEC/4];
extern u32 * gScriptTable[17];
extern u8 gSoundCueTable[0x30];
extern u8 gTextboxDownArrowTileIndexes[8];
extern u8 * gCourtScrollGfxPointers[3];
extern struct Struct80187C8 gUnknown_080187C8[16];
extern struct Struct8018DD4 gUnknown_08018DD4[];

// 0x180000 onwards // GFX basically
// maybe change to defines
// keep both actually it won't matter a whole lot
extern u8 gUnknown_08180000[0x200]; // palette 
extern u8 gUnknown_08180200[]; // compressed tile data goes with previous palette probably
extern u8 gUnusedAsciiCharSet[0x800]; // first 60 characters of ascii
extern u8 gUnknown_08186540[0x1000];

extern u8 gUnknown_08190AC0[]; // some tiles
extern u8 gUnknown_081911C0[];
extern u8 gUnknown_081914A0[0x800];
extern u8 gUnknown_08191CA0[0x800];
extern u8 gUnknown_081924A0[0x800];
extern u8 gUnknown_08192CA0[];
extern u8 gUnknown_08193CA0[0x400];
extern u8 gUnknown_081942C0[0x11][0x20]; 
extern u8 gUnknown_08194500[0x20]; // 4bpp palette
extern u8 gUnknown_08194520[0x20]; // 4bpp palette
extern u8 gUnknown_08194540[0x20]; // 4bpp palette
extern u8 gUnknown_08194560[0x20]; // 4bpp palette
extern u8 gUnknown_08194580[0xC0]; // sprite palettes
extern u8 gUnknown_081964A8[0x800];

extern u8 gUnknown_081FD92C[0x40]; // sprite palette

extern u8 gUnknown_0824696C[0x20]; // palette

extern u8 gUnknown_08360834[0x20]; // 4bpp palette
extern u16 gUnknown_08360854[]; // palette?
extern u8 gUnknown_08362524[0x20]; // 4bpp palette
extern u16 gUnknown_08362544[]; // palette?

extern u8 gUnknown_0871FCF4[];
extern u8 gUnknown_08748218[];
extern u8 gUnknown_0871EBBC[];
extern u8 gUnknown_0871FDF8[];
//FUNCTIONS // these should be moved soon

void UpdateCourtScroll(struct CourtScroll *);
u8 Random();
void ChangeScriptSection(u32);
void LoadCurrentScriptIntoRam();
void sub_800F804();
void RunScriptContext();
void MoveSpritesToOAM();
bool32 CheckPointInArea(struct Point * point, struct Point4 * area);
void ChangeFlag(u32, u32, bool32);
bool32 GetFlag(u32 arg0, u32 arg1);
struct Struct3000800 * sub_800F8BC(u32);
void sub_800F9C4(struct Struct3000800* arg0, u32 arg1, u32 arg2);
void sub_800F9D0(struct Struct3000800* arg1, u32 arg2);
void sub_800FA50(struct Struct3000800* arg0, u32 arg1, u32 arg2);
void sub_800FA60(struct Struct3000800* arg0);
void sub_800FA74(struct Struct3000800* arg0, bool32 arg1);
void sub_800FB64(struct Struct3000800* arg0, bool32 arg1);
void sub_800FB84(struct Struct3000800* arg0, u32 arg1);
void sub_800FBA0(struct Struct3000800 *, u32);
struct Struct3000800 * sub_8010048(u32, u32, u32, u32);
struct Struct3000800 * sub_80100A8(u32, u32, u32, u32, u32);
// rom8007A0C
u32 LoadSaveData();
void CalculateSaveChecksum();
u32 CheckSaveChecksum();

//ASMFUNCTIONS

// UNSORTED
extern void sub_800D6C8(void);
extern void sub_800D674(void);
extern void sub_80020B0(u32);
extern void sub_8010304(struct Struct2002650 *);
extern void sub_8002878(struct CourtRecord *);
extern void sub_8010E14(s16);
extern void sub_800EEFC(struct Main *);
extern void sub_8010C4C(u8);
extern void ResetSoundControl();
extern void sub_800B7A8(struct Struct3003A50 *, u32);
extern s32 FindEvidenceInCourtRecord(u16, u32);
extern s32 FindFirstEmptySlotInCourtRecord(u16);
extern void sub_800ED68(struct CourtRecord *);
extern void sub_8011108(u32, u32, u32, u32);
extern void sub_801042C(struct Struct2002650 *);
struct Struct3000800 * sub_8010468(struct Struct300080C *, u32, u32);
extern void sub_8010960(struct Struct3000800 *);
extern struct Struct3000800 * sub_8010204(u32);
extern void sub_80106A4(u32, u32);
extern u32 sub_8007554(u32);
//EWRAM
// fuck capcom
//IWRAM
extern u16 gBG2MapBuffer[0x400]; // BG 2 Map buffer
extern struct Struct3000800 gUnknown_03000800[0x20];
extern u16 gBG3MapBuffer[0x400]; // BG 3 Map buffer
extern u16 gBG3MapBufferCopy[0x400]; // BG 3 Map buffer copy TODO: this 1 array is keeping me away from naming the other ones..  BG Pan related?
extern u16 gBG1MapBuffer[0x400]; // BG 1 Map buffer
extern struct CourtRecord gCourtRecord;
extern struct TalkData gTalkData[32];
extern struct OamAttrs gOamObjects[128];
extern u16 gBG0MapBuffer[0x400]; // BG 0 Map buffer
extern struct Struct3003930 gUnknown_03003930[8];
extern u8 gTextColorTileBuffer[0x80];
extern struct Struct3003A50 gUnknown_03003A50;
extern struct ScriptContext gScriptContext;
extern struct Struct3003AB0 gUnknown_03003AB0; 
extern struct ExaminationData gExaminationData[16];
extern struct TextBoxCharacter gTextBoxCharacters[0x3F];
extern struct CourtScroll gCourtScroll;
extern struct MusicPlayerInfo gMPlayInfo_BGM;
extern struct MusicPlayerInfo gMPlayInfo_SE1;
extern struct MusicPlayerInfo gMPlayInfo_SE2;
extern struct MusicPlayerInfo gMPlayInfo_SE3;
#endif//GUARD_DECLARATIONS_H