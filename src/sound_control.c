#include "global.h"
#include "sound_control.h"
#include "m4a.h"

void ResetSoundControl()
{
    gMain.unk1C = 1;
    gMain.unk1A = 0x100 * 10;
    gMain.bgmVolume = 0x100 * 10;
    gMain.bgmFadeAmount = 0;
    gMain.unk1D = ~1;

}

void PlaySE(u32 songNum)
{
    struct Main * main = &gMain;
    if((main->unk198 & 1) == 0)
    {
        m4aSongNumStart(songNum);
    }
}

void ChangeBGM(u32 songNum)
{
    struct Main * main = &gMain;
    if((main->unk198 & 2) == 0)
    {
        if((main->unk1C & 0x10))
        {
            m4aSongNumStart(songNum);
        }
        else
        {
            m4aSongNumStartOrChange(songNum);
        }
        main->unk1D = songNum;
        main->bgmVolume = 0x100 * 10;
        main->unk1C = 4;
    }
}

void PauseBGM()
{
    struct Main * main = &gMain;
    if(main->unk1C & 4)
    {
        m4aMPlayStop(&gMPlayInfo_BGM);
        main->unk1C &= ~4;
        main->unk1C |= 2;
        if(main->unk1C & 0x10)
        {
            main->unk1C |= 1;
            m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 4);
        }
    }
    else
    {
        main->unk1C |= 1;
    }
}

void StopBGM(void)
{
    struct Main * main = &gMain;
    if((main->unk1C & 1) == 0)
    {
        m4aMPlayStop(&gMPlayInfo_BGM);
        main->unk1C = 1;
        main->unk1D = 0xFF;
    }
}

void UnpauseBGM(void)
{
    struct Main * main = &gMain;
    if(main->unk1C & 2)
    {
        if((main->unk1C & 1) == 0)
        {
            m4aMPlayContinue(&gMPlayInfo_BGM);
            main->unk1C &= ~2;
            main->unk1C |= 4;
        }
        else
        {
            main->unk1C &= ~1;
        }
    }
}

void FadeOutBGM(u32 fadeOutSpeed)
{
    struct Main * main = &gMain;
    if(main->unk1C & 4)
    {
        m4aMPlayFadeOutTemporarily(&gMPlayInfo_BGM, fadeOutSpeed/16);
        main->unk1C = 0x10 | 0x4;
    }
}

void PlayBGM(u32 fadeInSpeed, u32 songNum) // named according to phoenix unity
{
    struct Main * main = &gMain;
    if(!(main->unk198 & 2))
    {
        if(main->unk1D == songNum && (main->unk1C & 1))
        {
            if(main->unk1C & 2)
            {
                main->unk1C &= ~(0x10 | 0x1);
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
                if(main->unk1C & 1)
                {
                    if(main->unk1C & 2)
                    {
                        main->unk1C &= ~0x1;
                        if(main->unk1C & 0x10)
                        {
                            UnpauseBGM();
                        }
                    }
                    return;
                }
                else
                {
                    if(main->unk1C & 0x10)
                    {
                        m4aMPlayFadeIn(&gMPlayInfo_BGM, fadeInSpeed/16);
                        main->unk1C = 4;
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
                ChangeBGM(songNum);
                m4aMPlayImmInit(&gMPlayInfo_BGM);
            }
        }
        if(fadeInSpeed == 0)
        {
            return;
        }
        main->bgmFadeAmount = (main->unk1A / fadeInSpeed) + 1;
        main->unk1C = 0x8 | 0x4;
        main->bgmVolume = 4 * 10;
    }
}

void sub_800F614()
{
    struct Main * main = &gMain;
    if((main->unk1C & 3) == 0)
    {
        if(main->bgmFadeAmount != 0)
        {
            main->bgmVolume += main->bgmFadeAmount;
            if(main->bgmFadeAmount > 0)
            {
                if(main->bgmVolume > main->unk1A)
                {
                    main->bgmVolume = main->unk1A;
                    main->bgmFadeAmount = main->unk1C & 3;
                    main->unk1C = 4;
                }
            }
            else
            {
                if(main->bgmVolume < main->unk1A)
                {
                    main->bgmVolume = main->unk1A;
                    main->bgmFadeAmount = main->unk1C & 3;
                    main->unk1C = 4;
                }
            }
            m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, (main->bgmVolume / 10) & 0x1FC);
            return;
        }
        else
        {
            if(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
            {
                main->unk1C = 2;
            }
        }
    }
}

// used in debug menu
void sub_800F69C(u32 track, u32 volume) // unused
{
    if (volume < 4) 
        volume = 4;
        
    if(track & 1)
    {
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, volume & 0x1FC);
        gMain.bgmVolume = volume * 10;
    }
    if(track & 2)
        m4aMPlayVolumeControl(&gMPlayInfo_SE1, 0xFFFF, volume & 0x1FC);
    if(track & 4)
        m4aMPlayVolumeControl(&gMPlayInfo_SE2, 0xFFFF, volume & 0x1FC);
}

void sub_800F71C(u32 volume, s32 arg1)
{
    struct Main * main = &gMain;
    if((main->unk1C & 3) == 0)
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
            main->unk1A = volume * 10;
            main->bgmFadeAmount = ((main->unk1A - main->bgmVolume) / arg1);
            main->unk1C |= 8;
        }
        else
        {
            m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, volume & 0x1FC);
            main->bgmVolume = volume * 10;        
        }
    }
}

// used in debug menu
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
