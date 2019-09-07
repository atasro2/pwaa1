#include "global.h"
#include "m4a.h"

static void sub_80002E4();

void CheckAButtonOnBoot() 
{
    u16 *input;
    u16 keys;
    if(!gUnknown_03003730.unk1.field0) 
    {
        input = (u16 *)REG_ADDR_KEYINPUT;
        keys = (0x3FF ^ *input);
        if (A_BUTTON & keys)
            gUnknown_03003730.unk1.field0 = 0xe;
    }
}

void AgbMain()
{
    u32 v0;
    DmaFill32(3, 0, IWRAM_START, 0x7E00); // clear IWRAM

    LOOP1:
    {
        sub_80003E0();
        CheckAButtonOnBoot();
        LOOP2:
        {   
            v0 = sub_8000744();
            if ( v0 != 0 )
                goto LOOP1;

            gUnknown_03003730.unkC=v0;

            LOOP3:
            {
                if ( gUnknown_03003730.unkC != gUnknown_03003730.unkD )
                {
                    goto LOOP3;
                }
            }

            if ( gUnknown_03003730.unk2C == 0 )
            {
            gUnknown_03003730.unk0++;
            sub_80013EC();
            sub_80029B0();
            sub_8010C4C(0);
            sub_8002A48();
            sub_8000624();
            }
            if ( gUnknown_03003730.unk2C > 10 )
            {
                gUnknown_03003730.unk2C = 0;
                sub_8001A9C(gUnknown_03003730.unk28);
            }
            if ( gUnknown_03003730.unk2C == 0 && (sub_8005470(), gUnknown_03003730.unk2C == 0 ) )
            {
                sub_800232C(gUnknown_03003730.unk2C);
                sub_800EEFC(&gUnknown_03003730);
                sub_80002E4();
                sub_8010E14(gUnknown_03003730.unk2A);
                sub_8000804();
            }
            else
            {
                sub_8001744(gUnknown_03003730.unk28);
            }
            sub_800F614();
            sub_8011F70();
            goto LOOP2;
        }
    }
}

void sub_80002E4()
{
    struct Struct3004000 * struct1 = &gUnknown_03004000;
    struct Struct3003730 * struct0 = &gUnknown_03003730;

    u8 mask;
    u8 var1;
    u32 var2 = struct0->unkB4 & 1;

    if((var2))
    {
        switch(struct0->unk12)
        {
            case 0:
                mask = 1;
                break;
            case 2:
                mask = 7;
                break;
            case 1:
            default:
                mask = 3;
                break;
        }

        var1 = (sub_8002B40() & 15);

        if(var1 > 7)
        {
            struct0->unkE = var1 & mask;
            struct0->unkE *= -1;
        }
        else
        {
            struct0->unkE = (var1 & mask);
        }

        var1 = sub_8002B40() & 15;
        
        if(var1 > 7)
        {
            struct0->unkF = var1 & mask;
            struct0->unkF *= -1;
        }
        else
        {
            struct0->unkF = var1 & mask;
        }
        
        gUnknown_030038D0.unk16 = struct0->unkF + 8;
        gUnknown_030038D0.unk14 = struct0->unkE + 8;
        gUnknown_030038D0.unkE = struct0->unkE;
        gUnknown_030038D0.unkC = struct0->unkF;
        
        if(struct0->unk10 != 0)
        {
            struct0->unk10--;
            if(struct0->unk10 == 0)
            {
                struct0->unkB4 &= ~1;
                gUnknown_030038D0.unk16 = 8;
                gUnknown_030038D0.unk14 = 8;
                gUnknown_030038D0.unkE = 0;
                gUnknown_030038D0.unkC = 0;
            }
        }
    }
    else
    {
        gUnknown_03003730.unkE = var2;
        gUnknown_03003730.unkF = var2;
    }
    
    gUnknown_0811DBB4[gUnknown_03003730.unk1.field0](&gUnknown_03003730);
    
    if(struct1->unk4)
    {
        sub_80007A0(struct1);
    }
}

void sub_80003E0()
{
    struct Struct3003730 * struct1 = &gUnknown_03003730;
    struct Struct30038D0 * struct0 = &gUnknown_030038D0;
    u32 temp = struct1->unk1.field0 ? TRUE : FALSE;

    RegisterRamReset(RESET_SIO_REGS | RESET_SOUND_REGS | RESET_REGS);
    DmaFill32(3, 0, IWRAM_START, 0x7E00); // Clear IWRAM
    DmaFill32(3, 0, EWRAM_START, 0x40000); // Clear EWRAM
    
    struct1->unk1.field1 = temp; // TODO: ! scrub c

    RegisterRamReset(RESET_OAM | RESET_VRAM | RESET_PALETTE);
    
    for (temp = 0; temp < ARRAY_COUNT(gUnknown_08013798); temp++)
    {
        gUnknown_03002800[temp] = gUnknown_08013798[temp];
    }
    
    m4aSoundInit();
    REG_WAITCNT = WAITCNT_SRAM_4 | WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1 | WAITCNT_WS1_N_4 | WAITCNT_WS1_S_4 | WAITCNT_WS2_N_4 | WAITCNT_WS2_S_8 | WAITCNT_PHI_OUT_NONE | WAITCNT_PREFETCH_ENABLE;
    struct0->unk50 = INTR_FLAG_VBLANK | INTR_FLAG_GAMEPAK;
    struct0->unk52 = DISPSTAT_VBLANK_INTR;
    struct0->unk48 = 0xDF;
    struct0->unk4E = 0x10;
    REG_IE = struct0->unk50; 
    REG_DISPSTAT = struct0->unk52;
    REG_IME = TRUE;
}

void sub_80004B0()
{
    struct Struct30038D0 * struct0 = &gUnknown_030038D0;
    struct Struct3003730 * struct1 = &gUnknown_03003730;
    DmaFill16(3, 0, VRAM, VRAM_SIZE);
    DmaFill16(3, 0, OAM, OAM_SIZE);
    DmaFill16(3, 0, PLTT, PLTT_SIZE);
    DmaFill16(3, 0, &gUnknown_03003730, sizeof(gUnknown_03003730));
    DmaFill16(3, 0, &gUnknown_03003A70, sizeof(gUnknown_03003A70));
    DmaFill16(3, 0, &gUnknown_03004000, sizeof(gUnknown_03004000));
    DmaFill16(3, 0, &gUnknown_03003AB0, sizeof(gUnknown_03003AB0));
    DmaFill16(3, 0, &gUnknown_03003A50, sizeof(gUnknown_03003A50));
    DmaFill16(3, 0, &gUnknown_03002840, sizeof(gUnknown_03002840));
    DmaFill16(3, 0, &gUnknown_02000000, 0x29D0); //TODO: the ewram stuff is a joke here, can't decide the true size of gUnknown_02000000 yet.
    struct1->unk24 = 0xD37;
    struct1->unk8D = 0;
    struct1->unk8E = 1;
    struct0->unk0 = 0x3C00;
    struct0->unk2 = 0x3D01;
    struct0->unk4 = 0x3E00;
    struct0->unk6 = 0x3FC7;
    struct0->unk48 = 0xDF;
    struct0->unk4E = 0x10;
    sub_800060C();
    sub_8000930();
    sub_800F804();
    sub_800F3C4();
    sub_8005408();
    sub_8000738(0x30, 0xf);
    m4aMPlayAllStop();
}


void sub_800060C()
{
    u32 i;
    for(i = 0; i < MAX_OAM_OBJ_COUNT; i++)
    {
        u32 temp = ST_OAM_AFFINE_ERASE << 8;
        *((u16*)&gOamObjects[i]) = temp;
    }
}

void sub_8000624() 
{
    struct Struct30038D0 * struct0 = &gUnknown_030038D0;

    REG_IE = struct0->unk50;
    REG_DISPSTAT = struct0->unk52;
    REG_DISPCNT = struct0->unk4A;
    // TODO: make these better
    (*(vu32 *)REG_ADDR_BG0CNT) = IO_REG_STRUCT_MEMBER(struct0, unk0);
    (*(vu32 *)REG_ADDR_BG0HOFS) = IO_REG_STRUCT_MEMBER(struct0, unk4);
    (*(vu32 *)REG_ADDR_BG1HOFS) = IO_REG_STRUCT_MEMBER(struct0, unk6);
    (*(vu32 *)REG_ADDR_BG2CNT) = IO_REG_STRUCT_MEMBER(struct0, unk2);
    (*(vu32 *)REG_ADDR_BG2HOFS) = IO_REG_STRUCT_MEMBER(struct0, unk8);
    (*(vu32 *)REG_ADDR_BG3HOFS) = IO_REG_STRUCT_MEMBER(struct0, unkA);
    (*(vu32 *)REG_ADDR_BG2PA) = IO_REG_STRUCT_MEMBER(struct0, unkC);
    (*(vu32 *)REG_ADDR_BG2PC) = IO_REG_STRUCT_MEMBER(struct0, unkE);
    REG_BG2X = IO_REG_STRUCT_MEMBER(struct0, unk10);
    REG_BG2Y = IO_REG_STRUCT_MEMBER(struct0, unk12);
    (*(vu32 *)REG_ADDR_BG3PA) = IO_REG_STRUCT_MEMBER(struct0, unk14);
    (*(vu32 *)REG_ADDR_BG3PC) = IO_REG_STRUCT_MEMBER(struct0, unk16);
    REG_BG3X = IO_REG_STRUCT_MEMBER(struct0, unk18);
    REG_BG3Y = IO_REG_STRUCT_MEMBER(struct0, unk1A);
    (*(vu32 *)REG_ADDR_WIN0H) = IO_REG_STRUCT_MEMBER(struct0, unk1C);
    (*(vu32 *)REG_ADDR_WIN0V) = IO_REG_STRUCT_MEMBER(struct0, unk1E);
    (*(vu32 *)REG_ADDR_WININ) = IO_REG_STRUCT_MEMBER(struct0, unk20);
    (*(vu32 *)REG_ADDR_MOSAIC) = IO_REG_STRUCT_MEMBER(struct0, unk22);
    REG_BLDCNT = struct0->unk48;
    REG_BLDALPHA = struct0->unk4C;
    REG_BLDY = struct0->unk4E;
}

#ifdef NONMATCHING // DECOMPILER: Pidgey
void sub_80006DC() // TODO: this function sucks
                   // TODO: Rename to ReadKeys ?
{
    struct Struct3003720 * struct0 = &gUnknown_03003720;
    u32 keyInput = *(u16 *)REG_ADDR_KEYINPUT ^ KEYS_MASK;
    u32 temp = keyInput;
    struct0->unk4 = struct0->unk0;
    struct0->unk6 = struct0->unk2;
    struct0->unk0 = temp;
    struct0->unk2 = temp & ~struct0->unk4;
    struct0->unk8 = 0;
    if(temp & struct0->unkA)
    {
        if(struct0->unkE >= struct0->unkC)
        {
            struct0->unkE = 0;
            struct0->unk8 = temp & struct0->unkA;
        }
        else
        {
            struct0->unkE = struct0->unkA + 1;
        }
    }
    else
    {
        struct0->unkE = struct0->unkC; 
    }
}
#else
NAKED
void sub_80006DC()
{
    asm_unified("    push {r4, lr}\n\
	ldr r2, _0800071C\n\
	ldr r1, _08000720\n\
	ldr r3, _08000724\n\
	adds r0, r3, #0\n\
	ldrh r1, [r1]\n\
	eors r0, r1\n\
	adds r3, r0, #0\n\
	ldrh r1, [r2]\n\
	movs r4, #0\n\
	strh r1, [r2, #4]\n\
	ldrh r0, [r2, #2]\n\
	strh r0, [r2, #6]\n\
	strh r3, [r2]\n\
	adds r0, r3, #0\n\
	bics r0, r1\n\
	strh r0, [r2, #2]\n\
	strh r4, [r2, #8]\n\
	adds r0, r3, #0\n\
	ldrh r1, [r2, #0xa]\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800072C\n\
	ldrh r0, [r2, #0xe]\n\
	ldrh r1, [r2, #0xc]\n\
	cmp r0, r1\n\
	blo _08000728\n\
	strh r4, [r2, #0xe]\n\
	ldrh r0, [r2, #0xa]\n\
	ands r3, r0\n\
	strh r3, [r2, #8]\n\
	b _08000730\n\
	.align 2, 0\n\
_0800071C: .4byte gUnknown_03003720\n\
_08000720: .4byte 0x04000130\n\
_08000724: .4byte 0x000003FF\n\
_08000728:\n\
	adds r0, #1\n\
	b _0800072E\n\
_0800072C:\n\
	ldrh r0, [r2, #0xc]\n\
_0800072E:\n\
	strh r0, [r2, #0xe]\n\
_08000730:\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0");
}
#endif//NONMATCHING

void sub_8000738(u16 arg0, u16 arg1)
{
    gUnknown_03003720.unkA = arg0;
    gUnknown_03003720.unkC = arg1;
}


u32 sub_8000744()
{
    struct Struct3003720 * struct0 = &gUnknown_03003720;
    if(gUnknown_03003730.unk2C == 0)
    {
        sub_80006DC();
    }

    gUnknown_03003730.unkD = 1; 

    if(struct0->unk0 == 15)
    {
        return 1;
    }
    return 0;   
}

void sub_800077C(u32 arg0, u16 arg1, u16 arg2, u16 arg3)
{
    gUnknown_03004000.unk0 = arg0;
    gUnknown_03004000.unk4 = arg3;
    gUnknown_03004000.unkC = arg1;
    gUnknown_03004000.unkE = arg2;
    gUnknown_03003730.unk2E = 0;
}

void sub_80007A0(struct Struct3004000 * arg0)
{
    if(arg0->unk4 & 1)
    {
        arg0->unkC--;
        if(arg0->unkC < 0)
        {
            arg0->unk4 = 0;
        }
    }
    else
    {
        arg0->unkC++;
        if(arg0->unkC >= arg0->unkE)
        {
            arg0->unk4 &= 1;
        }
    }
}

void sub_80007D8(u16 arg0, u8 arg1, u8 arg2, u16 arg3)
{
    gUnknown_03003730.unk74 = arg3;
    gUnknown_03003730.unk76 = arg0;
    gUnknown_03003730.unk7A = arg1;
    gUnknown_03003730.unk7B = arg2;
    gUnknown_03003730.unk78 = 0;
}

void sub_8000804()
{ 
    struct Struct3003730 * struct0 = &gUnknown_03003730; // ip
    struct Struct30038D0 * struct1 = &gUnknown_030038D0; // r4
    u16 temp;
    switch(struct0->unk76)
    {
        case 0:
        default:
            break;
        case 1:
            struct1->unk48 = struct0->unk74 | 0xC0;
            struct0->unk78++;
            if(struct0->unk78 >= struct0->unk7A)
            {
                struct0->unk78 = 0;
                struct1->unk4E -= struct0->unk7B;
            }
            temp = struct1->unk4E &= 0x1F;
            if(temp == 0)
            {
                struct1->unk4E = temp;
                struct1->unk48 = 0x1C42;
                struct1->unk4C = 0x71F;
                struct0->unk76 = temp;
            }
            break;
        case 2:
            struct1->unk48 = struct0->unk74 | 0xC0;
            struct0->unk78++;
            if(struct0->unk78 >= struct0->unk7A)
            {
                struct0->unk78 = 0;
                struct1->unk4E += struct0->unk7B;
            }
            temp = struct1->unk4E &= 0x1F;
            if(temp == 0x10)
            {
                struct0->unk76 = 0;
            }
            break;
        case 3:
            struct1->unk48 = struct0->unk74 | 0x80;
            struct0->unk78++;
            if(struct0->unk78 >= struct0->unk7A)
            {
                struct0->unk78 = 0;
                struct1->unk4E -= struct0->unk7B;
            }
            temp = struct1->unk4E &= 0x1F;
            if(temp == 0)
            {
                struct1->unk4E = temp;
                struct1->unk48 = 0x1C42;
                struct1->unk4C = 0x71F;
                struct0->unk76 = temp;
            }
            break;
        case 4:
            struct1->unk48 = struct0->unk74 | 0x80;
            struct0->unk78++;
            if(struct0->unk78 >= struct0->unk7A)
            {
                struct0->unk78 = 0;
                struct1->unk4E += struct0->unk7B;
            }
            temp = struct1->unk4E &= 0x1F;
            if(temp == 0x10)
            {
                struct0->unk76 = 0;
            }
            break;
    }
}

void sub_8000910()
{
    m4aSoundVSync();
    gUnknown_03003730.unkC++;
}

void nullsub_36()
{
}

void nullsub_5()
{
    
}