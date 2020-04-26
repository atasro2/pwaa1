#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

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
    u8 unk4[4];
    u8 unk8[4];
    u8 vblankWaitCounter; /* + 0xC */
    u8 unkD;
    s8 shakeAmountX; /* + 0xE */ // Quake_x 
    s8 shakeAmountY; /* + 0xF */ // Quake_y
    u16 shakeTimer; /* + 0x10 */ // Quake_timer
    u8 shakeIntensity; /* + 0x12 */
    u8 unk13;
    u8 unk14;
    u8 unk15;
    u8 filler16[0x4];
    s16 unk1A;
    u8 unk1C; // sound_status
    u8 unk1D;
    u8 filler1E[0x1];
    u8 unk1F;
    s16 unk20; // fade vol adittion? // bgm_fade_time 
    s16 unk22; // bgm volume // bgm_vol
    u16 rngSeed; /* + 0x24 */ // Random_seed
    u8 unk26;
    u8 unk27;
    u16 currentBG; /* + 0x28 */ // probably wrong 
    s16 previousBG; /* + 0x2A */ // probably wrong
    s8 unk2C;
    u8 unk2D;
    u8 unk2E;
    u8 filler2F[0xD];
    s8 unk3C;
    s8 unk3D;
    u8 filler3E[0x36];
    u16 blendTargets;
    u16 blendMode;
    u16 blendCounter;
    u8 blendDelay;
    u8 blendY;
    u8 unk7C;
    u8 unk7D;
    u8 unk7E;
    u8 filler7F[0x5];
    u16 unk84;
    u8 filler86[0x2];
    u8 unk88;
    u8 unk89;
    u8 unk8A; // rest_old
    u8 ukn8B;
    u8 unk8C; // current room id
    u8 unk8D; // scenario num 
    u8 unk8E;
    s8 unk8F; // rest
    u16 talkingAnimationOffset; /* + 0x90 */
    u16 idleAnimationOffset; /* + 0x92 */
    u32 unk94[8]; // sce_flag
    u32 unkB4; // status_flag
    u8 fillerB8[0x20]; // talk_end_flag?
    u8 mapData[24][8]; /* + 0xD8 */ // Map_data //TODO: first size might be wrong
    u32 unk198;
    u8 filler19C[0x4];
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

#define SET_UNK4(no_0, no_1, no_2, no_3) (*(u32*)gMain.unk4 = ((no_3) | ((no_2) << 8) | ((no_1) << 16) | ((no_0) << 24)))
#define SET_UNK8_AS_UNK4() (*(u32*)gMain.unk8 = *(u32*)gMain.unk4)

#endif//GUARD_MAIN_H