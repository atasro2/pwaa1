#ifndef GUARD_STRUCTS_H //TODO: get rid of this file and move everything to the place they should be in
#define GUARD_STRUCTS_H

struct OamBits
{
    u16 first16;
    u16 second16;
    u16 third16;
    u16 fourth16;
};

struct Struct3000800 // unknown size
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u8 fillerC[0x34];
    struct Struct3000840
    {
        u32 unk0;
        u32 unk4;
        u32 unk8;
        u16 unkC;
        u8 unkE;
        u8 fillerF[0x2B];
        u8 unk3A;
        u8 unk3B;
    } unk40;
};

struct Struct3003720
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
};

struct Struct3003730
{
    u32 unk0;
    union Union3003734
    {   
        u8 field0;
        u16 field1;
        u32 field2;
    } unk4;
    u8 filler8[0x4];
    u8 unkC;
    u8 unkD;
    s8 unkE;
    s8 unkF;
    u16 unk10;
    u8 unk12;
    u8 unk13;
    u8 unk14;
    u8 filler15[0x5];
    s16 unk1A;
    u8 unk1C;
    u8 unk1D;
    u8 filler1E[0x1];
    u8 unk1F;
    s16 unk20;
    s16 unk22;
    u16 unk24;
    u8 filler26[0x2];
    u16 unk28;
    s16 unk2A;
    s8 unk2C;
    u8 unk2D;
    u8 unk2E;
    u8 filler2F[0x45];
    u16 unk74;
    u16 unk76;
    u16 unk78;
    u8 unk7A;
    u8 unk7B;
    u8 filler7C[0x10];
    u8 unk8C;
    u8 unk8D;
    u8 unk8E;
    u8 unk8F;
    u16 unk90;
    u16 unk92;
    u32 unk94;
    u8 filler98[0x1C];
    u32 unkB4;
    u32 unkB8;
    u8 fillerBC[0x1C];
    u32 unkD8;
    u8 fillerDC[0xBC];
    u32 unk198;
    u8 filler19C[0x4];
};

struct LCDIORegisters
{
    u16 lcd_bg0cnt;   /* + 0 */
    u16 lcd_bg1cnt;   /* + 2 */
    u16 lcd_bg2cnt;   /* + 4 */
    u16 lcd_bg3cnt;   /* + 6 */
    u16 lcd_bg0hofs;  /* + 8 */
    u16 lcd_bg0vofs;  /* + A */
    u16 lcd_bg1hofs;  /* + C */
    u16 lcd_bg1vofs;  /* + E */
    u16 lcd_bg2hofs;  /* +10 */
    u16 lcd_bg2vofs;  /* +12 */
    u16 lcd_bg3hofs;  /* +14 */
    u16 lcd_bg3vofs;  /* +16 */
    u16 lcd_bg2pa;    /* +18 */
    u16 lcd_bg2pb;    /* +1A */
    u16 lcd_bg2pc;    /* +1C */
    u16 lcd_bg2pd;    /* +1E */
    u32 lcd_bg2x;     /* +20 */
    u32 lcd_bg2y;     /* +24 */
    u16 lcd_bg3pa;    /* +28 */
    u16 lcd_bg3pb;    /* +2A */
    u16 lcd_bg3pc;    /* +2C */
    u16 lcd_bg3pd;    /* +2E */
    u32 lcd_bg3x;     /* +30 */
    u32 lcd_bg3y;     /* +34 */
    u16 lcd_win0h;    /* +38 */
    u16 lcd_win1h;    /* +3A */
    u16 lcd_win0v;    /* +3C */
    u16 lcd_win1v;    /* +3E */
    u16 lcd_winin;    /* +40 */
    u16 lcd_winout;   /* +42 */
    u16 lcd_mosaic;   /* +44 */
    u8 filler46[2];   /* +46 */ 
    u16 lcd_bldcnt;   /* +48 */
    u16 lcd_dispcnt;  /* +4A */
    u16 lcd_bldalpha; /* +4C */
    u16 lcd_bldy;     /* +4E */
    u16 iwp_ie;       /* +50 */
    u16 lcd_dispstat; /* +52 */
};

struct Struct3003930 
{ 
    u8 unk0; 
    u8 unk1;
    u8 filler2[0x3];
    u8 unk5;
    u8 filler6[0x2];
    u16 unk8;
    u8 fillerA[0xA]; 
};

struct Struct3003A70
{
    u16 unk0; // message status
    u16 unk2; // wait timer
    u16 * scriptPtr; /* +4 */
    u16 * scriptPtr2;
    u16 unkC;
    u8 unkE;
    u8 unkF;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
    u8 unk14;
    u8 unk15;
    u8 unk16;
    u8 unk17;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22;
    u8 unk24; // color
    u8 unk25; // speed
    u8 unk26;
    u8 unk27;
    u16 unk28;
    u16 unk2A;
    u16 unk2C;
    u8 unk2E;
    u8 filler2F[0x5];
    u8 unk34;
    u8 unk35;
    u8 unk36;
    u8 unk37;
    u8 filler38[0x4];
    u32 unk3C;
};

struct SaveData
{
    char saveDataVer[0x30];
    u32 magic;
    u8 fill38[0x2998]; /*  other structs maybe? */
    u8 unk29D0;       /**/
};

struct Struct3002840
{
    u8 filler0[0x58];
};

struct Struct30028A0
{
    u8 filler0[0x280];
};

struct Struct3003A50
{
    u8 filler0[0x5];
    u8 unk5;
    u8 filler6[0x8];
    u8 unkE;
    u8 fillerF[0x9];
};

struct Struct3003AB0
{
    u8 filler0[0x8];
};

struct Struct3004000
{
    u32 unk0;
    u16 unk4;
    u8 filler6[0x6];
    s16 unkC;
    s16 unkE;
};

#endif//GUARD_STRUCTS_H