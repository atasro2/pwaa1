#include "global.h"
#include "sound_control.h"
#include "m4a.h"

void PlaySE(u32 songNum)
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
        m4aMPlayStop(&gMPlayInfo_BGM);
        struct3730p->unk1C &= 0xFB;
        struct3730p->unk1C |= 2 | 0;
        if(struct3730p->unk1C & 0x10)
        {
            struct3730p->unk1C |= 1;
            m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 4);
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
        m4aMPlayStop(&gMPlayInfo_BGM);
        struct3730p->unk1C = 1;
        struct3730p->unk1D = 0xFF;
    }
}

void sub_800F4D8() // UnpauseBGM?
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if(struct3730p->unk1C & 2)
    {
        if((struct3730p->unk1C & 1) == 0)
        {
            m4aMPlayContinue(&gMPlayInfo_BGM);
            struct3730p->unk1C &= 0xFD;
            struct3730p->unk1C |= 4;
        }
        else
        {
            struct3730p->unk1C &= 0xFE;
        }
    }
}

void sub_800F514(u32 fadeInSpeed)
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if(struct3730p->unk1C & 4)
    {
        m4aMPlayFadeOutTemporarily(&gMPlayInfo_BGM, fadeInSpeed/16);
        struct3730p->unk1C = 0x14;
    }
}

void PlayBGM(u32 fadeInSpeed, u32 songNum) // named according to phoenix unity
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
                m4aMPlayImmInit(&gMPlayInfo_BGM);
                m4aMPlayStop(&gMPlayInfo_BGM);
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
                        m4aMPlayFadeIn(&gMPlayInfo_BGM, fadeInSpeed/16);
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
                m4aMPlayImmInit(&gMPlayInfo_BGM);
            }
        }
        if(fadeInSpeed == 0)
        {
            return;
        }
        struct3730p->unk20 = (struct3730p->unk1A / fadeInSpeed) + 1;
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
            m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, (struct3730p->unk22 / 10) & 0x1FC);
            return;
        }
        else
        {
            if(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
            {
                struct3730p->unk1C = 2;
            }
        }
    }
}

void sub_800F69C(u32 track, u32 volume)
{
    if (volume < 4) 
        volume = 4;
        
    if(track & 1)
    {
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, volume & 0x1FC);
        gUnknown_03003730.unk22 = volume * 10;
    }
    if(track & 2)
        m4aMPlayVolumeControl(&gMPlayInfo_SE1, 0xFFFF, volume & 0x1FC);
    if(track & 4)
        m4aMPlayVolumeControl(&gMPlayInfo_SE2, 0xFFFF, volume & 0x1FC);
}

void sub_800F71C(u32 volume, s32 arg1)
{
    struct Struct3003730 * struct3730p = &gUnknown_03003730;
    if((struct3730p->unk1C & 3) == 0)
    {
        if(volume > 256)
        {
            volume = 256;
        }
        else if(volume < 4)
        {
            volume = 4;
        }
        if(arg1 != 0)
        {
            struct3730p->unk1A = volume * 10;
            struct3730p->unk20 = ((struct3730p->unk1A - struct3730p->unk22) / arg1);
            struct3730p->unk1C |= 8;
        }
        else
        {
            m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, volume & 0x1FC);
            struct3730p->unk22 = volume * 10;        
        }
    }
}

void sub_800F798(u32 track, u32 pan)
{
    if(track & 1)
    {
        m4aMPlayPanpotControl(&gMPlayInfo_BGM, 0xFFFF, pan);
    }
    if(track & 2)
    {
        m4aMPlayPanpotControl(&gMPlayInfo_SE1, 0xFFFF, pan);
    }
    if(track & 4)
    {
        m4aMPlayPanpotControl(&gMPlayInfo_SE2, 0xFFFF, pan);
    }
}
