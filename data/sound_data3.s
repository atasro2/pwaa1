
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
	
	.align 2
	.global gUnknown_0807962C
gUnknown_0807962C:
	.incbin "sound/direct_sound_samples/0807962C.bin"

	.align 2
	.global gUnknown_0807A1A0
gUnknown_0807A1A0:
	.incbin "sound/direct_sound_samples/0807A1A0.bin"

	.align 2
	.global gUnknown_0807F398
gUnknown_0807F398:
	.incbin "sound/direct_sound_samples/0807F398.bin"

	.align 2
	.global gUnknown_08084590
gUnknown_08084590:
	.incbin "sound/direct_sound_samples/08084590.bin"

	.align 2
	.global gUnknown_08084F68
gUnknown_08084F68:
	.incbin "sound/direct_sound_samples/08084F68.bin"

	.align 2
	.global gUnknown_080855B8
gUnknown_080855B8:
	.incbin "sound/direct_sound_samples/080855B8.bin"

	.align 2
	.global gUnknown_08085CC0
gUnknown_08085CC0:
	.incbin "sound/direct_sound_samples/08085CC0.bin"

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088424_1
gUnknown_08088424_1:	@ 0x08088404
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x04
	.byte	0xBE
	.byte	0x73
	.byte	0xBF
	.byte	0x40
	.byte	0xC4
	.byte	0x14
	.byte	0xC2
	.byte	0x0A
	.byte	0xC5
	.byte	0x00
	.byte	0xC3
	.byte	0x00
	.byte	0xD1
	.byte	0x58
	.byte	0x3C
	.byte	0x82
	.byte	0xC4
	.byte	0x3C
	.byte	0xC2
	.byte	0x50
	.byte	0xD1
	.byte	0x6F
	.byte	0x18
	.byte	0x82
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088424
gUnknown_08088424:	@ 0x08088424
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup032		@ voicegroup/tone

	.word	gUnknown_08088424_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088450_1
gUnknown_08088450_1:	@ 0x08088430
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x10
	.byte	0xBE
	.byte	0x73
	.byte	0xC4
	.byte	0x00
	.byte	0xBF
	.byte	0x40
	.byte	0xD1
	.byte	0x5A
	.byte	0x50
	.byte	0x82
	.byte	0x55
	.byte	0x78
	.byte	0x82
	.byte	0x42
	.byte	0x28
	.byte	0x82
	.byte	0x4E
	.byte	0x82
	.byte	0x6A
	.byte	0x82
	.byte	0x4E
	.byte	0x14
	.byte	0x82
	.byte	0x6A
	.byte	0x82
	.byte	0xB1

	.align 2
	.global gUnknown_08088450
gUnknown_08088450:	@ 0x08088450
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup032		@ voicegroup/tone

	.word	gUnknown_08088450_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088480_1
gUnknown_08088480_1:	@ 0x0808845C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x07
	.byte	0xBE
	.byte	0x73
	.byte	0xBF
	.byte	0x40
	.byte	0xC1
	.byte	0x18
	.byte	0xC0
	.byte	0x30
	.byte	0xD7
	.byte	0x5B
	.byte	0x7F
	.byte	0x81
	.byte	0xC0
	.byte	0x38
	.byte	0x81
	.byte	0x40
	.byte	0x81
	.byte	0x30
	.byte	0x81
	.byte	0x20
	.byte	0x81
	.byte	0x10
	.byte	0x81
	.byte	0x00
	.byte	0x81
	.byte	0x40
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088480
gUnknown_08088480:	@ 0x08088480
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup032		@ voicegroup/tone

	.word	gUnknown_08088480_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080884AC_1
gUnknown_080884AC_1:	@ 0x0808848C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x09
	.byte	0xBE
	.byte	0x43
	.byte	0xBF
	.byte	0x40
	.byte	0xC4
	.byte	0x14
	.byte	0xC2
	.byte	0x0A
	.byte	0xC5
	.byte	0x00
	.byte	0xC3
	.byte	0x00
	.byte	0xD0
	.byte	0x5B
	.byte	0x3C
	.byte	0x81
	.byte	0xC4
	.byte	0x64
	.byte	0xC2
	.byte	0x32
	.byte	0xD1
	.byte	0x6E
	.byte	0x20
	.byte	0xAF
	.byte	0x83
	.byte	0xB1

	.align 2
	.global gUnknown_080884AC
gUnknown_080884AC:	@ 0x080884AC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup032		@ voicegroup/tone

	.word	gUnknown_080884AC_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080884D8_1
gUnknown_080884D8_1:	@ 0x080884B8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x09
	.byte	0xBE
	.byte	0x43
	.byte	0xBF
	.byte	0x40
	.byte	0xC4
	.byte	0x14
	.byte	0xC2
	.byte	0x0A
	.byte	0xC5
	.byte	0x00
	.byte	0xC3
	.byte	0x00
	.byte	0xD0
	.byte	0x5E
	.byte	0x3C
	.byte	0x81
	.byte	0xC4
	.byte	0x64
	.byte	0xC2
	.byte	0x32
	.byte	0xD1
	.byte	0x71
	.byte	0x20
	.byte	0xAF
	.byte	0x83
	.byte	0xB1

	.align 2
	.global gUnknown_080884D8
gUnknown_080884D8:	@ 0x080884D8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup032		@ voicegroup/tone

	.word	gUnknown_080884D8_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080884F4_1
gUnknown_080884F4_1:	@ 0x080884E4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x50
	.byte	0xBD
	.byte	0x32
	.byte	0xBE
	.byte	0x41
	.byte	0xBF
	.byte	0x40
	.byte	0xEA
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_080884F4
gUnknown_080884F4:	@ 0x080884F4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080884F4_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088510_1
gUnknown_08088510_1:	@ 0x08088500
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x06
	.byte	0xBE
	.byte	0x78
	.byte	0xE7
	.byte	0x3C
	.byte	0x7F
	.byte	0x98
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088510
gUnknown_08088510:	@ 0x08088510
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	158		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088510_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_0808852C_1
gUnknown_0808852C_1:	@ 0x0808851C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x04
	.byte	0xBE
	.byte	0x6E
	.byte	0xE7
	.byte	0x3C
	.byte	0x7F
	.byte	0x98
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_0808852C
gUnknown_0808852C:	@ 0x0808852C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_0808852C_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088548_1
gUnknown_08088548_1:	@ 0x08088538
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x30
	.byte	0xBE
	.byte	0x64
	.byte	0xE7
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088548
gUnknown_08088548:	@ 0x08088548
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088548_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088564_1
gUnknown_08088564_1:	@ 0x08088554
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x31
	.byte	0xBE
	.byte	0x23
	.byte	0xE7
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088564
gUnknown_08088564:	@ 0x08088564
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088564_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088580_1
gUnknown_08088580_1:	@ 0x08088570
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x05
	.byte	0xBE
	.byte	0x3C
	.byte	0xE7
	.byte	0x41
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088580
gUnknown_08088580:	@ 0x08088580
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088580_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080885B4_1
gUnknown_080885B4_1:	@ 0x0808858C
	.byte	0xBE
	.byte	0x7F
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x64
	.byte	0xBD
	.byte	0x05
	.byte	0xBF
	.byte	0x40
	.byte	0xC4
	.byte	0x64
	.byte	0xC5
	.byte	0x00
	.byte	0xDB
	.byte	0x42
	.byte	0x7F
	.byte	0x83
	.byte	0xBE
	.byte	0x7F
	.byte	0x81
	.byte	0x75
	.byte	0x81
	.byte	0x6A
	.byte	0x81
	.byte	0x5F
	.byte	0x81
	.byte	0x54
	.byte	0x81
	.byte	0x49
	.byte	0x81
	.byte	0x3E
	.byte	0x81
	.byte	0x33
	.byte	0x81
	.byte	0x28
	.byte	0xAC
	.byte	0x81
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_080885B4
gUnknown_080885B4:	@ 0x080885B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup032		@ voicegroup/tone

	.word	gUnknown_080885B4_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080885D0_1
gUnknown_080885D0_1:	@ 0x080885C0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x6E
	.byte	0xBD
	.byte	0x0B
	.byte	0xBE
	.byte	0x73
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_080885D0
gUnknown_080885D0:	@ 0x080885D0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080885D0_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080885F0_1
gUnknown_080885F0_1:	@ 0x080885DC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x21
	.byte	0xBE
	.byte	0x73
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_080885F0
gUnknown_080885F0:	@ 0x080885F0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080885F0_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088610_1
gUnknown_08088610_1:	@ 0x080885FC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x22
	.byte	0xBE
	.byte	0x73
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088610
gUnknown_08088610:	@ 0x08088610
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088610_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088630_1
gUnknown_08088630_1:	@ 0x0808861C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x23
	.byte	0xBE
	.byte	0x73
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088630
gUnknown_08088630:	@ 0x08088630
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088630_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088654_1
gUnknown_08088654_1:	@ 0x0808863C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x01
	.byte	0xBE
	.byte	0x50
	.byte	0xC4
	.byte	0x14
	.byte	0xC2
	.byte	0x28
	.byte	0xC5
	.byte	0x02
	.byte	0xC3
	.byte	0x00
	.byte	0xE9
	.byte	0x3C
	.byte	0x7F
	.byte	0x9A
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088654
gUnknown_08088654:	@ 0x08088654
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	148		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088654_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088680_1
gUnknown_08088680_1:	@ 0x08088660
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x01
	.byte	0xBE
	.byte	0x50
	.byte	0xC4
	.byte	0x14
	.byte	0xC2
	.byte	0x28
	.byte	0xC5
	.byte	0x02
	.byte	0xC3
	.byte	0x00
	.byte	0xE7
	.byte	0x3C
	.byte	0x7F
	.byte	0x9B
	.byte	0x81
	.byte	0xE7
	.byte	0x9B
	.byte	0x82
	.byte	0xE7
	.byte	0x99
	.byte	0x81
	.byte	0x82
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088680
gUnknown_08088680:	@ 0x08088680
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	148		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088680_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080886A4_1
gUnknown_080886A4_1:	@ 0x0808868C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x01
	.byte	0xBE
	.byte	0x50
	.byte	0xD9
	.byte	0x3C
	.byte	0x7F
	.byte	0x8A
	.byte	0xD9
	.byte	0x8A
	.byte	0xD9
	.byte	0x8A
	.byte	0xD9
	.byte	0x8A
	.byte	0xD9
	.byte	0x8A
	.byte	0xE7
	.byte	0x98
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_080886A4
gUnknown_080886A4:	@ 0x080886A4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	80		@ priority
	.byte	148		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080886A4_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080886C0_1
gUnknown_080886C0_1:	@ 0x080886B0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x10
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x51
	.byte	0xFF
	.byte	0x2C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_080886C0
gUnknown_080886C0:	@ 0x080886C0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	148		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080886C0_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080886E0_1
gUnknown_080886E0_1:	@ 0x080886CC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x10
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xCF
	.byte	0x2C
	.byte	0x7F
	.byte	0xB0
	.byte	0x99
	.byte	0xCE
	.byte	0xA7
	.byte	0xB1
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_080886E0
gUnknown_080886E0:	@ 0x080886E0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	148		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080886E0_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088774_1
gUnknown_08088774_1:	@ 0x080886EC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x0F
	.byte	0xBF
	.byte	0x32
	.byte	0xBE
	.byte	0x3E
	.byte	0xCF
	.byte	0x2C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0x87
	.byte	0xCE
	.byte	0xB1

	@********************** Track  2 **********************@

	.global gUnknown_08088774_2
gUnknown_08088774_2:	@ 0x08088730
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x10
	.byte	0xBF
	.byte	0x50
	.byte	0xBE
	.byte	0x38
	.byte	0xCF
	.byte	0x2C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB0
	.byte	0xA0
	.byte	0xCE
	.byte	0xA0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0x87
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088774
gUnknown_08088774:	@ 0x08088774
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	148		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088774_1		@ track
	.word	gUnknown_08088774_2		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080887B0_1
gUnknown_080887B0_1:	@ 0x08088784
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x06
	.byte	0xBE
	.byte	0x64
	.byte	0xBF
	.byte	0x40
	.byte	0xCD
	.byte	0x08
	.byte	0x32
	.byte	0x09
	.byte	0x14
	.byte	0xD1
	.byte	0x58
	.byte	0x50
	.byte	0x82
	.byte	0xD2
	.byte	0x68
	.byte	0x7F
	.byte	0x85
	.byte	0x58
	.byte	0x50
	.byte	0x83
	.byte	0x68
	.byte	0x64
	.byte	0x85
	.byte	0x58
	.byte	0x83
	.byte	0x68
	.byte	0x50
	.byte	0x85
	.byte	0x58
	.byte	0x20
	.byte	0x83
	.byte	0xCD
	.byte	0x09
	.byte	0x0A
	.byte	0xD2
	.byte	0x68
	.byte	0x85
	.byte	0xB1

	.align 2
	.global gUnknown_080887B0
gUnknown_080887B0:	@ 0x080887B0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup032		@ voicegroup/tone

	.word	gUnknown_080887B0_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080887D0_1
gUnknown_080887D0_1:	@ 0x080887BC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x24
	.byte	0xBE
	.byte	0x78
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_080887D0
gUnknown_080887D0:	@ 0x080887D0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	138		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080887D0_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080887F0_1
gUnknown_080887F0_1:	@ 0x080887DC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x25
	.byte	0xBE
	.byte	0x78
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_080887F0
gUnknown_080887F0:	@ 0x080887F0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080887F0_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_0808880C_1
gUnknown_0808880C_1:	@ 0x080887FC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x0D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x50
	.byte	0xFF
	.byte	0x3C
	.byte	0x64
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_0808880C
gUnknown_0808880C:	@ 0x0808880C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	138		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_0808880C_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088828_1
gUnknown_08088828_1:	@ 0x08088818
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x06
	.byte	0xBE
	.byte	0x7F
	.byte	0xE7
	.byte	0x3C
	.byte	0x7F
	.byte	0x98
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088828
gUnknown_08088828:	@ 0x08088828
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	138		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088828_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088848_1
gUnknown_08088848_1:	@ 0x08088834
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x12
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x55
	.byte	0xCF
	.byte	0x30
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xA8
	.byte	0xB1
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088848
gUnknown_08088848:	@ 0x08088848
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	138		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088848_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088864_1
gUnknown_08088864_1:	@ 0x08088854
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x0A
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x6E
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088864
gUnknown_08088864:	@ 0x08088864
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	138		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088864_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088880_1
gUnknown_08088880_1:	@ 0x08088870
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x0C
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5E
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088880
gUnknown_08088880:	@ 0x08088880
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	188		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088880_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_0808889C_1
gUnknown_0808889C_1:	@ 0x0808888C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x1E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xFF
	.byte	0x41
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_0808889C
gUnknown_0808889C:	@ 0x0808889C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	188		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_0808889C_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080888BC_1
gUnknown_080888BC_1:	@ 0x080888A8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x09
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x78
	.byte	0xCF
	.byte	0x2A
	.byte	0x7F
	.byte	0xB0
	.byte	0xB0
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_080888BC
gUnknown_080888BC:	@ 0x080888BC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	168		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080888BC_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080888D8_1
gUnknown_080888D8_1:	@ 0x080888C8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x11
	.byte	0xBE
	.byte	0x64
	.byte	0xBF
	.byte	0x40
	.byte	0xFA
	.byte	0x3C
	.byte	0x7F
	.byte	0xAB
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_080888D8
gUnknown_080888D8:	@ 0x080888D8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080888D8_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080888F4_1
gUnknown_080888F4_1:	@ 0x080888E4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x20
	.byte	0xBE
	.byte	0x50
	.byte	0xBF
	.byte	0x40
	.byte	0xFA
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_080888F4
gUnknown_080888F4:	@ 0x080888F4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080888F4_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088910_1
gUnknown_08088910_1:	@ 0x08088900
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x13
	.byte	0xBE
	.byte	0x78
	.byte	0xBF
	.byte	0x40
	.byte	0xFE
	.byte	0x3C
	.byte	0x78
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088910
gUnknown_08088910:	@ 0x08088910
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	168		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088910_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088930_1
gUnknown_08088930_1:	@ 0x0808891C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x14
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x2D
	.byte	0x7F
	.byte	0xB0
	.byte	0xB0
	.byte	0xA0
	.byte	0xCE
	.byte	0xA0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088930
gUnknown_08088930:	@ 0x08088930
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088930_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_0808894C_1
gUnknown_0808894C_1:	@ 0x0808893C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x15
	.byte	0xBE
	.byte	0x5A
	.byte	0xBF
	.byte	0x40
	.byte	0xF3
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_0808894C
gUnknown_0808894C:	@ 0x0808894C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	148		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_0808894C_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088968_1
gUnknown_08088968_1:	@ 0x08088958
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x16
	.byte	0xBE
	.byte	0x5A
	.byte	0xF3
	.byte	0x3C
	.byte	0x7F
	.byte	0xA4
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088968
gUnknown_08088968:	@ 0x08088968
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	138		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088968_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088984_1
gUnknown_08088984_1:	@ 0x08088974
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x17
	.byte	0xBE
	.byte	0x5A
	.byte	0xBF
	.byte	0x40
	.byte	0xF3
	.byte	0x3C
	.byte	0x7F
	.byte	0xA4
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088984
gUnknown_08088984:	@ 0x08088984
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088984_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080889A4_1
gUnknown_080889A4_1:	@ 0x08088990
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x18
	.byte	0xBE
	.byte	0x73
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_080889A4
gUnknown_080889A4:	@ 0x080889A4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080889A4_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080889C4_1
gUnknown_080889C4_1:	@ 0x080889B0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x19
	.byte	0xBE
	.byte	0x4B
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x6B
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_080889C4
gUnknown_080889C4:	@ 0x080889C4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080889C4_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_080889E4_1
gUnknown_080889E4_1:	@ 0x080889D0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x1A
	.byte	0xBE
	.byte	0x78
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB0
	.byte	0xA0
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_080889E4
gUnknown_080889E4:	@ 0x080889E4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	158		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_080889E4_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088A04_1
gUnknown_08088A04_1:	@ 0x080889F0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x1B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088A04
gUnknown_08088A04:	@ 0x08088A04
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	158		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088A04_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088A24_1
gUnknown_08088A24_1:	@ 0x08088A10
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x1C
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088A24
gUnknown_08088A24:	@ 0x08088A24
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	158		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088A24_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088A44_1
gUnknown_08088A44_1:	@ 0x08088A30
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x1D
	.byte	0xBE
	.byte	0x78
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088A44
gUnknown_08088A44:	@ 0x08088A44
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	158		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088A44_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088A60_1
gUnknown_08088A60_1:	@ 0x08088A50
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x1F
	.byte	0xBE
	.byte	0x78
	.byte	0xBF
	.byte	0x40
	.byte	0xF3
	.byte	0x3C
	.byte	0x7F
	.byte	0xA4
	.byte	0x83
	.byte	0xB1

	.align 2
	.global gUnknown_08088A60
gUnknown_08088A60:	@ 0x08088A60
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	158		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088A60_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088A80_1
gUnknown_08088A80_1:	@ 0x08088A6C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x50
	.byte	0xBD
	.byte	0x08
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xD1
	.byte	0x61
	.byte	0x28
	.byte	0x82
	.byte	0x5E
	.byte	0x14
	.byte	0x82
	.byte	0x64
	.byte	0xAF
	.byte	0xB1

	.align 2
	.global gUnknown_08088A80
gUnknown_08088A80:	@ 0x08088A80
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup032		@ voicegroup/tone

	.word	gUnknown_08088A80_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088AA0_1
gUnknown_08088AA0_1:	@ 0x08088A8C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x50
	.byte	0xBD
	.byte	0x04
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xD1
	.byte	0x61
	.byte	0x28
	.byte	0x82
	.byte	0x5A
	.byte	0x14
	.byte	0x82
	.byte	0x64
	.byte	0xAF
	.byte	0xB1

	.align 2
	.global gUnknown_08088AA0
gUnknown_08088AA0:	@ 0x08088AA0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup032		@ voicegroup/tone

	.word	gUnknown_08088AA0_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088AFC_1
gUnknown_08088AFC_1:	@ 0x08088AAC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x02
	.byte	0xBE
	.byte	0x4B
	.byte	0xBF
	.byte	0x40
	.byte	0xD1
	.byte	0x65
	.byte	0x3C
	.byte	0x82
	.byte	0xD3
	.byte	0x64
	.byte	0x54
	.byte	0x84
	.byte	0xD1
	.byte	0x65
	.byte	0x3C
	.byte	0x82
	.byte	0xD3
	.byte	0x64
	.byte	0x54
	.byte	0x84
	.byte	0xD1
	.byte	0x65
	.byte	0x3C
	.byte	0x82
	.byte	0xD3
	.byte	0x64
	.byte	0x54
	.byte	0x84
	.byte	0xD1
	.byte	0x65
	.byte	0x3C
	.byte	0x82
	.byte	0xD3
	.byte	0x64
	.byte	0x54
	.byte	0x84
	.byte	0xD1
	.byte	0x65
	.byte	0x3C
	.byte	0x82
	.byte	0xD3
	.byte	0x64
	.byte	0x84
	.byte	0xD1
	.byte	0x65
	.byte	0x82
	.byte	0xD3
	.byte	0x64
	.byte	0x84
	.byte	0xD1
	.byte	0x65
	.byte	0x82
	.byte	0xD3
	.byte	0x64
	.byte	0x84
	.byte	0xD1
	.byte	0x65
	.byte	0x82
	.byte	0xD3
	.byte	0x64
	.byte	0x84
	.byte	0xD1
	.byte	0x65
	.byte	0x82
	.byte	0xD3
	.byte	0x64
	.byte	0x9D
	.byte	0xB2
	.byte	0xAE
	.byte	0x8A
	.byte	0x08
	.byte	0x08
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088AFC
gUnknown_08088AFC:	@ 0x08088AFC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup030		@ voicegroup/tone

	.word	gUnknown_08088AFC_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088B1C_1
gUnknown_08088B1C_1:	@ 0x08088B08
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x02
	.byte	0xBE
	.byte	0x55
	.byte	0xBF
	.byte	0x40
	.byte	0xD0
	.byte	0x67
	.byte	0x60
	.byte	0x81
	.byte	0xD1
	.byte	0x67
	.byte	0x28
	.byte	0x82
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088B1C
gUnknown_08088B1C:	@ 0x08088B1C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup030		@ voicegroup/tone

	.word	gUnknown_08088B1C_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088B38_1
gUnknown_08088B38_1:	@ 0x08088B28
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x02
	.byte	0xBE
	.byte	0x55
	.byte	0xBF
	.byte	0x40
	.byte	0xEB
	.byte	0x67
	.byte	0x50
	.byte	0x9C
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088B38
gUnknown_08088B38:	@ 0x08088B38
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup030		@ voicegroup/tone

	.word	gUnknown_08088B38_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088B54_1
gUnknown_08088B54_1:	@ 0x08088B44
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x25
	.byte	0xBE
	.byte	0x6E
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088B54
gUnknown_08088B54:	@ 0x08088B54
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088B54_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088B70_1
gUnknown_08088B70_1:	@ 0x08088B60
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x26
	.byte	0xBE
	.byte	0x5A
	.byte	0xBF
	.byte	0x40
	.byte	0xF3
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088B70
gUnknown_08088B70:	@ 0x08088B70
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088B70_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088B8C_1
gUnknown_08088B8C_1:	@ 0x08088B7C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x27
	.byte	0xBE
	.byte	0x78
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088B8C
gUnknown_08088B8C:	@ 0x08088B8C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	158		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088B8C_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088BA8_1
gUnknown_08088BA8_1:	@ 0x08088B98
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x28
	.byte	0xBE
	.byte	0x78
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088BA8
gUnknown_08088BA8:	@ 0x08088BA8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	158		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088BA8_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088BFC_1
gUnknown_08088BFC_1:	@ 0x08088BB4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x29
	.byte	0xBE
	.byte	0x78
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x41
	.byte	0x7F
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0x87
	.byte	0xCE
	.byte	0xAD
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088BFC
gUnknown_08088BFC:	@ 0x08088BFC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088BFC_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088C18_1
gUnknown_08088C18_1:	@ 0x08088C08
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2A
	.byte	0xBE
	.byte	0x5A
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088C18
gUnknown_08088C18:	@ 0x08088C18
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088C18_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088C34_1
gUnknown_08088C34_1:	@ 0x08088C24
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088C34
gUnknown_08088C34:	@ 0x08088C34
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	158		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088C34_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088C50_1
gUnknown_08088C50_1:	@ 0x08088C40
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2C
	.byte	0xBE
	.byte	0x64
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088C50
gUnknown_08088C50:	@ 0x08088C50
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088C50_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088C70_1
gUnknown_08088C70_1:	@ 0x08088C5C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2D
	.byte	0xBE
	.byte	0x5A
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x32
	.byte	0x7F
	.byte	0xB0
	.byte	0xEF
	.byte	0xA0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088C70
gUnknown_08088C70:	@ 0x08088C70
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	168		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088C70_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088C90_1
gUnknown_08088C90_1:	@ 0x08088C7C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2E
	.byte	0xBE
	.byte	0x4B
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x2C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB0
	.byte	0xB0
	.byte	0xA8
	.byte	0xCE
	.byte	0x98
	.byte	0xB1

	.align 2
	.global gUnknown_08088C90
gUnknown_08088C90:	@ 0x08088C90
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	168		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088C90_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088CAC_1
gUnknown_08088CAC_1:	@ 0x08088C9C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2F
	.byte	0xBE
	.byte	0x4B
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088CAC
gUnknown_08088CAC:	@ 0x08088CAC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	148		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088CAC_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088CCC_1
gUnknown_08088CCC_1:	@ 0x08088CB8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x33
	.byte	0xBE
	.byte	0x73
	.byte	0xBF
	.byte	0x40
	.byte	0xCF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0x98
	.byte	0xCE
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global gUnknown_08088CCC
gUnknown_08088CCC:	@ 0x08088CCC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	148		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088CCC_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088CE8_1
gUnknown_08088CE8_1:	@ 0x08088CD8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x34
	.byte	0xBE
	.byte	0x46
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088CE8
gUnknown_08088CE8:	@ 0x08088CE8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088CE8_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088D04_1
gUnknown_08088D04_1:	@ 0x08088CF4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2C
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088D04
gUnknown_08088D04:	@ 0x08088D04
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088D04_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088D20_1
gUnknown_08088D20_1:	@ 0x08088D10
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2C
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088D20
gUnknown_08088D20:	@ 0x08088D20
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088D20_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088D3C_1
gUnknown_08088D3C_1:	@ 0x08088D2C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2C
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088D3C
gUnknown_08088D3C:	@ 0x08088D3C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088D3C_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088D58_1
gUnknown_08088D58_1:	@ 0x08088D48
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2C
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088D58
gUnknown_08088D58:	@ 0x08088D58
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088D58_1		@ track

	@********************** Track  1 **********************@

	.align 2
	.global gUnknown_08088D74_1
gUnknown_08088D74_1:	@ 0x08088D64
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x3C
	.byte	0xBD
	.byte	0x2C
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global gUnknown_08088D74
gUnknown_08088D74:	@ 0x08088D74
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	127		@ priority
	.byte	128		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	gUnknown_08088D74_1		@ track

	.align 2
	.global gUnknown_08088D80
gUnknown_08088D80:
	.incbin "sound/direct_sound_samples/08088D80.bin"

	.align 2
	.global gUnknown_0808960C
gUnknown_0808960C:
	.incbin "sound/direct_sound_samples/0808960C.bin"

	.align 2
	.global gUnknown_0808987C
gUnknown_0808987C:
	.incbin "sound/direct_sound_samples/0808987C.bin"

	.align 2
	.global gUnknown_08094214
gUnknown_08094214:
	.incbin "sound/direct_sound_samples/08094214.bin"

	.align 2
	.global gUnknown_0809FDC8
gUnknown_0809FDC8:
	.incbin "sound/direct_sound_samples/0809FDC8.bin"

	.align 2
	.global gUnknown_080A30D4
gUnknown_080A30D4:
	.incbin "sound/direct_sound_samples/080A30D4.bin"

	.align 2
	.global gUnknown_080A3794
gUnknown_080A3794:
	.incbin "sound/direct_sound_samples/080A3794.bin"

	.align 2
	.global gUnknown_080A3F98
gUnknown_080A3F98:
	.incbin "sound/direct_sound_samples/080A3F98.bin"

	.align 2
	.global gUnknown_080A4858
gUnknown_080A4858:
	.incbin "sound/direct_sound_samples/080A4858.bin"

	.align 2
	.global gUnknown_080AA22C
gUnknown_080AA22C:
	.incbin "sound/direct_sound_samples/080AA22C.bin"

	.align 2
	.global gUnknown_080B0730
gUnknown_080B0730:
	.incbin "sound/direct_sound_samples/080B0730.bin"

	.align 2
	.global gUnknown_080B5928
gUnknown_080B5928:
	.incbin "sound/direct_sound_samples/080B5928.bin"

	.align 2
	.global gUnknown_080BAB20
gUnknown_080BAB20:
	.incbin "sound/direct_sound_samples/080BAB20.bin"

	.align 2
	.global gUnknown_080BF52C
gUnknown_080BF52C:
	.incbin "sound/direct_sound_samples/080BF52C.bin"

	.align 2
	.global gUnknown_080C4724
gUnknown_080C4724:
	.incbin "sound/direct_sound_samples/080C4724.bin"

	.align 2
	.global gUnknown_080C7498
gUnknown_080C7498:
	.incbin "sound/direct_sound_samples/080C7498.bin"

	.align 2
	.global gUnknown_080C77B8
gUnknown_080C77B8:
	.incbin "sound/direct_sound_samples/080C77B8.bin"

	.align 2
	.global gUnknown_080C7A9C
gUnknown_080C7A9C:
	.incbin "sound/direct_sound_samples/080C7A9C.bin"

	.align 2
	.global gUnknown_080CB030
gUnknown_080CB030:
	.incbin "sound/direct_sound_samples/080CB030.bin"

	.align 2
	.global gUnknown_080CE918
gUnknown_080CE918:
	.incbin "sound/direct_sound_samples/080CE918.bin"

	.align 2
	.global gUnknown_080D0968
gUnknown_080D0968:
	.incbin "sound/direct_sound_samples/080D0968.bin"

	.align 2
	.global gUnknown_080D2378
gUnknown_080D2378:
	.incbin "sound/direct_sound_samples/080D2378.bin"

	.align 2
	.global gUnknown_080D5768
gUnknown_080D5768:
	.incbin "sound/direct_sound_samples/080D5768.bin"

	.align 2
	.global gUnknown_080D8BE8
gUnknown_080D8BE8:
	.incbin "sound/direct_sound_samples/080D8BE8.bin"

	.align 2
	.global gUnknown_080DCFF8
gUnknown_080DCFF8:
	.incbin "sound/direct_sound_samples/080DCFF8.bin"

	.align 2
	.global gUnknown_080DF28C
gUnknown_080DF28C:
	.incbin "sound/direct_sound_samples/080DF28C.bin"

	.align 2
	.global gUnknown_080E1204
gUnknown_080E1204:
	.incbin "sound/direct_sound_samples/080E1204.bin"

	.align 2
	.global gUnknown_080E3CDC
gUnknown_080E3CDC:
	.incbin "sound/direct_sound_samples/080E3CDC.bin"

	.align 2
	.global gUnknown_080EA830
gUnknown_080EA830:
	.incbin "sound/direct_sound_samples/080EA830.bin"

	.align 2
	.global gUnknown_080EE6C4
gUnknown_080EE6C4:
	.incbin "sound/direct_sound_samples/080EE6C4.bin"

	.align 2
	.global gUnknown_080F01E4
gUnknown_080F01E4:
	.incbin "sound/direct_sound_samples/080F01E4.bin"

	.align 2
	.global gUnknown_080F0F44
gUnknown_080F0F44:
	.incbin "sound/direct_sound_samples/080F0F44.bin"

	.align 2
	.global gUnknown_080F36E8
gUnknown_080F36E8:
	.incbin "sound/direct_sound_samples/080F36E8.bin"

	.align 2
	.global gUnknown_080F4288
gUnknown_080F4288:
	.incbin "sound/direct_sound_samples/080F4288.bin"

	.align 2
	.global gUnknown_080F6F34
gUnknown_080F6F34:
	.incbin "sound/direct_sound_samples/080F6F34.bin"

	.align 2
	.global gUnknown_080FD0C8
gUnknown_080FD0C8:
	.incbin "sound/direct_sound_samples/080FD0C8.bin"

	.align 2
	.global gUnknown_08100A1C
gUnknown_08100A1C:
	.incbin "sound/direct_sound_samples/08100A1C.bin"

	.align 2
	.global gUnknown_08100C8C
gUnknown_08100C8C:
	.incbin "sound/direct_sound_samples/08100C8C.bin"

	.align 2
	.global gUnknown_08100EFC
gUnknown_08100EFC:
	.incbin "sound/direct_sound_samples/08100EFC.bin"

	.align 2
	.global gUnknown_0810116C
gUnknown_0810116C:
	.incbin "sound/direct_sound_samples/0810116C.bin"

	.align 2
	.global gUnknown_081013DC
gUnknown_081013DC:
	.incbin "sound/direct_sound_samples/081013DC.bin"

	.align 2
	.global gUnknown_0810164C
gUnknown_0810164C:
	.incbin "sound/direct_sound_samples/0810164C.bin"

	.align 2
	.global gUnknown_081018BC
gUnknown_081018BC:
	.incbin "sound/direct_sound_samples/081018BC.bin"

	.align 2
	.global gUnknown_08101B2C
gUnknown_08101B2C:
	.incbin "sound/direct_sound_samples/08101B2C.bin"

	.align 2
	.global gUnknown_08101D9C
gUnknown_08101D9C:
	.incbin "sound/direct_sound_samples/08101D9C.bin"

	.align 2
	.global gUnknown_0810200C
gUnknown_0810200C:
	.incbin "sound/direct_sound_samples/0810200C.bin"

	.align 2
	.global gUnknown_0810503C
gUnknown_0810503C:
	.incbin "sound/direct_sound_samples/0810503C.bin"

	.align 2
	.global gUnknown_0810CBD8
gUnknown_0810CBD8:
	.incbin "sound/direct_sound_samples/0810CBD8.bin"

	.align 2
	.global gUnknown_0810FB58
gUnknown_0810FB58:
	.incbin "sound/direct_sound_samples/0810FB58.bin"

	.align 2
	.global gUnknown_0810FDC8
gUnknown_0810FDC8:
	.incbin "sound/direct_sound_samples/0810FDC8.bin"

	.align 2
	.global gUnknown_08110808
gUnknown_08110808:
	.incbin "sound/direct_sound_samples/08110808.bin"

	.align 2
	.global gUnknown_08111228
gUnknown_08111228:
	.incbin "sound/direct_sound_samples/08111228.bin"

	.align 2
	.global gUnknown_0811A444
gUnknown_0811A444:
	.incbin "sound/direct_sound_samples/0811A444.bin"
