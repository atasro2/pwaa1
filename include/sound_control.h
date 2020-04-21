#ifndef GUARD_CMD_MUS_H
#define GUARD_CMD_MUS_H
void sub_800F408(u32);
void PauseBGM(void);
void StopBGM(void);
void UnpauseBGM(void);
void FadeOutBGM(u32 fadeInSpeed);
void sub_800F614();
void PlaySE(u32 songnum);
void PlayBGM(u32 speed, u32 songNum);
void sub_800F71C(u32 volume, s32 arg1);
#endif//GUARD_CMD_MUS_H