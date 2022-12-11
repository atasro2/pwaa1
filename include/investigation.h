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
    /* +0x02 */ u8 type;
    /* +0x03 */ u8 animId;
    /* +0x04 */ struct Point4 area;
};  

struct InvestigationStruct // unity: tantei_work_
{
    /* +0x00 */ u16 pointerX; // unity AA4: finger_pos_x
    /* +0x02 */ u16 pointerY; // unity AA4: finger_pos_y
    /* +0x04 */ u8 selectedOption; // unity AA4: sel_place
    /* +0x05 */ bool8 personActive; // unity: person_flag // is person in current room?
    /* +0x06 */ bool8 inspectionPaused; // unity AA4: ckeck_no_flag
    /* +0x07 */ u8 inactiveActions; // unity AA4: menu_mv_be_flag
    /* +0x08 */ u8 spotselectStartCounter; // unity AA4: finger_speed_x
    /* +0x09 */ u8 spotselectId; // unity: siteki_no // 指摘 pointed out
    /* +0x0A */ u8 selectedAction; // unity: menu // selected investigation button, why menu?
    /* +0x0B */ u8 lastAction; // unity AA4: menu_old
    /* +0x0C */ u8 actionState; // unity AA4: menu_rno
    /* +0x0D */ u8 inactiveActionButtonY; // unity AA4: menu_pos_y
    /* +0x0E */ u8 selectedActionYOffset; // unity AA4: menu_add
    /* +0x0F */ u8 lastActionYOffset; // unity AA4: menu_add_old
    /* +0x10 */ bool8 activeOptions[4]; // unity AA4: sel_place_be
    /* +0x14 */ u8 pointerFrame; // unity AA4: yubi_no // 指 finger
    /* +0x15 */ u8 pointerFrameCounter; // unity AA4: yubi_timer
    /* +0x16 */ u8 pointerColor; // unity AA4: yubi_col_no
    /* +0x17 */ u8 pointerColorCounter; // unity AA4: yubi_col_timer
};

extern struct TalkData gTalkData[32];
extern struct ExaminationData gExaminationData[16];
extern struct InvestigationStruct gInvestigation;

/* data stuff from segments */
extern const u8 gCourtRecordInitialItems_0_0[7];
extern const struct CourtPresentData gCourtPresentData_0_0[12];
extern const u8 gCourtRecordInitialItems_1_0[4];
extern const u8 gCourtRecordInitialItems_1_1[16];
extern const u8 gCourtRecordInitialItems_1_2[18];
extern const u8 gCourtRecordInitialItems_1_3[19];
extern const struct CourtPresentData gCourtPresentData_1_1[15];
extern const struct CourtPresentData gCourtPresentData_1_3[14];
extern const struct InvestigationPresentData gInvestigationPresentData_1_0[17];
extern const struct TalkData gTalkData_1_0[14];
extern const u8 gRoomData_1_0[6][8];
extern const struct ExaminationData gUnknown_08015100[6];
extern const struct ExaminationData gUnknown_08015178[5];
extern const struct ExaminationData gUnknown_080151DC[11];
extern const struct ExaminationData gUnknown_080152B8[2];
extern const struct ExaminationData gUnknown_080152E0[5];
extern const struct ExaminationData gUnknown_08015344[6];
extern const struct InvestigationPresentData gInvestigationPresentData_1_2[12];
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
extern const u8 gCourtRecordInitialItems_2_5[23];
extern const struct CourtPresentData gCourtPresentData_2_1[9];
extern const struct CourtPresentData gCourtPresentData_2_3[5];
extern const struct CourtPresentData gCourtPresentData_2_4[6];
extern const struct CourtPresentData gCourtPresentData_2_5[10];
extern const struct InvestigationPresentData gInvestigationPresentData_2_0[11];
extern const struct TalkData gTalkData_2_0[17];
extern const u8 gRoomData_2_0[12][8];
extern const struct ExaminationData gUnknown_08015BD0[5];
extern const struct ExaminationData gUnknown_08015C34[2];
extern const struct ExaminationData gUnknown_08015C5C[5];
extern const struct ExaminationData gUnknown_08015CC0[10];
extern const struct ExaminationData gUnknown_08015D88[7];
extern const struct ExaminationData gUnknown_08015E14[6];
extern const struct ExaminationData gUnknown_08015E8C[6];
extern const struct InvestigationPresentData gInvestigationPresentData_2_2[36];
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
extern const struct InvestigationPresentData gInvestigationPresentData_2_4[22];
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
extern const u8 gCourtRecordInitialItems_3_5[25];
extern const struct CourtPresentData gCourtPresentData_3_1[11];
extern const struct CourtPresentData gCourtPresentData_3_2[3];
extern const struct CourtPresentData gCourtPresentData_3_3[8];
extern const struct CourtPresentData gCourtPresentData_3_5[10];
extern const struct InvestigationPresentData gInvestigationPresentData_3_0[25];
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
extern const struct InvestigationPresentData gInvestigationPresentData_3_2[45];
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
extern const struct InvestigationPresentData gInvestigationPresentData_3_4[13];
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

void SetInactiveActionButtons(struct InvestigationStruct *, u32);
extern u32 GetExaminedAreaSection(struct InvestigationStruct *);
void LoadLocationChoiceGraphics(void);
void LoadTalkChoiceGraphics(void);

void InvestigationInit(struct Main *, struct InvestigationStruct *);
void InvestigationMain(struct Main *, struct InvestigationStruct *);
void InvestigationExit(struct Main *, struct InvestigationStruct *);
void InvestigationBgScrollWait(struct Main *, struct InvestigationStruct *);
void InvestigationTextboxSlideWait(struct Main *, struct InvestigationStruct *);
void InvestigationRoomInit(struct Main *, struct InvestigationStruct *);
void InvestigationInspect(struct Main *, struct InvestigationStruct *);
void InvestigationMove(struct Main *, struct InvestigationStruct *);
void InvestigationTalk(struct Main *, struct InvestigationStruct *);
void InvestigationPresent(struct Main *, struct InvestigationStruct *);

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

void InvestigationProcess(struct Main *);

#endif//GUARD_INVESTIGATION_H