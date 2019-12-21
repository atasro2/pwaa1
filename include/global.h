#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include <stddef.h>
#include "gba/gba.h"
#include "declarations.h"

// Prevent cross-jump optimization.
#define BLOCK_CROSS_JUMP asm("");

// to help in decompiling
#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define NAKED __attribute__((naked))

#define ARRAY_COUNT(array) (size_t)(sizeof(array) / sizeof((array)[0]))
#define MAX_OAM_OBJ_COUNT 128

#define IO_REG_STRUCT_MEMBER(localBgStruct, field) \
    *((u32 *) localBgStruct + (offsetof(struct LCDIORegisters, field) / 4)) \

#define KEY_NEW() ({ (*(u16 *)REG_ADDR_KEYINPUT) ^ KEYS_MASK; })

#define   _Sin( a ) (gSineTable[(a)])
#define   _Cos( a ) (gSineTable[(a)+64])
#endif//GUARD_GLOBAL_H