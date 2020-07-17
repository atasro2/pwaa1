#include "global.h"
#include "background.h"

void sub_8002244(u32 unk0)
{
    struct ScriptContext * scriptCtx = &gScriptContext;
    u16 * map;
    u32 i;
    switch(unk0)
    {
    case 0:
        map = gBG1MapBuffer;
        for(i = 0; i < 0x2C0; i++, map++)
        {
            *map = gUnknown_08013B70[i];
        }
        scriptCtx->unk38 = 0;
        sub_80028B4(scriptCtx->textboxNameId & 0x7F, (u8)(scriptCtx->textboxNameId & 0x80));
        break;
    case 1:
        scriptCtx->unk3A = 0;
        scriptCtx->unk3B = 0xE;
        scriptCtx->unk38 = 2;
        sub_80028B4(0, FALSE);
        break;
    case 2:
        map = gBG1MapBuffer;
        for(i = 0; i < 0x1C0; i++, map++)
        {
            *map = gUnknown_08013B70[i];
        }
        map = gBG1MapBuffer + 0x1C0;
        for(i = 0x1C0; i < 0x220; i++, map++)
        {
            *map = 0;
        }
        map = gBG1MapBuffer + 0x200;
        for(i = 0x1C0; i < 0x1E0; i++, map++)
        {
            *map = gUnknown_08013B70[i];
        }
        scriptCtx->unk38 = 0;
        break;
    default:
        break;
    }
}

void sub_800232C()
{
    struct ScriptContext * scriptCtx = &gScriptContext;
    u32 tiley;
    u32 i;
    switch(scriptCtx->unk38)
    {
    case 0:
    case 1:
        break;
    case 2:
        scriptCtx->unk3A += 2;
        if(scriptCtx->unk3A < 2)
            break;
        scriptCtx->unk3A = 0;
        tiley = scriptCtx->unk3B * 32;
        for(i = 0; i < 32; i++)
        {
            u16 * dest = &gBG1MapBuffer[tiley - 32 + i];
            u16 * src = &gBG1MapBuffer[tiley + i];
            *dest = *src;
        }
        for(i = 0; i < 32; i++)
        {
            u16 * dest = &gBG1MapBuffer[tiley + i];
            u16 * src = &gBG1MapBuffer[tiley + 32 + i];
            *dest = *src;
        }
        scriptCtx->unk3B--;
        if(scriptCtx->unk3B == 0)
        {
            gMain.showTextboxCharacters = TRUE;
            scriptCtx->unk38 = 0;
        }
        break;
    case 3:
        gLCDIORegisters.lcd_bg1vofs += 4;
        if(gLCDIORegisters.lcd_bg1vofs < (u16)-80u)
        {
            gMain.advanceScriptContext = TRUE;
            gMain.showTextboxCharacters = TRUE;
            gLCDIORegisters.lcd_bg1vofs = 0;
            scriptCtx->unk38 = 0;
        }
        break;
    case 4:
        gLCDIORegisters.lcd_bg1vofs -= 4;
        if(gLCDIORegisters.lcd_bg1vofs < (u16)-80u)
        {
            gLCDIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            scriptCtx->unk38 = 1;
        }
        break;
    }
}

void sub_800244C(u32 unk0)
{
    gMain.advanceScriptContext = 0;
    gMain.showTextboxCharacters = 0;
    sub_80028B4(0, FALSE);
    if(unk0)
    {
        gScriptContext.unk38 = 3;
        gInvestigation.unkC = 3;
        gLCDIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
        gBG1MapBuffer[622] = 9;
        gBG1MapBuffer[623] = 9;
    }
    else
    {
        gScriptContext.unk38 = 4;
        gInvestigation.unkC = 1;
    }
}

void sub_80024C8(u32 mode, u32 speed)
{
    struct CourtRecord * courtRecord = &gCourtRecord;
    if(mode > 4) // is for save screens
    {
        courtRecord->isSaveScreen = TRUE;
        mode -= 4;
    }
    else
    {
        courtRecord->isSaveScreen = FALSE;
    }
    courtRecord->unk3 = mode;
    courtRecord->unk0 = 0;
    courtRecord->unk6 = courtRecord->unk4;
    courtRecord->unkC &= ~0x4;
    switch(mode)
    {
    case 0:
        break;
    case 1:
        courtRecord->unk1 = speed;
        courtRecord->unk2 = 0;
        courtRecord->unk4 = 0x100;
        break;
    case 2:
        courtRecord->unk1 = -speed;
        courtRecord->unk2 = 31;
        courtRecord->unk4 = 0x110;
        break;
    case 3:
        courtRecord->unk1 = speed;
        break;
    case 4:
        courtRecord->unk1 = -speed;
        break;
    default:
        break;
    }
}