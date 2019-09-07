#ifndef GUARD_STRUCTS_H //TODO: get rid of this
#define GUARD_STRUCTS_H

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
    u8 filler13[0x11];
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
    u8 fillerB8[0xE8];
};

struct Struct30038D0
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22;
    u16 unk24;
    u16 unk26;
    u16 unk28;
    u16 unk2A;
    u16 unk2C;
    u16 unk2E;
    u16 unk30;
    u16 unk32;
    u16 unk34;
    u16 unk36;
    u16 unk38;
    u16 unk3A;
    u16 unk3C;
    u16 unk3E;
    u16 unk40;
    u16 unk42;
    u16 unk44;
    u8 filler46[0x2];
    u16 unk48;
    u16 unk4A;
    u16 unk4C;
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