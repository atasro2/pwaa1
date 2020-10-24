#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

#include "structs.h"

//DATA
extern const u8 gUnknown_08014D70[];
extern const u16 gUnknown_08014D82[]; // GS1_gameover_message_data_table
extern const u8 gUnknown_08013B70[0x400];
extern struct Struct8018870 gUnknown_08018870[7];
extern u8 gUnknown_080189A4[];
extern u8 gSaveVersion[0x30];
extern void (*gGameProcesses[15])(struct Main *);
extern void (*gUnknown_0811DFD0[11])(struct AnimationStruct *);
extern void (*gUnknown_0811DFFC[6])(struct AnimationStruct *, struct CourtScroll *);
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
extern struct PersonAnimationData gPersonAnimData[];
extern struct AnimationData gAnimationData[];
extern struct SpriteSizeData gSpriteSizeTable[0xF];
extern s8 gUnknown_0801948C[0x1F];
extern s8 gUnknown_080194AB[0x1F];
extern s8 gUnknown_080194CA[0x1F];

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
//extern u8 gUnknown_081942C0[0x11][0x20]; 
#define gUnknown_081942C0 ((u8*)0x81942C0)
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
void RunScriptContext();
void MoveSpritesToOAM();
bool32 CheckPointInArea(struct Point * point, struct Point4 * area);
void ChangeFlag(u32, u32, bool32);
bool32 GetFlag(u32 arg0, u32 arg1);
// rom8007A0C
u32 LoadSaveData();
void CalculateSaveChecksum();
u32 CheckSaveChecksum();

bool32 CheckRectCollisionWithArea(struct Rect *rect, struct Point4 *area);

//ASMFUNCTIONS

// UNSORTED
extern void sub_800D6C8(void);
extern void sub_800D674(void);
extern void sub_80020B0(u32);
extern void sub_8002878(struct CourtRecord *);
extern void sub_800EEFC(struct Main *);
extern void ResetSoundControl();
extern void sub_800B7A8(struct InvestigationStruct *, u32);
extern s32 FindEvidenceInCourtRecord(u16, u32);
extern s32 FindFirstEmptySlotInCourtRecord(u16);
extern void sub_800ED68(struct CourtRecord *);
extern u32 GetMapMarkerIndexFromId(u32);
//EWRAM
// fuck capcom
//IWRAM
extern u16 gBG2MapBuffer[0x400]; // BG 2 Map buffer
extern struct AnimationStruct gAnimation[0x20];
extern u16 gBG3MapBuffer[0x400]; // BG 3 Map buffer
extern u16 gBG3MapBufferCopy[0x400]; // BG 3 Map buffer copy TODO: this 1 array is keeping me away from naming the other ones..  BG Pan related?
extern u16 gBG1MapBuffer[0x400]; // BG 1 Map buffer
extern struct CourtRecord gCourtRecord;
extern struct TalkData gTalkData[32];
extern struct OamAttrs gOamObjects[128];
extern u16 gBG0MapBuffer[0x400]; // BG 0 Map buffer
extern struct MapMarker gMapMarker[8];
extern u8 gTextColorTileBuffer[0x80];
extern struct InvestigationStruct gInvestigation;
extern struct ScriptContext gScriptContext;
extern struct TestimonyStruct gTestimony; 
extern struct ExaminationData gExaminationData[16];
extern struct TextBoxCharacter gTextBoxCharacters[0x3F];
extern u16 gObjPaletteBuffer[16][16];
extern struct CourtScroll gCourtScroll;
extern struct MusicPlayerInfo gMPlayInfo_BGM;
extern struct MusicPlayerInfo gMPlayInfo_SE1;
extern struct MusicPlayerInfo gMPlayInfo_SE2;
extern struct MusicPlayerInfo gMPlayInfo_SE3;
#endif//GUARD_DECLARATIONS_H