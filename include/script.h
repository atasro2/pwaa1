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

#endif//GUARD_SCRIPT_H