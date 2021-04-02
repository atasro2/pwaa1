#include "global.h"
#include "main.h"
#include "sound.h"
#include "animation.h"

void sub_8002D70(struct Main * main)
{
    DmaCopy16(3, gUnknown_080150D0, gMain.roomData, sizeof(gUnknown_080150D0));
    DmaCopy16(3, gUnknown_08014FB8, gTalkData, sizeof(gUnknown_08014FB8));
    main->currentRoomId = 0;
}

void sub_8002DB4(struct Main * main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 0: {
            if(GetFlag(0, 0x53)) {
                if(!GetFlag(0, 0x4F)) {
                    sub_8002CCC(0xB1, 0x4F);
                }
                DmaCopy16(3, gUnknown_08015178, gExaminationData, 0x64);
            }
            else if(GetFlag(0, 0x48)) {
                if(!GetFlag(0, 0x4A)) {
                    sub_8002CCC(0x94, 0x4A);
                }
                else {
                    sub_8002C98(0x14, 0, 0);
                    PlayBGM(0x19);
                }
                DmaCopy16(3, gUnknown_08015178, gExaminationData, 0x64);
            }
            else if (GetFlag(0, 0x41)) {
                if(!GetFlag(0, 0x42)) {
                    sub_8002CCC(0x84, 0x42);
                }
                else {
                    sub_8002C98(4, 0, 0);
                    if(GetFlag(0, 0x44) && GetFlag(0, 0x43) && GetFlag(0, 0x45) && GetFlag(0, 0x46)) {
                        sub_8002CCC(0x85, 0x47);
                    }
                    else {
                        PlayBGM(0xC);
                    }
                }
                DmaCopy16(3, gUnknown_08015100, gExaminationData, 0x78);
            }
            else if(GetFlag(0, 0x3F)) {
                sub_8002CCC(0x82, 0x40);
            }
            break;
        }
        case 1: {
            if(!GetFlag(0, 0x41)) {
                sub_8002CCC(0xB3, 0x41);
                PlayAnimation(0x1B);
            }
            else {
                PlayBGM(0xC);
            }
            if(GetFlag(0, 0x49)) {
                PlayAnimation(0xC);
            }
            DmaCopy16(3, gUnknown_080151DC, gExaminationData, 0xDC);
            break;
        }
        case 2: {
            if(GetFlag(0, 0x62) && GetFlag(0, 0x64) && GetFlag(0, 0x63)) {
                if(!GetFlag(0, 0x5C)) {
                    sub_8002CCC(0xE1, 0x5C);
                }
                else {
                    sub_8002C98(0x4, 0x1FB0, 0x1FB0);
                    if(GetFlag(0, 0x5A)) {
                        PlayBGM(0xC);
                    }
                    else {
                        PlayBGM(0x1C);
                    }
                }
            }
            else if(GetFlag(0, 0x53)) {
                if(!GetFlag(0, 0x61)) {
                    sub_8002CCC(0xEA, 0x61);
                }
            }
            else if(GetFlag(0, 0x50)) {
                if(!GetFlag(0, 0x5B)) {
                    sub_8002CCC(0xD8, 0x5B);
                }
                else {
                    sub_8002C98(4, 0x1FB0, 0x1FB0);
                    PlayBGM(0);
                }
            }
            else if(!GetFlag(0, 0x48)) {
                sub_8002CCC(0xC2, 0x48);
            }
            else {
                sub_8002C98(4, 0x1FB0, 0x1FB0);
                PlayBGM(0);
            }
            DmaCopy16(3, gUnknown_080152B8, gExaminationData, 0x28);
            break;
        }
        case 3: {
            if(GetFlag(0, 0x52)) {
                if(!GetFlag(0, 0x53)) {
                    sub_8002CCC(0xFB, 0x53);
                }
                else {
                    if(GetFlag(0, 0x53)) {
                        sub_8002C98(0xC, 0, 0);
                    }
                    PlayBGM(0x1A);
                }
            }
            else if(!GetFlag(0, 0x50)) {
                sub_8002CCC(0xFA, 0x50);
            }
            DmaCopy16(3, gUnknown_080152E0, gExaminationData, 0x64);
            break;
        }
        case 5: {
            if(GetFlag(0, 0x5A)) {
                if(!GetFlag(0, 0x54)) {
                    sub_8002CCC(0xF7, 0x54);
                }
                else {
                    PlayBGM(0xC);
                }
            }
            else if(!GetFlag(0, 0x51)) {
                sub_8002CCC(0xEB, 0x51);
            }
            else {
                if(GetFlag(0, 0x52)) {
                    sub_8002C98(0x16, 0, 0);
                }
                PlayBGM(0x16);
            }
            DmaCopy16(3, gUnknown_08015344, gExaminationData, 0x78);
            break;
        }
    }
}

void nullsub_7(struct Main *main) {
}
