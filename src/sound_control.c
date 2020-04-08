#include "global.h"
#include "sound_control.h"
#include "m4a.h"

void PlaySE(u32 songNum)
{
    struct Main * struct3730p = &gMain;
    if((struct3730p->unk198 & 1) == 0)
    {
        m4aSongNumStart(songNum);
    }
}

void sub_800F408(u32 songNum)
{
    struct Main * struct3730p = &gMain;
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

void PauseBGM()
{
    struct Main * struct3730p = &gMain;
    if(struct3730p->unk1C & 4)
    {
        m4aMPlayStop(&gMPlayInfo_BGM);
        struct3730p->unk1C &= ~4;
        struct3730p->unk1C |= 2;
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

void StopBGM(void)
{
    struct Main * struct3730p = &gMain;
    if((struct3730p->unk1C & 1) == 0)
    {
        m4aMPlayStop(&gMPlayInfo_BGM);
        struct3730p->unk1C = 1;
        struct3730p->unk1D = 0xFF;
    }
}

void UnpauseBGM(void) // UnpauseBGM?
{
    struct Main * struct3730p = &gMain;
    if(struct3730p->unk1C & 2)
    {
        if((struct3730p->unk1C & 1) == 0)
        {
            m4aMPlayContinue(&gMPlayInfo_BGM);
            struct3730p->unk1C &= ~2;
            struct3730p->unk1C |= 4;
        }
        else
        {
            struct3730p->unk1C &= ~1;
        }
    }
}

void FadeOutBGM(u32 fadeOutSpeed)
{
    struct Main * struct3730p = &gMain;
    if(struct3730p->unk1C & 4)
    {
        m4aMPlayFadeOutTemporarily(&gMPlayInfo_BGM, fadeOutSpeed/16);
        struct3730p->unk1C = 0x10 | 0x4;
    }
}

void PlayBGM(u32 fadeInSpeed, u32 songNum) // named according to phoenix unity
{
    struct Main * struct3730p = &gMain;
    if(!(struct3730p->unk198 & 2))
    {
        if(struct3730p->unk1D == songNum && (struct3730p->unk1C & 1))
        {
            if(struct3730p->unk1C & 2)
            {
                struct3730p->unk1C &= ~(0x10 | 0x1);
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
                        struct3730p->unk1C &= ~0x1;
                        if(struct3730p->unk1C & 0x10)
                        {
                            UnpauseBGM();
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
                        UnpauseBGM();
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
        struct3730p->unk1C = 0x8 | 0x4;
        struct3730p->unk22 = 4 * 10;
    }
}

void sub_800F614()
{
    struct Main * struct3730p = &gMain;
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

void sub_800F69C(u32 track, u32 volume) // unused
{
    if (volume < 4) 
        volume = 4;
        
    if(track & 1)
    {
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, volume & 0x1FC);
        gMain.unk22 = volume * 10;
    }
    if(track & 2)
        m4aMPlayVolumeControl(&gMPlayInfo_SE1, 0xFFFF, volume & 0x1FC);
    if(track & 4)
        m4aMPlayVolumeControl(&gMPlayInfo_SE2, 0xFFFF, volume & 0x1FC);
}

void sub_800F71C(u32 volume, s32 arg1)
{
    struct Main * struct3730p = &gMain;
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

void sub_800F798(u32 track, u32 pan) // unused
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
