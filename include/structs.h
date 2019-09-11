#ifndef GUARD_STRUCTS_H //TODO: get rid of this
#define GUARD_STRUCTS_H

struct Struct3000000
{
    u8 filler0[0x800];
};
struct Struct3004000
{
    u32 unk0;
    u16 unk4;
    u8 filler6[0x6];
    s16 unkC;
    s16 unkE;

};

union UnknownUnion
{
    u8 field0;
    u32 field1;
};

struct Struct3002F20
{
    u8 filler0[0x800]; // this struct either has structs in it or it's huge as fuck
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
    union UnknownUnion unk1;
    u8 filler6[0x4];
    u8 unkC;
    u8 unkD;
    s8 unkE;
    s8 unkF;
    u16 unk10;
    u8 unk12;
    u8 filler13[0x7];
    s16 unk1A;
    u8 unk1C;
    u8 unk1D;
    u8 filler1E[0x2];
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
    u8 filler7C[0x11];
    u8 unk8D;
    u8 unk8E;
    u8 filler8F[0x25];
    u32 unkB4;
    u8 fillerB8[0xE0];
    u32 unk198;
    u8 filler19C[0x4];
};

struct Struct30038D0
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

struct Struct3003A70
{
    u8 filler0[0x40];
};

struct Struct2000000
{
    u8 filler0;
};

struct Struct3002840
{
    u8 filler0[0x58];
};

struct Struct3003A50
{
    u8 filler0[0x18];
};

struct Struct3003AB0
{
    u8 filler0[0x8];
};

#endif//GUARD_STRUCTS_H