#include "global.h"
#include "main.h"

void sub_800D674(void)
{
    u32 i;
    u8 *roomptr = gMain.roomData[gMain.currentRoomId];
    roomptr += 4;
    for(i = 0; i < 4; i++) {
        u8 *src;
        void *destination = (void *)VRAM+0x13400;
        destination += i*0x800;
        if(*roomptr != 0xFF) {
            src = gUnknown_081FD96C+*roomptr*0x800;
            DmaCopy16(3, src, destination, 0x800);
        }
        roomptr++;
    }
}

void sub_800D6C8(void)
{
    u32 i;
    struct TalkData *talkdata;
    u8 *fillerdata;
    for(talkdata = gTalkData; talkdata->unk0 != 0xFF; talkdata++) {
        if(gMain.currentRoomId == talkdata->unk0) {
          if(gAnimation[1].unkC.unk2[0] == talkdata->unk1) {
              if(talkdata->unk3 == 1) break;
          }
        }
    }
    fillerdata = talkdata->filler4;
    for(i = 0; i < 4; i++) {
        void *src;
        void *destination = (void *)VRAM+0x13400;
        destination += i*0x800;
        if(*fillerdata != 0xFF) {
            src = gUnknown_0820816C + *fillerdata*0x800;
            DmaCopy16(3, src, destination, 0x800);
        }
        fillerdata++;
    }
    DmaCopy16(3, (void *)0x08190FC0, (void *)VRAM+0x15400, 0x200);
    DmaCopy16(3, (void *)0x081944E0, (void *)PLTT+0x360, 0x20);
}
