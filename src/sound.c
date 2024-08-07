#include "global.h"
#include "sound.h"
#include "debug.h"
#include "m4a.h"

extern struct MusicPlayerInfo gMPlayInfo_BGM;
extern struct MusicPlayerInfo gMPlayInfo_SE1;
extern struct MusicPlayerInfo gMPlayInfo_SE2;
extern struct MusicPlayerInfo gMPlayInfo_SE3;

void ResetSoundControl() // Bgm_init
{
    gMain.soundStatus = SOUND_STATUS_BGM_STOPPED;
    gMain.bgmFadeVolume = 0x100 * 10;
    gMain.bgmVolume = 0x100 * 10;
    gMain.bgmFadeAmount = 0;
    gMain.currentPlayingBgm = 0xFF-1;

}

void PlaySE(u32 songNum) // Se_play?
{
    struct Main * main = &gMain;
    if(!(main->soundFlags & SOUND_FLAG_DISABLE_SE))
    {
        m4aSongNumStart(songNum);
    }
}

void PlayBGM(u32 songNum) // Bgm_play
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

void PauseBGM() // Bgm_pause
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

void StopBGM(void) // Bgm_stop
{
    struct Main * main = &gMain;
    if((main->soundStatus & SOUND_STATUS_BGM_STOPPED) == 0)
    {
        m4aMPlayStop(&gMPlayInfo_BGM);
        main->soundStatus = SOUND_STATUS_BGM_STOPPED;
        main->currentPlayingBgm = 0xFF;
    }
}

void UnpauseBGM(void) // Bgm_continue
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

void FadeOutBGM(u32 fadeTime) // Bgm_fadeout
{
    struct Main * main = &gMain;
    if(main->soundStatus & SOUND_STATUS_BGM_PLAYING)
    {
        m4aMPlayFadeOutTemporarily(&gMPlayInfo_BGM, fadeTime/16);
        main->soundStatus = SOUND_STATUS_BGM_FADING_OUT | SOUND_STATUS_BGM_PLAYING;
    }
}

void FadeInBGM(u32 fadeTime, u32 songNum) // Bgm_fadein
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
                PlayBGM(songNum);
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

void UpdateBGMFade() // Bgm_fade_main
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

void SetBGMVolume(u32 volume, s32 fadeTime) // Bgm_volume_set
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

void sub_80116B0(struct DebugContext * debug) {
    struct SoundDebug *sound = &debug->menu.sound;
    gIORegisters.lcd_dispcnt &= ~(DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON);
    sound->unk0 = 0;
    sound->unk2 = 0;
    sound->unk4 = 0;
    sound->unk8 = 0x100;
    sound->unkA = 0x100;
    sound->unkC = 0;
    sound->unkE = 0;
    PauseBGM();
    ResetSoundControl();
    debug->unk1++;
    DebugPrintStr("SOUND TEST", 10, 3);
    DebugPrintStr("START TO EXIT", 9, 17);
}

#define SCROLL_FAST_WITH_B(lval, changeSign) \
    if (gJoypad.heldKeys & B_BUTTON) {       \
        (lval) += 10 * (changeSign);         \
    } else {                                 \
        (lval) += 1 * (changeSign);          \
    }

void sub_8011714(struct DebugContext *ctx) {
	struct SoundDebug *sound = &ctx->menu.sound;

	if (gJoypad.pressedKeys & DPAD_UP) {
		--sound->unk6;
	} else if (gJoypad.pressedKeys & DPAD_DOWN) {
		++sound->unk6;
	}

	if (sound->unk6 < 0) {
		sound->unk6 = 3;
	} else if (sound->unk6 > 3) {
		sound->unk6 = 0;
	}

	switch (sound->unk6) {
		case 0:
			if (gJoypad.pressedKeys & DPAD_LEFT) {
				SCROLL_FAST_WITH_B(sound->unk4, -1)
				if (sound->unk4 < 0) {
					sound->unk4 = 321;
				}
			} else if (gJoypad.pressedKeys & DPAD_RIGHT) {
				SCROLL_FAST_WITH_B(sound->unk4, 1)
				if (sound->unk4 > 321) {
					sound->unk4 = 0;
				}
			} else if (gJoypad.pressedKeys & A_BUTTON) {
				PlaySE(sound->unk4 + 42);
			}
			DebugPrintStr("<-  SELECT", 11, 12);
			DebugPrintStr("->  SELECT", 11, 13);
			DebugPrintStr("A   PLAY  ", 11, 14);
			DebugPrintStr("B   +10   ", 11, 15);
			break;
		case 1:
			if (gJoypad.pressedKeys & DPAD_LEFT) {
				SCROLL_FAST_WITH_B(sound->unk2, -1)
				if (sound->unk2 < 0) {
					sound->unk2 = 249;
				}
				if (sound->unk2 >= 42 && sound->unk2 < 201) {
					sound->unk2 = 249;
				}
			} else if (gJoypad.pressedKeys & DPAD_RIGHT) {
				SCROLL_FAST_WITH_B(sound->unk2, 1)
				if (sound->unk2 > 249) {
					sound->unk2 = 0;
				}
				if (sound->unk2 >= 42 && sound->unk2 < 201) {
					sound->unk2 = 201;
				}
			} else if (gJoypad.pressedKeys & A_BUTTON) {
				if (sound->unk0 != sound->unk2) {
					FadeOutBGM(120);
					++ctx->unk1;
				} else if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE) {
					if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK) {
						UnpauseBGM();
					} else {
						PlayBGM(sound->unk2);
						m4aMPlayImmInit(&gMPlayInfo_BGM);
						ChangeTrackVolume(1, sound->unk8);
						ChangeTrackPanning(1, sound->unkC);
					}
				} else {
					PauseBGM();
				}
			} else if (gJoypad.pressedKeys & L_BUTTON) {
				FadeOutBGM(20);
			} else if (gJoypad.pressedKeys & R_BUTTON) {
				if (gJoypad.heldKeys & B_BUTTON) {
					FadeInBGM(120, 255);
				} else {
					FadeInBGM(120, sound->unk2);
				}
			}
			DebugPrintStr("<-  SELECT", 11, 12);
			DebugPrintStr("->  SELECT", 11, 13);
			DebugPrintStr("B   +10   ", 11, 15);
			if (!(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE) && sound->unk0 == sound->unk2) {
				DebugPrintStr("A   PAUSE ", 11, 14);
			} else {
				DebugPrintStr("A   PLAY  ", 11, 14);
			}
			break;
		case 2:
			if ((gJoypad.heldKeys & DPAD_LEFT) || (gJoypad.pressedKeys & L_BUTTON)) {
				SCROLL_FAST_WITH_B(sound->unk8, -1)
				if (sound->unk8 < 4) {
					sound->unk8 = 4;
				}
				ChangeTrackVolume(1, sound->unk8);
			} else if ((gJoypad.heldKeys & DPAD_RIGHT) || (gJoypad.pressedKeys & R_BUTTON)) {
				SCROLL_FAST_WITH_B(sound->unk8, 1)
				if (sound->unk8 > 510) {
					sound->unk8 = 510;
				}
				ChangeTrackVolume(1, sound->unk8);
			}

			if (gJoypad.pressedKeys & A_BUTTON) {
				sound->unk8 = 256;
				ChangeTrackVolume(1, sound->unk8);
			}

			DebugPrintStr("<-  DOWN  ", 11, 12);
			DebugPrintStr("->  UP    ", 11, 13);
			DebugPrintStr("A DEFAULT ", 11, 14);
			DebugPrintStr("B   +10   ", 11, 15);
			break;
		case 3:
			if (gJoypad.heldKeys & DPAD_LEFT) {
				SCROLL_FAST_WITH_B(sound->unkC, -1)
				if (sound->unkC < -128) {
					sound->unkC = -128;
				}
				ChangeTrackPanning(1, sound->unkC);
			} else if (gJoypad.heldKeys & DPAD_RIGHT) {
				SCROLL_FAST_WITH_B(sound->unkC, 1)
				if (sound->unkC > 127) {
					sound->unkC = 127;
				}
				ChangeTrackPanning(1, sound->unkC);
			} else if (gJoypad.pressedKeys & A_BUTTON) {
                sound->unkC = 0;
                ChangeTrackPanning(1, sound->unkC);
            }
			DebugPrintStr("<-  LEFT  ", 11, 12);
			DebugPrintStr("->  RIGHT ", 11, 13);
			DebugPrintStr("A  CENTER ", 11, 14);
			DebugPrintStr("B   +10   ", 11, 15);
			break;
	}

	DebugPrintStr(" SE        ", 5, 5);
	DebugPrintNumN(sound->unk4, 10, 5, 2);

	DebugPrintStr(" BGM       ", 5, 6);
	DebugPrintNum(sound->unk2, 10, 6);

	DebugPrintStr(" VOL       ", 5, 7);
    DebugPrintNum(sound->unk8 / 50 ?: sound->unk8 != 4 || sound->unk8 < 0, 10, 7);
    
    DebugPrintStr(" PAN L             R", 5, 8);
	DebugPrintStr("*", sound->unkC / 20 + 17, 8);
	if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE) {
		if(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK) {
            DebugPrintStr("PAUSE ", 15, 6);
        } else {
            DebugPrintStr("STOP  ", 15, 6);    
        }
	} else {
		DebugPrintStr("PLAY ", 15, 6);
	}
	DebugPrintStr(">", 5, 5 + sound->unk6);
}

void sub_8011C08(struct DebugContext *ctx) {
	struct SoundDebug *sound = &ctx->menu.sound;

    if(!(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE) && gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK)
        return;
    PlayBGM(sound->unk2);
    m4aMPlayImmInit(&gMPlayInfo_BGM);
    ChangeTrackVolume(1, sound->unk8);
    ChangeTrackPanning(1, sound->unkC);
    sound->unk0 = sound->unk2;
    ctx->unk1--;
}

void (*gUnknown_0814DC64[])(struct DebugContext *ctx) = {
    sub_80116B0,
    sub_8011714,
    sub_8011C08
};

void DebugSoundTest(struct DebugContext *ctx) {
    if (gJoypad.pressedKeys & START_BUTTON)
        gMain.process[GAME_PROCESS_STATE] = 3;
    gUnknown_0814DC64[ctx->unk1](ctx);
}
