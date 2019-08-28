#include "gba/gba.h"

struct Struct3003730 {
	u8 filler[4];
	u8 unk4;
};

extern struct Struct3003730 gUnknown_03003730;

void sub_080001EC() {
    u16 *input;
    u16 keys;
    if(!gUnknown_03003730.unk4) {
        input = (u16 *)0x04000130;
        keys = (0x3FF ^ *input);
        if (A_BUTTON & keys)
            gUnknown_03003730.unk4 = 0xe;
    }
}
