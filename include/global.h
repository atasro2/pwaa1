#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/gba.h"
#include "declarations.h"

#define ARRAY_COUNT(array) (size_t)(sizeof(array) / sizeof((array)[0]))
#define MAX_OAM_OBJ_COUNT 128

#endif//GUARD_GLOBAL_H