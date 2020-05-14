#ifndef GUARD_AGB_SRAM_H
#define GUARD_AGB_SRAM_H

#define SRAM_RETRY_MAX 3
#define SRAM_START ( ( (void*)0x0E000000 ) )

void ReadSram(const u8 *src, u8 *dst, u32 size);
u32 WriteSramEx(const u8 *src, u8 *dst, u32 size);
void WriteSram(const u8 *src, u8 *dest, u32 size);
u32 VerifySram(const u8 *src, u8 *dst, u32 size);

#endif//GUARD_AGB_SRAM_H