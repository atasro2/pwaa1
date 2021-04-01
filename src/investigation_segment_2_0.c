#include "global.h"
#include "main.h"
#include "sound.h"
#include "animation.h"

void sub_8003594(struct Main * main)
{
    DmaCopy16(3, gUnknown_08015B70, gMain.roomData, sizeof(gUnknown_08015B70));
    DmaCopy16(3, gUnknown_08015A1C, gTalkData, sizeof(gUnknown_08015A1C));
    main->currentRoomId = 6;
}

void sub_80035D8(struct Main * main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId-2) {
        case 4: {
            if(GetFlag(0, 0xA0)) {
                if(!GetFlag(0, 0x95)) {
                    sub_8002CCC(0x8C, 0x95);
                }
                else {
                    sub_8002C98(4, 0x510, 0x510);
                    PlayBGM(6);
                }
            }
            else if(GetFlag(0, 0x94)) {
                sub_8002C98(4, 0x510, 0x510);
                PlayBGM(6);
            }
            DmaCopy16(3, gUnknown_08015BD0, gExaminationData, sizeof(gUnknown_08015BD0));
            break;
        }
        case 1: {
            break;
        }
        case 2: {
            break;
        }
        case 3: {
            break;
        }
        case 0: {
            if (GetFlag(0, 0xA0)) {
                if (!GetFlag(0, 0x92)) {
                    sub_8002CCC(0x9F, 0x92);
                }
            }
            else if(GetFlag(0, 0x9A)) {
                if(!GetFlag(0, 0x91)) {
                    sub_8002CCC(0x99, 0x91);
                }
                else {
                    sub_8002C98(0x1B, 0, 0);
                    PlayBGM(0);
                }
            }
            else if(!GetFlag(0, 0x90)) {
                sub_8002CCC(0x90, 0x90);
            }
            else {
                sub_8002C98(0x1B, 0, 0);
                PlayBGM(0);
            }
            DmaCopy16(3, gUnknown_08015C34, gExaminationData, sizeof(gUnknown_08015C34));
            break;
        }
        case 5: {
            if(GetFlag(0, 0xA8)) {
                if(!GetFlag(0, 0xA9)) {
                    sub_8002CCC(0xB4, 0xA9);
                }
                else if(GetFlag(0, 0xAA)) {
                    PlayBGM(0x1F);
                }
                else {
                    sub_8002C98(0x11, 0, 0);
                    PlayBGM(0x19);
                }
            }
            else if(GetFlag(0, 0xA0)) {
                if(!GetFlag(0, 0xA1)) {
                    sub_8002CCC(0xAE, 0xA1);
                }
                else {
                    sub_8002C98(0x11, 0, 0);
                    PlayBGM(0x19);
                }
            }
            else if(!GetFlag(0, 0x93)) {
                sub_8002CCC(0xA1, 0x93);
            }
            else {
                sub_8002C98(0x11, 0, 0);
                PlayBGM(0x19);
            }
            DmaCopy16(3, gUnknown_08015C5C, gExaminationData, sizeof(gUnknown_08015C5C));
            break;
        }
        case 6: {
            if(!GetFlag(0, 0x9D)) {
                sub_8002CCC(0xBE, 0x9D);
            }
            DmaCopy16(3, gUnknown_08015CC0, gExaminationData, sizeof(gUnknown_08015CC0));
            break;
        }
        case 7: {
            if(!GetFlag(0, 0xA2)) {
                sub_8002CCC(0xC9, 0xA2);
            }
            DmaCopy16(3, gUnknown_08015D88, gExaminationData, sizeof(gUnknown_08015D88));
            break;
        }
        case 8: {
            if(!GetFlag(0, 0x9C)) {
                sub_8002CCC(0xD2, 0x9C);
            }
            else {
                sub_8002C98(0x14, 0, 0);
                PlayBGM(1);
            }
            DmaCopy16(3, gUnknown_08015E14, gExaminationData, sizeof(gUnknown_08015E14));
            break;
        }
        case 9: {
            if(GetFlag(0, 0xAA)) {
                if(!GetFlag(0, 0xAB)) {
                    sub_8002CCC(0xFA, 0xAB);
                }
            }
            else if(!GetFlag(0, 0xA4)) {
                sub_8002CCC(0xED, 0xA4);
            }
            else {
                if(GetFlag(0, 0xA5)) {
                    sub_8002C98(0x10, 0, 0);
                }
                PlayBGM(0x19);
            }
            DmaCopy16(3, gUnknown_08015E8C, gExaminationData, 0x78);
            break;
        }
    }
}

void nullsub_8(struct Main *main) {
}
