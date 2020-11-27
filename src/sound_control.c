#include "global.h"
#include "sound_control.h"
#include "constants/sound_control.h"
#include "m4a.h"

void ResetSoundControl()
{
    gMain.soundStatus = SOUND_STATUS_BGM_STOPPED;
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
        if((main->soundStatus & SOUND_STATUS_BGM_FADING_OUT))
        {
            m4aSongNumStart(songNum);
        }
        else
        {
            m4aSongNumStartOrChange(songNum);
        }
        main->currentPlayingBgm = songNum;
        main->bgmVolume = 0x100 * 10;
        main->soundStatus = SOUND_STATUS_BGM_PLAYING;
    }
}

void PauseBGM()
{
    struct Main * main = &gMain;
    if(main->soundStatus & SOUND_STATUS_BGM_PLAYING)
    {
        m4aMPlayStop(&gMPlayInfo_BGM);
        main->soundStatus &= ~SOUND_STATUS_BGM_PLAYING;
        main->soundStatus |= SOUND_STATUS_BGM_PAUSED;
        if(main->soundStatus & SOUND_STATUS_BGM_FADING_OUT)
        {
            main->soundStatus |= SOUND_STATUS_BGM_STOPPED;
            m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 4);
        }
    }
    else
    {
        main->soundStatus |= SOUND_STATUS_BGM_STOPPED;
    }
}

void StopBGM(void)
{
    struct Main * main = &gMain;
    if((main->soundStatus & SOUND_STATUS_BGM_STOPPED) == 0)
    {
        m4aMPlayStop(&gMPlayInfo_BGM);
        main->soundStatus = SOUND_STATUS_BGM_STOPPED;
        main->currentPlayingBgm = 0xFF;
    }
}

void UnpauseBGM(void)
{
    struct Main * main = &gMain;
    if(main->soundStatus & SOUND_STATUS_BGM_PAUSED)
    {
        if((main->soundStatus & SOUND_STATUS_BGM_STOPPED) == 0)
        {
            m4aMPlayContinue(&gMPlayInfo_BGM);
            main->soundStatus &= ~SOUND_STATUS_BGM_PAUSED;
            main->soundStatus |= SOUND_STATUS_BGM_PLAYING;
        }
        else
        {
            main->soundStatus &= ~SOUND_STATUS_BGM_STOPPED;
        }
    }
}

void FadeOutBGM(u32 fadeTime)
{
    struct Main * main = &gMain;
    if(main->soundStatus & SOUND_STATUS_BGM_PLAYING)
    {
        m4aMPlayFadeOutTemporarily(&gMPlayInfo_BGM, fadeTime/16);
        main->soundStatus = SOUND_STATUS_BGM_FADING_OUT | SOUND_STATUS_BGM_PLAYING;
    }
}

void PlayBGM(u32 fadeTime, u32 songNum) // named according to phoenix unity
{
    struct Main * main = &gMain;
    if(!(main->soundFlags & SOUND_FLAG_DISABLE_BGM))
    {
        if(main->currentPlayingBgm == songNum && (main->soundStatus & SOUND_STATUS_BGM_STOPPED))
        {
            if(main->soundStatus & SOUND_STATUS_BGM_PAUSED)
            {
                main->soundStatus &= ~(SOUND_STATUS_BGM_FADING_OUT | SOUND_STATUS_BGM_STOPPED);
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
                if(main->soundStatus & SOUND_STATUS_BGM_STOPPED)
                {
                    if(main->soundStatus & SOUND_STATUS_BGM_PAUSED)
                    {
                        main->soundStatus &= ~SOUND_STATUS_BGM_STOPPED;
                        if(main->soundStatus & SOUND_STATUS_BGM_FADING_OUT)
                        {
                            UnpauseBGM();
                        }
                    }
                    return;
                }
                else
                {
                    if(main->soundStatus & SOUND_STATUS_BGM_FADING_OUT)
                    {
                        m4aMPlayFadeIn(&gMPlayInfo_BGM, fadeTime/16);
                        main->soundStatus = SOUND_STATUS_BGM_PLAYING;
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
        main->soundStatus = SOUND_STATUS_BGM_FADING | SOUND_STATUS_BGM_PLAYING;
        main->bgmVolume = 4 * 10;
    }
}

void UpdateBGMFade()
{
    struct Main * main = &gMain;
    if((main->soundStatus & (SOUND_STATUS_BGM_STOPPED | SOUND_STATUS_BGM_PAUSED)) == 0)
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
                    main->soundStatus = SOUND_STATUS_BGM_PLAYING;
                }
            }
            else
            {
                if(main->bgmVolume < main->bgmFadeVolume)
                {
                    main->bgmVolume = main->bgmFadeVolume;
                    main->bgmFadeAmount = 0;
                    main->soundStatus = SOUND_STATUS_BGM_PLAYING;
                }
            }
            m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, (main->bgmVolume / 10) & 0x1FC);
            return;
        }
        else
        {
            if(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
            {
                main->soundStatus = SOUND_STATUS_BGM_PAUSED;
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
    if((main->soundStatus & (SOUND_STATUS_BGM_STOPPED | SOUND_STATUS_BGM_PAUSED)) == 0)
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
            main->soundStatus |= SOUND_STATUS_BGM_FADING;
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
