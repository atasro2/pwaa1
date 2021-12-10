#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"
#include "constants/animation.h"

const struct Struct811DC98 gUnknown_080181E4[13] = {
	{
		.roomId = 0x6,
		.evidenceId = 0x17,
		.unk2 = 0x19,
		.unk3 = 0x0,
		.unk4 = 0x8C,
		.unk6 = 0x8C,
	},
	{
		.roomId = 0x6,
		.evidenceId = 0x17,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8B,
		.unk6 = 0x8B,
	},
	{
		.roomId = 0x2,
		.evidenceId = 0x69,
		.unk2 = 0x9,
		.unk3 = 0x0,
		.unk4 = 0x99,
		.unk6 = 0x9D,
	},
	{
		.roomId = 0x2,
		.evidenceId = 0x57,
		.unk2 = 0x9,
		.unk3 = 0x0,
		.unk4 = 0x9A,
		.unk6 = 0x9D,
	},
	{
		.roomId = 0x2,
		.evidenceId = 0x67,
		.unk2 = 0x9,
		.unk3 = 0x0,
		.unk4 = 0x9B,
		.unk6 = 0x9D,
	},
	{
		.roomId = 0x2,
		.evidenceId = 0x68,
		.unk2 = 0x9,
		.unk3 = 0x0,
		.unk4 = 0x9C,
		.unk6 = 0x9D,
	},
	{
		.roomId = 0xF,
		.evidenceId = 0x69,
		.unk2 = 0x21,
		.unk3 = 0x0,
		.unk4 = 0xC3,
		.unk6 = 0xC4,
	},
	{
		.roomId = 0x3,
		.evidenceId = 0x69,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xAF,
		.unk6 = 0xB9,
	},
	{
		.roomId = 0x3,
		.evidenceId = 0x57,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xB5,
		.unk6 = 0xB9,
	},
	{
		.roomId = 0x3,
		.evidenceId = 0x59,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xB6,
		.unk6 = 0xB9,
	},
	{
		.roomId = 0x3,
		.evidenceId = 0x67,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xB7,
		.unk6 = 0xB9,
	},
	{
		.roomId = 0x3,
		.evidenceId = 0x68,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xB8,
		.unk6 = 0xB9,
	},
	{
		.roomId = 0xFF,
		.evidenceId = 0xFF,
		.unk2 = 0xFF,
		.unk3 = 0xFF,
		.unk4 = 0xFFFF,
		.unk6 = 0xFFFF,
	},
};


// talk data
const struct TalkData gTalkData_3_4[12] = {
	{
		.roomId = 0x6,
		.personId = 0x19,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x63, 0x50, 0xFF, 0xFF },
		.talkFlagId = { 0xC1, 0xC2, 0xFF, 0xFF },
		.talkSection = { 0x87, 0x88, 0x0, 0x0 }
	},
	{
		.roomId = 0x6,
		.personId = 0x19,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x63, 0x50, 0x74, 0xFF },
		.talkFlagId = { 0xC1, 0xC2, 0xC3, 0xFF },
		.talkSection = { 0x87, 0x88, 0x89, 0x0 }
	},
	{
		.roomId = 0x6,
		.personId = 0x19,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x63, 0x50, 0x74, 0x75 },
		.talkFlagId = { 0xC1, 0xC2, 0xC3, 0xC4 },
		.talkSection = { 0x87, 0x88, 0x89, 0x8A }
	},
	{
		.roomId = 0x6,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x48, 0x49, 0xFF, 0xFF },
		.talkFlagId = { 0xC5, 0xC6, 0xFF, 0xFF },
		.talkSection = { 0x8E, 0x8F, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x9,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x76, 0x77, 0xFF, 0xFF },
		.talkFlagId = { 0xC7, 0xC8, 0xFF, 0xFF },
		.talkSection = { 0x95, 0x96, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x9,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x76, 0x77, 0x78, 0xFF },
		.talkFlagId = { 0xC7, 0xC8, 0xC9, 0xFF },
		.talkSection = { 0x95, 0x96, 0x97, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x9,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x76, 0x77, 0x78, 0x79 },
		.talkFlagId = { 0xC7, 0xC8, 0xC9, 0xCA },
		.talkSection = { 0x95, 0x96, 0x97, 0x98 }
	},
	{
		.roomId = 0xF,
		.personId = 0x21,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x50, 0x5D, 0xFF, 0xFF },
		.talkFlagId = { 0xCB, 0xCC, 0xFF, 0xFF },
		.talkSection = { 0xC1, 0xC2, 0x0, 0x0 }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x7A, 0x7B, 0xFF, 0xFF },
		.talkFlagId = { 0xCD, 0xCE, 0xFF, 0xFF },
		.talkSection = { 0xAB, 0xAC, 0x0, 0x0 }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x7A, 0x7B, 0x77, 0xFF },
		.talkFlagId = { 0xCD, 0xCE, 0xCF, 0xFF },
		.talkSection = { 0xAB, 0xAC, 0xAD, 0x0 }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x7A, 0x7B, 0x77, 0x7C },
		.talkFlagId = { 0xCD, 0xCE, 0xCF, 0xD0 },
		.talkSection = { 0xAB, 0xAC, 0xAD, 0xAE }
	},
	{
		.roomId = 0xFF,
		.personId = 0xFF,
		.unk2 = 0xFF,
		.enableFlag = 0xFF,
		.iconId = { 0xFF, 0xFF, 0xFF, 0xFF },
		.talkFlagId = { 0xFF, 0xFF, 0xFF, 0xFF },
		.talkSection = { 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF }
	},
};

// room data
const u8 gRoomData_3_4[21][8] = {
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x1E, 0xFF, 0xFF, 0xFF, 0x06, 0x10, 0x0E, 0x03},
	{ 0x28, 0xFF, 0xFF, 0xFF, 0x06, 0x02, 0xFF, 0xFF},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x01, 0xFF, 0xFF, 0xFF, 0x02, 0x10, 0x0E, 0x03},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x4F, 0xFF, 0xFF, 0xFF, 0x06, 0x02, 0x10, 0xFF},
	{ 0x50, 0xFF, 0xFF, 0xFF, 0x0E, 0xFF, 0xFF, 0xFF},
	{ 0x46, 0xFF, 0xFF, 0xFF, 0x06, 0x02, 0x11, 0x0E},
	{ 0x48, 0xFF, 0xFF, 0xFF, 0x10, 0x13, 0xFF, 0xFF},
	{ 0x49, 0xFF, 0xFF, 0xFF, 0x11, 0xFF, 0xFF, 0xFF},
	{ 0x4D, 0xFF, 0xFF, 0xFF, 0x11, 0x14, 0xFF, 0xFF},
	{ 0x4E, 0xFF, 0xFF, 0xFF, 0x13, 0xFF, 0xFF, 0xFF},
};

// exam data
const struct ExaminationData gUnknown_080183E4[5] = {
	{
		.examinationSection = 0x82,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 99, .y = 80 },
			[1] = { .x = 128, .y = 80 },
			[2] = { .x = 128, .y = 160 },
			[3] = { .x = 96, .y = 160 },
		}}
	},
	{
		.examinationSection = 0x83,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 221, .y = 23 },
			[1] = { .x = 240, .y = 23 },
			[2] = { .x = 240, .y = 112 },
			[3] = { .x = 221, .y = 112 },
		}}
	},
	{
		.examinationSection = 0x84,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 16 },
			[1] = { .x = 88, .y = 33 },
			[2] = { .x = 88, .y = 112 },
			[3] = { .x = 0, .y = 133 },
		}}
	},
	{
		.examinationSection = 0x85,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 147, .y = 129 },
			[1] = { .x = 240, .y = 129 },
			[2] = { .x = 240, .y = 144 },
			[3] = { .x = 146, .y = 144 },
		}}
	},
	{
		.examinationSection = 0x86,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 147, .y = 43 },
			[1] = { .x = 195, .y = 43 },
			[2] = { .x = 195, .y = 100 },
			[3] = { .x = 148, .y = 100 },
		}}
	},
};

const struct ExaminationData gUnknown_08018448[2] = {
	{
		.examinationSection = 0x91,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 196, .y = 76 },
			[1] = { .x = 211, .y = 76 },
			[2] = { .x = 223, .y = 132 },
			[3] = { .x = 199, .y = 132 },
		}}
	},
	{
		.examinationSection = 0x92,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 26, .y = 24 },
			[1] = { .x = 46, .y = 34 },
			[2] = { .x = 46, .y = 40 },
			[3] = { .x = 26, .y = 33 },
		}}
	},
};

const struct ExaminationData gUnknown_08018470[4] = {
	{
		.examinationSection = 0xC5,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 147, .y = 101 },
			[1] = { .x = 192, .y = 101 },
			[2] = { .x = 192, .y = 112 },
			[3] = { .x = 147, .y = 112 },
		}}
	},
	{
		.examinationSection = 0x18,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 144, .y = 101 },
			[1] = { .x = 240, .y = 101 },
			[2] = { .x = 240, .y = 160 },
			[3] = { .x = 144, .y = 160 },
		}}
	},
	{
		.examinationSection = 0xC6,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 92, .y = 96 },
			[1] = { .x = 195, .y = 0 },
			[2] = { .x = 240, .y = 0 },
			[3] = { .x = 240, .y = 160 },
		}}
	},
	{
		.examinationSection = 0xC6,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 0 },
			[1] = { .x = 64, .y = 48 },
			[2] = { .x = 63, .y = 101 },
			[3] = { .x = 0, .y = 89 },
		}}
	},
};

const struct ExaminationData gUnknown_080184C0[6] = {
	{
		.examinationSection = 0xC7,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 97, .y = 109 },
			[1] = { .x = 105, .y = 109 },
			[2] = { .x = 102, .y = 160 },
			[3] = { .x = 91, .y = 160 },
		}}
	},
	{
		.examinationSection = 0xC7,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 128, .y = 109 },
			[1] = { .x = 136, .y = 109 },
			[2] = { .x = 167, .y = 160 },
			[3] = { .x = 152, .y = 160 },
		}}
	},
	{
		.examinationSection = 0xCB,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 102 },
			[1] = { .x = 21, .y = 102 },
			[2] = { .x = 21, .y = 124 },
			[3] = { .x = 0, .y = 124 },
		}}
	},
	{
		.examinationSection = 0xC8,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 31, .y = 90 },
			[1] = { .x = 53, .y = 90 },
			[2] = { .x = 43, .y = 104 },
			[3] = { .x = 34, .y = 104 },
		}}
	},
	{
		.examinationSection = 0xC9,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 80 },
			[1] = { .x = 198, .y = 80 },
			[2] = { .x = 198, .y = 85 },
			[3] = { .x = 0, .y = 87 },
		}}
	},
	{
		.examinationSection = 0xCA,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 169, .y = 42 },
			[1] = { .x = 240, .y = 29 },
			[2] = { .x = 240, .y = 134 },
			[3] = { .x = 181, .y = 112 },
		}}
	},
};

const struct ExaminationData gUnknown_08018538[3] = {
	{
		.examinationSection = 0xCC,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 52, .y = 47 },
			[1] = { .x = 175, .y = 61 },
			[2] = { .x = 175, .y = 115 },
			[3] = { .x = 43, .y = 116 },
		}}
	},
	{
		.examinationSection = 0xCD,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 0 },
			[1] = { .x = 36, .y = 0 },
			[2] = { .x = 36, .y = 108 },
			[3] = { .x = 0, .y = 114 },
		}}
	},
	{
		.examinationSection = 0xCE,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 193, .y = 116 },
			[1] = { .x = 240, .y = 116 },
			[2] = { .x = 240, .y = 126 },
			[3] = { .x = 177, .y = 126 },
		}}
	},
};

const struct ExaminationData gUnknown_08018574[7] = {
	{
		.examinationSection = 0xBB,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 51, .y = 61 },
			[1] = { .x = 61, .y = 28 },
			[2] = { .x = 71, .y = 28 },
			[3] = { .x = 65, .y = 61 },
		}}
	},
	{
		.examinationSection = 0xBC,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 207, .y = 57 },
			[1] = { .x = 240, .y = 57 },
			[2] = { .x = 240, .y = 58 },
			[3] = { .x = 207, .y = 58 },
		}}
	},
	{
		.examinationSection = 0xD0,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 77 },
			[1] = { .x = 46, .y = 77 },
			[2] = { .x = 46, .y = 99 },
			[3] = { .x = 0, .y = 122 },
		}}
	},
	{
		.examinationSection = 0xD1,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 128, .y = 16 },
			[1] = { .x = 208, .y = 16 },
			[2] = { .x = 201, .y = 48 },
			[3] = { .x = 145, .y = 48 },
		}}
	},
	{
		.examinationSection = 0xD2,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 208, .y = 70 },
			[1] = { .x = 240, .y = 70 },
			[2] = { .x = 240, .y = 114 },
			[3] = { .x = 208, .y = 114 },
		}}
	},
	{
		.examinationSection = 0xD3,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 202, .y = 77 },
			[1] = { .x = 206, .y = 77 },
			[2] = { .x = 195, .y = 105 },
			[3] = { .x = 193, .y = 105 },
		}}
	},
	{
		.examinationSection = 0xCF,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 93, .y = 93 },
			[1] = { .x = 173, .y = 93 },
			[2] = { .x = 191, .y = 133 },
			[3] = { .x = 75, .y = 133 },
		}}
	},
};

const struct ExaminationData gUnknown_08018600[6] = {
	{
		.examinationSection = 0xD4,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 160, .y = 45 },
			[1] = { .x = 172, .y = 45 },
			[2] = { .x = 172, .y = 49 },
			[3] = { .x = 160, .y = 49 },
		}}
	},
	{
		.examinationSection = 0xD5,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 56 },
			[1] = { .x = 18, .y = 56 },
			[2] = { .x = 18, .y = 95 },
			[3] = { .x = 0, .y = 95 },
		}}
	},
	{
		.examinationSection = 0xD7,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 108, .y = 48 },
			[1] = { .x = 141, .y = 48 },
			[2] = { .x = 141, .y = 58 },
			[3] = { .x = 108, .y = 58 },
		}}
	},
	{
		.examinationSection = 0xD8,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 113 },
			[1] = { .x = 66, .y = 75 },
			[2] = { .x = 100, .y = 75 },
			[3] = { .x = 0, .y = 240 },
		}}
	},
	{
		.examinationSection = 0xD8,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 155, .y = 80 },
			[1] = { .x = 240, .y = 80 },
			[2] = { .x = 240, .y = 160 },
			[3] = { .x = 204, .y = 160 },
		}}
	},
	{
		.examinationSection = 0xD9,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 112, .y = 26 },
			[1] = { .x = 136, .y = 26 },
			[2] = { .x = 136, .y = 32 },
			[3] = { .x = 112, .y = 32 },
		}}
	},
};

const struct ExaminationData gUnknown_08018678[5] = {
	{
		.examinationSection = 0xDC,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 0 },
			[1] = { .x = 77, .y = 36 },
			[2] = { .x = 77, .y = 80 },
			[3] = { .x = 0, .y = 320 },
		}}
	},
	{
		.examinationSection = 0xDD,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 80, .y = 40 },
			[1] = { .x = 105, .y = 40 },
			[2] = { .x = 105, .y = 68 },
			[3] = { .x = 80, .y = 68 },
		}}
	},
	{
		.examinationSection = 0xDA,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 172, .y = 0 },
			[1] = { .x = 240, .y = 0 },
			[2] = { .x = 240, .y = 101 },
			[3] = { .x = 88, .y = 46 },
		}}
	},
	{
		.examinationSection = 0xDB,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 240, .y = 118 },
			[1] = { .x = 240, .y = 160 },
			[2] = { .x = 171, .y = 160 },
			[3] = { .x = 90, .y = 52 },
		}}
	},
	{
		.examinationSection = 0xBF,
		.unk2 = 0xFE,
		.unk3 = 0xF,
		.area = { .points = {
			[0] = { .x = 0, .y = 0 },
			[1] = { .x = 0, .y = 0 },
			[2] = { .x = 0, .y = 0 },
			[3] = { .x = 0, .y = 0 },
		}}
	},
};

const struct ExaminationData gUnknown_080186DC[5] = {
	{
		.examinationSection = 0xA6,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 136 },
			[1] = { .x = 35, .y = 130 },
			[2] = { .x = 54, .y = 160 },
			[3] = { .x = 0, .y = 160 },
		}}
	},
	{
		.examinationSection = 0xA7,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 26, .y = 80 },
			[1] = { .x = 57, .y = 80 },
			[2] = { .x = 51, .y = 119 },
			[3] = { .x = 41, .y = 119 },
		}}
	},
	{
		.examinationSection = 0xA4,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 28, .y = 0 },
			[1] = { .x = 128, .y = 0 },
			[2] = { .x = 128, .y = 63 },
			[3] = { .x = 32, .y = 68 },
		}}
	},
	{
		.examinationSection = 0xA5,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 118, .y = 89 },
			[1] = { .x = 166, .y = 90 },
			[2] = { .x = 240, .y = 105 },
			[3] = { .x = 199, .y = 126 },
		}}
	},
	{
		.examinationSection = 0xA8,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 154, .y = 0 },
			[1] = { .x = 240, .y = 0 },
			[2] = { .x = 240, .y = 96 },
			[3] = { .x = 154, .y = 72 },
		}}
	},
};

void InvestigationSegmentSetup_3_4(struct Main *main)
{
    DmaCopy16(3, gRoomData_3_4, gMain.roomData, sizeof(gRoomData_3_4));
    DmaCopy16(3, gTalkData_3_4, gTalkData, sizeof(gTalkData_3_4));
    main->currentRoomId = 6;
}

void InvestigationRoomSetup_3_4(struct Main *main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xA2) && GetFlag(0, 0x93)) {
                if(!GetFlag(0, 0x91)) {
                    InvestigationSetScriptSectionAndFlag(0x8D, 0x91);
                }
                else {
                    InvestigationSetPersonAnimation(4, 0x510, 0x510);
                    PlayBGM(6);
                }
            }
            else if(!GetFlag(0, 0x90)) {
                InvestigationSetScriptSectionAndFlag(0x80, 0x90);
            }
            else {
                InvestigationSetPersonAnimation(0x19, 0x13B0, 0x13B0);
                PlayBGM(0x16);
            }
            LOADEXAMDATA(gUnknown_080183E4);
            break;
        }
        case 2: {
            if(GetFlag(0, 0x93)) {
                if(!GetFlag(0, 0x95)) {
                    InvestigationSetScriptSectionAndFlag(0x93, 0x95);
                }
                else {
                    InvestigationSetPersonAnimation(9, 0x55D0, 0x55D0);
                    PlayBGM(0);
                }
            }
            else if(!GetFlag(0, 0x94)) {
                InvestigationSetScriptSectionAndFlag(0x90, 0x94);
            }
            LOADEXAMDATA(gUnknown_08018448);
            break;
        }
        case 16: {
            if(!GetFlag(0, 0x98)) {
                InvestigationSetScriptSectionAndFlag(0x9E, 0x98);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08018470);
            break;
        }
        case 17: {
            if(!GetFlag(0, 0x99)) {
                InvestigationSetScriptSectionAndFlag(0x9F, 0x99);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_080184C0);
            break;
        }
        case 19: {
            if(!GetFlag(0, 0x9A)) {
                InvestigationSetScriptSectionAndFlag(0xA0, 0x9A);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08018538);
            break;
        }
        case 20: {
            if(!GetFlag(0, 0xA1)) {
                InvestigationSetScriptSectionAndFlag(0xBA, 0xA1);
            }
            else {
                PlayBGM(0xC);
            }
            LOADEXAMDATA(gUnknown_08018574);
            break;
        }
        case 14: {
            if(GetFlag(0, 0xA0)) {
                if(!GetFlag(0, 0x9C)) {
                    InvestigationSetScriptSectionAndFlag(0xA2, 0x9C);
                }
                else {
                    PlayBGM(1);
                }
            }
            else {
                if(!GetFlag(0, 0x9B)) {
                    InvestigationSetScriptSectionAndFlag(0xA1, 0x9B);
                }
                else {
                    PlayBGM(1);
                }
            }
            LOADEXAMDATA(gUnknown_08018600);
            break;
        }
        case 15: {
            if(!GetFlag(0, 0xA3)) {
                InvestigationSetScriptSectionAndFlag(0xBE, 0xA3);
            }
            else {
                if(GetFlag(0, 0xA4)) {
                    InvestigationSetPersonAnimation(0x21, 0x2260, 0x2260);
                }
                PlayBGM(0xC);
            }
            PlayAnimation(ANIM_RECORDS_ROOM_DRAWER);
            LOADEXAMDATA(gUnknown_08018678);
            break;
        }
        case 3: {
            if(GetFlag(0, 0x97)) {
                if(!GetFlag(0, 0x9E)) {
                    InvestigationSetScriptSectionAndFlag(0xA9, 0x9E);
                }
                else {
                    InvestigationSetPersonAnimation(0xC, 0, 0);
                    PlayBGM(0xC);
                }
            }
            else if(!GetFlag(0, 0x9D)) {
                InvestigationSetScriptSectionAndFlag(0xA3, 0x9D);
            }
            LOADEXAMDATA(gUnknown_080186DC);
            break;
        }
    }
}

void InvestigationRoomUpdate_3_4(struct Main *main) {
}
