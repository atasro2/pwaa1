#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"

void sub_80040A4(struct Main * main)
{
    DmaCopy16(3, gUnknown_08016C70, gMain.roomData, sizeof(gUnknown_08016C70));
    DmaCopy16(3, gUnknown_08016B6C, gTalkData, sizeof(gUnknown_08016B6C));
    main->currentRoomId = 6;
}

void sub_80040E8(struct Main * main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xE0)) {
                sub_8002C98(4, 0x510, 0x510);
                PlayBGM(6);
            }
            LOADEXAMDATA(gUnknown_08016CE0);
            break;
        }
        case 2: {
            if(!GetFlag(0, 0xE1)) {
                sub_8002CCC(0x8E, 0xE1);
            }
            else {
                sub_8002C98(0x1B, 0, 0);
                PlayBGM(0);
            }
            LOADEXAMDATA(gUnknown_08016D44);
            break;
        }
        case 7: {
            if(GetFlag(2, 0x77)) {
                if(!GetFlag(0, 0xEE)) {
                    sub_8002CCC(0xA3, 0xEE);
                }
                else {
                    sub_8002C98(0x11, 0, 0);
                    PlayBGM(0xC);
                }
            }
            else if(!GetFlag(0, 0xE2)) {
                sub_8002CCC(0x98, 0xE2);
            }
            else {
                sub_8002C98(0x11, 0, 0);
                PlayBGM(0x19);
            }
            LOADEXAMDATA(gUnknown_08016D6C);
            break;
        }
        case 8: {
            if(GetFlag(0, 0xEF)) {
                if(!GetFlag(0, 0xF0)) {
                    sub_8002CCC(0xC6, 0xF0);
                }
            }
            else if(!GetFlag(0, 0xE3)) {
                sub_8002CCC(0xB4, 0xE3);
            }
            else {
                if(GetFlag(0, 0xE4)) {
                    gMain.talkingAnimationOffset = 0;
                    gMain.idleAnimationOffset = 0;
                    PlayPersonAnimation(0x8014, 0, 0, 0);
                    gInvestigation.unk5 = 1;
                    sub_800B7A8(&gInvestigation, 0xF);
                }
                PlayBGM(1);
            }
            LOADEXAMDATA(gUnknown_08016DD0);
            break;
        }
        case 9: {
            if(GetFlag(0, 0xEF)) {
                if(!GetFlag(0, 0xF1)) {
                    sub_8002CCC(0xDF, 0xF1);
                }
                LOADEXAMDATA(gUnknown_08016E98);
            }
            else if(GetFlag(0, 0xE9)) {
                if(!GetFlag(0, 0xEA)) {
                    sub_8002CCC(0xCA, 0xEA);
                }
                else {
                    sub_8002C98(0x10, 0, 0);
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_08016F24);
            }
            else {
                if(!GetFlag(0, 0xE5)) {
                    sub_8002CCC(0xC7, 0xE5);
                }
                LOADEXAMDATA(gUnknown_08016E98);
            }
            break;
        }
        case 10: {
            if(!GetFlag(0, 0xE6)) {
                sub_8002CCC(0xE0, 0xE6);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08016FB0);
            break;
        }
        case 12: {
            if(!GetFlag(0, 0xE7)) {
                sub_8002CCC(0xE7, 0xE7);
            }
            else {
                if(!GetFlag(0, 0xF2)) {
                    sub_8002C98(0x18, 0, 0);
                }
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08017028);
            break;
        }
        case 13: {
            if(GetFlag(0, 0xF2)) {
                sub_8002CCC(0xFF, 0xFF);
            }
            else if(!GetFlag(0, 0xE8)) {
                sub_8002CCC(0xF7, 0xE8);
            }
            LOADEXAMDATA(gUnknown_080170DC);
            break;
        }
    }
}

void sub_8004488(struct Main * main)
{
    if(main->currentRoomId == 2) {
        if(!GetFlag(0, 0xE9) && GetFlag(2, 0x6D) && GetFlag(2, 0x6E) && GetFlag(2, 0x6F)) {
            ChangeFlag(0, 0xE9, 1);
        }
    }
}
