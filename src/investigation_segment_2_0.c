#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"

const u8 gUnknown_08015870[6] = {
	0x0d, 0x0e, 0x0f, 0xfe, 0x17, 0xff
};

const u8 gUnknown_08015876[14] = {
	0x0d, 0x0e, 0x0f, 0x2a, 0x2b, 0x2c, 0x2d, 0xfe, 0x17, 0x32, 0x36, 0x33, 0x34, 0xff
};

const u8 gUnknown_08015884[15] = {
	0x0d, 0x0e, 0x0f, 0x2a, 0x2b, 0x2c, 0x2d, 0xfe, 0x17, 0x32, 0x33, 0x35, 0x36, 0x38, 0xff
};

const u8 gUnknown_08015893[20] = {
	0x0d, 0x0e, 0x0f, 0x2a, 0x2b, 0x2c, 0x30, 0x2d, 0x2e, 0x2f, 0xfe, 0x17, 0x32, 0x35, 0x36, 0x38,
	0x39, 0x3d, 0x40, 0xff
};

const u8 gUnknown_080158A7[20] = {
	0x0d, 0x0e, 0x0f, 0x2a, 0x2b, 0x2c, 0x30, 0x2d, 0x2e, 0x2f, 0xfe, 0x17, 0x32, 0x35, 0x36, 0x38,
	0x3d, 0x40, 0x41, 0xff
};

const u8 gUnknown_080158BB[25] = {
	0x0d, 0x0e, 0x0f, 0x2a, 0x2b, 0x2c, 0x30, 0x2d, 0x2e, 0x2f, 0xfe, 0x17, 0x32, 0x35, 0x36, 0x38,
	0x3d, 0x40, 0x41, 0x44, 0x43, 0x42, 0xff, 0x00, 0x00
};


const struct Struct811DC54 gUnknown_080158D4[9] = {
	{
		.unk0 = 0x8A,
		.unk2 = 0x34,
		.unk4 = 0x95,
		.unk6 = 0xFF,
		.unk7 = 0x0,
	},
	{
		.unk0 = 0x8B,
		.unk2 = 0x34,
		.unk4 = 0x95,
		.unk6 = 0xFF,
		.unk7 = 0x0,
	},
	{
		.unk0 = 0xAB,
		.unk2 = 0x35,
		.unk4 = 0xB3,
		.unk6 = 0xFF,
		.unk7 = 0x0,
	},
	{
		.unk0 = 0xAC,
		.unk2 = 0x35,
		.unk4 = 0xB3,
		.unk6 = 0xFF,
		.unk7 = 0x0,
	},
	{
		.unk0 = 0xAD,
		.unk2 = 0x35,
		.unk4 = 0xB3,
		.unk6 = 0xFF,
		.unk7 = 0x0,
	},
	{
		.unk0 = 0xC6,
		.unk2 = 0x33,
		.unk4 = 0xCA,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xC6,
		.unk2 = 0x38,
		.unk4 = 0xC8,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xC6,
		.unk2 = 0x35,
		.unk4 = 0xC8,
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

const struct Struct811DC54 gUnknown_0801591C[5] = {
	{
		.unk0 = 0xAC,
		.unk2 = 0x41,
		.unk4 = 0xB7,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xC9,
		.unk2 = 0x41,
		.unk4 = 0xCB,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD0,
		.unk2 = 0x40,
		.unk4 = 0xDA,
		.unk6 = 0xF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xF3,
		.unk2 = 0x39,
		.unk4 = 0xF6,
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

const struct Struct811DC54 gUnknown_08015944[6] = {
	{
		.unk0 = 0xA6,
		.unk2 = 0x43,
		.unk4 = 0xA8,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xAD,
		.unk2 = 0x43,
		.unk4 = 0xAF,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xA6,
		.unk2 = 0x42,
		.unk4 = 0xAC,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xA9,
		.unk2 = 0x42,
		.unk4 = 0xAB,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD7,
		.unk2 = 0x40,
		.unk4 = 0xD9,
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

const struct Struct811DC54 gUnknown_08015974[10] = {
	{
		.unk0 = 0x86,
		.unk2 = 0x42,
		.unk4 = 0x8E,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0x9A,
		.unk2 = 0x38,
		.unk4 = 0x9C,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xA0,
		.unk2 = 0x44,
		.unk4 = 0xA2,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xA7,
		.unk2 = 0x45,
		.unk4 = 0xA9,
		.unk6 = 0xFF,
		.unk7 = 0x0,
	},
	{
		.unk0 = 0xB7,
		.unk2 = 0x35,
		.unk4 = 0xCB,
		.unk6 = 0x13,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD1,
		.unk2 = 0x44,
		.unk4 = 0xD3,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xD6,
		.unk2 = 0xFFFF,
		.unk4 = 0xFFFF,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xDB,
		.unk2 = 0x35,
		.unk4 = 0xDD,
		.unk6 = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.unk0 = 0xDB,
		.unk2 = 0x40,
		.unk4 = 0xDD,
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

const struct Struct811DC98 gUnknown_080159C4[11] = {
	{
		.unk0 = 0x6,
		.unk1 = 0x17,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x89,
		.unk6 = 0x8B,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x31,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8A,
		.unk6 = 0x8B,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x33,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8F,
		.unk6 = 0x8B,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x17,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x97,
		.unk6 = 0x98,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x31,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x9E,
		.unk6 = 0x98,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x31,
		.unk2 = 0x11,
		.unk3 = 0x0,
		.unk4 = 0xAC,
		.unk6 = 0xAD,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x33,
		.unk2 = 0x11,
		.unk3 = 0x0,
		.unk4 = 0xB3,
		.unk6 = 0xAD,
	},
	{
		.unk0 = 0xA,
		.unk1 = 0x17,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xE0,
		.unk6 = 0xE2,
	},
	{
		.unk0 = 0xA,
		.unk1 = 0x33,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xE1,
		.unk6 = 0xE2,
	},
	{
		.unk0 = 0xB,
		.unk1 = 0xFF,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0xE1,
		.unk6 = 0xF9,
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
const struct TalkData gUnknown_08015A1C[17] = {
	{
		.roomId = 0x6,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x20, 0x21, 0xFF, 0xFF },
		.talkFlagId = { 0x31, 0x32, 0xFF, 0xFF },
		.talkSection = { 0x87, 0x88, 0x0, 0x0 }
	},
	{
		.roomId = 0x6,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x20, 0x22, 0xFF, 0xFF },
		.talkFlagId = { 0x33, 0x34, 0xFF, 0xFF },
		.talkSection = { 0x8D, 0x8E, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x1B,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x23, 0x24, 0xFF, 0xFF },
		.talkFlagId = { 0x35, 0x36, 0xFF, 0xFF },
		.talkSection = { 0x94, 0x95, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x1B,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x23, 0x24, 0x25, 0xFF },
		.talkFlagId = { 0x35, 0x36, 0x37, 0xFF },
		.talkSection = { 0x94, 0x95, 0x96, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x1B,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x26, 0x27, 0x24, 0xFF },
		.talkFlagId = { 0x38, 0x39, 0x36, 0xFF },
		.talkSection = { 0x9B, 0x9C, 0x95, 0x0 }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x28, 0x29, 0xFF, 0xFF },
		.talkFlagId = { 0x3A, 0x3B, 0xFF, 0xFF },
		.talkSection = { 0xA8, 0xA9, 0x0, 0x0 }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x28, 0x29, 0x2A, 0xFF },
		.talkFlagId = { 0x3A, 0x3B, 0x3C, 0xFF },
		.talkSection = { 0xA8, 0xA9, 0xAA, 0x0 }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x28, 0x29, 0x2B, 0xFF },
		.talkFlagId = { 0x3A, 0x3B, 0x3D, 0xFF },
		.talkSection = { 0xA8, 0xA9, 0xAB, 0x0 }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x28, 0x29, 0x2A, 0x2B },
		.talkFlagId = { 0x3A, 0x3B, 0x3C, 0x3D },
		.talkSection = { 0xA8, 0xA9, 0xAA, 0xAB }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x2C, 0x2B, 0x2A, 0xFF },
		.talkFlagId = { 0x3E, 0x3F, 0x40, 0xFF },
		.talkSection = { 0xAF, 0xB0, 0xB1, 0x0 }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x2C, 0x2B, 0x2A, 0x2D },
		.talkFlagId = { 0x3E, 0x3F, 0x40, 0x41 },
		.talkSection = { 0xAF, 0xB0, 0xB1, 0xB2 }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x2C, 0x2B, 0x2D, 0x2E },
		.talkFlagId = { 0x3E, 0x3F, 0x41, 0x42 },
		.talkSection = { 0xAF, 0xB0, 0xB2, 0xBD }
	},
	{
		.roomId = 0xA,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x2F, 0x30, 0x27, 0xFF },
		.talkFlagId = { 0x43, 0x44, 0x45, 0xFF },
		.talkSection = { 0xDB, 0xDD, 0xDE, 0x0 }
	},
	{
		.roomId = 0xA,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x2F, 0x30, 0x27, 0x31 },
		.talkFlagId = { 0x43, 0x44, 0x45, 0x46 },
		.talkSection = { 0xDB, 0xDD, 0xDE, 0xDF }
	},
	{
		.roomId = 0xB,
		.personId = 0x10,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x32, 0x29, 0xFF, 0xFF },
		.talkFlagId = { 0x47, 0x48, 0xFF, 0xFF },
		.talkSection = { 0xF6, 0xF7, 0x0, 0x0 }
	},
	{
		.roomId = 0xB,
		.personId = 0x10,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x32, 0x29, 0x33, 0xFF },
		.talkFlagId = { 0x47, 0x48, 0x49, 0xFF },
		.talkSection = { 0xF6, 0xF7, 0xF8, 0x0 }
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
const u8 gUnknown_08015B70[12][8] = {
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x1E, 0xFF, 0xFF, 0xFF, 0x06, 0xFF, 0xFF, 0xFF},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x01, 0xFF, 0xFF, 0xFF, 0x02, 0xFF, 0xFF, 0xFF},
	{ 0x19, 0xFF, 0xFF, 0xFF, 0x06, 0x02, 0xFF, 0xFF},
	{ 0x0C, 0xFF, 0xFF, 0xFF, 0x07, 0x09, 0xFF, 0xFF},
	{ 0x18, 0xFF, 0xFF, 0xFF, 0x08, 0xFF, 0xFF, 0xFF},
	{ 0x0B, 0xFF, 0xFF, 0xFF, 0x07, 0xFF, 0xFF, 0xFF},
	{ 0x1A, 0xFF, 0xFF, 0xFF, 0x0A, 0xFF, 0xFF, 0xFF},
};

// exam data
const struct ExaminationData gUnknown_08015BD0[5] = {
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

const struct ExaminationData gUnknown_08015C34[2] = {
	{
		.examinationSection = 0x93,
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

const struct ExaminationData gUnknown_08015C5C[5] = {
	{
		.examinationSection = 0xA4,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 198, .y = 69 },
			[1] = { .x = 240, .y = 69 },
			[2] = { .x = 240, .y = 112 },
			[3] = { .x = 187, .y = 112 },
		}}
	},
	{
		.examinationSection = 0xA3,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 106, .y = 87 },
			[1] = { .x = 176, .y = 87 },
			[2] = { .x = 176, .y = 98 },
			[3] = { .x = 106, .y = 98 },
		}}
	},
	{
		.examinationSection = 0xA7,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 10, .y = 80 },
			[1] = { .x = 38, .y = 80 },
			[2] = { .x = 38, .y = 84 },
			[3] = { .x = 18, .y = 84 },
		}}
	},
	{
		.examinationSection = 0xA5,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 37 },
			[1] = { .x = 49, .y = 53 },
			[2] = { .x = 49, .y = 91 },
			[3] = { .x = 0, .y = 91 },
		}}
	},
	{
		.examinationSection = 0xA6,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 64, .y = 65 },
			[1] = { .x = 77, .y = 69 },
			[2] = { .x = 77, .y = 94 },
			[3] = { .x = 64, .y = 94 },
		}}
	},
};

const struct ExaminationData gUnknown_08015CC0[10] = {
	{
		.examinationSection = 0xBF,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 314, .y = 58 },
			[1] = { .x = 346, .y = 58 },
			[2] = { .x = 346, .y = 113 },
			[3] = { .x = 313, .y = 107 },
		}}
	},
	{
		.examinationSection = 0xC1,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 425, .y = 48 },
			[1] = { .x = 462, .y = 42 },
			[2] = { .x = 462, .y = 160 },
			[3] = { .x = 425, .y = 141 },
		}}
	},
	{
		.examinationSection = 0xC0,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 401, .y = 56 },
			[1] = { .x = 415, .y = 55 },
			[2] = { .x = 415, .y = 83 },
			[3] = { .x = 401, .y = 83 },
		}}
	},
	{
		.examinationSection = 0xC2,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 373, .y = 60 },
			[1] = { .x = 396, .y = 56 },
			[2] = { .x = 396, .y = 88 },
			[3] = { .x = 373, .y = 85 },
		}}
	},
	{
		.examinationSection = 0xC3,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 232, .y = 58 },
			[1] = { .x = 282, .y = 58 },
			[2] = { .x = 282, .y = 85 },
			[3] = { .x = 232, .y = 85 },
		}}
	},
	{
		.examinationSection = 0xC4,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 85, .y = 108 },
			[1] = { .x = 149, .y = 90 },
			[2] = { .x = 148, .y = 129 },
			[3] = { .x = 83, .y = 129 },
		}}
	},
	{
		.examinationSection = 0xC5,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 12, .y = 126 },
			[1] = { .x = 39, .y = 121 },
			[2] = { .x = 39, .y = 126 },
			[3] = { .x = 12, .y = 132 },
		}}
	},
	{
		.examinationSection = 0xC6,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 26, .y = 143 },
			[1] = { .x = 45, .y = 134 },
			[2] = { .x = 59, .y = 138 },
			[3] = { .x = 41, .y = 144 },
		}}
	},
	{
		.examinationSection = 0xC7,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 160, .y = 147 },
			[1] = { .x = 253, .y = 147 },
			[2] = { .x = 253, .y = 144 },
			[3] = { .x = 160, .y = 144 },
		}}
	},
	{
		.examinationSection = 0xC8,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 60, .y = 11 },
			[1] = { .x = 116, .y = 31 },
			[2] = { .x = 138, .y = 112 },
			[3] = { .x = 75, .y = 115 },
		}}
	},
};

const struct ExaminationData gUnknown_08015D88[7] = {
	{
		.examinationSection = 0xCD,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 191, .y = 144 },
			[1] = { .x = 223, .y = 144 },
			[2] = { .x = 223, .y = 160 },
			[3] = { .x = 179, .y = 160 },
		}}
	},
	{
		.examinationSection = 0xCC,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 109, .y = 105 },
			[1] = { .x = 158, .y = 105 },
			[2] = { .x = 158, .y = 108 },
			[3] = { .x = 109, .y = 108 },
		}}
	},
	{
		.examinationSection = 0xD0,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 165, .y = 87 },
			[1] = { .x = 240, .y = 73 },
			[2] = { .x = 240, .y = 101 },
			[3] = { .x = 165, .y = 88 },
		}}
	},
	{
		.examinationSection = 0xCF,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 168, .y = 52 },
			[1] = { .x = 240, .y = 32 },
			[2] = { .x = 240, .y = 92 },
			[3] = { .x = 168, .y = 92 },
		}}
	},
	{
		.examinationSection = 0xCA,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 91, .y = 58 },
			[1] = { .x = 153, .y = 58 },
			[2] = { .x = 153, .y = 90 },
			[3] = { .x = 91, .y = 90 },
		}}
	},
	{
		.examinationSection = 0xCB,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 38 },
			[1] = { .x = 81, .y = 38 },
			[2] = { .x = 81, .y = 83 },
			[3] = { .x = 0, .y = 83 },
		}}
	},
	{
		.examinationSection = 0xD1,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 102 },
			[1] = { .x = 73, .y = 102 },
			[2] = { .x = 73, .y = 113 },
			[3] = { .x = 0, .y = 113 },
		}}
	},
};

const struct ExaminationData gUnknown_08015E14[6] = {
	{
		.examinationSection = 0xD8,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 31, .y = 16 },
			[1] = { .x = 48, .y = 27 },
			[2] = { .x = 40, .y = 29 },
			[3] = { .x = 27, .y = 24 },
		}}
	},
	{
		.examinationSection = 0xDA,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 60, .y = 0 },
			[1] = { .x = 240, .y = 0 },
			[2] = { .x = 240, .y = 14 },
			[3] = { .x = 60, .y = 14 },
		}}
	},
	{
		.examinationSection = 0xD5,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 202, .y = 70 },
			[1] = { .x = 219, .y = 70 },
			[2] = { .x = 219, .y = 71 },
			[3] = { .x = 202, .y = 71 },
		}}
	},
	{
		.examinationSection = 0xD9,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 45, .y = 93 },
			[1] = { .x = 72, .y = 92 },
			[2] = { .x = 82, .y = 106 },
			[3] = { .x = 49, .y = 120 },
		}}
	},
	{
		.examinationSection = 0xD6,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 19, .y = 84 },
			[1] = { .x = 122, .y = 84 },
			[2] = { .x = 122, .y = 91 },
			[3] = { .x = 19, .y = 91 },
		}}
	},
	{
		.examinationSection = 0xD7,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 109, .y = 44 },
			[1] = { .x = 167, .y = 39 },
			[2] = { .x = 160, .y = 63 },
			[3] = { .x = 106, .y = 63 },
		}}
	},
};

const struct ExaminationData gUnknown_08015E8C[6] = {
	{
		.examinationSection = 0xF1,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 23, .y = 51 },
			[1] = { .x = 61, .y = 16 },
			[2] = { .x = 78, .y = 27 },
			[3] = { .x = 48, .y = 126 },
		}}
	},
	{
		.examinationSection = 0xF0,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 0 },
			[1] = { .x = 20, .y = 0 },
			[2] = { .x = 20, .y = 86 },
			[3] = { .x = 0, .y = 98 },
		}}
	},
	{
		.examinationSection = 0xF2,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 116, .y = 98 },
			[1] = { .x = 198, .y = 98 },
			[2] = { .x = 224, .y = 125 },
			[3] = { .x = 149, .y = 144 },
		}}
	},
	{
		.examinationSection = 0xF3,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 201, .y = 52 },
			[1] = { .x = 222, .y = 52 },
			[2] = { .x = 227, .y = 86 },
			[3] = { .x = 204, .y = 86 },
		}}
	},
	{
		.examinationSection = 0xF4,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 217, .y = 23 },
			[1] = { .x = 240, .y = 23 },
			[2] = { .x = 240, .y = 78 },
			[3] = { .x = 227, .y = 78 },
		}}
	},
	{
		.examinationSection = 0xF5,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 117, .y = 21 },
			[1] = { .x = 148, .y = 21 },
			[2] = { .x = 156, .y = 79 },
			[3] = { .x = 116, .y = 79 },
		}}
	},
};

void sub_8003594(struct Main *main)
{
    DmaCopy16(3, gUnknown_08015B70, gMain.roomData, sizeof(gUnknown_08015B70));
    DmaCopy16(3, gUnknown_08015A1C, gTalkData, sizeof(gUnknown_08015A1C));
    main->currentRoomId = 6;
}

void sub_80035D8(struct Main *main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xA0)) {
                if(!GetFlag(0, 0x95)) {
                    sub_8002CCC(0x8C, 0x95);
                }
                else {
                    sub_8002C98(4, 0x510, 0x510);
                    PlayBGM(6);
                }
            }
            else if(GetFlag(0, 0x94)) {
                sub_8002C98(4, 0x510, 0x510);
                PlayBGM(6);
            }
            LOADEXAMDATA(gUnknown_08015BD0);
            break;
        }
        case 2: {
            if (GetFlag(0, 0xA0)) {
                if (!GetFlag(0, 0x92)) {
                    sub_8002CCC(0x9F, 0x92);
                }
            }
            else if(GetFlag(0, 0x9A)) {
                if(!GetFlag(0, 0x91)) {
                    sub_8002CCC(0x99, 0x91);
                }
                else {
                    sub_8002C98(0x1B, 0, 0);
                    PlayBGM(0);
                }
            }
            else if(!GetFlag(0, 0x90)) {
                sub_8002CCC(0x90, 0x90);
            }
            else {
                sub_8002C98(0x1B, 0, 0);
                PlayBGM(0);
            }
            LOADEXAMDATA(gUnknown_08015C34);
            break;
        }
        case 7: {
            if(GetFlag(0, 0xA8)) {
                if(!GetFlag(0, 0xA9)) {
                    sub_8002CCC(0xB4, 0xA9);
                }
                else if(GetFlag(0, 0xAA)) {
                    PlayBGM(0x1F);
                }
                else {
                    sub_8002C98(0x11, 0, 0);
                    PlayBGM(0x19);
                }
            }
            else if(GetFlag(0, 0xA0)) {
                if(!GetFlag(0, 0xA1)) {
                    sub_8002CCC(0xAE, 0xA1);
                }
                else {
                    sub_8002C98(0x11, 0, 0);
                    PlayBGM(0x19);
                }
            }
            else if(!GetFlag(0, 0x93)) {
                sub_8002CCC(0xA1, 0x93);
            }
            else {
                sub_8002C98(0x11, 0, 0);
                PlayBGM(0x19);
            }
            LOADEXAMDATA(gUnknown_08015C5C);
            break;
        }
        case 8: {
            if(!GetFlag(0, 0x9D)) {
                sub_8002CCC(0xBE, 0x9D);
            }
            LOADEXAMDATA(gUnknown_08015CC0);
            break;
        }
        case 9: {
            if(!GetFlag(0, 0xA2)) {
                sub_8002CCC(0xC9, 0xA2);
            }
            LOADEXAMDATA(gUnknown_08015D88);
            break;
        }
        case 10: {
            if(!GetFlag(0, 0x9C)) {
                sub_8002CCC(0xD2, 0x9C);
            }
            else {
                sub_8002C98(0x14, 0, 0);
                PlayBGM(1);
            }
            LOADEXAMDATA(gUnknown_08015E14);
            break;
        }
        case 11: {
            if(GetFlag(0, 0xAA)) {
                if(!GetFlag(0, 0xAB)) {
                    sub_8002CCC(0xFA, 0xAB);
                }
            }
            else if(!GetFlag(0, 0xA4)) {
                sub_8002CCC(0xED, 0xA4);
            }
            else {
                if(GetFlag(0, 0xA5)) {
                    sub_8002C98(0x10, 0, 0);
                }
                PlayBGM(0x19);
            }
            LOADEXAMDATA(gUnknown_08015E8C);
            break;
        }
    }
}

void nullsub_8(struct Main *main) {
}