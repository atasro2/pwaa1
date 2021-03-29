#ifndef GUARD_INVESTIGATION_H
#define GUARD_INVESTIGATION_H

#include "utils.h"

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

struct ExaminationData
{
    /* +0x00 */ u16 examinationSection;
    /* +0x02 */ u8 unk2;
    /* +0x03 */ u8 unk3;
    /* +0x04 */ struct Point4 area;
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

extern struct TalkData gTalkData[32];
extern struct ExaminationData gExaminationData[16];
extern struct InvestigationStruct gInvestigation;

void sub_800B7A8(struct InvestigationStruct *, u32);
extern u32 sub_800D5B0(struct InvestigationStruct *);
void sub_800D674(void);
void sub_800D6C8(void);

void GameProcess04(struct Main *);

#endif//GUARD_INVESTIGATION_H