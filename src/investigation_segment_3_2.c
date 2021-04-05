#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"

const struct Struct811DC98 gUnknown_080179BC[45] = {
	{
		.unk0 = 0x6,
		.unk1 = 0x17,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x89,
		.unk6 = 0x89,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x17,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8F,
		.unk6 = 0x95,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x57,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x90,
		.unk6 = 0x95,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x59,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x91,
		.unk6 = 0x95,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x5A,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x92,
		.unk6 = 0x95,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x5E,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x93,
		.unk6 = 0x95,
	},
	{
		.unk0 = 0x2,
		.unk1 = 0x5F,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x94,
		.unk6 = 0x95,
	},
	{
		.unk0 = 0x10,
		.unk1 = 0x55,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xA2,
		.unk6 = 0xDB,
	},
	{
		.unk0 = 0x10,
		.unk1 = 0x57,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xA3,
		.unk6 = 0xDB,
	},
	{
		.unk0 = 0x10,
		.unk1 = 0x5A,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xA4,
		.unk6 = 0xDB,
	},
	{
		.unk0 = 0x11,
		.unk1 = 0x62,
		.unk2 = 0x19,
		.unk3 = 0x0,
		.unk4 = 0xAB,
		.unk6 = 0xB6,
	},
	{
		.unk0 = 0x11,
		.unk1 = 0x5A,
		.unk2 = 0x19,
		.unk3 = 0x0,
		.unk4 = 0xAC,
		.unk6 = 0xB6,
	},
	{
		.unk0 = 0x11,
		.unk1 = 0x63,
		.unk2 = 0x19,
		.unk3 = 0x0,
		.unk4 = 0xAD,
		.unk6 = 0xB6,
	},
	{
		.unk0 = 0x11,
		.unk1 = 0x61,
		.unk2 = 0x19,
		.unk3 = 0x0,
		.unk4 = 0xAE,
		.unk6 = 0xB6,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x17,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC1,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x55,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC2,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x54,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC3,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x57,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC4,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x5E,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC5,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x5F,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC6,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x60,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC7,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x55,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xD7,
		.unk6 = 0xDB,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x57,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xA3,
		.unk6 = 0xDB,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x5A,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xA4,
		.unk6 = 0xDB,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x62,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xD9,
		.unk6 = 0xDB,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x63,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xD8,
		.unk6 = 0xDB,
	},
	{
		.unk0 = 0x12,
		.unk1 = 0x64,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xDA,
		.unk6 = 0xDB,
	},
	{
		.unk0 = 0x14,
		.unk1 = 0x17,
		.unk2 = 0x20,
		.unk3 = 0x0,
		.unk4 = 0xFF,
		.unk6 = 0xFE,
	},
	{
		.unk0 = 0x14,
		.unk1 = 0x5A,
		.unk2 = 0x20,
		.unk3 = 0x0,
		.unk4 = 0x103,
		.unk6 = 0xFE,
	},
	{
		.unk0 = 0x14,
		.unk1 = 0x65,
		.unk2 = 0x20,
		.unk3 = 0x0,
		.unk4 = 0x104,
		.unk6 = 0xFE,
	},
	{
		.unk0 = 0x14,
		.unk1 = 0x66,
		.unk2 = 0x20,
		.unk3 = 0x0,
		.unk4 = 0x105,
		.unk6 = 0xFE,
	},
	{
		.unk0 = 0x14,
		.unk1 = 0x57,
		.unk2 = 0x20,
		.unk3 = 0x0,
		.unk4 = 0x102,
		.unk6 = 0xFE,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x17,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC1,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x55,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC2,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x54,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC3,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x57,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC4,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x5E,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC5,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x5F,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC6,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x60,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xC7,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x62,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xE5,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x63,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xE6,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x64,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xE7,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xE,
		.unk1 = 0x65,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xEE,
		.unk6 = 0xC8,
	},
	{
		.unk0 = 0xF,
		.unk1 = 0x17,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x10D,
		.unk6 = 0x10D,
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
const struct TalkData gUnknown_08017B24[18] = {
	{
		.roomId = 0x6,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x48, 0x49, 0xFF, 0xFF },
		.talkFlagId = { 0xA5, 0xA6, 0xFF, 0xFF },
		.talkSection = { 0x87, 0x88, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x61, 0x62, 0xFF, 0xFF },
		.talkFlagId = { 0xA3, 0xA4, 0xFF, 0xFF },
		.talkSection = { 0x8D, 0x8E, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x48, 0x49, 0xFF, 0xFF },
		.talkFlagId = { 0xA7, 0xA8, 0xFF, 0xFF },
		.talkSection = { 0x97, 0x98, 0x0, 0x0 }
	},
	{
		.roomId = 0x10,
		.personId = 0x1F,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x63, 0x54, 0x64, 0xFF },
		.talkFlagId = { 0xA9, 0xAA, 0xAB, 0xFF },
		.talkSection = { 0x9C, 0x9D, 0x9E, 0x0 }
	},
	{
		.roomId = 0x11,
		.personId = 0x19,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x50, 0x65, 0xFF, 0xFF },
		.talkFlagId = { 0xAC, 0xAD, 0xFF, 0xFF },
		.talkSection = { 0xA8, 0xA9, 0x0, 0x0 }
	},
	{
		.roomId = 0x11,
		.personId = 0x19,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x50, 0x65, 0x66, 0xFF },
		.talkFlagId = { 0xAC, 0xAD, 0xAE, 0xFF },
		.talkSection = { 0xA8, 0xA9, 0xAA, 0x0 }
	},
	{
		.roomId = 0x12,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x5D, 0x67, 0x68, 0xFF },
		.talkFlagId = { 0xAF, 0xB0, 0xB1, 0xFF },
		.talkSection = { 0xBE, 0xBF, 0xC0, 0x0 }
	},
	{
		.roomId = 0x12,
		.personId = 0x1F,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4A, 0x54, 0xFF, 0xFF },
		.talkFlagId = { 0xB3, 0xB2, 0xFF, 0xFF },
		.talkSection = { 0xD5, 0xCA, 0x0, 0x0 }
	},
	{
		.roomId = 0x12,
		.personId = 0x1F,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4A, 0x69, 0xFF, 0xFF },
		.talkFlagId = { 0xB3, 0xB4, 0xFF, 0xFF },
		.talkSection = { 0xD5, 0xD6, 0x0, 0x0 }
	},
	{
		.roomId = 0x14,
		.personId = 0x20,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x6D, 0x6E, 0xFF, 0xFF },
		.talkFlagId = { 0xB5, 0xB6, 0xFF, 0xFF },
		.talkSection = { 0xFA, 0xFB, 0x0, 0x0 }
	},
	{
		.roomId = 0x14,
		.personId = 0x20,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x6D, 0x6E, 0x6F, 0xFF },
		.talkFlagId = { 0xB5, 0xB6, 0xB7, 0xFF },
		.talkSection = { 0xFA, 0xFB, 0xFC, 0x0 }
	},
	{
		.roomId = 0x14,
		.personId = 0x20,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x6D, 0x6E, 0x70, 0xFF },
		.talkFlagId = { 0xB5, 0xB6, 0xB8, 0xFF },
		.talkSection = { 0xFA, 0xFB, 0xFD, 0x0 }
	},
	{
		.roomId = 0x14,
		.personId = 0x20,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x6D, 0x6E, 0x6F, 0x70 },
		.talkFlagId = { 0xB5, 0xB6, 0xB7, 0xB8 },
		.talkSection = { 0xFA, 0xFB, 0xFC, 0xFD }
	},
	{
		.roomId = 0xE,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x6A, 0x54, 0xFF, 0xFF },
		.talkFlagId = { 0xB9, 0xBA, 0xFF, 0xFF },
		.talkSection = { 0xDE, 0xDF, 0x0, 0x0 }
	},
	{
		.roomId = 0xE,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x6A, 0x6B, 0xFF, 0xFF },
		.talkFlagId = { 0xB9, 0xBB, 0xFF, 0xFF },
		.talkSection = { 0xDE, 0xE0, 0x0, 0x0 }
	},
	{
		.roomId = 0xE,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x6C, 0x4D, 0xFF, 0xFF },
		.talkFlagId = { 0xBC, 0xBD, 0xFF, 0xFF },
		.talkSection = { 0xEB, 0xEC, 0x0, 0x0 }
	},
	{
		.roomId = 0xF,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x71, 0x72, 0x73, 0xFF },
		.talkFlagId = { 0xBE, 0xBF, 0xC0, 0xFF },
		.talkSection = { 0x10A, 0x10B, 0x10C, 0x0 }
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
const u8 gUnknown_08017C8C[21][8] = {
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
	{ 0x48, 0xFF, 0xFF, 0xFF, 0x10, 0x12, 0x13, 0xFF},
	{ 0x49, 0xFF, 0xFF, 0xFF, 0x11, 0xFF, 0xFF, 0xFF},
	{ 0x4D, 0xFF, 0xFF, 0xFF, 0x11, 0xFF, 0xFF, 0xFF},
	{ 0x4E, 0xFF, 0xFF, 0xFF, 0x13, 0xFF, 0xFF, 0xFF},
};

// exam data
const struct ExaminationData gUnknown_08017D34[5] = {
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

const struct ExaminationData gUnknown_08017D98[2] = {
	{
		.examinationSection = 0x8B,
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
		.examinationSection = 0x8C,
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

const struct ExaminationData gUnknown_08017DC0[4] = {
	{
		.examinationSection = 0x10E,
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
		.examinationSection = 0x10F,
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
		.examinationSection = 0x10F,
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

const struct ExaminationData gUnknown_08017E10[6] = {
	{
		.examinationSection = 0x110,
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
		.examinationSection = 0x110,
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
		.examinationSection = 0x111,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 31, .y = 90 },
			[1] = { .x = 49, .y = 90 },
			[2] = { .x = 49, .y = 98 },
			[3] = { .x = 31, .y = 98 },
		}}
	},
	{
		.examinationSection = 0x114,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 107 },
			[1] = { .x = 21, .y = 107 },
			[2] = { .x = 21, .y = 125 },
			[3] = { .x = 0, .y = 125 },
		}}
	},
	{
		.examinationSection = 0x112,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 0, .y = 77 },
			[1] = { .x = 178, .y = 77 },
			[2] = { .x = 178, .y = 89 },
			[3] = { .x = 0, .y = 89 },
		}}
	},
	{
		.examinationSection = 0x113,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 148, .y = 41 },
			[1] = { .x = 224, .y = 37 },
			[2] = { .x = 224, .y = 139 },
			[3] = { .x = 170, .y = 113 },
		}}
	},
};

const struct ExaminationData gUnknown_08017E88[11] = {
	{
		.examinationSection = 0x115,
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
		.examinationSection = 0x115,
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
		.examinationSection = 0x114,
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
		.examinationSection = 0x111,
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
		.examinationSection = 0x118,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 35, .y = 30 },
			[1] = { .x = 102, .y = 40 },
			[2] = { .x = 102, .y = 41 },
			[3] = { .x = 35, .y = 31 },
		}}
	},
	{
		.examinationSection = 0x118,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 121, .y = 42 },
			[1] = { .x = 216, .y = 0 },
			[2] = { .x = 216, .y = 23 },
			[3] = { .x = 121, .y = 43 },
		}}
	},
	{
		.examinationSection = 0x11A,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 139, .y = 103 },
			[1] = { .x = 151, .y = 103 },
			[2] = { .x = 151, .y = 106 },
			[3] = { .x = 139, .y = 106 },
		}}
	},
	{
		.examinationSection = 0x119,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 95, .y = 18 },
			[1] = { .x = 152, .y = 24 },
			[2] = { .x = 137, .y = 101 },
			[3] = { .x = 102, .y = 101 },
		}}
	},
	{
		.examinationSection = 0x119,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 60, .y = 0 },
			[1] = { .x = 80, .y = 0 },
			[2] = { .x = 92, .y = 39 },
			[3] = { .x = 79, .y = 47 },
		}}
	},
	{
		.examinationSection = 0x116,
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
		.examinationSection = 0x117,
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

const struct ExaminationData gUnknown_08017F64[7] = {
	{
		.examinationSection = 0x11B,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 140, .y = 79 },
			[1] = { .x = 178, .y = 79 },
			[2] = { .x = 196, .y = 132 },
			[3] = { .x = 136, .y = 132 },
		}}
	},
	{
		.examinationSection = 0x11B,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 134, .y = 47 },
			[1] = { .x = 179, .y = 72 },
			[2] = { .x = 179, .y = 73 },
			[3] = { .x = 134, .y = 48 },
		}}
	},
	{
		.examinationSection = 0x11C,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 291, .y = 76 },
			[1] = { .x = 307, .y = 76 },
			[2] = { .x = 307, .y = 86 },
			[3] = { .x = 291, .y = 86 },
		}}
	},
	{
		.examinationSection = 0x11D,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 348, .y = 72 },
			[1] = { .x = 426, .y = 65 },
			[2] = { .x = 426, .y = 95 },
			[3] = { .x = 338, .y = 95 },
		}}
	},
	{
		.examinationSection = 0x11E,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 260, .y = 126 },
			[1] = { .x = 354, .y = 126 },
			[2] = { .x = 368, .y = 144 },
			[3] = { .x = 251, .y = 144 },
		}}
	},
	{
		.examinationSection = 0x11F,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 397, .y = 116 },
			[1] = { .x = 435, .y = 124 },
			[2] = { .x = 435, .y = 133 },
			[3] = { .x = 394, .y = 126 },
		}}
	},
	{
		.examinationSection = 0x120,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 225, .y = 37 },
			[1] = { .x = 459, .y = 0 },
			[2] = { .x = 452, .y = 95 },
			[3] = { .x = 225, .y = 88 },
		}}
	},
};

const struct ExaminationData gUnknown_08017FF0[3] = {
	{
		.examinationSection = 0x123,
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
		.examinationSection = 0x124,
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
		.examinationSection = 0x125,
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

const struct ExaminationData gUnknown_0801802C[7] = {
	{
		.examinationSection = 0xF7,
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
		.examinationSection = 0xF9,
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
		.examinationSection = 0x128,
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
		.examinationSection = 0x129,
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
		.examinationSection = 0x12A,
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
		.examinationSection = 0x12B,
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
		.examinationSection = 0x127,
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

const struct ExaminationData gUnknown_080180B8[6] = {
	{
		.examinationSection = 0x12C,
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
		.examinationSection = 0x12D,
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
		.examinationSection = 0x131,
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
		.examinationSection = 0x132,
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
		.examinationSection = 0x132,
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
		.examinationSection = 0x133,
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

const struct ExaminationData gUnknown_08018130[4] = {
	{
		.examinationSection = 0x136,
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
		.examinationSection = 0x137,
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
		.examinationSection = 0x134,
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
		.examinationSection = 0x135,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 240, .y = 118 },
			[1] = { .x = 240, .y = 160 },
			[2] = { .x = 171, .y = 160 },
			[3] = { .x = 90, .y = 52 },
		}}
	},
};

const struct ExaminationData gUnknown_08018180[5] = {
	{
		.examinationSection = 0xF2,
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
		.examinationSection = 0xF3,
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
		.examinationSection = 0xF0,
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
		.examinationSection = 0xF1,
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
		.examinationSection = 0xF4,
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

void sub_80049F8(struct Main *main)
{
    DmaCopy16(3, gUnknown_08017C8C, gMain.roomData, sizeof(gUnknown_08017C8C));
    DmaCopy16(3, gUnknown_08017B24, gTalkData, sizeof(gUnknown_08017B24));
    main->currentRoomId = 2;
}

void sub_8004A3C(struct Main *main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xC3)) {
                if(!GetFlag(0, 0xC1)) {
                    sub_8002CCC(0x86, 0xC1);
                }
                else {
                    sub_8002C98(4, 0x510, 0x510);
                    PlayBGM(6);
                }
            }
            else if(!GetFlag(0, 0xC0)) {
                sub_8002CCC(0x80, 0xC0);
            }
            LOADEXAMDATA(gUnknown_08017D34);
            break;
        }
        case 2: {
            if(GetFlag(0, 0xC3)) {
                if(!GetFlag(0, 0xC4)) {
                    sub_8002CCC(0x99, 0xC4);
                }
            }
            else if(GetFlag(0, 0xC5)) {
                sub_8002CCC(0x96, 0xC3);
            }
            else if(!GetFlag(0, 0xC2)) {
                sub_8002CCC(0x8A, 0xC2);
            }
            else {
                sub_8002C98(4, 0x17B8, 0x17B8);
                PlayBGM(6);
            }
            LOADEXAMDATA(gUnknown_08017D98);
            break;
        }
        case 16: {
            if(GetFlag(0, 0xC3)) {
                if(!GetFlag(0, 0xC7)) {
                    sub_8002CCC(0x9B, 0xC7);
                }
                else if(!GetFlag(0, 0xC8)) {
                    sub_8002C98(0x1F, 0, 0);
                    PlayBGM(0x16);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(!GetFlag(0, 0xC6)) {
                sub_8002CCC(0x9A, 0xC6);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08017DC0);
            break;
        }
        case 17: {
            if(GetFlag(0, 0xC3)) {
                if(!GetFlag(0, 0xCA)) {
                    sub_8002CCC(0xA6, 0xCA);
                }
                else {
                    if(!GetFlag(0, 0xCB) && GetFlag(0, 0xD0)) {
                        sub_8002CCC(0xA7, 0xCB);
                    }
                    else {
                        sub_8002C98(0x19, 0x13B0, 0x13B0);
                    }
                    PlayBGM(0x15);
                }
                LOADEXAMDATA(gUnknown_08017E88);
            }
            else {
                if(!GetFlag(0, 0xC9)) {
                    sub_8002CCC(0xA5, 0xC9);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_08017E10);
            }
            break;
        }
        case 18: {
            if(GetFlag(0, 0xC8)) {
                if(!GetFlag(0, 0xF1) && GetFlag(0, 0xCF)) {
                    sub_8002CCC(0x138, 0xF1);
                }
                else if(!GetFlag(0, 0xD3)) {
                    sub_8002CCC(0xC9, 0xD3);
                }
                else if(!GetFlag(0, 0xD7)) {
                    sub_8002C98(0x401F, 0, 0);
                    PlayBGM(0x16);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(!GetFlag(0, 0xD2)) {
                sub_8002CCC(0xBC, 0xD2);
            }
            else if(!GetFlag(0, 0xC5)) {
                sub_8002C98(0x4014, 0, 0);
                PlayBGM(1);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08017F64);
            break;
        }
        case 19: {
            if(GetFlag(0, 0xDD)) {
                if(!GetFlag(0, 0xDB)) {
                    sub_8002CCC(0xBB, 0xDB);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(GetFlag(0, 0xD7)) {
                if(!GetFlag(0, 0xDA)) {
                    sub_8002CCC(0xBA, 0xDA);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(GetFlag(0, 0xC8)) {
                if(!GetFlag(0, 0xD9)) {
                    sub_8002CCC(0xB8, 0xD9);
                }
                else if(!GetFlag(0, 0xDC) && GetFlag(0, 0xD1)) {
                    sub_8002CCC(0xB9, 0xDC);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(!GetFlag(0, 0xD8)) {
                sub_8002CCC(0xB7, 0xD8);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08017FF0);
            break;
        }
        case 20: {
            if(!GetFlag(0, 0xE6)) {
                sub_8002CCC(0xF5, 0xE6);
            }
            else {
                if(GetFlag(0, 0xE7)) {
                    sub_8002C98(0x20, 0, 0);
                }
                else {
                    sub_8002C98(0x20, 0xAD0, 0xAD0);
                }
                PlayBGM(0x1A);
            }
            LOADEXAMDATA(gUnknown_0801802C);
            break;
        }
        case 14: {
            if(GetFlag(0, 0xDD)) {
                if(!GetFlag(0, 0xE1)) {
                    sub_8002CCC(0xE9, 0xE1);
                }
                else {
                    sub_8002C98(0x14, 0, 0);
                    PlayBGM(1);
                }
            }
            else if(GetFlag(0, 0xDC)) {
                if(!GetFlag(0, 0xE0)) {
                    sub_8002CCC(0xE8, 0xE0);
                }
            }
            else if(GetFlag(0, 0xC8)) {
                if(!GetFlag(0, 0xDF)) {
                    sub_8002CCC(0xDD, 0xDF);
                }
                else {
                    sub_8002C98(0x14, 0, 0);
                    ChangeFlag(2, 0xBB, 0);
                    if(GetFlag(0, 0xF2)) {
                        PlayBGM(0xC);
                    }
                    else {
                        PlayBGM(1);
                    }
                }
            }
            else if(!GetFlag(0, 0xDE)) {
                sub_8002CCC(0xDC, 0xDE);
            }
            LOADEXAMDATA(gUnknown_080180B8);
            break;
        }
        case 15: {
            if(!GetFlag(0, 0xEC)) {
                sub_8002CCC(0x108, 0xEC);
            }
            else {
                sub_8002C98(4, 0x510, 0x510);
                PlayBGM(0xC);
            }
            LOADEXAMDATA(gUnknown_08018130);
            break;
        }
        case 3: {
            if(!GetFlag(0, 0xE5)) {
                sub_8002CCC(0xEF, 0xE5);
            }
            LOADEXAMDATA(gUnknown_08018180);
            break;
        }
    }
}

void nullsub_11(struct Main *main) {
}