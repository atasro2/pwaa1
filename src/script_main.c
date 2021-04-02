#include "global.h"
#include "main.h"
#include "script.h"
#include "sound.h"
#include "ewram.h"
#include "constants/script.h"

static void AdvanceScriptContext(struct ScriptContext *);
static void DrawTextAndMapMarkers(struct ScriptContext *);
static void PutCharInTextbox(u32, u32, u32);

extern bool32 (*gScriptCmdFuncs[0x5F])(struct ScriptContext *);

extern u8 gTextColorTileBuffer[0x80];

extern u8 scenario_0_script[];
extern u8 scenario_1_0_script[];
extern u8 scenario_1_1_script[];
extern u8 scenario_1_2_script[];
extern u8 scenario_1_3_script[];
extern u8 scenario_2_0_script[];
extern u8 scenario_2_1_script[];
extern u8 scenario_2_2_script[];
extern u8 scenario_2_3_script[];
extern u8 scenario_2_4_script[];
extern u8 scenario_2_5_script[];
extern u8 scenario_3_0_script[];
extern u8 scenario_3_1_script[];
extern u8 scenario_3_2_script[];
extern u8 scenario_3_3_script[];
extern u8 scenario_3_4_script[];
extern u8 scenario_3_5_script[];

u8 * const gScriptTable[] = {
    scenario_0_script,
    scenario_1_0_script,
    scenario_1_1_script,
    scenario_1_2_script,
    scenario_1_3_script,
    scenario_2_0_script,
    scenario_2_1_script,
    scenario_2_2_script,
    scenario_2_3_script,
    scenario_2_4_script,
    scenario_2_5_script,
    scenario_3_0_script,
    scenario_3_1_script,
    scenario_3_2_script,
    scenario_3_3_script,
    scenario_3_4_script,
    scenario_3_5_script,
};

void LoadCurrentScriptIntoRam(void)
{
    u32 i;
    DmaCopy16(3, gTextPal, OBJ_PLTT, sizeof(gTextPal));

    for (i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
    {
        gTextBoxCharacters[i].state &= ~0x8000;
    }

    LZ77UnCompWram(gScriptTable[gMain.scenarioIdx], eScriptHeap);
}

void RunScriptContext(void)
{
    if (gMain.advanceScriptContext && gMain.blendMode == 0)
    {
        AdvanceScriptContext(&gScriptContext);
    }
    DrawTextAndMapMarkers(&gScriptContext);
}

void ChangeScriptSection(u32 newSection)
{
    gScriptContext.previousSection = gScriptContext.currentSection;
    gScriptContext.currentSection = newSection;
    InitScriptSection(&gScriptContext);
    gScriptContext.scriptPtr++;
}

void InitScriptSection(struct ScriptContext *scriptCtx)
{
    u32 i;
    for (i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
    {
        gTextBoxCharacters[i].state &= ~0x8000;
    }
    scriptCtx->textX = 0;
    scriptCtx->textY = 0;
    if (gMain.process[GAME_PROCESS] != 4 || gMain.process[GAME_SUBPROCESS] != 8)
        scriptCtx->unk13 = 0;
    scriptCtx->unk15 = 0;
    scriptCtx->unk14 = 8;
    scriptCtx->soundCueSkip = 1;
    scriptCtx->currentSoundCue = 0;
    scriptCtx->textXOffset = 9;
    scriptCtx->textYOffset = 0x74;
    scriptCtx->nextSection = scriptCtx->currentSection + 1;
    scriptCtx->holdItSection = 0;
    scriptCtx->holdItFlag = 0;
    scriptCtx->textboxNameId = 0;
    scriptCtx->unk36 = 0;
    scriptCtx->unk37 = 0;
    scriptCtx->flags = 0;
    scriptCtx->waitTimer = 0;
    scriptCtx->textColor = 0;
    scriptCtx->textSpeed = 3;
    scriptCtx->unk26 = 3;
    scriptCtx->textDelayTimer = 0;
    scriptCtx->unk28 = 0x18;
    scriptCtx->unk2A = 0x56;
    {
        void *r1;
        u32 *r0;
        if (scriptCtx->currentSection >= 0x80)
        {
            r1 = eScriptHeap;
            r0 = (u32 *)eScriptHeap + (scriptCtx->currentSection-0x80);
            scriptCtx->scriptPtr = r1 + r0[1];
            scriptCtx->scriptSectionPtr = scriptCtx->scriptPtr;
            scriptCtx->scriptHeaderSize = *(u16*)r1;
        }
        else
        {
            r1 = std_scripts;
            r0 = &std_scripts[scriptCtx->currentSection];
            scriptCtx->scriptPtr = r1 + r0[1];
            scriptCtx->scriptSectionPtr = scriptCtx->scriptPtr;
            scriptCtx->scriptHeaderSize = *(u16*)r1;
        }
    }
    scriptCtx->unk3C = (void*)(VRAM + 0x11800);
    for (i = 0; i < ARRAY_COUNT(gMapMarker); i++)
    {
        gMapMarker[i].id |= 0xFF;
        gMapMarker[i].isBlinking = 0;
        gMapMarker[i].unk5 = 0;
        gMapMarker[i].attr0 = SPRITE_ATTR0_CLEAR;
    }
}

static void AdvanceScriptContext(struct ScriptContext * scriptCtx)
{
    if(scriptCtx->unk13 > 0 && (gJoypad.pressedKeys & A_BUTTON || gJoypad.heldKeys & B_BUTTON)) // text skip
        scriptCtx->unk13 = 2;
    
    continueScript:
    scriptCtx->currentToken = *scriptCtx->scriptPtr;
    if(scriptCtx->currentToken < 0x80)
    {
        if(gScriptCmdFuncs[scriptCtx->currentToken](scriptCtx))
            return;
        else
            goto continueScript;
    }
    if(scriptCtx->unk13 > 1)
    {
        scriptCtx->textSpeed = 0;
    }
    scriptCtx->textDelayTimer++;
    if(scriptCtx->textDelayTimer >= scriptCtx->textSpeed)
    {
        scriptCtx->textDelayTimer = 0;
        scriptCtx->currentToken -= 0x80;
        if (scriptCtx->flags & SCRIPT_FULLSCREEN)
        {
            PutCharInTextbox(scriptCtx->currentToken, scriptCtx->fullscreenTextY, scriptCtx->fullscreenCharCount);
            scriptCtx->fullscreenCharCount++;
            scriptCtx->fullscreenTextX++;
        }
        else
        {
            PutCharInTextbox(scriptCtx->currentToken, scriptCtx->textY, scriptCtx->textX);
            scriptCtx->textX++;
        }

        scriptCtx->scriptPtr++;
        
        if (!(scriptCtx->currentSection == 0x80 && gMain.scenarioIdx == 0) && scriptCtx->currentToken != 0xFF)
        {
            if ( scriptCtx->textSpeed > 0)
            {
                if ( scriptCtx->soundCueSkip == 0 || scriptCtx->textSpeed > 4 )
                {
                    if ( scriptCtx->currentSoundCue != 2 )
                        scriptCtx->soundCueSkip = 1;

                    if (!(gMain.soundFlags & SOUND_FLAG_DISABLE_CUE))
                    {
                        if (scriptCtx->currentSoundCue == 2)
                        {
                            PlaySE(68);
                        }
                        else if (scriptCtx->currentSoundCue == 1)
                        {
                            PlaySE(46);
                        }
                        else
                        {
                            PlaySE(45);
                        }
                    }
                }
                else
                {
                    scriptCtx->soundCueSkip--;
                }
            }
        }
        if(scriptCtx->textSpeed == 0)
        {
            goto continueScript;
        }
    }
}

#ifdef NONMATCHING
static void PutCharInTextbox(u32 characterCode, u32 y, u32 x)
{
    u8* src;
    u8* dst;
    u32 idx;
    u32 temp = characterCode;
    temp *= 0x80;
    temp += (u32)gCharSet; //! why tho
    if(gScriptContext.textColor)
    {
        u32 j;
        u32 colorIdx;
        DmaCopy16(3, temp, gTextColorTileBuffer, 0x80);
        src = gTextColorTileBuffer;
        temp = gScriptContext.textColor * 3;
        for(j = 0; j < 0x80; j++)
        {
            u32 half1, half2;
            half2 = *src; // honestly wtf capcom
            half1 = half2 & 0xF;
            half2 = half2 & 0xF0;
            if(half1)
                half1 += temp;
            if(half2)
                half2 += temp << 4;
            *src++ = half1 | half2;
        }
        dst = (u8*)(OBJ_VRAM0);
        dst += x * 0x80;
        if(gScriptContext.unk0 & 4)
            dst += 0x80 * (2 * 16);
        else
            dst += 0x80 * (y * 16);
        DmaCopy16(3, gTextColorTileBuffer, dst, 0x80);
    }
    else
    {
        dst = (u8*)(OBJ_VRAM0);
        dst += x * 0x80;
        if(gScriptContext.unk0 & 4)
            dst += 0x80 * (2 * 16);
        else
            dst += 0x80 * (y * 16);
        DmaCopy16(3, temp, dst, 0x80);
    }
    // matches completely after this other than small regalloc stuff
    if(gScriptContext.unk0 & 4)
    {
        idx = x + 2 * 0x10;
        gTextBoxCharacters[idx].x = gScriptContext.fullscreenTextX * (16-2); 
        gTextBoxCharacters[idx].y = (y - 2) * (16+4);
        gTextBoxCharacters[idx].objAttr2 = 2 * 0x40 + x * 4;
    }
    else
    {
        idx = x + y * 0x10;
        gTextBoxCharacters[idx].x = x * (16-2); 
        gTextBoxCharacters[idx].y = y * (16+2);
        gTextBoxCharacters[idx].objAttr2 = y * 0x40 + x * 4;
    }
    gTextBoxCharacters[idx].objAttr2 += 0x400;
    gTextBoxCharacters[idx].state = characterCode | 0x8000;
    gTextBoxCharacters[idx].color = gScriptContext.textColor;
}
#else
NAKED
static void PutCharInTextbox(u32 characterCode, u32 y, u32 x)
{
    asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #8\n\
	str r0, [sp]\n\
	adds r7, r1, #0\n\
	adds r5, r2, #0\n\
	lsls r3, r0, #7\n\
	ldr r0, _08005770\n\
	adds r3, r3, r0\n\
	ldr r0, _08005774\n\
	adds r6, r0, #0\n\
	adds r6, #0x24\n\
	ldrb r1, [r6]\n\
	cmp r1, #0\n\
	beq _080057A8\n\
	ldr r1, _08005778\n\
	str r3, [r1]\n\
	ldr r2, _0800577C\n\
	str r2, [r1, #4]\n\
	ldr r0, _08005780\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	adds r4, r2, #0\n\
    ldrb r1, [r6]\n\
	lsls r0, r1, #1\n\
	adds r3, r0, r1\n\
	movs r2, #0\n\
	lsls r6, r5, #7\n\
	mov sb, r6\n\
	lsls r0, r5, #2\n\
	mov ip, r0\n\
	movs r1, #0xf\n\
	mov sl, r1\n\
	movs r6, #0xf0\n\
	mov r8, r6\n\
	lsls r0, r3, #4\n\
	str r0, [sp, #4]\n\
_08005730:\n\
	ldrb r1, [r4]\n\
	adds r0, r1, #0\n\
	mov r6, sl\n\
	ands r0, r6\n\
	mov r6, r8\n\
	ands r1, r6\n\
	cmp r0, #0\n\
	beq _08005742\n\
	adds r0, r0, r3\n\
_08005742:\n\
	cmp r1, #0\n\
	beq _0800574A\n\
	ldr r6, [sp, #4]\n\
	adds r1, r1, r6\n\
_0800574A:\n\
	orrs r0, r1\n\
	strb r0, [r4]\n\
	adds r4, #1\n\
	adds r2, #1\n\
	cmp r2, #0x7f\n\
	bls _08005730\n\
	ldr r2, _08005784\n\
	add r2, sb\n\
	movs r0, #4\n\
	ldr r1, _08005774\n\
	ldrh r1, [r1]\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08005788\n\
	movs r3, #0x80\n\
	lsls r3, r3, #5\n\
	adds r2, r2, r3\n\
	b _0800578C\n\
	.align 2, 0\n\
_08005770: .4byte gCharSet\n\
_08005774: .4byte gScriptContext\n\
_08005778: .4byte 0x040000D4\n\
_0800577C: .4byte gTextColorTileBuffer\n\
_08005780: .4byte 0x80000040\n\
_08005784: .4byte 0x06010000\n\
_08005788:\n\
	lsls r0, r7, #0xb\n\
	adds r2, r2, r0\n\
_0800578C:\n\
	ldr r0, _0800579C\n\
	ldr r4, _080057A0\n\
	str r4, [r0]\n\
	str r2, [r0, #4]\n\
	ldr r1, _080057A4\n\
	str r1, [r0, #8]\n\
	ldr r0, [r0, #8]\n\
	b _080057E0\n\
	.align 2, 0\n\
_0800579C: .4byte 0x040000D4\n\
_080057A0: .4byte gTextColorTileBuffer\n\
_080057A4: .4byte 0x80000040\n\
_080057A8:\n\
	lsls r0, r5, #7\n\
    ldr r6, _080057C4\n\
	adds r2, r0, r6\n\
	movs r0, #4\n\
	ldr r1, _080057C8\n\
	ldrh r1, [r1]\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _080057CC\n\
	movs r4, #0x80\n\
	lsls r4, r4, #5\n\
	adds r2, r2, r4\n\
	b _080057D0\n\
	.align 2, 0\n\
_080057C4: .4byte 0x06010000\n\
_080057C8: .4byte gScriptContext\n\
_080057CC:\n\
	lsls r0, r7, #0xb\n\
	adds r2, r2, r0\n\
_080057D0:\n\
	ldr r0, _0800581C\n\
	str r3, [r0]\n\
	str r2, [r0, #4]\n\
	ldr r1, _08005820\n\
	str r1, [r0, #8]\n\
	ldr r0, [r0, #8]\n\
	lsls r6, r5, #2\n\
	mov ip, r6\n\
_080057E0:\n\
	movs r0, #4\n\
	ldr r1, _08005824\n\
	ldrh r1, [r1]\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800582C\n\
    adds r3, r5, #0\n\
	adds r3, #0x20\n\
    lsls r1, r3, #1\n\
	adds r1, r1, r3\n\
	lsls r1, r1, #2\n\
	ldr r2, _08005828\n\
	adds r1, r1, r2\n\
	ldr r4, _08005824\n\
	ldrb r4, [r4, #0x12]\n\
	lsls r0, r4, #3\n\
	ldr r6, _08005824\n\
	ldrb r6, [r6, #0x12]\n\
	subs r0, r0, r6\n\
	lsls r0, r0, #1\n\
	strh r0, [r1, #4]\n\
	subs r2, r7, #2\n\
	lsls r0, r2, #2\n\
	adds r0, r0, r2\n\
	lsls r0, r0, #2\n\
	strh r0, [r1, #6]\n\
	mov r0, ip\n\
	adds r0, #0x80\n\
	b _0800584E\n\
	.align 2, 0\n\
_0800581C: .4byte 0x040000D4\n\
_08005820: .4byte 0x80000040\n\
_08005824: .4byte gScriptContext\n\
_08005828: .4byte gTextBoxCharacters\n\
_0800582C:\n\
	lsls r0, r7, #4\n\
	adds r3, r5, r0\n\
    lsls r1, r3, #1\n\
	adds r1, r1, r3\n\
	lsls r1, r1, #2\n\
	ldr r0, _08005888\n\
	adds r1, r1, r0\n\
	lsls r0, r5, #3\n\
	subs r0, r0, r5\n\
	lsls r0, r0, #1\n\
	strh r0, [r1, #4]\n\
	lsls r0, r7, #3\n\
	adds r0, r0, r7\n\
	lsls r0, r0, #1\n\
	strh r0, [r1, #6]\n\
	lsls r0, r7, #6\n\
	add r0, ip\n\
_0800584E:\n\
	strh r0, [r1, #2]\n\
	lsls r0, r3, #1\n\
	adds r0, r0, r3\n\
	lsls r0, r0, #2\n\
	ldr r1, _08005888\n\
	adds r0, r0, r1\n\
	ldrh r2, [r0, #2]\n\
	movs r3, #0x80\n\
	lsls r3, r3, #3\n\
	adds r1, r2, r3\n\
	strh r1, [r0, #2]\n\
	movs r4, #0x80\n\
	lsls r4, r4, #8\n\
	adds r1, r4, #0\n\
	ldr r6, [sp]\n\
	orrs r6, r1\n\
	strh r6, [r0]\n\
	ldr r1, _0800588C\n\
	adds r1, #0x24\n\
	ldrb r1, [r1]\n\
	strb r1, [r0, #8]\n\
	add sp, #8\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08005888: .4byte gTextBoxCharacters\n\
_0800588C: .4byte gScriptContext\n");
}
#endif

static void DrawTextAndMapMarkers(struct ScriptContext * scriptCtx)
{
    struct OamAttrs * oam;
    u32 i;
    u32 y, x;
    if(!(scriptCtx->flags & SCRIPT_FULLSCREEN))
    {
        oam = &gOamObjects[57];
        for(i = 0; i < ARRAY_COUNT(gMapMarker); i++) 
        {
            if(gMapMarker[i].id != 0xFF)
            {    
                oam->attr0 = gMapMarker[i].attr0;
                oam->attr1 = gMapMarker[i].attr1;
                if(gMapMarker[i].isBlinking)
                {
                    gMapMarker[i].blinkTimer++;
                    gMapMarker[i].blinkTimer &= 0x1F;
                    if (gMapMarker[i].blinkTimer < 16)
                        oam->attr0 = SPRITE_ATTR0_CLEAR;
                }
                if(gMapMarker[i].unk5 & 0x2)
                {
                    gMapMarker[i].distanceMoved += gMapMarker[i].speed;
                    if (gMapMarker[i].distanceMoved >= gMapMarker[i].distanceToMove)
                    {
                        gMapMarker[i].speed -= gMapMarker[i].distanceMoved - gMapMarker[i].distanceToMove;
                        gMapMarker[i].unk5 &= ~2;
                    }
                    switch(gMapMarker[i].direction)
                    {
                        case 0:
                            y = gMapMarker[i].attr0 & 0xFF;
                            gMapMarker[i].attr0 &= ~0xFF;
                            y -= gMapMarker[i].speed;
                            y &= 0xFF;
                            gMapMarker[i].attr0 += y;
                            oam->attr0 = gMapMarker[i].attr0;
                            break;
                        case 1:
                            y = gMapMarker[i].attr0 & 0xFF;
                            gMapMarker[i].attr0 &= ~0xFF;
                            y += gMapMarker[i].speed;
                            y &= 0xFF;
                            gMapMarker[i].attr0 += y;
                            oam->attr0 = gMapMarker[i].attr0;
                            break;
                        case 2:
                            x = gMapMarker[i].attr1 & 0x1FF;
                            gMapMarker[i].attr1 &= ~0x1FF;
                            x -= gMapMarker[i].speed;
                            x &= 0x1FF;
                            gMapMarker[i].attr1 += x;
                            oam->attr1 = gMapMarker[i].attr1;
                            break;
                        case 3:
                            x = gMapMarker[i].attr1 & 0x1FF;
                            gMapMarker[i].attr1 &= ~0x1FF;
                            x += gMapMarker[i].speed;
                            x &= 0x1FF;
                            gMapMarker[i].attr1 += x;
                            oam->attr1 = gMapMarker[i].attr1;
                            break;
                        default:
                            break;
                    }
                }
                if(gMapMarker[i].unk5 & 0x4)
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam++;
            }
            else
            {
                oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam++;
            }
        }
        
    }

    if(gMain.showTextboxCharacters)
    {
        oam = &gOamObjects[0x2];
        for(i = 0; i < 32; i++)
        {
            
            if(gTextBoxCharacters[i].state & 0x8000)
            {
                oam->attr0 = SPRITE_ATTR0(gTextBoxCharacters[i].y + scriptCtx->textYOffset, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(gTextBoxCharacters[i].x + scriptCtx->textXOffset, FALSE, FALSE, 1);
                oam->attr2 = gTextBoxCharacters[i].objAttr2;
            }
            else
                oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
        }   
        if(scriptCtx->flags & SCRIPT_FULLSCREEN)
        {
            oam = &gOamObjects[57];
            for(i = 32; i < ARRAY_COUNT(gTextBoxCharacters); i++)
            {
                if(gTextBoxCharacters[i].state & 0x8000)
                {
                    oam->attr0 = SPRITE_ATTR0(gTextBoxCharacters[i].y + scriptCtx->unk2A, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(gTextBoxCharacters[i].x + scriptCtx->unk28, FALSE, FALSE, 1);
                    oam->attr2 = gTextBoxCharacters[i].objAttr2;
                }
                else
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam++;
            }
        }
    }
    else
    {
        oam = &gOamObjects[0x2];
        for(i = 0; i < 32; i++)
        {
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
        }
        if(scriptCtx->flags & SCRIPT_FULLSCREEN)
        {
            oam = &gOamObjects[57];
            for(i = 32; i < ARRAY_COUNT(gTextBoxCharacters); i++)
            {
                oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam++;
            }
        }
    }
}

void RedrawTextboxCharacters()
{
    u32 i;
    u8 * src;
    u8 * dst;
    for(i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
    {
        struct TextBoxCharacter *theCharacter = &gTextBoxCharacters[i];
        if(theCharacter->state & 0x8000)
        {
            u32 temp = theCharacter->state & 0x7FFF;
            temp *= 0x80;
            temp += (u32)gCharSet; //! why tho
            if(theCharacter->color)
            {
                u32 j;
                u8 * tileBuf;
                u32 colorIdx;
                DmaCopy16(3, temp, gTextColorTileBuffer, 0x80);
                tileBuf = gTextColorTileBuffer;
                temp = theCharacter->color * 3;
                for(j = 0; j < 0x80; j++)
                {
                    u32 half1, half2;
                    half2 = *tileBuf; // honestly wtf capcom
                    half1 = half2 & 0xF;
                    half2 = half2 & 0xF0;
                    if(half1)
                        half1 += temp;
                    if(half2)
                        half2 += temp << 4;
                    *tileBuf++ = half1 | half2;
                }
                src = gTextColorTileBuffer;
                dst = (u8*)(OBJ_VRAM0 + i * 0x80);
                DmaCopy16(3, src, dst, 0x80);
            }
            else
            {
                dst = (u8*)(OBJ_VRAM0 + i * 0x80);
                DmaCopy16(3, temp, dst, 0x80);
            }
        }
    }
}