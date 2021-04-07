#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"

const struct Struct811DC98 gUnknown_08016ABC[22] = {
	{
		.unk0 = 0x6,
		.unk1 = 0x40,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x89,
		.unk6 = 0x8D,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x41,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8A,
		.unk6 = 0x8D,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x34,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8B,
		.unk6 = 0x8D,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x35,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8B,
		.unk6 = 0x8D,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x37,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8C,
		.unk6 = 0x8D,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x38,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8C,
		.unk6 = 0x8D,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x40,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x94,
		.unk6 = 0x97,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x37,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x95,
		.unk6 = 0x97,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x38,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x95,
		.unk6 = 0x97,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x34,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x96,
		.unk6 = 0x97,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x35,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x96,
		.unk6 = 0x97,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x34,
		.unk2 = 0x11,
		.unk3 = 0x0,
		.unk4 = 0xA1,
		.unk6 = 0xA2,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x35,
		.unk2 = 0x11,
		.unk3 = 0x0,
		.unk4 = 0xA1,
		.unk6 = 0xA2,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x44,
		.unk2 = 0x11,
		.unk3 = 0x0,
		.unk4 = 0xB2,
		.unk6 = 0xB3,
	},
	{
		.unk0 = 0x8,
		.unk1 = 0x43,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC4,
		.unk6 = 0xC5,
	},
	{
		.unk0 = 0x8,
		.unk1 = 0x42,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC3,
		.unk6 = 0xC5,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x34,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0xDB,
		.unk6 = 0xDE,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x35,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0xDB,
		.unk6 = 0xDE,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x43,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0xDC,
		.unk6 = 0xDE,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x40,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0xDD,
		.unk6 = 0xDE,
	},
	{
		.unk0 = 0xC,
		.unk1 = 0x44,
		.unk2 = 0x18,
		.unk3 = 0x0,
		.unk4 = 0xF5,
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
const struct TalkData gUnknown_08016B6C[13] = {
	{
		.roomId = 0x6,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x24, 0x3D, 0x21, 0xFF },
		.talkFlagId = { 0x6A, 0x6B, 0x6C, 0xFF },
		.talkSection = { 0x86, 0x87, 0x88, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x1B,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x3E, 0x3F, 0x3C, 0xFF },
		.talkFlagId = { 0x6D, 0x6E, 0x6F, 0xFF },
		.talkSection = { 0x91, 0x92, 0x93, 0x0 }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x3E, 0x3F, 0x3C, 0xFF },
		.talkFlagId = { 0x70, 0x71, 0x72, 0xFF },
		.talkSection = { 0x9E, 0x9F, 0xA0, 0x0 }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x3E, 0x3F, 0x3C, 0x40 },
		.talkFlagId = { 0x70, 0x71, 0x72, 0x7E },
		.talkSection = { 0x9E, 0x9F, 0xA0, 0xA4 }
	},
	{
		.roomId = 0x8,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x41, 0x42, 0x43, 0xFF },
		.talkFlagId = { 0x73, 0x74, 0x75, 0xFF },
		.talkSection = { 0xBF, 0xC0, 0xC1, 0x0 }
	},
	{
		.roomId = 0x8,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x42, 0x43, 0xFF, 0xFF },
		.talkFlagId = { 0x74, 0x75, 0xFF, 0xFF },
		.talkSection = { 0xC0, 0xC1, 0x0, 0x0 }
	},
	{
		.roomId = 0x9,
		.personId = 0x10,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x3C, 0x44, 0xFF, 0xFF },
		.talkFlagId = { 0x76, 0x78, 0xFF, 0xFF },
		.talkSection = { 0xD2, 0xD5, 0x0, 0x0 }
	},
	{
		.roomId = 0x9,
		.personId = 0x10,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x3C, 0x44, 0x45, 0xFF },
		.talkFlagId = { 0x76, 0x78, 0x79, 0xFF },
		.talkSection = { 0xD2, 0xD5, 0xD6, 0x0 }
	},
	{
		.roomId = 0x9,
		.personId = 0x10,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x3C, 0x44, 0x40, 0xFF },
		.talkFlagId = { 0x76, 0x78, 0x7A, 0xFF },
		.talkSection = { 0xD2, 0xD5, 0xD3, 0x0 }
	},
	{
		.roomId = 0x9,
		.personId = 0x10,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x3C, 0x44, 0x45, 0x40 },
		.talkFlagId = { 0x76, 0x78, 0x79, 0x7A },
		.talkSection = { 0xD2, 0xD5, 0xD6, 0xD3 }
	},
	{
		.roomId = 0x9,
		.personId = 0x10,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x3C, 0x44, 0x45, 0x40 },
		.talkFlagId = { 0x76, 0x78, 0x79, 0x77 },
		.talkSection = { 0xD2, 0xD5, 0xD6, 0xD4 }
	},
	{
		.roomId = 0xC,
		.personId = 0x18,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x3C, 0x29, 0x3F, 0xFF },
		.talkFlagId = { 0x7B, 0x7C, 0x7D, 0xFF },
		.talkSection = { 0xF2, 0xF3, 0xF4, 0x0 }
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
const u8 gUnknown_08016C70[14][8] = {
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x1E, 0xFF, 0xFF, 0xFF, 0x06, 0x07, 0xFF, 0xFF},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x01, 0xFF, 0xFF, 0xFF, 0x02, 0x07, 0xFF, 0xFF},
	{ 0x19, 0xFF, 0xFF, 0xFF, 0x06, 0x02, 0x0A, 0x08},
	{ 0x0C, 0xFF, 0xFF, 0xFF, 0x07, 0x09, 0xFF, 0xFF},
	{ 0x18, 0xFF, 0xFF, 0xFF, 0x08, 0xFF, 0xFF, 0xFF},
	{ 0x0B, 0xFF, 0xFF, 0xFF, 0x07, 0x0C, 0xFF, 0xFF},
	{ 0x1A, 0xFF, 0xFF, 0xFF, 0x0A, 0xFF, 0xFF, 0xFF},
	{ 0x2C, 0xFF, 0xFF, 0xFF, 0x0A, 0x0D, 0xFF, 0xFF},
	{ 0x13, 0xFF, 0xFF, 0xFF, 0x0C, 0xFF, 0xFF, 0xFF},
};

// exam data
const struct ExaminationData gUnknown_08016CE0[5] = {
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

const struct ExaminationData gUnknown_08016D44[2] = {
	{
		.examinationSection = 0x90,
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
		.examinationSection = 0x8F,
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

const struct ExaminationData gUnknown_08016D6C[5] = {
	{
		.examinationSection = 0x9A,
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
		.examinationSection = 0x99,
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
		.examinationSection = 0x9D,
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
		.examinationSection = 0x9B,
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
		.examinationSection = 0x9C,
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

const struct ExaminationData gUnknown_08016DD0[10] = {
	{
		.examinationSection = 0xB5,
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
		.examinationSection = 0xB7,
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
		.examinationSection = 0xB6,
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
		.examinationSection = 0xB8,
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
		.examinationSection = 0xB9,
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
		.examinationSection = 0xBA,
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
		.examinationSection = 0xBB,
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
		.examinationSection = 0xBC,
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
		.examinationSection = 0xBD,
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
		.examinationSection = 0xBE,
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

const struct ExaminationData gUnknown_08016E98[7] = {
	{
		.examinationSection = 0xC8,
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
		.examinationSection = 0xCD,
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
		.examinationSection = 0xCB,
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
		.examinationSection = 0xCC,
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
		.examinationSection = 0xC9,
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

const struct ExaminationData gUnknown_08016F24[7] = {
	{
		.examinationSection = 0xCE,
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
		.examinationSection = 0xCD,
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
		.examinationSection = 0xCB,
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
		.examinationSection = 0xCC,
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

const struct ExaminationData gUnknown_08016FB0[6] = {
	{
		.examinationSection = 0xE4,
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
		.examinationSection = 0xE6,
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
		.examinationSection = 0xE1,
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
		.examinationSection = 0xE5,
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
		.examinationSection = 0xE2,
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
		.examinationSection = 0xE3,
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

const struct ExaminationData gUnknown_08017028[9] = {
	{
		.examinationSection = 0xE8,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 16, .y = 53 },
			[1] = { .x = 107, .y = 60 },
			[2] = { .x = 112, .y = 103 },
			[3] = { .x = 2, .y = 110 },
		}}
	},
	{
		.examinationSection = 0xE9,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 144, .y = 132 },
			[1] = { .x = 240, .y = 132 },
			[2] = { .x = 240, .y = 144 },
			[3] = { .x = 144, .y = 160 },
		}}
	},
	{
		.examinationSection = 0xEA,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 166, .y = 47 },
			[1] = { .x = 175, .y = 47 },
			[2] = { .x = 175, .y = 48 },
			[3] = { .x = 166, .y = 48 },
		}}
	},
	{
		.examinationSection = 0xEB,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 257, .y = 47 },
			[1] = { .x = 264, .y = 47 },
			[2] = { .x = 264, .y = 48 },
			[3] = { .x = 257, .y = 48 },
		}}
	},
	{
		.examinationSection = 0xEC,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 132, .y = 94 },
			[1] = { .x = 138, .y = 60 },
			[2] = { .x = 154, .y = 60 },
			[3] = { .x = 149, .y = 94 },
		}}
	},
	{
		.examinationSection = 0xEF,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 412, .y = 126 },
			[1] = { .x = 496, .y = 126 },
			[2] = { .x = 496, .y = 160 },
			[3] = { .x = 412, .y = 144 },
		}}
	},
	{
		.examinationSection = 0xF0,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 444, .y = 19 },
			[1] = { .x = 468, .y = 16 },
			[2] = { .x = 468, .y = 87 },
			[3] = { .x = 444, .y = 87 },
		}}
	},
	{
		.examinationSection = 0xEE,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 349, .y = 26 },
			[1] = { .x = 496, .y = 0 },
			[2] = { .x = 496, .y = 144 },
			[3] = { .x = 330, .y = 107 },
		}}
	},
	{
		.examinationSection = 0xED,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 281, .y = 85 },
			[1] = { .x = 325, .y = 80 },
			[2] = { .x = 325, .y = 105 },
			[3] = { .x = 281, .y = 90 },
		}}
	},
};

const struct ExaminationData gUnknown_080170DC[7] = {
	{
		.examinationSection = 0xFC,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 80, .y = 100 },
			[1] = { .x = 197, .y = 100 },
			[2] = { .x = 205, .y = 136 },
			[3] = { .x = 71, .y = 136 },
		}}
	},
	{
		.examinationSection = 0xFE,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 48, .y = 51 },
			[1] = { .x = 119, .y = 51 },
			[2] = { .x = 119, .y = 90 },
			[3] = { .x = 48, .y = 90 },
		}}
	},
	{
		.examinationSection = 0xF8,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 128, .y = 41 },
			[1] = { .x = 157, .y = 41 },
			[2] = { .x = 157, .y = 73 },
			[3] = { .x = 128, .y = 73 },
		}}
	},
	{
		.examinationSection = 0xF9,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 170, .y = 41 },
			[1] = { .x = 193, .y = 41 },
			[2] = { .x = 193, .y = 73 },
			[3] = { .x = 170, .y = 73 },
		}}
	},
	{
		.examinationSection = 0xFA,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 207, .y = 41 },
			[1] = { .x = 232, .y = 41 },
			[2] = { .x = 232, .y = 73 },
			[3] = { .x = 207, .y = 73 },
		}}
	},
	{
		.examinationSection = 0xFB,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 225, .y = 109 },
			[1] = { .x = 240, .y = 109 },
			[2] = { .x = 240, .y = 121 },
			[3] = { .x = 240, .y = 121 },
		}}
	},
	{
		.examinationSection = 0xFD,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 38 },
			[1] = { .x = 31, .y = 47 },
			[2] = { .x = 31, .y = 82 },
			[3] = { .x = 0, .y = 82 },
		}}
	},
};

void sub_80040A4(struct Main *main)
{
    DmaCopy16(3, gUnknown_08016C70, gMain.roomData, sizeof(gUnknown_08016C70));
    DmaCopy16(3, gUnknown_08016B6C, gTalkData, sizeof(gUnknown_08016B6C));
    main->currentRoomId = 6;
}

void sub_80040E8(struct Main *main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xE0)) {
                sub_8002C98(4, 0x510, 0x510);
                PlayBGM(6);
            }
            LOADEXAMDATA(gUnknown_08016CE0);
            break;
        }
        case 2: {
            if(!GetFlag(0, 0xE1)) {
                sub_8002CCC(0x8E, 0xE1);
            }
            else {
                sub_8002C98(0x1B, 0, 0);
                PlayBGM(0);
            }
            LOADEXAMDATA(gUnknown_08016D44);
            break;
        }
        case 7: {
            if(GetFlag(2, 0x77)) {
                if(!GetFlag(0, 0xEE)) {
                    sub_8002CCC(0xA3, 0xEE);
                }
                else {
                    sub_8002C98(0x11, 0, 0);
                    PlayBGM(0xC);
                }
            }
            else if(!GetFlag(0, 0xE2)) {
                sub_8002CCC(0x98, 0xE2);
            }
            else {
                sub_8002C98(0x11, 0, 0);
                PlayBGM(0x19);
            }
            LOADEXAMDATA(gUnknown_08016D6C);
            break;
        }
        case 8: {
            if(GetFlag(0, 0xEF)) {
                if(!GetFlag(0, 0xF0)) {
                    sub_8002CCC(0xC6, 0xF0);
                }
            }
            else if(!GetFlag(0, 0xE3)) {
                sub_8002CCC(0xB4, 0xE3);
            }
            else {
                if(GetFlag(0, 0xE4)) {
                    gMain.talkingAnimationOffset = 0;
                    gMain.idleAnimationOffset = 0;
                    PlayPersonAnimation(0x8014, 0, 0, 0);
                    gInvestigation.unk5 = 1;
                    sub_800B7A8(&gInvestigation, 0xF);
                }
                PlayBGM(1);
            }
            LOADEXAMDATA(gUnknown_08016DD0);
            break;
        }
        case 9: {
            if(GetFlag(0, 0xEF)) {
                if(!GetFlag(0, 0xF1)) {
                    sub_8002CCC(0xDF, 0xF1);
                }
                LOADEXAMDATA(gUnknown_08016E98);
            }
            else if(GetFlag(0, 0xE9)) {
                if(!GetFlag(0, 0xEA)) {
                    sub_8002CCC(0xCA, 0xEA);
                }
                else {
                    sub_8002C98(0x10, 0, 0);
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_08016F24);
            }
            else {
                if(!GetFlag(0, 0xE5)) {
                    sub_8002CCC(0xC7, 0xE5);
                }
                LOADEXAMDATA(gUnknown_08016E98);
            }
            break;
        }
        case 10: {
            if(!GetFlag(0, 0xE6)) {
                sub_8002CCC(0xE0, 0xE6);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08016FB0);
            break;
        }
        case 12: {
            if(!GetFlag(0, 0xE7)) {
                sub_8002CCC(0xE7, 0xE7);
            }
            else {
                if(!GetFlag(0, 0xF2)) {
                    sub_8002C98(0x18, 0, 0);
                }
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08017028);
            break;
        }
        case 13: {
            if(GetFlag(0, 0xF2)) {
                sub_8002CCC(0xFF, 0xFF);
            }
            else if(!GetFlag(0, 0xE8)) {
                sub_8002CCC(0xF7, 0xE8);
            }
            #ifndef NONMATCHING // !! This DmaCopy uses the wrong sizeof from the previous DmaCopy
                                // !! due to a copy paste error over on capcom's side,
                                // !! we have to explicitly write the macro by hand
            DmaCopy16(3, (gUnknown_080170DC), gExaminationData, sizeof(gUnknown_08017028));
            #else
            LOADEXAMDATA(gUnknown_080170DC);
            #endif
            break;
        }
    }
}

void sub_8004488(struct Main *main)
{
    if(main->currentRoomId == 2) {
        if(!GetFlag(0, 0xE9) && GetFlag(2, 0x6D) && GetFlag(2, 0x6E) && GetFlag(2, 0x6F)) {
            ChangeFlag(0, 0xE9, 1);
        }
    }
}
