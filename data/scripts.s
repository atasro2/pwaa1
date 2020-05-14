	.section .data
    .include "asm/macros.inc"

    .global common_scripts @ uncompressed
common_scripts:
    .incbin "baserom.gba", 0x00749428, 0xDEC
    
    .global scenario_0_script
scenario_0_script:
    .incbin "baserom.gba", 0x0074A214, 0x5A28
    
    .global scenario_1_0_script
scenario_1_0_script:
    .incbin "baserom.gba", 0x0074FC3C, 0x64BC
    
    .global scenario_1_1_script
scenario_1_1_script:
    .incbin "baserom.gba", 0x007560F8, 0x80fc ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global scenario_1_2_script
scenario_1_2_script:
    .incbin "baserom.gba", 0x0075E1F4, 0x6810
    
    .global scenario_1_3_script
scenario_1_3_script:
    .incbin "baserom.gba", 0x00764A04, 0x63E8
    
    .global scenario_2_0_script
scenario_2_0_script:
    .incbin "baserom.gba", 0x0076ADEC, 0x6068
    
    .global scenario_2_1_script
scenario_2_1_script:
    .incbin "baserom.gba", 0x00770E54, 0x5748
    
    .global scenario_2_2_script
scenario_2_2_script:
    .incbin "baserom.gba", 0x0077659C, 0x806c ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global scenario_2_3_script
scenario_2_3_script:
    .incbin "baserom.gba", 0x0077E608, 0x6f6c ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global scenario_2_4_script
scenario_2_4_script:
    .incbin "baserom.gba", 0x00785574, 0x512C
    
    .global scenario_2_5_script
scenario_2_5_script:
    .incbin "baserom.gba", 0x0078A6A0, 0x6114
    
    .global scenario_3_0_script
scenario_3_0_script:
    .incbin "baserom.gba", 0x007907B4, 0x8264 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global scenario_3_1_script
scenario_3_1_script:
    .incbin "baserom.gba", 0x00798A18, 0x75c8 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global scenario_3_2_script
scenario_3_2_script:
    .incbin "baserom.gba", 0x0079FFE0, 0x977c ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global scenario_3_3_script
scenario_3_3_script:
    .incbin "baserom.gba", 0x007A975C, 0x6bf4 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    .global scenario_3_4_script
scenario_3_4_script:
    .incbin "baserom.gba", 0x007B0350, 0x6E00

    .global scenario_3_5_script
scenario_3_5_script:
    .incbin "baserom.gba", 0x007B7150, 0xB88C ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
