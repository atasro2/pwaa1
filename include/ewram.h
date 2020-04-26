#ifndef GUARD_EWRAM_H
#define GUARD_EWRAM_H

#define eScriptHeap ((void*) (EWRAM_START + 0x11FC0))
extern EWRAM_DATA struct SaveData gSaveDataBuffer;
extern EWRAM_DATA u8 gUnknown_0202CFC0[0x5000];
#define eUnknown_02031FC0 ((void*) (EWRAM_START + 0x31FC0))

#endif//GUARD_EWRAM_H