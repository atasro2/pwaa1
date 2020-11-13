#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

u32 SaveGameData();
u32 LoadSaveData();
void CalculateSaveChecksum();
bool32 CheckSaveChecksum();

#endif//GUARD_SAVE_H