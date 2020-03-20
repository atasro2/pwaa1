	.macro noop @ actually does something in code not sure what
	    .2byte 0
	.endm

    .macro linebreak
	    .2byte 0x1
	.endm

    .macro pagebreak
	    .2byte 0x2
	.endm

    .macro textcolor color
	    .2byte 0x3
        .2byte (\color)
	.endm

    .macro pause
	    .2byte 0x4
	.endm

    .macro music id, fadein
	    .2byte 0x5
        .2byte (\id)
        .2byte (\fadein)
	.endm

    .macro sound id, function
	    .2byte 0x6
        .if (\function) & ~0xFF
        .error "Invalid sound function (must be 0-255)"
        .endif
        .2byte ((\id << 8) | (\function))
	.endm

    .macro fullscreen_text
        .2byte 0x7
    .endm

    .macro finger_choice_2_args_jmp first_choice_section, second_choice_section
        .2byte 0x8
        .2byte ((first_choice_section) + 0x80)
        .2byte ((second_choice_section) + 0x80)
    .endm

    .macro finger_choice_3_args_jmp first_choice_section, second_choice_section, third_choice_section
        .2byte 0x9
        .2byte ((first_choice_section) + 0x80)
        .2byte ((second_choice_section) + 0x80)
        .2byte ((third_choice_section) + 0x80)
    .endm

    .macro rejmp script_section
        .2byte 0xA
        .2byte (\script_section)
    .endm

    .macro speed fpc @ arg is frame per character
        .2byte 0xB
        .2byte (\fpc)
    .endm

    .macro wait time @ time is in frames
        .2byte 0xC
        .2byte (\time)
    .endm

    .macro endjump
        .2byte 0xD
    .endm

    .macro name id
        .2byte 0xE
        .2byte ((\id) << 8)
    .endm

    .macro testimony_box testimony_num, flag
        .2byte 0xF
        .2byte (\testimony_num)
        .2byte (\flag)
    .endm

    .macro setflag flag, flagno, value
        .if (\flag) & ~0x7F
        .error "Invalid flag (must be 0-127)"
        .endif
        .if (\flagno) & ~7
        .error "Invalid flag number (must be 0-7)"
        .endif
        .if (\value) & ~0x1F
        .error "Invalid value (must be 0-31)"
        .endif
        .2byte 0x10
        .byte ((\flagno) << 5) | (\value)     @ these bytes here are read as a whole
        .byte (1 << 7) | (\flag)              @ u16 value in the code they aren't seperate
    .endm
    
    .macro clearflag flag, flagno, value
        .if (\flag) & ~0x7F
        .error "Invalid flag (must be 0-127)"
        .endif
        .if (\flagno) & ~7
        .error "Invalid flag number (must be 0-7)"
        .endif
        .if (\value) & ~0x1F
        .error "Invalid value (must be 0-31)"
        .endif
        .2byte 0x10
        .byte ((\flagno) << 5) | (\value)     @ these bytes here are read as a whole
        .byte (0 << 7) | (\flag)              @ u16 value in the code they aren't seperate
    .endm

    .macro evidence_window_plain
        .2byte 0x11
    .endm

    .macro fade type, time, speed, unkarg
        .2byte 0x12
        .if (\time) & ~0xFF
        .error "Invalid time (must be 0-255)"
        .endif
        .2byte ((\type << 8) | (\time))
        .2byte (\speed)
        .2byte (\unkarg)
    .endm
