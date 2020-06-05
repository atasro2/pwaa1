#include "global.h"
#include "sound_control.h"
#include "m4a.h"

void ResetSoundControl()
{
    gMain.unk1C = 1;
    gMain.bgmFadeVolume = 0x100 * 10;
    gMain.bgmVolume = 0x100 * 10;
    gMain.bgmFadeAmount = 0;
    gMain.currentPlayingBgm = 0xFF-1;

}

void PlaySE(u32 songNum)
{
    struct Main * main = &gMain;
    if(!(main->soundFlags & SOUND_FLAG_DISABLE_SE))
    {
        m4aSongNumStart(songNum);
    }
}

void ChangeBGM(u32 songNum)
{
    struct Main * main = &gMain;
    if(!(main->soundFlags & SOUND_FLAG_DISABLE_BGM))
    {
        if((main->unk1C & 0x10))
        {
            m4aSongNumStart(songNum);
        }
        else
        {
            m4aSongNumStartOrChange(songNum);
        }
        main->currentPlayingBgm = songNum;
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
        main->currentPlayingBgm = 0xFF;
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

void FadeOutBGM(u32 fadeTime)
{
    struct Main * main = &gMain;
    if(main->unk1C & 4)
    {
        m4aMPlayFadeOutTemporarily(&gMPlayInfo_BGM, fadeTime/16);
        main->unk1C = 0x10 | 0x4;
    }
}

void PlayBGM(u32 fadeTime, u32 songNum) // named according to phoenix unity
{
    struct Main * main = &gMain;
    if(!(main->soundFlags & SOUND_FLAG_DISABLE_BGM))
    {
        if(main->currentPlayingBgm == songNum && (main->unk1C & 1))
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
                        m4aMPlayFadeIn(&gMPlayInfo_BGM, fadeTime/16);
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
        if(fadeTime == 0)
        {
            return;
        }
        main->bgmFadeAmount = (main->bgmFadeVolume / fadeTime) + 1;
        main->unk1C = 0x8 | 0x4;
        main->bgmVolume = 4 * 10;
    }
}

void UpdateBGMFade()
{
    struct Main * main = &gMain;
    if((main->unk1C & (1 | 2)) == 0)
    {
        if(main->bgmFadeAmount != 0)
        {
            main->bgmVolume += main->bgmFadeAmount;
            if(main->bgmFadeAmount > 0)
            {
                if(main->bgmVolume > main->bgmFadeVolume)
                {
                    main->bgmVolume = main->bgmFadeVolume;
                    main->bgmFadeAmount = 0;
                    main->unk1C = 4;
                }
            }
            else
            {
                if(main->bgmVolume < main->bgmFadeVolume)
                {
                    main->bgmVolume = main->bgmFadeVolume;
                    main->bgmFadeAmount = 0;
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

// was used in debug menu
void ChangeTrackVolume(u32 track, u32 volume) // unused
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

void ChangeBGMVolume(u32 volume, s32 fadeTime)
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
        if(fadeTime != 0)
        {
            main->bgmFadeVolume = volume * 10;
            main->bgmFadeAmount = ((main->bgmFadeVolume - main->bgmVolume) / fadeTime);
            main->unk1C |= 8;
        }
        else
        {
            m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, volume & 0x1FC);
            main->bgmVolume = volume * 10;        
        }
    }
}

// was used in debug menu
void ChangeTrackPanning(u32 track, u32 pan) // unused
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
