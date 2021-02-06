#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#define SOUND_FLAG_DISABLE_SE (1 << 0)
#define SOUND_FLAG_DISABLE_BGM (1 << 1)
#define SOUND_FLAG_DISABLE_CUE (1 << 2)

struct Joypad
{
    /* +0x00 */ u16 heldKeysRaw;
    /* +0x02 */ u16 pressedKeysRaw;
    /* +0x04 */ u16 previousHeldKeys;
    /* +0x06 */ u16 previousPressedKeys;
    /* +0x08 */ u16 unk8;
    /* +0x0A */ u16 unkA;
    /* +0x0C */ u16 unkC;
    /* +0x0E */ u16 unkE;
};

struct Main
{
    /* +0x000 */ u32 unk0; // System_timer? unused in unity
    /* +0x004 */ u8 process[4];
    /* +0x008 */ u8 processCopy[4];
    /* +0x00C */ u8 vblankWaitCounter;
    /* +0x00D */ u8 vblankWaitAmount;
    /* +0x00E */ s8 shakeAmountX;
    /* +0x00F */ s8 shakeAmountY;
    /* +0x010 */ u16 shakeTimer;
    /* +0x012 */ u8 shakeIntensity;
    /* +0x013 */ u8 selectedButton;
    /* +0x014 */ bool8 advanceScriptContext;
    /* +0x015 */ bool8 showTextboxCharacters;
    /* +0x016 */ u8 tilemapUpdateBits;
    /* +0x017 */ u8 unk17;
    /* +0x018 */ u16 unk18;
    /* +0x01A */ s16 bgmFadeVolume;
    /* +0x01C */ u8 soundStatus;
    /* +0x01D */ u8 currentPlayingBgm;
    /* +0x01E */ u8 unk1E;
    /* +0x01F */ u8 unk1F;
    /* +0x020 */ s16 bgmFadeAmount;
    /* +0x022 */ s16 bgmVolume;
    /* +0x024 */ u16 rngSeed;
    /* +0x026 */ u8 unk26;
    /* +0x027 */ u8 unk27;
    /* +0x028 */ u16 currentBG;
    /* +0x02A */ s16 previousBG; // probably wrong
    /* +0x02C */ s8 unk2C;
    /* +0x02D */ u8 unk2D; // unused field
    /* +0x02E */ bool8 isBGScrolling;
    /* +0x02F */ u8 unk2F;
    /* +0x030 */ s16 unk30;
    /* +0x032 */ s16 unk32;
    /* +0x034 */ s16 unk34;
    /* +0x036 */ s16 unk36;
    /* +0x038 */ s16 unk38;
    /* +0x03A */ s16 unk3A; 
    /* +0x03C */ s8 horizontolBGScrollSpeed;
    /* +0x03D */ s8 verticalBGScrollSpeed;
    /* +0x03E */ s8 unk3E;
    /* +0x03F */ s8 unk3F;
    /* +0x040 */ u8 * unk40;
    /* +0x044 */ u32 unk44[12];
    /* +0x074 */ u16 blendTarget;
    /* +0x076 */ u16 blendMode;
    /* +0x078 */ u16 blendCounter;
    /* +0x07A */ u8 blendDelay;
    /* +0x07B */ u8 blendDeltaY;
    /* +0x07C */ u8 unk7C;
    /* +0x07D */ u8 unk7D;
    /* +0x07E */ u8 unk7E;
    /* +0x07F */ u8 unk7F;
    /* +0x080 */ s8 unk80;
    /* +0x081 */ u8 unk81;
    /* +0x082 */ u8 unk82;
    /* +0x083 */ u8 filler83[0x1]; // filler?
    /* +0x084 */ s16 unk84;
    /* +0x086 */ u16 unk86;
    /* +0x088 */ u8 unk88;
    /* +0x089 */ u8 unk89;
    /* +0x08A */ u8 previousHealth;
    /* +0x08B */ u8 unk8B;
    /* +0x08C */ u8 currentRoomId;
    /* +0x08D */ u8 scenarioIdx;
    /* +0x08E */ u8 unk8E;
    /* +0x08F */ s8 health;
    /* +0x090 */ u16 talkingAnimationOffset;
    /* +0x092 */ u16 idleAnimationOffset;
    /* +0x094 */ u32 unk94[8]; // sce_flag matches debug menu
    /* +0x0B4 */ u32 gameStateFlags; // status_flag matches debug menu
    /* +0x0B8 */ u32 unkB8[8]; // talk_end_flag
    /* +0x0D8 */ u8 roomData[24][8]; // Map_data //TODO: first size might be wrong
    /* +0x198 */ u32 soundFlags;
    /* +0x19C */ u32 unk19C;
};

struct IORegisters
{
    /* +0x00 */ u16 lcd_bg0cnt;
    /* +0x02 */ u16 lcd_bg1cnt;
    /* +0x04 */ u16 lcd_bg2cnt;
    /* +0x06 */ u16 lcd_bg3cnt;
    /* +0x08 */ u16 lcd_bg0hofs;
    /* +0x0A */ u16 lcd_bg0vofs;
    /* +0x0C */ u16 lcd_bg1hofs;
    /* +0x0E */ u16 lcd_bg1vofs;
    /* +0x10 */ u16 lcd_bg2hofs;
    /* +0x12 */ u16 lcd_bg2vofs;
    /* +0x14 */ u16 lcd_bg3hofs;
    /* +0x16 */ u16 lcd_bg3vofs;
    /* +0x18 */ u16 lcd_bg2pa;
    /* +0x1A */ u16 lcd_bg2pb;
    /* +0x1C */ u16 lcd_bg2pc;
    /* +0x1E */ u16 lcd_bg2pd;
    /* +0x20 */ u32 lcd_bg2x;
    /* +0x24 */ u32 lcd_bg2y;
    /* +0x28 */ u16 lcd_bg3pa;
    /* +0x2A */ u16 lcd_bg3pb;
    /* +0x2C */ u16 lcd_bg3pc;
    /* +0x2E */ u16 lcd_bg3pd;
    /* +0x30 */ u32 lcd_bg3x;
    /* +0x34 */ u32 lcd_bg3y;
    /* +0x38 */ u16 lcd_win0h;
    /* +0x3A */ u16 lcd_win1h;
    /* +0x3C */ u16 lcd_win0v;
    /* +0x3E */ u16 lcd_win1v;
    /* +0x40 */ u16 lcd_winin;
    /* +0x42 */ u16 lcd_winout;
    /* +0x44 */ u16 lcd_mosaic;
    /* +0x46 */ u8 filler46[2]; 
    /* +0x48 */ u16 lcd_bldcnt;
    /* +0x4A */ u16 lcd_dispcnt;
    /* +0x4C */ u16 lcd_bldalpha;
    /* +0x4E */ u16 lcd_bldy;
    /* +0x50 */ u16 iwp_ie;
    /* +0x52 */ u16 lcd_dispstat;
};

extern struct Joypad gJoypad;
extern struct Main gMain;
extern struct IORegisters gIORegisters;

#define GAME_PROCESS 0
#define GAME_SUBPROCESS 1
#define GAME_PROCESSUNK2 2
#define GAME_PROCESSUNK3 3

#define SET_PROCESS_PTR(no_0, no_1, no_2, no_3, main) (*(u32*)main->process = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define SET_PROCESS(no_0, no_1, no_2, no_3) (*(u32*)gMain.process = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define SET_PROCESS_BACKUP_PTR(no_0, no_1, no_2, no_3, main) (*(u32*)main->processCopy = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define BACKUP_PROCESS() (*(u32*)gMain.processCopy = *(u32*)gMain.process)
#define BACKUP_PROCESS_PTR(main) (*(u32*)main->processCopy = *(u32*)gMain.process)
#define RESTORE_PROCESS_PTR(main) (*(u32*)gMain.process = *(u32*)main->processCopy)

void ClearRamAndInitGame();
void HideAllSprites();
void SetLCDIORegs();
void sub_8000738(u16, u16);
u32 ReadKeysAndTestResetCombo();
void StartHardwareBlend(u32 mode, u32 delay, u32 deltaY, u32 target);
void InitCourtScroll(u8 *, u32, u32, u32);
void ResetGameState();

s16 fix_mul(s16 a, s16 b);
s16 fix_div(s16 a, s16 b);
s16 fix_inverse(s16 b);

#endif//GUARD_MAIN_H