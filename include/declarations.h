#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

/* numbered processes for now */

//~ gProcess3SubProcesses:
void sub_800A3EC(struct Main *);
void sub_800A5B0(struct Main *);
void sub_800A6AC(struct Main *);

//~ gProcess5SubProcesses:
void sub_800A894(struct Main *);
void sub_800A8E0(struct Main *);
void sub_800A9FC(struct Main *);
void sub_800A730(struct Main *);

//~ gProcess6SubProcesses:
void sub_800AB58(struct Main *);
void sub_800AC1C(struct Main *);
void nullsub_32(struct Main *);
void sub_800AA10(struct Main *);
void sub_800AE58(struct Main *);
void sub_800AF2C(struct Main *);

/* end numbered processes for now */

//DATA
extern u8 gUnknown_08013B58[];
extern u8 gUnknown_08013B64[];
extern const u8 gUnknown_08013B70[0x400];

extern u8 gTextPal[0x20];

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

extern u8 gUnknown_08196CA8[];
extern u8 gUnknown_081970DC[];
extern u8 gUnknown_08197514[];
extern u8 gUnknown_08197928[];
extern u8 gUnknown_08197D18[];
extern u8 gUnknown_081981A0[];
extern u8 gUnknown_081985D8[];
extern u8 gUnknown_08198A84[];
extern u8 gUnknown_08198E5C[];
extern u8 gUnknown_08199228[];
extern u8 gUnknown_08199690[];
extern u8 gUnknown_08199AEC[];
extern u8 gUnknown_08199EC8[];
extern u8 gUnknown_0819A2E4[];
extern u8 gUnknown_0819A700[];
extern u8 gUnknown_0819ABBC[];
extern u8 gUnknown_0819B028[];
extern u8 gUnknown_0819B428[];
extern u8 gUnknown_0819B868[];
extern u8 gUnknown_0819BCE4[];
extern u8 gUnknown_0819C0D8[];
extern u8 gUnknown_0819C434[];
extern u8 gUnknown_0819C810[];
extern u8 gUnknown_0819CC44[];
extern u8 gUnknown_0819D028[];
extern u8 gUnknown_0819D4C8[];
extern u8 gUnknown_0819D90C[];
extern u8 gUnknown_0819DDAC[];
extern u8 gUnknown_0819E18C[];
extern u8 gUnknown_0819E5A0[];
extern u8 gUnknown_0819E9D8[];
extern u8 gUnknown_0819EDF0[];
extern u8 gUnknown_0819F208[];
extern u8 gUnknown_0819F5C0[];
extern u8 gUnknown_0819F9E8[];
extern u8 gUnknown_0819FD84[];
extern u8 gUnknown_081A0120[];
extern u8 gUnknown_081A0580[];
extern u8 gUnknown_081A09E4[];
extern u8 gUnknown_081A0E58[];
extern u8 gUnknown_081A1324[];
extern u8 gUnknown_081A1728[];
extern u8 gUnknown_081A1A10[];
extern u8 gUnknown_081A1E1C[];
extern u8 gUnknown_081A22A4[];
extern u8 gUnknown_081A26BC[];
extern u8 gUnknown_081A2AE4[];
extern u8 gUnknown_081A2EE4[];
extern u8 gUnknown_081A3330[];
extern u8 gUnknown_081A3714[];
extern u8 gUnknown_081A3B44[];
extern u8 gUnknown_081A3FF8[];
extern u8 gUnknown_081A439C[];
extern u8 gUnknown_081A47D4[];
extern u8 gUnknown_081A4BD4[];
extern u8 gUnknown_081A4FF0[];
extern u8 gUnknown_081A541C[];
extern u8 gUnknown_081A5828[];
extern u8 gUnknown_081A5BF4[];
extern u8 gUnknown_081A5FA4[];
extern u8 gUnknown_081A639C[];
extern u8 gUnknown_081A675C[];
extern u8 gUnknown_081A6B88[];
extern u8 gUnknown_081A6F68[];
extern u8 gUnknown_081A7310[];
extern u8 gUnknown_081A775C[];
extern u8 gUnknown_081A7B68[];
extern u8 gUnknown_081A7FA4[];
extern u8 gUnknown_081A83C4[];
extern u8 gUnknown_081A8828[];
extern u8 gUnknown_081A8C30[];
extern u8 gUnknown_081A8F4C[];
extern u8 gUnknown_081A9380[];
extern u8 gUnknown_081A97CC[];
extern u8 gUnknown_081A9BC8[];
extern u8 gUnknown_081AA054[];
extern u8 gUnknown_081AA458[];
extern u8 gUnknown_081AA894[];
extern u8 gUnknown_081AACDC[];
extern u8 gUnknown_081AB178[];
extern u8 gUnknown_081AB574[];
extern u8 gUnknown_081AB9FC[];
extern u8 gUnknown_081ABE00[];
extern u8 gUnknown_081AC2B0[];
extern u8 gUnknown_081AC75C[];
extern u8 gUnknown_081ACBFC[];
extern u8 gUnknown_081AD02C[];
extern u8 gUnknown_081AD448[];
extern u8 gUnknown_081AD864[];
extern u8 gUnknown_081ADCD4[];
extern u8 gUnknown_081AE0DC[];
extern u8 gUnknown_081AE4FC[];
extern u8 gUnknown_081AE938[];
extern u8 gUnknown_081AED3C[];
extern u8 gUnknown_081AF15C[];
extern u8 gUnknown_081AF5A8[];
extern u8 gUnknown_081AF9DC[];
extern u8 gUnknown_081AFE0C[];
extern u8 gUnknown_081B01D0[];
extern u8 gUnknown_081B0594[];
extern u8 gUnknown_081B0984[];
extern u8 gUnknown_081B0DC4[];
extern u8 gUnknown_081B1150[];
extern u8 gUnknown_081B14EC[];
extern u8 gUnknown_081B18C0[];
extern u8 gUnknown_081B1CBC[];
extern u8 gUnknown_081B2150[];
extern u8 gUnknown_081B25F0[];

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
extern u8 gUnknown_08472F88[];
extern u8 gUnknown_084BE188[];

//extern u8 gUnknown_0871EBBC[];
#define gUnknown_0871EBBC ((u8*)(GFX_BASE_ADDR + 0x59EBBC))
//extern u8 gUnknown_0871FCF4[];
#define gUnknown_0871FCF4 ((u8*)(GFX_BASE_ADDR + 0x59FCF4))
//extern u8 gUnknown_0871FDF8[];
#define gUnknown_0871FDF8 ((u8*)(GFX_BASE_ADDR + 0x59FDF8))
//extern u8 gUnknown_08748218[];
#define gUnknown_08748218 ((u8*)(GFX_BASE_ADDR + 0x5C8218))

#endif//GUARD_DECLARATIONS_H