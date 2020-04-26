#include "global.h"
#include "main.h"

void nullsub_4(struct Main * main)
{

}

void sub_8002D70(struct Main * main)
{
    DmaCopy16(3, gUnknown_080150D0, &gMain.mapData, sizeof(gUnknown_080150D0));
    DmaCopy16(3, gUnknown_08014FB8, &gUnknown_030028A0, sizeof(gUnknown_08014FB8));
    main->unk8C = 0;
}