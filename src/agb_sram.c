#include "gba/gba.h"
#include "agb_sram.h"

void ReadSram_Core(const u8 *src, u8 *dest, u32 size);
u32 VerifySram_Core(const u8 *src, u8 *dest, u32 size);

char const sSramVersionString[] = "SRAM_V112";

void (* sSramReadFunctions[])(const u8 *src, u8 *dest, u32 size) =
{
    ReadSram_Core,
    ReadSram
};

u32 (* sSramVerifyFunctions[])(const u8 *src, u8 *dest, u32 size) =
{
    VerifySram_Core,
    VerifySram
};

void ReadSram_Core(const u8 *src, u8 *dest, u32 size)
{
    while (--size != -1)
        *dest++ = *src++;
}

void ReadSram(const u8 *src, u8 *dst, u32 size)
{
    u16 readSram_Work[0x40];
    u16 *src_;
    u16 *dst_;
    u16 size_;
    void (*ReadSramWram)(const u8 *src, u8 *dest, u32 size); // pointer to readSramFast_Work

    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;

    src_ = (u16 *)ReadSram_Core;
    // clear the least significant bit so that we get the actual start address of the function
    src_ = (u16 *)((uintptr_t)src_ ^ 1);
    dst_ = readSram_Work;
    // get the size of the function by subtracting the address of the next function
    size_ = ((uintptr_t)ReadSram - (uintptr_t)ReadSram_Core) / 2;
    // copy the function into the WRAM buffer
    while (size_ != 0)
    {
        *dst_++ = *src_++;
        size_--;
    }
    // add 1 to the address of the buffer so that we stay in THUMB mode when bx-ing to the address
    ReadSramWram = (void *)((uintptr_t)readSram_Work + 1);

    ReadSramWram(src, dst, size);
}

void WriteSram(const u8 *src, u8 *dest, u32 size)
{
    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
    while (--size != -1)
        *dest++ = *src++;
}

u32 VerifySram_Core(const u8 *src, u8 *dest, u32 size)
{
    while (--size != -1)
    {
        if (*dest++ != *src++)
            return (u32)(dest - 1);
    }
    return 0;
}

u32 VerifySram(const u8 *src, u8 *dst, u32 size)
{
    u16 verifySram_Work[0x60];
    u16 *src_;
    u16 *dst_;
    u16 size_;
    u32 (*VerifySramWram)(const u8 *src, u8 *dest, u32 size); // pointer to verifySramFast_Work

    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;

    src_ = (u16 *)VerifySram_Core;
    // clear the least significant bit so that we get the actual start address of the function
    src_ = (u16 *)((uintptr_t)src_ ^ 1);
    dst_ = verifySram_Work;
    // get the size of the function by subtracting the address of the next function
    size_ = ((uintptr_t)VerifySram - (uintptr_t)VerifySram_Core) / 2;
    // copy the function into the WRAM buffer
    while (size_ != 0)
    {
        *dst_++ = *src_++;
        size_--;
    }
    // add 1 to the address of the buffer so that we stay in THUMB mode when bx-ing to the address
    VerifySramWram = (void *)((uintptr_t)verifySram_Work + 1);

    return VerifySramWram(src, dst, size);
}

// Write to Sram then verify that data is OK
u32 WriteSramEx(const u8 *src, u8 *dst, u32 size) 
{
    u8 retry;
    u32 result;

    for (retry = 0; retry < SRAM_RETRY_MAX; retry++)
    {
        WriteSram(src, dst, size);
        result = VerifySram(src, dst, size);
        if (result == 0)
            break;
    }

    return result;
}
