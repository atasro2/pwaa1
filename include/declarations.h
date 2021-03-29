#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

//DATA
extern u8 gUnknown_08013B58[];
extern u8 gUnknown_08013B64[];
extern const u8 gUnknown_08014D70[];
extern const u16 gUnknown_08014D82[]; // GS1_gameover_message_data_table
extern const u8 gUnknown_08013B70[0x400];
extern u8 gUnknown_080189A4[];
extern u8 gUnknown_08018DCC[];
extern u8 gUnknown_08018DD0[];
extern u8 gSaveVersion[0x30];
extern u8 * gUnknown_0811DC10[17];
extern u32 * gFlagPtrs[3]; 
extern u32 gUnknown_080150D0[12];
extern u16 gUnknown_08014FB8[0x8C];
extern u8 gTextPal[0x20];
extern u32 std_scripts[0xDEC/4];
extern u8 gSoundCueTable[0x30];
extern u8 gTextboxDownArrowTileIndexes[8];
extern u8 * gCourtScrollGfxPointers[3];

extern s8 gUnknown_0801948C[0x1F];
extern s8 gUnknown_080194AB[0x1F];
extern s8 gUnknown_080194CA[0x1F];
extern u16 gUnknown_08013F70[];
extern u16 gUnknown_08014270[];

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

#endif//GUARD_DECLARATIONS_H