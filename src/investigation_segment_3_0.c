#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"

extern u8 gUnknown_080173B0[0x1E0];
extern u8 gUnknown_08017590[0xA8];
extern u8 gUnknown_08017638[0x64];
extern u8 gUnknown_0801769C[0x28];
extern u8 gUnknown_080176C4[0x50];
extern u8 gUnknown_08017714[0x8C];
extern u8 gUnknown_080177A0[0x78];
extern u8 gUnknown_08017818[0x8C];
extern u8 gUnknown_080178A4[0x3C];
extern u8 gUnknown_080178E0[0x78];
extern u8 gUnknown_08017958[0x64];

void sub_80044D0(struct Main * main)
{
    DmaCopy16(3, gUnknown_08017590, gMain.roomData, sizeof(gUnknown_08017590));
    DmaCopy16(3, gUnknown_080173B0, gTalkData, sizeof(gUnknown_080173B0));
    main->currentRoomId = 6;
}

void sub_8004514(struct Main * main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xA2)) {
                if(!GetFlag(0, 0xA7)) {
                    sub_8002CCC(0x8B, 0xA7);
                }
                else {
                    sub_8002C98(4, 0x510, 0x510);
                    PlayBGM(6);
                }
            }
            else if(GetFlag(0, 0x9F)) {
                sub_8002C98(4, 0x510, 0x510);
                PlayBGM(6);
            }
            LOADEXAMDATA(gUnknown_08017638);
            break;
        }
        case 2: {
            if(GetFlag(0, 0xB1)) {
                if(!GetFlag(0, 0xB2)) {
                    sub_8002CCC(0x99, 0xB2);
                }
                else {
                    if(!GetFlag(0, 0xB9)) {
                        sub_8002C98(9, 0x55D0, 0x55D0);
                    }
                    PlayBGM(0);
                }
            }
            else if(!GetFlag(0, 0x90)) {
                sub_8002CCC(0x91, 0x90);
            }
            else {
                if(!GetFlag(2, 0x85)) {
                    sub_8002C98(9, 0x55D0, 0x55D0);
                }
                PlayBGM(0);
            }
            LOADEXAMDATA(gUnknown_0801769C);
            break;
        }
        case 16: {
            if(!GetFlag(0, 0x94)) {
                sub_8002CCC(0xA7, 0x94);
            }
            else if(!GetFlag(0, 0x98)) {
                sub_8002C98(0x14, 0, 0);
                if(GetFlag(2, 0x8B) && GetFlag(2, 0x8C) && GetFlag(2, 0x8D) && GetFlag(2, 0x8E) && GetFlag(0, 0x91)) {
                    sub_8002CCC(0xA8, 0x98);
                }
                PlayBGM(1);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_080176C4);
            break;
        }
        case 17: {
            if(GetFlag(0, 0xA8)) {
                if(!GetFlag(0, 0xA9)) {
                    sub_8002CCC(0xB7, 0xA9);
                }
                else {
                    sub_8002C98(0x19, 0x3F70, 0x3F70);
                    PlayBGM(0x16);
                }
                LOADEXAMDATA(gUnknown_080177A0);
            }
            else {
                if(!GetFlag(0, 0x99)) {
                    sub_8002CCC(0xB3, 0x99);
                }
                else {
                    PlayBGM(0x1F);
                }
                if(!GetFlag(0, 0xA0)) {
                    PlayAnimation(0x10);
                }
                LOADEXAMDATA(gUnknown_08017714);
            }
            break;
        }
        case 18: {
            if(GetFlag(0, 0xA2)) {
                if(!GetFlag(0, 0xA8)) {
                    sub_8002CCC(0xD1, 0xA8);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(!GetFlag(0, 0x9A)) {
                sub_8002CCC(0xC3, 0x9A);
            }
            else if(GetFlag(0, 0xA1) && !GetFlag(0, 0x9E)) {
                if(GetFlag(0, 0x9C)) {
                    sub_8002C98(0x1F, 0, 0);
                }
                else {
                    sub_8002C98(0x1F, 0xB94, 0xB94);
                }
                PlayBGM(0x16);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08017818);
            break;
        }
        case 19: {
            if(!GetFlag(0, 0xA4)) {
                sub_8002CCC(0xC2, 0xA4);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_080178A4);
            break;
        }
        case 14: {
            if(GetFlag(0, 0xB1)) {
                if(!GetFlag(0, 0xB7)) {
                    sub_8002CCC(0xDF, 0xB7);
                }
                else {
                    sub_8002C98(0x14, 0, 0);
                    PlayBGM(1);
                }
            }
            else if(GetFlag(0, 0xA8)) {
                if(!GetFlag(0, 0xAE)) {
                    sub_8002CCC(0xDE, 0xAE);
                }
                else {
                    PlayBGM(1);
                }
            }
            else if(GetFlag(0, 0x9E)) {
                if(!GetFlag(0, 0xA6)) {
                    sub_8002CCC(0xD6, 0xA6);
                }
                else {
                    sub_8002C98(0x14, 0, 0);
                    PlayBGM(1);
                }
            }
            else if(!GetFlag(0, 0xA5)) {
                sub_8002CCC(0xD5, 0xA5);
            }
            else {
                PlayBGM(1);
            }
            LOADEXAMDATA(gUnknown_080178E0);
            break;
        }
        case 3: {
            if(GetFlag(2, 0x91) && GetFlag(0, 0xAD)) {
                if(!GetFlag(0, 0xAF)) {
                    sub_8002CCC(0xEB, 0xAF);
                }
                else {
                    sub_8002C98(0xC, 0, 0);
                    PlayBGM(0x1A);
                }
            }
            else if(!GetFlag(0, 0xAC)) {
                sub_8002CCC(0xE5, 0xAC);
            }
            LOADEXAMDATA(gUnknown_08017958);
            break;
        }
    }
}

void nullsub_10(struct Main *main) {
}
