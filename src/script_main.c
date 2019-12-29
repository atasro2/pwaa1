#include "global.h"
#include "sound_control.h"
void sub_80054BC(struct Struct3003A70 *scriptCtx);
void sub_80055B0(struct Struct3003A70 *scriptCtx);
extern void sub_8005890(struct Struct3003A70 *scriptCtx);
extern void sub_80056E0(u32, u32, u32);
extern bool32 (*gUnknown_0811DDA8[0x5F])(struct Struct3003A70 *);

void sub_8005408(void)
{
    u32 i;
    u32 *src;
    DmaCopy16(3, gTextPal, PALL + 0x200, sizeof(gTextPal));

    for (i = 0; i < ARRAY_COUNT(gUnknown_03003C00); i++)
    {
        gUnknown_03003C00[i][0] &= 0x7FFF;
    }
    src = gUnknown_08018740[gUnknown_03003730.unk8D];

    if (!(i < ARRAY_COUNT(gUnknown_03003C00))) // this is a fucking fakematch!
        LZ77UnCompWram(src, gScriptHeap);
}

void sub_8005470(void)
{
    if (gUnknown_03003730.unk14 && !gUnknown_03003730.unk76)
    {
        sub_80055B0(&gUnknown_03003A70);
    }
    sub_8005890(&gUnknown_03003A70);
}
// arg may be a u16
void sub_800549C(u32 arg0)
{
    gUnknown_03003A70.unk22 = gUnknown_03003A70.unk1E;
    gUnknown_03003A70.unk1E = arg0;
    sub_80054BC(&gUnknown_03003A70);
    gUnknown_03003A70.scriptPtr++;
}

#ifdef NONMATCHING // i think this is functionally equivalent
void sub_80054BC(struct Struct3003A70 *scriptCtx)
{
    u32 i;
    for (i = 0; i < ARRAY_COUNT(gUnknown_03003C00); i++)
    {
        gUnknown_03003C00[i][0] &= 0x7FFF;
    }
    scriptCtx->unkE = 0;
    scriptCtx->unkF = 0;
    if (gUnknown_03003730.unk4.field1 != 0x804)
        scriptCtx->unk13 = 0;
    scriptCtx->unk15 = 0;
    scriptCtx->unk14 = 8;
    scriptCtx->unk16 = 1;
    scriptCtx->unk17 = 0;
    scriptCtx->unk18 = 9;
    scriptCtx->unk1A = 0x74;
    scriptCtx->unk20 = scriptCtx->unk1E + 1;
    scriptCtx->unk2C = 0;
    scriptCtx->unk2E = 0;
    scriptCtx->unk34 = 0;
    scriptCtx->unk36 = 0;
    scriptCtx->unk37 = 0;
    scriptCtx->unk0 = 0;
    scriptCtx->unk2 = 0;
    scriptCtx->unk24 = 0;
    scriptCtx->unk25 = 3;
    scriptCtx->unk26 = 3;
    scriptCtx->unk27 = 0;
    scriptCtx->unk28 = 0x18;
    scriptCtx->unk2A = 0x56;
    {
        void *r1;
        void *r0;
        if (scriptCtx->unk1E > 0x7F)
        {
            r1 = gScriptHeap;
            r0 = &gUnknown_02011DC0[scriptCtx->unk1E];
        }
        else
        {
            r1 = gUnknown_08749428;
            r0 = &gUnknown_08749428[scriptCtx->unk1E];
        }
        scriptCtx->scriptPtr2 = scriptCtx->scriptPtr = (u16 *)(r1 + 1 [(u32 *)r0]);
        scriptCtx->unk1C = ((u16 *)r1)[0];
    }
    scriptCtx->unk3C = VRAM + 0x11800;
    for (i = 0; i < ARRAY_COUNT(gUnknown_03003930); i++)
    {
        gUnknown_03003930[i].unk0 |= 0xFF;
        gUnknown_03003930[i].unk1 = 0;
        gUnknown_03003930[i].unk5 = 0;
        gUnknown_03003930[i].unk8 = 0x200;
    }
}
#else
NAKED
void sub_80054BC(struct Struct3003A70 *scriptCtx)
{
    asm_unified("sub_80054BC: @ 0x080054BC\n\
	push {r4, r5, r6, lr}\n\
	adds r2, r0, #0\n\
	movs r3, #0\n\
	ldr r5, _0800554C\n\
	ldr r4, _08005550\n\
	ldr r1, _08005554\n\
_080054C8:\n\
	adds r0, r4, #0\n\
	ldrh r6, [r1]\n\
	ands r0, r6\n\
	strh r0, [r1]\n\
	adds r1, #0xc\n\
	adds r3, #1\n\
	cmp r3, #0x3e\n\
	bls _080054C8\n\
	movs r3, #0\n\
	strb r3, [r2, #0xe]\n\
	strb r3, [r2, #0xf]\n\
	ldr r0, _08005558\n\
	ldrh r5, [r5, #4]\n\
	cmp r5, r0\n\
	beq _080054E8\n\
	strb r3, [r2, #0x13]\n\
_080054E8:\n\
	strb r3, [r2, #0x15]\n\
	movs r0, #8\n\
	strb r0, [r2, #0x14]\n\
	movs r0, #1\n\
	strb r0, [r2, #0x16]\n\
	strb r3, [r2, #0x17]\n\
	movs r1, #0\n\
	movs r0, #9\n\
	strh r0, [r2, #0x18]\n\
	movs r0, #0x74\n\
	strh r0, [r2, #0x1a]\n\
	ldrh r0, [r2, #0x1e]\n\
	adds r0, #1\n\
	strh r0, [r2, #0x20]\n\
	strh r3, [r2, #0x2c]\n\
	adds r0, r2, #0\n\
	adds r0, #0x2e\n\
	strb r1, [r0]\n\
	adds r0, #6\n\
	strb r1, [r0]\n\
	adds r0, #2\n\
	strb r1, [r0]\n\
	adds r0, #1\n\
	strb r1, [r0]\n\
	strh r3, [r2]\n\
	strh r3, [r2, #2]\n\
	subs r0, #0x13\n\
	strb r1, [r0]\n\
	adds r3, r2, #0\n\
	adds r3, #0x25\n\
	movs r0, #3\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	strb r0, [r3]\n\
	adds r0, r2, #0\n\
	adds r0, #0x27\n\
	strb r1, [r0]\n\
	movs r0, #0x18\n\
	strh r0, [r2, #0x28]\n\
	movs r0, #0x56\n\
	strh r0, [r2, #0x2a]\n\
	ldrh r0, [r2, #0x1e]\n\
	cmp r0, #0x7f\n\
	bls _08005564\n\
	ldr r1, _0800555C\n\
	lsls r0, r0, #2\n\
	ldr r3, _08005560\n\
	adds r0, r0, r3\n\
	b _0800556C\n\
	.align 2, 0\n\
_0800554C: .4byte gUnknown_03003730\n\
_08005550: .4byte 0x00007FFF\n\
_08005554: .4byte gUnknown_03003C00\n\
_08005558: .4byte 0x00000804\n\
_0800555C: .4byte gScriptHeap\n\
_08005560: .4byte gUnknown_02011DC0\n\
_08005564:\n\
	ldr r1, _080055A4\n\
	ldrh r6, [r2, #0x1e]\n\
	lsls r0, r6, #2\n\
	adds r0, r0, r1\n\
_0800556C:\n\
	ldr r0, [r0, #4]\n\
	adds r0, r0, r1\n\
	str r0, [r2, #4]\n\
	str r0, [r2, #8]\n\
	ldrh r0, [r1]\n\
	strh r0, [r2, #0x1c]\n\
	ldr r0, _080055A8\n\
	str r0, [r2, #0x3c]\n\
	movs r3, #0\n\
	movs r5, #0xff\n\
	movs r2, #0\n\
	movs r4, #0x80\n\
	lsls r4, r4, #2\n\
	ldr r1, _080055AC\n\
_08005588:\n\
	ldrb r0, [r1]\n\
	orrs r0, r5\n\
	strb r0, [r1]\n\
	strb r2, [r1, #1]\n\
	strb r2, [r1, #5]\n\
	strh r4, [r1, #8]\n\
	adds r1, #0x14\n\
	adds r3, #1\n\
	cmp r3, #7\n\
	bls _08005588\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080055A4: .4byte gUnknown_08749428\n\
_080055A8: .4byte 0x06011800\n\
_080055AC: .4byte gUnknown_03003930\n");
}
#endif

void sub_80055B0(struct Struct3003A70 * scriptCxt)
{
    if(scriptCxt->unk13 && (gUnknown_03003720.unk2 & 1 || gUnknown_03003720.unk0 & 2))
        scriptCxt->unk13 = 2;
    loop:
    scriptCxt->unkC = *scriptCxt->scriptPtr;
    if(scriptCxt->unkC < 0x80)
    {
        if(gUnknown_0811DDA8[scriptCxt->unkC](scriptCxt))
            return;
        else
            goto loop;
    }
    if(scriptCxt->unk13 > 1)
    {
        scriptCxt->unk25 = 0;
    }
    scriptCxt->unk27++;
    if(scriptCxt->unk27 >= scriptCxt->unk25)
    {
        scriptCxt->unk27 = 0;
        scriptCxt->unkC -= 0x80;
        if (scriptCxt->unk0 & 4)
        {
            sub_80056E0(scriptCxt->unkC, scriptCxt->unk11, scriptCxt->unk10);
            scriptCxt->unk10++;
            scriptCxt->unk12++;
        }
        else
        {
            sub_80056E0(scriptCxt->unkC, scriptCxt->unkF, scriptCxt->unkE);
            scriptCxt->unkE++;
        }

        scriptCxt->scriptPtr++;
        
        if ((scriptCxt->unk1E != 0x80 || gUnknown_03003730.unk8D) && scriptCxt->unkC != 0xFF)
        {
                if ( scriptCxt->unk25 )
                {
                    if ( !scriptCxt->unk16 || scriptCxt->unk25 > 4 )
                    {
                        if ( scriptCxt->unk17 != 2 )
                            scriptCxt->unk16 = 1;

                        if (!(gUnknown_03003730.unk198 & 0x4))
                        {
                            if ( scriptCxt->unk17 == 2 )
                            {
                                sub_800F3E0(68);
                            }
                            else if ( scriptCxt->unk17 == 1 )
                            {
                                sub_800F3E0(46);
                            }
                            else
                            {
                                sub_800F3E0(45);
                            }
                        }
                    }
                    else
                    {
                        scriptCxt->unk16--;
                    }
                }
            
        }
        if(scriptCxt->unk25 == 0)
        {
            goto loop;
        }
        else
        {
            return;
        }
    }
}