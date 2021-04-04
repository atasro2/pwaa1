#include "global.h"
#include "main.h"
#include "sound.h"
#include "animation.h"

void sub_8005034(struct Main * main)
{
    DmaCopy16(3, gUnknown_0801833C, gMain.roomData, sizeof(gUnknown_0801833C));
    DmaCopy16(3, gUnknown_0801824C, gTalkData, sizeof(gUnknown_0801824C));
    main->currentRoomId = 6;
}

void sub_8005078(struct Main * main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xA2) && GetFlag(0, 0x93)) {
                if(!GetFlag(0, 0x91)) {
                    sub_8002CCC(0x8D, 0x91);
                }
                else {
                    sub_8002C98(4, 0x510, 0x510);
                    PlayBGM(6);
                }
            }
            else if(!GetFlag(0, 0x90)) {
                sub_8002CCC(0x80, 0x90);
            }
            else {
                sub_8002C98(0x19, 0x13B0, 0x13B0);
                PlayBGM(0x16);
            }
            LOADEXAMDATA(gUnknown_080183E4);
            break;
        }
        case 2: {
            if(GetFlag(0, 0x93)) {
                if(!GetFlag(0, 0x95)) {
                    sub_8002CCC(0x93, 0x95);
                }
                else {
                    sub_8002C98(9, 0x55D0, 0x55D0);
                    PlayBGM(0);
                }
            }
            else if(!GetFlag(0, 0x94)) {
                sub_8002CCC(0x90, 0x94);
            }
            LOADEXAMDATA(gUnknown_08018448);
            break;
        }
        case 16: {
            if(!GetFlag(0, 0x98)) {
                sub_8002CCC(0x9E, 0x98);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08018470);
            break;
        }
        case 17: {
            if(!GetFlag(0, 0x99)) {
                sub_8002CCC(0x9F, 0x99);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_080184C0);
            break;
        }
        case 19: {
            if(!GetFlag(0, 0x9A)) {
                sub_8002CCC(0xA0, 0x9A);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08018538);
            break;
        }
        case 20: {
            if(!GetFlag(0, 0xA1)) {
                sub_8002CCC(0xBA, 0xA1);
            }
            else {
                PlayBGM(0xC);
            }
            LOADEXAMDATA(gUnknown_08018574);
            break;
        }
        case 14: {
            if(GetFlag(0, 0xA0)) {
                if(!GetFlag(0, 0x9C)) {
                    sub_8002CCC(0xA2, 0x9C);
                }
                else {
                    PlayBGM(1);
                }
            }
            else {
                if(!GetFlag(0, 0x9B)) {
                    sub_8002CCC(0xA1, 0x9B);
                }
                else {
                    PlayBGM(1);
                }
            }
            LOADEXAMDATA(gUnknown_08018600);
            break;
        }
        case 15: {
            if(!GetFlag(0, 0xA3)) {
                sub_8002CCC(0xBE, 0xA3);
            }
            else {
                if(GetFlag(0, 0xA4)) {
                    sub_8002C98(0x21, 0x2260, 0x2260);
                }
                PlayBGM(0xC);
            }
            PlayAnimation(0xF);
            LOADEXAMDATA(gUnknown_08018678);
            break;
        }
        case 3: {
            if(GetFlag(0, 0x97)) {
                if(!GetFlag(0, 0x9E)) {
                    sub_8002CCC(0xA9, 0x9E);
                }
                else {
                    sub_8002C98(0xC, 0, 0);
                    PlayBGM(0xC);
                }
            }
            else if(!GetFlag(0, 0x9D)) {
                sub_8002CCC(0xA3, 0x9D);
            }
            LOADEXAMDATA(gUnknown_080186DC);
            break;
        }
    }
}

void nullsub_37(struct Main *main) {
}
