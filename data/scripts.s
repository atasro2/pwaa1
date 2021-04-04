	.section script_data, "aw", %progbits
    .include "asm/macros.inc"

    .global std_scripts @ uncompressed
std_scripts:
    .incbin "script/std_scripts.phscr"
    
    .global scenario_0_script
scenario_0_script:
    .incbin "script/scenario_0_script.phscr.lz"
    
    .global scenario_1_0_script
scenario_1_0_script:
    .incbin "script/scenario_1_0_script.phscr.lz"
    
    .global scenario_1_1_script
scenario_1_1_script:
    .incbin "script/scenario_1_1_script.phscr.lz"
    
    .global scenario_1_2_script
scenario_1_2_script:
    .incbin "script/scenario_1_2_script.phscr.lz"
    
    .global scenario_1_3_script
scenario_1_3_script:
    .incbin "script/scenario_1_3_script.phscr.lz"
    
    .global scenario_2_0_script
scenario_2_0_script:
    .incbin "script/scenario_2_0_script.phscr.lz"
    
    .global scenario_2_1_script
scenario_2_1_script:
    .incbin "script/scenario_2_1_script.phscr.lz"
    
    .global scenario_2_2_script
scenario_2_2_script:
    .incbin "script/scenario_2_2_script.phscr.lz"
    
    .global scenario_2_3_script
scenario_2_3_script:
    .incbin "script/scenario_2_3_script.phscr.lz"
    
    .global scenario_2_4_script
scenario_2_4_script:
    .incbin "script/scenario_2_4_script.phscr.lz"
    
    .global scenario_2_5_script
scenario_2_5_script:
    .incbin "script/scenario_2_5_script.phscr.lz"
    
    .global scenario_3_0_script
scenario_3_0_script:
    .incbin "script/scenario_3_0_script.phscr.lz"
    
    .global scenario_3_1_script
scenario_3_1_script:
    .incbin "script/scenario_3_1_script.phscr.lz"
    
    .global scenario_3_2_script
scenario_3_2_script:
    .incbin "script/scenario_3_2_script.phscr.lz"
    
    .global scenario_3_3_script
scenario_3_3_script:
    .incbin "script/scenario_3_3_script.phscr.lz"
    
    .global scenario_3_4_script
scenario_3_4_script:
    .incbin "script/scenario_3_4_script.phscr.lz"

    .global scenario_3_5_script
scenario_3_5_script:
    .incbin "script/scenario_3_5_script.phscr.lz"
