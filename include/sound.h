#ifndef GUARD_SOUND_H
#define GUARD_SOUND_H

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