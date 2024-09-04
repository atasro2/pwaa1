#include "global.h"
#include "animation.h"
#include "ewram.h"
#include "sound.h"
#include "utils.h"
#include "script.h"
#include "background.h"
#include "graphics.h"
#include "debug.h"
#include "constants/animation.h"
#include "constants/persons.h"
#include "constants/process.h"
#include "constants/animation_offsets.h"

#define DUMMYPERSON { .gfxData = 0, .frameData = 0, .spriteCount = 0, .unkA = 0 }
#define DUMMYANIMATION { .gfxData = 0, .vramPtr = 0, .frameData = 0, .xOrigin = 0, .yOrigin = 0, .paletteSlot = 0, .spriteCount = 0, .priority = 0, .flags = 0x0, }

const struct PersonAnimationData gPersonAnimData[] = {
	[PERSON_ANIM_NONE] = DUMMYPERSON,
	[PERSON_ANIM_DUMMY01] = DUMMYPERSON,
	[PERSON_ANIM_PHOENIX] = {
		.gfxData = gGfxPixAnimationChar01,
		.frameData = gGfxSeqAnimationChar01,
		.spriteCount = 37,
		.unkA = 0x0,
	},
	[PERSON_ANIM_DUMMY03] = DUMMYPERSON,
	[PERSON_ANIM_MAYA] = {
		.gfxData = gGfxPixAnimationChar02,
		.frameData = gGfxSeqAnimationChar02,
		.spriteCount = 28,
		.unkA = 0x0,
	},
	[PERSON_ANIM_SUMMONED_MIA] = {
		.gfxData = gGfxPixAnimationChar03,
		.frameData = gGfxSeqAnimationChar03,
		.spriteCount = 28,
		.unkA = 0x0,
	},
	[PERSON_ANIM_DUMMY06] = DUMMYPERSON,
	[PERSON_ANIM_MIA] = {
		.gfxData = gGfxPixAnimationChar04,
		.frameData = gGfxSeqAnimationChar04,
		.spriteCount = 28,
		.unkA = 0x0,
	},
	[PERSON_ANIM_JUDGE] = {
		.gfxData = gGfxPixAnimationChar05,
		.frameData = gGfxSeqAnimationChar05,
		.spriteCount = 19,
		.unkA = 0x0,
	},
	[PERSON_ANIM_EDGEWORTH] = {
		.gfxData = gGfxPixAnimationChar06,
		.frameData = gGfxSeqAnimationChar06,
		.spriteCount = 38,
		.unkA = 0x0,
	},
	[PERSON_ANIM_WINSTON_PAYNE] = {
		.gfxData = gGfxPixAnimationChar10,
		.frameData = gGfxSeqAnimationChar10,
		.spriteCount = 23,
		.unkA = 0x0,
	},
	[PERSON_ANIM_DUMMY11] = DUMMYPERSON,
	[PERSON_ANIM_MARVIN_GROSSBERG] = {
		.gfxData = gGfxPixAnimationChar14,
		.frameData = gGfxSeqAnimationChar14,
		.spriteCount = 33,
		.unkA = 0x0,
	},
	[PERSON_ANIM_DUMMY13] = DUMMYPERSON,
	[PERSON_ANIM_DUMMY14] = DUMMYPERSON,
	[PERSON_ANIM_DUMMY15] = DUMMYPERSON,
	[PERSON_ANIM_PENNY_NICHOLS] = {
		.gfxData = gGfxPixAnimationChar16,
		.frameData = gGfxSeqAnimationChar16,
		.spriteCount = 14,
		.unkA = 0x0,
	},
	[PERSON_ANIM_WENDY_OLDBAG] = {
		.gfxData = gGfxPixAnimationChar15,
		.frameData = gGfxSeqAnimationChar15,
		.spriteCount = 29,
		.unkA = 0x0,
	},
	[PERSON_ANIM_SAL_MANELLA] = {
		.gfxData = gGfxPixAnimationChar18,
		.frameData = gGfxSeqAnimationChar18,
		.spriteCount = 39,
		.unkA = 0x0,
	},
	[PERSON_ANIM_DUMMY19] = DUMMYPERSON,
	[PERSON_ANIM_GUMSHOE] = {
		.gfxData = gGfxPixAnimationChar07,
		.frameData = gGfxSeqAnimationChar07,
		.spriteCount = 39,
		.unkA = 0x0,
	},
	[PERSON_ANIM_REDD_WHITE] = {
		.gfxData = gGfxPixAnimationChar08,
		.frameData = gGfxSeqAnimationChar08,
		.spriteCount = 36,
		.unkA = 0x0,
	},
	[PERSON_ANIM_APRIL_MAY] = {
		.gfxData = gGfxPixAnimationChar09,
		.frameData = gGfxSeqAnimationChar09,
		.spriteCount = 30,
		.unkA = 0x0,
	},
	[PERSON_ANIM_BELLBOY] = {
		.gfxData = gGfxPixAnimationChar11,
		.frameData = gGfxSeqAnimationChar11,
		.spriteCount = 35,
		.unkA = 0x0,
	},
	[PERSON_ANIM_DEE_VASQUEZ] = {
		.gfxData = gGfxPixAnimationChar19,
		.frameData = gGfxSeqAnimationChar19,
		.spriteCount = 29,
		.unkA = 0x0,
	},
	[PERSON_ANIM_LARRY_BUTZ] = {
		.gfxData = gGfxPixAnimationChar12,
		.frameData = gGfxSeqAnimationChar12,
		.spriteCount = 39,
		.unkA = 0x0,
	},
	[PERSON_ANIM_FRANK_SAWHIT] = {
		.gfxData = gGfxPixAnimationChar13,
		.frameData = gGfxSeqAnimationChar13,
		.spriteCount = 38,
		.unkA = 0x0,
	},
	[PERSON_ANIM_WILL_POWERS] = {
		.gfxData = gGfxPixAnimationChar17,
		.frameData = gGfxSeqAnimationChar17,
		.spriteCount = 39,
		.unkA = 0x0,
	},
	[PERSON_ANIM_CODY_HACKINS] = {
		.gfxData = gGfxPixAnimationChar20,
		.frameData = gGfxSeqAnimationChar20,
		.spriteCount = 18,
		.unkA = 0x0,
	},
	[PERSON_ANIM_BUSTUP_PHOENIX] = {
		.gfxData = gGfxPixAnimationChar21,
		.frameData = gGfxSeqAnimationChar21,
		.spriteCount = 7,
		.unkA = 0x0,
	},
	[PERSON_ANIM_BUSTUP_EDGEWORTH] = {
		.gfxData = gGfxPixAnimationChar22,
		.frameData = gGfxSeqAnimationChar22,
		.spriteCount = 10,
		.unkA = 0x0,
	},
	[PERSON_ANIM_LOTTA_HART] = {
		.gfxData = gGfxPixAnimationChar23,
		.frameData = gGfxSeqAnimationChar23,
		.spriteCount = 24,
		.unkA = 0x0,
	},
	[PERSON_ANIM_YANNI_YOGI] = {
		.gfxData = gGfxPixAnimationChar24,
		.frameData = gGfxSeqAnimationChar24,
		.spriteCount = 29,
		.unkA = 0x0,
	},
	[PERSON_ANIM_MANFRED_VONKARMA] = {
		.gfxData = gGfxPixAnimationChar25,
		.frameData = gGfxSeqAnimationChar25,
		.spriteCount = 36,
		.unkA = 0x0,
	},
	[PERSON_ANIM_POLLY] = {
		.gfxData = gGfxPixAnimationChar26,
		.frameData = gGfxSeqAnimationChar26,
		.spriteCount = 10,
		.unkA = 0x0,
	},
};

const struct AnimationData gAnimationData[] = {
	[0] = DUMMYANIMATION,
	[1] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM0+0x3D00,
		.frameData = gGfxSeqAnimation14,
		.xOrigin = 45,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 7,
		.priority = 0,
		.flags = 0x0,
	},
	[2] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM0+0x3D00,
		.frameData = gGfxSeqAnimation13,
		.xOrigin = 45,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 7,
		.priority = 0,
		.flags = 0x0,
	},
	[3] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM0+0x3D00,
		.frameData = gGfxSeqAnimation13,
		.xOrigin = 190,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 7,
		.priority = 0,
		.flags = 0x0,
	},
	[4] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM0+0x3D00,
		.frameData = gGfxSeqAnimation15,
		.xOrigin = 45,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 7,
		.priority = 0,
		.flags = 0x0,
	},
	[5] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM0+0x3400,
		.frameData = gGfxSeqAnimation21,
		.xOrigin = 60,
		.yOrigin = 80,
		.paletteSlot = 14,
		.spriteCount = 7,
		.priority = 33,
		.flags = 0x0,
	},
	[6] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM0+0x3FC0,
		.frameData = gGfxSeqAnimation22,
		.xOrigin = 260,
		.yOrigin = 80,
		.paletteSlot = 14,
		.spriteCount = 7,
		.priority = 32,
		.flags = 0x0,
	},
	[7] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x22E0,
		.frameData = gGfxSeqAnimation26,
		.xOrigin = 80,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 7,
		.priority = 34,
		.flags = 0x0,
	},
	[8] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x22E0,
		.frameData = gGfxSeqAnimation26,
		.xOrigin = 220,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 7,
		.priority = 34,
		.flags = 0x0,
	},
	[9] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x22E0,
		.frameData = gGfxSeqAnimation26,
		.xOrigin = 360,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 7,
		.priority = 34,
		.flags = 0x0,
	},
	[10] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM0+0x3D00,
		.frameData = gGfxSeqAnimation14,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 7,
		.priority = 32,
		.flags = 0x0,
	},
	[11] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM0+0x3D00,
		.frameData = gGfxSeqAnimation13,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 7,
		.priority = 32,
		.flags = 0x0,
	},
	[12] = {
		.gfxData = gGfxPixAnimationTileset01,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation01,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 1,
		.priority = 34,
		.flags = 0x0,
	},
	[13] = {
		.gfxData = gGfxPixAnimationTileset01,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation03,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 1,
		.priority = 34,
		.flags = 0x0,
	},
	[14] = {
		.gfxData = gGfxPixAnimationTileset01,
		.vramPtr = OBJ_VRAM1+0x35A0,
		.frameData = gGfxSeqAnimation04,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 4,
		.priority = 34,
		.flags = 0x0,
	},
	[15] = {
		.gfxData = gGfxPixAnimationTileset01,
		.vramPtr = OBJ_VRAM1+0x3BE0,
		.frameData = gGfxSeqAnimation05,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 2,
		.priority = 34,
		.flags = 0x0,
	},
	[16] = {
		.gfxData = gGfxPixAnimationTileset01,
		.vramPtr = OBJ_VRAM1+0x35A0,
		.frameData = gGfxSeqAnimation06,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 3,
		.priority = 34,
		.flags = 0x0,
	},
	[17] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1000,
		.frameData = gGfxSeqAnimation07,
		.xOrigin = 120,
		.yOrigin = 60,
		.paletteSlot = 6,
		.spriteCount = 3,
		.priority = 32,
		.flags = 0x0,
	},
	[18] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1000,
		.frameData = gGfxSeqAnimation08,
		.xOrigin = 120,
		.yOrigin = 60,
		.paletteSlot = 6,
		.spriteCount = 3,
		.priority = 32,
		.flags = 0x0,
	},
	[19] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0C00,
		.frameData = gGfxSeqAnimation09,
		.xOrigin = 0,
		.yOrigin = 60,
		.paletteSlot = 6,
		.spriteCount = 1,
		.priority = 32,
		.flags = 0x0,
	},
	[20] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0800,
		.frameData = gGfxSeqAnimation10,
		.xOrigin = 240,
		.yOrigin = 60,
		.paletteSlot = 6,
		.spriteCount = 1,
		.priority = 32,
		.flags = 0x0,
	},
	[21] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0C00,
		.frameData = gGfxSeqAnimation11,
		.xOrigin = 0,
		.yOrigin = 60,
		.paletteSlot = 6,
		.spriteCount = 1,
		.priority = 32,
		.flags = 0x0,
	},
	[22] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0800,
		.frameData = gGfxSeqAnimation12,
		.xOrigin = 240,
		.yOrigin = 60,
		.paletteSlot = 6,
		.spriteCount = 1,
		.priority = 32,
		.flags = 0x0,
	},
	[23] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x2EC0,
		.frameData = gGfxSeqAnimation16,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 14,
		.spriteCount = 5,
		.priority = 33,
		.flags = 0x0,
	},
	[24] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x2EC0,
		.frameData = gGfxSeqAnimation17,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 14,
		.spriteCount = 6,
		.priority = 33,
		.flags = 0x0,
	},
	[25] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation18,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 1,
		.priority = 32,
		.flags = 0x0,
	},
	[26] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation19,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 1,
		.priority = 32,
		.flags = 0x0,
	},
	[27] = {
		.gfxData = gGfxPixAnimationTileset01,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation02,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 12,
		.priority = 34,
		.flags = 0x0,
	},
	[28] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation20,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 12,
		.spriteCount = 15,
		.priority = 32,
		.flags = 0x0,
	},
	[29] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x2800,
		.frameData = gGfxSeqAnimation29,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 12,
		.spriteCount = 6,
		.priority = 32,
		.flags = 0x0,
	},
	[30] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation30,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 4,
		.priority = 32,
		.flags = 0x0,
	},
	[31] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation23,
		.xOrigin = 120,
		.yOrigin = 48,
		.paletteSlot = 13,
		.spriteCount = 12,
		.priority = 32,
		.flags = 0x0,
	},
	[32] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation24,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 4,
		.priority = 32,
		.flags = 0x8,
	},
	[33] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation25,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 13,
		.priority = 32,
		.flags = 0x0,
	},
	[34] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1800,
		.frameData = gGfxSeqAnimation27,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 1,
		.priority = 32,
		.flags = 0x0,
	},
	[35] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1A00,
		.frameData = gGfxSeqAnimation28,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 12,
		.spriteCount = 2,
		.priority = 32,
		.flags = 0x0,
	},
	[36] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1DA0,
		.frameData = gGfxSeqAnimation31,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 15,
		.spriteCount = 8,
		.priority = 32,
		.flags = 0x0,
	},
	[37] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1C80,
		.frameData = gGfxSeqAnimation32,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 14,
		.spriteCount = 2,
		.priority = 32,
		.flags = 0x0,
	},
	[38] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0EE0,
		.frameData = gGfxSeqAnimation33,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 7,
		.priority = 32,
		.flags = 0x0,
	},
	[39] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1120,
		.frameData = gGfxSeqAnimation34,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 2,
		.priority = 32,
		.flags = 0x0,
	},
	[40] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0A40,
		.frameData = gGfxSeqAnimation35,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 10,
		.priority = 32,
		.flags = 0x0,
	},
	[41] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1960,
		.frameData = gGfxSeqAnimation36,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 12,
		.spriteCount = 4,
		.priority = 32,
		.flags = 0x0,
	},
	[42] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1720,
		.frameData = gGfxSeqAnimation37,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 12,
		.spriteCount = 4,
		.priority = 32,
		.flags = 0x1,
	},
	[43] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x02A0,
		.frameData = gGfxSeqAnimation38,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 8,
		.priority = 32,
		.flags = 0x0,
	},
	[44] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x04A0,
		.frameData = gGfxSeqAnimation39,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 8,
		.priority = 32,
		.flags = 0x0,
	},
	[45] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0A60,
		.frameData = gGfxSeqAnimation40,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 5,
		.priority = 32,
		.flags = 0x0,
	},
	[46] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x08C0,
		.frameData = gGfxSeqAnimation41,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 3,
		.priority = 32,
		.flags = 0x0,
	},
	[47] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1C20,
		.frameData = gGfxSeqAnimation42,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 14,
		.spriteCount = 2,
		.priority = 32,
		.flags = 0x0,
	},
	[48] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1CA0,
		.frameData = gGfxSeqAnimation43,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 14,
		.spriteCount = 5,
		.priority = 32,
		.flags = 0x0,
	},
	[49] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1960,
		.frameData = gGfxSeqAnimation36,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 12,
		.spriteCount = 4,
		.priority = 32,
		.flags = 0x10,
	},
	[50] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1720,
		.frameData = gGfxSeqAnimation37,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 12,
		.spriteCount = 4,
		.priority = 32,
		.flags = 0x11,
	},
	[51] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0400,
		.frameData = gGfxSeqAnimation44,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 3,
		.priority = 32,
		.flags = 0x0,
	},
	[52] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0340,
		.frameData = gGfxSeqAnimation45,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 3,
		.priority = 32,
		.flags = 0x0,
	},
	[53] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0140,
		.frameData = gGfxSeqAnimation46,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 5,
		.priority = 32,
		.flags = 0x0,
	},
	[54] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x03E0,
		.frameData = gGfxSeqAnimation47,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 14,
		.priority = 32,
		.flags = 0x0,
	},
	[55] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x1BA0,
		.frameData = gGfxSeqAnimation48,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 11,
		.spriteCount = 1,
		.priority = 32,
		.flags = 0x0,
	},
	[56] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0200,
		.frameData = gGfxSeqAnimation49,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 4,
		.priority = 32,
		.flags = 0x0,
	},
	[57] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0280,
		.frameData = gGfxSeqAnimation50,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 2,
		.priority = 32,
		.flags = 0x0,
	},
	[58] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0280,
		.frameData = gGfxSeqAnimation51,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 2,
		.priority = 32,
		.flags = 0x0,
	},
	[59] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0880,
		.frameData = gGfxSeqAnimation52,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 13,
		.spriteCount = 4,
		.priority = 32,
		.flags = 0x0,
	},
	[60] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x0300,
		.frameData = gGfxSeqAnimation53,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 5,
		.priority = 32,
		.flags = 0x0,
	},
	[61] = {
		.gfxData = gGfxPixAnimationTileset02,
		.vramPtr = OBJ_VRAM1+0x02C0,
		.frameData = gGfxSeqAnimation54,
		.xOrigin = 120,
		.yOrigin = 80,
		.paletteSlot = 10,
		.spriteCount = 2,
		.priority = 32,
		.flags = 0x0,
	},
};

const struct SpriteSizeData gSpriteSizeTable[0xF] = {
	[0] = {
		.tileSize = 32,
		.height = 8,
		.width = 8,
	},
	[1] = {
		.tileSize = 64,
		.height = 8,
		.width = 16,
	},
	[2] = {
		.tileSize = 64,
		.height = 16,
		.width = 8,
	},
	[3] = {
		.tileSize = 3,
		.height = 0,
		.width = 0,
	},
	[4] = {
		.tileSize = 128,
		.height = 16,
		.width = 16,
	},
	[5] = {
		.tileSize = 128,
		.height = 8,
		.width = 32,
	},
	[6] = {
		.tileSize = 128,
		.height = 32,
		.width = 8,
	},
	[7] = {
		.tileSize = 7,
		.height = 0,
		.width = 0,
	},
	[8] = {
		.tileSize = 512,
		.height = 32,
		.width = 32,
	},
	[9] = {
		.tileSize = 256,
		.height = 16,
		.width = 32,
	},
	[10] = {
		.tileSize = 256,
		.height = 32,
		.width = 16,
	},
	[11] = {
		.tileSize = 11,
		.height = 0,
		.width = 0,
	},
	[12] = {
		.tileSize = 2048,
		.height = 64,
		.width = 64,
	},
	[13] = {
		.tileSize = 1024,
		.height = 32,
		.width = 64,
	},
	[14] = {
		.tileSize = 1024,
		.height = 64,
		.width = 32,
	},
};

const s8 gCourtScroll01AnimOffsets[31] = {
	0x03, 0x00, 0x14, 0x00, 0x24, 0x00, 0x34, 0x00, 0x3c, 0x00, 0x2f, 0x00, 0x1e, 0x00, 0x0c, 0x00,
	0x02, 0x00, 0x14, 0x00, 0x28, 0x00, 0x1b, 0x00, 0x3a, 0x00, 0x2c, 0x00, 0x1c, 0x00, 0x0b
};

const s8 gCourtScroll02AnimOffsets[31] = {
	0x03, 0x00, 0x06, 0x00, 0x0a, 0x00, 0x0e, 0x00, 0x14, 0x00, 0x1a, 0x00, 0x1f, 0x00, 0x11, 0x00,
	0x1c, 0x00, 0x1c, 0x00, 0x1a, 0x00, 0x1a, 0x00, 0x1a, 0x00, 0x18, 0x00, 0x18, 0x00, 0x16
};

const s8 gCourtScroll03AnimOffsets[31] = {
	0x02, 0x00, 0x04, 0x00, 0x0a, 0x00, 0x10, 0x00, 0x12, 0x00, 0x14, 0x00, 0x1e, 0x00, 0x26, 0x00,
	0x22, 0x00, 0x20, 0x00, 0x1e, 0x00, 0x1c, 0x00, 0x1b, 0x00, 0x1a, 0x00, 0x19, 0x00, 0x17
};

extern u16 gObjPaletteBuffer[16][16];

static struct AnimationListEntry * CreateAnimationFromAnimationInfo(struct AnimationInfo *animationFieldC, u32 arg1, u32 flags);
static void UpdatePersonAnimationForCourtScroll(struct AnimationListEntry * animation);

void (*gSpecialAnimationEffectFunctions[11])(struct AnimationListEntry *) = { // Table is used for Objection bubble shake and animation movement for the opening of case 3
	SpeechBubbleAnimationEffect,
	SpeechBubbleAnimationEffect,
	SpeechBubbleAnimationEffect,
	SpeechBubbleAnimationEffect,
	Case3OpeningAnimationEffect,
	Case3OpeningAnimationEffect,
	Case3OpeningAnimationEffect,
	Case3OpeningAnimationEffect,
	Case3OpeningAnimationEffect,
	SpeechBubbleAnimationEffect,
	SpeechBubbleAnimationEffect
};

void (*gCourtScrollPersonAnimationUpdateFuncs[6])(struct AnimationListEntry *, struct CourtScroll *) = {
	ScrollMode0AnimationUpdate,
	ScrollMode1AnimationUpdate,
	ScrollMode2AnimationUpdate,
	ScrollMode3AnimationUpdate,
	ScrollMode4AnimationUpdate,
	ScrollMode5AnimationUpdate
};

static void InitCurrentAnimationToNull()
{
    gAnimation[0].flags = ANIM_ENABLE_XFLIP;
    gAnimation[0].next = NULL;
    gAnimation[0].prev = NULL;
}

void ResetAnimationSystem()
{
    struct AnimationListEntry *animation = gAnimation;
    DmaFill16(3, 0, gAnimation, sizeof(gAnimation));
    gMain.animationFlags |= 3;
    animation = &gAnimation[1];
    animation->animationInfo.animId = 0xFF;
    animation->animationInfo.personId = 0;
    InitCurrentAnimationToNull();
}

void ClearAllAnimationSprites()
{
    struct AnimationListEntry *animation;
    for (animation = &gAnimation[1]; animation < &gAnimation[0x20]; animation++)
    {
        if (animation->flags & ANIM_ALLOCATED)
        {
            if (&gOamObjects[animation->animtionOamStartIdx] < &gOamObjects[animation->animtionOamEndIdx])
            {
                struct OamAttrs *oam;
                for (oam = &gOamObjects[animation->animtionOamStartIdx]; oam < &gOamObjects[animation->animtionOamEndIdx]; oam++)
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
            }
        }
    }
}

struct AnimationListEntry * FindAnimationFromAnimId(u32 animId)
{
    struct AnimationListEntry *animation = &gAnimation[0x1F];
    s32 i;
    for(i = 0x1F; i != -1; i--) // ! HM
    {
        if (animation->animationInfo.animId == animId && animation->flags & ANIM_ALLOCATED)
            return animation;
        animation--;
    }
    return NULL;
}

static struct AnimationListEntry *AllocateAnimationWithId(u32 animId)
{
    u32 flags = 0;
    s32 i;
    struct AnimationListEntry *animation = FindAnimationFromAnimId(animId);
    if (animation != NULL)
    {
        flags = (animation->flags & 0x02000000) ? 0x02000000 : flags;
        flags = (animation->flags & ANIM_INACTIVE) ? ANIM_INACTIVE : flags;
        DestroyAnimation(animation);
        DmaFill16(3, 0, animation, 0x40)
        animation->flags = (ANIM_PLAYING | ANIM_QUEUED_TILE_UPLOAD | ANIM_ACTIVE | ANIM_ALLOCATED | ANIM_QUEUED_PAL_UPLOAD) | flags;
        animation->frameDurationCounter = 0xffff;
        if (flags & ANIM_INACTIVE)
            animation->flags &= ~ANIM_ACTIVE;
        animation->animationInfo.animId = animId;
        return animation;
    }
    else
    {
        animation = &gAnimation[0x1F];
        for (i = 0x1f; i != -1; i--)
        {
            if (!(animation->flags & ANIM_ALLOCATED))
            {
                if (animation != &gAnimation[1])
                {
                    DmaFill16(3, 0, animation, 0x40)
                    animation->flags = (ANIM_PLAYING | ANIM_QUEUED_TILE_UPLOAD | ANIM_ACTIVE | ANIM_ALLOCATED | ANIM_QUEUED_PAL_UPLOAD);
                    animation->animationInfo.animId = animId;
                    return animation;
                }
            }
            animation--;
        }
        return NULL;
    }
}

void SetAnimationOriginCoords(struct AnimationListEntry *animation, u32 xOrigin, u32 yOrigin) // unused
{
    if (animation != NULL)
    {
        animation->animationInfo.xOrigin = xOrigin;
        animation->animationInfo.yOrigin = yOrigin;
    }
}

static void SetAnimationRotScaleParams(struct AnimationListEntry *animation, u32 rotscaleIdx)
{
    s32 sin, cos;
    u32 oamIdx;
    oamIdx = rotscaleIdx << 2;
    if (animation != NULL)
    {
        if (rotscaleIdx > 0x1f)
            rotscaleIdx = 0x1f;
        animation->flags = (animation->flags & ~ANIM_ENABLE_XFLIP) | ANIM_ENABLE_ROTATION;
        animation->rotationAmount &= 0xff;
        animation->spritePriorityMatrixIndex &= 0xff00;
        animation->spritePriorityMatrixIndex |= rotscaleIdx;
        cos = _Cos(animation->rotationAmount);
        sin = -_Sin(animation->rotationAmount);
        gOamObjects[oamIdx++].attr3 = cos;
        gOamObjects[oamIdx++].attr3 = -sin;
        gOamObjects[oamIdx++].attr3 = sin;
        gOamObjects[oamIdx++].attr3 = cos;
    }
}

void SetAnimationRotation(struct AnimationListEntry *animation, u32 rotscaleIdx, u32 rotation)
{
    if (animation != NULL)
    {
        animation->rotationAmount = rotation;
        SetAnimationRotScaleParams(animation, rotscaleIdx);
    }
}

void DisableAnimationRotation(struct AnimationListEntry *animation)
{
    if (animation != NULL)
        animation->flags &= ~ANIM_ENABLE_ROTATION;
}

void ChangeAnimationActivity(struct AnimationListEntry *animation, bool32 activate)
{
    u32 i;
    if (animation != 0 && (animation->flags & ANIM_ALLOCATED))
    {
        if (activate)
        {
            animation->flags &= ~ANIM_INACTIVE;
            animation->flags |= ANIM_ACTIVE;
        }
        else
        {
            animation->flags &= ~ANIM_ACTIVE;
            animation->flags |= ANIM_INACTIVE;
            for (i = animation->animtionOamStartIdx; i < animation->animtionOamEndIdx; i++)
                gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
        }
        if (animation->animationInfo.animId == 0xff && animation->animationInfo.personId == 0x16)
        {
            if ((animation = FindAnimationFromAnimId(ANIM_APRIL_MAY_ABDOMEN_1)) != NULL || (animation = FindAnimationFromAnimId(ANIM_APRIL_MAY_ABDOMEN_2)) != NULL)
            {
                if (activate)
                {
                    animation->flags &= ~ANIM_INACTIVE;
                    animation->flags |= ANIM_ACTIVE;
                }
                else
                {
                    animation->flags &= ~ANIM_ACTIVE;
                    animation->flags |= ANIM_INACTIVE;
                    for (i = animation->animtionOamStartIdx; i < animation->animtionOamEndIdx; i++)
                        gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
                }
            }
        }
    }
}

void SetAnimationXFlip(struct AnimationListEntry *animation, bool32 flipX)
{
    if (animation != NULL)
    {
        if (flipX)
            animation->flags |= 1;
        else
            animation->flags &= ~1;
    }
}

void SetAnimationPriority(struct AnimationListEntry *animation, u32 priority)
{
    if (animation != NULL)
    {
        if (priority > 3)
            priority = 3;
        animation->spritePriorityMatrixIndex &= 0xff;
        animation->spritePriorityMatrixIndex |= priority << 8;
    }
}

void SetAnimationFrameOffset(struct AnimationListEntry *animation, u32 animOffset)
{
    void * animGfxData;
    void * animFrameData;
    if (animation == NULL)
    {
        return;
    }
    if (animation->animationInfo.animId == 0xFF)
    {
        u8 *framePtr;
        framePtr = gPersonAnimData[animation->animationInfo.personId].frameData + animOffset;
        if (animation->animationInfo.animFrameDataStartPtr == framePtr)
            return;
        animation->animationInfo.animFrameDataStartPtr = framePtr;
        animation->animationInfo.animGfxDataStartPtr = gPersonAnimData[animation->animationInfo.personId].gfxData;
    }
    else
    {
        if (animation->animationInfo.animId > 0xb)
        {
            if (animation->animationInfo.animId <= 0x10)
            {
                animation->animationInfo.animFrameDataStartPtr = gGfxSeqAnimation01 + animOffset; // ! These globals are defines *sob*
                animation->animationInfo.animGfxDataStartPtr = gGfxPixAnimationTileset01;
            }
            else
            {
                if (animation->animationInfo.animId > 0x18)
                {
                    return;
                }
                animation->animationInfo.animFrameDataStartPtr = gGfxSeqAnimation07 + animOffset;
                animation->animationInfo.animGfxDataStartPtr = gGfxPixAnimationTileset02;
            }
        }
        else
        {
            animation->animationInfo.animFrameDataStartPtr = gGfxSeqAnimation07 + animOffset;
            animation->animationInfo.animGfxDataStartPtr = gGfxPixAnimationTileset02;
        }
    }
    animation->flags |= (ANIM_PLAYING | ANIM_QUEUED_TILE_UPLOAD);
    animation->frameDurationCounter = 0xFFFF;
    // comments mostly based on h3rmit docs
    // animation->animFrameDataStartPtr animation block beginning
    animFrameData = animation->animationInfo.animFrameDataStartPtr;
    animGfxData = animation->animationInfo.animGfxDataStartPtr + 1 [(u32 *)animFrameData]; // offsets the graphics pointer
    animation->animationInfo.animGfxDataStartPtr = animGfxData;
    animation->animationInfo.tileDataPtr = animGfxData + 4 + (*(u32 *)animGfxData) * 0x20; // skip first u32(number of palettes) and the palettes, pointer to tiles
    animation->frameData = (struct AnimationFrame *)(animFrameData + 8); // skips animation block header, pointer to frame data
    animation->spriteData = animFrameData + animation->frameData->spriteDataOffset; // Frame tilemap pointer
}

#ifdef eUnknown_0200AFC0
#undef eUnknown_0200AFC0
#endif

#define eUnknown_0200AFC0 ((struct Rect*)(EWRAM_START+0xAFC0))

/***
  * 
  * Checks to see if a rectangle has collided with any animation, if yes return animation id
  * 
***/
u32 CheckRectCollisionWithAnim(struct Rect *p)
{
    u32 i;
    u32 spriteSize = 0;
    struct AnimationListEntry * animation;

    for(animation = gAnimation[0].next; animation != NULL; animation = animation->next)
    {
        struct Rect * rect = &eUnknown_0200AFC0[0];
        struct Rect * collisionRect = &eUnknown_0200AFC0[1];
        struct Rect * spriteRect = &eUnknown_0200AFC0[2];
        uintptr_t vram;
        struct SpriteTemplate * spriteTemplate;
        u32 spriteCount;

        *rect = *p;
        rect->w += p->x;
        rect->h += p->y;
        
        vram = (uintptr_t)animation->animationInfo.vramPtr;
        spriteTemplate = animation->spriteData;
        spriteCount = *(u16*)animation->spriteData;
        for(i = 0; i < spriteCount; i++)
        {
            struct SpriteSizeData * spriteSizePtr = (struct SpriteSizeData *)&spriteSize; // ! possible fakematch
            u32 mask;
            spriteTemplate++;
            *collisionRect = *rect;
            mask = 0xFFFF;
            vram += spriteSize & mask;    
            *spriteSizePtr = gSpriteSizeTable[spriteTemplate->data >> 0xC];
            spriteRect->x = spriteRect->w = animation->animationInfo.xOrigin + spriteTemplate->x;
            spriteRect->w += spriteSizePtr->width;
            spriteRect->y = spriteRect->h = spriteTemplate->y + animation->animationInfo.yOrigin;
            spriteRect->h += spriteSizePtr->height;

            // Check if collision rect is in the region of the sprite rext 
            if(spriteRect->x < collisionRect->w 
            && collisionRect->x < spriteRect->w
            && spriteRect->y < collisionRect->h
            && collisionRect->y < spriteRect->h)
            {
                u32 temp;
                s32 x, y;
                // now create the intersection rect between the two rects
                collisionRect->x -= spriteRect->x;
                if(collisionRect->x < 0)
                    collisionRect->x = 0;
                collisionRect->y -= spriteRect->y;
                if(collisionRect->y < 0)
                    collisionRect->y = 0;
                if(collisionRect->w > spriteRect->w)
                    collisionRect->w = spriteRect->w;
                collisionRect->w -= spriteRect->x;
                if(collisionRect->h > spriteRect->h)
                    collisionRect->h = spriteRect->h;
                collisionRect->h -= spriteRect->y;

                // Check if any visible pixels are in the intersection
                temp = spriteSizePtr->width / 8;
                y = collisionRect->y;
                while(y < collisionRect->h)
                {
                    s32 yy1;
                    s32 yy2;
                    uintptr_t temp3;
                    yy1 = (y >> 3) * temp * 32;
                    yy2 = (y % 8) * 4;
                    temp3 = yy1 + yy2 + vram;
                    x = collisionRect->x;
                    while(x < collisionRect->w)
                    {
                        uintptr_t pixel;
                        s32 xx1 = (x >> 3) * 32;
                        if(x % 8 > 1){
                            uintptr_t ptr = temp3 + 1;
                            pixel = (x >> 3) * 32 + ptr;
                        }
                        else {
                            uintptr_t ptr = temp3;
                            pixel = (x >> 3) * 32 + ptr;
                        }
                        if(*(u8 *)pixel != 0)
                            return animation->animationInfo.animId;
                        x+=2;
                    }
                    y+=2;
                }
            }
        }
    }
    return 0;
}

#undef eUnknown_0200AFC0
#define eUnknown_0200AFC0 ((void*)(EWRAM_START+0xAFC0))

bool32 CheckIfLinesIntersect(const struct Point *pt0, const struct Point *pt1, const struct Point *pt2, const struct Point *pt3)
{
    // check if the lines through pt0-pt1 and pt2-pt3 intersect on the screen
    s32 xd01, yd01, xd23, yd23, cp0123, xd13, yd13, cp2313, cp0113;
    xd01 = pt0->x - pt1->x;
    yd01 = pt0->y - pt1->y;
    xd23 = pt2->x - pt3->x;
    yd23 = pt2->y - pt3->y;
    cp0123 = xd01 * yd23 - yd01 * xd23;
    // are 0->1 and 2->3 collinear or 0? if yes bail
    if (cp0123 == 0)
    {
        return FALSE;
    }
    xd13 = pt1->x - pt3->x;
    yd13 = pt1->y - pt3->y;
    cp2313 = yd13 * xd23 - xd13 * yd23;
    cp0113 = yd13 * xd01 - xd13 * yd01;
    // does an intersection between the two lines exist on screen? return true if yes...
    if (((cp0123 > 0 && cp2313 >= 0 && cp2313 <= cp0123) || (cp0123 < 0 && cp2313 >= cp0123 && cp2313 <= 0)) &&
	((cp0123 > 0 && cp0113 >= 0 && cp0113 <= cp0123) || (cp0123 < 0 && cp0113 >= cp0123 && cp0113 <= 0)))
    {
        return TRUE;
    }
    // ...else false
    return FALSE;
}

bool32 CheckRectCollisionWithArea(const struct Rect * rect, const struct Point4 * area)
{
    u32 i, j, k;
    struct Point4 p;
    const struct Point *p1 = &area->points[0];
    const struct Point *p2 = &area->points[1];
    const struct Point *p3 = &p.points[0];
    const struct Point *p4 = &p.points[1];
    if (CheckPointInArea((struct Point *)rect, area))
        return TRUE;
    
    p.points[0].x = p.points[3].x = rect->x;
    p.points[0].y = p.points[1].y = rect->y;
    p.points[1].x = p.points[2].x = rect->x + rect->w;
    p.points[2].y = p.points[3].y = rect->y + rect->h;
    // see if any part of the rect is in area
    for (i = 0; i < 3; i++)
    {
        p1 = &area->points[0];
        p2 = &area->points[1];
        for (j = 0; j < 3; j++)
        {
            if (CheckIfLinesIntersect(p1, p2, p3, p4))
                return TRUE;
            p1++;
            p2++;
        }
        p2 = &area->points[0];
        if (CheckIfLinesIntersect(p1, p2, p3, p4))
            return TRUE;
        p3++;
        p4++;
    }
    p4 = &p.points[0];
    p1 = &area->points[0];
    p2 = &area->points[1];
    for (k = 0; k < 3; k++)
    {
        if (CheckIfLinesIntersect(p1, p2, p3, p4))
            return TRUE;
        p1++;
        p2++;
    }
    p2 = &area->points[0];
    if (CheckIfLinesIntersect(p1, p2, p3, p4))
        return TRUE;

    return FALSE;
}

static void PutAnimationInAnimList(struct AnimationListEntry *animation)
{
    struct AnimationListEntry *list = gAnimation;
    u32 i;
    for (i = 0; i < 0x20; i++)
    {
        if (list->next == NULL)
        {
            animation->prev = list;
            list->next = animation;
            break;
        }
        list = list->next;
        if (list->animationInfo.priority < animation->animationInfo.priority)
        {
            animation->prev = list->prev;
            animation->next = list;
            list->prev->next = animation;
            list->prev = animation;
            break;
        }
    }
}

static void DoAnimationAction(u32 action)
{
    switch (action)
    {
    case 1:
        if (!(gMain.gameStateFlags & 1))
        {
            gMain.shakeTimer = 30;
            gMain.gameStateFlags |= 1;
            gMain.shakeIntensity = 1;
        }
        break;
    case 2:
        if (gMain.blendMode == 0)
            StartHardwareBlend(3, 1, 8, 0x1F);
        break;
    default:
        break;
    }
}

struct AnimationListEntry *PlayPersonAnimation(u32 arg0, u32 arg1, u32 talkingAnimOff, u32 arg3)
{
    u32 xOrigin = 120;
    struct Main *main = &gMain;
    if (arg0 & 0x8000 && main->Bg256_dir & 0x10)
        xOrigin -= DISPLAY_WIDTH;
    if (arg0 & 0x4000 && main->Bg256_dir & 0x20)
        xOrigin += DISPLAY_WIDTH;
    if (arg0 & 0x2000)
        arg1 |= 1;
    return PlayPersonAnimationAtCustomOrigin(arg0, talkingAnimOff, xOrigin, DISPLAY_HEIGHT/2, arg1);
}

struct AnimationListEntry *PlayPersonAnimationAtCustomOrigin(u32 arg0, u32 talkingAnimOff, u32 xOrigin, u32 yOrigin, u32 flags)
{
    struct Main *main = &gMain;
    struct AnimationListEntry *animation = &gAnimation[1];
    struct AnimationInfo animationInfo;
    u32 personId = arg0 & 0xFF;
    if (personId == 0)
    {
        if (animation->flags & ANIM_ALLOCATED)
            DestroyAnimation(animation);
        return NULL;
    }
    animationInfo.animId = 0xFF;
    *(u16 *)(&animationInfo.personId) = arg0; // this assignment matches but sucks. doing it like this allows unk2 to not be an array which makes everything else more sane
    animationInfo.vramPtr = OBJ_VRAM0 + 0x5800;
    animationInfo.animGfxDataStartPtr = gPersonAnimData[personId].gfxData;
    animationInfo.animFrameDataStartPtr = gPersonAnimData[personId].frameData + talkingAnimOff;
    animationInfo.paletteSlot = 14;
    if (main->process[GAME_PROCESS] == COURT_PROCESS) // why does it force a specific amount of sprites
        animationInfo.spriteCount = 0x27;
    else
        animationInfo.spriteCount = gPersonAnimData[personId].spriteCount;
    animationInfo.priority = 0x21;
    animationInfo.xOrigin = xOrigin;
    animationInfo.yOrigin = yOrigin;
    if (!(animation->flags & ANIM_ALLOCATED))
    {
        DmaFill16(3, 0, animation, sizeof(gAnimation[1]));
        animation->flags |= ANIM_ALLOCATED;
        animation->animationInfo.animId = 0xFF;
        PutAnimationInAnimList(animation);
    }
    animation->bgId |= 0;
    CreateAnimationFromAnimationInfo(&animationInfo, 0xFF, flags);
    animation->bgId = main->currentBG;
    if (animation->animationInfo.personId == 0x16 && main->process[GAME_PROCESS] == INVESTIGATION_PROCESS) // April May special case
    {
        struct AnimationListEntry *ptr;
        u32 var0 = animation->flags & 0x02000000;
        switch (talkingAnimOff)
        {
        case ANIM_MAY_ANGRY_TALKING_WITNESS:
        case ANIM_MAY_ANGRY_IDLE_WITNESS:
        case ANIM_MAY_NORMAL_TALKING_WITNESS:
        case ANIM_MAY_NORMAL_IDLE_WITNESS:
            ptr = FindAnimationFromAnimId(ANIM_APRIL_MAY_ABDOMEN_2);
            if (ptr != NULL)
                DestroyAnimation(ptr);
            ptr = PlayAnimation(ANIM_APRIL_MAY_ABDOMEN_1);
            ptr->flags |= var0;
            break;
        case ANIM_MAY_EVIL_TALKING_WITNESS:
        case ANIM_MAY_EVIL_IDLE_WITNESS:
            ptr = FindAnimationFromAnimId(ANIM_APRIL_MAY_ABDOMEN_1);
            if (ptr != NULL)
                DestroyAnimation(ptr);
            ptr = PlayAnimation(ANIM_APRIL_MAY_ABDOMEN_2);
            ptr->flags |= var0;
            break;
        default:
            break;
        }
    }
    return animation;
}

struct AnimationListEntry *PlayAnimation(u32 arg0)
{
    s32 xOrigin, yOrigin;
    struct Main *main = &gMain;
    const struct AnimationData *ptr = &gAnimationData[arg0];
    xOrigin = ptr->xOrigin;
    yOrigin = ptr->yOrigin;
    if (main->Bg256_dir & 0x10 && arg0 > 0xB)
        xOrigin -= DISPLAY_WIDTH;
    return PlayAnimationAtCustomOrigin(arg0, xOrigin, yOrigin);
}

struct AnimationListEntry *PlayAnimationAtCustomOrigin(u32 arg0, s32 xOrigin, s32 yOrigin)
{
    struct AnimationListEntry *animationStruct;
    struct AnimationInfo animationInfo;
    struct Main *main = &gMain;
    const struct AnimationData *animData = &gAnimationData[arg0];
    u32 var0;
    uintptr_t var1;
    u32 var2;

    animationInfo.animId = arg0;
    animationInfo.vramPtr = animData->vramPtr;
    animationInfo.animGfxDataStartPtr = animData->gfxData;
    animationInfo.animFrameDataStartPtr = animData->frameData;
    animationInfo.paletteSlot = animData->paletteSlot;
    animationInfo.spriteCount = animData->spriteCount;
    animationInfo.priority = animData->priority;
    animationInfo.xOrigin = xOrigin;
    animationInfo.yOrigin = yOrigin;
    animationStruct = CreateAnimationFromAnimationInfo(&animationInfo, arg0, animData->flags);
    var0 = animationStruct->animationInfo.paletteSlot - 6;
    var1 = (1 << var0);
    if (!(main->allocatedObjPltts & var1) && animationStruct->animationInfo.paletteSlot < 10)
    {
        void *dest;
        u32 size;
		
        main->allocatedObjPltts |= var1;
        var1 = OBJ_PLTT;
        var1 += animationStruct->animationInfo.paletteSlot * 0x20;
        dest = gObjPaletteBuffer[var0];
        var0 = *(u32 *)animationStruct->animationInfo.animGfxDataStartPtr;
        size = var0 * 0x20;
        DmaCopy16(3, var1, dest, size);
    }
    animationStruct->bgId = main->currentBG;
    animationStruct->roomId = main->currentRoomId;
    animationStruct->flags |= ANIM_QUEUED_PAL_UPLOAD;
    return animationStruct;
}

struct AnimationBackupStruct * RestoreAnimationsFromBuffer(struct AnimationBackupStruct * backupAnimation) // ! UB: this function doesn't return anything
{
    u32 i;
    void * animFrameData;
    void * animGfxData;
    struct AnimationListEntry *animation = &gAnimation[1];
    struct AnimationInfo animationInfo;
    ResetAnimationSystem();
    if (backupAnimation->flags & ANIM_ALLOCATED)
    {
        animationInfo.animId = 0xFF;
        animationInfo.personId = backupAnimation->personId;
        animationInfo.vramPtr = OBJ_VRAM0 + 0x5800;
        animationInfo.animGfxDataStartPtr = gPersonAnimData[backupAnimation->personId].gfxData;
        animationInfo.animFrameDataStartPtr = backupAnimation->animFrameDataStartPtr;
        animationInfo.paletteSlot = 0xE;
        animationInfo.spriteCount = gPersonAnimData[backupAnimation->personId].spriteCount;
        animationInfo.priority = 0x21;
        animationInfo.xOrigin = backupAnimation->xOrigin;
        animationInfo.yOrigin = backupAnimation->yOrigin;
        DmaCopy16(3, &animationInfo, &animation->animationInfo, sizeof(animationInfo));
        animFrameData = animation->animationInfo.animFrameDataStartPtr;
        animation->frameData = animFrameData;
        animGfxData = animation->animationInfo.animGfxDataStartPtr + 1 [(u32 *)animFrameData];
        animation->animationInfo.animGfxDataStartPtr = animGfxData; // offsets the graphics pointer
        animation->animationInfo.tileDataPtr = animGfxData + 4 + (*(u32 *)animGfxData) * 0x20;
        animation->frameData = backupAnimation->frameData;
        animation->spriteData = (void *)(animFrameData + animation->frameData->spriteDataOffset);
        animation->flags = backupAnimation->flags | (ANIM_QUEUED_TILE_UPLOAD | ANIM_QUEUED_PAL_UPLOAD);
        animation->tileNum |= (uintptr_t)animation->animationInfo.vramPtr / TILE_SIZE_4BPP; // get OAM tile num from VRAM address
        animation->spritePriorityMatrixIndex = 0x300;
        SetAnimationPriority(animation, animation->animationInfo.priority >> 4);
        animation->animationInfo.priority &= 0xF;
        animation->bgId = backupAnimation->bgId;
        PutAnimationInAnimList(animation);
    }
    backupAnimation++;
    for (i = 2; i < 0x20; i++, backupAnimation++)
    {
        if (backupAnimation->flags & ANIM_ALLOCATED)
        {
            animation = PlayAnimationAtCustomOrigin(backupAnimation->animId, backupAnimation->xOrigin, backupAnimation->yOrigin);
            animation->flags = backupAnimation->flags | (ANIM_QUEUED_TILE_UPLOAD | ANIM_QUEUED_PAL_UPLOAD);
            animation->frameData = backupAnimation->frameData;
            animation->spriteData = (void *)(animation->animationInfo.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
            DataCopy32(&animation->bgId, &backupAnimation->bgId);
        }
    }
}

struct AnimationBackupStruct * SaveAnimationDataToBuffer(struct AnimationBackupStruct * backupAnimation)
{
    struct AnimationListEntry *animation;
    for (animation = &gAnimation[1]; animation < &gAnimation[0x20]; animation++, backupAnimation++)
    {
        DataCopy32(&backupAnimation->animId, &animation->animationInfo.animId);
        DataCopy32(&backupAnimation->xOrigin, &animation->animationInfo.xOrigin);
        DataCopy32(&backupAnimation->frameDurationCounter, &animation->frameDurationCounter);
        DataCopy32(&backupAnimation->bgId, &animation->bgId);
        backupAnimation->animFrameDataStartPtr = animation->animationInfo.animFrameDataStartPtr;
        backupAnimation->flags = animation->flags;
        backupAnimation->frameData = animation->frameData;
    }
    return backupAnimation;
}

static struct AnimationListEntry * CreateAnimationFromAnimationInfo(struct AnimationInfo * animationInfo, u32 arg1, u32 flags)
{
    void * animFrameData;
    void * animGfxData;
    struct AnimationListEntry *animation = AllocateAnimationWithId(animationInfo->animId);
    if (animation == NULL)
        return NULL;
    DmaCopy16(3, animationInfo, &animation->animationInfo, sizeof(animation->animationInfo));
    animFrameData = animation->animationInfo.animFrameDataStartPtr;
    animGfxData = animation->animationInfo.animGfxDataStartPtr +  1 [(u32 *)animFrameData];
    animation->animationInfo.animGfxDataStartPtr = animGfxData;                                      // offsets the graphics pointer
    animation->animationInfo.tileDataPtr = animGfxData + 4 + (*(u32 *)animGfxData) * 0x20; // skip first u32(number of palettes) and the palettes, pointer to tiles
    animation->frameData = (struct AnimationFrame *)(animFrameData + 8);                                  // skips animation block header, pointer to frame data
    animation->spriteData = (void *)(animFrameData + animation->frameData->spriteDataOffset);                  // Frame tilemap pointer
    animation->flags |= flags;
    if (flags & 0x10)
        animation->flags &= ~ANIM_PLAYING;
    animation->tileNum |= (uintptr_t)animation->animationInfo.vramPtr / TILE_SIZE_4BPP; // get OAM tile num from VRAM address
    animation->rotationAmount = 0;
    animation->spritePriorityMatrixIndex = 0x300;
    SetAnimationPriority(animation, animation->animationInfo.priority >> 4);
    animation->animationInfo.priority &= 0xF;
    PutAnimationInAnimList(animation);
    if (animation->frameData->flags & 0x2)
        PlaySE(animation->frameData->songId);
    if (animation->frameData->flags & 0x4)
        DoAnimationAction(animation->frameData->action);
    return animation;
}

static u32 AdvanceAnimationFrame(struct AnimationListEntry * animation)
{
    void * gfxDataStart;
    u32 retVal = 4;
    if (gScriptContext.personAnimPauseCounter && animation->animationInfo.animId == 0xFF)
        return retVal;
    if (animation->frameData->frameDuration > ++animation->frameDurationCounter)
        return retVal;
    animation->frameDurationCounter = 0;
    animation->frameData++;
    if (animation->frameData->flags & 0x2)
        PlaySE(animation->frameData->songId);
    if (animation->frameData->flags & 0x4)
        DoAnimationAction(animation->frameData->action);
    switch (animation->frameData->frameDuration)
    {
    case ANIM_LOOP:
        gfxDataStart = animation->animationInfo.animFrameDataStartPtr;
        animation->frameData = (struct AnimationFrame *)(gfxDataStart + 8);
        animation->spriteData = gfxDataStart + animation->frameData->spriteDataOffset;
        animation->flags |= ANIM_QUEUED_TILE_UPLOAD;
        retVal = 7;
        break;
    case ANIM_STOP:
        animation->flags &= ~ANIM_PLAYING;
        retVal = 0;
        animation->frameData--;
        break;
    case ANIM_DESTROY:
        DestroyAnimation(animation);
        retVal = 0;
        break;
    default:
        animation->spriteData = (void *)(animation->animationInfo.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
        animation->flags |= ANIM_QUEUED_TILE_UPLOAD;
        retVal = 5;
        break;
    }
    return retVal;
}

void OffsetAllAnimations(s32 xOffset, s32 yOffset)
{
    struct AnimationListEntry *animation;
    for (animation = gAnimation[0].next; animation != NULL; animation = animation->next)
    {
        struct OamAttrs *oam;
        if (animation->flags & 8)
            continue;
        animation->animationInfo.xOrigin += xOffset;
        animation->animationInfo.yOrigin += yOffset;
        for (oam = &gOamObjects[animation->animtionOamStartIdx]; oam < &gOamObjects[animation->animtionOamEndIdx]; oam++)
        {
            u32 y;
            u32 x;
            u32 xMask;
            u32 yMask = 0xFF;
            y = (u8)oam->attr0;
            oam->attr0 &= ~0xFF;
            y += yOffset;
            y &= yMask; // lulwut
            oam->attr0 |= y;

            xMask = 0x1FF;
            x = oam->attr1 & 0x1FF;
            oam->attr1 &= ~0x1FF;
            x += xOffset;
            x &= xMask;
            oam->attr1 |= x;
        }
    }
}

void StartAnimationBlend(u32 arg0, u32 arg1)
{
    struct AnimationListEntry *animation = NULL;
    struct AnimationListEntry *animation2;
    struct IORegisters *ioRegsp = &gIORegisters;
    struct Main *main = &gMain;
    if (arg0 & 0xFF00)
    {
        u32 animationId = arg0 >> 8;
        arg0 &= 0xFF;
        animation2 = FindAnimationFromAnimId(animationId);
    }
    else
        animation2 = &gAnimation[1];

    if (ioRegsp->lcd_bldy == 0x10 || (!(animation2->flags & ANIM_ALLOCATED) && !(arg0 & 2)))
        return;

    if (animation2->animationInfo.personId == 0x16)
    {
        animation = FindAnimationFromAnimId(ANIM_APRIL_MAY_ABDOMEN_1);
        if (animation == NULL)
            animation = FindAnimationFromAnimId(ANIM_APRIL_MAY_ABDOMEN_2);
    }

    if (arg0 & 1)
    {
        if ((animation2->flags & 0x02000000) && !(animation2->flags & 0x4))
            return;
        animation2->flags &= ~(ANIM_INACTIVE | 0x04000000 | 4);
        if (animation != NULL)
            animation->flags &= ~(ANIM_INACTIVE | 0x04000000 | 4);
        main->blendDeltaY = 0x10;
    }
    else if (arg0 & 4)
    {
        if ((animation2->flags & 0x02000000) && (animation2->flags & 0x4))
            return;
        animation2->flags |= 0x4;
        if (animation != NULL)
            animation->flags |= 0x4;
        main->blendDeltaY = 0;
        if (arg0 & (4 | 8))
        {
            animation2->flags |= 0x04000000;
            if (animation != NULL)
                animation->flags |= 0x04000000;
        }
    }
    else
        return;
    animation2->flags |= (ANIM_ACTIVE | ANIM_BLEND_ACTIVE);
    if (animation != NULL)
        animation->flags |= (ANIM_ACTIVE | ANIM_BLEND_ACTIVE);
    main->blendDelay = arg1;
    main->blendCounter = 0;
    ioRegsp->lcd_bldcnt = BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG3;
    ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x10 - main->blendDeltaY, main->blendDeltaY);
    REG_BLDCNT = ioRegsp->lcd_bldcnt;
    REG_BLDALPHA = ioRegsp->lcd_bldalpha;
}

static void UpdateAnimationBlend(struct AnimationListEntry *animation)
{
    struct Main *main = &gMain;
    struct IORegisters *ioRegsp = &gIORegisters;
    struct AnimationListEntry *animation2 = NULL;
    if (main->blendMode)
    {
        animation->flags &= ~ANIM_BLEND_ACTIVE;
        return;
    }

    if (animation->animationInfo.personId == 0x16)
    {
        animation2 = FindAnimationFromAnimId(ANIM_APRIL_MAY_ABDOMEN_1);
        if (animation2 == NULL)
            animation2 = FindAnimationFromAnimId(ANIM_APRIL_MAY_ABDOMEN_2);
    }

    if (++main->blendCounter >= main->blendDelay)
    {
        main->blendCounter = 0;
        if (animation->flags & 4)
        {
            main->blendDeltaY++;
            if (main->blendDeltaY == 0x10)
            {
                ioRegsp->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ;
                ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
                animation->flags &= ~ANIM_BLEND_ACTIVE;
                if (animation->flags & 0x04000000)
                {
                    ChangeAnimationActivity(animation, 0);
                    if (animation2 != NULL)
                        ChangeAnimationActivity(animation2, 0);
                    return;
                }
                DestroyAnimation(animation);
                if (animation2 != NULL)
                    DestroyAnimation(animation2);
                return;
            }
        }
        else
        {
            main->blendDeltaY--;
            if (main->blendDeltaY == 0)
            {
                ioRegsp->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ;
                ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
                animation->flags &= ~ANIM_BLEND_ACTIVE;
                if (animation2 != NULL)
                    animation2->flags &= ~ANIM_BLEND_ACTIVE;
                return;
            }
        }
    }
    ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x10 - main->blendDeltaY, main->blendDeltaY);
}

void ActivateAllAllocatedAnimations()
{
    struct AnimationListEntry *animation = gAnimation;

    for (; animation < &gAnimation[ARRAY_COUNT(gAnimation)]; animation++)
    {
        if (animation->flags & ANIM_ALLOCATED)
            animation->flags |= (ANIM_ACTIVE | ANIM_QUEUED_TILE_UPLOAD);
    }
}

void DestroyAnimation(struct AnimationListEntry *animation)
{
    struct AnimationListEntry *animation2;
    struct Main *main = &gMain;
    struct OamAttrs *oam;
    u32 var0;
    uintptr_t var1;
    if (animation == NULL)
        return;

    if (animation->animationInfo.animId == 0xFF && animation->animationInfo.personId == 0x16)
    {
        animation2 = FindAnimationFromAnimId(ANIM_APRIL_MAY_ABDOMEN_1);
        if (animation2 != NULL)
            DestroyAnimation(animation2);
        animation2 = FindAnimationFromAnimId(ANIM_APRIL_MAY_ABDOMEN_2);
        if (animation2 != NULL)
            DestroyAnimation(animation2);
    }
    if (animation->flags & ANIM_ALLOCATED)
    {
        void *dst;
        u32 size;
        for (oam = &gOamObjects[animation->animtionOamStartIdx]; oam < &gOamObjects[animation->animtionOamEndIdx]; oam++)
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        main->animationFlags |= 4;
        animation->flags = 0;
        animation->prev->next = animation->next;
        animation->next->prev = animation->prev;
        if (animation->animationInfo.animId == 0xFF)
            return;
        if (animation->animationInfo.paletteSlot > 9)
            return;
        var0 = animation->animationInfo.paletteSlot - 6;
        var1 = 1 << var0;
        main->allocatedObjPltts &= ~var1;
        var1 = (uintptr_t)gObjPaletteBuffer[var0];
        dst = (void*)OBJ_PLTT;
        dst += animation->animationInfo.paletteSlot * 0x20;
        size = *(u32 *)animation->animationInfo.animGfxDataStartPtr * 0x20;
        DmaCopy16(3, var1, dst, size);
    }
}

static void UpdateAllAnimationSprites()
{
    u32 var0 = 0x80;
    struct OamAttrs *oam = &gOamObjects[ARRAY_COUNT(gOamObjects)];
    struct AnimationListEntry *animation;
    for (animation = gAnimation[0].next; animation != NULL; animation = animation->next)
    {
        u32 i, j;
        if ((animation->flags & ANIM_ALLOCATED) == 0)
            continue;
        animation->animtionOamEndIdx = var0;
        if ((gMain.animationFlags & 2) && (animation->flags & ANIM_ACTIVE))
        {
            void *ptr = (void *)animation->spriteData;
            struct SpriteTemplate *spriteTemplates = animation->spriteData;
            s32 xOrigin = animation->animationInfo.xOrigin - gMain.shakeAmountX;
            s32 yOrigin = animation->animationInfo.yOrigin - gMain.shakeAmountY;
            u32 tileNum = animation->tileNum & 0xFFF;
            s32 spriteCount = *(u16 *)ptr;
            struct SpriteSizeData *spriteSizeData = eUnknown_0200AFC0;
            spriteSizeData += var0;
            for (i = 0; i < spriteCount; i++)
            {
                s32 y;
                var0--;
                oam--;
                spriteSizeData--;
                spriteTemplates++;
                *spriteSizeData = gSpriteSizeTable[spriteTemplates->data >> 0xC];
                oam->attr0 = (spriteTemplates->data & 0x3000) << 2; // Sprite Shape
                y = yOrigin + spriteTemplates->y;
                if (y < -64)
                    y = -64;
                if (y > 224)
                    y = 224;
                oam->attr0 |= y & 0xFF;
                if (animation->flags & ANIM_BLEND_ACTIVE)
                    oam->attr0 |= 0x400;
                oam->attr1 = spriteTemplates->data & 0xC000;
                if (animation->flags & ANIM_ENABLE_XFLIP)
                {
                    u16 x = (xOrigin - (spriteTemplates->x + spriteSizeData->width)) & 0x1FF;
                    oam->attr1 |= 0x1000 | x;
                }
                else
                {
                    u16 x = (xOrigin + spriteTemplates->x) & 0x1FF;
                    oam->attr1 |= (*(u8 *)(&animation->spritePriorityMatrixIndex)) << 9 | x;
                }
                oam->attr2 = tileNum | *((u8 *)(&animation->spritePriorityMatrixIndex) + 1) << 10;
                if (animation->frameData->flags & 1)
                    oam->attr2 |= (animation->animationInfo.paletteSlot + ((spriteTemplates->data >> 9) & 7)) << 12;
                else
                    oam->attr2 |= (animation->animationInfo.paletteSlot + ((spriteTemplates->data >> 11) & 1)) << 12;
                tileNum += spriteSizeData->tileSize / TILE_SIZE_4BPP;
            }
        }
        animation->animtionOamStartIdx = animation->animtionOamEndIdx - animation->animationInfo.spriteCount;
        var0 -= animation->animtionOamStartIdx;
        for (var0 -= 1; var0 != -1; var0--)
        {
            oam--;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        }
        var0 = animation->animtionOamStartIdx;
    }
}

void MoveAnimationTilesToRam(bool32 arg0)
{
    struct AnimationListEntry *animation; // r5

    for (animation = gAnimation[0].next; animation != NULL; animation = animation->next)
    {
        void * tileData;
        struct SpriteTemplate * spriteTemplate; // ip
        struct SpriteSizeData * spriteSizeData; // r7
        void * tileDest; // r6
        void * nextTileDest; // r8
        u32 * temp;
        u32 spriteCount; // sl
        u32 palCount; //sp08
        u32 i;

        if(!(animation->flags & ANIM_QUEUED_TILE_UPLOAD))
            continue;
        if(!(animation->flags & ANIM_ACTIVE))
            continue;
        tileDest = arg0 ? eUnknown_0200AFC0 + 0x200 : animation->animationInfo.vramPtr;
        spriteTemplate = animation->spriteData;
        spriteCount = *(u16*)animation->spriteData;
        spriteSizeData = eUnknown_0200AFC0;
        spriteSizeData += animation->animtionOamEndIdx;
        animation->flags &= ~ANIM_QUEUED_TILE_UPLOAD;
        palCount = *(u32*)animation->animationInfo.animGfxDataStartPtr;
        if(palCount & 0x80000000)
        {
            for(i = 0; i < spriteCount; i++)
            {
                void * tileStart;
                //void * tileData;
                u32 * offsets;
                u32 tileNum;
                u32 size;
                spriteTemplate++;
                spriteSizeData--;
                size = spriteSizeData->tileSize;
                nextTileDest = tileDest + size;
                tileNum = (spriteTemplate->data & 0x1FF);
                tileStart = animation->animationInfo.tileDataPtr;
                offsets = (u32*)tileStart;
                tileStart += offsets[tileNum];
                tileData = tileStart;
                while(nextTileDest > tileDest)
                {
                    if(*(u16*)tileData & 0x8000)
                    {
                        u32 repeatCount = *(u16*)tileData & 0x7FFF;
                        DmaFill16(3, *((u16*)tileData+1), tileDest, repeatCount*=2);
                        tileDest += repeatCount;
                        tileData += 4;
                    }
                    else
                    {
                        u32 size = *(u16*)tileData * 2;
                        tileData+=2;
                        DmaCopy16(3, tileData, tileDest, size);
                        tileDest += size;
                        tileData += size;
                    }
                }
            }
        }
        else
        {
            u32 tileNumMask = animation->frameData->flags & 1 ? 0x1FF : 0x7FF;
            for(i = 0; i < spriteCount; i++)
            {
                u16 * sizePtr;
                u32 tileNum;
                spriteTemplate++;
                spriteSizeData--;
                sizePtr = &spriteSizeData->tileSize; // !! SCRUB C probably fakematch
                tileData = animation->animationInfo.tileDataPtr + (spriteTemplate->data & tileNumMask) * TILE_SIZE_4BPP;
                DmaCopy16(3, tileData, tileDest, *sizePtr);
                tileDest += *sizePtr;
            }
        }
        if(animation->flags & ANIM_QUEUED_PAL_UPLOAD)
        {
            u8 * ptr;
            uintptr_t dest;
            u32 palOffset = animation->animationInfo.paletteSlot & 0xF;

            palOffset *= 32;
            dest = OBJ_PLTT + palOffset;
            palCount *= 32;
            tileData = animation->animationInfo.animGfxDataStartPtr+4;
            DmaCopy16(3, tileData, dest, palCount);
            animation->flags &= ~ANIM_QUEUED_PAL_UPLOAD;
        }
    }
}

void UpdateAnimations(u32 arg0)
{
    struct Main * main = &gMain;
    struct AnimationListEntry *animation2 = gAnimation;
    struct CourtScroll * courtScroll = &gCourtScroll;
    if(main->animationFlags & 1)
    {
        struct AnimationListEntry *animation;
        for (animation = animation2->next; animation != NULL; animation = animation->next)
        {   
            if(animation->animationInfo.animId >= 12 && animation->animationInfo.animId <= 16)
            {
                if(main->currentBG != animation->bgId)
                { 
                    if(main->currentRoomId == animation->roomId)
                        ChangeAnimationActivity(animation, 0);
                    else
                        DestroyAnimation(animation);
                    continue;
                }
                else
                {
                    if(!(animation->flags & ANIM_ACTIVE))
                    {
                        if(main->currentBgStripe == 0)
                        {
                            PlayAnimation(animation->animationInfo.animId);
                            ChangeAnimationActivity(animation, 1);
                        }
                    }
                }
            }
            else if(animation->animationInfo.animId >= 31 && animation->animationInfo.animId <= 61)
            {
                if(arg0 != animation->bgId)
                {
                    DestroyAnimation(animation);
                    continue;
                }
            }
            else if(animation->animationInfo.animId >= 25 && animation->animationInfo.animId <= 61)
            {
                if(main->currentBG != animation->bgId)
                    DestroyAnimation(animation);
            }
            if(animation->flags & ANIM_BLEND_ACTIVE)
            {
                if(!(animation->animationInfo.animId <= 24 && animation->animationInfo.animId >= 17))
                    UpdateAnimationBlend(animation);
                continue;
            }
            if(animation->flags & ANIM_PLAYING)
            {
                if(main->blendMode == 0)
                {
                    if(AdvanceAnimationFrame(animation) == 0)
                        continue;
                }
            }
            if(animation->animationInfo.animId <= 0xB)
                gSpecialAnimationEffectFunctions[animation->animationInfo.animId - 1](animation);
            if(courtScroll->state)
            {
                if(animation->animationInfo.animId == 0xFF)
                    UpdatePersonAnimationForCourtScroll(animation);
            }
        }
    }
    if(main->animationFlags & 0x4)
    {
        main->animationFlags &= ~0x4;
        ClearAllAnimationSprites();
    }
    UpdateAllAnimationSprites();
}

void ScrollMode2AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    animation->animationInfo.xOrigin += gCourtScroll01AnimOffsets[courtScroll->frameCounter];
    if(courtScroll->frameCounter == 0xF)
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, -110, 80, 0);
}

void ScrollMode3AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    animation->animationInfo.xOrigin -= gCourtScroll01AnimOffsets[0x1E - courtScroll->frameCounter];
    if(courtScroll->frameCounter == 0xF)
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, 350, 80, 0);
}

void ScrollMode4AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    animation->animationInfo.xOrigin += gCourtScroll02AnimOffsets[courtScroll->frameCounter];
    if(courtScroll->frameCounter == 0xE)
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, -84, 80, 0);
}

void ScrollMode5AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    animation->animationInfo.xOrigin -= gCourtScroll03AnimOffsets[courtScroll->frameCounter];
    if(courtScroll->frameCounter == 0xE)
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, 220, 80, 0);
}

void ScrollMode0AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    animation->animationInfo.xOrigin -= gCourtScroll02AnimOffsets[courtScroll->frameCounter];
    if(courtScroll->frameCounter == 0xE)
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, 324, 80, 0);
}

void ScrollMode1AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    animation->animationInfo.xOrigin += gCourtScroll03AnimOffsets[courtScroll->frameCounter];
    if(courtScroll->frameCounter == 0xE)
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, 20, 80, 0);
}

static void UpdatePersonAnimationForCourtScroll(struct AnimationListEntry * animation)
{
    struct CourtScroll * courtScroll = &gCourtScroll;
    gCourtScrollPersonAnimationUpdateFuncs[courtScroll->scrollMode](&gAnimation[1], courtScroll);
}

void SetCourtScrollPersonAnim(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    gCourtScroll.scrollMode = arg0 * 2;
    if(arg1 & 1)
        gCourtScroll.scrollMode++;
    gCourtScroll.scrollingPersonAnimId = arg2;
    gCourtScroll.animOffset = arg3;
}

void SpeechBubbleAnimationEffect(struct AnimationListEntry * animation)
{
    s32 rand = (Random() & 3) + 1; // 1 to 4
    s32 rand2 = (Random() & 7) - 4; // -4 to 3
    if(animation->animVar1 == 0)
        animation->specialEffectVar = animation->animationInfo.xOrigin;
    animation->animVar1++;
    if(animation->animVar1 < 0x1F)
    {
        if((animation->animVar1 & 1) != 0)
            animation->animationInfo.xOrigin = animation->specialEffectVar + rand;
        else
            animation->animationInfo.xOrigin = animation->specialEffectVar - rand;
        animation->animationInfo.yOrigin += rand2;
        if(animation->animationInfo.yOrigin > 90)
            animation->animationInfo.yOrigin = 90;
        else if(animation->animationInfo.yOrigin < 70)
            animation->animationInfo.yOrigin = 70;
    }
    else
        animation->animVar1 = 40;
}

void Case3OpeningAnimationEffect(struct AnimationListEntry * animation)
{
    struct Main * main = &gMain;
    if(main->currentBG == 0xFF)
    {
        ChangeAnimationActivity(animation, 0);
        return;
    }
    ChangeAnimationActivity(animation, 1);
    if(main->currentBG == 0x4A)
    {
        if(animation->animationInfo.animId == 5)
            animation->specialEffectVar += 3;
        else if(animation->animationInfo.animId == 6)
            animation->specialEffectVar -= 5;
        else
            animation->specialEffectVar += 1;
    }
    else
    {
        if(animation->animationInfo.animId == 5)
            animation->specialEffectVar -= 3;
        else if(animation->animationInfo.animId == 6)
            animation->specialEffectVar += 5;
        else
            animation->specialEffectVar -= 1;
    }
    animation->animationInfo.xOrigin += animation->specialEffectVar / 20;
    if(animation->specialEffectVar > 20)
        animation->specialEffectVar -= 20;
    else if(animation->specialEffectVar < -20)
        animation->specialEffectVar += 20;
}

void DebugClearRect(u16 arg0, u16 arg1, u16 arg2, u16 arg3);
void sub_10009850(struct AnimationDebug *debugCtx);
void DebugAnimViewerInit(struct DebugContext * debugCtx) {
    u32 i;
    struct IORegisters * ioRegs = &gIORegisters;
    struct AnimationDebug * animDebug = &debugCtx->menu.anim;
    DmaFill16(3, 0, animDebug, sizeof(debugCtx->menu.anim));
    ioRegs->lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON;
    animDebug->savedAnimStart = gAnimation[0].next; 
    InitCurrentAnimationToNull();
    for(i = 0; i < 3; i++) {
        animDebug->anims[i] = gAnimation[1+i];
        DestroyAnimation(&gAnimation[i]); // ! bug?
    }
    animDebug->unkD3 = 0;
    animDebug->unkD2 = 0;
    animDebug->unkD1 = 0;
    animDebug->unkD0 = 1;
    animDebug->unkC7[animDebug->unkD3] = 0;
    animDebug->unkC4[animDebug->unkD3] = 0;
    debugCtx->unk1++;
	sub_10009850(animDebug);
}

struct DebugAnimOffsetsData {
    char * name;
    u32 offset;
};

struct DebugAnimData {
    u8 * gfxData;
    u8 * frameData;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    char * name;
    struct DebugAnimOffsetsData * offsets;
};

struct DebugAnimOffsetsData gDebugAnimMOVEData[] = {
    {"ETC00B ", 0x308},
    {"ETC00A ", 0x2D0},
    {"ETC00A ", 0x2D0},
    {"ETC012 ", 0x340},
    {"SPR200 ", 0x89C},
    {"SPR201 ", 0x8D4},
    {"SPR205 ", 0xB5C},
    {"END", 0x0},
};

struct DebugAnimOffsetsData gDebugAnimITEMData[] = {
	{ "ITA009", 0 },
	{ "ITA00A", 32 },
	{ "ITA00B", 108 },
	{ "ITA00C", 140 },
	{ "ITA00D", 184 },
	{ "ITA00E", 220 },
	{ "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimETCData[] = {
	{ "ETC00B ", 776 },
	{ "ETC00A ", 720 },
	{ "ETC012 ", 832 },
	{ "ETC002A", 0 },
	{ "ETC002B", 296 },
	{ "ETC002C", 592 },
	{ "ETC002D", 624 },
	{ "ETC002E", 656 },
	{ "ETC002F", 688 },
	{ "PL08110", 888 },
	{ "PL08111", 936 },
	{ "SPR000 ", 988 },
	{ "SPR001 ", 1132 },
	{ "SPR100 ", 1372 },
	{ "SPR200 ", 2204 },
	{ "SPR201 ", 2260 },
	{ "SPR202 ", 2316 },
	{ "SPR203 ", 2592 },
	{ "SPR204 ", 2696 },
	{ "SPR205 ", 2908 },
	{ "SPR300 ", 2944 },
	{ "SPR301 ", 2976 },
	{ "SPR302 ", 3060 },
	{ "SPR303 ", 3276 },
	{ "HOT00", 3372 },
	{ "HOT01", 3432 },
	{ "HOT02", 3468 },
	{ "HOT03", 3524 },
	{ "HOT04", 3560 },
	{ "HOT05A", 3628 },
	{ "HOT05B", 3736 },
	{ "HOT06", 3844 },
	{ "HOT07", 3904 },
	{ "HOT08", 3964 },
	{ "HOT09", 4012 },
	{ "HOT0A", 4052 },
	{ "HOT0B", 4088 },
	{ "HOT0C", 4136 },
	{ "HOT0D", 4176 },
	{ "HOT0E", 4216 },
	{ "HOT0F", 4264 },
	{ "HOT10", 4348 },
	{ "HOT11", 4380 },
	{ "HOT12", 4424 },
	{ "HOT13", 4460 },
	{ "HOT14", 4496 },
	{ "HOT15", 4540 },
	{ "HOT16", 4588 },
	{ "END", 0 },
};

struct DebugAnimOffsetsData gDebugAnimPL00Data[] = {
  { "PL00300", 0 },
  { "PL00301", 284 },
  { "PL00302", 784 },
  { "PL00303", 1700 },
  { "PL00304", 2256 },
  { "PL00305", 3828 },
  { "PL00306", 4448 },
  { "PL00307", 4872 },
  { "PL00308", 5616 },
  { "PL00309", 6352 },
  { "PL0030A", 6888 },
  { "PL0030B", 8032 },
  { "PL0030C", 9564 },
  { "PL0030D", 10560 },
  { "PL0030E", 11172 },
  { "PL0030F", 12868 },
  { "PL00310", 2720 },
  { "PL00311", 13308 },
  { "PL00312", 13764 },
  { "PL00313", 11832 },
  { "PL00314", 12172 },
  { "PL00315", 14508 },
  { "PL00316", 14780 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL01Data[] = {
	{ "PL01100", 0 },
	{ "PL01101", 356 },
	{ "PL01102", 1296 },
	{ "PL01103", 1672 },
	{ "PL01104", 2536 },
	{ "PL01105", 2924 },
	{ "PL01106", 3816 },
	{ "PL01107", 4180 },
	{ "PL01108", 9072 },
	{ "PL01109", 9356 },
	{ "PL0110A", 17908 },
	{ "PL0110B", 18344 },
	{ "PL0110C", 19348 },
	{ "PL0110D", 19760 },
	{ "PL0110E", 10080 },
	{ "PL0110F", 10456 },
	{ "PL01110", 11320 },
	{ "PL01111", 11708 },
	{ "PL01112", 12600 },
	{ "PL01113", 13012 },
	{ "PL01114", 20708 },
	{ "PL01115", 21152 },
	{ "PL01116", 25948 },
	{ "PL01117", 22100 },
	{ "PL01118", 13960 },
	{ "PL01200", 5016 },
	{ "PL01201", 5300 },
	{ "PL01202", 6072 },
	{ "PL01203", 6376 },
	{ "PL01204", 7072 },
	{ "PL01205", 7388 },
	{ "PL01206", 8112 },
	{ "PL01207", 8404 },
	{ "PL01208", 14060 },
	{ "PL01209", 14272 },
	{ "PL0120A", 22676 },
	{ "PL0120B", 23016 },
	{ "PL0120C", 23796 },
	{ "PL0120D", 24124 },
	{ "PL0120E", 14828 },
	{ "PL0120F", 15132 },
	{ "PL01210", 5016 },
	{ "PL01211", 16120 },
	{ "PL01212", 16788 },
	{ "PL01213", 17128 },
	{ "PL01214", 24876 },
	{ "PL01215", 25224 },
	{ "PL01300", 26604 },
	{ "PL01301", 26944 },
	{ "PL01302", 27724 },
	{ "PL01303", 28008 },
	{ "PL01304", 28672 },
	{ "PL01305", 28920 },
	{ "PL01306", 29560 },
	{ "PL01307", 30100 },
	{ "PL01308", 30992 },
	{ "PL01309", 31348 },
	{ "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL02Data[] = {
  { "PL02100", 0 },
  { "PL02101", 436 },
  { "PL02102", 1324 },
  { "PL02103", 1700 },
  { "PL02104", 2468 },
  { "PL02105", 2892 },
  { "PL02106", 3756 },
  { "PL02107", 4120 },
  { "PL02300", 4860 },
  { "PL02301", 5188 },
  { "PL02302", 5860 },
  { "PL02303", 6184 },
  { "PL02304", 6852 },
  { "PL02305", 7192 },
  { "PL02306", 7888 },
  { "PL02307", 8228 },
  { "PL02308", 8924 },
  { "PL02309", 9408 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL03Data[] = {
  { "PL03100", 0 },
  { "PL03101", 388 },
  { "PL03102", 1180 },
  { "PL03103", 1636 },
  { "PL03104", 2500 },
  { "PL03105", 2920 },
  { "PL03106", 3712 },
  { "PL03300", 4216 },
  { "PL03301", 4436 },
  { "PL03302", 4892 },
  { "PL03303", 5204 },
  { "PL03304", 5700 },
  { "PL03305", 5968 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL04Data[] = {
  { "PL04300", 0 },
  { "PL04301", 260 },
  { "PL04302", 708 },
  { "PL04303", 1048 },
  { "PL04304", 1436 },
  { "PL04305", 1792 },
  { "PL04306", 2428 },
  { "PL04307", 2796 },
  { "PL04308", 3372 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL05Data[] = {
  { "PL05100", 15068 },
  { "PL05101", 15504 },
  { "PL05102", 16392 },
  { "PL05103", 16828 },
  { "PL05104", 17716 },
  { "PL05105", 18252 },
  { "PL05106", 36536 },
  { "PL05107", 37080 },
  { "PL05108", 19744 },
  { "PL05109", 20224 },
  { "PL0510A", 38184 },
  { "PL0510B", 39352 },
  { "PL05200", 21968 },
  { "PL05201", 22428 },
  { "PL05202", 23364 },
  { "PL05203", 23824 },
  { "PL05204", 24760 },
  { "PL05205", 25328 },
  { "PL05206", 40168 },
  { "PL05207", 40724 },
  { "PL05208", 26908 },
  { "PL05209", 27412 },
  { "PL05300", 0 },
  { "PL05301", 400 },
  { "PL05302", 4092 },
  { "PL05303", 4660 },
  { "PL05304", 5084 },
  { "PL05305", 7928 },
  { "PL05306", 8340 },
  { "PL05307", 1216 },
  { "PL05308", 1712 },
  { "PL05309", 9852 },
  { "PL0530A", 11116 },
  { "PL0530B", 5948 },
  { "PL0530C", 6764 },
  { "PL0530D", 12612 },
  { "PL0530E", 13048 },
  { "PL0530F", 2720 },
  { "PL05310", 14528 },
  { "PL05311", 14728 },
  { "PL05312", 13936 },
  { "PL05313", 14976 },
  { "PL05314", 3932 },
  { "PL05315", 29252 },
  { "PL05316", 29712 },
  { "PL05317", 30648 },
  { "PL05318", 31108 },
  { "PL05319", 32044 },
  { "PL0531A", 32612 },
  { "PL0531B", 41852 },
  { "PL0531C", 42408 },
  { "PL0531D", 34192 },
  { "PL0531E", 34696 },
  { "PL0531F", 43536 },
  { "PL05320", 44736 },
  { "PL05321", 45576 },
  { "PL05322", 45700 },
  { "PL05323", 46224 },
  { "PL05324", 46296 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL06Data[] = {
  { "PL06100", 0 },
  { "PL06101", 304 },
  { "PL06102", 928 },
  { "PL06103", 1648 },
  { "PL06104", 2896 },
  { "PL06105", 3456 },
  { "PL06106", 8432 },
  { "PL06107", 8848 },
  { "PL06108", 11240 },
  { "PL06109", 11520 },
  { "PL0610A", 15696 },
  { "PL0610B", 16180 }, // ! crashes
  { "PL0610C", 17332 },
  { "PL0610D", 17876 },
  { "PL0610E", 12072 },
  { "PL0610F", 12508 },
  { "PL06110", 21064 },
  { "PL06111", 21148 },
  { "PL06200", 4060 },
  { "PL06201", 4388 },
  { "PL06202", 5060 },
  { "PL06203", 5844 },
  { "PL06204", 7188 },
  { "PL06205", 7780 },
  { "PL06206", 9784 },
  { "PL06207", 10232 },
  { "PL06208", 13396 },
  { "PL06209", 13700 },
  { "PL0620A", 18380 },
  { "PL0620B", 18888 },
  { "PL0620C", 19968 }, // ! crashes
  { "PL0620D", 20536 }, // ! crashes
  { "PL0620E", 14300 },
  { "PL0620F", 14760 },
  { "PL06210", 21624 },
  { "PL06211", 21716 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL07Data[] = {
  { "PL07200", 620 },
  { "PL07201", 1204 },
  { "PL07202", 7256 },
  { "PL07203", 8108 },
  { "PL07204", 8748 },
  { "PL07205", 1896 },
  { "PL07206", 2264 },
  { "PL07207", 4520 },
  { "PL07208", 5252 },
  { "PL07209", 11300 },
  { "PL0720A", 6384 },
  { "PL0720B", 6704 },
  { "PL0720C", 11460 },
  { "PL0720D", 12272 },
  { "PL0720E", 0 },
  { "PL0710F", 2908 },
  { "PL07110", 3660 },
  { "PL07111", 9572 },
  { "PL07112", 10332 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL08Data[] = {
  { "PL08200", 0 },
  { "PL08201", 388 },
  { "PL08202", 1184 },
  { "PL08203", 1724 },
  { "PL08204", 2640 },
  { "PL08205", 3052 },
  { "PL08206", 9228 },
  { "PL08207", 3896 },
  { "PL08208", 4192 },
  { "PL08209", 4584 },
  { "PL0820A", 4856 },
  { "PL0820B", 5416 },
  { "PL0820C", 5768 },
  { "PL0820D", 9564 },
  { "PL0820E", 6472 },
  { "PL0820F", 6620 },
  { "PL08112", 7436 },
  { "PL08113", 7800 },
  { "PL08114", 8540 },
  { "PL08115", 8836 },
  { "PL08216", 10568 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL09Data[] = {
  { "PL09300", 0 },
  { "PL09301", 108 },
  { "PL09302", 524 },
  { "PL09303", 956 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL0AData[] = {
  { "PL0A200", 0 },
  { "PL0A201", 316 },
  { "PL0A202", 864 },
  { "PL0A203", 1364 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL0BData[] = {
  { "PL0B100", 9492 },
  { "PL0B101", 10524 },
  { "PL0B102", 11696 },
  { "PL0B103", 12084 },
  { "PL0B104", 1268 },
  { "PL0B105", 2484 },
  { "PL0B106", 5040 },
  { "PL0B107", 5472 },
  { "PL0B208", 0 },
  { "PL0B209", 448 },
  { "PL0B20A", 7812 },
  { "PL0B20B", 20828 },
  { "PL0B20C", 6568 },
  { "PL0B20D", 6920 },
  { "PL0B20E", 12744 },
  { "PL0B20F", 13860 },
  { "PL0B210", 15128 },
  { "PL0B211", 15540 },
  { "PL0B112", 16240 },
  { "PL0B113", 16316 },
  { "PL0B114", 16616 },
  { "PL0B115", 16952 },
  { "PL0B116", 17476 },
  { "PL0B117", 17744 },
  { "PL0B118", 18416 },
  { "PL0B219", 18488 },
  { "PL0B21A", 18740 },
  { "PL0B21B", 19028 },
  { "PL0B21C", 19280 },
  { "PL0B21D", 19832 },
  { "PL0B21E", 20060 },
  { "PL0B11F", 3464 },
  { "PL0B120", 4024 },
  { "PL0B121", 8556 },
  { "PL0B122", 21960 },
  { "PL0B123", 20120 },
  { "PL0B124", 20456 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL0CData[] = {
  { "PL0C200", 0 },
  { "PL0C201", 272 },
  { "PL0C202", 1296 },
  { "PL0C203", 1728 },
  { "PL0C204", 2232 },
  { "PL0C205", 2892 },
  { "PL0C208", 3604 },
  { "PL0C206", 4956 },
  { "PL0C207", 5480 },
  { "PL0C209", 7100 },
  { "PL0C20A", 6212 },
  { "PL0C20B", 7068 },
  { "PL0C20C", 4100 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL0DData[] = {
  { "PL0D100", 0 },
  { "PL0D101", 308 },
  { "PL0D102", 712 },
  { "PL0D103", 1188 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL0EData[] = {
  { "PL0E100", 0 },
  { "PL0E101", 328 },
  { "PL0E202", 1140 },
  { "PL0E203", 1812 },
  { "PL0E104", 2080 },
  { "PL0E105", 2736 },
  { "PL0E206", 3688 },
  { "PL0E207", 4240 },
  { "PL0E108", 5052 },
  { "PL0E109", 5392 },
  { "PL0E20A", 6132 },
  { "PL0E20B", 6412 },
  { "PL0E20C", 7032 },
  { "PL0E10D", 7324 },
  { "PL0E10E", 7904 },
  { "PL0E20F", 8592 },
  { "PL0E210", 9072 },
  { "PL0E211", 9640 },
  { "PL0E212", 9860 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL0FData[] = {
  { "PL0F100", 0 },
  { "PL0F101", 220 },
  { "PL0F102", 816 },
  { "PL0F103", 1012 },
  { "PL0F104", 1544 },
  { "PL0F105", 1752 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL10Data[] = {
  { "PL10200", 0 },
  { "PL10201", 172 },
  { "PL10202", 1456 },
  { "PL10203", 1772 },
  { "PL10104", 2548 },
  { "PL10105", 2728 },
  { "PL10106", 576 },
  { "PL10107", 836 },
  { "PL10108", 3448 },
  { "PL10109", 3884 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL11Data[] = {
  { "PL11100", 0 },
  { "PL11101", 292 },
  { "PL11202", 1012 },
  { "PL11203", 1376 },
  { "PL11104", 2208 },
  { "PL11105", 2500 },
  { "PL11206", 3228 },
  { "PL11207", 3592 },
  { "PL11108", 4488 },
  { "PL11109", 4972 },
  { "PL1120A", 5668 },
  { "PL1120B", 6272 },
  { "PL1120C", 7136 },
  { "PL1120D", 7884 },
  { "PL1120E", 8100 },
  { "PL1120F", 8836 },
  { "PL11210", 9104 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL12Data[] = {
  { "PL12100", 0 },
  { "PL12101", 1412 },
  { "PL12202", 2544 },
  { "PL12203", 4012 },
  { "PL12204", 5188 },
  { "PL12205", 5504 },
  { "PL12106", 5624 },
  { "PL12107", 6488 },
  { "PL12208", 7496 },
  { "PL12209", 8388 },
  { "PL1220A", 9428 },
  { "PL1220B", 9644 },
  { "PL1210C", 9756 },
  { "PL1210D", 10304 },
  { "PL1220E", 11176 },
  { "PL1220F", 11604 },
  { "PL12210", 12308 },
  { "PL12211", 13052 },
  { "PL12212", 13152 },
  { "PL12213", 13348 },
  { "PL12214", 13844 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL13Data[] = {
  { "PL13100", 0 },
  { "PL13101", 196 },
  { "PL13202", 704 },
  { "PL13203", 900 },
  { "PL13104", 1408 },
  { "PL13105", 1604 },
  { "PL13206", 2124 },
  { "PL13207", 2320 },
  { "PL13108", 2840 },
  { "PL13109", 2904 },
  { "PL1320A", 3164 },
  { "PL1320B", 3228 },
  { "PL1310C", 3488 },
  { "PL1310D", 3656 },
  { "PL1320E", 4068 },
  { "PL1320F", 4236 },
  { "PL13210", 4648 },
  { "PL13211", 4772 },
  { "PL13112", 4832 },
  { "PL13113", 5132 },
  { "PL13214", 5656 },
  { "PL13215", 5956 },
  { "PL13216", 6480 },
  { "PL13117", 6532 },
  { "PL13118", 6900 },
  { "PL13219", 7424 },
  { "PL1321A", 7792 },
  { "PL1321B", 8316 },
  { "PL1321C", 8524 },
  { "PL1321D", 8748 },
  { "PL1321E", 9248 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL14Data[] = {
  { "PL14300", 0 },
  { "PL14301", 180 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL15Data[] = {
  { "PL15300", 0 },
  { "PL15301", 220 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL16Data[] = {
  { "PL16100", 0 },
  { "PL16101", 392 },
  { "PL16202", 976 },
  { "PL16203", 1296 },
  { "PL16104", 1760 },
  { "PL16105", 2068 },
  { "PL16206", 2412 },
  { "PL16207", 2680 },
  { "PL16108", 2964 },
  { "PL16109", 3368 },
  { "PL1620A", 4100 },
  { "PL1620B", 4432 },
  { "PL1620C", 5020 },
  { "PL1620D", 5188 },
  { "PL1610E", 5276 },
  { "PL1610F", 5568 },
  { "PL16210", 5840 },
  { "PL16211", 6084 },
  { "PL16112", 6308 },
  { "PL16113", 6592 },
  { "PL16214", 6996 },
  { "PL16215", 7220 },
  { "PL16116", 7524 },
  { "PL16117", 7880 },
  { "PL16218", 8404 },
  { "PL16219", 8700 },
  { "PL1611A", 9124 },
  { "PL1611B", 9444 },
  { "PL1621C", 9908 },
  { "PL1621D", 10168 },
  { "PL1611E", 10532 },
  { "PL1611F", 10616 },
  { "PL16220", 10852 },
  { "PL16221", 10916 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL17Data[] = {
  { "PL17100", 0 },
  { "PL17101", 576 },
  { "PL17202", 1256 },
  { "PL17203", 1688 },
  { "PL17104", 2224 },
  { "PL17105", 2768 },
  { "PL17206", 3348 },
  { "PL17207", 3772 },
  { "PL17108", 4232 },
  { "PL17209", 5060 },
  { "PL1720A", 5720 },
  { "PL1720B", 6196 },
  { "PL1710C", 6288 },
  { "PL1710D", 6864 },
  { "PL1720E", 7592 },
  { "PL1720F", 8048 },
  { "PL17110", 8628 },
  { "PL17111", 9224 },
  { "PL17212", 9964 },
  { "PL17213", 10440 },
  { "PL17114", 11036 },
  { "PL17115", 11480 },
  { "PL17216", 12300 },
  { "PL17217", 12684 },
  { "PL17218", 13364 },
  { "PL17219", 13936 },
  { "PL1721A", 13968 },
  { "PL1721B", 14164 },
  { "PL1721C", 14580 },
  { "PL1721D", 14788 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL18Data[] = {
  { "PL18300", 0 },
  { "PL18301", 288 },
  { "PL18302", 856 },
  { "PL18303", 1096 },
  { "PL18304", 1596 },
  { "PL18305", 1868 },
  { "PL18306", 2116 },
  { "PL18307", 3132 },
  { "PL18308", 3248 },
  { "PL18309", 3852 },
  { "PL1830A", 5040 },
  { "PL1830B", 5436 },
  { "PL1830C", 6252 },
  { "PL1830D", 7188 },
  { "PL1830E", 7312 },
  { "PL1830F", 8312 },
  { "PL18110", 8800 },
  { "PL18111", 9160 },
  { "PL18112", 9916 },
  { "PL18113", 10300 },
  { "PL18114", 11076 },
  { "PL18115", 12064 },
  { "PL18316", 14104 },
  { "PL18317", 14440 },
  { "PL18318", 8516 },
  { "END", 0 }
};

struct DebugAnimOffsetsData gDebugAnimPL19Data[] = {
  { "PL19200", 0 },
  { "PL19201", 220 },
  { "END", 0 } 
};

struct DebugAnimData gDebugAnimData[] = {
	{ gGfxPixAnimationTileset02, gGfxSeqAnimation07, 15, 0, 0, 0, "MOVE ", gDebugAnimMOVEData },
	{ gGfxPixAnimationTileset01, gGfxSeqAnimation01, 12, 0, 0, 0, "ITEM", gDebugAnimITEMData },
	{ gGfxPixAnimationTileset02, gGfxSeqAnimation07, 15, 0, 0, 0, "ETC ", gDebugAnimETCData },
	{ gGfxPixAnimationChar01, gGfxSeqAnimationChar01, 37, PERSON_ANIM_PHOENIX, 0, 0, "PL00", gDebugAnimPL00Data },
	{ gGfxPixAnimationChar02, gGfxSeqAnimationChar02, 28, PERSON_ANIM_MAYA, 0, 0, "PL01", gDebugAnimPL01Data },
	{ gGfxPixAnimationChar03, gGfxSeqAnimationChar03, 28, PERSON_ANIM_SUMMONED_MIA, 0, 0, "PL02", gDebugAnimPL02Data },
	{ gGfxPixAnimationChar04, gGfxSeqAnimationChar04, 28, PERSON_ANIM_MIA, 0, 0, "PL03", gDebugAnimPL03Data },
	{ gGfxPixAnimationChar05, gGfxSeqAnimationChar05, 19, PERSON_ANIM_JUDGE, 0, 0, "PL04", gDebugAnimPL04Data },
	{ gGfxPixAnimationChar06, gGfxSeqAnimationChar06, 38, PERSON_ANIM_EDGEWORTH, 0, 0, "PL05", gDebugAnimPL05Data },
	{ gGfxPixAnimationChar07, gGfxSeqAnimationChar07, 38, PERSON_ANIM_GUMSHOE, 0, 0, "PL06", gDebugAnimPL06Data },
	{ gGfxPixAnimationChar08, gGfxSeqAnimationChar08, 36, PERSON_ANIM_REDD_WHITE, 0, 0, "PL07", gDebugAnimPL07Data },
	{ gGfxPixAnimationChar09, gGfxSeqAnimationChar09, 30, PERSON_ANIM_APRIL_MAY, 0, 0, "PL08", gDebugAnimPL08Data },
	{ gGfxPixAnimationChar10, gGfxSeqAnimationChar10, 23, PERSON_ANIM_WINSTON_PAYNE, 0, 0, "PL09", gDebugAnimPL09Data },
	{ gGfxPixAnimationChar11, gGfxSeqAnimationChar11, 35, PERSON_ANIM_BELLBOY, 0, 0, "PL0A", gDebugAnimPL0AData },
	{ gGfxPixAnimationChar12, gGfxSeqAnimationChar12, 39, PERSON_ANIM_LARRY_BUTZ, 0, 0, "PL0B", gDebugAnimPL0BData },
	{ gGfxPixAnimationChar13, gGfxSeqAnimationChar13, 38, PERSON_ANIM_FRANK_SAWHIT, 0, 0, "PL0C", gDebugAnimPL0CData },
	{ gGfxPixAnimationChar14, gGfxSeqAnimationChar14, 33, PERSON_ANIM_MARVIN_GROSSBERG, 0, 0, "PL0D", gDebugAnimPL0DData },
	{ gGfxPixAnimationChar15, gGfxSeqAnimationChar15, 29, PERSON_ANIM_WENDY_OLDBAG, 0, 0, "PL0E", gDebugAnimPL0EData },
	{ gGfxPixAnimationChar16, gGfxSeqAnimationChar16, 14, PERSON_ANIM_PENNY_NICHOLS, 0, 0, "PL0F", gDebugAnimPL0FData },
	{ gGfxPixAnimationChar17, gGfxSeqAnimationChar17, 39, PERSON_ANIM_WILL_POWERS, 0, 0, "PL10", gDebugAnimPL10Data },
	{ gGfxPixAnimationChar18, gGfxSeqAnimationChar18, 39, PERSON_ANIM_SAL_MANELLA, 0, 0, "PL11", gDebugAnimPL11Data },
	{ gGfxPixAnimationChar19, gGfxSeqAnimationChar19, 29, PERSON_ANIM_DEE_VASQUEZ, 0, 0, "PL12", gDebugAnimPL12Data },
	{ gGfxPixAnimationChar20, gGfxSeqAnimationChar20, 18, PERSON_ANIM_CODY_HACKINS, 0, 0, "PL13", gDebugAnimPL13Data },
	{ gGfxPixAnimationChar21, gGfxSeqAnimationChar21, 7,  PERSON_ANIM_BUSTUP_PHOENIX, 0, 0, "PL14", gDebugAnimPL14Data },
	{ gGfxPixAnimationChar22, gGfxSeqAnimationChar22, 10, PERSON_ANIM_BUSTUP_EDGEWORTH, 0, 0, "PL15", gDebugAnimPL15Data },
	{ gGfxPixAnimationChar23, gGfxSeqAnimationChar23, 24, PERSON_ANIM_LOTTA_HART, 0, 0, "PL16", gDebugAnimPL16Data },
	{ gGfxPixAnimationChar24, gGfxSeqAnimationChar24, 29, PERSON_ANIM_YANNI_YOGI, 0, 0, "PL17", gDebugAnimPL17Data },
	{ gGfxPixAnimationChar25, gGfxSeqAnimationChar25, 36, PERSON_ANIM_MANFRED_VONKARMA, 0, 0, "PL18", gDebugAnimPL18Data },
	{ gGfxPixAnimationChar26, gGfxSeqAnimationChar26, 10, PERSON_ANIM_POLLY, 0, 0, "PL19", gDebugAnimPL19Data }
};

void sub_10009850(struct AnimationDebug *debugCtx) // ! should take a normal debugcontext
{
  int unkD3; // eax
  struct AnimationListEntry *animation; // esi
  unsigned int i; // eax
  int v5; // ecx
  int v6; // edx
  struct AnimationListEntry *v7; // ecx
  u8 *name; // edx
  int v9; // ecx
  int v10; // edx
  struct AnimationListEntry  *v11; // ecx
  u8 *v12; // edx
  int v13; // ecx
  int v14; // edx
  struct AnimationListEntry  *v15; // ecx
  u8 *v16; // edx
  int v17; // ecx
  int v18; // edx
  struct AnimationListEntry  *v19; // ecx
  u8 *v20; // edx
  u8 *v21; // ecx
  char v22; // al
  int v23; // edx
  int v24; // eax
  u8 currentBG; // cl
  u8 * animFrameDataStartPtr; // ecx
  u8 * animGfxDataStartPtr; // ebx
  u8 *v28; // ebx
  unsigned int v29; // edi
  unsigned int paletteSlot; // eax
  u8 *v31; // ebx
  struct SpriteTemplate *v32; // edx
  u8 * vramPtr; // ecx

  unkD3 = debugCtx->unkD3;
  animation = &gAnimation[unkD3 + 1];
  debugCtx->unkCA[unkD3] = 0;
  for ( i = 0; i < 255; i++)
  {
    v21 = gDebugAnimData[debugCtx->unkC4[debugCtx->unkD3]].offsets[i].name;
    if ( *v21 == 'E' && v21[1] == 'N' && v21[2] == 'D' )
      break;
    debugCtx->unkCA[debugCtx->unkD3]++;
  }
  debugCtx->unkCD[debugCtx->unkD3] = 0;
  debugCtx->unkD2 = 0;
  ClearAllAnimationSprites();
  DestroyAnimation(animation);
  DmaFill16(3, 0, animation, 0x40);
  v22 = debugCtx->unkC4[debugCtx->unkD3];
  if ( v22 )
  {
    if ( v22 == 1 )
    {
      animation->animationInfo.animId = 12;
    }
    else if ( v22 == 2 )
    {
      animation->animationInfo.animId = 17;
    }
    else
    {
      animation->animationInfo.animId = 255;
      animation->animationInfo.personId = gDebugAnimData[debugCtx->unkC4[debugCtx->unkD3]].unk9;
    }
  }
  else
  {
    animation->animationInfo.animId = 1;
  }
  animation->flags = 1895825408;
  animation->animationInfo.vramPtr = (u8*)(12288 * (debugCtx->unkD3 + 182960));
  animation->animationInfo.animGfxDataStartPtr = gDebugAnimData[debugCtx->unkC4[debugCtx->unkD3]].gfxData;
  v23 = debugCtx->unkD3;
  animation->animationInfo.animFrameDataStartPtr = gDebugAnimData[debugCtx->unkC4[v23]].frameData
                                           + gDebugAnimData[debugCtx->unkC4[v23]].offsets[debugCtx->unkC7[v23]].offset;
  animation->animationInfo.paletteSlot = 5 * debugCtx->unkD3;
  currentBG = gMain.currentBG;
  animation->animationInfo.spriteCount = gDebugAnimData[debugCtx->unkC4[debugCtx->unkD3]].unk8;
  //LOBYTE(v24) = debugCtx->unkD3;
  animation->roomId = gMain.currentRoomId;
  animation->bgId = currentBG;
  animFrameDataStartPtr = animation->animationInfo.animFrameDataStartPtr;
  animation->animationInfo.priority = debugCtx->unkD3;
  animation->frameDurationCounter = 0;
  animation->rotationAmount = 0;
  animGfxDataStartPtr = animation->animationInfo.animGfxDataStartPtr;
  animation->frameData = (void*)animFrameDataStartPtr;
  animation->animationInfo.xOrigin = 120;
  animation->animationInfo.yOrigin = 80;
  v28 = &animGfxDataStartPtr[*((u32 *)animFrameDataStartPtr + 1)];
  animation->animationInfo.animGfxDataStartPtr = v28;
  paletteSlot = animation->animationInfo.paletteSlot;
  v29 = (*(u32 *)v28) * 0x20;
  animation->animationInfo.tileDataPtr = v28 + 4 + v29;
  v31 = &v28[paletteSlot >> 4];
  animation->frameData = (struct AnimationFrame *)(animFrameDataStartPtr + 8);;
  animation->spriteData = (void *)(animFrameDataStartPtr + animation->frameData->spriteDataOffset);
  animation->tileNum = (uintptr_t)animation->animationInfo.vramPtr >> 5;
  animation->spritePriorityMatrixIndex = 0x200; // ! does a u8 store
  DmaCopy16(3, v31 + 4, (32 * ((paletteSlot & 0xF) - 64487408)), v29);
  PutAnimationInAnimList(animation);
}

void DebugAnimViewerMain(struct DebugContext *debugCtx) {
    int unkD0;                         // ebp
    struct AnimationListEntry *v2;            // edi
    u16 pressedKeys;                   // ax
    bool32 v4;                           // sf
    u8 v5;                             // al
    char v6;                           // al
    int v7;                            // edx
    int v8;                            // eax
    char v9;                           // cl
    int v11;                           // ecx
    int v12;                           // eax
    char *v13;                         // eax
    int v14;                           // edx
    int v15;                           // eax
    int v16;                           // eax
    struct AnimationFrame *frameData;  // eax
    s32 flags;                         // eax
    char v19;                          // al
    char *v20;                         // eax
    int v21;                           // ebp
    int v22;                           // ebp
    int v23;                           // ebp
    int v24;                           // ebp
    unsigned int xOrigin;              // eax
    unsigned int yOrigin;              // eax
    int v27;                           // ebp
    int v28;                           // ebp
    int v29;                           // ebp
    int v30;                           // ebp
    unsigned int v31;                  // esi
    struct AnimationDebug * animDebug = &debugCtx->menu.anim;
    
    unkD0 = animDebug->unkD0;
    v2 = &gAnimation[animDebug->unkD3 + 1];
    DebugClearRect(0, 0x10u, 1u, 0x14u);
    if ((gJoypad.pressedKeys & 2) != 0) {
        animDebug->unkD0 = animDebug->unkD0 != 1 ? 1 : 10;
    }
    
    if ((gJoypad.pressedKeys & 0x40) != 0) {
        animDebug->unkD1--;
        if (animDebug->unkD1 < 0) animDebug->unkD1 = 5;
    } else if ((gJoypad.pressedKeys & 0x80u) != 0) {
        animDebug->unkD1++;
        if (animDebug->unkD1 > 5) animDebug->unkD1 = 0;
    }

    switch (animDebug->unkD1) {
        case 0:
            if (gJoypad.pressedKeys & 0x20) {
                animDebug->unkD3--;
                if (animDebug->unkD3 < 0) animDebug->unkD3 = 2;
            } else if (gJoypad.pressedKeys & 0x10) {
                animDebug->unkD3++;
                if (animDebug->unkD3 > 2) animDebug->unkD3 = 0;
            }
            if ((gJoypad.pressedKeys & 1) != 0) {
                if ((v2->flags & 0x10000000) == 0)
                    sub_10009850(animDebug);
                else
                    DestroyAnimation(v2);
            }
            break;
        case 1:
            if ((gJoypad.pressedKeys & 0x20) != 0) {
                --animDebug->unkC4[animDebug->unkD3];
                v7 = animDebug->unkD3;
                if (animDebug->unkC4[v7] < 0) animDebug->unkC4[v7] = 28;
                animDebug->unkC7[animDebug->unkD3] = 0;
                animDebug->unkCD[animDebug->unkD3] = 0;
                animDebug->unkD2 = 0;
                sub_10009850(animDebug);
            } else if ((gJoypad.pressedKeys & 0x10) != 0) {
                ++animDebug->unkC4[animDebug->unkD3];
                v8 = animDebug->unkD3;
                if (animDebug->unkC4[v8] >= 29) animDebug->unkC4[v8] = 0;
                animDebug->unkC7[animDebug->unkD3] = 0;
                animDebug->unkCD[animDebug->unkD3] = 0;
                animDebug->unkD2 = 0;
                sub_10009850(animDebug);
            }
            break;
        case 2:
            if ((gJoypad.pressedKeys & 0x20) != 0) {
                --animDebug->unkC7[animDebug->unkD3];
                v11 = animDebug->unkD3;
                if (animDebug->unkC7[v11] < 0)
                    animDebug->unkC7[v11] = animDebug->unkCA[v11] - 1;
                v12 = animDebug->unkD3;
                animDebug->unkD2 = 0;
                animDebug->unkCD[v12] = 0;
                SetAnimationFrameOffset(
                    v2, gDebugAnimData[animDebug->unkC4[animDebug->unkD3]].offsets[animDebug->unkC7[animDebug->unkD3]].offset);
                v2->flags = (v2->flags & 0x7EEFFFFF) | 0x1000000;
                v2->rotationAmount = 0;
            } else if ((gJoypad.pressedKeys & 0x10) != 0) {
                animDebug->unkC7[animDebug->unkD3]++;
                if (animDebug->unkC7[animDebug->unkD3] >= animDebug->unkCA[animDebug->unkD3])
                    animDebug->unkC7[animDebug->unkD3] = 0;
                animDebug->unkD2 = 0;
                animDebug->unkCD[animDebug->unkD3] = 0;
                SetAnimationFrameOffset(
                    v2, gDebugAnimData[animDebug->unkC4[animDebug->unkD3]].offsets[animDebug->unkC7[animDebug->unkD3]].offset);
                if (v2->animationInfo.animId < 0xCu)
                    v2->animationInfo.animId = animDebug->unkC7[animDebug->unkD3] + 1;
                v2->flags = (v2->flags & 0x7EEFFFFF) | 0x1000000;
                v2->rotationAmount = 0;
            } else if ((gJoypad.pressedKeys & 1) != 0) {
                if (animDebug->unkD2) {
                    animDebug->unkD2 = 0;
                } else {
                    animDebug->unkD2 = 4;
                    animDebug->unkCD[animDebug->unkD3] = 0;
                    v2->frameDurationCounter = 0;
                    SetAnimationFrameOffset(
                        v2, gDebugAnimData[animDebug->unkC4[animDebug->unkD3]].offsets[animDebug->unkC7[animDebug->unkD3]].offset);
                    if (v2->animationInfo.animId < 0xCu)
                        v2->animationInfo.animId = animDebug->unkC7[animDebug->unkD3] + 1;
                    v2->flags &= ~0x80000000;
                }
            } else if ((gJoypad.pressedKeys & 0x100) != 0 && !animDebug->unkD2) {
                ++animDebug->unkCD[animDebug->unkD3];
                frameData = v2->frameData;
                if (frameData->frameDuration < 0xFEu) {
                    v2->frameData = frameData + 1;
                } else {
                    v2->frameData =
                        (struct AnimationFrame *)(v2->animationInfo.animFrameDataStartPtr + 8);
                    animDebug->unkCD[animDebug->unkD3] = 0;
                }
                v2->spriteData = (struct SpriteTemplate * )&v2->animationInfo.animFrameDataStartPtr
                                      [v2->frameData->spriteDataOffset];
                v2->flags |= 0x61000000u;
            }
            break;
        case 3:
            if ((gJoypad.pressedKeys & 0x30) != 0) {
                flags = v2->flags;
                if ((v2->flags & 1) != 0)
                    v2->flags = flags & 0xFFFFFFFE;
                else
                    v2->flags = flags | 1;
            } else if ((gJoypad.pressedKeys & 1) != 0) {
                if ( (v2->flags & 0x20000000) != 0 )
                    ChangeAnimationActivity(v2, 0);
                else
                    ChangeAnimationActivity(v2, 1u);
            }
            break;
        case 4:
            if ((gJoypad.pressedKeys & 1) != 0) debugCtx->unk1 = 2;
            break;
        case 5:
            if ((gJoypad.heldKeys & 0x10) != 0) {
                ++v2->rotationAmount;
            } else if ((gJoypad.heldKeys & 0x20) != 0) {
                --v2->rotationAmount;
            } else if ((gJoypad.pressedKeys & 1) != 0) {
                v2->rotationAmount = 0;
            }
            if (v2->rotationAmount)
                SetAnimationRotation(v2, 0, v2->rotationAmount);
            else
                DisableAnimationRotation(v2);
            break;
    }
    if ((animDebug->unkD2 & 4) != 0 && (v2->flags & 0x10000000) != 0) {
        animDebug->unkD2 = AdvanceAnimationFrame(v2);
        if ((animDebug->unkD2 & 1) != 0) {
            animDebug->unkCD[animDebug->unkD3]++;
        }
        if ((animDebug->unkD2 & 2) != 0) animDebug->unkCD[animDebug->unkD3] = 0;
    }
    DebugPrintStr("OBJ TEST", 0, unkD0);
    v21 = unkD0 + 1;
    DebugPrintStr(">", 0, v21 + animDebug->unkD1);
    DebugPrintStr("WORK", 1, v21);
    DebugPrintNum(animDebug->unkD3, 6, v21);
    if ((v2->flags & 0x10000000) != 0)
        DebugPrintStr("ON ", 8, v21);
    else
        DebugPrintStr("OFF", 8, v21);
    v22 = v21 + 1;
    DebugPrintStr(gDebugAnimData[animDebug->unkC4[animDebug->unkD3]].name, 1, v22++);
    DebugPrintStr(
        gDebugAnimData[animDebug->unkC4[animDebug->unkD3]].offsets[animDebug->unkC7[animDebug->unkD3]].name,
        1, v22);
    v23 = v22 + 1;
    if ((v2->flags & 0x20000000) != 0) {
        if ((v2->flags & 1) != 0)
            DebugPrintStr("REVERSE", 1, v23);
        else
            DebugPrintStr("NORMAL ", 1, v23);
    } else {
        DebugPrintStr("DISP OFF", 1, v23);
    }
    v24 = v23 + 1;
    DebugPrintStr("POS", 1, v24);
    xOrigin = v2->animationInfo.xOrigin;
    if ((xOrigin & 0x8000u) != 0) xOrigin = -xOrigin;
    DebugPrintNum(xOrigin, 5, v24);
    yOrigin = v2->animationInfo.yOrigin;
    if ((yOrigin & 0x8000u) != 0) yOrigin = -yOrigin;
    DebugPrintNum(yOrigin, 9, v24);
    v27 = v24 + 1;
    DebugPrintStr("ROT", 1, v27);
    DebugPrintNum(v2->rotationAmount, 5, v27);
    v28 = v27 + 1;
    if (animDebug->unkD2)
        DebugPrintStr("MOVE", 1, v28);
    else
        DebugPrintStr("STOP", 1, v28);
    v29 = v28 + 1;
    DebugPrintNum(animDebug->unkCD[animDebug->unkD3], 1, v29);
    DebugPrintNum(v2->frameDurationCounter, 4, v29);
    v30 = v29 + 1;
    v31 = 0;
    if ((v2->flags & 0x10000000) != 0) {
        DebugPrintNum(v2->animationInfo.spriteCount, 4, v2->spriteData->x);
    } else {
        DebugPrintStr("0", 4, v30);
    }
    DebugPrintNum(v31, 1, v30);
    DebugPrintStr("/", 3, v30);
}

void DebugAnimViewerChangeOrigin(struct DebugContext * debugCtx) {
    u32 textY;
    u32 v13;
    u32 v16;
    struct AnimationDebug *animDebug = &debugCtx->menu.anim;
    struct AnimationListEntry * anim;

    anim = &gAnimation[animDebug->unkD3 + 1];
    textY = animDebug->unkD0;
    if ((gJoypad.pressedKeys & 1) != 0) {
        debugCtx->unk1 = 1;
    } else if ((gJoypad.pressedKeys & 2) != 0) {
        animDebug->unkD0 = animDebug->unkD0 != 1 ? 1 : 10;
    }
    if ((gJoypad.heldKeys & 0x20) != 0) {
        if (anim->animationInfo.xOrigin > -240) {
            anim->animationInfo.xOrigin--;
        }
    }
    else if ((gJoypad.heldKeys & 0x10) != 0) {
        if (anim->animationInfo.xOrigin < 480) {
            anim->animationInfo.xOrigin++;
        }
    }

    if ((gJoypad.heldKeys & 0x40) != 0) {
        if (anim->animationInfo.yOrigin > -160) {
            anim->animationInfo.yOrigin--;
        }
    }
    else if (gJoypad.heldKeys & 0x80) {
        if (anim->animationInfo.yOrigin < 320) {
			anim->animationInfo.yOrigin++;
        }
    }

    anim->animationInfo.xOrigin = anim->animationInfo.xOrigin;
    anim->animationInfo.yOrigin = anim->animationInfo.yOrigin;
    DebugClearRect(0, 0xF, 1, 0x13);
    DebugPrintStr("OBJ TEST", 0, textY);
    textY += 1;
    DebugPrintStr("X", 0, textY);
    v13 = anim->animationInfo.xOrigin;
    if (anim->animationInfo.xOrigin < 0) 
		v13 = -anim->animationInfo.xOrigin;
    DebugPrintNum(v13, 2, textY);
    textY += 1;
    DebugPrintStr("Y", 0, textY);
    v16 = anim->animationInfo.yOrigin;
    if (anim->animationInfo.yOrigin < 0) 
		v16 = -anim->animationInfo.yOrigin;
    DebugPrintNum(v16, 2, textY);
}

void DebugAnimViewerExit(struct DebugContext * debugCtx) {
	struct AnimationDebug *animDebug = &debugCtx->menu.anim;
	gAnimation[1] = animDebug->anims[1];
	gAnimation[2] = animDebug->anims[2];
	gAnimation[3] = animDebug->anims[3];
	gAnimation[0].next = animDebug->savedAnimStart;
	ActivateAllAllocatedAnimations();
	gMain.process[GAME_PROCESS_STATE] = 3;
}

void (*gDebugAnimTestStates[])(struct DebugContext *ctx) = {
    DebugAnimViewerInit,
    DebugAnimViewerMain,
	DebugAnimViewerChangeOrigin,
	DebugAnimViewerExit,
};

void DebugAnimTest(struct DebugContext * debugCtx) {
    if(gJoypad.pressedKeys & START_BUTTON)
        debugCtx->unk1 = 3;
    gDebugAnimTestStates[debugCtx->unk1](debugCtx);
}


void sub_8014400(struct DebugContext * debugCtx) {
    struct IORegisters * ioRegs = &gIORegisters;
    struct CourtScrollDebug * courtScrollDebug = &debugCtx->menu.courtScroll;
    struct AnimationListEntry * anim;
    anim = FindAnimationFromAnimId(0xFF);
    courtScrollDebug->animPtr = anim;
    courtScrollDebug->anim = *anim;
    ClearAllAnimationSprites();
    anim->flags = 0;
    courtScrollDebug->unk48 = 0;
    courtScrollDebug->unk49 = 0;
    debugCtx->unk1++;
    ioRegs->lcd_dispcnt &= ~DISPCNT_BG1_ON;
    DecompressBackgroundIntoBuffer(4); //! added by MCboy
    CopyBGDataToVram(4);
    PlayPersonAnimation(PERSON_ANIM_EDGEWORTH, 0, 0, 0);
}

// references to PERSON_ANIM_APRIL_MAY are actually for the bellboy in 2008 pc port
// but for clarity i use april may since her sprite has the proper size for the witness bench 
void sub_801447C(struct DebugContext * debugCtx) {
    struct CourtScroll * courtScroll = &gCourtScroll;
    struct CourtScrollDebug * courtScrollDebug = &debugCtx->menu.courtScroll;
    u32 r8 = 0;
    FindAnimationFromAnimId(0xFF); // !?? just use gAnimation[1]
    if(courtScroll->state)
        return;
    DebugPrintStr("                       ", 0, 2); // "                       "
    if(gJoypad.pressedKeys & DPAD_UP) {
        courtScrollDebug->unk48--;
        r8 = 1;
        if(courtScrollDebug->unk48 < 0) {
            courtScrollDebug->unk48 = 2;
        }
    } else if(gJoypad.pressedKeys & DPAD_DOWN) {
        courtScrollDebug->unk48++;
        r8 = 1;
        if(courtScrollDebug->unk48 > 2) {
            courtScrollDebug->unk48 = 0;
        }
    } else if(gJoypad.pressedKeys & A_BUTTON) {
        void * pal = NULL;
        switch(courtScrollDebug->unk48) {
            case 0:
                pal = gGfxCourtscroll02;
                if(courtScrollDebug->unk49) {
                    SetCourtScrollPersonAnim(1, 1, PERSON_ANIM_EDGEWORTH, 0);
                }else {
                    SetCourtScrollPersonAnim(1, 0x1000, PERSON_ANIM_PHOENIX, 0);
                }
                break;
            case 1:
                pal = gGfxCourtscroll03;
                if(courtScrollDebug->unk49) {
                    SetCourtScrollPersonAnim(2, 1, PERSON_ANIM_EDGEWORTH, 0);
                } else {
                    SetCourtScrollPersonAnim(2, 0x1000, PERSON_ANIM_APRIL_MAY, 0);
                }
                break;
            case 2:
                pal = gGfxCourtscroll01;
                if(courtScrollDebug->unk49) {
                   SetCourtScrollPersonAnim(0, 1, PERSON_ANIM_PHOENIX, 0);
                } else {
                    SetCourtScrollPersonAnim(0, 0x1000, PERSON_ANIM_APRIL_MAY, 0);
                }
                break;
            default:
                break;
        }
        if(courtScrollDebug->unk49) {
            InitCourtScroll(pal, 30, 31, 1);
            courtScrollDebug->unk49 = 0;
        } else {
            InitCourtScroll(pal, 0, 31, 0x1000);
            courtScrollDebug->unk49 = 1;
        }
    }
    if(r8) {
        courtScrollDebug->unk49 = 0;
        switch(courtScrollDebug->unk48) {
            case 0:
                DecompressBackgroundIntoBuffer(4); //! added by MCboy
                CopyBGDataToVram(4);
                PlayPersonAnimation(PERSON_ANIM_EDGEWORTH,0,0,0);
                break;
            case 1:
                DecompressBackgroundIntoBuffer(4); //! added by MCboy
                CopyBGDataToVram(4);
                PlayPersonAnimation(PERSON_ANIM_EDGEWORTH,0,0,0);
                break;
            case 2:
                DecompressBackgroundIntoBuffer(3); //! added by MCboy
                CopyBGDataToVram(3);
                PlayPersonAnimation(PERSON_ANIM_PHOENIX,0,0,0);
                break;
            default:
                break;
        }
    }
    DebugPrintStr("MOVIE TEST", 10, 5); // "MOVIE TEST"
    DebugPrintStr(" MOVIE00", 10, 6); // " MOVIE00"
    DebugPrintStr(" MOVIE01", 10, 7); // " MOVIE01"
    DebugPrintStr(" MOVIE02", 10, 8); // " MOVIE02"
    DebugPrintStr(">", 10, 6 + courtScrollDebug->unk48); // ">"
}

void sub_8014688(struct DebugContext * debugCtx) {
    struct CourtScrollDebug * courtScrollDebug = &debugCtx->menu.courtScroll;
    //DestroyAnimation(&gAnimation[0xFF]); // !!!!?????
    DestroyAnimation(&gAnimation[0x1]); // !!!!?????
    *courtScrollDebug->animPtr = courtScrollDebug->anim;
    gMain.process[GAME_PROCESS_STATE] = 3;
}

void (*gDebugMovieTestStates[])(struct DebugContext *ctx) = {
    sub_8014400,
    sub_801447C,
    sub_8014688
};

void sub_80146B8(struct DebugContext * debugCtx) {
    if(gJoypad.pressedKeys & START_BUTTON)
        debugCtx->unk1 = 2;
    DebugClearRect(10, 20, 5, 10);
    gDebugMovieTestStates[debugCtx->unk1](debugCtx);
}
