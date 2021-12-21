#ifndef GUARD_SOUND_H
#define GUARD_SOUND_H

#define SOUND_STATUS_BGM_STOPPED (1 << 0)
#define SOUND_STATUS_BGM_PAUSED (1 << 1)
#define SOUND_STATUS_BGM_PLAYING (1 << 2)
#define SOUND_STATUS_BGM_FADING (1 << 3)
#define SOUND_STATUS_BGM_FADING_OUT (1 << 4)

void ResetSoundControl();
void PlayBGM(u32);
void PauseBGM(void);
void StopBGM(void);
void UnpauseBGM(void);
void FadeOutBGM(u32 fadeTime);
void UpdateBGMFade();
void PlaySE(u32 songnum);
void FadeInBGM(u32 fadeTime, u32 songNum);
void SetBGMVolume(u32 volume, s32 fadeTime);

#endif//GUARD_SOUND_H