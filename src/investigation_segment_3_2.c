#include "global.h"
#include "main.h"
#include "case_data.h"
#include "investigation.h"
#include "sound.h"
#include "animation.h"

extern u8 gUnknown_08017B24[0x168];
extern u8 gUnknown_08017C8C[0xA8];
extern u8 gUnknown_08017D34[0x64];
extern u8 gUnknown_08017D98[0x28];
extern u8 gUnknown_08017DC0[0x50];
extern u8 gUnknown_08017E10[0x78];
extern u8 gUnknown_08017E88[0xDC];
extern u8 gUnknown_08017F64[0x8C];
extern u8 gUnknown_08017FF0[0x3C];
extern u8 gUnknown_0801802C[0x8C];
extern u8 gUnknown_080180B8[0x78];
extern u8 gUnknown_08018130[0x50];
extern u8 gUnknown_08018180[0x64];

void sub_80049F8(struct Main * main)
{
    DmaCopy16(3, gUnknown_08017C8C, gMain.roomData, sizeof(gUnknown_08017C8C));
    DmaCopy16(3, gUnknown_08017B24, gTalkData, sizeof(gUnknown_08017B24));
    main->currentRoomId = 2;
}

void sub_8004A3C(struct Main * main)
{
    DmaFill16(3, 0xFFFF, gExaminationData, sizeof(gExaminationData));
    switch(main->currentRoomId) {
        case 6: {
            if(GetFlag(0, 0xC3)) {
                if(!GetFlag(0, 0xC1)) {
                    sub_8002CCC(0x86, 0xC1);
                }
                else {
                    sub_8002C98(4, 0x510, 0x510);
                    PlayBGM(6);
                }
            }
            else if(!GetFlag(0, 0xC0)) {
                sub_8002CCC(0x80, 0xC0);
            }
            LOADEXAMDATA(gUnknown_08017D34);
            break;
        }
        case 2: {
            if(GetFlag(0, 0xC3)) {
                if(!GetFlag(0, 0xC4)) {
                    sub_8002CCC(0x99, 0xC4);
                }
            }
            else if(GetFlag(0, 0xC5)) {
                sub_8002CCC(0x96, 0xC3);
            }
            else if(!GetFlag(0, 0xC2)) {
                sub_8002CCC(0x8A, 0xC2);
            }
            else {
                sub_8002C98(4, 0x17B8, 0x17B8);
                PlayBGM(6);
            }
            LOADEXAMDATA(gUnknown_08017D98);
            break;
        }
        case 16: {
            if(GetFlag(0, 0xC3)) {
                if(!GetFlag(0, 0xC7)) {
                    sub_8002CCC(0x9B, 0xC7);
                }
                else if(!GetFlag(0, 0xC8)) {
                    sub_8002C98(0x1F, 0, 0);
                    PlayBGM(0x16);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(!GetFlag(0, 0xC6)) {
                sub_8002CCC(0x9A, 0xC6);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08017DC0);
            break;
        }
        case 17: {
            if(GetFlag(0, 0xC3)) {
                if(!GetFlag(0, 0xCA)) {
                    sub_8002CCC(0xA6, 0xCA);
                }
                else {
                    if(!GetFlag(0, 0xCB) && GetFlag(0, 0xD0)) {
                        sub_8002CCC(0xA7, 0xCB);
                    }
                    else {
                        sub_8002C98(0x19, 0x13B0, 0x13B0);
                    }
                    PlayBGM(0x15);
                }
                LOADEXAMDATA(gUnknown_08017E88);
            }
            else {
                if(!GetFlag(0, 0xC9)) {
                    sub_8002CCC(0xA5, 0xC9);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gUnknown_08017E10);
            }
            break;
        }
        case 18: {
            if(GetFlag(0, 0xC8)) {
                if(!GetFlag(0, 0xF1) && GetFlag(0, 0xCF)) {
                    sub_8002CCC(0x138, 0xF1);
                }
                else if(!GetFlag(0, 0xD3)) {
                    sub_8002CCC(0xC9, 0xD3);
                }
                else if(!GetFlag(0, 0xD7)) {
                    sub_8002C98(0x401F, 0, 0);
                    PlayBGM(0x16);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(!GetFlag(0, 0xD2)) {
                sub_8002CCC(0xBC, 0xD2);
            }
            else if(!GetFlag(0, 0xC5)) {
                sub_8002C98(0x4014, 0, 0);
                PlayBGM(1);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08017F64);
            break;
        }
        case 19: {
            if(GetFlag(0, 0xDD)) {
                if(!GetFlag(0, 0xDB)) {
                    sub_8002CCC(0xBB, 0xDB);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(GetFlag(0, 0xD7)) {
                if(!GetFlag(0, 0xDA)) {
                    sub_8002CCC(0xBA, 0xDA);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(GetFlag(0, 0xC8)) {
                if(!GetFlag(0, 0xD9)) {
                    sub_8002CCC(0xB8, 0xD9);
                }
                else if(!GetFlag(0, 0xDC) && GetFlag(0, 0xD1)) {
                    sub_8002CCC(0xB9, 0xDC);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(!GetFlag(0, 0xD8)) {
                sub_8002CCC(0xB7, 0xD8);
            }
            else {
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_08017FF0);
            break;
        }
        case 20: {
            if(!GetFlag(0, 0xE6)) {
                sub_8002CCC(0xF5, 0xE6);
            }
            else {
                if(GetFlag(0, 0xE7)) {
                    sub_8002C98(0x20, 0, 0);
                }
                else {
                    sub_8002C98(0x20, 0xAD0, 0xAD0);
                }
                PlayBGM(0x1A);
            }
            LOADEXAMDATA(gUnknown_0801802C);
            break;
        }
        case 14: {
            if(GetFlag(0, 0xDD)) {
                if(!GetFlag(0, 0xE1)) {
                    sub_8002CCC(0xE9, 0xE1);
                }
                else {
                    sub_8002C98(0x14, 0, 0);
                    PlayBGM(1);
                }
            }
            else if(GetFlag(0, 0xDC)) {
                if(!GetFlag(0, 0xE0)) {
                    sub_8002CCC(0xE8, 0xE0);
                }
            }
            else if(GetFlag(0, 0xC8)) {
                if(!GetFlag(0, 0xDF)) {
                    sub_8002CCC(0xDD, 0xDF);
                }
                else {
                    sub_8002C98(0x14, 0, 0);
                    ChangeFlag(2, 0xBB, 0);
                    if(GetFlag(0, 0xF2)) {
                        PlayBGM(0xC);
                    }
                    else {
                        PlayBGM(1);
                    }
                }
            }
            else if(!GetFlag(0, 0xDE)) {
                sub_8002CCC(0xDC, 0xDE);
            }
            LOADEXAMDATA(gUnknown_080180B8);
            break;
        }
        case 15: {
            if(!GetFlag(0, 0xEC)) {
                sub_8002CCC(0x108, 0xEC);
            }
            else {
                sub_8002C98(4, 0x510, 0x510);
                PlayBGM(0xC);
            }
            LOADEXAMDATA(gUnknown_08018130);
            break;
        }
        case 3: {
            if(!GetFlag(0, 0xE5)) {
                sub_8002CCC(0xEF, 0xE5);
            }
            LOADEXAMDATA(gUnknown_08018180);
            break;
        }
    }
}

void nullsub_11(struct Main *main) {
}
