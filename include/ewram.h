#ifndef GUARD_EWRAM_H
#define GUARD_EWRAM_H

#define eScriptHeap ((void*) (EWRAM_START + 0x11FC0))
extern EWRAM_DATA struct SaveData gSaveDataBuffer;
#define eUnknown_0202CFC0 ((void*) (EWRAM_START + 0x2CFC0))
#define eUnknown_02031FC0 ((void*) (EWRAM_START + 0x31FC0))

#endif//GUARD_EWRAM_H