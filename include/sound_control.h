#ifndef GUARD_CMD_MUS_H
#define GUARD_CMD_MUS_H
void ChangeBGM(u32);
void PauseBGM(void);
void StopBGM(void);
void UnpauseBGM(void);
void FadeOutBGM(u32 fadeTime);
void UpdateBGMFade();
void PlaySE(u32 songnum);
void PlayBGM(u32 fadeTime, u32 songNum);
void ChangeBGMVolume(u32 volume, s32 fadeTime);
#endif//GUARD_CMD_MUS_H