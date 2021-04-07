#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"

const u8 gUnknown_08014DA4[8] = {
	0x00, 0x02, 0x03, 0xfe, 0x17, 0x06, 0xff, 0x00
};

const struct Struct811DC54 gUnknown_08014DAC[12] = {
	{
		.unk0 = 0xAE,
		.unk2 = 0x6,
		.unk4 = 0xBB,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xBF,
		.unk2 = 0x9,
		.unk4 = 0xCC,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xC0,
		.unk2 = 0x9,
		.unk4 = 0xCC,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xC1,
		.unk2 = 0x9,
		.unk4 = 0xCC,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xC2,
		.unk2 = 0x9,
		.unk4 = 0xCC,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xC3,
		.unk2 = 0x9,
		.unk4 = 0xCC,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD1,
		.unk2 = 0x7,
		.unk4 = 0xD9,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD2,
		.unk2 = 0x7,
		.unk4 = 0xD9,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD3,
		.unk2 = 0x7,
		.unk4 = 0xD9,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xE7,
		.unk2 = 0x8,
		.unk4 = 0xEA,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xED,
		.unk2 = 0x7,
		.unk4 = 0xEF,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xFFFF,
		.unk2 = 0xFFFF,
		.unk4 = 0xFFFF,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
};

const u8 gUnknown_08014E0C[4] = {
	0x00, 0xfe, 0x17, 0xff
};

const u8 gUnknown_08014E10[16] = {
	0x0a, 0x0c, 0x0f, 0x16, 0x10, 0x0e, 0x14, 0xfe, 0x17, 0x18, 0x1a, 0x1b, 0x1c, 0x20, 0x1e, 0xff
};

const u8 gUnknown_08014E20[18] = {
	0x0a, 0x0c, 0x0f, 0x16, 0x11, 0x0e, 0x15, 0xfe, 0x17, 0x27, 0x1a, 0x1b, 0x1d, 0x20, 0x1e, 0x26,
	0x25, 0xff
};

const u8 gUnknown_08014E32[22] = {
	0x0a, 0x0d, 0x0f, 0x16, 0x11, 0x0e, 0x15, 0x13, 0xfe, 0x17, 0x27, 0x1a, 0x1b, 0x1d, 0x20, 0x1e,
	0x26, 0x25, 0xff, 0x00, 0x00, 0x00
};

const struct Struct811DC54 gUnknown_08014E48[15] = {
	{
		.unk0 = 0x92,
		.unk2 = 0x18,
		.unk4 = 0xA2,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0x93,
		.unk2 = 0x18,
		.unk4 = 0xA2,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0x94,
		.unk2 = 0x18,
		.unk4 = 0xA2,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0x95,
		.unk2 = 0x18,
		.unk4 = 0xA2,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0x96,
		.unk2 = 0x18,
		.unk4 = 0xA2,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xC9,
		.unk2 = 0x1C,
		.unk4 = 0xD1,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD9,
		.unk2 = 0x1A,
		.unk4 = 0xDB,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xDE,
		.unk2 = 0x1D,
		.unk4 = 0xE0,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xE2,
		.unk2 = 0x1A,
		.unk4 = 0xE7,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xE2,
		.unk2 = 0x20,
		.unk4 = 0xEB,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xE5,
		.unk2 = 0x1A,
		.unk4 = 0xE7,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xE5,
		.unk2 = 0x20,
		.unk4 = 0xEB,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xE8,
		.unk2 = 0x20,
		.unk4 = 0xEA,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xEC,
		.unk2 = 0x1A,
		.unk4 = 0xEE,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xFFFF,
		.unk2 = 0xFFFF,
		.unk4 = 0xFFFF,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
};

const struct Struct811DC54 gUnknown_08014EC0[14] = {
	{
		.unk0 = 0x8C,
		.unk2 = 0x26,
		.unk4 = 0x9B,
		.unk6 = 0x4,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xA8,
		.unk2 = 0x27,
		.unk4 = 0xB4,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xA9,
		.unk2 = 0x27,
		.unk4 = 0xB4,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xAA,
		.unk2 = 0x27,
		.unk4 = 0xB4,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xAB,
		.unk2 = 0x27,
		.unk4 = 0xB4,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xB6,
		.unk2 = 0x1B,
		.unk4 = 0xC5,
		.unk6 = 0x5,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xB6,
		.unk2 = 0x25,
		.unk4 = 0xC4,
		.unk6 = 0x5,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD7,
		.unk2 = 0x1F,
		.unk4 = 0xE0,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD8,
		.unk2 = 0x1F,
		.unk4 = 0xE0,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD9,
		.unk2 = 0x1F,
		.unk4 = 0xE0,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xDA,
		.unk2 = 0x1F,
		.unk4 = 0xE0,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xC8,
		.unk2 = 0x25,
		.unk4 = 0xCA,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xE4,
		.unk2 = 0x28,
		.unk4 = 0xE6,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xFFFF,
		.unk2 = 0xFFFF,
		.unk4 = 0xFFFF,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
};

const struct Struct811DC98 gUnknown_08014F30[17] = {
	{
		.unk0 = 0x0,
		.unk1 = 0x1B,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x91,
		.unk6 = 0x90,
	},
	{
		.unk0 = 0x0,
		.unk1 = 0x1C,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x92,
		.unk6 = 0x90,
	},
	{
		.unk0 = 0x0,
		.unk1 = 0x1E,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x93,
		.unk6 = 0x90,
	},
	{
		.unk0 = 0x0,
		.unk1 = 0x19,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xA8,
		.unk6 = 0xA7,
	},
	{
		.unk0 = 0x0,
		.unk1 = 0x1A,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xAB,
		.unk6 = 0xA7,
	},
	{
		.unk0 = 0x0,
		.unk1 = 0x1C,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xAD,
		.unk6 = 0xA7,
	},
	{
		.unk0 = 0x0,
		.unk1 = 0x1B,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xAE,
		.unk6 = 0xA7,
	},
	{
		.unk0 = 0x0,
		.unk1 = 0x1E,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xAF,
		.unk6 = 0xA7,
	},
	{
		.unk0 = 0x0,
		.unk1 = 0x18,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xB0,
		.unk6 = 0xA7,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x1B,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0xD2,
		.unk6 = 0xD1,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x1C,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0xD3,
		.unk6 = 0xD1,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x19,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0xD4,
		.unk6 = 0xD1,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x1A,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0xE9,
		.unk6 = 0xD1,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x1E,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0xD5,
		.unk6 = 0xD1,
	},
	{
		.unk0 = 0x3,
		.unk1 = 0xFF,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xD5,
		.unk6 = 0x104,
	},
	{
		.unk0 = 0x5,
		.unk1 = 0xFF,
		.unk2 = 0x16,
		.unk3 = 0x0,
		.unk4 = 0xD5,
		.unk6 = 0xF6,
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
const struct TalkData gUnknown_08014FB8[14] = {
	{
		.roomId = 0x0,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x1, 0x2, 0xFF, 0xFF },
		.talkFlagId = { 0x1, 0x2, 0xFF, 0xFF },
		.talkSection = { 0x8E, 0x8F, 0x0, 0x0 }
	},
	{
		.roomId = 0x0,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x1, 0x2, 0x0, 0xFF },
		.talkFlagId = { 0x1, 0x2, 0x0, 0xFF },
		.talkSection = { 0x8E, 0x8F, 0x8D, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x4, 0x6, 0xFF, 0xFF },
		.talkFlagId = { 0x4, 0x3, 0xFF, 0xFF },
		.talkSection = { 0xCE, 0xCD, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4, 0x6, 0x8, 0xFF },
		.talkFlagId = { 0x4, 0x3, 0x5, 0xFF },
		.talkSection = { 0xCE, 0xCD, 0xD0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4, 0x6, 0x7, 0xFF },
		.talkFlagId = { 0x4, 0x3, 0x6, 0xFF },
		.talkSection = { 0xCE, 0xCD, 0xCF, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4, 0x6, 0x8, 0x7 },
		.talkFlagId = { 0x4, 0x3, 0x5, 0x6 },
		.talkSection = { 0xCE, 0xCD, 0xD0, 0xCF }
	},
	{
		.roomId = 0x0,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x3, 0x4, 0xFF, 0xFF },
		.talkFlagId = { 0x7, 0x8, 0xFF, 0xFF },
		.talkSection = { 0xA0, 0xA2, 0x0, 0x0 }
	},
	{
		.roomId = 0x0,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x3, 0x4, 0x5, 0xFF },
		.talkFlagId = { 0x7, 0x8, 0x9, 0xFF },
		.talkSection = { 0xA0, 0xA2, 0xA3, 0x0 }
	},
	{
		.roomId = 0x5,
		.personId = 0x16,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0xC, 0xD, 0xE, 0xFF },
		.talkFlagId = { 0xA, 0xB, 0xC, 0xFF },
		.talkSection = { 0xF3, 0xF4, 0xF5, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x6, 0x9, 0xFF, 0xFF },
		.talkFlagId = { 0x3, 0xD, 0xFF, 0xFF },
		.talkSection = { 0xCD, 0xDA, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x6, 0x9, 0xA, 0xFF },
		.talkFlagId = { 0x3, 0xD, 0xE, 0xFF },
		.talkSection = { 0xCD, 0xDA, 0xDB, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x6, 0x9, 0xA, 0xB },
		.talkFlagId = { 0x3, 0xD, 0xE, 0xF },
		.talkSection = { 0xCD, 0xDA, 0xDB, 0xDC }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0xF, 0x3, 0x10, 0xFF },
		.talkFlagId = { 0x10, 0x11, 0x12, 0xFF },
		.talkSection = { 0x101, 0x102, 0x103, 0x0 }
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
const u8 gUnknown_080150D0[6][8] = {
	{ 0x09, 0xFF, 0xFF, 0xFF, 0x01, 0xFF, 0xFF, 0xFF},
	{ 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF},
	{ 0x1E, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF},
	{ 0x27, 0xFF, 0xFF, 0xFF, 0x00, 0x02, 0xFF, 0xFF},
	{ 0x1F, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF},
	{ 0x20, 0xFF, 0xFF, 0xFF, 0x00, 0x02, 0xFF, 0xFF},
};

// exam data
const struct ExaminationData gUnknown_08015100[6] = {
	{
		.examinationSection = 0x87,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 141, .y = 19 },
			[1] = { .x = 177, .y = 19 },
			[2] = { .x = 177, .y = 76 },
			[3] = { .x = 141, .y = 76 },
		}}
	},
	{
		.examinationSection = 0x88,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 74, .y = 76 },
			[1] = { .x = 99, .y = 76 },
			[2] = { .x = 0, .y = 160 },
			[3] = { .x = 0, .y = 110 },
		}}
	},
	{
		.examinationSection = 0x8A,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 210, .y = 0 },
			[1] = { .x = 240, .y = 0 },
			[2] = { .x = 240, .y = 63 },
			[3] = { .x = 210, .y = 49 },
		}}
	},
	{
		.examinationSection = 0x89,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 187, .y = 86 },
			[1] = { .x = 240, .y = 74 },
			[2] = { .x = 240, .y = 160 },
			[3] = { .x = 205, .y = 160 },
		}}
	},
	{
		.examinationSection = 0x8B,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 32, .y = 0 },
			[1] = { .x = 101, .y = 0 },
			[2] = { .x = 101, .y = 71 },
			[3] = { .x = 32, .y = 84 },
		}}
	},
	{
		.examinationSection = 0x8C,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 57 },
			[1] = { .x = 27, .y = 57 },
			[2] = { .x = 27, .y = 74 },
			[3] = { .x = 0, .y = 74 },
		}}
	},
};

const struct ExaminationData gUnknown_08015178[5] = {
	{
		.examinationSection = 0x9B,
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
		.examinationSection = 0x9C,
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
		.examinationSection = 0x9D,
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
		.examinationSection = 0x9E,
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
		.examinationSection = 0x9F,
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

const struct ExaminationData gUnknown_080151DC[11] = {
	{
		.examinationSection = 0xB6,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 40, .y = 141 },
			[1] = { .x = 81, .y = 141 },
			[2] = { .x = 81, .y = 160 },
			[3] = { .x = 37, .y = 160 },
		}}
	},
	{
		.examinationSection = 0xB8,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 41, .y = 66 },
			[1] = { .x = 60, .y = 62 },
			[2] = { .x = 71, .y = 113 },
			[3] = { .x = 35, .y = 115 },
		}}
	},
	{
		.examinationSection = 0xB4,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 102, .y = 92 },
			[1] = { .x = 142, .y = 81 },
			[2] = { .x = 159, .y = 83 },
			[3] = { .x = 150, .y = 115 },
		}}
	},
	{
		.examinationSection = 0xB5,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 0 },
			[1] = { .x = 116, .y = 0 },
			[2] = { .x = 116, .y = 40 },
			[3] = { .x = 0, .y = 71 },
		}}
	},
	{
		.examinationSection = 0xBB,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 336, .y = 108 },
			[1] = { .x = 353, .y = 90 },
			[2] = { .x = 376, .y = 94 },
			[3] = { .x = 350, .y = 105 },
		}}
	},
	{
		.examinationSection = 0xBD,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 328, .y = 37 },
			[1] = { .x = 359, .y = 37 },
			[2] = { .x = 350, .y = 59 },
			[3] = { .x = 326, .y = 59 },
		}}
	},
	{
		.examinationSection = 0xBE,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 400, .y = 20 },
			[1] = { .x = 436, .y = 20 },
			[2] = { .x = 436, .y = 46 },
			[3] = { .x = 400, .y = 46 },
		}}
	},
	{
		.examinationSection = 0xBF,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 306, .y = 37 },
			[1] = { .x = 426, .y = 53 },
			[2] = { .x = 426, .y = 65 },
			[3] = { .x = 306, .y = 65 },
		}}
	},
	{
		.examinationSection = 0xC0,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 460, .y = 0 },
			[1] = { .x = 480, .y = 0 },
			[2] = { .x = 480, .y = 160 },
			[3] = { .x = 460, .y = 119 },
		}}
	},
	{
		.examinationSection = 0xC1,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 208, .y = 96 },
			[1] = { .x = 250, .y = 53 },
			[2] = { .x = 256, .y = 81 },
			[3] = { .x = 222, .y = 99 },
		}}
	},
	{
		.examinationSection = 0xBA,
		.unk2 = 0xFE,
		.unk3 = 0xC,
		.area = { .points = {
			[0] = { .x = 0, .y = 0 },
			[1] = { .x = 0, .y = 0 },
			[2] = { .x = 0, .y = 0 },
			[3] = { .x = 0, .y = 0 },
		}}
	},
};

const struct ExaminationData gUnknown_080152B8[2] = {
	{
		.examinationSection = 0xCB,
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
		.examinationSection = 0xCC,
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

const struct ExaminationData gUnknown_080152E0[5] = {
	{
		.examinationSection = 0xFE,
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
		.examinationSection = 0xFF,
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
		.examinationSection = 0xFC,
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
		.examinationSection = 0xFD,
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
		.examinationSection = 0x100,
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

const struct ExaminationData gUnknown_08015344[6] = {
	{
		.examinationSection = 0xED,
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
		.examinationSection = 0xEE,
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
		.examinationSection = 0xEF,
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
		.examinationSection = 0xF0,
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
		.examinationSection = 0xF1,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 69, .y = 32 },
			[1] = { .x = 88, .y = 35 },
			[2] = { .x = 88, .y = 72 },
			[3] = { .x = 69, .y = 67 },
		}}
	},
	{
		.examinationSection = 0xF2,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 17, .y = 96 },
			[1] = { .x = 44, .y = 96 },
			[2] = { .x = 44, .y = 99 },
			[3] = { .x = 20, .y = 102 },
		}}
	},
};

void sub_8002D70(struct Main *main)
{
    DmaCopy16(3, gUnknown_080150D0, gMain.roomData, sizeof(gUnknown_080150D0));
    DmaCopy16(3, gUnknown_08014FB8, gTalkData, sizeof(gUnknown_08014FB8));
    main->currentRoomId = 0;
}

void sub_8002DB4(struct Main *main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 0: {
            if(GetFlag(0, 0x53)) {
                if(!GetFlag(0, 0x4F)) {
                    sub_8002CCC(0xB1, 0x4F);
                }
                LOADEXAMDATA(gUnknown_08015178);
            }
            else if(GetFlag(0, 0x48)) {
                if(!GetFlag(0, 0x4A)) {
                    sub_8002CCC(0x94, 0x4A);
                }
                else {
                    sub_8002C98(0x14, 0, 0);
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_08015178);
            }
            else if (GetFlag(0, 0x41)) {
                if(!GetFlag(0, 0x42)) {
                    sub_8002CCC(0x84, 0x42);
                }
                else {
                    sub_8002C98(4, 0, 0);
                    if(GetFlag(0, 0x44) && GetFlag(0, 0x43) && GetFlag(0, 0x45) && GetFlag(0, 0x46)) {
                        sub_8002CCC(0x85, 0x47);
                    }
                    else {
                        PlayBGM(0xC);
                    }
                }
                LOADEXAMDATA(gUnknown_08015100);
            }
            else if(GetFlag(0, 0x3F)) {
                sub_8002CCC(0x82, 0x40);
            }
            break;
        }
        case 1: {
            if(!GetFlag(0, 0x41)) {
                sub_8002CCC(0xB3, 0x41);
                PlayAnimation(0x1B);
            }
            else {
                PlayBGM(0xC);
            }
            if(GetFlag(0, 0x49)) {
                PlayAnimation(0xC);
            }
            LOADEXAMDATA(gUnknown_080151DC);
            break;
        }
        case 2: {
            if(GetFlag(0, 0x62) && GetFlag(0, 0x64) && GetFlag(0, 0x63)) {
                if(!GetFlag(0, 0x5C)) {
                    sub_8002CCC(0xE1, 0x5C);
                }
                else {
                    sub_8002C98(0x4, 0x1FB0, 0x1FB0);
                    if(GetFlag(0, 0x5A)) {
                        PlayBGM(0xC);
                    }
                    else {
                        PlayBGM(0x1C);
                    }
                }
            }
            else if(GetFlag(0, 0x53)) {
                if(!GetFlag(0, 0x61)) {
                    sub_8002CCC(0xEA, 0x61);
                }
            }
            else if(GetFlag(0, 0x50)) {
                if(!GetFlag(0, 0x5B)) {
                    sub_8002CCC(0xD8, 0x5B);
                }
                else {
                    sub_8002C98(4, 0x1FB0, 0x1FB0);
                    PlayBGM(0);
                }
            }
            else if(!GetFlag(0, 0x48)) {
                sub_8002CCC(0xC2, 0x48);
            }
            else {
                sub_8002C98(4, 0x1FB0, 0x1FB0);
                PlayBGM(0);
            }
            LOADEXAMDATA(gUnknown_080152B8);
            break;
        }
        case 3: {
            if(GetFlag(0, 0x52)) {
                if(!GetFlag(0, 0x53)) {
                    sub_8002CCC(0xFB, 0x53);
                }
                else {
                    if(GetFlag(0, 0x53)) {
                        sub_8002C98(0xC, 0, 0);
                    }
                    PlayBGM(0x1A);
                }
            }
            else if(!GetFlag(0, 0x50)) {
                sub_8002CCC(0xFA, 0x50);
            }
            LOADEXAMDATA(gUnknown_080152E0);
            break;
        }
        case 5: {
            if(GetFlag(0, 0x5A)) {
                if(!GetFlag(0, 0x54)) {
                    sub_8002CCC(0xF7, 0x54);
                }
                else {
                    PlayBGM(0xC);
                }
            }
            else if(!GetFlag(0, 0x51)) {
                sub_8002CCC(0xEB, 0x51);
            }
            else {
                if(GetFlag(0, 0x52)) {
                    sub_8002C98(0x16, 0, 0);
                }
                PlayBGM(0x16);
            }
            LOADEXAMDATA(gUnknown_08015344);
            break;
        }
    }
}

void nullsub_7(struct Main *main) {
}
