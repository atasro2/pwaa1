#include "global.h"
#include "main.h"
#include "sound.h"
#include "animation.h"

void sub_8003924(struct Main * main)
{
    DmaCopy16(3, gUnknown_0801618C, gMain.roomData, sizeof(gUnknown_0801618C));
    DmaCopy16(3, gUnknown_08016024, gTalkData, sizeof(gUnknown_08016024));
    main->currentRoomId = 6;
}

void sub_8003968(struct Main * main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xCA)) {
                if(!GetFlag(0, 0xCC)) {
                    sub_8002CCC(0x8D, 0xCC);
                }
                else {
                    sub_8002C98(5, 0, 0);
                    PlayBGM(0xC);
                }
                LOADEXAMDATA(gUnknown_08016260);
            }
            else {
                if(GetFlag(0, 0xB0)) {
                    sub_8002C98(4, 0x510, 0x510);
                    PlayBGM(6);
                }
                LOADEXAMDATA(gUnknown_080161FC);
            }
            break;
        }
        case 2: {
            if(GetFlag(0, 0xCC)) {
                if(!GetFlag(0, 0xD9)) {
                    sub_8002CCC(0x9C, 0xD9);
                }
            }
            else if(!GetFlag(0, 0xB1)) {
                sub_8002CCC(0x93, 0xB1);
            }
            else {
                sub_8002C98(0x1B, 0, 0);
                PlayBGM(0);
            }
            LOADEXAMDATA(gUnknown_080162C4);
            break;
        }
        case 7: {
            if(GetFlag(0, 0xCC)) {
                if(!GetFlag(0, 0xCD)) {
                    sub_8002CCC(0xB5, 0xCD);
                }
                else if(!GetFlag(0, 0xD0)) {
                    sub_8002C98(0x11, 0x820, 0x820);
                    PlayBGM(0xC);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_080162EC);
            }
            else if(GetFlag(0, 0xC1)) {
                if(!GetFlag(0, 0xC2)) {
                    sub_8002CCC(0xB3, 0xC2);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_08016350);
            }
            else if(GetFlag(0, 0xBB) && GetFlag(0, 0xBC)) {
                if(!GetFlag(0, 0xBD)) {
                    sub_8002CCC(0xAE, 0xBD);
                }
                else {
                    sub_8002C98(0x11, 0, 0);
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_080162EC);
            }
            else if(GetFlag(0, 0xB8)) {
                if(!GetFlag(0, 0xB9)) {
                    sub_8002CCC(0xA5, 0xB9);
                }
                else {
                    sub_8002C98(0x10, 0, 0);
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_080162EC);
            }
            else {
                if(!GetFlag(0, 0xB2)) {
                    sub_8002CCC(0x9E, 0xB2);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_080162EC);
            }
            break;
        }
        case 8: {
            if(GetFlag(0, 0xCC)) {
                if(!GetFlag(0, 0xCE)) {
                    sub_8002CCC(0xD4, 0xCE);
                }
                LOADEXAMDATA(gUnknown_0801647C);
            }
            else if(GetFlag(0, 0xBD)) {
                if(!GetFlag(0, 0xBE)) {
                    sub_8002CCC(0xCD, 0xBE);
                }
                else if(!GetFlag(0, 0xC1)) {
                    gMain.talkingAnimationOffset = 0;
                    gMain.idleAnimationOffset = 0;
                    PlayPersonAnimation(0x801C, 0, 0, 0);
                    gInvestigation.unk5 = 1;
                    sub_800B7A8(&gInvestigation, 0xF);
                    PlayBGM(0x15);
                }
                LOADEXAMDATA(gUnknown_080163B4);
            }
            else {
                if(!GetFlag(0, 0xB8)) {
                    PlayAnimation(0xE);
                }
                if(!GetFlag(0, 0xB3)) {
                    sub_8002CCC(0xBF, 0xB3);
                }
                LOADEXAMDATA(gUnknown_080163B4);
            }
            break;
        }
        case 9: {
            if(GetFlag(0, 0xCC)) {
                if(!GetFlag(0, 0xCF)) {
                    sub_8002CCC(0xEB, 0xCF);
                }
                else {
                    sub_8002C98(0x1C, 0, 0);
                    PlayBGM(0x15);
                }
                LOADEXAMDATA(gUnknown_080165D0);
            }
            else if(GetFlag(0, 0xBA)) {
                if(!GetFlag(0, 0xBB)) {
                    sub_8002CCC(0xE2, 0xBB);
                }
                else {
                    sub_8002C98(0x12, 0, 0);
                    PlayBGM(0x15);
                }
                LOADEXAMDATA(gUnknown_08016544);
            }
            else {
                if(!GetFlag(0, 0xB4)) {
                    sub_8002CCC(0xDA, 0xB4);
                }
                else {
                    PlayBGM(0x19);
                }
                LOADEXAMDATA(gUnknown_08016544);
            }
            break;
        }
        case 10: {
            if(GetFlag(0, 0xCA)) {
                if(!GetFlag(0, 0xCB)) {
                    sub_8002CCC(0x10A, 0xCB);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_080166D4);
            }
            else {
                if(!GetFlag(0, 0xB5)) {
                    sub_8002CCC(0x103, 0xB5);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_0801665C);
            }
            break;
        }
        case 11: {
            if(GetFlag(0, 0xCC)) {
                LOADEXAMDATA(gUnknown_080167C4);
            }
            else {
                if(GetFlag(0, 0xC7)) {
                    if(!GetFlag(0, 0xC8)) {
                        sub_8002CCC(0x116, 0xC8);
                    }
                }
                else if(!GetFlag(0, 0xB6)) {
                    sub_8002CCC(0x10F, 0xB6);
                }
                LOADEXAMDATA(gUnknown_0801674C);
            }
            break;
        }
        case 12: {
            if(GetFlag(0, 0xCC)) {
                PlayBGM(0x1F);
                LOADEXAMDATA(gUnknown_080168F0);
            }
            else if(GetFlag(0, 0xB8)) {
                if(!GetFlag(0, 0xDA)) {
                    sub_8002CCC(0x128, 0xDA);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_0801683C);
            }
            else {
                if(!GetFlag(0, 0xB7)) {
                    sub_8002CCC(0x11E, 0xB7);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_0801683C);
            }
            break;
        }
        case 13: {
            if(GetFlag(0, 0xD3)) {
                if(!GetFlag(0, 0xD4)) {
                    sub_8002CCC(0x143, 0xD4);
                }
                else if(!GetFlag(0, 0xD1)) {
                    sub_8002C98(0x10, 0, 0);
                }
                LOADEXAMDATA(gUnknown_08016A30);
            }
            else if(GetFlag(0, 0xCC)) {
                LOADEXAMDATA(gUnknown_08016A30);
            }
            else {
                if(!GetFlag(0, 0xC5)) {
                    sub_8002CCC(0x134, 0xC5);
                }
                else if(!GetFlag(0, 0xCB)) {
                    sub_8002C98(0x18, 0, 0);
                }
                LOADEXAMDATA(gUnknown_080169A4);
            }
            break;
        }
    }
}

void nullsub_9(struct Main *main) {
}
