#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"
#include "constants/animation.h"

const u8 gCourtRecordInitialItems_3_0[6] = {
	0x0d, 0x0e, 0x0f, 0xfe,	// profiles
	0x17, 0xff		// evidence
};

const u8 gCourtRecordInitialItems_3_1[17] = {
	0x0d, 0x47, 0x0f, 0x4e, 0x48, 0x4a, 0x16, 0x4b, 0x4c, 0xfe,	// profiles
	0x17, 0x55, 0x53, 0x56, 0x59, 0x5a, 0xff			// evidence
};

const u8 gCourtRecordInitialItems_3_2[22] = {
	0x0d, 0x47, 0x0f, 0x4e, 0x49, 0x4a, 0x16, 0x4b, 0x4c, 0x4d, 0xfe,	// profiles
	0x17, 0x55, 0x54, 0x57, 0x59, 0x5a, 0x5c, 0x5e, 0x5f, 0x60, 0xff	// evidence
};

const u8 gCourtRecordInitialItems_3_3[28] = {
	0x0d, 0x47, 0x0f, 0x4e, 0x49, 0x4a, 0x16, 0x4b, 0x4c, 0x4d, 0x4f, 0xfe,				// profiles
	0x17, 0x55, 0x54, 0x57, 0x58, 0x59, 0x5a, 0x5c, 0x5e, 0x5f, 0x60, 0x64, 0x65, 0x67, 0x68, 0xff	// evidence
};

const u8 gCourtRecordInitialItems_3_4[28] = {
	0x0d, 0x47, 0x0f, 0x4e, 0x49, 0x4a, 0x16, 0x4b, 0x4c, 0x4d, 0x4f, 0xfe,				// profiles
	0x17, 0x55, 0x54, 0x57, 0x58, 0x59, 0x5a, 0x5c, 0x5e, 0x5f, 0x60, 0x64, 0x65, 0x67, 0x68, 0xff	// evidence
};

const u8 gCourtRecordInitialItems_3_5[27] = {
	0x0d, 0x47, 0x0f, 0x4e, 0x49, 0x4a, 0x16, 0x4b, 0x4c, 0x4d, 0x50, 0xfe,		// profiles
	0x17, 0x54, 0x57, 0x59,	0x5c, 0x5e, 0x5f, 0x64, 0x65, 0x67, 0x68, 0x6a, 0xff,	// evidence
	0x00, 0x00
};

const struct Struct811DC54 gUnknown_080171E8[11] = {
	{
		.scriptSection = 0xAE,
		.evidenceId = 0x56,
		.unk4 = 0xB2,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xB5,
		.evidenceId = 0x56,
		.unk4 = 0xBF,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xB5,
		.evidenceId = 0x55,
		.unk4 = 0xC0,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xD5,
		.evidenceId = 0x5A,
		.unk4 = 0xE1,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xD6,
		.evidenceId = 0x5A,
		.unk4 = 0xE1,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xD7,
		.evidenceId = 0x5A,
		.unk4 = 0xE1,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xC4,
		.evidenceId = 0x5A,
		.unk4 = 0xC7,
		.flagId = 0xFF,
		.unk7 = 0x0,
	},
	{
		.scriptSection = 0xCB,
		.evidenceId = 0x55,
		.unk4 = 0xCD,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xCB,
		.evidenceId = 0x5A,
		.unk4 = 0xCE,
		.flagId = 0xFF,
		.unk7 = 0x0,
	},
	{
		.scriptSection = 0xF0,
		.evidenceId = 0x5F,
		.unk4 = 0xF2,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xFFFF,
		.evidenceId = 0xFFFF,
		.unk4 = 0xFFFF,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
};

const struct Struct811DC54 gUnknown_08017240[3] = {
	{
		.scriptSection = 0xD2,
		.evidenceId = 0x61,
		.unk4 = 0xD4,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xCE,
		.evidenceId = 0x61,
		.unk4 = 0xD4,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xFFFF,
		.evidenceId = 0xFFFF,
		.unk4 = 0xFFFF,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
};

const struct Struct811DC54 gUnknown_08017258[8] = {
	{
		.scriptSection = 0xA0,
		.evidenceId = 0x60,
		.unk4 = 0xA9,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xB1,
		.evidenceId = 0x60,
		.unk4 = 0xBB,
		.flagId = 0xFF,
		.unk7 = 0x0,
	},
	{
		.scriptSection = 0xB1,
		.evidenceId = 0x57,
		.unk4 = 0xBC,
		.flagId = 0xFF,
		.unk7 = 0x0,
	},
	{
		.scriptSection = 0xC1,
		.evidenceId = 0x58,
		.unk4 = 0xC3,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xC1,
		.evidenceId = 0x5F,
		.unk4 = 0xC8,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xC4,
		.evidenceId = 0x5F,
		.unk4 = 0xC7,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xC9,
		.evidenceId = 0x58,
		.unk4 = 0xCC,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xFFFF,
		.evidenceId = 0xFFFF,
		.unk4 = 0xFFFF,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
};

const struct Struct811DC54 gUnknown_08017298[10] = {
	{
		.scriptSection = 0x9D,
		.evidenceId = 0x67,
		.unk4 = 0x9F,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xA6,
		.evidenceId = 0x67,
		.unk4 = 0xA8,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xB6,
		.evidenceId = 0x68,
		.unk4 = 0xC0,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xB6,
		.evidenceId = 0x67,
		.unk4 = 0xCB,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xC7,
		.evidenceId = 0x67,
		.unk4 = 0xC9,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xD2,
		.evidenceId = 0x68,
		.unk4 = 0xD4,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xE8,
		.evidenceId = 0x64,
		.unk4 = 0xEB,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xEC,
		.evidenceId = 0x6A,
		.unk4 = 0xEF,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xF2,
		.evidenceId = 0x6A,
		.unk4 = 0xF4,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
	{
		.scriptSection = 0xFFFF,
		.evidenceId = 0xFFFF,
		.unk4 = 0xFFFF,
		.flagId = 0xFF,
		.unk7 = 0xFF,
	},
};

const struct Struct811DC98 gUnknown_080172E8[25] = {
	{
		.roomId = 0x6,
		.evidenceId = 0x17,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x89,
		.unk6 = 0x8A,
	},
	{
		.roomId = 0x6,
		.evidenceId = 0x52,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8E,
		.unk6 = 0x8A,
	},
	{
		.roomId = 0x6,
		.evidenceId = 0x55,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x8F,
		.unk6 = 0x8A,
	},
	{
		.roomId = 0x6,
		.evidenceId = 0x59,
		.unk2 = 0x4,
		.unk3 = 0x0,
		.unk4 = 0x90,
		.unk6 = 0x8A,
	},
	{
		.roomId = 0x2,
		.evidenceId = 0x17,
		.unk2 = 0x9,
		.unk3 = 0x0,
		.unk4 = 0x97,
		.unk6 = 0x98,
	},
	{
		.roomId = 0x2,
		.evidenceId = 0x52,
		.unk2 = 0x9,
		.unk3 = 0x0,
		.unk4 = 0xA4,
		.unk6 = 0x98,
	},
	{
		.roomId = 0x2,
		.evidenceId = 0x53,
		.unk2 = 0x9,
		.unk3 = 0x0,
		.unk4 = 0xA4,
		.unk6 = 0x98,
	},
	{
		.roomId = 0x2,
		.evidenceId = 0x59,
		.unk2 = 0x9,
		.unk3 = 0x0,
		.unk4 = 0xA5,
		.unk6 = 0x98,
	},
	{
		.roomId = 0x2,
		.evidenceId = 0x56,
		.unk2 = 0x9,
		.unk3 = 0x0,
		.unk4 = 0xA6,
		.unk6 = 0x98,
	},
	{
		.roomId = 0x10,
		.evidenceId = 0x17,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xB1,
		.unk6 = 0xB2,
	},
	{
		.roomId = 0x11,
		.evidenceId = 0x17,
		.unk2 = 0x19,
		.unk3 = 0x0,
		.unk4 = 0xBD,
		.unk6 = 0xC1,
	},
	{
		.roomId = 0x11,
		.evidenceId = 0x52,
		.unk2 = 0x19,
		.unk3 = 0x0,
		.unk4 = 0xBE,
		.unk6 = 0xC1,
	},
	{
		.roomId = 0x11,
		.evidenceId = 0x53,
		.unk2 = 0x19,
		.unk3 = 0x0,
		.unk4 = 0xBE,
		.unk6 = 0xC1,
	},
	{
		.roomId = 0x11,
		.evidenceId = 0x56,
		.unk2 = 0x19,
		.unk3 = 0x0,
		.unk4 = 0xBF,
		.unk6 = 0xC1,
	},
	{
		.roomId = 0x11,
		.evidenceId = 0x55,
		.unk2 = 0x19,
		.unk3 = 0x0,
		.unk4 = 0xC0,
		.unk6 = 0xC1,
	},
	{
		.roomId = 0x12,
		.evidenceId = 0x17,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xCD,
		.unk6 = 0xD0,
	},
	{
		.roomId = 0x12,
		.evidenceId = 0x55,
		.unk2 = 0x1F,
		.unk3 = 0x0,
		.unk4 = 0xCF,
		.unk6 = 0xD0,
	},
	{
		.roomId = 0xE,
		.evidenceId = 0x52,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xDC,
		.unk6 = 0xDD,
	},
	{
		.roomId = 0xE,
		.evidenceId = 0x5B,
		.unk2 = 0x14,
		.unk3 = 0x0,
		.unk4 = 0xE3,
		.unk6 = 0xE4,
	},
	{
		.roomId = 0x3,
		.evidenceId = 0x17,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xF0,
		.unk6 = 0xF5,
	},
	{
		.roomId = 0x3,
		.evidenceId = 0x52,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xF1,
		.unk6 = 0xF5,
	},
	{
		.roomId = 0x3,
		.evidenceId = 0x59,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xF2,
		.unk6 = 0xF5,
	},
	{
		.roomId = 0x3,
		.evidenceId = 0x56,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xF3,
		.unk6 = 0xF5,
	},
	{
		.roomId = 0x3,
		.evidenceId = 0x55,
		.unk2 = 0xC,
		.unk3 = 0x0,
		.unk4 = 0xF4,
		.unk6 = 0xF5,
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
const struct TalkData gTalkData_3_0[24] = {
	{
		.roomId = 0x6,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x48, 0x49, 0xFF, 0xFF },
		.talkFlagId = { 0x7F, 0x80, 0xFF, 0xFF },
		.talkSection = { 0x87, 0x88, 0x0, 0x0 }
	},
	{
		.roomId = 0x6,
		.personId = 0x4,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x48, 0x49, 0xFF, 0xFF },
		.talkFlagId = { 0x81, 0x82, 0xFF, 0xFF },
		.talkSection = { 0x8C, 0x8D, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x9,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x4A, 0x4B, 0xFF, 0xFF },
		.talkFlagId = { 0x83, 0x84, 0xFF, 0xFF },
		.talkSection = { 0x94, 0x95, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x9,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4A, 0x4B, 0x4C, 0xFF },
		.talkFlagId = { 0x83, 0x84, 0x85, 0xFF },
		.talkSection = { 0x94, 0x95, 0x96, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x9,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4A, 0x4B, 0xFF, 0xFF },
		.talkFlagId = { 0x86, 0x87, 0xFF, 0xFF },
		.talkSection = { 0x9E, 0x9F, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x9,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4D, 0xFF, 0xFF, 0xFF },
		.talkFlagId = { 0x88, 0xFF, 0xFF, 0xFF },
		.talkSection = { 0xA0, 0x0, 0x0, 0x0 }
	},
	{
		.roomId = 0x2,
		.personId = 0x9,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4D, 0x4E, 0x4F, 0xFF },
		.talkFlagId = { 0x88, 0x89, 0x8A, 0xFF },
		.talkSection = { 0xA0, 0xA1, 0xA2, 0x0 }
	},
	{
		.roomId = 0x10,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x4A, 0x50, 0x51, 0xFF },
		.talkFlagId = { 0x8B, 0x8C, 0x8D, 0xFF },
		.talkSection = { 0xAC, 0xAE, 0xAF, 0x0 }
	},
	{
		.roomId = 0x10,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4A, 0x50, 0x51, 0x52 },
		.talkFlagId = { 0x8B, 0x8C, 0x8D, 0x8E },
		.talkSection = { 0xAC, 0xAE, 0xAF, 0xAD }
	},
	{
		.roomId = 0x11,
		.personId = 0x19,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x4A, 0x53, 0xFF, 0xFF },
		.talkFlagId = { 0x8F, 0x90, 0xFF, 0xFF },
		.talkSection = { 0xB8, 0xB9, 0x0, 0x0 }
	},
	{
		.roomId = 0x11,
		.personId = 0x19,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4A, 0x53, 0x50, 0xFF },
		.talkFlagId = { 0x8F, 0x90, 0x91, 0xFF },
		.talkSection = { 0xB8, 0xB9, 0xBC, 0x0 }
	},
	{
		.roomId = 0x11,
		.personId = 0x19,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4A, 0x53, 0x54, 0xFF },
		.talkFlagId = { 0x8F, 0x90, 0x92, 0xFF },
		.talkSection = { 0xB8, 0xB9, 0xBA, 0x0 }
	},
	{
		.roomId = 0x11,
		.personId = 0x19,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4A, 0x53, 0x50, 0x54 },
		.talkFlagId = { 0x8F, 0x90, 0x91, 0x92 },
		.talkSection = { 0xB8, 0xB9, 0xBC, 0xBA }
	},
	{
		.roomId = 0x12,
		.personId = 0x1F,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x4A, 0x55, 0xFF, 0xFF },
		.talkFlagId = { 0x93, 0x94, 0xFF, 0xFF },
		.talkSection = { 0xC8, 0xC8, 0x0, 0x0 }
	},
	{
		.roomId = 0x12,
		.personId = 0x1F,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4A, 0x56, 0xFF, 0xFF },
		.talkFlagId = { 0x95, 0x97, 0xFF, 0xFF },
		.talkSection = { 0xC9, 0xCC, 0x0, 0x0 }
	},
	{
		.roomId = 0x12,
		.personId = 0x1F,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x4A, 0x56, 0x57, 0xFF },
		.talkFlagId = { 0x95, 0x97, 0x96, 0xFF },
		.talkSection = { 0xC9, 0xCC, 0xCA, 0x0 }
	},
	{
		.roomId = 0xE,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x58, 0x59, 0xFF, 0xFF },
		.talkFlagId = { 0x98, 0x99, 0xFF, 0xFF },
		.talkSection = { 0xD7, 0xD8, 0x0, 0x0 }
	},
	{
		.roomId = 0xE,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x58, 0x59, 0x5A, 0xFF },
		.talkFlagId = { 0x98, 0x99, 0x9A, 0xFF },
		.talkSection = { 0xD7, 0xD8, 0xD9, 0x0 }
	},
	{
		.roomId = 0xE,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x58, 0x59, 0x5A, 0x5B },
		.talkFlagId = { 0x98, 0x99, 0x9A, 0x9B },
		.talkSection = { 0xD7, 0xD8, 0xD9, 0xDA }
	},
	{
		.roomId = 0xE,
		.personId = 0x14,
		.unk2 = 0xFF,
		.enableFlag = 0x0,
		.iconId = { 0x5C, 0x5D, 0x50, 0xFF },
		.talkFlagId = { 0xA0, 0xA1, 0xA2, 0xFF },
		.talkSection = { 0xE0, 0xE1, 0xE2, 0x0 }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x4A, 0x5E, 0xFF, 0xFF },
		.talkFlagId = { 0x9C, 0x9D, 0xFF, 0xFF },
		.talkSection = { 0xEC, 0xED, 0x0, 0x0 }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x4A, 0x5E, 0x5F, 0xFF },
		.talkFlagId = { 0x9C, 0x9D, 0x9E, 0xFF },
		.talkSection = { 0xEC, 0xED, 0xEE, 0x0 }
	},
	{
		.roomId = 0x3,
		.personId = 0xC,
		.unk2 = 0xFF,
		.enableFlag = 0x1,
		.iconId = { 0x4A, 0x5E, 0x5F, 0x4D },
		.talkFlagId = { 0x9C, 0x9D, 0x9E, 0x9F },
		.talkSection = { 0xEC, 0xED, 0xEE, 0xEF }
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
const u8 gRoomData_3_0[21][8] = {
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x1E, 0xFF, 0xFF, 0xFF, 0x06, 0x10, 0xFF, 0xFF},
	{ 0x28, 0xFF, 0xFF, 0xFF, 0x06, 0x02, 0xFF, 0xFF},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x01, 0xFF, 0xFF, 0xFF, 0x02, 0x10, 0xFF, 0xFF},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{ 0x4F, 0xFF, 0xFF, 0xFF, 0x06, 0x02, 0x10, 0xFF},
	{ 0x50, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF},
	{ 0x46, 0xFF, 0xFF, 0xFF, 0x06, 0x02, 0xFF, 0xFF},
	{ 0x48, 0xFF, 0xFF, 0xFF, 0x10, 0x12, 0x13, 0xFF},
	{ 0x49, 0xFF, 0xFF, 0xFF, 0x11, 0xFF, 0xFF, 0xFF},
	{ 0x4D, 0xFF, 0xFF, 0xFF, 0x11, 0xFF, 0xFF, 0xFF},
	{ 0x4E, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF},
};

// exam data
const struct ExaminationData gUnknown_08017638[5] = {
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

const struct ExaminationData gUnknown_0801769C[2] = {
	{
		.examinationSection = 0x92,
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
		.examinationSection = 0x93,
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

const struct ExaminationData gUnknown_080176C4[4] = {
	{
		.examinationSection = 0xF6,
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
		.examinationSection = 0xF7,
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
		.examinationSection = 0xF7,
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

const struct ExaminationData gUnknown_08017714[7] = {
	{
		.examinationSection = 0xF8,
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
		.examinationSection = 0xF8,
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
		.examinationSection = 0xFB,
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
		.examinationSection = 0xF9,
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
		.examinationSection = 0xFD,
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
		.examinationSection = 0xFA,
		.unk2 = 0x0,
		.unk3 = 0xFF,
		.area = { .points = {
			[0] = { .x = 169, .y = 42 },
			[1] = { .x = 240, .y = 29 },
			[2] = { .x = 240, .y = 134 },
			[3] = { .x = 181, .y = 112 },
		}}
	},
	{
		.examinationSection = 0xB4,
		.unk2 = 0xFE,
		.unk3 = 0x10,
		.area = { .points = {
			[0] = { .x = 0, .y = 0 },
			[1] = { .x = 0, .y = 0 },
			[2] = { .x = 0, .y = 0 },
			[3] = { .x = 0, .y = 0 },
		}}
	},
};

const struct ExaminationData gUnknown_080177A0[6] = {
	{
		.examinationSection = 0xFC,
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
		.examinationSection = 0xFC,
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
		.examinationSection = 0xFB,
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
		.examinationSection = 0xF9,
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
		.examinationSection = 0xFD,
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
		.examinationSection = 0xFE,
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

const struct ExaminationData gUnknown_08017818[7] = {
	{
		.examinationSection = 0xC5,
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
		.examinationSection = 0xC5,
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
		.examinationSection = 0x100,
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
		.examinationSection = 0x101,
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
		.examinationSection = 0x102,
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
		.examinationSection = 0x103,
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
		.examinationSection = 0x104,
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

const struct ExaminationData gUnknown_080178A4[3] = {
	{
		.examinationSection = 0x105,
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
		.examinationSection = 0x106,
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
		.examinationSection = 0x107,
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

const struct ExaminationData gUnknown_080178E0[6] = {
	{
		.examinationSection = 0x108,
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
		.examinationSection = 0x109,
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
		.examinationSection = 0x10A,
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
		.examinationSection = 0x10B,
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
		.examinationSection = 0x10B,
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
		.examinationSection = 0x10C,
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

const struct ExaminationData gUnknown_08017958[5] = {
	{
		.examinationSection = 0xE8,
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
		.examinationSection = 0xE9,
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
		.examinationSection = 0xE6,
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
		.examinationSection = 0xE7,
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
		.examinationSection = 0xEA,
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

void InvestigationSegmentSetup_3_0(struct Main *main)
{
    DmaCopy16(3, gRoomData_3_0, gMain.roomData, sizeof(gRoomData_3_0));
    DmaCopy16(3, gTalkData_3_0, gTalkData, sizeof(gTalkData_3_0));
    main->currentRoomId = 6;
}

void InvestigationRoomSetup_3_0(struct Main *main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xA2)) {
                if(!GetFlag(0, 0xA7)) {
                    InvestigationSetScriptSectionAndFlag(0x8B, 0xA7);
                }
                else {
                    InvestigationSetPersonAnimation(4, 0x510, 0x510);
                    PlayBGM(6);
                }
            }
            else if(GetFlag(0, 0x9F)) {
                InvestigationSetPersonAnimation(4, 0x510, 0x510);
                PlayBGM(6);
            }
            LOADEXAMDATA(gUnknown_08017638);
            break;
        }
        case 2: {
            if(GetFlag(0, 0xB1)) {
                if(!GetFlag(0, 0xB2)) {
                    InvestigationSetScriptSectionAndFlag(0x99, 0xB2);
                }
                else {
                    if(!GetFlag(0, 0xB9)) {
                        InvestigationSetPersonAnimation(9, 0x55D0, 0x55D0);
                    }
                    PlayBGM(0);
                }
            }
            else if(!GetFlag(0, 0x90)) {
                InvestigationSetScriptSectionAndFlag(0x91, 0x90);
            }
            else {
                if(!GetFlag(2, 0x85)) {
                    InvestigationSetPersonAnimation(9, 0x55D0, 0x55D0);
                }
                PlayBGM(0);
            }
            LOADEXAMDATA(gUnknown_0801769C);
            break;
        }
        case 16: {
            if(!GetFlag(0, 0x94)) {
                InvestigationSetScriptSectionAndFlag(0xA7, 0x94);
            }
            else if(!GetFlag(0, 0x98)) {
                InvestigationSetPersonAnimation(0x14, 0, 0);
                if(GetFlag(2, 0x8B) && GetFlag(2, 0x8C) && GetFlag(2, 0x8D) && GetFlag(2, 0x8E) && GetFlag(0, 0x91)) {
                    InvestigationSetScriptSectionAndFlag(0xA8, 0x98);
                }
                PlayBGM(1);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_080176C4);
            break;
        }
        case 17: {
            if(GetFlag(0, 0xA8)) {
                if(!GetFlag(0, 0xA9)) {
                    InvestigationSetScriptSectionAndFlag(0xB7, 0xA9);
                }
                else {
                    InvestigationSetPersonAnimation(0x19, 0x3F70, 0x3F70);
                    PlayBGM(0x16);
                }
                LOADEXAMDATA(gUnknown_080177A0);
            }
            else {
                if(!GetFlag(0, 0x99)) {
                    InvestigationSetScriptSectionAndFlag(0xB3, 0x99);
                }
                else {
                    PlayBGM(0x1F);
                }
                if(!GetFlag(0, 0xA0)) {
                    PlayAnimation(ANIM_PARTY_POPPERS);
                }
                LOADEXAMDATA(gUnknown_08017714);
            }
            break;
        }
        case 18: {
            if(GetFlag(0, 0xA2)) {
                if(!GetFlag(0, 0xA8)) {
                    InvestigationSetScriptSectionAndFlag(0xD1, 0xA8);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(!GetFlag(0, 0x9A)) {
                InvestigationSetScriptSectionAndFlag(0xC3, 0x9A);
            }
            else if(GetFlag(0, 0xA1) && !GetFlag(0, 0x9E)) {
                if(GetFlag(0, 0x9C)) {
                    InvestigationSetPersonAnimation(0x1F, 0, 0);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0xB94, 0xB94);
                }
                PlayBGM(0x16);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08017818);
            break;
        }
        case 19: {
            if(!GetFlag(0, 0xA4)) {
                InvestigationSetScriptSectionAndFlag(0xC2, 0xA4);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_080178A4);
            break;
        }
        case 14: {
            if(GetFlag(0, 0xB1)) {
                if(!GetFlag(0, 0xB7)) {
                    InvestigationSetScriptSectionAndFlag(0xDF, 0xB7);
                }
                else {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                    PlayBGM(1);
                }
            }
            else if(GetFlag(0, 0xA8)) {
                if(!GetFlag(0, 0xAE)) {
                    InvestigationSetScriptSectionAndFlag(0xDE, 0xAE);
                }
                else {
                    PlayBGM(1);
                }
            }
            else if(GetFlag(0, 0x9E)) {
                if(!GetFlag(0, 0xA6)) {
                    InvestigationSetScriptSectionAndFlag(0xD6, 0xA6);
                }
                else {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                    PlayBGM(1);
                }
            }
            else if(!GetFlag(0, 0xA5)) {
                InvestigationSetScriptSectionAndFlag(0xD5, 0xA5);
            }
            else {
                PlayBGM(1);
            }
            LOADEXAMDATA(gUnknown_080178E0);
            break;
        }
        case 3: {
            if(GetFlag(2, 0x91) && GetFlag(0, 0xAD)) {
                if(!GetFlag(0, 0xAF)) {
                    InvestigationSetScriptSectionAndFlag(0xEB, 0xAF);
                }
                else {
                    InvestigationSetPersonAnimation(0xC, 0, 0);
                    PlayBGM(0x1A);
                }
            }
            else if(!GetFlag(0, 0xAC)) {
                InvestigationSetScriptSectionAndFlag(0xE5, 0xAC);
            }
            LOADEXAMDATA(gUnknown_08017958);
            break;
        }
    }
}

void InvestigationRoomUpdate_3_0(struct Main *main) {
}
