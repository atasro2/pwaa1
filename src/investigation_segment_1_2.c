#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"
const struct Struct811DC98 gUnknown_080153BC[12] = {
	{
		.unk0 = 0x2,
		.unk1 = 0x23,
		.unk2 = 0x16,
		.unk3 = 0x0,
		.unk4 = 0xAA,
		.unk6 = 0xA1,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x22,
		.unk2 = 0x16,
		.unk3 = 0x0,
		.unk4 = 0xA9,
		.unk6 = 0xA1,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x21,
		.unk2 = 0x16,
		.unk3 = 0x0,
		.unk4 = 0xAC,
		.unk6 = 0xA1,
	},
	{
		.unk0 = 0x3,
		.unk1 = 0x24,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xFE,
		.unk6 = 0xE3,
	},
	{
		.unk0 = 0x3,
		.unk1 = 0x23,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xE1,
		.unk6 = 0xE3,
	},
	{
		.unk0 = 0x4,
		.unk1 = 0x20,
		.unk2 = 0x15,
		.unk3 = 0x0,
		.unk4 = 0x129,
		.unk6 = 0x12B,
	},
	{
		.unk0 = 0x4,
		.unk1 = 0x23,
		.unk2 = 0x15,
		.unk3 = 0x0,
		.unk4 = 0x12A,
		.unk6 = 0x12B,
	},
	{
		.unk0 = 0x4,
		.unk1 = 0x24,
		.unk2 = 0x15,
		.unk3 = 0x0,
		.unk4 = 0x139,
		.unk6 = 0x12B,
	},
	{
		.unk0 = 0x5,
		.unk1 = 0x23,
		.unk2 = 0x17,
		.unk3 = 0x0,
		.unk4 = 0x10C,
		.unk6 = 0x111,
	},
	{
		.unk0 = 0x5,
		.unk1 = 0x22,
		.unk2 = 0x17,
		.unk3 = 0x0,
		.unk4 = 0x10B,
		.unk6 = 0x111,
	},
	{
		.unk0 = 0x5,
		.unk1 = 0x21,
		.unk2 = 0x17,
		.unk3 = 0x0,
		.unk4 = 0x110,
		.unk6 = 0x111,
	},
	{
		.unk0 = 0xFF,
		.unk1 = 0xFF,
		.unk2 = 0xFF,
		.unk3 = 0xFF,
		.unk4 = 0xFFFF,
		.unk6 = 0xFFFF,
	},
};


// talk data
const struct TalkData gUnknown_0801541C[13] = {
	{
		.roomId = 0x2,
		.personId = 0x16,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x11, 0x12, 0x13, 0xFF },
		.talkFlagId = { 0x13, 0x15, 0x14, 0xFF },
		.talkSection = { 0x9E, 0x9F, 0xA0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x16,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x11, 0x12, 0x13, 0xFF },
		.talkFlagId = { 0x16, 0x15, 0x14, 0xFF },
		.talkSection = { 0xA6, 0xA7, 0xA0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x16,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x12, 0x13, 0xFF, 0xFF },
		.talkFlagId = { 0x15, 0x14, 0xFF, 0xFF },
		.talkSection = { 0xA7, 0xA0, 0x0, 0x0 }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x14, 0x15, 0x16, 0xFF },
		.talkFlagId = { 0x18, 0x19, 0x1A, 0xFF },
		.talkSection = { 0xDD, 0xDE, 0xDF, 0x0 }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x14, 0x15, 0x16, 0xFF },
		.talkFlagId = { 0x18, 0x19, 0x1A, 0xFF },
		.talkSection = { 0xE0, 0xE0, 0xE0, 0x0 }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x14, 0x15, 0x17, 0xFF },
		.talkFlagId = { 0x1E, 0x1F, 0x20, 0xFF },
		.talkSection = { 0xEC, 0xED, 0xEE, 0x0 }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x14, 0x15, 0x18, 0x19 },
		.talkFlagId = { 0x1E, 0x1F, 0x21, 0x22 },
		.talkSection = { 0xEC, 0xED, 0xFB, 0xFC }
	},
	{
		.roomId = 0x4,
		.personId = 0x15,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x1A, 0x1D, 0x1E, 0xFF },
		.talkFlagId = { 0x26, 0x27, 0x28, 0xFF },
		.talkSection = { 0x121, 0x122, 0x123, 0x0 }
	},
	{
		.roomId = 0x4,
		.personId = 0x15,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x1A, 0x1D, 0x1E, 0x16 },
		.talkFlagId = { 0x26, 0x27, 0x28, 0x29 },
		.talkSection = { 0x121, 0x122, 0x123, 0x124 }
	},
	{
		.roomId = 0x4,
		.personId = 0x15,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x1A, 0x1D, 0x1E, 0x16 },
		.talkFlagId = { 0x26, 0x27, 0x28, 0x29 },
		.talkSection = { 0x128, 0x128, 0x128, 0x128 }
	},
	{
		.roomId = 0x4,
		.personId = 0x15,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x1A, 0x1D, 0x1F, 0xFF },
		.talkFlagId = { 0x2E, 0x2F, 0x30, 0xFF },
		.talkSection = { 0x136, 0x137, 0x138, 0x0 }
	},
	{
		.roomId = 0x5,
		.personId = 0x17,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x1A, 0x1B, 0x1C, 0xFF },
		.talkFlagId = { 0x23, 0x24, 0x25, 0xFF },
		.talkSection = { 0x108, 0x109, 0x10A, 0x0 }
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
const u8 gUnknown_08015520[6][8] = {
	{ 0x01, 0xFF, 0xFF, 0xFF, 0x02, 0x05, 0x03, 0xFF},
	{ 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF},
	{ 0x1E, 0xFF, 0xFF, 0xFF, 0x00, 0x05, 0x03, 0xFF},
	{ 0x28, 0xFF, 0xFF, 0xFF, 0x00, 0x02, 0x05, 0xFF},
	{ 0x1F, 0xFF, 0xFF, 0xFF, 0x00, 0x02, 0x05, 0x03},
	{ 0x20, 0xFF, 0xFF, 0xFF, 0x00, 0x02, 0x03, 0xFF},
};

// exam data
const struct ExaminationData gUnknown_08015550[5] = {
	{
		.examinationSection = 0x81,
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
		.examinationSection = 0x82,
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
		.examinationSection = 0x83,
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
		.examinationSection = 0x84,
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
		.examinationSection = 0x85,
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

const struct ExaminationData gUnknown_080155B4[5] = {
	{
		.examinationSection = 0x81,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 99, .y = 80 },
			[1] = { .x = 136, .y = 80 },
			[2] = { .x = 136, .y = 160 },
			[3] = { .x = 96, .y = 160 },
		}}
	},
	{
		.examinationSection = 0x89,
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
		.examinationSection = 0x83,
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
		.examinationSection = 0x84,
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
		.examinationSection = 0x85,
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

const struct ExaminationData gUnknown_08015618[2] = {
	{
		.examinationSection = 0x9B,
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
		.examinationSection = 0x9C,
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

const struct ExaminationData gUnknown_08015640[6] = {
	{
		.examinationSection = 0xBD,
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
		.examinationSection = 0xBE,
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
		.examinationSection = 0xBA,
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
		.examinationSection = 0xBC,
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
		.examinationSection = 0xBF,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 154, .y = 0 },
			[1] = { .x = 240, .y = 0 },
			[2] = { .x = 240, .y = 96 },
			[3] = { .x = 154, .y = 72 },
		}}
	},
	{
		.examinationSection = 0xC0,
		.unk2 = 0xFE,
		.unk3 = 0xD,
		.area = { .points = {
			[0] = { .x = 0, .y = 0 },
			[1] = { .x = 0, .y = 0 },
			[2] = { .x = 0, .y = 0 },
			[3] = { .x = 0, .y = 0 },
		}}
	},
};

const struct ExaminationData gUnknown_080156B8[5] = {
	{
		.examinationSection = 0x11C,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 198, .y = 45 },
			[1] = { .x = 228, .y = 45 },
			[2] = { .x = 226, .y = 125 },
			[3] = { .x = 205, .y = 125 },
		}}
	},
	{
		.examinationSection = 0x11D,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 41, .y = 97 },
			[1] = { .x = 147, .y = 97 },
			[2] = { .x = 163, .y = 142 },
			[3] = { .x = 11, .y = 142 },
		}}
	},
	{
		.examinationSection = 0x11E,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 44, .y = 17 },
			[1] = { .x = 130, .y = 12 },
			[2] = { .x = 130, .y = 78 },
			[3] = { .x = 43, .y = 78 },
		}}
	},
	{
		.examinationSection = 0x11F,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 143, .y = 55 },
			[1] = { .x = 207, .y = 55 },
			[2] = { .x = 3312, .y = 69 },
			[3] = { .x = 143, .y = 69 },
		}}
	},
	{
		.examinationSection = 0x120,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 16 },
			[1] = { .x = 24, .y = 16 },
			[2] = { .x = 24, .y = 91 },
			[3] = { .x = 0, .y = 110 },
		}}
	},
};

const struct ExaminationData gUnknown_0801571C[5] = {
	{
		.examinationSection = 0x131,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 198, .y = 45 },
			[1] = { .x = 228, .y = 45 },
			[2] = { .x = 226, .y = 125 },
			[3] = { .x = 205, .y = 125 },
		}}
	},
	{
		.examinationSection = 0x132,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 41, .y = 97 },
			[1] = { .x = 147, .y = 97 },
			[2] = { .x = 163, .y = 142 },
			[3] = { .x = 11, .y = 142 },
		}}
	},
	{
		.examinationSection = 0x133,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 44, .y = 17 },
			[1] = { .x = 130, .y = 12 },
			[2] = { .x = 130, .y = 78 },
			[3] = { .x = 43, .y = 78 },
		}}
	},
	{
		.examinationSection = 0x134,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 143, .y = 55 },
			[1] = { .x = 207, .y = 55 },
			[2] = { .x = 3312, .y = 69 },
			[3] = { .x = 143, .y = 69 },
		}}
	},
	{
		.examinationSection = 0x120,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 16 },
			[1] = { .x = 24, .y = 16 },
			[2] = { .x = 24, .y = 91 },
			[3] = { .x = 0, .y = 110 },
		}}
	},
};

const struct ExaminationData gUnknown_08015780[6] = {
	{
		.examinationSection = 0x101,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 9, .y = 40 },
			[1] = { .x = 37, .y = 40 },
			[2] = { .x = 47, .y = 69 },
			[3] = { .x = 14, .y = 69 },
		}}
	},
	{
		.examinationSection = 0x102,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 135, .y = 96 },
			[1] = { .x = 174, .y = 96 },
			[2] = { .x = 174, .y = 102 },
			[3] = { .x = 136, .y = 102 },
		}}
	},
	{
		.examinationSection = 0x103,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 135, .y = 30 },
			[1] = { .x = 206, .y = 22 },
			[2] = { .x = 206, .y = 91 },
			[3] = { .x = 136, .y = 87 },
		}}
	},
	{
		.examinationSection = 0x104,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 220, .y = 120 },
			[1] = { .x = 240, .y = 120 },
			[2] = { .x = 240, .y = 160 },
			[3] = { .x = 219, .y = 160 },
		}}
	},
	{
		.examinationSection = 0x105,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 69, .y = 24 },
			[1] = { .x = 88, .y = 29 },
			[2] = { .x = 88, .y = 72 },
			[3] = { .x = 68, .y = 70 },
		}}
	},
	{
		.examinationSection = 0x106,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 17, .y = 88 },
			[1] = { .x = 44, .y = 88 },
			[2] = { .x = 44, .y = 105 },
			[3] = { .x = 20, .y = 112 },
		}}
	},
};

const struct ExaminationData gUnknown_080157F8[6] = {
	{
		.examinationSection = 0x101,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 9, .y = 48 },
			[1] = { .x = 37, .y = 48 },
			[2] = { .x = 47, .y = 63 },
			[3] = { .x = 14, .y = 63 },
		}}
	},
	{
		.examinationSection = 0x114,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 135, .y = 96 },
			[1] = { .x = 174, .y = 96 },
			[2] = { .x = 174, .y = 102 },
			[3] = { .x = 136, .y = 102 },
		}}
	},
	{
		.examinationSection = 0x115,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 135, .y = 30 },
			[1] = { .x = 206, .y = 22 },
			[2] = { .x = 206, .y = 91 },
			[3] = { .x = 136, .y = 87 },
		}}
	},
	{
		.examinationSection = 0x104,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 220, .y = 126 },
			[1] = { .x = 240, .y = 126 },
			[2] = { .x = 240, .y = 160 },
			[3] = { .x = 219, .y = 160 },
		}}
	},
	{
		.examinationSection = 0x105,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 69, .y = 24 },
			[1] = { .x = 88, .y = 29 },
			[2] = { .x = 88, .y = 72 },
			[3] = { .x = 68, .y = 70 },
		}}
	},
	{
		.examinationSection = 0x118,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 17, .y = 88 },
			[1] = { .x = 44, .y = 88 },
			[2] = { .x = 44, .y = 105 },
			[3] = { .x = 20, .y = 112 },
		}}
	},
};

void sub_800318C(struct Main *main)
{
    DmaCopy16(3, gUnknown_08015520, gMain.roomData, 0x30);
    DmaCopy16(3, gUnknown_0801541C, gTalkData, 0x104);
    main->currentRoomId = 2;
}

void sub_80031D0(struct Main *main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 0: {
            if(!GetFlag(0, 0x74)) {
                if(!GetFlag(0, 0x7B)) {
                    sub_8002CCC(0x80, 0x7B);
                }
                LOADEXAMDATA(gUnknown_08015550);
            }
            else {
                if(!GetFlag(0, 0x7C)) {
                    sub_8002CCC(0x87, 0x7C);
                }
                else if(GetFlag(0, 0x75)) {
                    PlayBGM(0xC);
                }
                else {
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_080155B4);
            }
            break;
        }
        case 2: {
            LOADEXAMDATA(gUnknown_08015618);
            if(!GetFlag(0, 0x80)) {
                if(!GetFlag(0, 0x7D)) {
                    sub_8002CCC(0x9A, 0x7D);
                }
                else {
                    sub_8002C98(0x16, 0x1D0C, 0x1D0C);
                    PlayBGM(0x16);
                }
            }
            else if(!GetFlag(0, 0x70)) {
                if(!GetFlag(0, 0x7E)) {
                    sub_8002CCC(0xA2, 0x7E);
                }
                else {
                    sub_8002C98(0x16, 0x1D0C, 0x1D0C);
                    PlayBGM(0x16);
                }
            }
            else if(!GetFlag(0, 0x7F)) {
                sub_8002CCC(0xB0, 0x7F);
            }
            break;
        }
        case 3: {
            LOADEXAMDATA(gUnknown_08015640);
            if(!GetFlag(0, 0x72)) {
                if(!GetFlag(0, 0x80)) {
                    sub_8002CCC(0xB9, 0x80);
                }
                PlayAnimation(0xD);
            }
            else if(!GetFlag(0, 0x73)) {
                if(!GetFlag(0, 0x81)) {
                    sub_8002CCC(0xCB, 0x81);
                }
            }
            else if(!GetFlag(0, 0x70)) {
                if(!GetFlag(0, 0x83)) {
                    sub_8002CCC(0xD4, 0x83);
                }
                else {
                    sub_8002C98(0xC, 0x2C8, 0x2C8);
                    PlayBGM(0x1A);
                }
            }
            else if(!GetFlag(0, 0x82)) {
                sub_8002CCC(0xE4, 0x82);
            }
            else {
                sub_8002C98(0xC, 0x2C8, 0x2C8);
                if(GetFlag(0, 0x88)) {
                    PlayBGM(0xC);
                }
                else {
                    PlayBGM(0x1A);
                }
            }
            break;
        }
        case 4: {
            if(!GetFlag(0, 0x75)) {
                if(!GetFlag(0, 0x84)) {
                    sub_8002CCC(0x11A, 0x84);
                }
                else {
                    sub_8002C98(0x15, 0x2564, 0x2564);
                    PlayBGM(0xC);
                }
                LOADEXAMDATA(gUnknown_080156B8);
            }
            else {
                if(!GetFlag(0, 0x85)) {
                    sub_8002CCC(0x12C, 0x85);
                }
                else {
                    sub_8002C98(0x15, 0x2564, 0x2564);
                    PlayBGM(0xC);
                }
                LOADEXAMDATA(gUnknown_0801571C);
            }
            break;
        }
        case 5: {
            if(!GetFlag(0, 0x73)) {
                if(!GetFlag(0, 0x86)) {
                    sub_8002CCC(0x100, 0x86);
                }
                else {
                    sub_8002C98(0x17, 0x894, 0x894);
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_08015780);
            }
            else {
                if(!GetFlag(0, 0x87)) {
                    sub_8002CCC(0x112, 0x87);
                }
                LOADEXAMDATA(gUnknown_080157F8);
            }
            
            break;
        }
    }
}

void sub_8003544(struct Main *main)
{
    if(main->currentRoomId == 4) {
        if(!GetFlag(0, 0x71) && GetFlag(0, 0x70)) {
            LOADEXAMDATA(gUnknown_0801571C);
            ChangeFlag(0, 0x71, 1);
        }
    }
}
