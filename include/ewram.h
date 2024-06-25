#ifndef GUARD_EWRAM_H
#define GUARD_EWRAM_H

#define eGeneralScratchpadBuffer ((void *)EWRAM_START+0xAFC0)
#define eScriptHeap ((void*) (EWRAM_START + 0x11FC0))
#define eBGDecompBuffer ((void*) (EWRAM_START + 0x2CFC0))
#define eUnknown_02031FC0 ((void*) (EWRAM_START + 0x31FC0)) // only used in Command46, the data never gets accessed elsewhere

#endif//GUARD_EWRAM_H