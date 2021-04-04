#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

#include "structs.h"

//DATA
extern u8 gUnknown_08013B58[];
extern u8 gUnknown_08013B64[];
extern const u8 gUnknown_08014D70[];
extern const u16 gUnknown_08014D82[]; // GS1_gameover_message_data_table
extern const u8 gUnknown_08013B70[0x400];

extern u8 gUnknown_08015100[0x78];
extern u8 gUnknown_08015178[0x64];
extern u8 gUnknown_080151DC[0xDC];
extern u8 gUnknown_080152B8[0x28];
extern u8 gUnknown_080152E0[0x64];
extern u8 gUnknown_08015344[0x78];
extern u8 gUnknown_080153BC[0x60];
extern u8 gUnknown_0801541C[0x104];
extern u8 gUnknown_08015520[0x30];
extern u8 gUnknown_08015550[0x64];
extern u8 gUnknown_080155B4[0x64];
extern u8 gUnknown_08015618[0x28];
extern u8 gUnknown_08015640[0x78];
extern u8 gUnknown_080156B8[0x64];
extern u8 gUnknown_0801571C[0x64];
extern u8 gUnknown_08015780[0x78];
extern u8 gUnknown_080157F8[0x78];
extern u8 gUnknown_08015870[0x6];
extern u8 gUnknown_08015876[0xE];
extern u8 gUnknown_08015884[0xF];
extern u8 gUnknown_08015893[0x14];
extern u8 gUnknown_080158A7[0x14];
extern u8 gUnknown_080158BB[0x19];
extern u8 gUnknown_080158D4[0x48];
extern u8 gUnknown_0801591C[0x28];
extern u8 gUnknown_08015944[0x30];
extern u8 gUnknown_08015974[0x50];
extern u8 gUnknown_080159C4[0x58];
extern u8 gUnknown_08015A1C[0x154];
extern u8 gUnknown_08015B70[0x60];
extern u8 gUnknown_08015BD0[0x64];
extern u8 gUnknown_08015C34[0x28];
extern u8 gUnknown_08015C5C[0x64];
extern u8 gUnknown_08015CC0[0xC8];
extern u8 gUnknown_08015D88[0x8C];
extern u8 gUnknown_08015E14[0x78];
extern u8 gUnknown_08015E8C[0x78];
extern u8 gUnknown_08015F04[0x120];
extern u8 gUnknown_08016024[0x168];
extern u8 gUnknown_0801618C[0x70];
extern u8 gUnknown_080161FC[0x64];
extern u8 gUnknown_08016260[0x64];
extern u8 gUnknown_080162C4[0x28];
extern u8 gUnknown_080162EC[0x64];
extern u8 gUnknown_08016350[0x64];
extern u8 gUnknown_080163B4[0xC8];
extern u8 gUnknown_0801647C[0xC8];
extern u8 gUnknown_08016544[0x8C];
extern u8 gUnknown_080165D0[0x8C];
extern u8 gUnknown_0801665C[0x78];
extern u8 gUnknown_080166D4[0x78];
extern u8 gUnknown_0801674C[0x78];
extern u8 gUnknown_080167C4[0x78];
extern u8 gUnknown_0801683C[0xB4];
extern u8 gUnknown_080168F0[0xB4];
extern u8 gUnknown_080169A4[0x8C];
extern u8 gUnknown_08016A30[0x8C];
extern u8 gUnknown_08016ABC[0xB0];
extern u8 gUnknown_08016B6C[0x104];
extern u8 gUnknown_08016C70[0x70];
extern u8 gUnknown_08016CE0[0x64];
extern u8 gUnknown_08016D44[0x28];
extern u8 gUnknown_08016D6C[0x64];
extern u8 gUnknown_08016DD0[0xC8];
extern u8 gUnknown_08016E98[0x8C];
extern u8 gUnknown_08016F24[0x8C];
extern u8 gUnknown_08016FB0[0x78];
extern u8 gUnknown_08017028[0xB4];
extern u8 gUnknown_080170DC[0xB4];
extern u8 gUnknown_08017190[0x5];
extern u8 gUnknown_08017195[0x1C];
extern u8 gUnknown_080171B1[0x1C];
extern u8 gUnknown_080171CD[0x1B];
extern u8 gUnknown_080171E8[0x58];
extern u8 gUnknown_08017240[0x18];
extern u8 gUnknown_08017258[0x40];
extern u8 gUnknown_08017298[0x50];
extern u8 gUnknown_080172E8[0xC8];
extern u8 gUnknown_080173B0[0x1E0];
extern u8 gUnknown_08017590[0xA8];
extern u8 gUnknown_08017638[0x64];
extern u8 gUnknown_0801769C[0x28];
extern u8 gUnknown_080176C4[0x50];
extern u8 gUnknown_08017714[0x8C];
extern u8 gUnknown_080177A0[0x78];
extern u8 gUnknown_08017818[0x8C];
extern u8 gUnknown_080178A4[0x3C];
extern u8 gUnknown_080178E0[0x78];
extern u8 gUnknown_08017958[0x64];
extern u8 gUnknown_080179BC[0x168];
extern u8 gUnknown_08017B24[0x168];
extern u8 gUnknown_08017C8C[0xA8];
extern u8 gUnknown_08017D34[0x64];
extern u8 gUnknown_08017D98[0x28];
extern u8 gUnknown_08017DC0[0x50];
extern u8 gUnknown_08017E10[0x78];
extern u8 gUnknown_08017E88[0xDC];
extern u8 gUnknown_08017F64[0x8C];
extern u8 gUnknown_08017FF0[0x3C];
extern u8 gUnknown_0801802C[0x8C];
extern u8 gUnknown_080180B8[0x78];
extern u8 gUnknown_08018130[0x50];
extern u8 gUnknown_08018180[0x64];
extern u8 gUnknown_080181E4[0x68];
extern u8 gUnknown_0801824C[0xF0];
extern u8 gUnknown_0801833C[0xA8];
extern u8 gUnknown_080183E4[0x64];
extern u8 gUnknown_08018448[0x28];
extern u8 gUnknown_08018470[0x50];
extern u8 gUnknown_080184C0[0x78];
extern u8 gUnknown_08018538[0x3C];
extern u8 gUnknown_08018574[0x8C];
extern u8 gUnknown_08018600[0x78];
extern u8 gUnknown_08018678[0x64];
extern u8 gUnknown_080186DC[0x64];

extern struct Struct8018870 gUnknown_08018870[7];
extern u8 gUnknown_080189A4[];
extern u8 gUnknown_08018DCC[];
extern u8 gUnknown_08018DD0[];
extern u8 gSaveVersion[0x30];
extern void (*gGameProcesses[15])(struct Main *);
extern void (*gUnknown_0811DBF0[5])(struct CourtRecord *);
extern u8 * gUnknown_0811DC10[17];
extern struct Struct811DC54 * gUnknown_0811DC54[17];
extern struct Struct811DC98 * gUnknown_0811DC98[17];
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
extern struct EvidenceProfileData gUnknown_08018A6C[];
extern s8 gUnknown_0801948C[0x1F];
extern s8 gUnknown_080194AB[0x1F];
extern s8 gUnknown_080194CA[0x1F];
extern u16 gUnknown_08013F70[];
extern u16 gUnknown_08014270[];

extern void (*gUnknown_0811DD20[])(struct Main *);
extern void (*gUnknown_0811DCDC[])(struct Main *);
extern void (*gUnknown_0811DD64[])(struct Main *);

#ifndef ROM_START
#define ROM_START 0x08000000 // why is this not already a fucking define 
#endif

#define GFX_BASE_ADDR (ROM_START + 0x180000)

// 0x180000 onwards // GFX basically
// maybe change to defines
// keep both actually it won't matter a whole lot
extern u8 gUnknown_08180000[0x200]; // palette 
extern u8 gUnknown_08180200[]; // compressed tile data goes with previous palette probably
extern u8 gUnusedAsciiCharSet[0x800]; // first 60 characters of ascii
//extern u8 gUnknown_08186520[];
#define gUnknown_08186520 ((u8*)(GFX_BASE_ADDR + 0x6520))
extern u8 gUnknown_08186540[0x1000];
extern u8 gUnknown_08187540[];
//extern u8 gUnknown_0818BD40[];
#define gUnknown_0818BD40 ((u8*)(GFX_BASE_ADDR + 0xBD40))
extern u8 gUnknown_0818BEC0[];
extern u8 gUnknown_0818F6C0[0x200];
extern u8 gUnknown_0818F8C0[0x800];

//extern u8 gUnknown_0818C040[];
#define gUnknown_0818C040 ((u8*)(GFX_BASE_ADDR + 0xC040))
extern u8 gUnknown_0818E4C0[];
//extern u8 gUnknown_0818F4C0[];
#define gUnknown_0818F4C0 ((u8*)(GFX_BASE_ADDR + 0xF4C0))
extern u8 gUnknown_0818F8C0[0x800];

extern u8 gUnknown_081900C0[0x400];
//extern u8 gUnknown_081904C0[];
#define gUnknown_081904C0 ((u8*)(GFX_BASE_ADDR + 0x104C0))
//extern u8 gUnknown_081906C0[0x200];
#define gUnknown_081906C0 ((u8*)(GFX_BASE_ADDR + 0x106C0))
extern u8 gUnknown_081908C0[0x200];
extern u8 gUnknown_08190AC0[]; // some tiles
extern u8 gUnknown_08190FC0[0x200];
extern u8 gUnknown_081911C0[];
extern u8 gUnknown_081914A0[0x800];
extern u8 gUnknown_08191CA0[0x800];
extern u8 gUnknown_081924A0[0x800];
extern u8 gUnknown_08192CA0[];
extern u8 gUnknown_08193CA0[0x400];
//extern u8 gUnknown_081940E0[];
#define gUnknown_081940E0 ((u8*)(GFX_BASE_ADDR + 0x140E0))
//extern u8 gUnknown_08194240[];
extern u8 gUnknown_08194200[];
#define gUnknown_08194240 ((u8*)(GFX_BASE_ADDR + 0x14240))
extern u8 gUnknown_08194260[];
//extern u8 gUnknown_081942C0[0x11][0x20]; 
#define gUnknown_081942C0 ((u8*)(GFX_BASE_ADDR + 0x142C0))
extern u8 gUnknown_08194280[0x20];
extern u8 gUnknown_081942A0[0x20];
extern u8 gUnknown_081944E0[0x20]; // palette
extern u8 gUnknown_08194500[0x20]; // 4bpp palette
extern u8 gUnknown_08194520[0x20]; // 4bpp palette
extern u8 gUnknown_08194540[0x20]; // 4bpp palette
extern u8 gUnknown_08194560[0x20]; // 4bpp palette
extern u8 gUnknown_08194580[0xC0]; // sprite palettes
extern u8 gUnknown_081946C0[];
extern u8 gUnknown_081964A8[0x800];

//extern u8 gUnknown_081B290C[];
#define gUnknown_081B290C ((u8*)(GFX_BASE_ADDR + 0x3290C))

//extern u8 gCharSet[0x550][0x80];
#define gCharSet ((u8*)(GFX_BASE_ADDR + 0x5312C))

extern u8 gUnknown_081FD92C[0x40]; // sprite palette
extern u8 gUnknown_081FD96C[0x800*4]; // tons of tiles?

extern u8 gUnknown_0820816C[0x800*4];
extern u8 gUnknown_0824696C[0x20]; // palette

extern u8 gUnknown_08360834[0x20]; // 4bpp palette
extern u16 gUnknown_08360854[]; // palette?
extern u8 gUnknown_08362524[0x20]; // 4bpp palette
extern u16 gUnknown_08362544[]; // palette?

extern u8 gUnknown_08427D88[];

//extern u8 gUnknown_0871EBBC[];
#define gUnknown_0871EBBC ((u8*)(GFX_BASE_ADDR + 0x59EBBC))
//extern u8 gUnknown_0871FCF4[];
#define gUnknown_0871FCF4 ((u8*)(GFX_BASE_ADDR + 0x59FCF4))
//extern u8 gUnknown_0871FDF8[];
#define gUnknown_0871FDF8 ((u8*)(GFX_BASE_ADDR + 0x59FDF8))
//extern u8 gUnknown_08748218[];
#define gUnknown_08748218 ((u8*)(GFX_BASE_ADDR + 0x5C8218))

//FUNCTIONS // these should be moved soon

void sub_80074E8();

void sub_8002CCC(u32 section, u32 flagId);
void sub_8002C98(u32 arg0, u32 arg1, u32 arg2);

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
extern void sub_800D3C8(struct InvestigationStruct *);
extern void sub_800D6C8(void);
extern void sub_800D674(void);
extern void sub_80020B0(u32);
extern void sub_8002878(struct CourtRecord *);
extern void ResetSoundControl();
extern void sub_800B638(struct Main *, struct TestimonyStruct *);
extern void sub_800B51C(struct Main *, struct TestimonyStruct *, u32);
extern u32 sub_800D5B0(struct InvestigationStruct *);
extern void sub_800B7A8(struct InvestigationStruct *, u32);
extern u32 GetMapMarkerIndexFromId(u32);
//EWRAM
// fuck capcom
//IWRAM
extern u16 gBG2MapBuffer[0x400]; // BG 2 Map buffer
extern struct AnimationStruct gAnimation[0x20];
extern u16 gBG3MapBuffer[0x400]; // BG 3 Map buffer
extern u16 gBG3MapBufferCopy[0x400]; // BG 3 Map buffer copy
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