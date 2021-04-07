#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include <stddef.h>
#include "gba/gba.h"
#include "main.h"
#include "declarations.h"

//#define NONMATCHING

// Prevent cross-jump optimization.
#define BLOCK_CROSS_JUMP asm("");

// to help in decompiling
#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define GRAPHICS_DATA __attribute__((section("gfx_data")))
#define SCRIPT_DATA __attribute__((section("script_data")))

#define ARRAY_COUNT(array) (size_t)(sizeof(array) / sizeof((array)[0]))
#define MAX_OAM_OBJ_COUNT 128

//#define IO_REG_STRUCT_MEMBER(localBgStruct, field) \
//    *((vu32 *) localBgStruct + (offsetof(struct IORegisters, field) / 4)) \

#define DataCopy(dest, src, bit) \
	*(vu##bit *)(dest) = *(vu##bit *)(src)

#define DataCopy32(dest, src) DataCopy(dest, src, 32)
#define DataCopy16(dest, src) DataCopy(dest, src, 16)
#define DataCopy8(dest, src) DataCopy(dest, src, 8)

#define SPRITE_ATTR0(y, affineMode, objMode, mosaic, bpp, shape) \
	((y) + ((affineMode) << 8) + ((objMode) << 10) + ((mosaic) << 12) + ((bpp) << 13) + ((shape) << 14))

#define SPRITE_ATTR1_AFFINE(x, rotscale, size) \
	((x) + ((rotscale) << 9) + ((size) << 14))

#define SPRITE_ATTR1_NONAFFINE(x, hflip, vflip, size) \
	((x) + ((hflip) << 12) + ((vflip) << 13) + ((size) << 14))

#define SPRITE_ATTR2(tileNum, priority, paletteNum) \
	((tileNum) + ((priority) << 10) + ((paletteNum) << 12))
	
#define SPRITE_ATTR0_CLEAR SPRITE_ATTR0(0, ST_OAM_AFFINE_ERASE, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE)

#define GET_MAP_TILE_INDEX(tiley, tilex, yoff, xoff) ((tiley) * 32 + ((yoff) * 32) + ((tilex) + (xoff)))


#define KEY_NEW() ({ (*(u16 *)REG_ADDR_KEYINPUT) ^ KEYS_MASK; })

#endif//GUARD_GLOBAL_H