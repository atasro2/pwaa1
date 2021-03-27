#include "global.h"
#include "main.h"

void sub_8002D70(struct Main * main)
{
    DmaCopy16(3, gUnknown_080150D0, gMain.roomData, sizeof(gUnknown_080150D0));
    DmaCopy16(3, gUnknown_08014FB8, gTalkData, sizeof(gUnknown_08014FB8));
    main->currentRoomId = 0;
}