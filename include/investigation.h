#ifndef GUARD_INVESTIGATION_H
#define GUARD_INVESTIGATION_H

#include "case_data.h"
#include "utils.h"

struct TalkData
{
    /* +0x00 */ u8 roomId;
    /* +0x01 */ u8 personId;
    /* +0x02 */ u8 unk2; // called dm in unity? probably means dummy, unused
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
    /* +0x00 */ u16 unk0; // unity AA4: finger_pos_x
    /* +0x02 */ u16 unk2; // unity AA4: finger_pos_y
    /* +0x04 */ u8 unk4; // unity AA4: sel_place
    /* +0x05 */ u8 unk5; // unity: person_flag // is person in current room?
    /* +0x06 */ u8 unk6; // unity AA4: ckeck_no_flag
    /* +0x07 */ u8 unk7; // unity AA4: menu_mv_be_flag
    /* +0x08 */ u8 unk8; // unity AA4: finger_speed_x
    /* +0x09 */ u8 unk9; // unity: siteki_no // 指摘 in japanese meaning "Pointed out" used for spot selection minigame, it's the collision it has to load for the minigame
    /* +0x0A */ u8 unkA; // unity: menu // selected investigation button, why menu?
    /* +0x0B */ u8 unkB; // unity AA4: menu_old
    /* +0x0C */ u8 unkC; // unity AA4: menu_rno
    /* +0x0D */ u8 unkD; // unity AA4: menu_pos_y
    /* +0x0E */ u8 unkE; // unity AA4: menu_add
    /* +0x0F */ u8 unkF; // unity AA4: menu_add_old
    /* +0x10 */ bool8 unk10[4]; // unity AA4: sel_place_be Which buttons for moving are active
    /* +0x14 */ u8 unk14; // unity AA4: yubi_no
    /* +0x15 */ u8 unk15; // unity AA4: yubi_timer
    /* +0x16 */ u8 unk16; // unity AA4: yubi_col_no
    /* +0x17 */ u8 unk17; // unity AA4: yubi_col_timer
};

extern struct TalkData gTalkData[32];
extern struct ExaminationData gExaminationData[16];
extern struct InvestigationStruct gInvestigation;

/* data stuff from segments */
extern const u8 gCourtRecordInitialItems_0_0[8];
extern const struct Struct811DC54 gUnknown_08014DAC[12];
extern const u8 gCourtRecordInitialItems_1_0[4];
extern const u8 gCourtRecordInitialItems_1_1[16];
extern const u8 gCourtRecordInitialItems_1_2[18];
extern const u8 gCourtRecordInitialItems_1_3[22];
extern const struct Struct811DC54 gUnknown_08014E48[15];
extern const struct Struct811DC54 gUnknown_08014EC0[14];
extern const struct Struct811DC98 gUnknown_08014F30[17];
extern const struct TalkData gTalkData_1_0[14];
extern const u8 gRoomData_1_0[6][8];
extern const struct ExaminationData gUnknown_08015100[6];
extern const struct ExaminationData gUnknown_08015178[5];
extern const struct ExaminationData gUnknown_080151DC[11];
extern const struct ExaminationData gUnknown_080152B8[2];
extern const struct ExaminationData gUnknown_080152E0[5];
extern const struct ExaminationData gUnknown_08015344[6];
extern const struct Struct811DC98 gUnknown_080153BC[12];
extern const struct TalkData gTalkData_1_2[13];
extern const u8 gRoomData_1_2[6][8];
extern const struct ExaminationData gUnknown_08015550[5];
extern const struct ExaminationData gUnknown_080155B4[5];
extern const struct ExaminationData gUnknown_08015618[2];
extern const struct ExaminationData gUnknown_08015640[6];
extern const struct ExaminationData gUnknown_080156B8[5];
extern const struct ExaminationData gUnknown_0801571C[5];
extern const struct ExaminationData gUnknown_08015780[6];
extern const struct ExaminationData gUnknown_080157F8[6];
extern const u8 gCourtRecordInitialItems_2_0[6];
extern const u8 gCourtRecordInitialItems_2_1[14];
extern const u8 gCourtRecordInitialItems_2_2[15];
extern const u8 gCourtRecordInitialItems_2_3[20];
extern const u8 gCourtRecordInitialItems_2_4[20];
extern const u8 gCourtRecordInitialItems_2_5[25];
extern const struct Struct811DC54 gUnknown_080158D4[9];
extern const struct Struct811DC54 gUnknown_0801591C[5];
extern const struct Struct811DC54 gUnknown_08015944[6];
extern const struct Struct811DC54 gUnknown_08015974[10];
extern const struct Struct811DC98 gUnknown_080159C4[11];
extern const struct TalkData gTalkData_2_0[17];
extern const u8 gRoomData_2_0[12][8];
extern const struct ExaminationData gUnknown_08015BD0[5];
extern const struct ExaminationData gUnknown_08015C34[2];
extern const struct ExaminationData gUnknown_08015C5C[5];
extern const struct ExaminationData gUnknown_08015CC0[10];
extern const struct ExaminationData gUnknown_08015D88[7];
extern const struct ExaminationData gUnknown_08015E14[6];
extern const struct ExaminationData gUnknown_08015E8C[6];
extern const struct Struct811DC98 gUnknown_08015F04[36];
extern const struct TalkData gTalkData_2_2[18];
extern const u8 gRoomData_2_2[14][8];
extern const struct ExaminationData gUnknown_080161FC[5];
extern const struct ExaminationData gUnknown_08016260[5];
extern const struct ExaminationData gUnknown_080162C4[2];
extern const struct ExaminationData gUnknown_080162EC[5];
extern const struct ExaminationData gUnknown_08016350[5];
extern const struct ExaminationData gUnknown_080163B4[10];
extern const struct ExaminationData gUnknown_0801647C[10];
extern const struct ExaminationData gUnknown_08016544[7];
extern const struct ExaminationData gUnknown_080165D0[7];
extern const struct ExaminationData gUnknown_0801665C[6];
extern const struct ExaminationData gUnknown_080166D4[6];
extern const struct ExaminationData gUnknown_0801674C[6];
extern const struct ExaminationData gUnknown_080167C4[6];
extern const struct ExaminationData gUnknown_0801683C[9];
extern const struct ExaminationData gUnknown_080168F0[9];
extern const struct ExaminationData gUnknown_080169A4[7];
extern const struct ExaminationData gUnknown_08016A30[7];
extern const struct Struct811DC98 gUnknown_08016ABC[22];
extern const struct TalkData gTalkData_2_4[13];
extern const u8 gRoomData_2_4[14][8];
extern const struct ExaminationData gUnknown_08016CE0[5];
extern const struct ExaminationData gUnknown_08016D44[2];
extern const struct ExaminationData gUnknown_08016D6C[5];
extern const struct ExaminationData gUnknown_08016DD0[10];
extern const struct ExaminationData gUnknown_08016E98[7];
extern const struct ExaminationData gUnknown_08016F24[7];
extern const struct ExaminationData gUnknown_08016FB0[6];
extern const struct ExaminationData gUnknown_08017028[9];
extern const struct ExaminationData gUnknown_080170DC[7];
extern const u8 gCourtRecordInitialItems_3_0[6];
extern const u8 gCourtRecordInitialItems_3_1[17];
extern const u8 gCourtRecordInitialItems_3_2[22];
extern const u8 gCourtRecordInitialItems_3_3[28];
extern const u8 gCourtRecordInitialItems_3_4[28];
extern const u8 gCourtRecordInitialItems_3_5[27];
extern const struct Struct811DC54 gUnknown_080171E8[11];
extern const struct Struct811DC54 gUnknown_08017240[3];
extern const struct Struct811DC54 gUnknown_08017258[8];
extern const struct Struct811DC54 gUnknown_08017298[10];
extern const struct Struct811DC98 gUnknown_080172E8[25];
extern const struct TalkData gTalkData_3_0[24];
extern const u8 gRoomData_3_0[21][8];
extern const struct ExaminationData gUnknown_08017638[5];
extern const struct ExaminationData gUnknown_0801769C[2];
extern const struct ExaminationData gUnknown_080176C4[4];
extern const struct ExaminationData gUnknown_08017714[7];
extern const struct ExaminationData gUnknown_080177A0[6];
extern const struct ExaminationData gUnknown_08017818[7];
extern const struct ExaminationData gUnknown_080178A4[3];
extern const struct ExaminationData gUnknown_080178E0[6];
extern const struct ExaminationData gUnknown_08017958[5];
extern const struct Struct811DC98 gUnknown_080179BC[45];
extern const struct TalkData gTalkData_3_2[18];
extern const u8 gRoomData_3_2[21][8];
extern const struct ExaminationData gUnknown_08017D34[5];
extern const struct ExaminationData gUnknown_08017D98[2];
extern const struct ExaminationData gUnknown_08017DC0[4];
extern const struct ExaminationData gUnknown_08017E10[6];
extern const struct ExaminationData gUnknown_08017E88[11];
extern const struct ExaminationData gUnknown_08017F64[7];
extern const struct ExaminationData gUnknown_08017FF0[3];
extern const struct ExaminationData gUnknown_0801802C[7];
extern const struct ExaminationData gUnknown_080180B8[6];
extern const struct ExaminationData gUnknown_08018130[4];
extern const struct ExaminationData gUnknown_08018180[5];
extern const struct Struct811DC98 gUnknown_080181E4[13];
extern const struct TalkData gTalkData_3_4[12];
extern const u8 gRoomData_3_4[21][8];
extern const struct ExaminationData gUnknown_080183E4[5];
extern const struct ExaminationData gUnknown_08018448[2];
extern const struct ExaminationData gUnknown_08018470[4];
extern const struct ExaminationData gUnknown_080184C0[6];
extern const struct ExaminationData gUnknown_08018538[3];
extern const struct ExaminationData gUnknown_08018574[7];
extern const struct ExaminationData gUnknown_08018600[6];
extern const struct ExaminationData gUnknown_08018678[5];
extern const struct ExaminationData gUnknown_080186DC[5];
/* end data stuff from segments */

void sub_800B7A8(struct InvestigationStruct *, u32);
extern u32 sub_800D5B0(struct InvestigationStruct *);
void sub_800D674(void);
void sub_800D6C8(void);

void sub_800B808(struct Main *, struct InvestigationStruct *);
void sub_800BAD4(struct Main *, struct InvestigationStruct *);
void sub_800BD74(struct Main *, struct InvestigationStruct *);
void sub_800BDF8(struct Main *, struct InvestigationStruct *);
void sub_800BE58(struct Main *, struct InvestigationStruct *);
void sub_800BE7C(struct Main *, struct InvestigationStruct *);
void sub_800BF90(struct Main *, struct InvestigationStruct *);
void sub_800C334(struct Main *, struct InvestigationStruct *);
void sub_800C8B8(struct Main *, struct InvestigationStruct *);
void sub_800D2B0(struct Main *, struct InvestigationStruct *);

/* Segment 1 */
void InvestigationSegmentSetup_1_0(struct Main *main);
void InvestigationRoomSetup_1_0(struct Main *main);
void InvestigationRoomUpdate_1_0(struct Main *main);

void InvestigationSegmentSetup_1_2(struct Main *main);
void InvestigationRoomSetup_1_2(struct Main *main);
void InvestigationRoomUpdate_1_2(struct Main *main);
/* Segment 2 */
void InvestigationSegmentSetup_2_0(struct Main *main);
void InvestigationRoomSetup_2_0(struct Main *main);
void InvestigationRoomUpdate_2_0(struct Main *main);

void InvestigationSegmentSetup_2_2(struct Main *main);
void InvestigationRoomSetup_2_2(struct Main *main);
void InvestigationRoomUpdate_2_2(struct Main *main);

void InvestigationSegmentSetup_2_4(struct Main *main);
void InvestigationRoomSetup_2_4(struct Main *main);
void InvestigationRoomUpdate_2_4(struct Main *main);
/* Segment 3 */
void InvestigationSegmentSetup_3_0(struct Main *main);
void InvestigationRoomSetup_3_0(struct Main *main);
void InvestigationRoomUpdate_3_0(struct Main *main);

void InvestigationSegmentSetup_3_2(struct Main *main);
void InvestigationRoomSetup_3_2(struct Main *main);
void InvestigationRoomUpdate_3_2(struct Main *main);

void InvestigationSegmentSetup_3_4(struct Main *main);
void InvestigationRoomSetup_3_4(struct Main *main);
void InvestigationRoomUpdate_3_4(struct Main *main);

void InvestigationDummy(struct Main *main);

void GameProcess04(struct Main *);

#endif//GUARD_INVESTIGATION_H