#ifndef GUARD_SCRIPT_H
#define GUARD_SCRIPT_H

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

struct TextBoxCharacter
{
    /* +0x00 */ u16 state;
    /* +0x02 */ u16 objAttr2;
    /* +0x04 */ u16 x;
    /* +0x06 */ u16 y;
    /* +0x08 */ u8 color;
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

extern struct ScriptContext gScriptContext;
extern struct TextBoxCharacter gTextBoxCharacters[0x3F];
extern struct MapMarker gMapMarker[8];

void ChangeScriptSection(u32);
void LoadCurrentScriptIntoRam();
void RunScriptContext();
void InitScriptSection(struct ScriptContext *scriptCtx);
void RedrawTextboxCharacters();

void sub_80074E8();
u32 GetMapMarkerIndexFromId(u32);

/* begin commands */
bool32 Command00(struct ScriptContext *);
bool32 Command01(struct ScriptContext *);
bool32 Command02(struct ScriptContext *);
bool32 Command03(struct ScriptContext *);
bool32 Command04(struct ScriptContext *);
bool32 Command05(struct ScriptContext *);
bool32 Command06(struct ScriptContext *);
bool32 Command02(struct ScriptContext *);
bool32 Command08(struct ScriptContext *);
bool32 Command09(struct ScriptContext *);
bool32 Command02(struct ScriptContext *);
bool32 Command0B(struct ScriptContext *);
bool32 Command0C(struct ScriptContext *);
bool32 Command0D(struct ScriptContext *);
bool32 Command0E(struct ScriptContext *);
bool32 Command0F(struct ScriptContext *);
bool32 Command10(struct ScriptContext *);
bool32 Command11(struct ScriptContext *);
bool32 Command12(struct ScriptContext *);
bool32 Command13(struct ScriptContext *);
bool32 Command14(struct ScriptContext *);
bool32 Command15(struct ScriptContext *);
bool32 Command16(struct ScriptContext *);
bool32 Command17(struct ScriptContext *);
bool32 Command18(struct ScriptContext *);
bool32 Command19(struct ScriptContext *);
bool32 Command1A(struct ScriptContext *);
bool32 Command1B(struct ScriptContext *);
bool32 Command1C(struct ScriptContext *);
bool32 Command1D(struct ScriptContext *);
bool32 Command1E(struct ScriptContext *);
bool32 Command1F(struct ScriptContext *);
bool32 Command20(struct ScriptContext *);
bool32 Command21(struct ScriptContext *);
bool32 Command22(struct ScriptContext *);
bool32 Command23(struct ScriptContext *);
bool32 Command24(struct ScriptContext *);
bool32 Command25(struct ScriptContext *);
bool32 Command26(struct ScriptContext *);
bool32 Command27(struct ScriptContext *);
bool32 Command28(struct ScriptContext *);
bool32 Command29(struct ScriptContext *);
bool32 Command2A(struct ScriptContext *);
bool32 Command2B(struct ScriptContext *);
bool32 Command2C(struct ScriptContext *);
bool32 Command02(struct ScriptContext *);
bool32 Command2E(struct ScriptContext *);
bool32 Command2F(struct ScriptContext *);
bool32 Command30(struct ScriptContext *);
bool32 Command31(struct ScriptContext *);
bool32 Command32(struct ScriptContext *);
bool32 Command33(struct ScriptContext *);
bool32 Command34(struct ScriptContext *);
bool32 Command35(struct ScriptContext *);
bool32 Command36(struct ScriptContext *);
bool32 Command37(struct ScriptContext *);
bool32 Command38(struct ScriptContext *);
bool32 Command39(struct ScriptContext *);
bool32 Command3A(struct ScriptContext *);
bool32 Command3B(struct ScriptContext *);
bool32 Command3C(struct ScriptContext *);
bool32 Command3D(struct ScriptContext *);
bool32 Command3E(struct ScriptContext *);
bool32 Command3F(struct ScriptContext *);
bool32 Command40(struct ScriptContext *);
bool32 Command41(struct ScriptContext *);
bool32 Command42(struct ScriptContext *);
bool32 Command43(struct ScriptContext *);
bool32 Command44(struct ScriptContext *);
bool32 Command15(struct ScriptContext *);
bool32 Command46(struct ScriptContext *);
bool32 Command47(struct ScriptContext *);
bool32 Command48(struct ScriptContext *);
bool32 Command49(struct ScriptContext *);
bool32 Command4A(struct ScriptContext *);
bool32 Command4B(struct ScriptContext *);
bool32 Command4C(struct ScriptContext *);
bool32 Command4D(struct ScriptContext *);
bool32 Command4E(struct ScriptContext *);
bool32 Command4F(struct ScriptContext *);
bool32 Command50(struct ScriptContext *);
bool32 Command51(struct ScriptContext *);
bool32 Command52(struct ScriptContext *);
bool32 Command53(struct ScriptContext *);
bool32 Command54(struct ScriptContext *);
bool32 Command55(struct ScriptContext *);
bool32 Command56(struct ScriptContext *);
bool32 Command57(struct ScriptContext *);
bool32 Command58(struct ScriptContext *);
bool32 Command59(struct ScriptContext *);
bool32 Command5A(struct ScriptContext *);
bool32 Command5B(struct ScriptContext *);
bool32 Command5C(struct ScriptContext *);
bool32 Command5D(struct ScriptContext *);
bool32 Command5E(struct ScriptContext *);
bool32 Command5F(struct ScriptContext *);
/* end commands */

#endif//GUARD_SCRIPT_H