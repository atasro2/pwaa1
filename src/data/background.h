#include "graphics.h"

const struct Background gBackgroundTable[] =
{
	{
		.bgData = gGfx_BG000,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG001,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG002,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG003,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG004,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG005,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG006,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG007,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG008,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG009,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG010,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG011,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG012,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG013,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG014,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG015,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG016,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG017,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG018,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG019,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG020,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG021,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG022,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG023,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG024,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG025,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG026,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG027,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG028,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG029,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG030,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG031,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG032,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG033,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG034,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG035,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG036,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG037,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG038,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG039,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG040,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG041,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG042,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG043,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG044,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG045,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG046,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG047,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG048,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG049,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG050,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG051,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG052,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG053,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG054,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG055,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG056,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG057,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG058,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG059,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG060,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG061,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG062,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG063,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG064,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG065,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG066,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_SPECIAL_SPEEDLINE | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG067,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG068,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG069,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG070,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG071,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG072,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG073,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG069,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_NO_SCROLL | BG_MODE_SCROLL_SPECIAL_SLOW | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG069,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_NO_SCROLL | BG_MODE_SCROLL_SPECIAL_SLOW | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG076,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG077,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG078,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG079,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG080,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG081,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG082,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG083,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG084,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG085,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG086,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG087,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG088,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG089,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG090,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG091,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG092,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG093,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG094,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG095,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG096,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG097,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG098,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG099,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG100,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG101,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG102,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG103,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG104,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG105,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG106,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG107,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG108,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG109,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gGfx_BG110,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gGfx_BG111,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
};
