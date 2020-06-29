#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#define SOUND_FLAG_DISABLE_SE (1 << 0)
#define SOUND_FLAG_DISABLE_BGM (1 << 1)
#define SOUND_FLAG_DISABLE_CUE (1 << 2)

struct Joypad
{
    u16 heldKeysRaw;
    u16 pressedKeysRaw;
    u16 previousHeldKeys;
    u16 previousPressedKeys;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
};

struct Main
{
    u32 unk0; // System_timer? unused in unity
    u8 process[4];
    u8 processCopy[4];
    u8 vblankWaitCounter; /* + 0xC */
    u8 vblankWaitAmount; /* + 0xD */
    s8 shakeAmountX; /* + 0xE */ // Quake_x 
    s8 shakeAmountY; /* + 0xF */ // Quake_y
    u16 shakeTimer; /* + 0x10 */ // Quake_timer
    u8 shakeIntensity; /* + 0x12 */
    u8 selectedButton; /* + 0x13 */
    bool8 advanceScriptContext; /* + 0x14 */
    bool8 showTextboxCharacters; /* + 0x15 */
    u8 tilemapUpdateBits; /* + 0x16 */
    u8 unk17;
    u8 filler18[0x2];
    s16 bgmFadeVolume; /* + 0x1A */
    u8 unk1C; // sound_status
    u8 currentPlayingBgm; /* + 0x1D */
    u8 filler1E[0x1];
    u8 unk1F;
    s16 bgmFadeAmount; /* + 0x20 */
    s16 bgmVolume; /* + 0x22 */
    u16 rngSeed; /* + 0x24 */
    u8 unk26;
    u8 unk27;
    u16 currentBG; /* + 0x28 */
    s16 previousBG; /* + 0x2A */ // probably wrong
    s8 unk2C;
    u8 unk2D; // unused field
    bool8 isBGScrolling; /* + 0x2E */
    u8 unk2F;
    u16 unk30;
    u16 unk32;
    u16 unk34;
    u16 unk36;
    u16 unk38;
    u16 unk3A; 
    s8 horizontolBGScrollSpeed; /* + 0x3C */
    s8 verticalBGScrollSpeed; /* + 0x3D */
    u8 unk3E;
    u8 unk3F;
    u32 unk40;
    u32 unk44[12];
    u16 blendTarget; /* + 0x74 */
    u16 blendMode; /* + 0x76 */
    u16 blendCounter; /* + 0x78 */
    u8 blendDelay; /* + 0x7A */
    u8 blendDeltaY; /* + 0x7B */
    u8 unk7C;
    u8 unk7D;
    u8 unk7E;
    u8 filler7F[0x5];
    u16 unk84;
    u8 filler86[0x2];
    u8 unk88;
    u8 unk89;
    u8 previousHealth; /* + 0x8A */
    u8 unk8B;
    u8 currentRoomId; /* + 0x8C */
    u8 scenarioIdx; /* + 0x8D */ // scenario num 
    u8 unk8E;
    s8 health; /* + 0x8F */
    u16 talkingAnimationOffset; /* + 0x90 */
    u16 idleAnimationOffset; /* + 0x92 */
    u32 unk94[8]; // sce_flag matches debug menu
    u32 gameStateFlags; // status_flag matches debug menu
    u32 unkB8[8]; // talk_end_flag
    u8 roomData[24][8]; /* + 0xD8 */ // Map_data //TODO: first size might be wrong
    u32 soundFlags; /* + 0x198 */
    u32 unk19C;
};

struct LCDIORegisters
{
    u16 lcd_bg0cnt;   /* + 0 */
    u16 lcd_bg1cnt;   /* + 2 */
    u16 lcd_bg2cnt;   /* + 4 */
    u16 lcd_bg3cnt;   /* + 6 */
    u16 lcd_bg0hofs;  /* + 8 */
    u16 lcd_bg0vofs;  /* + A */
    u16 lcd_bg1hofs;  /* + C */
    u16 lcd_bg1vofs;  /* + E */
    u16 lcd_bg2hofs;  /* +10 */
    u16 lcd_bg2vofs;  /* +12 */
    u16 lcd_bg3hofs;  /* +14 */
    u16 lcd_bg3vofs;  /* +16 */
    u16 lcd_bg2pa;    /* +18 */
    u16 lcd_bg2pb;    /* +1A */
    u16 lcd_bg2pc;    /* +1C */
    u16 lcd_bg2pd;    /* +1E */
    u32 lcd_bg2x;     /* +20 */
    u32 lcd_bg2y;     /* +24 */
    u16 lcd_bg3pa;    /* +28 */
    u16 lcd_bg3pb;    /* +2A */
    u16 lcd_bg3pc;    /* +2C */
    u16 lcd_bg3pd;    /* +2E */
    u32 lcd_bg3x;     /* +30 */
    u32 lcd_bg3y;     /* +34 */
    u16 lcd_win0h;    /* +38 */
    u16 lcd_win1h;    /* +3A */
    u16 lcd_win0v;    /* +3C */
    u16 lcd_win1v;    /* +3E */
    u16 lcd_winin;    /* +40 */
    u16 lcd_winout;   /* +42 */
    u16 lcd_mosaic;   /* +44 */
    u8 filler46[2];   /* +46 */ 
    u16 lcd_bldcnt;   /* +48 */
    u16 lcd_dispcnt;  /* +4A */
    u16 lcd_bldalpha; /* +4C */
    u16 lcd_bldy;     /* +4E */
    u16 iwp_ie;       /* +50 */
    u16 lcd_dispstat; /* +52 */
};

extern struct Joypad gJoypad;
extern struct Main gMain;
extern struct LCDIORegisters gLCDIORegisters;

#define GAME_PROCESS 0
#define GAME_SUBPROCESS 1
#define GAME_PROCESSUNK2 2
#define GAME_PROCESSUNK3 3

#define SET_PROCESS_PTR(no_0, no_1, no_2, no_3, main) (*(u32*)main->process = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define SET_PROCESS(no_0, no_1, no_2, no_3) (*(u32*)gMain.process = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define BACKUP_PROCESS() (*(u32*)gMain.processCopy = *(u32*)gMain.process)
#define RESTORE_PROCESS_PTR(main) (*(u32*)gMain.process = *(u32*)main->processCopy)

void ClearRamAndInitGame();
void HideAllSprites();
void SetLCDIORegs();
void sub_8000738(u16, u16);
u32 ReadKeysAndTestResetCombo();
void StartHardwareBlend(u32 mode, u32 delay, u32 deltaY, u32 target);
void InitCourtScroll(u8 *, u32, u32, u32);
void ResetGameState();
#endif//GUARD_MAIN_H