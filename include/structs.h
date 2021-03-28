#ifndef GUARD_STRUCTS_H //TODO: get rid of this file and move everything to the place they should be in
#define GUARD_STRUCTS_H

struct OamAttrs // why tho capcom there is already a struct called OamData that is the same thing as what you have here please for the love of god
				// maybe it's because of access times for u16 vs u32 but idk it seems too insignificant
{
    /* +0x00 */ u16 attr0;
    /* +0x02 */ u16 attr1;
    /* +0x04 */ u16 attr2;
    /* +0x06 */ u16 attr3;
};

struct AnimationFrame
{
    /* +0x00 */ u16 spriteDataOffset;
    /* +0x02 */ u8 frameDuration;
    /* +0x03 */ u8 flags;
    /* +0x04 */ u8 songId;
    /* +0x05 */ u8 action;
    /* +0x06 */ u8 filler6[2];
};

struct AnimationStructFieldC
{
    /* +0x00 */ u16 animId;
    /* +0x02 */ u8 unk2[2];
    /* +0x04 */ s16 xOrigin;
    /* +0x06 */ s16 yOrigin;
    /* +0x08 */ u8 * animFrameDataStartPtr;
    /* +0x0C */ u8 * tileDataPtr;
    /* +0x10 */ u8 * vramPtr;
    /* +0x14 */ u8 * animGfxDataStartPtr;
    /* +0x18 */ u8 paletteSlot;
    /* +0x19 */ u8 spriteCount;
    /* +0x1A */ u8 priority;
    /* +0x1B */ u8 filler1B[1];
};

struct SpriteTemplate {
    /* +0x00 */ s8 x;
    /* +0x01 */ s8 y;
    /* +0x02 */ u16 data;
};

struct AnimationStruct
{
    /* +0x00 */ s32 flags;
    /* +0x04 */ struct AnimationStruct * prevAnimation;
    /* +0x08 */ struct AnimationStruct * nextAnimation;
    /* +0x0C */ struct AnimationStructFieldC unkC;
    /* +0x28 */ s16 frameDurationCounter;
    /* +0x2A */ u8 unk2A; 
    /* +0x2B */ u8 unk2B; 
    /* +0x2C */ u8 unk2C;
    /* +0x2D */ u8 unk2D;
    /* +0x2E */ s16 unk2E;
    /* +0x30 */ struct SpriteTemplate * unk30;
    /* +0x34 */ struct AnimationFrame * frameData;
    /* +0x38 */ u16 tileNum;
    /* +0x3A */ u8 animtionOamStartIdx;
    /* +0x3B */ u8 animtionOamEndIdx;
    /* +0x3C */ s16 rotationAmount;
    /* +0x3E */ u16 unk3E;
};

struct MapMarker
{ 
    /* +0x00 */ u8 id; 
    /* +0x01 */ u8 isBlinking;
    /* +0x02 */ u8 blinkTimer;
    /* +0x03 */ u8 speed;
    /* +0x04 */ u8 direction;
    /* +0x05 */ u8 unk5; // status
    /* +0x06 */ u8 distanceToMove;
    /* +0x07 */ u8 distanceMoved;
    /* +0x08 */ u16 attr0;
    /* +0x0A */ u16 attr1;
    /* +0x0C */ u16 attr2;
    /* +0x0E */ u16 oamIdx;
    /* +0x10 */ u8 *volatile vramPtr;
};

struct ScriptContext
{
    /* +0x00 */ u16 flags; // message status, flags
    /* +0x02 */ u16 waitTimer;
    /* +0x04 */ u16 * scriptPtr;
    /* +0x08 */ u16 * scriptSectionPtr;
    /* +0x0C */ u16 currentToken;
    /* +0x0E */ u8 textX;
    /* +0x0F */ u8 textY;
    /* +0x10 */ u8 fullscreenCharCount;
    /* +0x11 */ u8 fullscreenTextY;
    /* +0x12 */ u8 fullscreenTextX;
    /* +0x13 */ u8 unk13;
    /* +0x14 */ u8 unk14;
    /* +0x15 */ u8 unk15;
    /* +0x16 */ u8 soundCueSkip;
    /* +0x17 */ u8 currentSoundCue;
    /* +0x18 */ u16 textXOffset;
    /* +0x1A */ u16 textYOffset;
    /* +0x1C */ u16 scriptHeaderSize;
    /* +0x1E */ u16 currentSection;
    /* +0x20 */ u16 nextSection;
    /* +0x22 */ u16 previousSection;
    /* +0x24 */ u8 textColor;
    /* +0x25 */ u8 textSpeed;
    /* +0x26 */ u8 unk26;
    /* +0x27 */ u8 textDelayTimer;
    /* +0x28 */ u16 unk28;
    /* +0x2A */ u16 unk2A;
    /* +0x2C */ u16 holdItSection;
    /* +0x2E */ u8 holdItFlag;
    /* +0x2F */ u8 filler2F[0x3];
    /* +0x32 */ u8 unk32;
    /* +0x33 */ u8 unk33;
    /* +0x34 */ u8 textboxNameId;
    /* +0x35 */ u8 unk35;
    /* +0x36 */ u8 unk36;
    /* +0x37 */ u8 unk37;
    /* +0x38 */ u8 unk38;
    /* +0x39 */ u8 unk39;
    /* +0x3A */ u8 unk3A;
    /* +0x3B */ u8 unk3B;
    /* +0x3C */ u8 * unk3C;
};

struct CourtRecord
{
    /* +0x00 */ s8 unk0;
    /* +0x01 */ s8 unk1;
    /* +0x02 */ u8 unk2;
    /* +0x03 */ u8 unk3;
    /* +0x04 */ u16 unk4;
    /* +0x06 */ u16 unk6;
    /* +0x08 */ u8 unk8;
    /* +0x09 */ u8 unk9;
    /* +0x0A */ bool8 isSaveScreen;
    /* +0x0B */ u8 unkB;
    /* +0x0C */ u8 unkC;
    /* +0x0D */ u8 unkD;
    /* +0x0E */ u8 unkE;
    /* +0x0F */ u8 unkF;
    /* +0x10 */ u8 unk10;
    /* +0x11 */ u8 unk11;
    /* +0x12 */ u8 unk12;
    /* +0x13 */ u8 unk13;
    /* +0x14 */ u8 * unk14;
    /* +0x18 */ u8 evidenceList[0x20];
    /* +0x38 */ u8 profileList[0x20];
};

struct TalkData
{
    /* +0x00 */ u8 roomId;
    /* +0x01 */ u8 personId;
    /* +0x02 */ u8 unk2; // called dm in unity?
    /* +0x03 */ u8 enableFlag; // en- or disables this specific set of talk data, allows for multiple sets for one character in one room
    /* +0x04 */ u8 iconId[0x4];
    /* +0x08 */ u8 talkFlagId[0x4];
    /* +0x0C */ u16 talkSection[0x4];
};

struct InvestigationStruct // unity: tantei_work_
{
    /* +0x00 */ u16 unk0; // unity: inspect_cursor_x?
    /* +0x02 */ u16 unk2; // unity: inspect_cursor_y?
    /* +0x04 */ u8 unk4;
    /* +0x05 */ u8 unk5; // unity: person_flag // is person in current room?
    /* +0x06 */ u8 unk6;
    /* +0x07 */ u8 unk7;
    /* +0x08 */ u8 unk8;
    /* +0x09 */ u8 unk9; // unity: siteki_no // 指摘 in japanese meaning "Pointed out" used for spot selection minigame, it's the collision it has to load for the minigame
    /* +0x0A */ u8 unkA; // unity: menu // selected investigation button, why menu?
    /* +0x0B */ u8 unkB;
    /* +0x0C */ u8 unkC;
    /* +0x0D */ u8 unkD;
    /* +0x0E */ u8 unkE;
    /* +0x0F */ u8 unkF;
    /* +0x10 */ bool8 unk10[4]; // unity: sel_place_be? Which buttons for moving are active
    /* +0x14 */ u8 unk14;
    /* +0x15 */ u8 unk15;
    /* +0x16 */ u8 unk16;
    /* +0x17 */ u8 unk17;
};

struct TestimonyStruct
{
    /* +0x00 */ u8 unk0;
    /* +0x01 */ u8 unk1;
    /* +0x02 */ u8 unk2;
    /* +0x03 */ u8 unk3;
    /* +0x04 */ u16 unk4;
    /* +0x06 */ u8 unk6;
    /* +0x07 */ u8 unk7; // filler?
};

struct TextBoxCharacter
{
    /* +0x00 */ u16 state;
    /* +0x02 */ u16 objAttr2;
    /* +0x04 */ u16 x;
    /* +0x06 */ u16 y;
    /* +0x08 */ u8 color;
};

struct CourtScroll
{
    /* +0x00 */ u8 * unk0;
    /* +0x04 */ u16 state;
    /* +0x06 */ u8 unk6;
    /* +0x07 */ u8 unk7; // padding??
    /* +0x08 */ u16 unk8;
    /* +0x0A */ u16 unkA;
    /* +0x0C */ s16 unkC;
    /* +0x0E */ s16 unkE;
};

struct AnimationBackupStruct
{
    /* +0x00 */ u16 animId;
    /* +0x02 */ u8 unk2; // unkC.unk2[0]
    /* +0x03 */ u8 unk3; // unkC.unk2[1]
    /* +0x04 */ s16 xOrigin;
    /* +0x06 */ s16 yOrigin;
    /* +0x08 */ u8 * animFrameDataStartPtr;
    /* +0x0C */ u16 frameDurationCounter;
    /* +0x0E */ u8 unkE; // unk2A
    /* +0x0F */ u8 unkF; // unk2B
    /* +0x10 */ u8 unk10; // unk2C
    /* +0x11 */ u8 unk11; // unk2D
    /* +0x12 */ u16 unk12; // unk2E
    /* +0x14 */ u32 flags;
    /* +0x18 */ struct AnimationFrame * frameData;
};

struct Point 
{
    /* +0x00 */ u16 x;
    /* +0x02 */ u16 y;
};

struct Point4 // shamelessly stolen from unity
{
    /* +0x00 */ struct Point points[4];
};

struct Rect
{
    /* +0x00 */ struct Point origin; 
    /* +0x04 */ u16 w;
    /* +0x06 */ u16 h;
};

struct Struct80187C8
{
    /* +0x00 */ u8 * tiles;
    /* +0x04 */ u16 size;
    /* +0x06 */ u16 attr0;
    /* +0x08 */ u16 attr1;
    /* +0x0A */ u16 attr2;
};

struct Struct8018870
{
    /* +0x00 */ struct Point4 unk0;
    /* +0x10 */ struct Point4 unk10;
    /* +0x20 */ u16 unk20;
    /* +0x22 */ u16 unk22;
    /* +0x24 */ u16 unk24;
    /* +0x26 */ u8 pad[2]; // possibly another u16 unused
    /* +0x28 */ u8 unk28;
    /* +0x29 */ u8 unk29;
    /* +0x2A */ u8 unk2A;
    /* +0x2B */ u8 unk2B;
};

struct PersonAnimationData
{
    /* +0x00 */ u8* gfxData;
    /* +0x04 */ u8* frameData;
    /* +0x08 */ u16 spriteCount;
    /* +0x0A */ u16 unkA;
};

struct AnimationData
{
    /* +0x00 */ u8* gfxData;
    /* +0x04 */ u8* vramPtr;
    /* +0x08 */ u8* frameData;
    /* +0x0C */ s16 xOrigin;
    /* +0x0E */ s16 yOrigin;
    /* +0x10 */ u8 paletteSlot;
    /* +0x11 */ u8 spriteCount;
    /* +0x12 */ u8 priority; // first nibble animation priority(?) second nibble sprite priority
    /* +0x13 */ u8 flags;
};

struct SpriteSizeData {
    /* +0x00 */ u16 tileSize;
    /* +0x02 */ u8 height;
    /* +0x03 */ u8 width;
};

struct ExaminationData
{
    /* +0x00 */ u16 examinationSection;
    /* +0x02 */ u8 unk2;
    /* +0x03 */ u8 unk3;
    /* +0x04 */ struct Point4 area;
};

struct EvidenceProfileData
{
    /* +0x00 */ u8 * descriptionTiles;
    /* +0x04 */ u16 unk4;
    /* +0x06 */ u16 unk6;
};

struct Struct811DC54
{
    /* +0x00 */ u16 unk0;
    /* +0x02 */ u16 unk2;
    /* +0x04 */ u16 unk4;
    /* +0x06 */ u8 unk6;
    /* +0x07 */ u8 unk7;
};

struct Struct811DC98
{
    /* +0x00 */ u8 unk0;
    /* +0x01 */ u8 unk1;
    /* +0x02 */ u8 unk2;
    /* +0x03 */ u8 unk3;
    /* +0x04 */ u16 unk4;
    /* +0x06 */ u16 unk6;
};

struct SaveData
{
    /* +0x0000 */ char saveDataVer[0x30];
    /* +0x0030 */ u32 magic;
    /* +0x0034 */ struct Main main;
    /* +0x01D4 */ struct IORegisters ioRegs;
    /* +0x0228 */ struct ScriptContext scriptCtx;
    /* +0x0268 */ struct CourtRecord courtRecord;
    /* +0x02C0 */ struct CourtScroll courtScroll;
    /* +0x02D0 */ struct TestimonyStruct iwramStruct3AB0;
    /* +0x02D8 */ struct InvestigationStruct iwramStruct3A50;
    /* +0x02F0 */ struct ExaminationData examinationData[16];
    /* +0x0430 */ struct TalkData talkData[32];
    /* +0x06B0 */ struct MapMarker mapMarker[8];
    /* +0x0750 */ struct OamAttrs oam[128];
    /* +0x0B50 */ struct TextBoxCharacter textBoxCharacters[0x40];
    /* +0x0E50 */ u16 bg0Map[0x400];
    /* +0x1650 */ u16 bg1Map[0x400];
    /* +0x1E50 */ u16 bg2Map[0x400];
    /* +0x2650 */ struct AnimationBackupStruct backupAnimations[0x20];
};

#endif//GUARD_STRUCTS_H