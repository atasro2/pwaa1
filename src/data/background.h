#include "graphics.h"

const struct Background gBackgroundTable[] =
{
	{
		.bgData = gUnknown_08248C4C,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0825280C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08257F28,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0825CCCC,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0825EF64,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_082610F0,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08263898,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0826B6DC,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08271DE8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08278824,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0827CEEC,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08282870,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08288AE0,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08291ADC,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08293DC0,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08296138,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08296E28,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0829A23C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0829E7A4,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082A3BA8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082A8E3C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082AE378,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082B6B78,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082BDC88,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_082BFC24,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082C5020,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082C9600,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082CE308,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082D1A90,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082D79EC,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_082D8974,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082DC188,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082E1FA4,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082E6BBC,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082EB2B8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082EF904,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082F7D4C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082FAF44,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_082FE610,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_083022F0,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_083081E4,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0830D2D8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0831002C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08312664,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08314F8C,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0831E8E0,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0831F624,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08320328,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_083230C0,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08323EDC,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08327074,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0832AFB8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0832E7B0,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08331B38,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08335A58,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08339144,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0833DC0C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0833F720,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08342908,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0834863C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0834F218,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0835699C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08357870,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0835ABD8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08360834,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08362524,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08364794,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_SPECIAL_SPEEDLINE | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08365640,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08368BC4,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08369890,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0836B924,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08372D2C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0837920C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0837E52C,
		.controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08369890,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_NO_SCROLL | BG_MODE_SCROLL_SPECIAL_SLOW | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_08369890,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_NO_SCROLL | BG_MODE_SCROLL_SPECIAL_SLOW | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0838B364,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0838D370,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08392118,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_08396EB0,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0839CD04,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_083A3504,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083A6934,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083A7790,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083A8648,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083A9514,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_083AFCC8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083B0A94,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083B3724,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083B6C8C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_083BF1BC,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083C3724,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083C7654,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083CB0BC,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_083D27A8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083D5E64,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_083DAAC0,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_083E1514,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_083E74E8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083EAB84,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083EEAC0,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083F2BA4,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083F6C48,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083FB1D4,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_083FD8D4,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_084037F8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0840AC3C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0840D3C8,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0840F8C0,
		.controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0841B0F4,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
	},
	{
		.bgData = gUnknown_0841BD7C,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
	{
		.bgData = gUnknown_0841EFC4,
		.controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
	},
};
