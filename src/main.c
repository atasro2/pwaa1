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
        
        gUnknown_030038D0.lcd_bg3vofs = struct0->unkF + 8;
        gUnknown_030038D0.lcd_bg3hofs = struct0->unkE + 8;
        gUnknown_030038D0.lcd_bg1vofs = struct0->unkE;
        gUnknown_030038D0.lcd_bg1hofs = struct0->unkF;
        
        if(struct0->unk10 != 0)
        {
            struct0->unk10--;
            if(struct0->unk10 == 0)
            {
                struct0->unkB4 &= ~1;
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
    struct0->iwp_ie = INTR_FLAG_VBLANK | INTR_FLAG_GAMEPAK;
    struct0->lcd_dispstat = DISPSTAT_VBLANK_INTR;
    struct0->lcd_bldcnt = 0xDF;
    struct0->lcd_bldy = 0x10;
    REG_IE = struct0->iwp_ie; 
    REG_DISPSTAT = struct0->lcd_dispstat;
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
    struct0->lcd_bg0cnt = 0x3C00;
    struct0->lcd_bg1cnt = 0x3D01;
    struct0->lcd_bg2cnt = 0x3E00;
    struct0->lcd_bg3cnt = 0x3FC7;
    struct0->lcd_bldcnt = 0xDF;
    struct0->lcd_bldy = 0x10;
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

    REG_IE = struct0->iwp_ie;
    REG_DISPSTAT = struct0->lcd_dispstat;
    REG_DISPCNT = struct0->lcd_dispcnt;
    // if not done via arithmetic this would require tons of unions
    (*(vu32 *)REG_ADDR_BG0CNT) = *((u32*) struct0+0);
    (*(vu32 *)REG_ADDR_BG0HOFS) = *((u32*) struct0+2);
    (*(vu32 *)REG_ADDR_BG1HOFS) = *((u32*) struct0+3);
    (*(vu32 *)REG_ADDR_BG2CNT) = *((u32*) struct0+1);
    (*(vu32 *)REG_ADDR_BG2HOFS) = *((u32*) struct0+4);
    (*(vu32 *)REG_ADDR_BG3HOFS) = *((u32*) struct0+5);
    (*(vu32 *)REG_ADDR_BG2PA) = *((u32*) struct0+6);
    (*(vu32 *)REG_ADDR_BG2PC) = *((u32*) struct0+7);
    REG_BG2X = *((u32*) struct0+8);
    REG_BG2Y = *((u32*) struct0+9);
    (*(vu32 *)REG_ADDR_BG3PA) = *((u32*) struct0+10);
    (*(vu32 *)REG_ADDR_BG3PC) = *((u32*) struct0+11);
    REG_BG3X = *((u32*) struct0+12);
    REG_BG3Y = *((u32*) struct0+13);
    (*(vu32 *)REG_ADDR_WIN0H) = *((u32*) struct0+14);
    (*(vu32 *)REG_ADDR_WIN0V) = *((u32*) struct0+15);
    (*(vu32 *)REG_ADDR_WININ) = *((u32*) struct0+16);
    (*(vu32 *)REG_ADDR_MOSAIC) = *((u32*) struct0+17);
    REG_BLDCNT = struct0->lcd_bldcnt;
    REG_BLDALPHA = struct0->lcd_bldalpha;
    REG_BLDY = struct0->lcd_bldy;
}
