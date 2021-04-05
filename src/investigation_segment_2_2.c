#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"

const struct Struct811DC98 gUnknown_08015F04[36] = {
	{
		.unk0 = 0x6,
		.unk1 = 0x17,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x88,
		.unk6 = 0x8C,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x33,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x89,
		.unk6 = 0x8C,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x34,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8A,
		.unk6 = 0x8C,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x35,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8A,
		.unk6 = 0x8C,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x37,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8B,
		.unk6 = 0x8C,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0x38,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8B,
		.unk6 = 0x8C,
	},
	{
		.unk0 = 0x6,
		.unk1 = 0xFF,
		.unk2 = 0x5,
		.unk3 = 0x0,
		.unk4 = 0x92,
		.unk6 = 0x92,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x37,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x98,
		.unk6 = 0x9B,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x38,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x98,
		.unk6 = 0x9B,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x34,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x99,
		.unk6 = 0x9B,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x35,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x99,
		.unk6 = 0x9B,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x33,
		.unk2 = 0x1B,
		.unk3 = 0x0,
		.unk4 = 0x9A,
		.unk6 = 0x9B,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x34,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0xAA,
		.unk6 = 0xAD,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x35,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0xAA,
		.unk6 = 0xAD,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x33,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0xAB,
		.unk6 = 0xAD,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x37,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0xAC,
		.unk6 = 0xAD,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x38,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0xAC,
		.unk6 = 0xAD,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x34,
		.unk2 = 0x11,
		.unk3 = 0x0,
		.unk4 = 0xB9,
		.unk6 = 0xBE,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x35,
		.unk2 = 0x11,
		.unk3 = 0x0,
		.unk4 = 0xB9,
		.unk6 = 0xBE,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x3A,
		.unk2 = 0x11,
		.unk3 = 0x0,
		.unk4 = 0xBA,
		.unk6 = 0xBE,
	},
	{
		.unk0 = 0x7,
		.unk1 = 0x33,
		.unk2 = 0x11,
		.unk3 = 0x0,
		.unk4 = 0xBB,
		.unk6 = 0xBE,
	},
	{
		.unk0 = 0x8,
		.unk1 = 0xFF,
		.unk2 = 0x1C,
		.unk3 = 0x0,
		.unk4 = 0xD3,
		.unk6 = 0xD3,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x34,
		.unk2 = 0x12,
		.unk3 = 0x0,
		.unk4 = 0xE7,
		.unk6 = 0xEA,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x35,
		.unk2 = 0x12,
		.unk3 = 0x0,
		.unk4 = 0xE7,
		.unk6 = 0xEA,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x3B,
		.unk2 = 0x12,
		.unk3 = 0x0,
		.unk4 = 0xE8,
		.unk6 = 0xEA,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x3C,
		.unk2 = 0x12,
		.unk3 = 0x0,
		.unk4 = 0xE9,
		.unk6 = 0xEA,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x3E,
		.unk2 = 0x1C,
		.unk3 = 0x0,
		.unk4 = 0xFD,
		.unk6 = 0x102,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x3F,
		.unk2 = 0x1C,
		.unk3 = 0x0,
		.unk4 = 0xFE,
		.unk6 = 0x102,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x34,
		.unk2 = 0x1C,
		.unk3 = 0x0,
		.unk4 = 0xFF,
		.unk6 = 0x102,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x35,
		.unk2 = 0x1C,
		.unk3 = 0x0,
		.unk4 = 0xFF,
		.unk6 = 0x102,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x37,
		.unk2 = 0x1C,
		.unk3 = 0x0,
		.unk4 = 0x100,
		.unk6 = 0x102,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x38,
		.unk2 = 0x1C,
		.unk3 = 0x0,
		.unk4 = 0x100,
		.unk6 = 0x102,
	},
	{
		.unk0 = 0x9,
		.unk1 = 0x40,
		.unk2 = 0x1C,
		.unk3 = 0x0,
		.unk4 = 0x101,
		.unk6 = 0x102,
	},
	{
		.unk0 = 0xD,
		.unk1 = 0x3C,
		.unk2 = 0x18,
		.unk3 = 0x0,
		.unk4 = 0x141,
		.unk6 = 0x142,
	},
	{
		.unk0 = 0xD,
		.unk1 = 0x3E,
		.unk2 = 0x10,
		.unk3 = 0x0,
		.unk4 = 0x14A,
		.unk6 = 0x149,
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
const struct TalkData gUnknown_08016024[18] = {
	{
		.roomId = 0x6,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x20, 0x21, 0xFF, 0xFF },
		.talkFlagId = { 0x4A, 0x4B, 0xFF, 0xFF },
		.talkSection = { 0x86, 0x87, 0x0, 0x0 }
	},
	{
		.roomId = 0x6,
		.personId = 0x5,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x20, 0x21, 0xFF, 0xFF },
		.talkFlagId = { 0x4C, 0x4D, 0xFF, 0xFF },
		.talkSection = { 0x90, 0x91, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x1B,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x34, 0x35, 0xFF, 0xFF },
		.talkFlagId = { 0x4E, 0x4F, 0xFF, 0xFF },
		.talkSection = { 0x97, 0x96, 0x0, 0x0 }
	},
	{
		.roomId = 0x7,
		.personId = 0x10,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x28, 0x34, 0x36, 0xFF },
		.talkFlagId = { 0x50, 0x51, 0x52, 0xFF },
		.talkSection = { 0xA7, 0xA8, 0xA9, 0x0 }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x34, 0x36, 0xFF, 0xFF },
		.talkFlagId = { 0x53, 0x54, 0xFF, 0xFF },
		.talkSection = { 0xB0, 0xB1, 0x0, 0x0 }
	},
	{
		.roomId = 0x7,
		.personId = 0x11,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x34, 0x36, 0x46, 0xFF },
		.talkFlagId = { 0x55, 0x56, 0x57, 0xFF },
		.talkSection = { 0xB6, 0xB7, 0xB8, 0x0 }
	},
	{
		.roomId = 0x8,
		.personId = 0x1C,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x37, 0x24, 0xFF, 0xFF },
		.talkFlagId = { 0x58, 0x59, 0xFF, 0xFF },
		.talkSection = { 0xD0, 0xD1, 0x0, 0x0 }
	},
	{
		.roomId = 0x8,
		.personId = 0x1C,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x24, 0x23, 0xFF, 0xFF },
		.talkFlagId = { 0x59, 0x5A, 0xFF, 0xFF },
		.talkSection = { 0xD1, 0xD2, 0x0, 0x0 }
	},
	{
		.roomId = 0x9,
		.personId = 0x12,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x32, 0xFF, 0xFF, 0xFF },
		.talkFlagId = { 0x5B, 0xFF, 0xFF, 0xFF },
		.talkSection = { 0xE5, 0x0, 0x0, 0x0 }
	},
	{
		.roomId = 0x9,
		.personId = 0x12,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x32, 0x38, 0x39, 0xFF },
		.talkFlagId = { 0x5B, 0x5C, 0x5D, 0xFF },
		.talkSection = { 0xE5, 0xE4, 0xE6, 0x0 }
	},
	{
		.roomId = 0x9,
		.personId = 0x1C,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x24, 0x23, 0xFF, 0xFF },
		.talkFlagId = { 0x5E, 0x5F, 0xFF, 0xFF },
		.talkSection = { 0xF0, 0xEF, 0x0, 0x0 }
	},
	{
		.roomId = 0x9,
		.personId = 0x1C,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x24, 0x23, 0xFF, 0xFF },
		.talkFlagId = { 0x60, 0x62, 0xFF, 0xFF },
		.talkSection = { 0xF2, 0xF1, 0x0, 0x0 }
	},
	{
		.roomId = 0x9,
		.personId = 0x1C,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x24, 0x23, 0x3A, 0xFF },
		.talkFlagId = { 0x60, 0x62, 0x61, 0xFF },
		.talkSection = { 0xF8, 0xF1, 0xF9, 0x0 }
	},
	{
		.roomId = 0xD,
		.personId = 0x18,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x32, 0x24, 0x35, 0xFF },
		.talkFlagId = { 0x63, 0x64, 0x65, 0xFF },
		.talkSection = { 0x13D, 0x13E, 0x13F, 0x0 }
	},
	{
		.roomId = 0xD,
		.personId = 0x18,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x32, 0x24, 0x35, 0x3B },
		.talkFlagId = { 0x63, 0x64, 0x65, 0x66 },
		.talkSection = { 0x13D, 0x13E, 0x13F, 0x140 }
	},
	{
		.roomId = 0xD,
		.personId = 0x10,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x34, 0x3C, 0xFF, 0xFF },
		.talkFlagId = { 0x67, 0x68, 0xFF, 0xFF },
		.talkSection = { 0x146, 0x147, 0x0, 0x0 }
	},
	{
		.roomId = 0xD,
		.personId = 0x10,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x34, 0x3C, 0x47, 0xFF },
		.talkFlagId = { 0x67, 0x68, 0x69, 0xFF },
		.talkSection = { 0x146, 0x147, 0x148, 0x0 }
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
const u8 gUnknown_0801618C[14][8] = {
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
	{ 0x0B, 0xFF, 0xFF, 0xFF, 0x07, 0x0B, 0x0C, 0xFF},
	{ 0x1A, 0xFF, 0xFF, 0xFF, 0x0A, 0xFF, 0xFF, 0xFF},
	{ 0x2C, 0xFF, 0xFF, 0xFF, 0x0A, 0xFF, 0xFF, 0xFF},
	{ 0x13, 0xFF, 0xFF, 0xFF, 0x0C, 0xFF, 0xFF, 0xFF},
};

// exam data
const struct ExaminationData gUnknown_080161FC[5] = {
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

const struct ExaminationData gUnknown_08016260[5] = {
	{
		.examinationSection = 0x8E,
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
		.examinationSection = 0x8F,
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

const struct ExaminationData gUnknown_080162C4[2] = {
	{
		.examinationSection = 0x95,
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
		.examinationSection = 0x94,
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

const struct ExaminationData gUnknown_080162EC[5] = {
	{
		.examinationSection = 0xA0,
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
		.examinationSection = 0x9F,
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
		.examinationSection = 0xA3,
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
		.examinationSection = 0xA1,
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
		.examinationSection = 0xA2,
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

const struct ExaminationData gUnknown_08016350[5] = {
	{
		.examinationSection = 0xA0,
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
		.examinationSection = 0x9F,
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
		.examinationSection = 0xA4,
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
		.examinationSection = 0xA1,
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
		.examinationSection = 0xA2,
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

const struct ExaminationData gUnknown_080163B4[10] = {
	{
		.examinationSection = 0xC0,
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
		.examinationSection = 0xC2,
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
		.examinationSection = 0xC1,
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
		.examinationSection = 0xC3,
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
		.examinationSection = 0xC4,
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
		.examinationSection = 0xC5,
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
		.examinationSection = 0xC6,
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
		.examinationSection = 0xCA,
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
		.examinationSection = 0xCB,
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
		.examinationSection = 0xCC,
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

const struct ExaminationData gUnknown_0801647C[10] = {
	{
		.examinationSection = 0xD5,
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
		.examinationSection = 0xD6,
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
		.examinationSection = 0xC1,
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
		.examinationSection = 0xC3,
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
		.examinationSection = 0xD7,
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
		.examinationSection = 0xD8,
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
		.examinationSection = 0xC6,
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
		.examinationSection = 0xCA,
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
		.examinationSection = 0xCB,
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
		.examinationSection = 0xCC,
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

const struct ExaminationData gUnknown_08016544[7] = {
	{
		.examinationSection = 0xDE,
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
		.examinationSection = 0xDD,
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
		.examinationSection = 0xE0,
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
		.examinationSection = 0xDF,
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
		.examinationSection = 0xDB,
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
		.examinationSection = 0xDC,
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
		.examinationSection = 0xE1,
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

const struct ExaminationData gUnknown_080165D0[7] = {
	{
		.examinationSection = 0xED,
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
		.examinationSection = 0xEC,
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
		.examinationSection = 0xEE,
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
		.examinationSection = 0xDF,
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
		.examinationSection = 0xDB,
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
		.examinationSection = 0xDC,
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
		.examinationSection = 0xE1,
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

const struct ExaminationData gUnknown_0801665C[6] = {
	{
		.examinationSection = 0x107,
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
		.examinationSection = 0x109,
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
		.examinationSection = 0x104,
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
		.examinationSection = 0x108,
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
		.examinationSection = 0x105,
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
		.examinationSection = 0x106,
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

const struct ExaminationData gUnknown_080166D4[6] = {
	{
		.examinationSection = 0x107,
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
		.examinationSection = 0x109,
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
		.examinationSection = 0x104,
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
		.examinationSection = 0x10D,
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
		.examinationSection = 0x10B,
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
		.examinationSection = 0x10C,
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

const struct ExaminationData gUnknown_0801674C[6] = {
	{
		.examinationSection = 0x111,
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
		.examinationSection = 0x110,
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
		.examinationSection = 0x112,
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
		.examinationSection = 0x113,
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
		.examinationSection = 0x114,
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
		.examinationSection = 0x115,
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

const struct ExaminationData gUnknown_080167C4[6] = {
	{
		.examinationSection = 0x119,
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
		.examinationSection = 0x118,
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
		.examinationSection = 0x11A,
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
		.examinationSection = 0x11B,
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
		.examinationSection = 0x11C,
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
		.examinationSection = 0x11D,
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

const struct ExaminationData gUnknown_0801683C[9] = {
	{
		.examinationSection = 0x11F,
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
		.examinationSection = 0x120,
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
		.examinationSection = 0x121,
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
		.examinationSection = 0x121,
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
		.examinationSection = 0x122,
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
		.examinationSection = 0x125,
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
		.examinationSection = 0x126,
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
		.examinationSection = 0x124,
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
		.examinationSection = 0x123,
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

const struct ExaminationData gUnknown_080168F0[9] = {
	{
		.examinationSection = 0x12C,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 16, .y = 53 },
			[1] = { .x = 107, .y = 60 },
			[2] = { .x = 112, .y = 103 },
			[3] = { .x = 11, .y = 110 },
		}}
	},
	{
		.examinationSection = 0x12D,
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
		.examinationSection = 0x12E,
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
		.examinationSection = 0x12E,
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
		.examinationSection = 0x12F,
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
		.examinationSection = 0x132,
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
		.examinationSection = 0x133,
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
		.examinationSection = 0x131,
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
		.examinationSection = 0x130,
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

const struct ExaminationData gUnknown_080169A4[7] = {
	{
		.examinationSection = 0x13A,
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
		.examinationSection = 0x13C,
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
		.examinationSection = 0x136,
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
		.examinationSection = 0x137,
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
		.examinationSection = 0x138,
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
		.examinationSection = 0x139,
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
		.examinationSection = 0x13B,
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

const struct ExaminationData gUnknown_08016A30[7] = {
	{
		.examinationSection = 0x13A,
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
		.examinationSection = 0x13C,
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
		.examinationSection = 0x136,
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
		.examinationSection = 0x144,
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
		.examinationSection = 0x145,
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
		.examinationSection = 0x139,
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
		.examinationSection = 0x13B,
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

void sub_8003924(struct Main *main)
{
    DmaCopy16(3, gUnknown_0801618C, gMain.roomData, sizeof(gUnknown_0801618C));
    DmaCopy16(3, gUnknown_08016024, gTalkData, sizeof(gUnknown_08016024));
    main->currentRoomId = 6;
}

void sub_8003968(struct Main *main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xCA)) {
                if(!GetFlag(0, 0xCC)) {
                    sub_8002CCC(0x8D, 0xCC);
                }
                else {
                    sub_8002C98(5, 0, 0);
                    PlayBGM(0xC);
                }
                LOADEXAMDATA(gUnknown_08016260);
            }
            else {
                if(GetFlag(0, 0xB0)) {
                    sub_8002C98(4, 0x510, 0x510);
                    PlayBGM(6);
                }
                LOADEXAMDATA(gUnknown_080161FC);
            }
            break;
        }
        case 2: {
            if(GetFlag(0, 0xCC)) {
                if(!GetFlag(0, 0xD9)) {
                    sub_8002CCC(0x9C, 0xD9);
                }
            }
            else if(!GetFlag(0, 0xB1)) {
                sub_8002CCC(0x93, 0xB1);
            }
            else {
                sub_8002C98(0x1B, 0, 0);
                PlayBGM(0);
            }
            LOADEXAMDATA(gUnknown_080162C4);
            break;
        }
        case 7: {
            if(GetFlag(0, 0xCC)) {
                if(!GetFlag(0, 0xCD)) {
                    sub_8002CCC(0xB5, 0xCD);
                }
                else if(!GetFlag(0, 0xD0)) {
                    sub_8002C98(0x11, 0x820, 0x820);
                    PlayBGM(0xC);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_080162EC);
            }
            else if(GetFlag(0, 0xC1)) {
                if(!GetFlag(0, 0xC2)) {
                    sub_8002CCC(0xB3, 0xC2);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_08016350);
            }
            else if(GetFlag(0, 0xBB) && GetFlag(0, 0xBC)) {
                if(!GetFlag(0, 0xBD)) {
                    sub_8002CCC(0xAE, 0xBD);
                }
                else {
                    sub_8002C98(0x11, 0, 0);
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_080162EC);
            }
            else if(GetFlag(0, 0xB8)) {
                if(!GetFlag(0, 0xB9)) {
                    sub_8002CCC(0xA5, 0xB9);
                }
                else {
                    sub_8002C98(0x10, 0, 0);
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_080162EC);
            }
            else {
                if(!GetFlag(0, 0xB2)) {
                    sub_8002CCC(0x9E, 0xB2);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_080162EC);
            }
            break;
        }
        case 8: {
            if(GetFlag(0, 0xCC)) {
                if(!GetFlag(0, 0xCE)) {
                    sub_8002CCC(0xD4, 0xCE);
                }
                LOADEXAMDATA(gUnknown_0801647C);
            }
            else if(GetFlag(0, 0xBD)) {
                if(!GetFlag(0, 0xBE)) {
                    sub_8002CCC(0xCD, 0xBE);
                }
                else if(!GetFlag(0, 0xC1)) {
                    gMain.talkingAnimationOffset = 0;
                    gMain.idleAnimationOffset = 0;
                    PlayPersonAnimation(0x801C, 0, 0, 0);
                    gInvestigation.unk5 = 1;
                    sub_800B7A8(&gInvestigation, 0xF);
                    PlayBGM(0x15);
                }
                LOADEXAMDATA(gUnknown_080163B4);
            }
            else {
                if(!GetFlag(0, 0xB8)) {
                    PlayAnimation(0xE);
                }
                if(!GetFlag(0, 0xB3)) {
                    sub_8002CCC(0xBF, 0xB3);
                }
                LOADEXAMDATA(gUnknown_080163B4);
            }
            break;
        }
        case 9: {
            if(GetFlag(0, 0xCC)) {
                if(!GetFlag(0, 0xCF)) {
                    sub_8002CCC(0xEB, 0xCF);
                }
                else {
                    sub_8002C98(0x1C, 0, 0);
                    PlayBGM(0x15);
                }
                LOADEXAMDATA(gUnknown_080165D0);
            }
            else if(GetFlag(0, 0xBA)) {
                if(!GetFlag(0, 0xBB)) {
                    sub_8002CCC(0xE2, 0xBB);
                }
                else {
                    sub_8002C98(0x12, 0, 0);
                    PlayBGM(0x15);
                }
                LOADEXAMDATA(gUnknown_08016544);
            }
            else {
                if(!GetFlag(0, 0xB4)) {
                    sub_8002CCC(0xDA, 0xB4);
                }
                else {
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_08016544);
            }
            break;
        }
        case 10: {
            if(GetFlag(0, 0xCA)) {
                if(!GetFlag(0, 0xCB)) {
                    sub_8002CCC(0x10A, 0xCB);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_080166D4);
            }
            else {
                if(!GetFlag(0, 0xB5)) {
                    sub_8002CCC(0x103, 0xB5);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_0801665C);
            }
            break;
        }
        case 11: {
            if(GetFlag(0, 0xCC)) {
                LOADEXAMDATA(gUnknown_080167C4);
            }
            else {
                if(GetFlag(0, 0xC7)) {
                    if(!GetFlag(0, 0xC8)) {
                        sub_8002CCC(0x116, 0xC8);
                    }
                }
                else if(!GetFlag(0, 0xB6)) {
                    sub_8002CCC(0x10F, 0xB6);
                }
                LOADEXAMDATA(gUnknown_0801674C);
            }
            break;
        }
        case 12: {
            if(GetFlag(0, 0xCC)) {
                PlayBGM(0x1F);
                LOADEXAMDATA(gUnknown_080168F0);
            }
            else if(GetFlag(0, 0xB8)) {
                if(!GetFlag(0, 0xDA)) {
                    sub_8002CCC(0x128, 0xDA);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_0801683C);
            }
            else {
                if(!GetFlag(0, 0xB7)) {
                    sub_8002CCC(0x11E, 0xB7);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_0801683C);
            }
            break;
        }
        case 13: {
            if(GetFlag(0, 0xD3)) {
                if(!GetFlag(0, 0xD4)) {
                    sub_8002CCC(0x143, 0xD4);
                }
                else if(!GetFlag(0, 0xD1)) {
                    sub_8002C98(0x10, 0, 0);
                }
                LOADEXAMDATA(gUnknown_08016A30);
            }
            else if(GetFlag(0, 0xCC)) {
                LOADEXAMDATA(gUnknown_08016A30);
            }
            else {
                if(!GetFlag(0, 0xC5)) {
                    sub_8002CCC(0x134, 0xC5);
                }
                else if(!GetFlag(0, 0xCB)) {
                    sub_8002C98(0x18, 0, 0);
                }
                LOADEXAMDATA(gUnknown_080169A4);
            }
            break;
        }
    }
}

void nullsub_9(struct Main *main) {
}