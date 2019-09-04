#ifndef GUARD_STRUCTS_H //TODO: get rid of this
#define GUARD_STRUCTS_H

struct Struct3004000
{
    u8 filler0[0x4];
    u16 unk4;
    u8 filler6[0xA];
};

union UnknownUnion
{
    u8 field0;
    u32 field1;
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
    u8 filler13[0x10];
    u16 unk24;
    u8 filler26[0x2];
    u16 unk28;
    s16 unk2A;
    s8 unk2C;
    u8 filler2D[0x60];
    u8 unk8D;
    u8 unk8E;
    u8 filler8F[0x23];
    u32 unkB4;
    u8 fillerB5[0xE8];
};

struct Struct30038D0
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u8 filler8[0x4];
    s16 unkC;
    s16 unkE;
    u8 fillerF[0x4];
    s16 unk14;
    s16 unk16;
    u8 filler17[0x30];
    u16 unk48;
    u8 filler49[0x4];
    u16 unk4E;
    u16 unk50;
    u16 unk52;
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