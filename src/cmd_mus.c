#include "global.h"
#include "m4a.h"

// perhaps this file is mus_utils.c and not very script related

void sub_800F3E0(u32 songNum)
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if((struct3730p->unk198 & 1) == 0)
    {
        m4aSongNumStart(songNum);
    }
}

void sub_800F408(u32 songNum)
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if((struct3730p->unk198 & 2) == 0)
    {
        if((struct3730p->unk1C & 0x10))
        {
            m4aSongNumStart(songNum);
        }
        else
        {
            m4aSongNumStartOrChange(songNum);
        }
        struct3730p->unk1D = songNum;
        struct3730p->unk22 = 256 * 10;
        struct3730p->unk1C = 4;
    }
}

void sub_800F454()
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if(struct3730p->unk1C & 4)
    {
        m4aMPlayStop(&gUnknown_030058C0);
        struct3730p->unk1C &= 0xFB;
        struct3730p->unk1C |= 2 | 0;
        if(struct3730p->unk1C & 0x10)
        {
            struct3730p->unk1C |= 1;
            m4aMPlayVolumeControl(&gUnknown_030058C0, 0xFFFF, 4);
        }
    }
    else
    {
        struct3730p->unk1C |= 1;
    }
}

void sub_800F4AC()
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if((struct3730p->unk1C & 1) == 0)
    {
        m4aMPlayStop(&gUnknown_030058C0);
        struct3730p->unk1C = 1;
        struct3730p->unk1D = 0xFF;
    }
}

void sub_800F4D8()
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if(struct3730p->unk1C & 2)
    {
        if((struct3730p->unk1C & 1) == 0)
        {
            m4aMPlayContinue(&gUnknown_030058C0);
            struct3730p->unk1C &= 0xFD;
            struct3730p->unk1C |= 4;
        }
        else
        {
            struct3730p->unk1C &= 0xFE;
        }
    }
}

void sub_800F514(u32 speed)
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if(struct3730p->unk1C & 4)
    {
        m4aMPlayFadeOutTemporarily(&gUnknown_030058C0, speed/16);
        struct3730p->unk1C = 0x14;
    }
}

void sub_800F540(u32 speed, u32 songNum)
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if(!(struct3730p->unk198 & 2))
    {
        if(struct3730p->unk1D == songNum && (struct3730p->unk1C & 1))
        {
            if(struct3730p->unk1C & 2)
            {
                struct3730p->unk1C &= 0xEE;
                m4aSongNumStart(songNum);
                m4aMPlayImmInit(&gUnknown_030058C0);
                m4aMPlayStop(&gUnknown_030058C0);
                return;
            }
            return;
        }
        else
        {
            if(songNum == 255)
            {
                if(struct3730p->unk1C & 1)
                {
                    if(struct3730p->unk1C & 2)
                    {
                        struct3730p->unk1C &= 0xFE;
                        if(struct3730p->unk1C & 0x10)
                        {
                            sub_800F4D8();
                        }
                    }
                    return;
                }
                else
                {
                    if(struct3730p->unk1C & 0x10)
                    {
                        m4aMPlayFadeIn(&gUnknown_030058C0, speed/16);
                        struct3730p->unk1C = 4;
                        return;
                    }
                    else
                    {
                        sub_800F4D8();
                    }
                }
            }
            else
            {
                sub_800F408(songNum);
                m4aMPlayImmInit(&gUnknown_030058C0);
            }
        }
        if(speed == 0)
        {
            return;
        }
        struct3730p->unk20 = (struct3730p->unk1A / speed) + 1;
        struct3730p->unk1C = 0xC;
        struct3730p->unk22 = 4 * 10;
    }
}

void sub_800F614()
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if((struct3730p->unk1C & 3) == 0)
    {
        if(struct3730p->unk20 != 0)
        {
            struct3730p->unk22 += struct3730p->unk20;
            if(struct3730p->unk20 > 0)
            {
                if(struct3730p->unk22 > struct3730p->unk1A)
                {
                    struct3730p->unk22 = struct3730p->unk1A;
                    struct3730p->unk20 = struct3730p->unk1C & 3;
                    struct3730p->unk1C = 4;
                }
            }
            else
            {
                if(struct3730p->unk22 < struct3730p->unk1A)
                {
                    struct3730p->unk22 = struct3730p->unk1A;
                    struct3730p->unk20 = struct3730p->unk1C & 3;
                    struct3730p->unk1C = 4;
                }
            }
            m4aMPlayVolumeControl(&gUnknown_030058C0, 0xFFFF, (struct3730p->unk22 / 10) & 0x1FC);
            return;
        }
        else
        {
            if(gUnknown_030058C0.status & 0x80000000)
            {
                struct3730p->unk1C = 2;
            }
        }
    }
}

void sub_800F69C(u32 arg0, u32 arg1)
{
    u32 var0 = arg1;
    if(arg1 < 4)
    {
        var0 = 4;
    }
    if(arg0 & 1)
    {
        m4aMPlayVolumeControl(&gUnknown_030058C0, 0xFFFF, var0 & 0x1FC);
        gUnknown_03003730.unk22 = var0 * 10;
    }
    if(arg0 & 2)
    {
        m4aMPlayVolumeControl(&gUnknown_03005900, 0xFFFF, var0 & 0x1FC);
    }
    if(arg0 & 4)
    {
        m4aMPlayVolumeControl(&gUnknown_03005940, 0xFFFF, var0 & 0x1FC);
    }
}

void sub_800F71C(u32 arg0, s32 arg1)
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if((struct3730p->unk1C & 3) == 0)
    {
        if(arg0 > 256)
        {
            arg0 = 256;
        }
        else if(arg0 < 4)
        {
            arg0 = 4;
        }
        if(arg1 != 0)
        {
            struct3730p->unk1A = arg0 * 10;
            struct3730p->unk20 = ((struct3730p->unk1A - struct3730p->unk22) / arg1);
            struct3730p->unk1C |= 8;
        }
        else
        {
            m4aMPlayVolumeControl(&gUnknown_030058C0, 0xFFFF, arg0 & 0x1FC);
            struct3730p->unk22 = arg0 * 10;        
        }
    }
}

void sub_800F798(u32 arg0, s32 arg1)
{
    if(arg0 & 1)
    {
        m4aMPlayPanpotControl(&gUnknown_030058C0, 0xFFFF, arg1);
    }
    if(arg0 & 2)
    {
        m4aMPlayPanpotControl(&gUnknown_03005900, 0xFFFF, arg1);
    }
    if(arg0 & 4)
    {
        m4aMPlayPanpotControl(&gUnknown_03005940, 0xFFFF, arg1);
    }
}
