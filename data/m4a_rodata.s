    .include "asm/macros.inc"
    .syntax unified
    
	.section .rodata
    
    .align 2
    .global gMPlayJumpTableTemplate
gMPlayJumpTableTemplate: @ 79354
    .4byte ply_fine
    .4byte ply_goto
    .4byte ply_patt
    .4byte ply_pend
    .4byte ply_rept
    .4byte ply_fine
    .4byte ply_fine
    .4byte ply_fine
    .4byte ply_fine
    .4byte ply_prio
    .4byte ply_tempo
    .4byte ply_keysh
    .4byte ply_voice
    .4byte ply_vol
    .4byte ply_pan
    .4byte ply_bend
    .4byte ply_bendr
    .4byte ply_lfos_rev01
    .4byte ply_lfodl
    .4byte ply_mod_rev01
    .4byte ply_modt
    .4byte ply_fine
    .4byte ply_fine
    .4byte ply_tune
    .4byte ply_fine
    .4byte ply_fine
    .4byte ply_fine
    .4byte ply_port
    .4byte ply_fine
    .4byte ply_endtie_rev01
    .4byte SampFreqSet_rev01
    .4byte TrackStop_rev01
    .4byte FadeOutBody_rev01
    .4byte TrkVolPitSet_rev01
    .4byte ClearChain
    .4byte SoundMainBTM

    .global gUnknown_080793E4
gUnknown_080793E4:
    .incbin "baserom.gba", 0x000793E4, 0xB4

    .global gUnknown_08079498
gUnknown_08079498:
    .incbin "baserom.gba", 0x00079498, 0x30

    .global gUnknown_080794C8
gUnknown_080794C8:
    .incbin "baserom.gba", 0x000794C8, 0x18

    .global gUnknown_080794E0
gUnknown_080794E0:
    .incbin "baserom.gba", 0x000794E0, 0x84

    .global gUnknown_08079564
gUnknown_08079564:
    .incbin "baserom.gba", 0x00079564, 0x18

    .global gUnknown_0807957C
gUnknown_0807957C:
    .incbin "baserom.gba", 0x0007957C, 0x3C

    .global gUnknown_080795B8
gUnknown_080795B8:
    .incbin "baserom.gba", 0x000795B8, 0x10

    .global gUnknown_080795C8
gUnknown_080795C8:
    .incbin "baserom.gba", 0x000795C8, 0x34

    .align 2
    .global gUnknown_080795FC
gUnknown_080795FC:
    .4byte ply_xxx
    .4byte ply_xwave
    .4byte ply_xtype
    .4byte ply_xxx
    .4byte ply_xatta
    .4byte ply_xdeca
    .4byte ply_xsust
    .4byte ply_xrele
    .4byte ply_xiecv
    .4byte ply_xiecl
    .4byte ply_xleng
    .4byte ply_xswee
