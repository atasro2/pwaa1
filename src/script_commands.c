#include "global.h"
#include "script.h"
#include "sound_control.h"
#include "m4a.h"

bool32 CommandDummy(struct Struct3003A70 * scriptCtx)
{
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command00(struct Struct3003A70 * scriptCtx)
{
    sub_80054BC(scriptCtx);
    sub_80028B4(0, 0);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command01(struct Struct3003A70 * scriptCtx)
{
    if(scriptCtx->unk0 & 4)
    {
        scriptCtx->unk12 = 0;
        scriptCtx->unk11++;
    }
    else
    {
        scriptCtx->unkE = 0;
        scriptCtx->unkF++;
    }
    
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command02(struct Struct3003A70 * scriptCtx)
{
    u32 i;
    u32 temp;
    u32 temp2;

    if(scriptCtx->unk0 & 0x20)
    {
        if(scriptCtx->unk32 != 0)
        {
            scriptCtx->unk32--;
            return 1;
        }
        else
        {
            scriptCtx->unk0 &= ~0x20;
            scriptCtx->scriptPtr++; 
            if(scriptCtx->unkC != 0xA) // if script cmd is 0xA ?
            {
                return 1;
            }
            scriptCtx->scriptPtr++;
            return 1;
        }
    }
    if((u8)(gUnknown_03003730.unk4.field0 - 3) <= 3)
    {
        if(scriptCtx->unk0 & 1)
            if(gJoypad.newKeysRaw & 1)
                scriptCtx->unk0 |= 2;
        if(scriptCtx->unk14 != 0)
            scriptCtx->unk14--;
        if(gJoypad.heldKeysRaw & 2 && scriptCtx->unk13 != 0 && scriptCtx->unk14 == 0)
            scriptCtx->unk0 |= 2;
    }
    temp = scriptCtx->unk0 & 2;
    if(temp != 0)
    {
        sub_800F3E0(0x2F);
        gUnknown_03002000[622] = 9;
        gUnknown_03002000[623] = 9;
        scriptCtx->unk0 &= ~3;
        if(scriptCtx->unk13 != 0)
        {
            scriptCtx->unk25 = 3;
            scriptCtx->unk13 = 1;
        }
        scriptCtx->unk14 = 8;
        if(scriptCtx->unkC == 7) // if script cmd is 0x7 ?
        {
            scriptCtx->scriptPtr++;
            DmaCopy16(3, gCharSet[226], VRAM + 0x11F80, sizeof(gCharSet[226]));
            scriptCtx->unk39 = 0;
            scriptCtx->unk0 |= 4;
            scriptCtx->unk26 = scriptCtx->unk25;
            scriptCtx->unk25 = 0;
            scriptCtx->unk35 = 0x18;
            scriptCtx->unk1A = 0x14;
            scriptCtx->unkE = 0;
            scriptCtx->unkF = 2;
            scriptCtx->unk10 = 0;
            scriptCtx->unk11 = 2;
            scriptCtx->unk12 = 0;
            gUnknown_03003730.unk15 = 0;
            sub_8002244(1);
            for (i = 0; i < ARRAY_COUNT(gUnknown_03003930); i++)
            {
                gUnknown_03003930[i].unk0 |= 0xFF;
            }
            return 0;
        }
        scriptCtx->unk32 = 0xA;
        scriptCtx->unk0 |= 0x20;
        if(scriptCtx->unkC == 0xA) // if script cmd is 0xA ?
        {
            if(gUnknown_03003730.unk8F > 0)
            {
                //scriptCtx->scriptPtr++;
                scriptCtx->unk20 = *(scriptCtx->scriptPtr+1);
            }
        }
        else
        {
            scriptCtx->unk36 = 0;
            scriptCtx->unk37 = 0;
        }
        scriptCtx->unkE = 0;
        scriptCtx->unkF = 0;
        for (i = 0; i < ARRAY_COUNT(gUnknown_03003C00); i++)
        {
            gUnknown_03003C00[i].unk0 &= ~0x8000;
        }
        if(scriptCtx->unkC == 0x2)
            sub_800FBA0(&gUnknown_03000800.unk40, gUnknown_03003730.unk90);
    }
    else
    {
        if((scriptCtx->unk0 & 1) == 0)
        {
            sub_800FBA0(&gUnknown_03000800.unk40, gUnknown_03003730.unk92);
            scriptCtx->unk0 |= 1;
        }
        temp2 = gUnknown_03003730.unk4.field0;
        if(temp2 != 9)
        {
            scriptCtx->unk37++;
            if(scriptCtx->unk37 > 1)
            {
                scriptCtx->unk37 = temp;
                if(scriptCtx->unk36 == 0 && temp2 == 7)
                {
                    scriptCtx->unk36 = scriptCtx->unk37;
                }
                else
                {
                    scriptCtx->unk36++;
                    if(scriptCtx->unk36 > 5)
                    {
                        scriptCtx->unk36 = 0;
                    }
                }
            }
            gUnknown_03002000[622] = gUnknown_080187C0[scriptCtx->unk36];
            gUnknown_03002000[623] = gUnknown_080187C0[scriptCtx->unk36]+1;
            return 1;
        }
        scriptCtx->unk36 = temp;
        scriptCtx->unk37 = temp;
        gUnknown_03002000[622] = temp2;
        gUnknown_03002000[623] = temp2;
    }
    return 1;
}

bool32 Command03(struct Struct3003A70 * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->unk24 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command04(struct Struct3003A70 * scriptCtx)
{

    if(gJoypad.newKeysRaw & scriptCtx->scriptPtr[1]) 
        scriptCtx->scriptPtr+=2;
    return 1;
}

bool32 Command05(struct Struct3003A70 * scriptCtx)
{
    u16 bgmNum;
    scriptCtx->scriptPtr++;
    bgmNum = *scriptCtx->scriptPtr; 
    scriptCtx->scriptPtr++;
    PlayBGM(*scriptCtx->scriptPtr, bgmNum);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command06(struct Struct3003A70 * scriptCtx)
{
    u32 soundNum;
    u32 flag;
    scriptCtx->scriptPtr++;
    soundNum = *scriptCtx->scriptPtr >> 8;
    flag = *scriptCtx->scriptPtr & 1;
    if(flag)
    {
        sub_800F3E0(soundNum);
    }
    else
    {
        m4aSongNumStop(soundNum);
    }
    scriptCtx->scriptPtr++;
    return 0;
}