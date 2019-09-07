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
    struct Struct3004000 * iwstruct4000p = &gUnknown_03004000;
    struct Struct3003730 * iwstruct3730p = &gUnknown_03003730;

    u8 mask;
    u8 var1;
    u32 var2 = iwstruct3730p->unkB4 & 1;

    if((var2))
    {
        switch(iwstruct3730p->unk12)
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
            iwstruct3730p->unkE = var1 & mask;
            iwstruct3730p->unkE *= -1;
        }
        else
        {
            iwstruct3730p->unkE = (var1 & mask);
        }

        var1 = sub_8002B40() & 15;
        
        if(var1 > 7)
        {
            iwstruct3730p->unkF = var1 & mask;
            iwstruct3730p->unkF *= -1;
        }
        else
        {
            iwstruct3730p->unkF = var1 & mask;
        }
        
        gUnknown_030038D0.lcd_bg3vofs = iwstruct3730p->unkF + 8;
        gUnknown_030038D0.lcd_bg3hofs = iwstruct3730p->unkE + 8;
        gUnknown_030038D0.lcd_bg1vofs = iwstruct3730p->unkE;
        gUnknown_030038D0.lcd_bg1hofs = iwstruct3730p->unkF;
        
        if(iwstruct3730p->unk10 != 0)
        {
            iwstruct3730p->unk10--;
            if(iwstruct3730p->unk10 == 0)
            {
                iwstruct3730p->unkB4 &= ~1;
                gUnknown_030038D0.lcd_bg3vofs = 8;
                gUnknown_030038D0.lcd_bg3hofs = 8;
                gUnknown_030038D0.lcd_bg1vofs = 0;
                gUnknown_030038D0.lcd_bg1hofs = 0;
            }
        }
    }
    else
    {
        gUnknown_03003730.unkE = var2;
        gUnknown_03003730.unkF = var2;
    }
    
    gUnknown_0811DBB4[gUnknown_03003730.unk1.field0](&gUnknown_03003730);
    
    if(iwstruct4000p->unk4)
    {
        sub_80007A0(iwstruct4000p);
    }
}

void sub_80003E0()
{
    struct Struct3003730 * iwstruct3730p = &gUnknown_03003730;
    struct Struct30038D0 * iwstruct38D0p = &gUnknown_030038D0;
    u32 temp = iwstruct3730p->unk1.field0 ? TRUE : FALSE;

    RegisterRamReset(RESET_SIO_REGS | RESET_SOUND_REGS | RESET_REGS);
    DmaFill32(3, 0, IWRAM_START, 0x7E00); // Clear IWRAM
    DmaFill32(3, 0, EWRAM_START, 0x40000); // Clear EWRAM
    
    iwstruct3730p->unk1.field1 = temp; // TODO: ! scrub c

    RegisterRamReset(RESET_OAM | RESET_VRAM | RESET_PALETTE);
    
    for (temp = 0; temp < ARRAY_COUNT(gUnknown_08013798); temp++)
    {
        gUnknown_03002800[temp] = gUnknown_08013798[temp];
    }
    
    m4aSoundInit();
    REG_WAITCNT = WAITCNT_SRAM_4 | WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1 | WAITCNT_WS1_N_4 | WAITCNT_WS1_S_4 | WAITCNT_WS2_N_4 | WAITCNT_WS2_S_8 | WAITCNT_PHI_OUT_NONE | WAITCNT_PREFETCH_ENABLE;
    iwstruct38D0p->iwp_ie = INTR_FLAG_VBLANK | INTR_FLAG_GAMEPAK;
    iwstruct38D0p->lcd_dispstat = DISPSTAT_VBLANK_INTR;
    iwstruct38D0p->lcd_bldcnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
    iwstruct38D0p->lcd_bldy = 0x10;
    REG_IE = iwstruct38D0p->iwp_ie; 
    REG_DISPSTAT = iwstruct38D0p->lcd_dispstat;
    REG_IME = TRUE;
}

void sub_80004B0()
{
    struct Struct30038D0 * iwstruct38D0p = &gUnknown_030038D0;
    struct Struct3003730 * iwstruct3730p = &gUnknown_03003730;
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
    iwstruct3730p->unk24 = 0xD37;
    iwstruct3730p->unk8D = 0;
    iwstruct3730p->unk8E = 1;
    iwstruct38D0p->lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP; // TODO: add TXT/AFF macro once known which one is used
    iwstruct38D0p->lcd_bg1cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_WRAP; // TODO: add TXT/AFF macro once known which one is used
    iwstruct38D0p->lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP; // TODO: add TXT/AFF macro once known which one is used
    iwstruct38D0p->lcd_bg3cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP; // TODO: add TXT/AFF macro once known which one is used
    iwstruct38D0p->lcd_bldcnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
    iwstruct38D0p->lcd_bldy = 0x10;
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
    struct Struct30038D0 * iwstruct38D0p = &gUnknown_030038D0;

    REG_IE = iwstruct38D0p->iwp_ie;
    REG_DISPSTAT = iwstruct38D0p->lcd_dispstat;
    REG_DISPCNT = iwstruct38D0p->lcd_dispcnt;
    // TODO: make these better
    (*(vu32 *)REG_ADDR_BG0CNT) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg0cnt);
    (*(vu32 *)REG_ADDR_BG0HOFS) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg0hofs);
    (*(vu32 *)REG_ADDR_BG1HOFS) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg1hofs);
    (*(vu32 *)REG_ADDR_BG2CNT) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg2cnt);
    (*(vu32 *)REG_ADDR_BG2HOFS) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg2hofs);
    (*(vu32 *)REG_ADDR_BG3HOFS) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg3hofs);
    (*(vu32 *)REG_ADDR_BG2PA) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg2pa);
    (*(vu32 *)REG_ADDR_BG2PC) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg2pc);
    REG_BG2X = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg2x);
    REG_BG2Y = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg2y);
    (*(vu32 *)REG_ADDR_BG3PA) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg3pa);
    (*(vu32 *)REG_ADDR_BG3PC) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg3pc);
    REG_BG3X = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg3x);
    REG_BG3Y = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_bg3y);
    (*(vu32 *)REG_ADDR_WIN0H) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_win0h);
    (*(vu32 *)REG_ADDR_WIN0V) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_win0v);
    (*(vu32 *)REG_ADDR_WININ) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_winin);
    (*(vu32 *)REG_ADDR_MOSAIC) = IO_REG_STRUCT_MEMBER(iwstruct38D0p, lcd_mosaic);
    REG_BLDCNT = iwstruct38D0p->lcd_bldcnt;
    REG_BLDALPHA = iwstruct38D0p->lcd_bldalpha;
    REG_BLDY = iwstruct38D0p->lcd_bldy;
}

void sub_80006DC() // TODO: this function sucks
                   // TODO: Rename to ReadKeys ?
{
    struct Struct3003720 * iwstruct3720p = &gUnknown_03003720;
    u16 *keyInput = (u16 *)REG_ADDR_KEYINPUT;
    u16 temp = KEYS_MASK ^ *keyInput;
    u32 temp2;
    iwstruct3720p->unk4 = iwstruct3720p->unk0;
    iwstruct3720p->unk6 = iwstruct3720p->unk2;
    iwstruct3720p->unk0 = (KEYS_MASK ^ *keyInput);
    iwstruct3720p->unk2 = temp & ~iwstruct3720p->unk4;
    iwstruct3720p->unk8 = 0;
    temp2 = iwstruct3720p->unkA;
    if((KEYS_MASK ^ *keyInput) & temp2)
    {
        temp2 = iwstruct3720p->unkC;
        if(iwstruct3720p->unkE >= temp2)
        {
            iwstruct3720p->unkE = 0;
            iwstruct3720p->unk8 = temp & iwstruct3720p->unkA;
        }
        else
        {
            iwstruct3720p->unkE++;
        }
    }
    else
    {
        iwstruct3720p->unkE = iwstruct3720p->unkC; 
    }
}

void sub_8000738(u16 arg0, u16 arg1)
{
    gUnknown_03003720.unkA = arg0;
    gUnknown_03003720.unkC = arg1;
}


u32 sub_8000744()
{
    struct Struct3003720 * iwstruct3720p = &gUnknown_03003720;
    if(gUnknown_03003730.unk2C == 0)
    {
        sub_80006DC();
    }

    gUnknown_03003730.unkD = 1; 

    if(iwstruct3720p->unk0 == 15)
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
    struct Struct3003730 * iwstruct3730p = &gUnknown_03003730;
    struct Struct30038D0 * iwstruct38D0p = &gUnknown_030038D0;
    u16 temp;
    switch(iwstruct3730p->unk76)
    {
        case 0:
        default:
            break;
        case 1:
            iwstruct38D0p->lcd_bldcnt = iwstruct3730p->unk74 | 0xC0;
            iwstruct3730p->unk78++;
            if(iwstruct3730p->unk78 >= iwstruct3730p->unk7A)
            {
                iwstruct3730p->unk78 = 0;
                iwstruct38D0p->lcd_bldy -= iwstruct3730p->unk7B;
            }
            temp = iwstruct38D0p->lcd_bldy &= 0x1F;
            if(temp == 0)
            {
                iwstruct38D0p->lcd_bldy = temp;
                iwstruct38D0p->lcd_bldcnt = 0x1C42;
                iwstruct38D0p->lcd_bldalpha = 0x71F;
                iwstruct3730p->unk76 = temp;
            }
            break;
        case 2:
            iwstruct38D0p->lcd_bldcnt = iwstruct3730p->unk74 | 0xC0;
            iwstruct3730p->unk78++;
            if(iwstruct3730p->unk78 >= iwstruct3730p->unk7A)
            {
                iwstruct3730p->unk78 = 0;
                iwstruct38D0p->lcd_bldy += iwstruct3730p->unk7B;
            }
            temp = iwstruct38D0p->lcd_bldy &= 0x1F;
            if(temp == 0x10)
            {
                iwstruct3730p->unk76 = 0;
            }
            break;
        case 3:
            iwstruct38D0p->lcd_bldcnt = iwstruct3730p->unk74 | 0x80;
            iwstruct3730p->unk78++;
            if(iwstruct3730p->unk78 >= iwstruct3730p->unk7A)
            {
                iwstruct3730p->unk78 = 0;
                iwstruct38D0p->lcd_bldy -= iwstruct3730p->unk7B;
            }
            temp = iwstruct38D0p->lcd_bldy &= 0x1F;
            if(temp == 0)
            {
                iwstruct38D0p->lcd_bldy = temp;
                iwstruct38D0p->lcd_bldcnt = 0x1C42;
                iwstruct38D0p->lcd_bldalpha = 0x71F;
                iwstruct3730p->unk76 = temp;
            }
            break;
        case 4:
            iwstruct38D0p->lcd_bldcnt = iwstruct3730p->unk74 | 0x80;
            iwstruct3730p->unk78++;
            if(iwstruct3730p->unk78 >= iwstruct3730p->unk7A)
            {
                iwstruct3730p->unk78 = 0;
                iwstruct38D0p->lcd_bldy += iwstruct3730p->unk7B;
            }
            temp = iwstruct38D0p->lcd_bldy &= 0x1F;
            if(temp == 0x10)
            {
                iwstruct3730p->unk76 = 0;
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