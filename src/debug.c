#include "global.h"
#include "main.h"
#include "background.h"
#include "animation.h"
#include "declarations.h"
#include "debug.h"
#include "utils.h"
#include "sound.h"
#include "case_data.h"

void sub_800156C(void) {
    DebugPrintStr("/   ", 26, 0);
    DebugPrintNum(*(u8*)REG_ADDR_VCOUNT, 27, 0);
    if (gMain.frameCounter & 1) {
        DebugPrintStr("0", 6, 0);
    } else {
        DebugPrintStr("1", 6, 0);
    }
    DebugPrintStr("      ", 11, 0);
}

void sub_80015CC(void) {
    gOamObjects[0].attr0 = 0;
    gOamObjects[0].attr1 = 8 + *(u8*)REG_ADDR_VCOUNT;
    gOamObjects[0].attr2 = 0xFE;
}

void sub_80015E8(void) {
    struct Main * main = &gMain;
    u32 i;

    main->showTextboxCharacters = FALSE;
    for(i = 0; i < 0x100; i++) {
        gBG1MapBuffer[0x180 + i] = 0;
    }
}

void nullsub_10() {

}

void DebugClearRect(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
    s32 i, j;
    for(i = arg0; i <= arg1; i++) {
        for(j = arg2; j <= arg3; j++) {
            DebugPrintStr(" ", i, j);
        }
    }
}

void DebugProcessInit(struct DebugContext * debug) {
    struct IORegisters * ioRegs = &gIORegisters;
    struct Main * main = &gMain;
    int i;

    debug->unk3 = 0;
    debug->unk2 = 0;
    debug->unk1 = 0;
    debug->unk0 = 0;
    main->process[GAME_PROCESS_STATE] = 1;
    debug->unk8 = ioRegs->lcd_dispcnt;
    debug->unkA = ioRegs->lcd_win0h;
    debug->unkC = ioRegs->lcd_win0v;
    debug->unkE = ioRegs->lcd_winin;
    debug->unk10 = ioRegs->lcd_winout;
    debug->unk14 = ioRegs->lcd_bg3hofs;
    debug->unk16 = ioRegs->lcd_bg3vofs;
    DmaCopy16(3, gOamObjects, debug->oam, OAM_SIZE);
    debug->unk60 = main->showTextboxCharacters;
    debug->unk61 = main->advanceScriptContext;
    main->showTextboxCharacters = FALSE;
    main->advanceScriptContext = FALSE;
    for(i = 0; i < 128; i++)
        gOamObjects[i].attr1 = 0x12C;
    debug->anim = gAnimation[0];
    gAnimation[0].next = NULL;
    DmaCopy16(3, gBG3MapBuffer, debug->map, 0x800);
    ioRegs->lcd_bg3hofs = 8;
    ioRegs->lcd_bg3vofs = 8;
    main->debugFlags &= ~4;
}

void DebugProcessMain(struct DebugContext * debug) {
    int length = 7;
    DebugPrintStr("DEBUG MENU", 10, 3);
    DebugPrintStr(" VRAM VIEW", 9, 5);
    DebugPrintStr(" SOUND TEST", 9, 6);
    DebugPrintStr(" OBJ TEST", 9, 7);
    DebugPrintStr(" MOVIE TEST", 9, 8);
    DebugPrintStr(" FLAG EDIT", 9, 9);
    DebugPrintStr(" SCENARIO", 9, 10);
    DebugPrintStr(" EXIT", 9, 11);
    DebugPrintStr(">", 9, 5 + debug->unk0);
    if((gJoypad.pressedKeys & DPAD_UP) && debug->unk0 > 0) {
        debug->unk0--;
    } else if((gJoypad.pressedKeys & DPAD_DOWN) && debug->unk0 < length - 1) {
        debug->unk0++;
    } else if(gJoypad.pressedKeys & A_BUTTON) {
        gMain.process[GAME_PROCESS_STATE] = 2;
        DebugClearRect(0, 29, 0, 19);
    }
}

void sub_8001EB0(struct DebugContext * debug);
void sub_800214C(struct DebugContext * debug);
void DebugProcessExit(struct DebugContext * debug);
void DebugAnimTest(struct DebugContext * debug);
extern void sub_8002248(struct DebugContext * debug);
extern void sub_8011C60(struct DebugContext * debug);
extern void sub_8013DB0(struct DebugContext * debug);
extern void sub_80146B8(struct DebugContext * debug);

void (*gUnknown_0814D348[])(struct DebugContext * debug) = {
    sub_8001EB0,
    DebugSoundTest,
    DebugAnimTest,
    sub_80146B8,
    sub_800214C,
    sub_8002248,
    DebugProcessExit,
};

void DebugProcessSubMenuMain(struct DebugContext * debug) {
    gUnknown_0814D348[debug->unk0](debug);
}

void DebugProcessExit(struct DebugContext * debug) {
    struct Main * main = &gMain;
    struct IORegisters * ioRegs = &gIORegisters;
    DmaCopy16(3, debug->map, gBG3MapBuffer, 0x800);
    ioRegs->lcd_dispcnt = debug->unk8;
    ioRegs->lcd_win0h = debug->unkA;
    ioRegs->lcd_win0v = debug->unkC;
    ioRegs->lcd_winin = debug->unkE;
    ioRegs->lcd_winout = debug->unk10;
    ioRegs->lcd_bg3hofs = debug->unk14;
    ioRegs->lcd_bg3vofs = debug->unk16;
    gAnimation[0] = debug->anim;
    ActivateAllAllocatedAnimations();
    DmaCopy16(3, debug->oam, gOamObjects, OAM_SIZE);
    DebugClearRect(0, 29, 0, 19);
    main->showTextboxCharacters = debug->unk60;
    main->advanceScriptContext = debug->unk61;
    *(u32*)main->process = *(u32*)gDebugCtx.process;
}

void (*gUnknown_0814D364[])(struct DebugContext * debug) = {
    DebugProcessInit,
    DebugProcessMain,
    DebugProcessSubMenuMain,
    DebugProcessExit,
};

void DebugProcess(struct Main * main) {
    gUnknown_0814D364[main->process[GAME_PROCESS_STATE]](&gDebugCtx);
}

void sub_8001918(struct DebugContext * debug) {
    struct IORegisters * ioRegs = &gIORegisters;
    struct VramDebug * vramDebug = &debug->menu.vram;
    ioRegs->lcd_dispcnt |= DISPCNT_WIN0_ON;
    ioRegs->lcd_win0v = WIN_RANGE(16, 144);
    ioRegs->lcd_win0h = WIN_RANGE(16, 144);
    ioRegs->lcd_winin = WININ_WIN0_BG0 | WININ_WIN0_OBJ;
    ioRegs->lcd_winout = WINOUT_WIN01_BG0;
    vramDebug->unk08 = ioRegs->lcd_bg3cnt;
    ioRegs->lcd_bg3cnt &= ~(BGCNT_256COLOR | 0xC);
    DebugPrintStr("OBJ MODE", 20, 3);
    DebugPrintStr("16  COL ", 20, 4);
    DebugPrintStr("0   PAL ", 20, 5);
    DebugPrintStr("0   BG", 20, 6);
    vramDebug->unk00 = 0;
    vramDebug->unk02 = 0;
    vramDebug->unk04 = 0;
    vramDebug->unk05 = 0;
    vramDebug->unk06 = 0;
    vramDebug->unk07 = 4;
    debug->unk1++;
}

void sub_80019C0(struct DebugContext * debug) {
    char addresses[][3] = {
        "0",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "A",
        "B",
        "C",
        "D",
        "E",
        "F",
        "O"
    };
    struct VramDebug * vramDebug = &debug->menu.vram;
    u8 i;

    if(gJoypad.heldKeys & DPAD_ANY)
        debug->unk18++;
    else {
        *(u16*)&debug->unk18 = 0;
    }

    if(debug->unk19) {
        debug->unk18 &= 1;
    } else {
        debug->unk18 &= 0x1F;
        if(debug->unk18 == 0x1F)
            debug->unk19 = 1;
    }
    if(debug->unk18 == 1) {
        if(gJoypad.heldKeys & DPAD_UP) {
            if(vramDebug->unk02 > 0)
                vramDebug->unk02--;
        } else if(gJoypad.heldKeys & DPAD_DOWN) {
            if(vramDebug->unk02 <= 0xF)
                vramDebug->unk02++;
        } else if(gJoypad.heldKeys & DPAD_LEFT) {
            if(vramDebug->unk00 > 0)
                vramDebug->unk00--;
        } else if(gJoypad.heldKeys & DPAD_RIGHT) {
            if(vramDebug->unk00 <= 0xF)
                vramDebug->unk00++;
        }
    }
    for(i = 0; i < 0x10; i++) {
        if(vramDebug->unk00 + i <= 0x10) {
            DebugPrintStr(addresses[vramDebug->unk00 + i], i + 2, 1);
        } else {
            DebugPrintStr(addresses[vramDebug->unk00 + i-0x10], i + 2, 1);
        }
    }
    if(vramDebug->unk00 == 0x10) {
        DebugPrintStr("1\0", 1, 1);
    } else {
        DebugPrintStr(" ", 1, 1);
    }
    for(i = 0; i < 0x10; i++) {
        if(vramDebug->unk02 + i < 0x10) {
            DebugPrintStr(" ", 0, i + 2);
            DebugPrintStr(addresses[vramDebug->unk02 + i], 1, i + 2);
        } else {
            DebugPrintStr("1\0", 0, i + 2);
            DebugPrintStr(addresses[vramDebug->unk02 + i-0x10], 1, i + 2);
        }
    }
}

void sub_8001B2C(struct DebugContext * debug) {
    u16 r6;
    u8 i, j;
    struct VramDebug * vramDebug = &debug->menu.vram;
    if(vramDebug->unk07 == 4)
        sub_80019C0(debug);
    r6 = 0;
    if(vramDebug->unk05)
        vramDebug->unk02 = 0;
    for(i = 0; i < 16; i++) {
        for(j = 0; j < 8; j++) {
            gOamObjects[r6].attr0 = (vramDebug->unk05 << 13) + 16 + (ST_OAM_H_RECTANGLE << 14) + i * 8;
            gOamObjects[r6].attr1 = SPRITE_ATTR1_NONAFFINE(16 + j * 16, FALSE, FALSE, 0);
            gOamObjects[r6].attr2 = (vramDebug->unk04 << 12) + (vramDebug->unk00 + j*2) + (vramDebug->unk02 + i) * 32;
            r6++;
        }
    }
}

void sub_8001BBC(struct DebugContext * debug) {
    struct VramDebug * vramDebug = &debug->menu.vram;
    u8 i, j;
    
    if(vramDebug->unk07 == 4)
        sub_80019C0(debug);
    for(i = 0; i < 16; i++) {
        for(j = 0; j < 16; j++) {
            gBG3MapBuffer[j + (i + 2) * 32 + 0x23] = (vramDebug->unk02 + i) * 32 + j + vramDebug->unk00 + (vramDebug->unk04 << 12);
        }
    }
}

void sub_8001C24(struct DebugContext * debug) {
    struct IORegisters * ioRegs = &gIORegisters;
    struct VramDebug * vramDebug = &debug->menu.vram;
    s32 i;
    for(i = 0; i < 4; i++) {
        DebugPrintStr("  ", 18, 3 + i);
    }
    if(gJoypad.pressedKeys & A_BUTTON) {
        vramDebug->unk07 = 4;
        return;
    } else if(gJoypad.pressedKeys & DPAD_UP) {
        vramDebug->unk07--;
        if(vramDebug->unk07 < 0)
            vramDebug->unk07 = 3;
    } else if(gJoypad.pressedKeys & DPAD_DOWN) {
        vramDebug->unk07++;
        if(vramDebug->unk07 > 3)
            vramDebug->unk07 = 0;
    }
    DebugPrintStr(" >", 18, vramDebug->unk07 + 3);
    switch(vramDebug->unk07) {
        case 0:
            if(gJoypad.pressedKeys & DPAD_LEFT || gJoypad.pressedKeys & DPAD_RIGHT) {
                if(debug->unk1 == 2) {
                    debug->unk1 = 1;
                    ioRegs->lcd_winin = WININ_WIN0_BG0 | WININ_WIN0_OBJ;
                    DebugPrintStr("OBJ MODE", 20, 3);
                } else {
                    debug->unk1 = 2;
                    ioRegs->lcd_winin = WININ_WIN0_BG0 | WININ_WIN0_BG3;
                    DebugPrintStr("SCR MODE", 20, 3);
                }
            }
            break;
        case 1:
            if(gJoypad.pressedKeys & DPAD_LEFT || gJoypad.pressedKeys & DPAD_RIGHT) {
                if(vramDebug->unk05) {
                    ioRegs->lcd_bg3cnt &= ~BGCNT_256COLOR;
                    vramDebug->unk05 = 0;
                    DebugPrintStr("16  COL", 20, 4);
                } else {
                    ioRegs->lcd_bg3cnt |= BGCNT_256COLOR;
                    ioRegs->lcd_bg3cnt &= ~0xC; // clear char base
                    vramDebug->unk06 = 0;
                    vramDebug->unk05 = 1;
                    DebugPrintStr("256 COL", 20, 4);
                    DebugPrintStr("0   PAL", 20, 5);
                    DebugPrintStr("0   BG", 20, 6);
                }
            } 
            break;
        case 2:
            if(vramDebug->unk05 == 0) {
                if(gJoypad.pressedKeys & DPAD_LEFT)
                    vramDebug->unk04--;
                else if(gJoypad.pressedKeys & DPAD_RIGHT) 
                    vramDebug->unk04++;
                vramDebug->unk04 &= 0xF;
                DebugPrintStr("    PAL", 20, 5);
                DebugPrintNum(vramDebug->unk04, 20, 5);
            } else {
                DebugPrintStr("0   PAL", 20, 5);
            }
            break;
        case 3:
            if(debug->unk1 == 2) {
                if(vramDebug->unk05 == 0) {
                    if(gJoypad.pressedKeys & DPAD_LEFT && vramDebug->unk06 > 0)
                        vramDebug->unk06--;
                    else if(gJoypad.pressedKeys & DPAD_RIGHT && vramDebug->unk06 < 2)
                        vramDebug->unk06++;
                    
                    // set charbase
                    ioRegs->lcd_bg3cnt &= ~0xC;
                    ioRegs->lcd_bg3cnt |= vramDebug->unk06 << 2;
                    ioRegs->lcd_winin = WININ_WIN0_BG0 | WININ_WIN0_BG3;
                    DebugPrintStr("    BG", 20, 6);
                    DebugPrintNum(vramDebug->unk06, 20, 6);
                }
            }
            break;
    }
    // _08001E52
}

void sub_8001E60(struct DebugContext * debug) {
    struct VramDebug * vramDebug = &debug->menu.vram;
    struct IORegisters * ioRegs = &gIORegisters;
    s32 i, j;
    s32 oam;
    
    gMain.process[GAME_PROCESS_STATE] = 3;
    vramDebug->unk07 = 4;
    ioRegs->lcd_bg3cnt = vramDebug->unk08;
    for(i = 0, oam = 0; i < 16; i++) {
        for(j = 0; j < 8; j++) {
            gOamObjects[oam].attr1 = SPRITE_ATTR1_NONAFFINE(300, FALSE, FALSE, 0);
            oam++;
        }
    }
}

void (*gUnknown_0814D374[])(struct DebugContext * debug) = {
    sub_8001918,
    sub_8001B2C,
    sub_8001BBC,
    sub_8001E60,
};

void sub_8001EB0(struct DebugContext * debug) {
    struct VramDebug * vramDebug = &debug->menu.vram;
    if(gJoypad.pressedKeys & START_BUTTON)
        debug->unk1 = 3;
    gUnknown_0814D374[debug->unk1](debug);
    if(vramDebug->unk07 != 4)
        sub_8001C24(debug);
    else if(gJoypad.pressedKeys & A_BUTTON)
        vramDebug->unk07 = 0;
}

void sub_8001F08(struct DebugContext * debug) {
    struct FlagDebug * flagDebug = &debug->menu.flag;

    if(gJoypad.heldKeys & DPAD_ANY)
        debug->unk18++;
    else {
        *(u16*)&debug->unk18 = 0;
    }

    if(debug->unk19) {
        debug->unk18 &= 1;
    } else {
        debug->unk18 &= 0x1F;
        if(debug->unk18 == 0x1F)
            debug->unk19 = 1;
    }
    if(debug->unk18 == 1) {
        if(gJoypad.heldKeys & DPAD_LEFT) {
            flagDebug->unk00--;
        } else if(gJoypad.heldKeys & DPAD_RIGHT) {
            flagDebug->unk00++;
        } else if(gJoypad.heldKeys & DPAD_UP) {
            flagDebug->unk00 -= 0x10;
        } else if(gJoypad.heldKeys & DPAD_DOWN) {
            flagDebug->unk00 += 0x10;
        }
    }
}

void sub_8001F98(struct DebugContext * debug) {
    struct FlagDebug * flagDebug = &debug->menu.flag;
    
    flagDebug->unk02 = 0;
    flagDebug->unk00 = 0;
    debug->unk1++;
}

struct FlagDebugData {
    char * name;
    u32 * flagPtr;
    char ** flagNames;
    u16 flagType;
    s16 flagCount;
};

char * gameStateFlagNames[] = {
    "STATUS00",
    "STATUS01",
    "STATUS02",
    "STATUS03",
    "STATUS04",
    "STATUS05",
    "STATUS06",
    "STATUS07",
    "STATUS08",
    "STATUS09",
    "STATUS0A",
    "STATUS0B",
    "STATUS0C",
    "STATUS0D",
    "STATUS0E",
    "STATUS0F",
    "STATUS10",
    "STATUS11",
    "STATUS12",
    "STATUS13",
    "STATUS14",
    "STATUS15",
    "STATUS16",
    "STATUS17",
    "STATUS18",
    "STATUS19",
    "STATUS1A",
    "STATUS1B",
    "STATUS1C",
    "STATUS1D",
    "STATUS1E",
    "STATUS1F",
};

char * scriptFlagNames[] = {
    "SCENARI000",
    "SCENARI001",
    "SCENARI002",
    "SCENARI003",
    "SCENARI004",
    "SCENARI005",
    "SCENARI006",
    "SCENARI007",
    "SCENARI008",
    "SCENARI009",
    "SCENARI00A",
    "SCENARI00B",
    "SCENARI00C",
    "SCENARI00D",
    "SCENARI00E",
    "SCENARI00F",
    "SCENARI010",
    "SCENARI011",
    "SCENARI012",
    "SCENARI013",
    "SCENARI014",
    "SCENARI015",
    "SCENARI016",
    "SCENARI017",
    "SCENARI018",
    "SCENARI019",
    "SCENARI01A",
    "SCENARI01B",
    "SCENARI01C",
    "SCENARI01D",
    "SCENARI01E",
    "SCENARI01F",
    "SCENARI020",
    "SCENARI021",
    "SCENARI022",
    "SCENARI023",
    "SCENARI024",
    "SCENARI025",
    "SCENARI026",
    "SCENARI027",
    "SCENARI028",
    "SCENARI029",
    "SCENARI02A",
    "SCENARI02B",
    "SCENARI02C",
    "SCENARI02D",
    "SCENARI02E",
    "SCENARI02F",
    "SCENARI030",
    "SCENARI031",
    "SCENARI032",
    "SCENARI033",
    "SCENARI034",
    "SCENARI035",
    "SCENARI036",
    "SCENARI037",
    "SCENARI038",
    "SCENARI039",
    "SCENARI03A",
    "SCENARI03B",
    "SCENARI03C",
    "SCENARI03D",
    "SCENARI03E",
    "SCENARI03F",
    "SCENARI040",

    "SCENARI001",
    "SCENARI002",
    "SCENARI003",
    
    "SCENARI044",
    
    "SCENARI005",
    "SCENARI006",
    "SCENARI007",

    "SCENARI048",
    
    "SCENARI009",
    "SCENARI00A",
    "SCENARI00B",

    "SCENARI04C",

    "SCENARI00D",
    "SCENARI00E",
    "SCENARI00F",

    "SCENARI050",

    "SCENARI011",
    "SCENARI012",
    "SCENARI013",

    "SCENARI054",

    "SCENARI015",
    "SCENARI016",
    "SCENARI017",

    "SCENARI058",

    "SCENARI019",
    "SCENARI01A",
    "SCENARI01B",

    "SCENARI05C",

    "SCENARI01D",
    "SCENARI01E",
    "SCENARI01F",

    "SCENARI060",
    "SCENARI061",

    "SCENARI002",
    "SCENARI003",

    "SCENARI064",
    "SCENARI065",
    
    "SCENARI006",
    "SCENARI007",

    "SCENARI068",
    "SCENARI069",

    "SCENARI00A",
    "SCENARI00B",

    "SCENARI06C",
    "SCENARI06D",
    
    "SCENARI00E",
    "SCENARI00F",

    "SCENARI070",
    "SCENARI071",

    "SCENARI012",
    "SCENARI013",

    "SCENARI074",
    "SCENARI075",

    "SCENARI016",
    "SCENARI017",

    "SCENARI078",
    "SCENARI079",

    "SCENARI01A",
    "SCENARI01B",

    "SCENARI07C",
    "SCENARI07D",

    "SCENARI01E",
    "SCENARI01F",

    "SCENARI080",
    "SCENARI081",

    "SCENARI002",
    "SCENARI003",

    "SCENARI084",
    "SCENARI085",

    "SCENARI006",
    "SCENARI007",

    "SCENARI088",
    "SCENARI089",

    "SCENARI00A",
    "SCENARI00B",

    "SCENARI08C",
    "SCENARI08D",

    "SCENARI00E",
    "SCENARI00F",

    "SCENARI090",
    "SCENARI091",

    "SCENARI012",
    "SCENARI013",

    "SCENARI094",
    "SCENARI095",

    "SCENARI016",
    "SCENARI017",

    "SCENARI098",
    "SCENARI099",

    "SCENARI01A",
    "SCENARI01B",

    "SCENARI09C",
    "SCENARI09D",

    "SCENARI01E",
    "SCENARI01F",

    "SCENARI0A0",
    "SCENARIOA1",
    "SCENARI0A2",
    "SCENARI0A3",
    "SCENARI0A4",
    "SCENARI0A5",
    "SCENARI0A6",
    "SCENARI0A7",
    "SCENARI0A8",
    "SCENARI0A9",
    "SCENARI0AA",
    "SCENARI0AB",
    "SCENARI0AC",
    "SCENARI0AD",
    "SCENARI0AE",
    "SCENARI0AF",
    "SCENARI0B0",
    "SCENARI0B1",
    "SCENARI0B2",
    "SCENARI0B3",
    "SCENARI0B4",
    "SCENARI0B5",
    "SCENARI0B6",
    "SCENARI0B7",
    "SCENARI0B8",
    "SCENARI0B9",
    "SCENARI0BA",
    "SCENARI0BB",
    "SCENARI0BC",
    "SCENARI0BD",
    "SCENARI0BE",
    "SCENARI0BF",
    "SCENARI0C0",
    "SCENARI0C1",
    "SCENARI0C2",
    "SCENARI0C3",
    "SCENARI0C4",
    "SCENARI0C5",
    "SCENARI0C6",
    "SCENARI0C7",
    "SCENARI0C8",
    "SCENARI0C9",
    "SCENARI0CA",
    "SCENARI0CB",
    "SCENARI0CC",
    "SCENARI0CD",
    "SCENARI0CE",
    "SCENARI0CF",
    "SCENARI0D0",
    "SCENARI0D1",
    "SCENARI0D2",
    "SCENARI0D3",
    "SCENARI0D4",
    "SCENARI0D5",
    "SCENARI0D6",
    "SCENARI0D7",
    "SCENARI0D8",
    "SCENARI0D9",
    "SCENARI0DA",
    "SCENARI0DB",
    "SCENARI0DC",
    "SCENARI0DD",
    "SCENARI0DE",
    "SCENARI0DF",
    "SCENARI0E0",
    "SCENARI0E1",
    "SCENARI0E2",
    "SCENARI0E3",
    "SCENARI0E4",
    "SCENARI0E5",
    "SCENARI0E6",
    "SCENARI0E7",
    "SCENARI0E8",
    "SCENARI0E9",
    "SCENARI0EA",
    "SCENARI0EB",
    "SCENARI0EC",
    "SCENARI0ED",
    "SCENARI0EE",
    "SCENARI0EF",
    "SCENARI0F0",
    "SCENARI0F1",
    "SCENARI0F2",
    "SCENARI0F3",
    "SCENARI0F4",
    "SCENARI0F5",
    "SCENARI0F6",
    "SCENARI0F7",
    "SCENARI0F8",
    "SCENARI0F9",
    "SCENARI0FA",
    "SCENARI0FB",
    "SCENARI0FC",
    "SCENARI0FD",
    "SCENARI0FE",
    "SCENARI0FF",
};

struct FlagDebugData gFlagDebugData[2] = {
    {
        "SCF",
        gMain.scriptFlags,
        scriptFlagNames,
        0,
        256
    },
    {
        "STF",
        &gMain.gameStateFlags,
        gameStateFlagNames,
        1,
        32
    }
};

void sub_8001FB0(struct DebugContext * debug) {
    struct FlagDebug * flagDebug = &debug->menu.flag;
    struct FlagDebugData * flagDebugData;
    bool32 flagSet;
    s32 i, j, k;
    s32 unk1;

    sub_8001F08(debug);
    flagDebugData = &gFlagDebugData[flagDebug->unk02];
    if(flagDebug->unk00 >= flagDebugData->flagCount) {
        s32 flagcount = ARRAY_COUNT(gFlagDebugData);
        flagDebug->unk02++;
        flagDebug->unk00 -= flagDebugData->flagCount;
        if(flagDebug->unk02 >= flagcount)
            flagDebug->unk02 = 0;
    } else if(flagDebug->unk00 < 0) {
        flagDebug->unk02--;
        if(flagDebug->unk02 < 0)
            flagDebug->unk02 = 1;
        flagDebugData = &gFlagDebugData[flagDebug->unk02];
        flagDebug->unk00 += flagDebugData->flagCount;
    }
    flagSet = GetFlag(flagDebugData->flagType, flagDebug->unk00);
    if(gJoypad.pressedKeys & A_BUTTON) {
        ChangeFlag(flagDebugData->flagType, flagDebug->unk00, flagSet ? FALSE : TRUE);
    }
    DebugClearRect(5, 25, 2, 8);
    DebugPrintStr(flagDebugData->name, 5, 6);
    DebugPrintStr(flagDebugData->flagNames[flagDebug->unk00], 5, 7);
    DebugPrintNum(flagDebug->unk00, 9, 6);
    unk1 = (flagDebug->unk00 / 32) * 32;
    for(i = 0; i < 2; i++) {
        for(j = 0; j < 4; j++) {
            for(k = 0; k < 4; k++) {
                s32 r5 = 0;
                flagSet = GetFlag(flagDebugData->flagType, i * 16 + j * 4 + k + unk1);
                if(flagDebug->unk00 - unk1 == i * 16 + j * 4 + k) {
                    r5--;
                    if(i != 0)
                        r5 = 1;
                }
                DebugPrintNum(flagSet, j * 5 + k + 5, i + 3 + r5);
            }
        }
    }
}

void sub_8002140(struct DebugContext * debug) {
    gMain.process[GAME_PROCESS_STATE] = 3;
}

void (*gUnknown_0814D824[])(struct DebugContext * debug) = {
    sub_8001F98,
    sub_8001FB0,
    sub_8002140,
};

void sub_800214C(struct DebugContext * debug) {
    if(gJoypad.pressedKeys & START_BUTTON)
        debug->unk1 = 2;
    gUnknown_0814D824[debug->unk1](debug);
}

void sub_800217C(struct DebugContext * debug) {
    struct ScenarioDebug * scenarioDebug = &debug->menu.scenario;
    scenarioDebug->unk00 = gMain.scenarioIdx;
    debug->unk1++;
}

char * gScriptNames[] = {
    "SCE0_SAIBAN      ",
    "SCE1-0 TANTEI    ",
    "SCE1-1 SAIBAN    ",
    "SCE1-2 TANTEI    ",
    "SCE1-3 SAIBAN    ",
    "SCE2-0 TANTEI    ",
    "SCE2-1 SAIBAN    ",
    "SCE2-2 TANTEI    ",
    "SCE2-3 SAIBAN    ",
    "SCE2-4 TANTEI    ",
    "SCE2-5 SAIBAN    ",
    "SCE3-0 TANTEI    ",
    "SCE3-1 SAIBAN    ",
    "SCE3-2 TANTEI    ",
    "SCE3-3 SAIBAN    ",
    "SCE3-4 TANTEI    ",
    "SCE3-5 SAIBAN    ",
};

extern u8 gUnknown_080266D0[]; // scenario process array

void sub_8002198(struct DebugContext * debug) {
    struct ScenarioDebug * scenarioDebug = &debug->menu.scenario;
    struct Main * main = &gMain;
    s32 scriptCount = ARRAY_COUNT(gScriptNames)-1; //TODO: script count should probably be a constant

    if(gJoypad.pressedKeys & DPAD_UP) {
        scenarioDebug->unk00--;
        if(scenarioDebug->unk00 < 0)
            scenarioDebug->unk00 = scriptCount;
    } else if(gJoypad.pressedKeys & DPAD_DOWN) {
        scenarioDebug->unk00++;
        if(scenarioDebug->unk00 > scriptCount)
            scenarioDebug->unk00 = 0;
    }
    
    if(gJoypad.pressedKeys & A_BUTTON) {
        ResetGameState();
        main->scenarioIdx = scenarioDebug->unk00;
        SET_PROCESS_PTR(gCaseStartProcess[main->scenarioIdx], 0, 0, 0, main);
    } else {
        DebugPrintStr("SCENARIO SELECT     ", 5, 3);
        DebugPrintStr(gScriptNames[scenarioDebug->unk00], 5, 5);
    }
}

void sub_800223C(struct DebugContext * debug) {
    gMain.process[GAME_PROCESS_STATE] = 3;
}

void (*gUnknown_0814D888[])(struct DebugContext * debug) = {
    sub_800217C,
    sub_8002198,
    sub_800223C,
};

void sub_8002248(struct DebugContext * debug) {
    if(gJoypad.pressedKeys & START_BUTTON)
        debug->unk1 = 2;
    gUnknown_0814D888[debug->unk1](debug);
}
