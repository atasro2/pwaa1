#include "global.h"
#include "main.h"
#include "script.h"
#include "investigation.h"
#include "animation.h"
#include "graphics.h"
#include "constants/bg.h"

void sub_800D3C8(struct InvestigationStruct * investigation)
{
    struct OamAttrs * oam = &gOamObjects[49];
    u32 i;
    u32 y;

    switch(investigation->unkC)
    {
        case 0:
            for(i = 0; i < 4; i++)
            {
                if(investigation->unkA == i)
                {
                    oam->attr0 = 0x4000;
                    y = investigation->unkE + 240;
                    y &= 0xFF;
                    oam->attr0 += y; 
                    oam->attr2 = i * 0x20 + 0x6500;
                }
                else if(investigation->unkB == i)
                {
                    oam->attr0 &= ~0xFF;
                    oam->attr0 |= investigation->unkD;
                    oam->attr0 += investigation->unkF;
                    oam->attr2 = i * 0x20 + 0x5500;
                }
                else if((investigation->unk7 >> i) & 1)
                {
                    oam->attr0 &= ~0xFF;
                    oam->attr0 |= investigation->unkD;
                    oam->attr2 = i * 0x20 + 0x5500;
                }
                else
                {
                    oam->attr2 = i * 0x20 + 0x5500;
                }
                oam++;
                //oam->attr1 = 
            }
            return;
        case 1:
            i = investigation->unkA; // ! variable re(ab)use
            oam += i;
            oam->attr2 = 0x6500 + i * 0x20;
            investigation->unkD = 0xE0;
            investigation->unkC++;
            break;
        case 2:
            investigation->unkD += 2;
            if(investigation->unkD >= 0xF0)
            {
                investigation->unkD = 0xF0;
                investigation->unkC = 0;
            }
            break;
        case 3:
            investigation->unkD -= 2;
            if(investigation->unkD <= 0xE0)
            {
                investigation->unkD = 0xE0;
                investigation->unkC = 4;
            }
        case 4:
            break;
    }
    i = gMain.roomData[gMain.currentRoomId][0]; //! re(ab)use
    if(i != gMain.currentBG)
        investigation->unkE = 0x40;
    for(i = 0; i < 4; i++)
    {
        if(investigation->unk7 >> i & 1)
        {
            oam->attr0 &= 0xFF00;
            oam->attr0 |= investigation->unkD;
        }
        else if(investigation->unkA == i)
        {
            oam->attr0 &= 0xFF00;
            y = 0x100 - investigation->unkE;
            y &= 0xFF;
            oam->attr0 += y;
        }
        oam++;
    }
}

void sub_800D530(struct Main * main, u32 show)
{
    struct OamAttrs * oam = &gOamObjects[53];
    u32 r6 = 0; // ! UNUSED, This is present in the assembly for this function somehow
    oam->attr0 = SPRITE_ATTR0_CLEAR;
    if(show && gScriptContext.unk38 == 1 
    && GetBGControlBits(main->currentBG) & (BG_MODE_SIZE_480x160 | BG_MODE_SIZE_360x160))
    {
        if(gMain.unk34 == 0) // ! inconsistent use of global vs pointer
        {
            oam->attr0 = 0x4020;
            oam->attr1 = 0x80D0;
            oam->attr2 = 0x7188;
        }
        else if(main->unk34 == 240 || main->unk34 == 120)
        {
            oam->attr0 = 0x4020;
            oam->attr1 = 0x8000;
            oam->attr2 = 0x7180;
        }
    }
}

u32 sub_800D5B0(struct InvestigationStruct * investigation)
{
    struct Rect rect;
    u32 animId;
    struct ExaminationData * examData;
    if(investigation->unk0 < 120)
        rect.x = gMain.unk34 + investigation->unk0;
    else
        rect.x = gMain.unk34 + investigation->unk0 + 12;
    rect.y = gMain.unk36 + investigation->unk2;
    rect.w = 4;
    rect.h = 16;
    if(GetFlag(0, 0x41) == FALSE)
        return 0x19;
    animId = CheckRectCollisionWithAnim(&rect);
    for(examData = gExaminationData; examData->unk2 != 0xFF; examData++)
    {
        if(examData->unk2 == 0xFE && animId == examData->unk3)
            return examData->examinationSection;
    }
    for(examData = gExaminationData; examData->unk2 != 0xFF; examData++)
    {
        if(examData->unk2 == 0xFE)
            continue;
        if(CheckRectCollisionWithArea(&rect, &examData->area))
            return examData->examinationSection;
    } 
    return 0x18;
}

void sub_800D674(void)
{
    u32 i;
    u8 *roomptr = gMain.roomData[gMain.currentRoomId];
    roomptr += 4;
    for(i = 0; i < 4; i++)
    {
        u8 *src;
        void *destination = (void *)VRAM+0x13400;
        destination += i*0x800;
        if(*roomptr != 0xFF)
	    {
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
    u8 *icons;
    for(talkdata = gTalkData; talkdata->roomId != 0xFF; talkdata++)
    {
        if(gMain.currentRoomId == talkdata->roomId)
	    {
            if(gAnimation[1].unkC.unk2[0] == talkdata->personId)
	        {
                if(talkdata->enableFlag == 1)
		            break;
            }
        }
    }
    icons = talkdata->iconId;
    for(i = 0; i < 4; i++)
    {
        void *src;
        void *destination = (void *)VRAM+0x13400;
        destination += i*0x800;
        if(*icons != 0xFF)
	    {
            src = gUnknown_0820816C + *icons*0x800;
            DmaCopy16(3, src, destination, 0x800);
        }
        icons++;
    }
    DmaCopy16(3, (void *)0x08190FC0, (void *)VRAM+0x15400, 0x200);
    DmaCopy16(3, (void *)0x081944E0, (void *)PLTT+0x360, 0x20);
}
