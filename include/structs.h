#ifndef GUARD_STRUCTS_H //TODO: get rid of this file and move everything to the place they should be in
#define GUARD_STRUCTS_H

struct OamAttrs // why tho capcom there is already a struct called OamData that is the same thing as what you have here please for the love of god
				// maybe it's because of access times for u16 vs u32 but idk it seems too insignificant
{
    u16 attr0;
    u16 attr1;
    u16 attr2;
    u16 attr3;
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
        u8 fillerF[0x1]; // padding?
        u16 unk10;
        u16 unk12;
        u8* unk14;
        u8* unk18;
        u8 filler1C[4];
        u8* unk20;
        u8 filler24[4];
        u16 unk28;
        u8 filler2A[0x6];
        u8* unk30;
        u8* unk34;
        u8 filler38[2];
        u8 unk3A;
        u8 unk3B;
        s16 unk3C;
        u16 unk3E;
    } unk40[0x1f];
};

struct Struct3003930 // ExplCharData
{ 
    u8 id; 
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5; // status
    u8 unk6;
    u8 unk7;
    u16 attr0; /* +0x8 */
    u16 attr1; /* +0xA */
    u16 attr2; /* +0xC */
    u16 oamIdx; /* +0xE */
    u8 *volatile vramPtr; /* +0x10 */
};

struct ScriptContext
{
    u16 unk0; // message status
    u16 waitTimer; // wait timer
    u16 * scriptPtr; /* +0x4 */
    u16 * scriptSectionPtr; /* +0x8 */
    u16 currentToken; /* +0xC */
    u8 textX; /* +0xE */
    u8 textY; /* +0xF */
    u8 fullscreenCharCount; /* +0x10 */
    u8 fullscreenTextY; /* +0x11 */
    u8 fullscreenTextX; /* +0x12 */
    u8 unk13;
    u8 unk14;
    u8 unk15;
    u8 soundCueSkip; /* +0x16 */
    u8 currentSoundCue; /* +0x17 */
    u16 textXOffset; /* +0x18 */
    u16 textYOffset; /* +0x1A */
    u16 scriptHeaderSize; /* +0x1C */
    u16 currentSection; /* +0x1E */
    u16 nextSection; /* +0x20 */
    u16 previousSection; /* +0x22 */
    u8 textColor; /* +0x24 */
    u8 textSpeed; /* +0x25 */
    u8 unk26;
    u8 textDelayTimer; /* +0x27 */
    u16 unk28;
    u16 unk2A;
    u16 holdItSection; /* +0x2C */
    u8 holdItFlag; /* +0x2E */
    u8 filler2F[0x3];
    u8 unk32;
    u8 unk33;
    u8 textboxNameId;
    u8 unk35;
    u8 unk36;
    u8 unk37;
    u8 unk38;
    u8 unk39;
    u8 filler3A[0x2];
    u8 * unk3C;
};

struct CourtRecord
{
    u8 unk0;
    s8 unk1;
    u8 filler2[0xE];
    u8 unk10;
    u8 unk11;
    u8 filler12[0x6];
    u8 evidenceList[0x20];
    u8 profileList[0x20];
};

struct TalkData
{
    /* // ?? TODO: is this all just u8s in GS1?
    public uint room;

    public uint pl_id;

    public uint dm;

    public uint sw;

    public uint[] tag = new uint[4];

    public uint[] flag = new uint[4];

    public uint[] mess = new uint[4];
    */
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[0x10];
};

struct Struct3003A50
{
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    u8 filler10[0x3];
    u8 unk13;
    u8 unk14;
    u8 unk15;
    u8 unk16;
    u8 unk17;
};

struct Struct3003AB0
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u8 filler6[0x2];
};

struct TextBoxCharacter
{
    u16 state;
    u16 objVramOffset;
    u16 x;
    u16 y;
    u8 color;
};

struct CourtScroll
{
    u8 * unk0;
    u16 state;
    u8 filler6[0x6];
    s16 unkC;
    s16 unkE;
};

struct Struct2002650
{
    u8 filler0[0x8];
    u8 * unk8;
    u8 fillerC[0x8];
    u32 unk14;
    u8 * unk18;
};


struct Point4 // shamelessly stolen from unity
{
    u16 x0;
    u16 y0;
    u16 x1;
    u16 y1;
    u16 x2;
    u16 y2;
    u16 x3;
    u16 y3;
};

struct Point // shamelessly stolen from unity
{
    u16 x;
    u16 y;
};

struct Struct80187C8
{
    u8 * tiles;
    u16 size;
    u16 attr0;
    u16 attr1;
    u16 attr2;
};

struct Struct8018DD4
{
    u8* unk0;
    u8* unk4;
    u16 unk6;
    u16 unk8;
};

struct ExaminationData
{
    u16 examinationSection;
    u8 unk2;
    u8 unk3;
    struct Point4 area;
};

struct SaveData
{
    char saveDataVer[0x30]; /* + 0x0 */
    u32 magic;         /* + 0x30 */
    struct Main main; /* + 0x34 */
    struct LCDIORegisters ioRegs; /* + 0x1D4 */
    struct ScriptContext scriptCtx; /* + 0x228 */
    struct CourtRecord courtRecord; /* + 0x268 */
    struct CourtScroll courtScroll;  /* + 0x2C0 */
    struct Struct3003AB0 iwramStruct3AB0; /* + 0x2D0 */
    struct Struct3003A50 iwramStruct3A50; /* + 0x2D8 */
    struct ExaminationData examinationData[16]; /* + 0x2F0 */
    struct TalkData talkData[32]; /* + 0x430 */
    struct Struct3003930 iwramStruct3930[8]; /* + 0x6B0 */
    struct OamAttrs oam[128]; /* + 0x750 */
    struct TextBoxCharacter textBoxCharacters[0x40]; /* + 0xB50 */
    u16 bg0Map[0x400]; /* + 0xE50 */
    u16 bg1Map[0x400]; /* + 0x1650 */
    u16 bg2Map[0x400]; /* + 0x1E50 */
    struct Struct2002650 ewramStruct2650[0x20]; /* + 0x2650 */
};

#endif//GUARD_STRUCTS_H