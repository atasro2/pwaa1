#include "global.h"
#include "main.h"
#include "script.h"
#include "sound_control.h"
#include "m4a.h"
#include "constants/background.h"

bool32 CommandDummy(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command00(struct ScriptContext * scriptCtx)
{
    sub_80054BC(scriptCtx);
    sub_80028B4(0, 0);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command01(struct ScriptContext * scriptCtx)
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

bool32 Command02(struct ScriptContext * scriptCtx)
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
            if(scriptCtx->unkC != 0xA) // if script cmd is not 0xA ?
            {
                return 1;
            }
            scriptCtx->scriptPtr++;
            return 1;
        }
    }
    if(gMain.unk4[0] >= 3 && gMain.unk4[0] <= 6)
    {
        if(scriptCtx->unk0 & 1)
            if(gJoypad.newKeysRaw & A_BUTTON)
                scriptCtx->unk0 |= 2;
        if(scriptCtx->unk14 != 0)
            scriptCtx->unk14--;
        if(gJoypad.heldKeysRaw & B_BUTTON && scriptCtx->unk13 != 0 && scriptCtx->unk14 == 0)
            scriptCtx->unk0 |= 2;
    }
    temp = scriptCtx->unk0 & 2;
    if(temp != 0)
    {
        PlaySE(47);
        gBG1MapBuffer[622] = 9;
        gBG1MapBuffer[623] = 9;
        scriptCtx->unk0 &= ~3;
        if(scriptCtx->unk13 != 0)
        {
            scriptCtx->textSpeed = 3;
            scriptCtx->unk13 = 1;
        }
        scriptCtx->unk14 = 8;
        if(scriptCtx->unkC == 7) // if script cmd is 0x7 ?
        {
            scriptCtx->scriptPtr++;
            DmaCopy16(3, gCharSet[226], VRAM + 0x11F80, sizeof(gCharSet[226]));
            scriptCtx->unk39 = 0;
            scriptCtx->unk0 |= 4;
            scriptCtx->unk26 = scriptCtx->textSpeed;
            scriptCtx->textSpeed = 0;
            scriptCtx->unk35 = 0x18;
            scriptCtx->unk1A = 0x14;
            scriptCtx->unkE = 0;
            scriptCtx->unkF = 2;
            scriptCtx->unk10 = 0;
            scriptCtx->unk11 = 2;
            scriptCtx->unk12 = 0;
            gMain.unk15 = 0;
            sub_8002244(1);
            for (i = 0; i < ARRAY_COUNT(gUnknown_03003930); i++)
            {
                gUnknown_03003930[i].id |= 0xFF;
            }
            return 0;
        }
        scriptCtx->unk32 = 0xA;
        scriptCtx->unk0 |= 0x20;
        if(scriptCtx->unkC == 0xA) // if script cmd is 0xA ?
        {
            if(gMain.unk8F > 0)
            {
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+1);
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
            sub_800FBA0(gUnknown_03000800.unk40, gMain.talkingAnimationOffset);
    }
    else
    {
        if((scriptCtx->unk0 & 1) == 0)
        {
            sub_800FBA0(gUnknown_03000800.unk40, gMain.idleAnimationOffset);
            scriptCtx->unk0 |= 1;
        }
        temp2 = gMain.unk4[0];
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
            gBG1MapBuffer[622] = gUnknown_080187C0[scriptCtx->unk36];
            gBG1MapBuffer[623] = gUnknown_080187C0[scriptCtx->unk36]+1;
            return 1;
        }
        scriptCtx->unk36 = temp;
        scriptCtx->unk37 = temp;
        gBG1MapBuffer[622] = temp2;
        gBG1MapBuffer[623] = temp2;
    }
    return 1;
}

bool32 Command03(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->textColor = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command04(struct ScriptContext * scriptCtx)
{

    if(gJoypad.newKeysRaw & scriptCtx->scriptPtr[1]) 
        scriptCtx->scriptPtr+=2;
    return 1;
}

bool32 Command05(struct ScriptContext * scriptCtx)
{
    u16 bgmNum;
    scriptCtx->scriptPtr++;
    bgmNum = *scriptCtx->scriptPtr; 
    scriptCtx->scriptPtr++;
    PlayBGM(*scriptCtx->scriptPtr, bgmNum);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command06(struct ScriptContext * scriptCtx)
{
    u32 soundNum;
    u32 flag;
    scriptCtx->scriptPtr++;
    soundNum = *scriptCtx->scriptPtr >> 8;
    flag = *scriptCtx->scriptPtr & 1;
    if(flag)
    {
        PlaySE(soundNum);
    }
    else
    {
        m4aSongNumStop(soundNum);
    }
    scriptCtx->scriptPtr++;
    return 0;
}

NAKED
bool32 Command08(struct ScriptContext * scriptCtx)
{
    asm_unified("push {r4, r5, r6, lr}\n\
	adds r5, r0, #0\n\
	ldrh r2, [r5]\n\
	movs r0, #0x20\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	beq _08005F5C\n\
	adds r1, r5, #0\n\
	adds r1, #0x32\n\
	ldrb r0, [r1]\n\
	cmp r0, #0\n\
	beq _08005F4A\n\
	subs r0, #1\n\
	strb r0, [r1]\n\
	b _080060BE\n\
_08005F4A:\n\
	ldr r0, _08005F58\n\
	ands r0, r2\n\
	strh r0, [r5]\n\
	ldr r0, [r5, #4]\n\
	adds r0, #6\n\
	str r0, [r5, #4]\n\
	b _080060BE\n\
	.align 2, 0\n\
_08005F58: .4byte 0x0000FFDF\n\
_08005F5C:\n\
	ldr r0, _08005F74\n\
	ldrb r0, [r0, #4]\n\
	cmp r0, #7\n\
	bne _08005F7C\n\
	ldr r0, _08005F78\n\
	movs r1, #0xb0\n\
	lsls r1, r1, #2\n\
	adds r0, r0, r1\n\
	subs r1, #0xc0\n\
	strh r1, [r0]\n\
	b _080060BE\n\
	.align 2, 0\n\
_08005F74: .4byte gMain\n\
_08005F78: .4byte gOamObjects\n\
_08005F7C:\n\
	adds r1, r5, #0\n\
	adds r1, #0x35\n\
	ldrb r0, [r1]\n\
	cmp r0, #0\n\
	beq _08005F8C\n\
	subs r0, #1\n\
	strb r0, [r1]\n\
	b _080060BE\n\
_08005F8C:\n\
	ldr r0, _08005FBC\n\
	ldrh r1, [r0, #2]\n\
	movs r0, #0x40\n\
	ands r0, r1\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	cmp r6, #0\n\
	beq _08005FC0\n\
	movs r0, #0x2a\n\
	bl PlaySE\n\
	adds r1, r5, #0\n\
	adds r1, #0x39\n\
	ldrb r0, [r1]\n\
	subs r0, #1\n\
	strb r0, [r1]\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	adds r4, r1, #0\n\
	cmp r0, #1\n\
	bls _08006094\n\
	movs r0, #1\n\
	strb r0, [r4]\n\
	b _08006094\n\
	.align 2, 0\n\
_08005FBC: .4byte gJoypad\n\
_08005FC0:\n\
	movs r0, #0x80\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08005FE6\n\
	movs r0, #0x2a\n\
	bl PlaySE\n\
	adds r1, r5, #0\n\
	adds r1, #0x39\n\
	ldrb r0, [r1]\n\
	adds r0, #1\n\
	strb r0, [r1]\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	adds r4, r1, #0\n\
	cmp r0, #1\n\
	bls _08006094\n\
	strb r6, [r4]\n\
	b _08006094\n\
_08005FE6:\n\
	movs r0, #1\n\
	ands r0, r1\n\
	adds r4, r5, #0\n\
	adds r4, #0x39\n\
	cmp r0, #0\n\
	beq _08006094\n\
	movs r0, #0x2b\n\
	bl PlaySE\n\
	adds r1, r5, #0\n\
	adds r1, #0x32\n\
	movs r0, #0xa\n\
	strb r0, [r1]\n\
	movs r0, #0x20\n\
	ldrh r3, [r5]\n\
	orrs r0, r3\n\
	strh r0, [r5]\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08006014\n\
	ldr r0, [r5, #4]\n\
	ldrh r0, [r0, #2]\n\
	b _08006018\n\
_08006014:\n\
	ldr r0, [r5, #4]\n\
	ldrh r0, [r0, #4]\n\
_08006018:\n\
	strh r0, [r5, #0x20]\n\
	movs r0, #0\n\
	strb r0, [r5, #0xe]\n\
	strb r0, [r5, #0xf]\n\
	ldr r0, _08006084\n\
	ldrh r4, [r5]\n\
	ands r0, r4\n\
	movs r1, #0\n\
	strh r0, [r5]\n\
	movs r0, #0x74\n\
	strh r0, [r5, #0x1a]\n\
	adds r0, r5, #0\n\
	adds r0, #0x26\n\
	ldrb r0, [r0]\n\
	adds r2, r5, #0\n\
	adds r2, #0x25\n\
	strb r0, [r2]\n\
	adds r0, r5, #0\n\
	adds r0, #0x34\n\
	strb r1, [r0]\n\
	movs r0, #0\n\
	bl sub_8002244\n\
	movs r2, #0\n\
	ldr r3, _08006088\n\
	ldr r1, _0800608C\n\
_0800604C:\n\
	adds r0, r3, #0\n\
	ldrh r4, [r1]\n\
	ands r0, r4\n\
	strh r0, [r1]\n\
	adds r1, #0xc\n\
	adds r2, #1\n\
	cmp r2, #0x1f\n\
	bls _0800604C\n\
	movs r2, #0x39\n\
	ldr r1, _08006090\n\
	movs r3, #0x80\n\
	lsls r3, r3, #2\n\
	movs r4, #0xe4\n\
	lsls r4, r4, #1\n\
	adds r0, r1, r4\n\
_0800606A:\n\
	strh r3, [r0]\n\
	adds r0, #8\n\
	adds r2, #1\n\
	cmp r2, #0x57\n\
	bls _0800606A\n\
	movs r0, #0xb0\n\
	lsls r0, r0, #2\n\
	adds r1, r1, r0\n\
	subs r0, #0xc0\n\
	strh r0, [r1]\n\
	movs r0, #0\n\
	b _080060C0\n\
	.align 2, 0\n\
_08006084: .4byte 0x0000FFFB\n\
_08006088: .4byte 0x00007FFF\n\
_0800608C: .4byte gUnknown_03003C00\n\
_08006090: .4byte gOamObjects\n\
_08006094:\n\
	ldr r2, _080060C8\n\
	ldrb r1, [r4]\n\
	lsls r0, r1, #2\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	ldrh r3, [r5, #0x2a]\n\
	adds r0, r3, r0\n\
	movs r4, #0xb0\n\
	lsls r4, r4, #2\n\
	adds r1, r2, r4\n\
	strh r0, [r1]\n\
	ldrh r5, [r5, #0x28]\n\
	ldr r0, _080060CC\n\
	adds r1, r5, r0\n\
	ldr r3, _080060D0\n\
	adds r0, r2, r3\n\
	strh r1, [r0]\n\
	adds r4, #4\n\
	adds r2, r2, r4\n\
	ldr r0, _080060D4\n\
	strh r0, [r2]\n\
_080060BE:\n\
	movs r0, #1\n\
_080060C0:\n\
	pop {r4, r5, r6}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_080060C8: .4byte gOamObjects\n\
_080060CC: .4byte 0x00003FF3\n\
_080060D0: .4byte 0x000002C2\n\
_080060D4: .4byte 0x000004FC\n");
}

NAKED
bool32 Command09(struct ScriptContext * scriptCtx)
{
    asm_unified("push {r4, r5, r6, lr}\n\
	adds r5, r0, #0\n\
	ldrh r2, [r5]\n\
	movs r0, #0x20\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	beq _08006108\n\
	adds r1, r5, #0\n\
	adds r1, #0x32\n\
	ldrb r0, [r1]\n\
	cmp r0, #0\n\
	beq _080060F6\n\
	subs r0, #1\n\
	strb r0, [r1]\n\
	b _08006272\n\
_080060F6:\n\
	ldr r0, _08006104\n\
	ands r0, r2\n\
	strh r0, [r5]\n\
	ldr r0, [r5, #4]\n\
	adds r0, #8\n\
	str r0, [r5, #4]\n\
	b _08006272\n\
	.align 2, 0\n\
_08006104: .4byte 0x0000FFDF\n\
_08006108:\n\
	ldr r0, _08006120\n\
	ldrb r0, [r0, #4]\n\
	cmp r0, #7\n\
	bne _08006128\n\
	ldr r0, _08006124\n\
	movs r1, #0xb0\n\
	lsls r1, r1, #2\n\
	adds r0, r0, r1\n\
	subs r1, #0xc0\n\
	strh r1, [r0]\n\
	b _08006272\n\
	.align 2, 0\n\
_08006120: .4byte gMain\n\
_08006124: .4byte gOamObjects\n\
_08006128:\n\
	adds r1, r5, #0\n\
	adds r1, #0x35\n\
	ldrb r0, [r1]\n\
	cmp r0, #0\n\
	beq _08006138\n\
	subs r0, #1\n\
	strb r0, [r1]\n\
	b _08006272\n\
_08006138:\n\
	ldr r0, _08006168\n\
	ldrh r1, [r0, #2]\n\
	movs r0, #0x40\n\
	ands r0, r1\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	cmp r6, #0\n\
	beq _0800616C\n\
	movs r0, #0x2a\n\
	bl PlaySE\n\
	adds r1, r5, #0\n\
	adds r1, #0x39\n\
	ldrb r0, [r1]\n\
	subs r0, #1\n\
	strb r0, [r1]\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	adds r4, r1, #0\n\
	cmp r0, #2\n\
	bls _08006248\n\
	movs r0, #2\n\
	strb r0, [r4]\n\
	b _08006248\n\
	.align 2, 0\n\
_08006168: .4byte gJoypad\n\
_0800616C:\n\
	movs r0, #0x80\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08006192\n\
	movs r0, #0x2a\n\
	bl PlaySE\n\
	adds r1, r5, #0\n\
	adds r1, #0x39\n\
	ldrb r0, [r1]\n\
	adds r0, #1\n\
	strb r0, [r1]\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	adds r4, r1, #0\n\
	cmp r0, #2\n\
	bls _08006248\n\
	strb r6, [r4]\n\
	b _08006248\n\
_08006192:\n\
	movs r0, #1\n\
	ands r0, r1\n\
	adds r4, r5, #0\n\
	adds r4, #0x39\n\
	cmp r0, #0\n\
	beq _08006248\n\
	movs r0, #0x2b\n\
	bl PlaySE\n\
	adds r1, r5, #0\n\
	adds r1, #0x32\n\
	movs r0, #0xa\n\
	strb r0, [r1]\n\
	movs r0, #0x20\n\
	ldrh r3, [r5]\n\
	orrs r0, r3\n\
	strh r0, [r5]\n\
	ldrb r1, [r4]\n\
	cmp r1, #0\n\
	bne _080061C0\n\
	ldr r0, [r5, #4]\n\
	ldrh r0, [r0, #2]\n\
	b _080061CE\n\
_080061C0:\n\
	cmp r1, #1\n\
	bne _080061CA\n\
	ldr r0, [r5, #4]\n\
	ldrh r0, [r0, #4]\n\
	b _080061CE\n\
_080061CA:\n\
	ldr r0, [r5, #4]\n\
	ldrh r0, [r0, #6]\n\
_080061CE:\n\
	strh r0, [r5, #0x20]\n\
	movs r0, #0\n\
	strb r0, [r5, #0xe]\n\
	strb r0, [r5, #0xf]\n\
	ldr r0, _08006238\n\
	ldrh r4, [r5]\n\
	ands r0, r4\n\
	movs r1, #0\n\
	strh r0, [r5]\n\
	movs r0, #0x74\n\
	strh r0, [r5, #0x1a]\n\
	adds r0, r5, #0\n\
	adds r0, #0x26\n\
	ldrb r0, [r0]\n\
	adds r2, r5, #0\n\
	adds r2, #0x25\n\
	strb r0, [r2]\n\
	adds r0, r5, #0\n\
	adds r0, #0x34\n\
	strb r1, [r0]\n\
	movs r0, #0\n\
	bl sub_8002244\n\
	movs r2, #0\n\
	ldr r3, _0800623C\n\
	ldr r1, _08006240\n\
_08006202:\n\
	adds r0, r3, #0\n\
	ldrh r4, [r1]\n\
	ands r0, r4\n\
	strh r0, [r1]\n\
	adds r1, #0xc\n\
	adds r2, #1\n\
	cmp r2, #0x1f\n\
	bls _08006202\n\
	movs r2, #0x39\n\
	ldr r1, _08006244\n\
	movs r3, #0x80\n\
	lsls r3, r3, #2\n\
	movs r4, #0xe4\n\
	lsls r4, r4, #1\n\
	adds r0, r1, r4\n\
_08006220:\n\
	strh r3, [r0]\n\
	adds r0, #8\n\
	adds r2, #1\n\
	cmp r2, #0x57\n\
	bls _08006220\n\
	movs r0, #0xb0\n\
	lsls r0, r0, #2\n\
	adds r1, r1, r0\n\
	subs r0, #0xc0\n\
	strh r0, [r1]\n\
	movs r0, #0\n\
	b _08006274\n\
	.align 2, 0\n\
_08006238: .4byte 0x0000FFFB\n\
_0800623C: .4byte 0x00007FFF\n\
_08006240: .4byte gUnknown_03003C00\n\
_08006244: .4byte gOamObjects\n\
_08006248:\n\
	ldr r2, _0800627C\n\
	ldrb r1, [r4]\n\
	lsls r0, r1, #2\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	ldrh r3, [r5, #0x2a]\n\
	adds r0, r3, r0\n\
	movs r4, #0xb0\n\
	lsls r4, r4, #2\n\
	adds r1, r2, r4\n\
	strh r0, [r1]\n\
	ldrh r5, [r5, #0x28]\n\
	ldr r0, _08006280\n\
	adds r1, r5, r0\n\
	ldr r3, _08006284\n\
	adds r0, r2, r3\n\
	strh r1, [r0]\n\
	adds r4, #4\n\
	adds r2, r2, r4\n\
	ldr r0, _08006288\n\
	strh r0, [r2]\n\
_08006272:\n\
	movs r0, #1\n\
_08006274:\n\
	pop {r4, r5, r6}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0800627C: .4byte gOamObjects\n\
_08006280: .4byte 0x00003FF3\n\
_08006284: .4byte 0x000002C2\n\
_08006288: .4byte 0x000004FC\n");
}

bool32 Command0B(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->textSpeed = *scriptCtx->scriptPtr;
    if(scriptCtx->textSpeed == 0xFF)
    {
        scriptCtx->textSpeed = 3;
    }
    if(scriptCtx->unk13 > 1)
    {
        scriptCtx->textSpeed = 0;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command0C(struct ScriptContext * scriptCtx)
{
    if(!gMain.unk76 != 0 && scriptCtx->unk13 > 1)
    {
        scriptCtx->scriptPtr++;
        scriptCtx->waitTimer = *scriptCtx->scriptPtr;
        scriptCtx->scriptPtr++;
        return 0;      
    }
    if(scriptCtx->waitTimer > 0)
    {
        scriptCtx->waitTimer--;
        if(scriptCtx->waitTimer != 0) 
            return 1;   
        scriptCtx->scriptPtr += 2;
        return 0;        
    }
    scriptCtx->scriptPtr++;
    scriptCtx->waitTimer = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr--;
    return 1;
}

bool32 Command0D(struct ScriptContext * scriptCtx)
{
    scriptCtx->previousSection = scriptCtx->currentSection;
    scriptCtx->currentSection = scriptCtx->nextSection;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command0E(struct ScriptContext * scriptCtx)
{
    u8 temp;
    scriptCtx->scriptPtr++;
    scriptCtx->unk34 = (*scriptCtx->scriptPtr >> 8);
    scriptCtx->unk34 &= ~0x80;
    sub_80028B4(scriptCtx->unk34, *scriptCtx->scriptPtr & 0xFF);
    temp = gUnknown_08018784[scriptCtx->unk34];
    scriptCtx->unk17 = temp;
    if(temp == 2)
        scriptCtx->unk16 = 0;
    if(*scriptCtx->scriptPtr & 0xFF)
    {
        scriptCtx->unk34 |= 0x80;
    }
    else
    {
        scriptCtx->unk34 &= ~0x80;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command0F(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->unk2C = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    scriptCtx->unk2E = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command10(struct ScriptContext * scriptCtx)
{
    u32 num;
    u32 message;
    u32 num2;
    scriptCtx->scriptPtr++;
    num2 = num = (message = *scriptCtx->scriptPtr);
    scriptCtx->scriptPtr++;
    num2 = (num2 & 0x7F00) >> 8;
    num &= 0xFF;
    message >>= 15;
    SetFlag(num2, num, message);
    return 0;
}

bool32 Command11(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    PlaySE(49);
    scriptCtx->unk0 |= 0x10;
    gMain.unkB4 |= 0x100;
    SET_UNK8_AS_UNK4();
    SET_UNK4(1, 0, 0, 7);
    return 0;
}

bool32 Command12(struct ScriptContext * scriptCtx)
{
    u32 var0;
    u32 var1;
    u32 var2;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    sub_80007D8(var0 >> 8, var0 & 0xFF, var1, *scriptCtx->scriptPtr);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command13(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.unk7D = 3;
    gMain.unk7C = *scriptCtx->scriptPtr;
    gMain.unk7E = *scriptCtx->scriptPtr >> 8;
    scriptCtx->scriptPtr++;
    PlaySE(51);
    return 0;
}

bool32 Command14(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.unk7D = 1;
    PlaySE(51);
    return 0;
} 

bool32 Command15(struct ScriptContext * scriptCtx)
{
    if(scriptCtx->unk0 & 8)
    {
        return 1;
    }
    if(*scriptCtx->scriptPtr == 0x15)
    {
        sub_800FBA0(gUnknown_03000800.unk40, gMain.idleAnimationOffset);
    }
    scriptCtx->unk0 |= 8;
    return 1;
}

bool32 Command16(struct ScriptContext * scriptCtx)
{
    struct Main *main = &gMain;
    scriptCtx->scriptPtr++;
    main->unk14 = 0;
    main->unk15 = 0;
    SET_UNK4(0, 0, 2, 3);
    gUnknown_03003A50.unkA = 0;
    gUnknown_03003A50.unkB = 0;
    main->unk8D++;
    sub_800F408(16);
    return 1;
}

bool32 Command17(struct ScriptContext * scriptCtx)
{
    u16 var1;
    u16 var2;
    s32 temp;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr & 0x3FFF;
    var2 = *scriptCtx->scriptPtr & 0x8000;
    temp = sub_800ECF8(var2, var1);
    if(temp < 0)
    {
        temp = sub_800ED40(var2);
        if(temp >= 0)
        {
            if(var2 != 0)
            {
                gUnknown_03002840.unk38[temp] = var1;
                gUnknown_03002840.unk11++;
            }
            else
            {
                gUnknown_03002840.unk18[temp] = var1;
                gUnknown_03002840.unk10++;
            }
            if(*scriptCtx->scriptPtr & 0x4000)
            {
                gMain.unk26 = var2;
                gMain.unk27 = var1;
                SET_UNK8_AS_UNK4();
                SET_UNK4(0, 0, 0, 8);
            }
        }
    }
    scriptCtx->scriptPtr++;
    return 1;
}

bool32 Command18(struct ScriptContext * scriptCtx)
{
    u16 var1;
    u16 var2;
    s32 temp;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr & 0x3FFF;
    var2 = *scriptCtx->scriptPtr & 0x8000;
    temp = sub_800ECF8(var2, var1);
    if(temp >= 0)
    {
        if(var2 != 0)
        {
            gUnknown_03002840.unk38[temp] = 0xFF;
        }
        else
        {
            gUnknown_03002840.unk18[temp] = 0xFF;
        }
        sub_800ED68(&gUnknown_03002840);
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command19(struct ScriptContext * scriptCtx)
{
    u16 var1;
    u16 var2;
    u16 var3;
    s32 temp;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr & 0x3FFF;
    var2 = *scriptCtx->scriptPtr & 0x8000;
    scriptCtx->scriptPtr++;
    temp = sub_800ECF8(var2, var1);
    if(temp >= 0)
    {
        var1 = *scriptCtx->scriptPtr & 0x3FFF;
        if(var2)
        {
            gUnknown_03002840.unk38[temp] = var1;
        }
        else
        {
            gUnknown_03002840.unk18[temp] = var1;
        }
        if(*scriptCtx->scriptPtr & 0x4000)
        {
            gMain.unk26 = var2;
            gMain.unk27 = var1;
            SET_UNK8_AS_UNK4();
            SET_UNK4(0, 0, 0, 8);
        }
    }
    scriptCtx->scriptPtr++;
    return 0;
}

u32 Command1A(struct ScriptContext * scriptCtx)
{
    u32 var0;
    u32 var1;
    u32 var2;
    u32 var3;

    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var2 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    
    sub_8011108(var0, var1, var2, *scriptCtx->scriptPtr);
    var0 = (u32)gUnknown_080187B4[var0];
    var2 = var1 & 1 ? 30: 0;
    sub_800077C((u8 *)var0, var2, 31, var1);
    scriptCtx->scriptPtr++;
    return 0;
}

u32 Command1B(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(gMain.currentBG != *scriptCtx->scriptPtr)
    {
        changeBG:
        gMain.previousBG = gMain.currentBG;
        gMain.currentBG = *scriptCtx->scriptPtr;
        gMain.unk2C = 1;
        scriptCtx->scriptPtr++;
        return 1;
    }
    if(gMain.currentBG != 0x42)
    {
        scriptCtx->scriptPtr++;
        return 0;
    }
    else
    {
        goto changeBG;
    }
}

u32 Command1C(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    switch(*scriptCtx->scriptPtr)
    {
        case 0: // enable textbox
            gMain.unk15 = 1; // show characters??
            gLCDIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
            gLCDIORegisters.lcd_bg1vofs = 0;
            break;
        case 1: // disable textbox
            gMain.unk15 = 0;
            gLCDIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            gLCDIORegisters.lcd_bg1vofs = 0;
            break;
        case 2:
            if(gMain.unk4[0] == 3)
            {
                sub_8010960(gUnknown_03000800.unk40);
                gUnknown_03003A50.unk5 = 0;
                sub_800B7A8(&gUnknown_03003A50, 15);
            }
            sub_800244C(1);
            break;
        case 3:
            if(gMain.unk4[0] == 3)
            {
                sub_8010960(gUnknown_03000800.unk40);
                gUnknown_03003A50.unk5 = 0;
                sub_800B7A8(&gUnknown_03003A50, 15);
            }
            sub_800244C(0);
            if(gMain.unk4[0] == 4)
            {
                gUnknown_03003A50.unkE = 0;
                if(gMain.unk4[1] == 6)
                {
                    sub_800B7A8(&gUnknown_03003A50, 1);
                }
                if(gMain.unk4[1] == 8)
                {
                    sub_800B7A8(&gUnknown_03003A50, 4);
                    gUnknown_03003A50.unkC = 4;
                    gUnknown_03003A50.unkD = 0xE0;
                }
                if(gMain.unk4[1] == 9)
                {
                    sub_800B7A8(&gUnknown_03003A50, 8);
                }
            }
            break;
        default:
            break;
    }
    scriptCtx->scriptPtr++;
    gUnknown_03003A50.unk6 = 0;
    return 0;
}

u32 Command1D(struct ScriptContext * scriptCtx)
{
    u32 var0;
    u32 var1;
    scriptCtx->scriptPtr++;
    var0 = sub_8002224(gMain.currentBG);
    if(var0 & 0xF)
        gMain.unk2E = 1;
    else
        gMain.unk2E = 0;
    var1 = *scriptCtx->scriptPtr;
    switch(var1 >> 8)
    {
        case BG_SHIFT_LEFT:
            gMain.unk3C = -var1;
            break;
        case BG_SHIFT_RIGHT:
            gMain.unk3C = var1;
            break;
        case BG_SHIFT_UP:
            gMain.unk3D = -var1;
            break;
        case BG_SHIFT_DOWN:
            gMain.unk3D = var1;
            break;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

u32 Command1E(struct ScriptContext * scriptCtx)
{
    u32 var0;
    u32 var1;
    u32 var2;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    gMain.talkingAnimationOffset = var1;
    scriptCtx->scriptPtr++;
    var2 = *scriptCtx->scriptPtr;
    gMain.idleAnimationOffset = var2;
    scriptCtx->scriptPtr++;
    if(var0 != 0)
    {
        sub_8010048(var0, 0, var1, 0);
        gUnknown_03003A50.unk5 = 1;
        sub_800B7A8(&gUnknown_03003A50, 15);
    }
    else
    {
        sub_8010960(gUnknown_03000800.unk40);
        gUnknown_03003A50.unk5 = 0;
        sub_800B7A8(&gUnknown_03003A50, 15);
    }
    return 0;
}

u32 Command1F(struct ScriptContext * scriptCtx)
{
    u32 i;
    u16 * tilemapBuffer;
    scriptCtx->scriptPtr++;
    gLCDIORegisters.lcd_dispcnt &= ~0x400;
    tilemapBuffer = gBG2MapBuffer;
    for(i = 0; i < 0x2A0; i++, tilemapBuffer++)
    {
       *tilemapBuffer = 0;
    }
    gLCDIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP; // TODO: add TXT/AFF macro once known which one is used
    scriptCtx->unk0 &= ~0x40;
    return 0;
}

u32 Command20(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->nextSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command21(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    PlaySE(0x31);
    scriptCtx->unk0 |= 0x10;
    gMain.unkB4 |= 0x300;
    SET_UNK8_AS_UNK4();
    SET_UNK4(1, 0, 0, 7);
    return 0;
}

bool32 Command22(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    // skips a token
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0)
        FadeOutBGM(*scriptCtx->scriptPtr);
    else
        StopBGM();
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command23(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    // skips a token
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0)
        UnpauseBGM();
    else
        PauseBGM();
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command24(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.unk14 = 0;
    gMain.unk15 = 0;
    SET_UNK4(0, 0, 0, 2);
    return 1;
}

bool32 Command25(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->previousSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command26(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0)
        gMain.unkB4 |= 0x10;
    else
        gMain.unkB4 &= ~0x10;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command27(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.shakeTimer = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.unkB4 |= 1;
    gMain.shakeIntensity = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command28(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0)
    {
        SET_UNK8_AS_UNK4();
        SET_UNK4(0, 0, 0, 5);
    }
    else
    {
        gMain.unk4[1]++;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command29(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr == 3)
    {
        gUnknown_03003AB0.unk4 = 0xF0;
        gUnknown_03003AB0.unk2 = 0xE0;
        gUnknown_03003AB0.unk3 = 0xE0;
        gUnknown_03003AB0.unk0 = 2;
        gLCDIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
    }
    else if(*scriptCtx->scriptPtr == 2)
    {
        u32 i;
        struct OamAttrs * oam;
        gUnknown_03003AB0.unk4 = 0xF0;
        gUnknown_03003AB0.unk2 = 0xE0;
        gUnknown_03003AB0.unk3 = 0xE0;
        gUnknown_03003AB0.unk0 = 0;
        gLCDIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
        oam = &gOamObjects[35];
        for(i = 0; i < 5; oam++, i++)
        {
            oam->attr0 = 0x200;
        }
    }
    else if(*scriptCtx->scriptPtr != 0)
    {
        SET_UNK8_AS_UNK4();
        SET_UNK4(0, 0, 0, 6);
    }
    else
    {
        SET_UNK4(0, 0, 1, 3);
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command2A(struct ScriptContext * scriptCtx)
{
    u32 temp;
    scriptCtx->scriptPtr++;
    if(GetFlag(0, *scriptCtx->scriptPtr))
    {
        temp = *(scriptCtx->scriptPtr+1);
    }
    else
    {
        temp = *(scriptCtx->scriptPtr+2);
    }
    scriptCtx->nextSection = temp;
    scriptCtx->scriptPtr+=3;
    return 0;
}

bool32 Command2B(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.unk8A = gMain.unk8F;
    gMain.unk8F--;
    gMain.unk88 = 1; // damage related
    gMain.unk89 = 3; // damage related
    PlaySE(0x4C);
    if(gMain.unk8F <= 0)
    {
        scriptCtx->nextSection = gUnknown_08014D82[gMain.unk8D];
    }
    return 0;
}

bool32 Command2C(struct ScriptContext * scriptCtx)
{
    u32 i;
    scriptCtx->scriptPtr++;
    scriptCtx->nextSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    scriptCtx->unkE = 0;
    scriptCtx->unkF = 0;
    for(i = 0; i < ARRAY_COUNT(gUnknown_03003C00); i++)
    {
        gUnknown_03003C00[i].unk0 &= ~0x8000;
    }
    gBG1MapBuffer[622] = 9; // clear downward arrow in text box
    gBG1MapBuffer[623] = 9; // clear downward arrow in text box
    sub_800FBA0(gUnknown_03000800.unk40, gMain.idleAnimationOffset); 
    return 0;
}

bool32 Command2E(struct ScriptContext * scriptCtx)
{
    u32 i;
    scriptCtx->unk0 &= ~(0x2 | 0x1);
    scriptCtx->scriptPtr++;
    scriptCtx->unkE = 0;
    scriptCtx->unkF = 0;
    scriptCtx->unk36 = 0;
    scriptCtx->unk37 = 0;
    for(i = 0; i < ARRAY_COUNT(gUnknown_03003C00); i++)
    {
        gUnknown_03003C00[i].unk0 &= ~0x8000;
    }
    gBG1MapBuffer[622] = 9; // clear downward arrow in text box
    gBG1MapBuffer[623] = 9; // clear downward arrow in text box
    return 1;
}

bool32 Command2F(struct ScriptContext * scriptCtx)
{
    u32 temp;
    scriptCtx->scriptPtr++;
    temp = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
        sub_8010204(temp);
    else
        sub_8010960(sub_800F8BC(temp));
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command30(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->unk17 = *scriptCtx->scriptPtr;
    if(scriptCtx->unk17 == 2)
    {
        scriptCtx->unk16 = 0;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command31(struct ScriptContext * scriptCtx)
{
    u32 unk0, unk1;
    scriptCtx->scriptPtr++;
    unk0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    unk1 = *scriptCtx->scriptPtr;
    sub_80106A4(unk0, unk1);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command32(struct ScriptContext * scriptCtx)
{
    u32 location, unk1;
    scriptCtx->scriptPtr++;
    location = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    unk1 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.mapData[location][0] = unk1;
    return 0;
}

bool32 Command33(struct ScriptContext * scriptCtx)
{
    u32 startingLocation;

    scriptCtx->scriptPtr++;
    startingLocation = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.mapData[startingLocation][4] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.mapData[startingLocation][5] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.mapData[startingLocation][6] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.mapData[startingLocation][7] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command34(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.unk8C = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    sub_80007D8(2, 0, 2, 0x1F);
    SET_UNK4(0, 0, 5, 4);
    return 0;
}

//fuck gScriptHeap

#ifdef NONMATCHING
bool32 Command35(struct ScriptContext *scriptCtx)
{
    u32 offset;
    u32 flag;
    u32 sectionNumber;
    u16 * jmpArgs;

    scriptCtx->scriptPtr++;
    flag = *scriptCtx->scriptPtr >> 8;

    if(*scriptCtx->scriptPtr & 1) 
    {
        if(!GetFlag(0, flag)) 
        {
            scriptCtx->scriptPtr += 2;
            return 0;
        }
        
    }
    else 
    {
        if(GetFlag(0, flag)) 
        {
            scriptCtx->scriptPtr += 2;
            return 0;
        }
    }
    if(*(scriptCtx->scriptPtr) & 0x80) 
    {
        scriptCtx->scriptPtr++;
        jmpArgs = (u16*)(gScriptHeap+1+*scriptCtx->scriptPtr);
        offset = jmpArgs[0] / 2;
        sectionNumber = jmpArgs[1];
        scriptCtx->currentSection = sectionNumber + 0x80;
        scriptCtx->scriptPtr2 = (void *)gScriptHeap + (gScriptHeap+1)[sectionNumber];
        scriptCtx->scriptPtr = scriptCtx->scriptPtr2 + offset;
    }
    else 
    {
        scriptCtx->scriptPtr++;
        offset = *scriptCtx->scriptPtr / 2;
        scriptCtx->scriptPtr = scriptCtx->scriptPtr2 + offset;
    }
    return 0;
}
#else
NAKED
bool32 Command35(struct ScriptContext *scriptCtx)
{
    asm_unified("push {r4, lr}\n\
	adds r4, r0, #0\n\
	ldr r1, [r4, #4]\n\
	adds r0, r1, #2\n\
	str r0, [r4, #4]\n\
	ldrh r1, [r1, #2]\n\
	lsrs r2, r1, #8\n\
	movs r0, #1\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08006E44\n\
	movs r0, #0\n\
	adds r1, r2, #0\n\
	bl GetFlag\n\
	cmp r0, #0\n\
	bne _08006E56\n\
	ldr r0, [r4, #4]\n\
	adds r0, #4\n\
	b _08006E96\n\
_08006E44:\n\
	movs r0, #0\n\
	adds r1, r2, #0\n\
	bl GetFlag\n\
	cmp r0, #0\n\
	beq _08006E56\n\
	ldr r0, [r4, #4]\n\
	adds r0, #4\n\
	b _08006E96\n\
_08006E56:\n\
	ldr r1, [r4, #4]\n\
	movs r0, #0x80\n\
	ldrh r2, [r1]\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	beq _08006E8C\n\
	ldrh r1, [r1, #2]\n\
	lsls r0, r1, #2\n\
	ldr r1, _08006E88\n\
	adds r0, r0, r1\n\
	ldrh r2, [r0]\n\
	lsrs r1, r2, #1\n\
	ldrh r2, [r0, #2]\n\
	adds r0, r2, #0\n\
	adds r0, #0x80\n\
	strh r0, [r4, #0x1e]\n\
	lsls r0, r2, #2\n\
	ldr r2, _08006E88\n\
	adds r0, r0, r2\n\
	ldr r0, [r0]\n\
	subs r2, #4\n\
	adds r0, r0, r2\n\
	str r0, [r4, #8]\n\
	lsls r1, r1, #1\n\
	b _08006E94\n\
	.align 2, 0\n\
_08006E88: .4byte gScriptHeap+4\n\
_08006E8C:\n\
	ldrh r1, [r1, #2]\n\
	lsrs r2, r1, #1\n\
	lsls r1, r2, #1\n\
	ldr r0, [r4, #8]\n\
_08006E94:\n\
	adds r0, r0, r1\n\
_08006E96:\n\
	str r0, [r4, #4]\n\
	movs r0, #0\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1\n");
}
#endif

#ifdef NONMATCHING
bool32 Command36(struct ScriptContext * scriptCtx)
{
    u32 idx;
    u32 offset;
    u16 * ptr;
    scriptCtx->scriptPtr++;
    idx = *scriptCtx->scriptPtr;
    ptr = (u16*)(gScriptHeap+1+idx);
    offset = ptr[0] / 2;
    idx = ptr[1];
    scriptCtx->currentSection = idx + 0x80;
    scriptCtx->scriptPtr2 = (gScriptHeap+1)[idx] + (void *)gScriptHeap;
    scriptCtx->scriptPtr = scriptCtx->scriptPtr2 + offset;
    return 0;
}
#else
NAKED bool32 Command36(struct ScriptContext * scriptCtx)
{
    asm_unified("ldr r1, [r0, #4]\n\
	ldrh r1, [r1, #2]\n\
	lsls r1, r1, #2\n\
	ldr r2, _08006ED0\n\
	adds r1, r1, r2\n\
	ldrh r2, [r1]\n\
	lsrs r3, r2, #1\n\
	ldrh r1, [r1, #2]\n\
	adds r2, r1, #0\n\
	adds r2, #0x80\n\
	strh r2, [r0, #0x1e]\n\
	lsls r1, r1, #2\n\
	ldr r2, _08006ED0\n\
	adds r1, r1, r2\n\
	ldr r1, [r1]\n\
	subs r2, #4\n\
	adds r1, r1, r2\n\
	str r1, [r0, #8]\n\
	lsls r3, r3, #1\n\
	adds r1, r1, r3\n\
	str r1, [r0, #4]\n\
	movs r0, #0\n\
	bx lr\n\
	.align 2, 0\n\
_08006ED0: .4byte gScriptHeap+4\n");
}
#endif

bool32 Command37(struct ScriptContext * scriptCtx)
{
    u32 temp;
    scriptCtx->scriptPtr++;
    temp = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gUnknown_030028A0.talkData[temp].unk3 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command38(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
    {
        sub_800FA74(gUnknown_03000800.unk40, 1);
    }
    else
    {
        sub_800FA74(gUnknown_03000800.unk40, 0);
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command39(struct ScriptContext * scriptCtx)
{
    u32 id;
    u32 oamIdx;
    struct Struct3003930 * iwstruct3930p;
    struct OamAttrs * oamObject;
    scriptCtx->scriptPtr++;
    id = *scriptCtx->scriptPtr >> 8;
    if(*scriptCtx->scriptPtr & 1)
    {
        oamIdx = sub_8007554(id);
        if(oamIdx == 0xFF)
        {
            u32 size;
            oamIdx = sub_8007554(0xFF);
            iwstruct3930p = &gUnknown_03003930[oamIdx];
            oamIdx += 0x39;
            iwstruct3930p->id = id;
            iwstruct3930p->vramPtr = scriptCtx->unk3C;
            DmaCopy16(3, gUnknown_080187C8[id].tiles, iwstruct3930p->vramPtr, size = gUnknown_080187C8[id].size); // weird shit going on here
            DmaCopy16(3, gUnknown_0824696C, PALETTE + 0x2C0, 32);
            iwstruct3930p->oamIdx = oamIdx;
            oamObject = &gOamObjects[oamIdx];
            
            oamObject->attr0 = gUnknown_080187C8[id].attr0;
            iwstruct3930p->attr0 = oamObject->attr0;
            
            oamObject->attr1 = gUnknown_080187C8[id].attr1;
            iwstruct3930p->attr1 = oamObject->attr1;

            oamIdx = ((u32)iwstruct3930p->vramPtr - 0x6011800);
            oamIdx /= 32;
            oamObject->attr2 = 0x68C0 + oamIdx;
            iwstruct3930p->attr2 = oamObject->attr2;

            scriptCtx->unk3C += size;
        }
        else
        {
            iwstruct3930p = &gUnknown_03003930[oamIdx];
            oamObject = &gOamObjects[iwstruct3930p->oamIdx];
            oamObject->attr0 = iwstruct3930p->attr0;
            oamObject->attr1 = iwstruct3930p->attr1;
            oamObject->attr2 = iwstruct3930p->attr2;
            iwstruct3930p->unk5 &= ~0x4;
        }
    }
    else
    {   
        // TODO: BUGFIX
        // ! Capcom forgot to check for 0xFF here..this will corrupt the sound buffer in gSoundInfo
        oamIdx = sub_8007554(id); 
        gUnknown_03003930[oamIdx].unk5 |= 4;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command3A(struct ScriptContext * scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = sub_8007554(*scriptCtx->scriptPtr >> 8);
    if(oamIdx != 0xFF)
    {
        scriptCtx->scriptPtr++;
        gUnknown_03003930[oamIdx].attr0 &= ~0xFF;
        gUnknown_03003930[oamIdx].attr0 |= (u8)*scriptCtx->scriptPtr;
        gUnknown_03003930[oamIdx].attr1 &= ~0x1FF;
        gUnknown_03003930[oamIdx].attr1 |= (u8)(*scriptCtx->scriptPtr >> 8);
        scriptCtx->scriptPtr++;
    }
    else
    {
        scriptCtx->scriptPtr++;
        scriptCtx->scriptPtr++;
    }
    return 0;
}

bool32 Command3B(struct ScriptContext * scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = sub_8007554(*scriptCtx->scriptPtr >> 8);
    if(oamIdx != 0xFF)
    {
        gUnknown_03003930[oamIdx].unk4 = (u8)*scriptCtx->scriptPtr & 3;
        scriptCtx->scriptPtr++;
        gUnknown_03003930[oamIdx].unk3 = (u8)(*scriptCtx->scriptPtr >> 8);
        gUnknown_03003930[oamIdx].unk6 = (u8)*scriptCtx->scriptPtr;
        scriptCtx->scriptPtr++;
        gUnknown_03003930[oamIdx].unk5 |= 2;
        gUnknown_03003930[oamIdx].unk7 = 0;
    }
    else
    {
        scriptCtx->scriptPtr++;
        scriptCtx->scriptPtr++;
    }
    return 0;
}

bool32 Command3C(struct ScriptContext * scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = sub_8007554(*scriptCtx->scriptPtr >> 8);
    if(oamIdx != 0xFF)
    {
        gUnknown_03003930[oamIdx].unk1 = *scriptCtx->scriptPtr;
        if(!(*scriptCtx->scriptPtr & 1))
        {
            gOamObjects[oamIdx+0x39].attr1 = gUnknown_03003930[oamIdx].attr1;
        }
    }
    gUnknown_03003930[oamIdx].unk2 = 0;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command3D(struct ScriptContext * scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = sub_8007554(*scriptCtx->scriptPtr >> 8);
    if(oamIdx != 0xFF)
    {
        if(gUnknown_03003930[oamIdx].unk5 & 2)
        {
            scriptCtx->scriptPtr--;
            return 1;
        }
    }
    scriptCtx->scriptPtr++;
    return 0; 
}

bool32 Command3E(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    DmaCopy16(3, gUnknown_08190AC0, VRAM + 0x11F80, 0x80);
    DmaCopy16(3, gUnknown_081942C0, PALETTE + 0x300, 0x20);
    gUnknown_03003A50.unk0 = 0xF0;
    gUnknown_03003A50.unk2 = 0x30;
    gUnknown_03003A50.unk17 = 0;
    gUnknown_03003A50.unk16 = 8;
    gUnknown_03003A50.unk8 = 0xF;
    gUnknown_03003A50.unk9 = *scriptCtx->scriptPtr;
    scriptCtx->unk0 |= 0x280;
    scriptCtx->scriptPtr++;
    return 0; 
}