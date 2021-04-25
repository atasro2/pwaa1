#include "global.h"
#include "background.h"
#include "ewram.h"
#include "sound.h"
#include "agb_sram.h"
#include "save.h"
#include "graphics.h"
#include "constants/script.h"

void sub_8008DF4(struct Main * main)
{
    main->advanceScriptContext = FALSE;
    main->showTextboxCharacters = FALSE;
    StartHardwareBlend(2, 0, 1, 0x1F);
    main->process[GAME_SUBPROCESS]++;
}

void sub_8008E18(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;

    LZ77UnCompWram(gUnknown_081946C0, eBGDecompBuffer);
    DmaCopy16(3, eBGDecompBuffer, OBJ_VRAM0+0x3400, 0x2800);
    DmaCopy16(3, gUnknown_081FD92C, OBJ_PLTT+0x120, 0x40);
    DmaCopy16(3, gUnknown_08186540, VRAM, 0x1000);
    sub_8001830(0x43);
    sub_8001A9C(0x43);
    gMain.unk1F &= ~3;
    oam = gOamObjects;
    for(i = 0; i < ARRAY_COUNT(gOamObjects); i++)
        oam++->attr0 = SPRITE_ATTR0_CLEAR;
    gIORegisters.lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG1_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON; 
    main->tilemapUpdateBits = 0xA;
    sub_8002244(2);
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        for(j = 0; j < 2; j++)
        {
            oam->attr0 = SPRITE_ATTR0(i*32, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, 1);
            if((main->unk8E >> i) & 1)
                oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 9) + j*0x20 + i*0x40; // increases tileNum outside macro ajfjshdfjshdf
            else
                oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 9) + j*0x20; 
            oam++;
        }
    }
    main->unk86 = 0;
    PlaySE(0x31);
    StartHardwareBlend(1, 0, 1, 0x1F);
    main->process[GAME_SUBPROCESS]++;
}

void sub_8008F68(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;
    
    main->unk86 += 6;
    main->unk86 &= 0x1FF;
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        for(j = 0; j < 2; j++)
        {
            u16 x;
            x = main->unk86 + 0x170;
            x &= 0x1FF;
            oam->attr1 = SPRITE_ATTR1_AFFINE(x, 0, 3) + j * 0x40;
            oam++;
        }
    }
    if(main->unk86 > 0x97)
    {
        oam = &gOamObjects[38];
        oam->attr1 = SPRITE_ATTR1_AFFINE(8, 0, 3);
        oam++;
        oam->attr1 = SPRITE_ATTR1_AFFINE(72, 0, 3);
        main->process[GAME_SUBPROCESS]++;
    }
}

void sub_8008FE8(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;
    
    main->unk86 += 6;
    main->unk86 &= 0x1FF;
    oam = &gOamObjects[40];
    for(i = 1; i < 4; i++)
    {
        for(j = 0; j < 2; j++)
        {
            u16 x;
            x = main->unk86 + 0x170;
            x &= 0x1FF;
            oam->attr1 = SPRITE_ATTR1_AFFINE(x, 0, 3) + j * 0x40;
            oam++;
        }
    }
    if(main->unk86 > 0xB7)
    {
        oam = &gOamObjects[40];
        oam->attr1 = SPRITE_ATTR1_AFFINE(40, 0, 3);
        oam++;
        oam->attr1 = SPRITE_ATTR1_AFFINE(104, 0, 3);
        main->process[GAME_SUBPROCESS]++;
    }
}

void sub_8009068(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;
    
    main->unk86 += 6;
    main->unk86 &= 0x1FF;
    oam = &gOamObjects[42];
    for(i = 2; i < 4; i++)
    {
        for(j = 0; j < 2; j++)
        {
            u16 x;
            x = main->unk86 + 0x170;
            x &= 0x1FF;
            oam->attr1 = SPRITE_ATTR1_AFFINE(x, 0, 3) + j * 0x40;
            oam++;
        }
    }
    if(main->unk86 > 0xD7)
    {
        oam = &gOamObjects[42];
        oam->attr1 = SPRITE_ATTR1_AFFINE(72, 0, 3);
        oam++;
        oam->attr1 = SPRITE_ATTR1_AFFINE(136, 0, 3);
        main->process[GAME_SUBPROCESS]++;
    }
}

#ifdef NONMATCHING
void EpisodeClearedProcess(struct Main * main) // should work the same way
{
    struct OamAttrs * oam;
    u32 i, j;
    switch(main->process[GAME_SUBPROCESS])
    {
        case 0:
            sub_8008DF4(main);
            break;
        case 1:
            if(main->blendMode != 0)
                break;
            sub_8008E18(main);
            if(gMain.unk17 & 0xF0)
            {
                ReadSram(SRAM_START, (void*)&gSaveDataBuffer, sizeof(gSaveDataBuffer));
                gSaveDataBuffer.main.unk8E |= 1 << main->process[GAME_PROCESSUNK3];
                SaveGameData();
            }
            else
            {
                DmaCopy16(3, gSaveVersion, gSaveDataBuffer.saveDataVer, sizeof(gSaveVersion));
                gSaveDataBuffer.magic = 0;
                gSaveDataBuffer.main.unk8E |= 1 << main->process[GAME_PROCESSUNK3];
                WriteSramEx((void*)&gSaveDataBuffer, SRAM_START, sizeof(gSaveDataBuffer));
            }
            break;
        case 2:
            sub_8008F68(main);
            break;
        case 3:
            sub_8008FE8(main);
            break;
        case 4:
            sub_8009068(main);
            break;
        case 5:
            main->unk86 += 6;
            main->unk86 &= 0x1FF;
            oam = &gOamObjects[44];
            for(i = 3; i < 4; i++)
            {
                for(j = 0; j < 2; j++)
                {
                    u16 x;
                    x = main->unk86 + 0x170;
                    x &= 0x1FF;
                    oam->attr1 = SPRITE_ATTR1_AFFINE(x, 0, 3) + j * 0x40;
                    oam++;
                }
            }
            if(main->unk86 > 0xF7)
            {
                oam = &gOamObjects[44];
                oam->attr1 = SPRITE_ATTR1_AFFINE(104, 0, 3);
                oam++;
                oam->attr1 = SPRITE_ATTR1_AFFINE(168, 0, 3);
                main->unk8E |= 1 << main->process[GAME_PROCESSUNK3];
                main->unk84 = 0x100;
                main->process[GAME_SUBPROCESS]++;
            }
            break;
        case 6:
            main->unk84 -= 0x10;
            oam = &gOamObjects[38];
            oam += main->process[GAME_PROCESSUNK3]*2;
            if(main->unk84 != 0)
            {
                gOamObjects[0].attr3 = fix_mul(_Cos(0), fix_inverse(0x100));
                gOamObjects[1].attr3 = fix_mul(_Sin(0), fix_inverse(0x100));
                gOamObjects[2].attr3 = fix_mul(-_Sin(0), fix_inverse(main->unk84));
                gOamObjects[3].attr3 = fix_mul(_Cos(0), fix_inverse(main->unk84));
                for(i = 3; i < 4; i++) // copy paste intensifies
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 = SPRITE_ATTR0(main->process[GAME_PROCESSUNK3]*32, ST_OAM_AFFINE_NORMAL, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, 1);
                        oam++;
                    }
                }
                break;
            }
            for(i = 3; i < 4; i++) // copy paste intensifies
            {
                for(j = 0; j < 2; j++)
                {
                    oam->attr0 = SPRITE_ATTR0(main->process[GAME_PROCESSUNK3]*32, ST_OAM_AFFINE_NORMAL, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, 1);
                    oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 9) + j * 0x20;
                    oam++;
                }
            }
            main->process[GAME_SUBPROCESS]++;
            break;
        case 7:
            oam = &gOamObjects[38];
            oam += main->process[GAME_PROCESSUNK3]*2;
            main->unk84 += 0x10;
            if(main->unk84 > 0xFF)
            {
                main->advanceScriptContext = TRUE;
                main->showTextboxCharacters = TRUE;
                gScriptContext.currentSection = 0xFFFF;
                ChangeScriptSection(5);
                for(j = 0; j < 2; j++)
                {
                    oam->attr0 = SPRITE_ATTR0(main->process[GAME_PROCESSUNK3]*32, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, 1);
                    oam++;
                }
                main->process[GAME_SUBPROCESS]++;
            }
            else
            {
                gOamObjects[0].attr3 = fix_mul(_Cos(0), fix_inverse(0x100));
                gOamObjects[1].attr3 = fix_mul(_Sin(0), fix_inverse(0x100));
                gOamObjects[2].attr3 = fix_mul(-_Sin(0), fix_inverse(main->unk84));
                gOamObjects[3].attr3 = fix_mul(_Cos(0), fix_inverse(main->unk84));
                for(j = 0; j < 2; j++)
                {
                    oam->attr0 = SPRITE_ATTR0(main->process[GAME_PROCESSUNK3]*32, ST_OAM_AFFINE_NORMAL, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, 1);
                    if((main->unk8E >> main->process[GAME_PROCESSUNK3]) & 1)
                        oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 9) + j*0x20 + main->process[GAME_PROCESSUNK3]*0x40; // increases tileNum outside macro ajfjshdfjshdf
                    else
                        oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 9) + j*0x20;
                    oam++;
                }
            }
            break;
        case 8:
            if(gScriptContext.flags & 8)
            {
                if(gJoypad.pressedKeys & (A_BUTTON|B_BUTTON|SELECT_BUTTON|START_BUTTON))
                {
                    PauseBGM();
                    PlaySE(0x2B);
                    gSaveDataBuffer.main.scenarioIdx = main->scenarioIdx;
                    gSaveDataBuffer.main.unk8E = main->unk8E;
                    SET_PROCESS_PTR(10, 0, 0, 1, main);
                }
            }
            break;
        default:
            break;
    }
}
#else
NAKED void EpisodeClearedProcess(struct Main * main) 
{
    asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	adds r7, r0, #0\n\
	ldrb r0, [r7, #5]\n\
	cmp r0, #8\n\
	bls _080090FC\n\
	b _080094C6\n\
_080090FC:\n\
	lsls r0, r0, #2\n\
	ldr r1, _08009108\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	mov pc, r0\n\
	.align 2, 0\n\
_08009108: .4byte _0800910C\n\
_0800910C: @ jump table\n\
	.4byte _08009130 @ case 0\n\
	.4byte _08009138 @ case 1\n\
	.4byte _080091C8 @ case 2\n\
	.4byte _080091D0 @ case 3\n\
	.4byte _080091D8 @ case 4\n\
	.4byte _080091E0 @ case 5\n\
	.4byte _08009260 @ case 6\n\
	.4byte _0800935C @ case 7\n\
	.4byte _08009488 @ case 8\n\
_08009130:\n\
	adds r0, r7, #0\n\
	bl sub_8008DF4\n\
	b _080094C6\n\
_08009138:\n\
	adds r0, r7, #0\n\
	adds r0, #0x76\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	beq _08009144\n\
	b _080094C6\n\
_08009144:\n\
	adds r0, r7, #0\n\
	bl sub_8008E18\n\
	ldr r0, _08009178\n\
	movs r3, #0xf0\n\
	ldrb r0, [r0, #0x17]\n\
	ands r3, r0\n\
	cmp r3, #0\n\
	beq _08009184\n\
	movs r0, #0xe0\n\
	lsls r0, r0, #0x14\n\
	ldr r4, _0800917C\n\
	ldr r2, _08009180\n\
	adds r1, r4, #0\n\
	bl ReadSram\n\
	adds r4, #0xc2\n\
	movs r0, #1\n\
	ldrb r7, [r7, #7]\n\
	lsls r0, r7\n\
	ldrb r1, [r4]\n\
	orrs r0, r1\n\
	strb r0, [r4]\n\
	bl SaveGameData\n\
	b _080094C6\n\
	.align 2, 0\n\
_08009178: .4byte gMain\n\
_0800917C: .4byte gSaveDataBuffer\n\
_08009180: .4byte 0x000029D0\n\
_08009184:\n\
	ldr r2, _080091B4\n\
	ldr r0, _080091B8\n\
	str r0, [r2]\n\
	ldr r0, _080091BC\n\
	str r0, [r2, #4]\n\
	ldr r1, _080091C0\n\
	str r1, [r2, #8]\n\
	ldr r1, [r2, #8]\n\
	str r3, [r0, #0x30]\n\
	adds r2, r0, #0\n\
	adds r2, #0xc2\n\
	movs r1, #1\n\
	ldrb r7, [r7, #7]\n\
	lsls r1, r7\n\
	ldrb r3, [r2]\n\
	orrs r1, r3\n\
	strb r1, [r2]\n\
	movs r1, #0xe0\n\
	lsls r1, r1, #0x14\n\
	ldr r2, _080091C4\n\
	bl WriteSramEx\n\
	b _080094C6\n\
	.align 2, 0\n\
_080091B4: .4byte 0x040000D4\n\
_080091B8: .4byte gSaveVersion\n\
_080091BC: .4byte gSaveDataBuffer\n\
_080091C0: .4byte 0x80000018\n\
_080091C4: .4byte 0x000029D0\n\
_080091C8:\n\
	adds r0, r7, #0\n\
	bl sub_8008F68\n\
	b _080094C6\n\
_080091D0:\n\
	adds r0, r7, #0\n\
	bl sub_8008FE8\n\
	b _080094C6\n\
_080091D8:\n\
	adds r0, r7, #0\n\
	bl sub_8009068\n\
	b _080094C6\n\
_080091E0:\n\
	adds r0, r7, #0\n\
	adds r0, #0x86\n\
	ldrh r1, [r0]\n\
	adds r1, #6\n\
	ldr r2, _08009254\n\
	ands r1, r2\n\
	strh r1, [r0]\n\
	ldr r6, _08009258\n\
	movs r1, #3\n\
	mov sl, r0\n\
	mov r8, sl\n\
	movs r0, #0xb8\n\
	lsls r0, r0, #1\n\
	mov sb, r0\n\
	movs r3, #0xc0\n\
	lsls r3, r3, #8\n\
	mov ip, r3\n\
_08009202:\n\
	movs r4, #0\n\
	adds r5, r1, #1\n\
	mov r3, ip\n\
_08009208:\n\
	mov r0, r8\n\
	ldrh r1, [r0]\n\
	add r1, sb\n\
	ands r1, r2\n\
	adds r0, r1, r3\n\
	strh r0, [r6, #2]\n\
	adds r6, #8\n\
	adds r3, #0x40\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _08009208\n\
	adds r1, r5, #0\n\
	cmp r1, #3\n\
	bls _08009202\n\
	mov r1, sl\n\
	ldrh r1, [r1]\n\
	cmp r1, #0xf7\n\
	bhi _0800922E\n\
	b _080094C6\n\
_0800922E:\n\
	ldr r6, _08009258\n\
	ldr r0, _0800925C\n\
	strh r0, [r6, #2]\n\
	adds r0, #0x40\n\
	strh r0, [r6, #0xa]\n\
	adds r1, r7, #0\n\
	adds r1, #0x8e\n\
	movs r0, #1\n\
	ldrb r2, [r7, #7]\n\
	lsls r0, r2\n\
	ldrb r3, [r1]\n\
	orrs r0, r3\n\
	strb r0, [r1]\n\
	subs r1, #0xa\n\
	movs r0, #0x80\n\
	lsls r0, r0, #1\n\
	strh r0, [r1]\n\
	b _080093A2\n\
	.align 2, 0\n\
_08009254: .4byte 0x000001FF\n\
_08009258: .4byte gOamObjects+0x160\n\
_0800925C: .4byte 0x0000C068\n\
_08009260:\n\
	movs r0, #0x84\n\
	adds r0, r0, r7\n\
	mov sl, r0\n\
	ldrh r1, [r0]\n\
	subs r1, #0x10\n\
	strh r1, [r0]\n\
	ldr r6, _0800931C\n\
	ldrb r2, [r7, #7]\n\
	lsls r0, r2, #4\n\
	adds r6, r0, r6\n\
	lsls r1, r1, #0x10\n\
	cmp r1, #0\n\
	beq _08009328\n\
	ldr r5, _08009320\n\
	adds r0, r5, #0\n\
	adds r0, #0x80\n\
	movs r1, #0\n\
	ldrsh r3, [r0, r1]\n\
	mov sb, r3\n\
	movs r2, #0x80\n\
	lsls r2, r2, #1\n\
	mov r8, r2\n\
	mov r0, r8\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	mov r0, sb\n\
	bl fix_mul\n\
	ldr r3, _08009324\n\
	strh r0, [r3, #6]\n\
	movs r0, #0\n\
	ldrsh r4, [r5, r0]\n\
	mov r0, r8\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r4, #0\n\
	bl fix_mul\n\
	ldr r1, _08009324\n\
	strh r0, [r1, #0xe]\n\
	ldrh r5, [r5]\n\
	rsbs r4, r5, #0\n\
	lsls r4, r4, #0x10\n\
	asrs r4, r4, #0x10\n\
	mov r2, sl\n\
	movs r3, #0\n\
	ldrsh r0, [r2, r3]\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r4, #0\n\
	bl fix_mul\n\
	ldr r1, _08009324\n\
	strh r0, [r1, #0x16]\n\
	mov r2, sl\n\
	movs r3, #0\n\
	ldrsh r0, [r2, r3]\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	mov r0, sb\n\
	bl fix_mul\n\
	ldr r1, _08009324\n\
	strh r0, [r1, #0x1e]\n\
	movs r1, #3\n\
	movs r3, #0x82\n\
	lsls r3, r3, #7\n\
	adds r2, r3, #0\n\
_08009300:\n\
	movs r4, #0\n\
	adds r5, r1, #1\n\
_08009304:\n\
	ldrb r1, [r7, #7]\n\
	lsls r0, r1, #5\n\
	adds r0, r0, r2\n\
	strh r0, [r6]\n\
	adds r6, #8\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _08009304\n\
	adds r1, r5, #0\n\
	cmp r1, #3\n\
	bls _08009300\n\
	b _080094C6\n\
	.align 2, 0\n\
_0800931C: .4byte gOamObjects+0x130\n\
_08009320: .4byte gSineTable\n\
_08009324: .4byte gOamObjects\n\
_08009328:\n\
	movs r1, #3\n\
	movs r3, #0x82\n\
	lsls r3, r3, #7\n\
	adds r2, r3, #0\n\
	ldr r0, _08009358\n\
	mov r8, r0\n\
_08009334:\n\
	movs r4, #0\n\
	adds r5, r1, #1\n\
	mov r1, r8\n\
_0800933A:\n\
	ldrb r3, [r7, #7]\n\
	lsls r0, r3, #5\n\
	adds r0, r0, r2\n\
	strh r0, [r6]\n\
	strh r1, [r6, #4]\n\
	adds r6, #8\n\
	adds r1, #0x20\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800933A\n\
	adds r1, r5, #0\n\
	cmp r1, #3\n\
	bls _08009334\n\
	b _080093A2\n\
	.align 2, 0\n\
_08009358: .4byte 0x000091A0\n\
_0800935C:\n\
	ldr r6, _080093AC\n\
	ldrb r1, [r7, #7]\n\
	lsls r0, r1, #4\n\
	adds r6, r0, r6\n\
	movs r2, #0x84\n\
	adds r2, r2, r7\n\
	mov sl, r2\n\
	ldrh r0, [r2]\n\
	adds r0, #0x10\n\
	strh r0, [r2]\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x10\n\
	cmp r0, #0xff\n\
	ble _080093B8\n\
	movs r0, #1\n\
	strb r0, [r7, #0x14]\n\
	strb r0, [r7, #0x15]\n\
	ldr r1, _080093B0\n\
	ldr r0, _080093B4\n\
	strh r0, [r1, #0x1e]\n\
	movs r0, #5\n\
	bl ChangeScriptSection\n\
	movs r4, #0\n\
	movs r3, #0x80\n\
	lsls r3, r3, #7\n\
	adds r1, r3, #0\n\
_08009392:\n\
	ldrb r2, [r7, #7]\n\
	lsls r0, r2, #5\n\
	adds r0, r0, r1\n\
	strh r0, [r6]\n\
	adds r6, #8\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _08009392\n\
_080093A2:\n\
	ldrb r0, [r7, #5]\n\
	adds r0, #1\n\
	strb r0, [r7, #5]\n\
	b _080094C6\n\
	.align 2, 0\n\
_080093AC: .4byte gOamObjects+0x130\n\
_080093B0: .4byte gScriptContext\n\
_080093B4: .4byte 0x0000FFFF\n\
_080093B8:\n\
	ldr r5, _08009464\n\
	adds r0, r5, #0\n\
	adds r0, #0x80\n\
	movs r1, #0\n\
	ldrsh r3, [r0, r1]\n\
	mov sb, r3\n\
	movs r2, #0x80\n\
	lsls r2, r2, #1\n\
	mov r8, r2\n\
	mov r0, r8\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	mov r0, sb\n\
	bl fix_mul\n\
	ldr r3, _08009468\n\
	strh r0, [r3, #6]\n\
	movs r0, #0\n\
	ldrsh r4, [r5, r0]\n\
	mov r0, r8\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r4, #0\n\
	bl fix_mul\n\
	ldr r1, _08009468\n\
	strh r0, [r1, #0xe]\n\
	ldrh r5, [r5]\n\
	rsbs r4, r5, #0\n\
	lsls r4, r4, #0x10\n\
	asrs r4, r4, #0x10\n\
	mov r2, sl\n\
	movs r3, #0\n\
	ldrsh r0, [r2, r3]\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r4, #0\n\
	bl fix_mul\n\
	ldr r1, _08009468\n\
	strh r0, [r1, #0x16]\n\
	mov r2, sl\n\
	movs r3, #0\n\
	ldrsh r0, [r2, r3]\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	mov r0, sb\n\
	bl fix_mul\n\
	ldr r1, _08009468\n\
	strh r0, [r1, #0x1e]\n\
	movs r4, #0\n\
	adds r5, r7, #0\n\
	adds r5, #0x8e\n\
	movs r3, #0\n\
_0800943E:\n\
	ldrb r2, [r7, #7]\n\
	lsls r0, r2, #5\n\
	movs r1, #0x82\n\
	lsls r1, r1, #7\n\
	adds r0, r0, r1\n\
	strh r0, [r6]\n\
	ldrb r2, [r7, #7]\n\
	ldrb r1, [r5]\n\
	asrs r1, r2\n\
	movs r0, #1\n\
	ands r1, r0\n\
	cmp r1, #0\n\
	beq _08009470\n\
	lsls r0, r2, #6\n\
	ldr r2, _0800946C\n\
	adds r0, r0, r2\n\
	adds r0, r3, r0\n\
	b _08009474\n\
	.align 2, 0\n\
_08009464: .4byte gSineTable\n\
_08009468: .4byte gOamObjects\n\
_0800946C: .4byte 0x000091E0\n\
_08009470:\n\
	ldr r1, _08009484\n\
	adds r0, r3, r1\n\
_08009474:\n\
	strh r0, [r6, #4]\n\
	adds r6, #8\n\
	adds r3, #0x20\n\
	adds r4, #1\n\
	cmp r4, #1\n\
	bls _0800943E\n\
	b _080094C6\n\
	.align 2, 0\n\
_08009484: .4byte 0x000091A0\n\
_08009488:\n\
	ldr r1, _080094D4\n\
	movs r0, #8\n\
	ldrh r1, [r1]\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _080094C6\n\
	ldr r1, _080094D8\n\
	movs r0, #0xf\n\
	ldrh r1, [r1, #2]\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _080094C6\n\
	bl PauseBGM\n\
	movs r0, #0x2b\n\
	bl PlaySE\n\
	ldr r0, _080094DC\n\
	adds r1, r7, #0\n\
	adds r1, #0x8d\n\
	ldrb r1, [r1]\n\
	adds r2, r0, #0\n\
	adds r2, #0xc1\n\
	strb r1, [r2]\n\
	adds r1, r7, #0\n\
	adds r1, #0x8e\n\
	ldrb r1, [r1]\n\
	adds r0, #0xc2\n\
	strb r1, [r0]\n\
	ldr r0, _080094E0\n\
	str r0, [r7, #4]\n\
_080094C6:\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080094D4: .4byte gScriptContext\n\
_080094D8: .4byte gJoypad\n\
_080094DC: .4byte gSaveDataBuffer\n\
_080094E0: .4byte 0x0100000A\n");
}
#endif

void SelectEpisodeProcess(struct Main * main)
{
    struct OamAttrs * oam;
    u32 i, j;
    u32 temp;
    bool32 buttonEnabled;
    switch(main->process[GAME_SUBPROCESS])
    {
        case 0: // _0800953C
            sub_8008DF4(main);
            break;
        case 1: // _08009544
            if(main->blendMode)
                return;
            sub_8008E18(main);
            if(main->unk17 & 0xF0)
                main->unk8E = gSaveDataBuffer.main.unk8E;
            main->selectedButton = main->process[GAME_PROCESSUNK3];
            oam = &gOamObjects[38];
            for(i = 0; i < 4; i++)
            {
                buttonEnabled = main->unk8E >> i;
                for(j = 0; j < 2; j++)
                {
                    if(main->selectedButton == i)
                        oam->attr2 = 0x91E0 + j * 0x20 + i * 0x40;
                    else if(buttonEnabled & 1)
                        oam->attr2 = 0xA1E0 + j * 0x20 + i * 0x40;
                    else
                        oam->attr2 = 0xA1A0 + j * 0x20; 
                    oam++;
                }
            }
            break;
        case 2: // _080095E4
            sub_8008F68(main);
            break;
        case 3: // _080095EC
            sub_8008FE8(main);
            break;
        case 4: // _080095F4
            sub_8009068(main);
            break;
        case 5: // _080095FC
            main->unk86 += 6;
            main->unk86 &= 0x1FF;
            oam = &gOamObjects[44];
            for(i = 3; i < 4; i++)
            {
                for(j = 0; j < 2; j++)
                {
                    u32 attr1 = 0xC000 + j * 64;
                    temp = main->unk86 + 0x170;
                    temp &= 0x1FF;
                    oam->attr1 = temp + attr1;
                    oam++;
                }
            }
            if(main->unk86 >= 0xF8)
            {
                oam = &gOamObjects[44];
                oam->attr1 = 0xC068;
                oam++;
                oam->attr1 = 0xC0A8;
                main->advanceScriptContext = TRUE;
                main->showTextboxCharacters = TRUE;
                gScriptContext.currentSection = 0xFFFF;
                ChangeScriptSection(2);
                SetTimedKeysAndDelay(DPAD_UP | DPAD_DOWN, 20);
                main->process[GAME_SUBPROCESS]++;
            }
            break;
        case 6: // _08009688
            if(gScriptContext.flags & SCRIPT_LOOP)
            {
                if(gJoypad.activeTimedKeys & DPAD_UP)
                {
                    j = main->selectedButton;
                    for(i = 0; i < 4; i++)
                    {
                        main->selectedButton--;
                        main->selectedButton &= 3;
                        temp = main->unk8E >> main->selectedButton;
                        if(temp & 1)
                        {
                            if(!(j == main->selectedButton))
                            {
                                PlaySE(0x2A);
                                break;
                            }
                        }
                    }
                }
                else if(gJoypad.activeTimedKeys & DPAD_DOWN)
                {
                    j = main->selectedButton;
                    for(i = 0; i < 4; i++)
                    {
                        main->selectedButton++;
                        main->selectedButton &= 3;
                        temp = main->unk8E >> main->selectedButton;
                        if(temp & 1)
                        {
                            if(!(j == main->selectedButton))
                            {
                                PlaySE(0x2A);
                                break;
                            }
                        }
                    }
                }
                else if(gJoypad.pressedKeys & A_BUTTON)
                {
                    PlaySE(0x2B);
                    main->unk86 = 0;
                    main->advanceScriptContext = FALSE;
                    main->showTextboxCharacters = FALSE;
                    gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
                    main->tilemapUpdateBits &= ~2;
                    main->process[GAME_SUBPROCESS]++;
                    main->process[GAME_PROCESSUNK3] = 0;
                    main->process[GAME_PROCESSUNK2] = 0;
                }
                else if(gJoypad.pressedKeys & B_BUTTON)
                {
                    PlaySE(0x2C);
                    StartHardwareBlend(2, 0, 1, 0x1F);
                    main->process[GAME_SUBPROCESS] = 12;
                }
            }
            oam = &gOamObjects[38];
            for(i = 0; i < 4; i++)
            {
                if(i == main->selectedButton)
                {
                    for(j = 0; j < 2; j++)
                    {
                        temp = main->unk8E >> i; 
                        if(temp & 1)
                            oam->attr2 = j * 0x20 + 0x91E0 + i * 0x40;
                        else
                            oam->attr2 = j * 0x20 + 0x91A0;
                        oam++;
                    }
                }
                else
                {
                    for(j = 0; j < 2; j++)
                    {
                        temp = main->unk8E >> i; 
                        if(temp & 1)
                            oam->attr2 = j * 0x20 + 0xA1E0 + i * 0x40;
                        else
                            oam->attr2 = j * 0x20 + 0xA1A0;
                        oam++;
                    }
                }
            }
            break;
        case 7: // _0800981E
            main->process[GAME_PROCESSUNK2]++;
            if(main->process[GAME_PROCESSUNK2] > 0x28)
            {
                main->unk86 = 0;
                main->process[GAME_SUBPROCESS]++;
                main->process[GAME_PROCESSUNK3] = 0;   
                main->process[GAME_PROCESSUNK2] = 0;
            }
            oam = &gOamObjects[38];
            for(i = 0; i < 4; i++)
            {
                for(j = 0; j < 2; j++)
                {
                    if(i == main->selectedButton)
                    {
                        temp = oam->attr1 & 0x1FF;
                        oam->attr1 &= ~0x1FF;
                        if(j == 0)
                        {
                            if(temp < 56)
                                temp += 4;
                            if(temp > 56)
                                temp -= 4;

                        }
                        else
                        {
                            if(temp < 120)
                                temp += 4;
                            if(temp > 120)
                                temp -= 4;   
                        }
                        oam->attr1 += temp;
                    }
                    else
                    {
                        temp = oam->attr1 & 0x1FF;
                        oam->attr1 &= ~0x1FF;
                        temp += main->unk86;
                        temp &= 0x1FF;
                        if(temp > 0xF0)
                            oam->attr0 = SPRITE_ATTR0_CLEAR;
                        else
                            oam->attr1 += temp;
                    }
                    oam++;
                }
            }
            if(main->unk86 < 8)
                main->unk86++;
            break;
        case 8: // _080098D8
            oam = &gOamObjects[38];
            for(i = 0; i < 4; i++)
            {
                for(j = 0; j < 2; j++)
                {
                    if(i == main->selectedButton)
                    {
                        temp = oam->attr0 & 0xFF;
                        oam->attr0 &= ~0xFF;
                        if((temp < 56 && (temp += 4) >= 56) || (temp > 56 && (temp -= 4) <= 56))
                         {
                            main->process[GAME_SUBPROCESS] = 9;
                            main->process[GAME_PROCESSUNK3] = 0;
                            main->process[GAME_PROCESSUNK2] = 0;
                            temp = 56;
                        }
                        oam->attr0 += temp;
                    }
                    else
                        oam->attr0 = SPRITE_ATTR0_CLEAR;
                    oam++;
                }
            }
            if(main->unk86 < 8)
                main->unk86++;
            break;
        case 9: // _0800994C
            main->process[GAME_PROCESSUNK2]++;
            if(main->process[GAME_PROCESSUNK2] > 20)
            {
                main->process[GAME_SUBPROCESS] = 10;
                main->process[GAME_PROCESSUNK3] = 0;
                main->process[GAME_PROCESSUNK2] = 0;
            }
            break;
        case 10: // _08009966
            main->process[GAME_PROCESSUNK2]++;
            if(main->process[GAME_PROCESSUNK2] > 50)
            {
                StartHardwareBlend(2, 4, 1, 0x1F);
                main->process[GAME_SUBPROCESS]++;
                main->process[GAME_PROCESSUNK3] = 0;
            }
            else
            {
                if(main->process[GAME_PROCESSUNK3] > 5)
                    main->process[GAME_PROCESSUNK3] = 0;
                main->process[GAME_PROCESSUNK3]++;
            } 
            oam = &gOamObjects[38];
            for(i = 0; i < 4; i++)
            {
                u32 attr2_2 = 0xA1E0;
                u32 attr2 = 0x91E0;
                for(j = 0; j < 2; j++)
                {
                    if(i == main->selectedButton)
                    {
                        if(main->process[GAME_PROCESSUNK3] > 2)
                            oam->attr2 = i * 0x40 + attr2_2 + j * 0x20;
                        else
                            oam->attr2 = i * 0x40 + attr2 + j * 0x20;   
                    }
                    else
                        oam->attr0 = SPRITE_ATTR0_CLEAR;
                    oam++;
                }
            }
            break;
        case 11: // _080099EE
            if(main->blendMode) 
                return;
            switch(main->selectedButton)
            {
                case 0:
                    main->scenarioIdx = 0;
                    break;
                case 1:
                    main->scenarioIdx = 1;
                    break;
                case 2:
                    main->scenarioIdx = 5;
                    break;
                case 3:
                    main->scenarioIdx = 11;
                    break;
                default:
                    main->scenarioIdx = 0;
            }
            SET_PROCESS_PTR(gCaseStartProcess[main->scenarioIdx], 0, 0, 0, main);
            break;
        case 12: // _08009A44
            if(main->blendMode) 
                return;
            SET_PROCESS_PTR(1, 0, 0, 0, main);
            break;
    }
}