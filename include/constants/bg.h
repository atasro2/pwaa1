#ifndef GUARD_CONST_BG_H
#define GUARD_CONST_BG_H

#define BG_MODE_SIZE_240x160 0x0
#define BG_MODE_SIZE_480x160 (1 << 0)
#define BG_MODE_SIZE_360x160 (1 << 1)
#define BG_MODE_SIZE_240x320 (1 << 2)
#define BG_MODE_SIZE_240x240 (1 << 3)
#define BG_MODE_SIZE_MASK 0xF

#define BG_MODE_NO_SCROLL 0x0
#define BG_MODE_HSCROLL_RIGHT (1 << 4)
#define BG_MODE_HSCROLL_LEFT (1 << 5)
#define BG_MODE_VSCROLL_TOP (1 << 6)
#define BG_MODE_VSCROLL_DOWN (1 << 7)

#define BG_MODE_SPECIAL_SPEEDLINE (1 << 24)
#define BG_MODE_SCROLL_SPECIAL_SLOW (1 << 25) //used in case 3 for the moon in the intro when it's scrolling down

#define BG_MODE_8BPP 0x0
#define BG_MODE_4BPP (1 << 31)

#define BG_SHIFT_LEFT 0
#define BG_SHIFT_RIGHT 1
#define BG_SHIFT_UP 2
#define BG_SHIFT_DOWN 3

#endif//GUARD_BG_H
