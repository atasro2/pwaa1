#include "global.h"
#include "background.h"

void sub_800D77C(struct Main * main, struct CourtRecord * courtRecord)
{
    u8 * recordIds;
    u32 i;

    for(i = 0; i < 32; i++)
        courtRecord->profileList[i] |= 0xFF;
    courtRecord->unk11 = 0;
    for(i = 0; i < 32; i++)
        courtRecord->evidenceList[i] |= 0xFF;
    courtRecord->unk10 = 0;
    recordIds = gUnknown_0811DC10[main->scenarioIdx];
    for(i = 0; *recordIds != 0xFE; i++)
    {
        courtRecord->profileList[i] = *recordIds;
        courtRecord->unk11++;
        recordIds++;
    }
    recordIds++;
    for(i = 0; *recordIds != 0xFF; i++)
    {
        courtRecord->evidenceList[i] = *recordIds;
        courtRecord->unk10++;
        recordIds++;
    }
}

extern void (*gUnknown_0811DFA4[8])(struct Main *, struct CourtRecord *);

void CourtRecordProcess(struct Main * main)
{
    gBG1MapBuffer[622] = 9;
    gBG1MapBuffer[623] = 9;
    gUnknown_0811DFA4[main->process[GAME_SUBPROCESS]](main, &gCourtRecord);
}

extern void (*gUnknown_0811DFC4[3])(struct Main *, struct CourtRecord *);

void GameProcess08(struct Main * main)
{
    gUnknown_0811DFC4[main->process[GAME_SUBPROCESS]](main, &gCourtRecord);
}

void sub_800D880(struct Main * main, struct CourtRecord * courtRecord)
{
    u32 i;
    struct OamAttrs * oam;
    struct IORegisters * io;
    do
    {
        u16 * map = gBG2MapBuffer; 
        for(i = 0; i < 0x400; i++, map++)
            *map = 0;
    }
    while(0);

    io = &gIORegisters;
    if(main->processCopy[GAME_PROCESS] != 6)
    {
        if(main->processCopy[GAME_PROCESS] == 4 && main->processCopy[GAME_SUBPROCESS] <= 5)
        {
            oam = &gOamObjects[49];
            for(i = 0; i < 4; i++)
            {
                oam->attr2 = SPRITE_ATTR2(0x100+i*0x20, 1, 5);
                oam++;
            }
        }
    }
    if(main->processCopy[GAME_PROCESS] == 5)
    {
        oam = &gOamObjects[49];
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
    if(main->process[GAME_PROCESSUNK3] == 2)
    {
        oam = &gOamObjects[52];
        gOamObjects[52].attr2 = SPRITE_ATTR2(0x160, 1, 6);
    }
    io->lcd_dispcnt |= DISPCNT_BG2_ON;
    io->lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_WRAP | BGCNT_TXT256x256;
    main->tilemapUpdateBits |= 0x4;
    courtRecord->unkC = 0;
    courtRecord->unkD = 0;
    courtRecord->unk12 = 0;
    courtRecord->unkE = courtRecord->unk10;
    courtRecord->unk14 = courtRecord->evidenceList;
    sub_800E914();
    sub_800EA80(courtRecord->unk14[courtRecord->unkD]);
    if(main->process[GAME_PROCESSUNK3] == 1)
        sub_80024C8(2, 0xC);
    courtRecord->unkF = 1;
    main->process[GAME_SUBPROCESS] = 3;
}