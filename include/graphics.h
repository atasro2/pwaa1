#ifndef GUARD_GRAPHICS_H
#define GUARD_GRAPHICS_H

#ifndef NONMATCHING

#ifndef ROM_START
#define ROM_START 0x08000000 // why is this not already a fucking define 
#endif

#define GFX_BASE_ADDR (ROM_START + 0x180000)

#define gGfxPalTitleScreen ((u8*)(ROM_START + 0x180000))
#define gGfx8lzTitleScreen ((u8*)(ROM_START + 0x180200))
#define gGfxPalTitleScreenDemo ((u8*)(ROM_START + 0x182D08))
#define gGfx8lzTitleScreenDemo ((u8*)(ROM_START + 0x182F08))
#define gUnusedAsciiCharSet ((u8*)(ROM_START + 0x185D20))
#define gGfxPalEvidenceProfileDesc ((u8*)(GFX_BASE_ADDR + 0x6520))
#define gUnknown_08186540 ((u8*)(ROM_START + 0x186540))
#define gGfx4bppNametags ((u8*)(ROM_START + 0x187540))
#define gGfx4bppTestimonyArrows ((u8*)(GFX_BASE_ADDR + 0xBD40))
#define gGfx4bppTrialLife ((u8*)(GFX_BASE_ADDR + 0xC040))
#define gGfx4bppInvestigationActions ((u8*)(ROM_START + 0x18E4C0))
#define gGfx4bppControllerButtons ((u8*)(GFX_BASE_ADDR + 0xF4C0))
#define gGfx4bppInvestigationScrollButton ((u8*)(ROM_START + 0x18F6C0))
#define gGfx4bppTestimonyTextTiles ((u8*)(ROM_START + 0x18F8C0))
#define gUnknown_081900C0 ((u8*)(ROM_START + 0x1900C0))
#define gUnknown_081904C0 ((u8*)(GFX_BASE_ADDR + 0x104C0))
#define gUnknown_081906C0 ((u8*)(GFX_BASE_ADDR + 0x106C0))
#define gUnknown_081908C0 ((u8*)(ROM_START + 0x1908C0))
#define gUnknown_08190AC0 ((u8*)(ROM_START + 0x190AC0))
#define gUnknown_08190FC0 ((u8*)(ROM_START + 0x190FC0))
#define gUnknown_081911C0 ((u8*)(ROM_START + 0x1911C0))
#define gUnknown_081914A0 ((u8*)(ROM_START + 0x1914A0))
#define gUnknown_08191CA0 ((u8*)(ROM_START + 0x191CA0))
#define gUnknown_081924A0 ((u8*)(ROM_START + 0x1924A0))
#define gUnknown_08192CA0 ((u8*)(ROM_START + 0x192CA0))
#define gUnknown_08193CA0 ((u8*)(ROM_START + 0x193CA0))
#define gUnknown_081940A0 ((u8*)(ROM_START + 0x1940A0))
#define gUnknown_081940E0 ((u8*)(GFX_BASE_ADDR + 0x140E0))
#define gUnknown_08194200 ((u8*)(GFX_BASE_ADDR + 0x14200))
#define gUnknown_08194240 ((u8*)(GFX_BASE_ADDR + 0x14240))
#define gUnknown_08194260 ((u8*)(GFX_BASE_ADDR + 0x14260))
#define gUnknown_08194280 ((u8*)(ROM_START + 0x194280))
#define gUnknown_081942A0 ((u8*)(ROM_START + 0x1942A0))
#define gUnknown_081942C0 ((u8*)(GFX_BASE_ADDR + 0x142C0))
#define gUnknown_081944E0 ((u8*)(ROM_START + 0x1944E0))
#define gUnknown_08194500 ((u8*)(ROM_START + 0x194500))
#define gUnknown_08194520 ((u8*)(ROM_START + 0x194520))
#define gUnknown_08194540 ((u8*)(ROM_START + 0x194540))
#define gUnknown_08194560 ((u8*)(ROM_START + 0x194560))
#define gUnknown_08194580 ((u8*)(ROM_START + 0x194580))
#define gUnknown_08194640 ((u8*)(ROM_START + 0x194640))
#define gUnknown_081946C0 ((u8*)(ROM_START + 0x1946C0))
#define gUnknown_081954A8 ((u8*)(ROM_START + 0x1954A8))
#define gUnknown_081964A8 ((u8*)(ROM_START + 0x1964A8))
#define gUnknown_08196CA8 ((u8*)(ROM_START + 0x196CA8))
#define gUnknown_081970DC ((u8*)(ROM_START + 0x1970DC))
#define gUnknown_08197514 ((u8*)(ROM_START + 0x197514))
#define gUnknown_08197928 ((u8*)(ROM_START + 0x197928))
#define gUnknown_08197D18 ((u8*)(ROM_START + 0x197D18))
#define gUnknown_081981A0 ((u8*)(ROM_START + 0x1981A0))
#define gUnknown_081985D8 ((u8*)(ROM_START + 0x1985D8))
#define gUnknown_08198A84 ((u8*)(ROM_START + 0x198A84))
#define gUnknown_08198E5C ((u8*)(ROM_START + 0x198E5C))
#define gUnknown_08199228 ((u8*)(ROM_START + 0x199228))
#define gUnknown_08199690 ((u8*)(ROM_START + 0x199690))
#define gUnknown_08199AEC ((u8*)(ROM_START + 0x199AEC))
#define gUnknown_08199EC8 ((u8*)(ROM_START + 0x199EC8))
#define gUnknown_0819A2E4 ((u8*)(ROM_START + 0x19A2E4))
#define gUnknown_0819A700 ((u8*)(ROM_START + 0x19A700))
#define gUnknown_0819ABBC ((u8*)(ROM_START + 0x19ABBC))
#define gUnknown_0819B028 ((u8*)(ROM_START + 0x19B028))
#define gUnknown_0819B428 ((u8*)(ROM_START + 0x19B428))
#define gUnknown_0819B868 ((u8*)(ROM_START + 0x19B868))
#define gUnknown_0819BCE4 ((u8*)(ROM_START + 0x19BCE4))
#define gUnknown_0819C0D8 ((u8*)(ROM_START + 0x19C0D8))
#define gUnknown_0819C434 ((u8*)(ROM_START + 0x19C434))
#define gUnknown_0819C810 ((u8*)(ROM_START + 0x19C810))
#define gUnknown_0819CC44 ((u8*)(ROM_START + 0x19CC44))
#define gUnknown_0819D028 ((u8*)(ROM_START + 0x19D028))
#define gUnknown_0819D4C8 ((u8*)(ROM_START + 0x19D4C8))
#define gUnknown_0819D90C ((u8*)(ROM_START + 0x19D90C))
#define gUnknown_0819DDAC ((u8*)(ROM_START + 0x19DDAC))
#define gUnknown_0819E18C ((u8*)(ROM_START + 0x19E18C))
#define gUnknown_0819E5A0 ((u8*)(ROM_START + 0x19E5A0))
#define gUnknown_0819E9D8 ((u8*)(ROM_START + 0x19E9D8))
#define gUnknown_0819EDF0 ((u8*)(ROM_START + 0x19EDF0))
#define gUnknown_0819F208 ((u8*)(ROM_START + 0x19F208))
#define gUnknown_0819F5C0 ((u8*)(ROM_START + 0x19F5C0))
#define gUnknown_0819F9E8 ((u8*)(ROM_START + 0x19F9E8))
#define gUnknown_0819FD84 ((u8*)(ROM_START + 0x19FD84))
#define gUnknown_081A0120 ((u8*)(ROM_START + 0x1A0120))
#define gUnknown_081A0580 ((u8*)(ROM_START + 0x1A0580))
#define gUnknown_081A09E4 ((u8*)(ROM_START + 0x1A09E4))
#define gUnknown_081A0E58 ((u8*)(ROM_START + 0x1A0E58))
#define gUnknown_081A1324 ((u8*)(ROM_START + 0x1A1324))
#define gUnknown_081A1728 ((u8*)(ROM_START + 0x1A1728))
#define gUnknown_081A1A10 ((u8*)(ROM_START + 0x1A1A10))
#define gUnknown_081A1E1C ((u8*)(ROM_START + 0x1A1E1C))
#define gUnknown_081A22A4 ((u8*)(ROM_START + 0x1A22A4))
#define gUnknown_081A26BC ((u8*)(ROM_START + 0x1A26BC))
#define gUnknown_081A2AE4 ((u8*)(ROM_START + 0x1A2AE4))
#define gUnknown_081A2EE4 ((u8*)(ROM_START + 0x1A2EE4))
#define gUnknown_081A3330 ((u8*)(ROM_START + 0x1A3330))
#define gUnknown_081A3714 ((u8*)(ROM_START + 0x1A3714))
#define gUnknown_081A3B44 ((u8*)(ROM_START + 0x1A3B44))
#define gUnknown_081A3FF8 ((u8*)(ROM_START + 0x1A3FF8))
#define gUnknown_081A439C ((u8*)(ROM_START + 0x1A439C))
#define gUnknown_081A47D4 ((u8*)(ROM_START + 0x1A47D4))
#define gUnknown_081A4BD4 ((u8*)(ROM_START + 0x1A4BD4))
#define gUnknown_081A4FF0 ((u8*)(ROM_START + 0x1A4FF0))
#define gUnknown_081A541C ((u8*)(ROM_START + 0x1A541C))
#define gUnknown_081A5828 ((u8*)(ROM_START + 0x1A5828))
#define gUnknown_081A5BF4 ((u8*)(ROM_START + 0x1A5BF4))
#define gUnknown_081A5FA4 ((u8*)(ROM_START + 0x1A5FA4))
#define gUnknown_081A639C ((u8*)(ROM_START + 0x1A639C))
#define gUnknown_081A675C ((u8*)(ROM_START + 0x1A675C))
#define gUnknown_081A6B88 ((u8*)(ROM_START + 0x1A6B88))
#define gUnknown_081A6F68 ((u8*)(ROM_START + 0x1A6F68))
#define gUnknown_081A7310 ((u8*)(ROM_START + 0x1A7310))
#define gUnknown_081A775C ((u8*)(ROM_START + 0x1A775C))
#define gUnknown_081A7B68 ((u8*)(ROM_START + 0x1A7B68))
#define gUnknown_081A7FA4 ((u8*)(ROM_START + 0x1A7FA4))
#define gUnknown_081A83C4 ((u8*)(ROM_START + 0x1A83C4))
#define gUnknown_081A8828 ((u8*)(ROM_START + 0x1A8828))
#define gUnknown_081A8C30 ((u8*)(ROM_START + 0x1A8C30))
#define gUnknown_081A8F4C ((u8*)(ROM_START + 0x1A8F4C))
#define gUnknown_081A9380 ((u8*)(ROM_START + 0x1A9380))
#define gUnknown_081A97CC ((u8*)(ROM_START + 0x1A97CC))
#define gUnknown_081A9BC8 ((u8*)(ROM_START + 0x1A9BC8))
#define gUnknown_081AA054 ((u8*)(ROM_START + 0x1AA054))
#define gUnknown_081AA458 ((u8*)(ROM_START + 0x1AA458))
#define gUnknown_081AA894 ((u8*)(ROM_START + 0x1AA894))
#define gUnknown_081AACDC ((u8*)(ROM_START + 0x1AACDC))
#define gUnknown_081AB178 ((u8*)(ROM_START + 0x1AB178))
#define gUnknown_081AB574 ((u8*)(ROM_START + 0x1AB574))
#define gUnknown_081AB9FC ((u8*)(ROM_START + 0x1AB9FC))
#define gUnknown_081ABE00 ((u8*)(ROM_START + 0x1ABE00))
#define gUnknown_081AC2B0 ((u8*)(ROM_START + 0x1AC2B0))
#define gUnknown_081AC75C ((u8*)(ROM_START + 0x1AC75C))
#define gUnknown_081ACBFC ((u8*)(ROM_START + 0x1ACBFC))
#define gUnknown_081AD02C ((u8*)(ROM_START + 0x1AD02C))
#define gUnknown_081AD448 ((u8*)(ROM_START + 0x1AD448))
#define gUnknown_081AD864 ((u8*)(ROM_START + 0x1AD864))
#define gUnknown_081ADCD4 ((u8*)(ROM_START + 0x1ADCD4))
#define gUnknown_081AE0DC ((u8*)(ROM_START + 0x1AE0DC))
#define gUnknown_081AE4FC ((u8*)(ROM_START + 0x1AE4FC))
#define gUnknown_081AE938 ((u8*)(ROM_START + 0x1AE938))
#define gUnknown_081AED3C ((u8*)(ROM_START + 0x1AED3C))
#define gUnknown_081AF15C ((u8*)(ROM_START + 0x1AF15C))
#define gUnknown_081AF5A8 ((u8*)(ROM_START + 0x1AF5A8))
#define gUnknown_081AF9DC ((u8*)(ROM_START + 0x1AF9DC))
#define gUnknown_081AFE0C ((u8*)(ROM_START + 0x1AFE0C))
#define gUnknown_081B01D0 ((u8*)(ROM_START + 0x1B01D0))
#define gUnknown_081B0594 ((u8*)(ROM_START + 0x1B0594))
#define gUnknown_081B0984 ((u8*)(ROM_START + 0x1B0984))
#define gUnknown_081B0DC4 ((u8*)(ROM_START + 0x1B0DC4))
#define gUnknown_081B1150 ((u8*)(ROM_START + 0x1B1150))
#define gUnknown_081B14EC ((u8*)(ROM_START + 0x1B14EC))
#define gUnknown_081B18C0 ((u8*)(ROM_START + 0x1B18C0))
#define gUnknown_081B1CBC ((u8*)(ROM_START + 0x1B1CBC))
#define gUnknown_081B2150 ((u8*)(ROM_START + 0x1B2150))
#define gUnknown_081B25F0 ((u8*)(ROM_START + 0x1B25F0))

#define gUnknown_081B290C ((u8*)(GFX_BASE_ADDR + 0x3290C))

//~ extern u8 gTextPal[0x20];
#define gTextPal ((u8*)(ROM_START + 0x1d310c))
#define gCharSet ((u8*)(GFX_BASE_ADDR + 0x5312C))

#define gGfxPalChoiceSelected ((u8*)(ROM_START + 0x1FD92C))
#define gGfxPalChoiceGreyedOut ((u8*)(ROM_START + 0x1FD94C))
	
#define gUnknown_081FD96C ((u8*)(ROM_START + 0x1FD96C))
#define gUnknown_081FE16C ((u8*)(ROM_START + 0x1FE16C))
#define gUnknown_081FE96C ((u8*)(ROM_START + 0x1FE96C))
#define gUnknown_081FF16C ((u8*)(ROM_START + 0x1FF16C))
#define gUnknown_081FF96C ((u8*)(ROM_START + 0x1FF96C))
#define gUnknown_0820016C ((u8*)(ROM_START + 0x20016C))
#define gUnknown_0820096C ((u8*)(ROM_START + 0x20096C))
#define gUnknown_0820116C ((u8*)(ROM_START + 0x20116C))
#define gUnknown_0820196C ((u8*)(ROM_START + 0x20196C))
#define gUnknown_0820216C ((u8*)(ROM_START + 0x20216C))
#define gUnknown_0820296C ((u8*)(ROM_START + 0x20296C))
#define gUnknown_0820316C ((u8*)(ROM_START + 0x20316C))
#define gUnknown_0820396C ((u8*)(ROM_START + 0x20396C))
#define gUnknown_0820416C ((u8*)(ROM_START + 0x20416C))
#define gUnknown_0820496C ((u8*)(ROM_START + 0x20496C))
#define gUnknown_0820516C ((u8*)(ROM_START + 0x20516C))
#define gUnknown_0820596C ((u8*)(ROM_START + 0x20596C))
#define gUnknown_0820616C ((u8*)(ROM_START + 0x20616C))
#define gUnknown_0820696C ((u8*)(ROM_START + 0x20696C))
#define gUnknown_0820716C ((u8*)(ROM_START + 0x20716C))
#define gUnknown_0820796C ((u8*)(ROM_START + 0x20796C))
#define gUnknown_0820816C ((u8*)(ROM_START + 0x20816C))
#define gUnknown_0820896C ((u8*)(ROM_START + 0x20896C))
#define gUnknown_0820916C ((u8*)(ROM_START + 0x20916C))
#define gUnknown_0820996C ((u8*)(ROM_START + 0x20996C))
#define gUnknown_0820A16C ((u8*)(ROM_START + 0x20A16C))
#define gUnknown_0820A96C ((u8*)(ROM_START + 0x20A96C))
#define gUnknown_0820B16C ((u8*)(ROM_START + 0x20B16C))
#define gUnknown_0820B96C ((u8*)(ROM_START + 0x20B96C))
#define gUnknown_0820C16C ((u8*)(ROM_START + 0x20C16C))
#define gUnknown_0820C96C ((u8*)(ROM_START + 0x20C96C))
#define gUnknown_0820D16C ((u8*)(ROM_START + 0x20D16C))
#define gUnknown_0820D96C ((u8*)(ROM_START + 0x20D96C))
#define gUnknown_0820E16C ((u8*)(ROM_START + 0x20E16C))
#define gUnknown_0820E96C ((u8*)(ROM_START + 0x20E96C))
#define gUnknown_0820F16C ((u8*)(ROM_START + 0x20F16C))
#define gUnknown_0820F96C ((u8*)(ROM_START + 0x20F96C))
#define gUnknown_0821016C ((u8*)(ROM_START + 0x21016C))
#define gUnknown_0821096C ((u8*)(ROM_START + 0x21096C))
#define gUnknown_0821116C ((u8*)(ROM_START + 0x21116C))
#define gUnknown_0821196C ((u8*)(ROM_START + 0x21196C))
#define gUnknown_0821216C ((u8*)(ROM_START + 0x21216C))
#define gUnknown_0821296C ((u8*)(ROM_START + 0x21296C))
#define gUnknown_0821316C ((u8*)(ROM_START + 0x21316C))
#define gUnknown_0821396C ((u8*)(ROM_START + 0x21396C))
#define gUnknown_0821416C ((u8*)(ROM_START + 0x21416C))
#define gUnknown_0821496C ((u8*)(ROM_START + 0x21496C))
#define gUnknown_0821516C ((u8*)(ROM_START + 0x21516C))
#define gUnknown_0821596C ((u8*)(ROM_START + 0x21596C))
#define gUnknown_0821616C ((u8*)(ROM_START + 0x21616C))
#define gUnknown_0821696C ((u8*)(ROM_START + 0x21696C))
#define gUnknown_0821716C ((u8*)(ROM_START + 0x21716C))
#define gUnknown_0821796C ((u8*)(ROM_START + 0x21796C))
#define gUnknown_0821816C ((u8*)(ROM_START + 0x21816C))
#define gUnknown_0821896C ((u8*)(ROM_START + 0x21896C))
#define gUnknown_0821916C ((u8*)(ROM_START + 0x21916C))
#define gUnknown_0821996C ((u8*)(ROM_START + 0x21996C))
#define gUnknown_0821A16C ((u8*)(ROM_START + 0x21A16C))
#define gUnknown_0821A96C ((u8*)(ROM_START + 0x21A96C))
#define gUnknown_0821B16C ((u8*)(ROM_START + 0x21B16C))
#define gUnknown_0821B96C ((u8*)(ROM_START + 0x21B96C))
#define gUnknown_0821C16C ((u8*)(ROM_START + 0x21C16C))
#define gUnknown_0821C96C ((u8*)(ROM_START + 0x21C96C))
#define gUnknown_0821D16C ((u8*)(ROM_START + 0x21D16C))
#define gUnknown_0821D96C ((u8*)(ROM_START + 0x21D96C))
#define gUnknown_0821E16C ((u8*)(ROM_START + 0x21E16C))
#define gUnknown_0821E96C ((u8*)(ROM_START + 0x21E96C))
#define gUnknown_0821F16C ((u8*)(ROM_START + 0x21F16C))
#define gUnknown_0821F96C ((u8*)(ROM_START + 0x21F96C))
#define gUnknown_0822016C ((u8*)(ROM_START + 0x22016C))
#define gUnknown_0822096C ((u8*)(ROM_START + 0x22096C))
#define gUnknown_0822116C ((u8*)(ROM_START + 0x22116C))
#define gUnknown_0822196C ((u8*)(ROM_START + 0x22196C))
#define gUnknown_0822216C ((u8*)(ROM_START + 0x22216C))
#define gUnknown_0822296C ((u8*)(ROM_START + 0x22296C))
#define gUnknown_0822316C ((u8*)(ROM_START + 0x22316C))
#define gUnknown_0822396C ((u8*)(ROM_START + 0x22396C))
#define gUnknown_0822416C ((u8*)(ROM_START + 0x22416C))
#define gUnknown_0822496C ((u8*)(ROM_START + 0x22496C))
#define gUnknown_0822516C ((u8*)(ROM_START + 0x22516C))
#define gUnknown_0822596C ((u8*)(ROM_START + 0x22596C))
#define gUnknown_0822616C ((u8*)(ROM_START + 0x22616C))
#define gUnknown_0822696C ((u8*)(ROM_START + 0x22696C))
#define gUnknown_0822716C ((u8*)(ROM_START + 0x22716C))
#define gUnknown_0822796C ((u8*)(ROM_START + 0x22796C))
#define gUnknown_0822816C ((u8*)(ROM_START + 0x22816C))
#define gUnknown_0822896C ((u8*)(ROM_START + 0x22896C))
#define gUnknown_0822916C ((u8*)(ROM_START + 0x22916C))
#define gUnknown_0822996C ((u8*)(ROM_START + 0x22996C))
#define gUnknown_0822A16C ((u8*)(ROM_START + 0x22A16C))
#define gUnknown_0822A96C ((u8*)(ROM_START + 0x22A96C))
#define gUnknown_0822B16C ((u8*)(ROM_START + 0x22B16C))
#define gUnknown_0822B96C ((u8*)(ROM_START + 0x22B96C))
#define gUnknown_0822C16C ((u8*)(ROM_START + 0x22C16C))
#define gUnknown_0822C96C ((u8*)(ROM_START + 0x22C96C))
#define gUnknown_0822D16C ((u8*)(ROM_START + 0x22D16C))
#define gUnknown_0822D96C ((u8*)(ROM_START + 0x22D96C))
#define gUnknown_0822E16C ((u8*)(ROM_START + 0x22E16C))
#define gUnknown_0822E96C ((u8*)(ROM_START + 0x22E96C))
#define gUnknown_0822F16C ((u8*)(ROM_START + 0x22F16C))
#define gUnknown_0822F96C ((u8*)(ROM_START + 0x22F96C))
#define gUnknown_0823016C ((u8*)(ROM_START + 0x23016C))
#define gUnknown_0823096C ((u8*)(ROM_START + 0x23096C))
#define gUnknown_0823116C ((u8*)(ROM_START + 0x23116C))
#define gUnknown_0823196C ((u8*)(ROM_START + 0x23196C))
#define gUnknown_0823216C ((u8*)(ROM_START + 0x23216C))
#define gUnknown_0823296C ((u8*)(ROM_START + 0x23296C))
#define gUnknown_0823316C ((u8*)(ROM_START + 0x23316C))
#define gUnknown_0823396C ((u8*)(ROM_START + 0x23396C))
#define gUnknown_0823416C ((u8*)(ROM_START + 0x23416C))
#define gUnknown_0823496C ((u8*)(ROM_START + 0x23496C))
#define gUnknown_0823516C ((u8*)(ROM_START + 0x23516C))
#define gUnknown_0823596C ((u8*)(ROM_START + 0x23596C))
#define gUnknown_0823616C ((u8*)(ROM_START + 0x23616C))
#define gUnknown_0823696C ((u8*)(ROM_START + 0x23696C))
#define gUnknown_0823716C ((u8*)(ROM_START + 0x23716C))
#define gUnknown_0823796C ((u8*)(ROM_START + 0x23796C))
#define gUnknown_0823816C ((u8*)(ROM_START + 0x23816C))
#define gUnknown_0823896C ((u8*)(ROM_START + 0x23896C))
#define gUnknown_0823916C ((u8*)(ROM_START + 0x23916C))
#define gUnknown_0823996C ((u8*)(ROM_START + 0x23996C))
#define gUnknown_0823A16C ((u8*)(ROM_START + 0x23A16C))
#define gUnknown_0823A96C ((u8*)(ROM_START + 0x23A96C))
#define gUnknown_0823B16C ((u8*)(ROM_START + 0x23B16C))
#define gUnknown_0823B96C ((u8*)(ROM_START + 0x23B96C))
#define gUnknown_0823C16C ((u8*)(ROM_START + 0x23C16C))
#define gUnknown_0823C96C ((u8*)(ROM_START + 0x23C96C))
#define gUnknown_0823D16C ((u8*)(ROM_START + 0x23D16C))
#define gUnknown_0823D96C ((u8*)(ROM_START + 0x23D96C))
#define gUnknown_0823E16C ((u8*)(ROM_START + 0x23E16C))
#define gUnknown_0823E96C ((u8*)(ROM_START + 0x23E96C))
#define gUnknown_0823F16C ((u8*)(ROM_START + 0x23F16C))
#define gUnknown_0823F96C ((u8*)(ROM_START + 0x23F96C))
#define gUnknown_0824016C ((u8*)(ROM_START + 0x24016C))
#define gUnknown_0824096C ((u8*)(ROM_START + 0x24096C))
#define gUnknown_0824116C ((u8*)(ROM_START + 0x24116C))
#define gUnknown_0824196C ((u8*)(ROM_START + 0x24196C))
#define gUnknown_0824216C ((u8*)(ROM_START + 0x24216C))
#define gUnknown_0824296C ((u8*)(ROM_START + 0x24296C))
#define gUnknown_0824316C ((u8*)(ROM_START + 0x24316C))
#define gUnknown_0824396C ((u8*)(ROM_START + 0x24396C))
#define gUnknown_0824416C ((u8*)(ROM_START + 0x24416C))
#define gUnknown_0824496C ((u8*)(ROM_START + 0x24496C))
#define gUnknown_0824516C ((u8*)(ROM_START + 0x24516C))
#define gUnknown_0824596C ((u8*)(ROM_START + 0x24596C))
#define gUnknown_0824616C ((u8*)(ROM_START + 0x24616C))
#define gUnknown_0824696C ((u8*)(ROM_START + 0x24696C))
#define gUnknown_0824698C ((u8*)(ROM_START + 0x24698C))
#define gUnknown_08246A0C ((u8*)(ROM_START + 0x246A0C))
#define gUnknown_08246A8C ((u8*)(ROM_START + 0x246A8C))
#define gUnknown_08246E8C ((u8*)(ROM_START + 0x246E8C))
#define gUnknown_08246ECC ((u8*)(ROM_START + 0x246ECC))
#define gUnknown_082476CC ((u8*)(ROM_START + 0x2476CC))
#define gUnknown_08247ECC ((u8*)(ROM_START + 0x247ECC))
#define gUnknown_082486CC ((u8*)(ROM_START + 0x2486CC))
#define gUnknown_0824874C ((u8*)(ROM_START + 0x24874C))
#define gUnknown_0824884C ((u8*)(ROM_START + 0x24884C))
#define gUnknown_082488CC ((u8*)(ROM_START + 0x2488CC))
#define gUnknown_0824890C ((u8*)(ROM_START + 0x24890C))
#define gUnknown_08248B0C ((u8*)(ROM_START + 0x248B0C))
#define gUnknown_08248C0C ((u8*)(ROM_START + 0x248C0C))
#define gGfx_BG000 ((u8*)(ROM_START + 0x248C4C))
#define gGfx_BG001 ((u8*)(ROM_START + 0x25280C))
#define gGfx_BG002 ((u8*)(ROM_START + 0x257F28))
#define gGfx_BG003 ((u8*)(ROM_START + 0x25CCCC))
#define gGfx_BG004 ((u8*)(ROM_START + 0x25EF64))
#define gGfx_BG005 ((u8*)(ROM_START + 0x2610F0))
#define gGfx_BG006 ((u8*)(ROM_START + 0x263898))
#define gGfx_BG007 ((u8*)(ROM_START + 0x26B6DC))
#define gGfx_BG008 ((u8*)(ROM_START + 0x271DE8))
#define gGfx_BG009 ((u8*)(ROM_START + 0x278824))
#define gGfx_BG010 ((u8*)(ROM_START + 0x27CEEC))
#define gGfx_BG011 ((u8*)(ROM_START + 0x282870))
#define gGfx_BG012 ((u8*)(ROM_START + 0x288AE0))
#define gGfx_BG013 ((u8*)(ROM_START + 0x291ADC))
#define gGfx_BG014 ((u8*)(ROM_START + 0x293DC0))
#define gGfx_BG015 ((u8*)(ROM_START + 0x296138))
#define gGfx_BG016 ((u8*)(ROM_START + 0x296E28))
#define gGfx_BG017 ((u8*)(ROM_START + 0x29A23C))
#define gGfx_BG018 ((u8*)(ROM_START + 0x29E7A4))
#define gGfx_BG019 ((u8*)(ROM_START + 0x2A3BA8))
#define gGfx_BG020 ((u8*)(ROM_START + 0x2A8E3C))
#define gGfx_BG021 ((u8*)(ROM_START + 0x2AE378))
#define gGfx_BG022 ((u8*)(ROM_START + 0x2B6B78))
#define gGfx_BG023 ((u8*)(ROM_START + 0x2BDC88))
#define gGfx_BG024 ((u8*)(ROM_START + 0x2BFC24))
#define gGfx_BG025 ((u8*)(ROM_START + 0x2C5020))
#define gGfx_BG026 ((u8*)(ROM_START + 0x2C9600))
#define gGfx_BG027 ((u8*)(ROM_START + 0x2CE308))
#define gGfx_BG028 ((u8*)(ROM_START + 0x2D1A90))
#define gGfx_BG029 ((u8*)(ROM_START + 0x2D79EC))
#define gGfx_BG030 ((u8*)(ROM_START + 0x2D8974))
#define gGfx_BG031 ((u8*)(ROM_START + 0x2DC188))
#define gGfx_BG032 ((u8*)(ROM_START + 0x2E1FA4))
#define gGfx_BG033 ((u8*)(ROM_START + 0x2E6BBC))
#define gGfx_BG034 ((u8*)(ROM_START + 0x2EB2B8))
#define gGfx_BG035 ((u8*)(ROM_START + 0x2EF904))
#define gGfx_BG036 ((u8*)(ROM_START + 0x2F7D4C))
#define gGfx_BG037 ((u8*)(ROM_START + 0x2FAF44))
#define gGfx_BG038 ((u8*)(ROM_START + 0x2FE610))
#define gGfx_BG039 ((u8*)(ROM_START + 0x3022F0))
#define gGfx_BG040 ((u8*)(ROM_START + 0x3081E4))
#define gGfx_BG041 ((u8*)(ROM_START + 0x30D2D8))
#define gGfx_BG042 ((u8*)(ROM_START + 0x31002C))
#define gGfx_BG043 ((u8*)(ROM_START + 0x312664))
#define gGfx_BG044 ((u8*)(ROM_START + 0x314F8C))
#define gGfx_BG045 ((u8*)(ROM_START + 0x31E8E0))
#define gGfx_BG046 ((u8*)(ROM_START + 0x31F624))
#define gGfx_BG047 ((u8*)(ROM_START + 0x320328))
#define gGfx_BG048 ((u8*)(ROM_START + 0x3230C0))
#define gGfx_BG049 ((u8*)(ROM_START + 0x323EDC))
#define gGfx_BG050 ((u8*)(ROM_START + 0x327074))
#define gGfx_BG051 ((u8*)(ROM_START + 0x32AFB8))
#define gGfx_BG052 ((u8*)(ROM_START + 0x32E7B0))
#define gGfx_BG053 ((u8*)(ROM_START + 0x331B38))
#define gGfx_BG054 ((u8*)(ROM_START + 0x335A58))
#define gGfx_BG055 ((u8*)(ROM_START + 0x339144))
#define gGfx_BG056 ((u8*)(ROM_START + 0x33DC0C))
#define gGfx_BG057 ((u8*)(ROM_START + 0x33F720))
#define gGfx_BG058 ((u8*)(ROM_START + 0x342908))
#define gGfx_BG059 ((u8*)(ROM_START + 0x34863C))
#define gGfx_BG060 ((u8*)(ROM_START + 0x34F218))
#define gGfx_BG061 ((u8*)(ROM_START + 0x35699C))
#define gGfx_BG062 ((u8*)(ROM_START + 0x357870))
#define gGfx_BG063 ((u8*)(ROM_START + 0x35ABD8))
	
#define gGfx_BG064 ((u8*)(ROM_START + 0x360834))
#define gUnknown_08360854 ((u16*)(ROM_START + 0x360854))
#define gUnknown_08360D04 ((u8*)(ROM_START + 0x360D04))
#define gGfx_BG065 ((u8*)(ROM_START + 0x362524))
#define gUnknown_08362544 ((u16*)(ROM_START + 0x362544))
#define gUnknown_083629F4 ((u8*)(ROM_START + 0x3629F4))
#define gGfx_BG066 ((u8*)(ROM_START + 0x364794))
#define gGfx_BG067 ((u8*)(ROM_START + 0x365640))
#define gGfx_BG068 ((u8*)(ROM_START + 0x368BC4))
#define gGfx_BG069 ((u8*)(GFX_BASE_ADDR + 0x1E9890))
#define gGfx_BG070 ((u8*)(ROM_START + 0x36B924))
#define gGfx_BG071 ((u8*)(ROM_START + 0x372D2C))
#define gGfx_BG072 ((u8*)(ROM_START + 0x37920C))
#define gGfx_BG073 ((u8*)(ROM_START + 0x37E52C))
#define gGfx_BG074 ((u8*)(GFX_BASE_ADDR + 0x2099C4))
#define gGfx_BG075 ((u8*)(ROM_START + 0x38A6F4))
#define gGfx_BG076 ((u8*)(ROM_START + 0x38B364))
#define gGfx_BG077 ((u8*)(ROM_START + 0x38D370))
#define gGfx_BG078 ((u8*)(ROM_START + 0x392118))
#define gGfx_BG079 ((u8*)(ROM_START + 0x396EB0))
#define gGfx_BG080 ((u8*)(ROM_START + 0x39CD04))
#define gGfx_BG081 ((u8*)(ROM_START + 0x3A3504))
#define gGfx_BG082 ((u8*)(ROM_START + 0x3A6934))
#define gGfx_BG083 ((u8*)(ROM_START + 0x3A7790))
#define gGfx_BG084 ((u8*)(ROM_START + 0x3A8648))
#define gGfx_BG085 ((u8*)(ROM_START + 0x3A9514))
#define gGfx_BG086 ((u8*)(ROM_START + 0x3AFCC8))
#define gGfx_BG087 ((u8*)(ROM_START + 0x3B0A94))
#define gGfx_BG088 ((u8*)(ROM_START + 0x3B3724))
#define gGfx_BG089 ((u8*)(ROM_START + 0x3B6C8C))
#define gGfx_BG090 ((u8*)(ROM_START + 0x3BF1BC))
#define gGfx_BG091 ((u8*)(ROM_START + 0x3C3724))
#define gGfx_BG092 ((u8*)(ROM_START + 0x3C7654))
#define gGfx_BG093 ((u8*)(ROM_START + 0x3CB0BC))
#define gGfx_BG094 ((u8*)(ROM_START + 0x3D27A8))
#define gGfx_BG095 ((u8*)(ROM_START + 0x3D5E64))
#define gGfx_BG096 ((u8*)(ROM_START + 0x3DAAC0))
#define gGfx_BG097 ((u8*)(ROM_START + 0x3E1514))
#define gGfx_BG098 ((u8*)(ROM_START + 0x3E74E8))
#define gGfx_BG099 ((u8*)(ROM_START + 0x3EAB84))
#define gGfx_BG100 ((u8*)(ROM_START + 0x3EEAC0))
#define gGfx_BG101 ((u8*)(ROM_START + 0x3F2BA4))
#define gGfx_BG102 ((u8*)(ROM_START + 0x3F6C48))
#define gGfx_BG103 ((u8*)(ROM_START + 0x3FB1D4))
#define gGfx_BG104 ((u8*)(ROM_START + 0x3FD8D4))
#define gGfx_BG105 ((u8*)(ROM_START + 0x4037F8))
#define gGfx_BG106 ((u8*)(ROM_START + 0x40AC3C))
#define gGfx_BG107 ((u8*)(ROM_START + 0x40D3C8))
#define gGfx_BG108 ((u8*)(ROM_START + 0x40F8C0))
#define gGfx_BG109 ((u8*)(ROM_START + 0x41B0F4))
#define gGfx_BG110 ((u8*)(ROM_START + 0x41BD7C))
#define gGfx_BG111 ((u8*)(ROM_START + 0x41EFC4))
#define gUnknown_08427608 ((u8*)(ROM_START + 0x427608))
	
#define gGfxCourtscroll01 ((u8*)(ROM_START + 0x427D88))
#define gGfxCourtscroll02 ((u8*)(ROM_START + 0x472F88))
#define gGfxCourtscroll03 ((u8*)(ROM_START + 0x4BE188))

#define gGfxPixAnimationChar01 ((u8*)(ROM_START + 0x509388))
#define gGfxSeqAnimationChar01 ((u8*)(ROM_START + 0x532B84))
#define gGfxPixAnimationChar02 ((u8*)(ROM_START + 0x536720))
#define gGfxSeqAnimationChar02 ((u8*)(ROM_START + 0x555EF4))
#define gGfxPixAnimationChar03 ((u8*)(ROM_START + 0x55DCE4))
#define gGfxSeqAnimationChar03 ((u8*)(ROM_START + 0x569D8C))
#define gGfxPixAnimationChar04 ((u8*)(ROM_START + 0x56C438))
#define gGfxSeqAnimationChar04 ((u8*)(ROM_START + 0x575EC0))
#define gGfxPixAnimationChar05 ((u8*)(ROM_START + 0x577ADC))
#define gGfxSeqAnimationChar05 ((u8*)(ROM_START + 0x57CA00))
#define gGfxPixAnimationChar06 ((u8*)(ROM_START + 0x57D794))
#define gGfxSeqAnimationChar06 ((u8*)(ROM_START + 0x5B76BC))
#define gGfxPixAnimationChar07 ((u8*)(ROM_START + 0x5C2C94))
#define gGfxSeqAnimationChar07 ((u8*)(ROM_START + 0x5E3388))
#define gGfxPixAnimationChar08 ((u8*)(ROM_START + 0x5E8A48))
#define gGfxSeqAnimationChar08 ((u8*)(ROM_START + 0x60EF60))
#define gGfxPixAnimationChar09 ((u8*)(ROM_START + 0x612014))
#define gGfxSeqAnimationChar09 ((u8*)(ROM_START + 0x62057C))
#define gGfxPixAnimationChar10 ((u8*)(ROM_START + 0x622F20))
#define gGfxSeqAnimationChar10 ((u8*)(ROM_START + 0x626564))
#define gGfxPixAnimationChar11 ((u8*)(ROM_START + 0x626AD0))
#define gGfxSeqAnimationChar11 ((u8*)(ROM_START + 0x62ADB4))
#define gGfxPixAnimationChar12 ((u8*)(ROM_START + 0x62BA68))
#define gGfxSeqAnimationChar12 ((u8*)(ROM_START + 0x651F00))
#define gGfxPixAnimationChar13 ((u8*)(ROM_START + 0x65787C))
#define gGfxSeqAnimationChar13 ((u8*)(ROM_START + 0x66E26C))
#define gGfxPixAnimationChar14 ((u8*)(ROM_START + 0x670494))
#define gGfxSeqAnimationChar14 ((u8*)(ROM_START + 0x675038))
#define gGfxPixAnimationChar15 ((u8*)(ROM_START + 0x6758CC))
#define gGfxSeqAnimationChar15 ((u8*)(ROM_START + 0x67EAB4))
#define gGfxPixAnimationChar16 ((u8*)(ROM_START + 0x6812FC))
#define gGfxSeqAnimationChar16 ((u8*)(ROM_START + 0x6851E0))
#define gGfxPixAnimationChar17 ((u8*)(ROM_START + 0x685AEC))
#define gGfxSeqAnimationChar17 ((u8*)(ROM_START + 0x68FCF4))
#define gGfxPixAnimationChar18 ((u8*)(ROM_START + 0x691040))
#define gGfxSeqAnimationChar18 ((u8*)(ROM_START + 0x6A146C))
#define gGfxPixAnimationChar19 ((u8*)(ROM_START + 0x6A3A80))
#define gGfxSeqAnimationChar19 ((u8*)(ROM_START + 0x6B0EA8))
#define gGfxPixAnimationChar20 ((u8*)(ROM_START + 0x6B4504))
#define gGfxSeqAnimationChar20 ((u8*)(ROM_START + 0x6C4B90))
#define gGfxPixAnimationChar21 ((u8*)(ROM_START + 0x6C7128))
#define gGfxSeqAnimationChar21 ((u8*)(ROM_START + 0x6C9ECC))
#define gGfxPixAnimationChar22 ((u8*)(ROM_START + 0x6CA0FC))
#define gGfxSeqAnimationChar22 ((u8*)(ROM_START + 0x6CCA60))
#define gGfxPixAnimationChar23 ((u8*)(ROM_START + 0x6CCD04))
#define gGfxSeqAnimationChar23 ((u8*)(ROM_START + 0x6D7AEC))
#define gGfxPixAnimationChar24 ((u8*)(ROM_START + 0x6DA640))
#define gGfxSeqAnimationChar24 ((u8*)(ROM_START + 0x6EF710))
#define gGfxPixAnimationChar25 ((u8*)(ROM_START + 0x6F328C))
#define gGfxSeqAnimationChar25 ((u8*)(ROM_START + 0x7195C8))
#define gGfxPixAnimationChar26 ((u8*)(ROM_START + 0x71CF30))
#define gGfxSeqAnimationChar26 ((u8*)(ROM_START + 0x71E9F4))

#define gGfxPixAnimationTileset01 ((u8*)(GFX_BASE_ADDR + 0x59EBBC))
#define gGfxSeqAnimation01 ((u8*)(GFX_BASE_ADDR + 0x59FCF4))

#define gGfxSeqAnimation02 ((u8*)(ROM_START + 0x71FD14))
#define gGfxSeqAnimation03 ((u8*)(ROM_START + 0x71FD60))
#define gGfxSeqAnimation04 ((u8*)(ROM_START + 0x71FD80))
#define gGfxSeqAnimation05 ((u8*)(ROM_START + 0x71FDAC))
#define gGfxSeqAnimation06 ((u8*)(ROM_START + 0x71FDD0))

#define gGfxPixAnimationTileset02 ((u8*)(GFX_BASE_ADDR + 0x59FDF8))
#define gGfxSeqAnimation07 ((u8*)(GFX_BASE_ADDR + 0x5C8218))

#define gGfxSeqAnimation08 ((u8*)(ROM_START + 0x748340))
#define gGfxSeqAnimation09 ((u8*)(ROM_START + 0x748468))
#define gGfxSeqAnimation10 ((u8*)(ROM_START + 0x748488))
#define gGfxSeqAnimation11 ((u8*)(ROM_START + 0x7484A8))
#define gGfxSeqAnimation12 ((u8*)(ROM_START + 0x7484C8))
#define gGfxSeqAnimation13 ((u8*)(ROM_START + 0x7484E8))
#define gGfxSeqAnimation14 ((u8*)(ROM_START + 0x748520))
#define gGfxSeqAnimation15 ((u8*)(ROM_START + 0x748558))
#define gGfxSeqAnimation16 ((u8*)(ROM_START + 0x748590))
#define gGfxSeqAnimation17 ((u8*)(ROM_START + 0x7485C0))
#define gGfxSeqAnimation18 ((u8*)(ROM_START + 0x7485F4))
#define gGfxSeqAnimation19 ((u8*)(ROM_START + 0x748684))
#define gGfxSeqAnimation20 ((u8*)(ROM_START + 0x748774))
#define gGfxSeqAnimation21 ((u8*)(ROM_START + 0x748AB4))
#define gGfxSeqAnimation22 ((u8*)(ROM_START + 0x748AEC))
#define gGfxSeqAnimation23 ((u8*)(ROM_START + 0x748B24))
#define gGfxSeqAnimation24 ((u8*)(ROM_START + 0x748C38))
#define gGfxSeqAnimation25 ((u8*)(ROM_START + 0x748CA0))
#define gGfxSeqAnimation26 ((u8*)(ROM_START + 0x748D74))
#define gGfxSeqAnimation27 ((u8*)(ROM_START + 0x748D98))
#define gGfxSeqAnimation28 ((u8*)(ROM_START + 0x748DB8))
#define gGfxSeqAnimation29 ((u8*)(ROM_START + 0x748E0C))
#define gGfxSeqAnimation30 ((u8*)(ROM_START + 0x748EE4))
#define gGfxSeqAnimation31 ((u8*)(ROM_START + 0x748F44))
#define gGfxSeqAnimation32 ((u8*)(ROM_START + 0x748F80))
#define gGfxSeqAnimation33 ((u8*)(ROM_START + 0x748FA4))
#define gGfxSeqAnimation34 ((u8*)(ROM_START + 0x748FDC))
#define gGfxSeqAnimation35 ((u8*)(ROM_START + 0x749000))
#define gGfxSeqAnimation36 ((u8*)(ROM_START + 0x749044))
#define gGfxSeqAnimation37 ((u8*)(ROM_START + 0x7490B0))
#define gGfxSeqAnimation38 ((u8*)(ROM_START + 0x74911C))
#define gGfxSeqAnimation39 ((u8*)(ROM_START + 0x749158))
#define gGfxSeqAnimation40 ((u8*)(ROM_START + 0x749194))
#define gGfxSeqAnimation41 ((u8*)(ROM_START + 0x7491C4))
#define gGfxSeqAnimation42 ((u8*)(ROM_START + 0x7491EC))
#define gGfxSeqAnimation43 ((u8*)(ROM_START + 0x749210))
#define gGfxSeqAnimation44 ((u8*)(ROM_START + 0x749240))
#define gGfxSeqAnimation45 ((u8*)(ROM_START + 0x749268))
#define gGfxSeqAnimation46 ((u8*)(ROM_START + 0x749290))
#define gGfxSeqAnimation47 ((u8*)(ROM_START + 0x7492C0))
#define gGfxSeqAnimation48 ((u8*)(ROM_START + 0x749314))
#define gGfxSeqAnimation49 ((u8*)(ROM_START + 0x749334))
#define gGfxSeqAnimation50 ((u8*)(ROM_START + 0x749360))
#define gGfxSeqAnimation51 ((u8*)(ROM_START + 0x749384))
#define gGfxSeqAnimation52 ((u8*)(ROM_START + 0x7493A8))
#define gGfxSeqAnimation53 ((u8*)(ROM_START + 0x7493D4))
#define gGfxSeqAnimation54 ((u8*)(ROM_START + 0x749404))

#else
extern u8 gGfxPalTitleScreen[];
extern u8 gGfx8lzTitleScreen[];
extern u8 gGfxPalTitleScreenDemo[];
extern u8 gGfx8lzTitleScreenDemo[];
extern u8 gUnusedAsciiCharSet[];
extern u8 gGfxPalEvidenceProfileDesc[];
extern u8 gUnknown_08186540[];
extern u8 gGfx4bppNametags[];
extern u8 gGfx4bppTestimonyArrows[];
extern u8 gGfx4bppTrialLife[];
extern u8 gGfx4bppInvestigationActions[];
extern u8 gGfx4bppControllerButtons[];
extern u8 gGfx4bppInvestigationScrollButton[];
extern u8 gGfx4bppTestimonyTextTiles[];
extern u8 gUnknown_081900C0[];
extern u8 gUnknown_081904C0[];
extern u8 gUnknown_081906C0[];
extern u8 gUnknown_081908C0[];
extern u8 gUnknown_08190AC0[];
extern u8 gUnknown_08190FC0[];
extern u8 gUnknown_081911C0[];
extern u8 gUnknown_081914A0[];
extern u8 gUnknown_08191CA0[];
extern u8 gUnknown_081924A0[];
extern u8 gUnknown_08192CA0[];
extern u8 gUnknown_08193CA0[];
extern u8 gUnknown_081940A0[];
extern u8 gUnknown_081940E0[];
extern u8 gUnknown_08194200[];
extern u8 gUnknown_08194240[];
extern u8 gUnknown_08194260[];
extern u8 gUnknown_08194280[];
extern u8 gUnknown_081942A0[];
extern u8 gUnknown_081942C0[];
extern u8 gUnknown_081944E0[];
extern u8 gUnknown_08194500[];
extern u8 gUnknown_08194520[];
extern u8 gUnknown_08194540[];
extern u8 gUnknown_08194560[];
extern u8 gUnknown_08194580[];
extern u8 gUnknown_08194640[];
extern u8 gUnknown_081946C0[];
extern u8 gUnknown_081954A8[];
extern u8 gUnknown_081964A8[];
extern u8 gUnknown_08196CA8[];
extern u8 gUnknown_081970DC[];
extern u8 gUnknown_08197514[];
extern u8 gUnknown_08197928[];
extern u8 gUnknown_08197D18[];
extern u8 gUnknown_081981A0[];
extern u8 gUnknown_081985D8[];
extern u8 gUnknown_08198A84[];
extern u8 gUnknown_08198E5C[];
extern u8 gUnknown_08199228[];
extern u8 gUnknown_08199690[];
extern u8 gUnknown_08199AEC[];
extern u8 gUnknown_08199EC8[];
extern u8 gUnknown_0819A2E4[];
extern u8 gUnknown_0819A700[];
extern u8 gUnknown_0819ABBC[];
extern u8 gUnknown_0819B028[];
extern u8 gUnknown_0819B428[];
extern u8 gUnknown_0819B868[];
extern u8 gUnknown_0819BCE4[];
extern u8 gUnknown_0819C0D8[];
extern u8 gUnknown_0819C434[];
extern u8 gUnknown_0819C810[];
extern u8 gUnknown_0819CC44[];
extern u8 gUnknown_0819D028[];
extern u8 gUnknown_0819D4C8[];
extern u8 gUnknown_0819D90C[];
extern u8 gUnknown_0819DDAC[];
extern u8 gUnknown_0819E18C[];
extern u8 gUnknown_0819E5A0[];
extern u8 gUnknown_0819E9D8[];
extern u8 gUnknown_0819EDF0[];
extern u8 gUnknown_0819F208[];
extern u8 gUnknown_0819F5C0[];
extern u8 gUnknown_0819F9E8[];
extern u8 gUnknown_0819FD84[];
extern u8 gUnknown_081A0120[];
extern u8 gUnknown_081A0580[];
extern u8 gUnknown_081A09E4[];
extern u8 gUnknown_081A0E58[];
extern u8 gUnknown_081A1324[];
extern u8 gUnknown_081A1728[];
extern u8 gUnknown_081A1A10[];
extern u8 gUnknown_081A1E1C[];
extern u8 gUnknown_081A22A4[];
extern u8 gUnknown_081A26BC[];
extern u8 gUnknown_081A2AE4[];
extern u8 gUnknown_081A2EE4[];
extern u8 gUnknown_081A3330[];
extern u8 gUnknown_081A3714[];
extern u8 gUnknown_081A3B44[];
extern u8 gUnknown_081A3FF8[];
extern u8 gUnknown_081A439C[];
extern u8 gUnknown_081A47D4[];
extern u8 gUnknown_081A4BD4[];
extern u8 gUnknown_081A4FF0[];
extern u8 gUnknown_081A541C[];
extern u8 gUnknown_081A5828[];
extern u8 gUnknown_081A5BF4[];
extern u8 gUnknown_081A5FA4[];
extern u8 gUnknown_081A639C[];
extern u8 gUnknown_081A675C[];
extern u8 gUnknown_081A6B88[];
extern u8 gUnknown_081A6F68[];
extern u8 gUnknown_081A7310[];
extern u8 gUnknown_081A775C[];
extern u8 gUnknown_081A7B68[];
extern u8 gUnknown_081A7FA4[];
extern u8 gUnknown_081A83C4[];
extern u8 gUnknown_081A8828[];
extern u8 gUnknown_081A8C30[];
extern u8 gUnknown_081A8F4C[];
extern u8 gUnknown_081A9380[];
extern u8 gUnknown_081A97CC[];
extern u8 gUnknown_081A9BC8[];
extern u8 gUnknown_081AA054[];
extern u8 gUnknown_081AA458[];
extern u8 gUnknown_081AA894[];
extern u8 gUnknown_081AACDC[];
extern u8 gUnknown_081AB178[];
extern u8 gUnknown_081AB574[];
extern u8 gUnknown_081AB9FC[];
extern u8 gUnknown_081ABE00[];
extern u8 gUnknown_081AC2B0[];
extern u8 gUnknown_081AC75C[];
extern u8 gUnknown_081ACBFC[];
extern u8 gUnknown_081AD02C[];
extern u8 gUnknown_081AD448[];
extern u8 gUnknown_081AD864[];
extern u8 gUnknown_081ADCD4[];
extern u8 gUnknown_081AE0DC[];
extern u8 gUnknown_081AE4FC[];
extern u8 gUnknown_081AE938[];
extern u8 gUnknown_081AED3C[];
extern u8 gUnknown_081AF15C[];
extern u8 gUnknown_081AF5A8[];
extern u8 gUnknown_081AF9DC[];
extern u8 gUnknown_081AFE0C[];
extern u8 gUnknown_081B01D0[];
extern u8 gUnknown_081B0594[];
extern u8 gUnknown_081B0984[];
extern u8 gUnknown_081B0DC4[];
extern u8 gUnknown_081B1150[];
extern u8 gUnknown_081B14EC[];
extern u8 gUnknown_081B18C0[];
extern u8 gUnknown_081B1CBC[];
extern u8 gUnknown_081B2150[];
extern u8 gUnknown_081B25F0[];
extern u8 gUnknown_081B290C[];
extern u8 gUnknown_081B290C_pal[];
extern u8 gUnknown_081B290C_gfx[];
extern u8 gUnknown_081B312C_pal[];
extern u8 gUnknown_081B312C_gfx[];
extern u8 gUnknown_081B394C_pal[];
extern u8 gUnknown_081B394C_gfx[];
extern u8 gUnknown_081B416C_pal[];
extern u8 gUnknown_081B416C_gfx[];
extern u8 gUnknown_081B498C_pal[];
extern u8 gUnknown_081B498C_gfx[];
extern u8 gUnknown_081B51AC_pal[];
extern u8 gUnknown_081B51AC_gfx[];
extern u8 gUnknown_081B59CC_pal[];
extern u8 gUnknown_081B59CC_gfx[];
extern u8 gUnknown_081B61EC_pal[];
extern u8 gUnknown_081B61EC_gfx[];
extern u8 gUnknown_081B6A0C_pal[];
extern u8 gUnknown_081B6A0C_gfx[];
extern u8 gUnknown_081B722C_pal[];
extern u8 gUnknown_081B722C_gfx[];
extern u8 gUnknown_081B7A4C_pal[];
extern u8 gUnknown_081B7A4C_gfx[];
extern u8 gUnknown_081B826C_pal[];
extern u8 gUnknown_081B826C_gfx[];
extern u8 gUnknown_081B8A8C_pal[];
extern u8 gUnknown_081B8A8C_gfx[];
extern u8 gUnknown_081B92AC_pal[];
extern u8 gUnknown_081B92AC_gfx[];
extern u8 gUnknown_081B9ACC_pal[];
extern u8 gUnknown_081B9ACC_gfx[];
extern u8 gUnknown_081BA2EC_pal[];
extern u8 gUnknown_081BA2EC_gfx[];
extern u8 gUnknown_081BAB0C_pal[];
extern u8 gUnknown_081BAB0C_gfx[];
extern u8 gUnknown_081BB32C_pal[];
extern u8 gUnknown_081BB32C_gfx[];
extern u8 gUnknown_081BBB4C_pal[];
extern u8 gUnknown_081BBB4C_gfx[];
extern u8 gUnknown_081BC36C_pal[];
extern u8 gUnknown_081BC36C_gfx[];
extern u8 gUnknown_081BCB8C_pal[];
extern u8 gUnknown_081BCB8C_gfx[];
extern u8 gUnknown_081BD3AC_pal[];
extern u8 gUnknown_081BD3AC_gfx[];
extern u8 gUnknown_081BDBCC_pal[];
extern u8 gUnknown_081BDBCC_gfx[];
extern u8 gUnknown_081BE3EC_pal[];
extern u8 gUnknown_081BE3EC_gfx[];
extern u8 gUnknown_081BEC0C_pal[];
extern u8 gUnknown_081BEC0C_gfx[];
extern u8 gUnknown_081BF42C_pal[];
extern u8 gUnknown_081BF42C_gfx[];
extern u8 gUnknown_081BFC4C_pal[];
extern u8 gUnknown_081BFC4C_gfx[];
extern u8 gUnknown_081C046C_pal[];
extern u8 gUnknown_081C046C_gfx[];
extern u8 gUnknown_081C0C8C_pal[];
extern u8 gUnknown_081C0C8C_gfx[];
extern u8 gUnknown_081C14AC_pal[];
extern u8 gUnknown_081C14AC_gfx[];
extern u8 gUnknown_081C1CCC_pal[];
extern u8 gUnknown_081C1CCC_gfx[];
extern u8 gUnknown_081C24EC_pal[];
extern u8 gUnknown_081C24EC_gfx[];
extern u8 gUnknown_081C2D0C_pal[];
extern u8 gUnknown_081C2D0C_gfx[];
extern u8 gUnknown_081C352C_pal[];
extern u8 gUnknown_081C352C_gfx[];
extern u8 gUnknown_081C3D4C_pal[];
extern u8 gUnknown_081C3D4C_gfx[];
extern u8 gUnknown_081C456C_pal[];
extern u8 gUnknown_081C456C_gfx[];
extern u8 gUnknown_081C4D8C_pal[];
extern u8 gUnknown_081C4D8C_gfx[];
extern u8 gUnknown_081C55AC_pal[];
extern u8 gUnknown_081C55AC_gfx[];
extern u8 gUnknown_081C5DCC_pal[];
extern u8 gUnknown_081C5DCC_gfx[];
extern u8 gUnknown_081C65EC_pal[];
extern u8 gUnknown_081C65EC_gfx[];
extern u8 gUnknown_081C6E0C_pal[];
extern u8 gUnknown_081C6E0C_gfx[];
extern u8 gUnknown_081C762C_pal[];
extern u8 gUnknown_081C762C_gfx[];
extern u8 gUnknown_081C7E4C_pal[];
extern u8 gUnknown_081C7E4C_gfx[];
extern u8 gUnknown_081C866C_pal[];
extern u8 gUnknown_081C866C_gfx[];
extern u8 gUnknown_081C8E8C_pal[];
extern u8 gUnknown_081C8E8C_gfx[];
extern u8 gUnknown_081C96AC_pal[];
extern u8 gUnknown_081C96AC_gfx[];
extern u8 gUnknown_081C9ECC_pal[];
extern u8 gUnknown_081C9ECC_gfx[];
extern u8 gUnknown_081CA6EC_pal[];
extern u8 gUnknown_081CA6EC_gfx[];
extern u8 gUnknown_081CAF0C_pal[];
extern u8 gUnknown_081CAF0C_gfx[];
extern u8 gUnknown_081CB72C_pal[];
extern u8 gUnknown_081CB72C_gfx[];
extern u8 gUnknown_081CBF4C_pal[];
extern u8 gUnknown_081CBF4C_gfx[];
extern u8 gUnknown_081CC76C_pal[];
extern u8 gUnknown_081CC76C_gfx[];
extern u8 gUnknown_081CCF8C_pal[];
extern u8 gUnknown_081CCF8C_gfx[];
extern u8 gUnknown_081CD7AC_pal[];
extern u8 gUnknown_081CD7AC_gfx[];
extern u8 gUnknown_081CDFCC_pal[];
extern u8 gUnknown_081CDFCC_gfx[];
extern u8 gUnknown_081CE7EC_pal[];
extern u8 gUnknown_081CE7EC_gfx[];
extern u8 gUnknown_081CF00C_pal[];
extern u8 gUnknown_081CF00C_gfx[];
extern u8 gUnknown_081CF82C_pal[];
extern u8 gUnknown_081CF82C_gfx[];
extern u8 gUnknown_081D004C_pal[];
extern u8 gUnknown_081D004C_gfx[];
extern u8 gUnknown_081D086C_pal[];
extern u8 gUnknown_081D086C_gfx[];
extern u8 gUnknown_081D108C_pal[];
extern u8 gUnknown_081D108C_gfx[];
extern u8 gUnknown_081D18AC_pal[];
extern u8 gUnknown_081D18AC_gfx[];
extern u8 gUnknown_081D20CC_pal[];
extern u8 gUnknown_081D20CC_gfx[];
extern u8 gUnknown_081D28EC_pal[];
extern u8 gUnknown_081D28EC_gfx[];
extern u8 gTextPal[];
extern u8 gCharSet[];  
extern u8 gGfxPalChoiceSelected[];
extern u8 gGfxPalChoiceGreyedOut[];
	
extern u8 gUnknown_081FD96C[];
extern u8 gUnknown_081FE16C[];
extern u8 gUnknown_081FE96C[];
extern u8 gUnknown_081FF16C[];
extern u8 gUnknown_081FF96C[];
extern u8 gUnknown_0820016C[];
extern u8 gUnknown_0820096C[];
extern u8 gUnknown_0820116C[];
extern u8 gUnknown_0820196C[];
extern u8 gUnknown_0820216C[];
extern u8 gUnknown_0820296C[];
extern u8 gUnknown_0820316C[];
extern u8 gUnknown_0820396C[];
extern u8 gUnknown_0820416C[];
extern u8 gUnknown_0820496C[];
extern u8 gUnknown_0820516C[];
extern u8 gUnknown_0820596C[];
extern u8 gUnknown_0820616C[];
extern u8 gUnknown_0820696C[];
extern u8 gUnknown_0820716C[];
extern u8 gUnknown_0820796C[];
extern u8 gUnknown_0820816C[];
extern u8 gUnknown_0820896C[];
extern u8 gUnknown_0820916C[];
extern u8 gUnknown_0820996C[];
extern u8 gUnknown_0820A16C[];
extern u8 gUnknown_0820A96C[];
extern u8 gUnknown_0820B16C[];
extern u8 gUnknown_0820B96C[];
extern u8 gUnknown_0820C16C[];
extern u8 gUnknown_0820C96C[];
extern u8 gUnknown_0820D16C[];
extern u8 gUnknown_0820D96C[];
extern u8 gUnknown_0820E16C[];
extern u8 gUnknown_0820E96C[];
extern u8 gUnknown_0820F16C[];
extern u8 gUnknown_0820F96C[];
extern u8 gUnknown_0821016C[];
extern u8 gUnknown_0821096C[];
extern u8 gUnknown_0821116C[];
extern u8 gUnknown_0821196C[];
extern u8 gUnknown_0821216C[];
extern u8 gUnknown_0821296C[];
extern u8 gUnknown_0821316C[];
extern u8 gUnknown_0821396C[];
extern u8 gUnknown_0821416C[];
extern u8 gUnknown_0821496C[];
extern u8 gUnknown_0821516C[];
extern u8 gUnknown_0821596C[];
extern u8 gUnknown_0821616C[];
extern u8 gUnknown_0821696C[];
extern u8 gUnknown_0821716C[];
extern u8 gUnknown_0821796C[];
extern u8 gUnknown_0821816C[];
extern u8 gUnknown_0821896C[];
extern u8 gUnknown_0821916C[];
extern u8 gUnknown_0821996C[];
extern u8 gUnknown_0821A16C[];
extern u8 gUnknown_0821A96C[];
extern u8 gUnknown_0821B16C[];
extern u8 gUnknown_0821B96C[];
extern u8 gUnknown_0821C16C[];
extern u8 gUnknown_0821C96C[];
extern u8 gUnknown_0821D16C[];
extern u8 gUnknown_0821D96C[];
extern u8 gUnknown_0821E16C[];
extern u8 gUnknown_0821E96C[];
extern u8 gUnknown_0821F16C[];
extern u8 gUnknown_0821F96C[];
extern u8 gUnknown_0822016C[];
extern u8 gUnknown_0822096C[];
extern u8 gUnknown_0822116C[];
extern u8 gUnknown_0822196C[];
extern u8 gUnknown_0822216C[];
extern u8 gUnknown_0822296C[];
extern u8 gUnknown_0822316C[];
extern u8 gUnknown_0822396C[];
extern u8 gUnknown_0822416C[];
extern u8 gUnknown_0822496C[];
extern u8 gUnknown_0822516C[];
extern u8 gUnknown_0822596C[];
extern u8 gUnknown_0822616C[];
extern u8 gUnknown_0822696C[];
extern u8 gUnknown_0822716C[];
extern u8 gUnknown_0822796C[];
extern u8 gUnknown_0822816C[];
extern u8 gUnknown_0822896C[];
extern u8 gUnknown_0822916C[];
extern u8 gUnknown_0822996C[];
extern u8 gUnknown_0822A16C[];
extern u8 gUnknown_0822A96C[];
extern u8 gUnknown_0822B16C[];
extern u8 gUnknown_0822B96C[];
extern u8 gUnknown_0822C16C[];
extern u8 gUnknown_0822C96C[];
extern u8 gUnknown_0822D16C[];
extern u8 gUnknown_0822D96C[];
extern u8 gUnknown_0822E16C[];
extern u8 gUnknown_0822E96C[];
extern u8 gUnknown_0822F16C[];
extern u8 gUnknown_0822F96C[];
extern u8 gUnknown_0823016C[];
extern u8 gUnknown_0823096C[];
extern u8 gUnknown_0823116C[];
extern u8 gUnknown_0823196C[];
extern u8 gUnknown_0823216C[];
extern u8 gUnknown_0823296C[];
extern u8 gUnknown_0823316C[];
extern u8 gUnknown_0823396C[];
extern u8 gUnknown_0823416C[];
extern u8 gUnknown_0823496C[];
extern u8 gUnknown_0823516C[];
extern u8 gUnknown_0823596C[];
extern u8 gUnknown_0823616C[];
extern u8 gUnknown_0823696C[];
extern u8 gUnknown_0823716C[];
extern u8 gUnknown_0823796C[];
extern u8 gUnknown_0823816C[];
extern u8 gUnknown_0823896C[];
extern u8 gUnknown_0823916C[];
extern u8 gUnknown_0823996C[];
extern u8 gUnknown_0823A16C[];
extern u8 gUnknown_0823A96C[];
extern u8 gUnknown_0823B16C[];
extern u8 gUnknown_0823B96C[];
extern u8 gUnknown_0823C16C[];
extern u8 gUnknown_0823C96C[];
extern u8 gUnknown_0823D16C[];
extern u8 gUnknown_0823D96C[];
extern u8 gUnknown_0823E16C[];
extern u8 gUnknown_0823E96C[];
extern u8 gUnknown_0823F16C[];
extern u8 gUnknown_0823F96C[];
extern u8 gUnknown_0824016C[];
extern u8 gUnknown_0824096C[];
extern u8 gUnknown_0824116C[];
extern u8 gUnknown_0824196C[];
extern u8 gUnknown_0824216C[];
extern u8 gUnknown_0824296C[];
extern u8 gUnknown_0824316C[];
extern u8 gUnknown_0824396C[];
extern u8 gUnknown_0824416C[];
extern u8 gUnknown_0824496C[];
extern u8 gUnknown_0824516C[];
extern u8 gUnknown_0824596C[];
extern u8 gUnknown_0824616C[];
extern u8 gUnknown_0824696C[];
extern u8 gUnknown_0824698C[];
extern u8 gUnknown_08246A0C[];
extern u8 gUnknown_08246A8C[];
extern u8 gUnknown_08246E8C[];
extern u8 gUnknown_08246ECC[];
extern u8 gUnknown_082476CC[];
extern u8 gUnknown_08247ECC[];
extern u8 gUnknown_082486CC[];
extern u8 gUnknown_0824874C[];
extern u8 gUnknown_0824884C[];
extern u8 gUnknown_082488CC[];
extern u8 gUnknown_0824890C[];
extern u8 gUnknown_08248B0C[];
extern u8 gUnknown_08248C0C[];
extern u8 gGfx_BG000[];
extern u8 gGfx_BG001[];
extern u8 gGfx_BG002[];
extern u8 gGfx_BG003[];
extern u8 gGfx_BG004[];
extern u8 gGfx_BG005[];
extern u8 gGfx_BG006[];
extern u8 gGfx_BG007[];
extern u8 gGfx_BG008[];
extern u8 gGfx_BG009[];
extern u8 gGfx_BG010[];
extern u8 gGfx_BG011[];
extern u8 gGfx_BG012[];
extern u8 gGfx_BG013[];
extern u8 gGfx_BG014[];
extern u8 gGfx_BG015[];
extern u8 gGfx_BG016[];
extern u8 gGfx_BG017[];
extern u8 gGfx_BG018[];
extern u8 gGfx_BG019[];
extern u8 gGfx_BG020[];
extern u8 gGfx_BG021[];
extern u8 gGfx_BG022[];
extern u8 gGfx_BG023[];
extern u8 gGfx_BG024[];
extern u8 gGfx_BG025[];
extern u8 gGfx_BG026[];
extern u8 gGfx_BG027[];
extern u8 gGfx_BG028[];
extern u8 gGfx_BG029[];
extern u8 gGfx_BG030[];
extern u8 gGfx_BG031[];
extern u8 gGfx_BG032[];
extern u8 gGfx_BG033[];
extern u8 gGfx_BG034[];
extern u8 gGfx_BG035[];
extern u8 gGfx_BG036[];
extern u8 gGfx_BG037[];
extern u8 gGfx_BG038[];
extern u8 gGfx_BG039[];
extern u8 gGfx_BG040[];
extern u8 gGfx_BG041[];
extern u8 gGfx_BG042[];
extern u8 gGfx_BG043[];
extern u8 gGfx_BG044[];
extern u8 gGfx_BG045[];
extern u8 gGfx_BG046[];
extern u8 gGfx_BG047[];
extern u8 gGfx_BG048[];
extern u8 gGfx_BG049[];
extern u8 gGfx_BG050[];
extern u8 gGfx_BG051[];
extern u8 gGfx_BG052[];
extern u8 gGfx_BG053[];
extern u8 gGfx_BG054[];
extern u8 gGfx_BG055[];
extern u8 gGfx_BG056[];
extern u8 gGfx_BG057[];
extern u8 gGfx_BG058[];
extern u8 gGfx_BG059[];
extern u8 gGfx_BG060[];
extern u8 gGfx_BG061[];
extern u8 gGfx_BG062[];
extern u8 gGfx_BG063[];
	
extern u8 gGfx_BG064[];
extern u8 gUnknown_08360854[];
extern u8 gUnknown_08360D04[];
extern u8 gGfx_BG065[];
extern u8 gUnknown_08362544[];
extern u8 gUnknown_083629F4[];
extern u8 gGfx_BG066[];
extern u8 gGfx_BG067[];
extern u8 gGfx_BG068[];
extern u8 gGfx_BG069[];
extern u8 gGfx_BG070[];
extern u8 gGfx_BG071[];
extern u8 gGfx_BG072[];
extern u8 gGfx_BG073[];
extern u8 gGfx_BG074[];
extern u8 gGfx_BG075[];
extern u8 gGfx_BG076[];
extern u8 gGfx_BG077[];
extern u8 gGfx_BG078[];
extern u8 gGfx_BG079[];
extern u8 gGfx_BG080[];
extern u8 gGfx_BG081[];
extern u8 gGfx_BG082[];
extern u8 gGfx_BG083[];
extern u8 gGfx_BG084[];
extern u8 gGfx_BG085[];
extern u8 gGfx_BG086[];
extern u8 gGfx_BG087[];
extern u8 gGfx_BG088[];
extern u8 gGfx_BG089[];
extern u8 gGfx_BG090[];
extern u8 gGfx_BG091[];
extern u8 gGfx_BG092[];
extern u8 gGfx_BG093[];
extern u8 gGfx_BG094[];
extern u8 gGfx_BG095[];
extern u8 gGfx_BG096[];
extern u8 gGfx_BG097[];
extern u8 gGfx_BG098[];
extern u8 gGfx_BG099[];
extern u8 gGfx_BG100[];
extern u8 gGfx_BG101[];
extern u8 gGfx_BG102[];
extern u8 gGfx_BG103[];
extern u8 gGfx_BG104[];
extern u8 gGfx_BG105[];
extern u8 gGfx_BG106[];
extern u8 gGfx_BG107[];
extern u8 gGfx_BG108[];
extern u8 gGfx_BG109[];
extern u8 gGfx_BG110[];
extern u8 gGfx_BG111[];
extern u8 gUnknown_08427608[];
	
extern u8 gGfxCourtscroll01[];
extern u8 gGfxCourtscroll02[];
extern u8 gGfxCourtscroll03[];

extern u8 gGfxPixAnimationChar01[];
extern u8 gGfxSeqAnimationChar01[];
extern u8 gGfxPixAnimationChar02[];
extern u8 gGfxSeqAnimationChar02[];
extern u8 gGfxPixAnimationChar03[];
extern u8 gGfxSeqAnimationChar03[];
extern u8 gGfxPixAnimationChar04[];
extern u8 gGfxSeqAnimationChar04[];
extern u8 gGfxPixAnimationChar05[];
extern u8 gGfxSeqAnimationChar05[];
extern u8 gGfxPixAnimationChar06[];
extern u8 gGfxSeqAnimationChar06[];
extern u8 gGfxPixAnimationChar07[];
extern u8 gGfxSeqAnimationChar07[];
extern u8 gGfxPixAnimationChar08[];
extern u8 gGfxSeqAnimationChar08[];
extern u8 gGfxPixAnimationChar09[];
extern u8 gGfxSeqAnimationChar09[];
extern u8 gGfxPixAnimationChar10[];
extern u8 gGfxSeqAnimationChar10[];
extern u8 gGfxPixAnimationChar11[];
extern u8 gGfxSeqAnimationChar11[];
extern u8 gGfxPixAnimationChar12[];
extern u8 gGfxSeqAnimationChar12[];
extern u8 gGfxPixAnimationChar13[];
extern u8 gGfxSeqAnimationChar13[];
extern u8 gGfxPixAnimationChar14[];
extern u8 gGfxSeqAnimationChar14[];
extern u8 gGfxPixAnimationChar15[];
extern u8 gGfxSeqAnimationChar15[];
extern u8 gGfxPixAnimationChar16[];
extern u8 gGfxSeqAnimationChar16[];
extern u8 gGfxPixAnimationChar17[];
extern u8 gGfxSeqAnimationChar17[];
extern u8 gGfxPixAnimationChar18[];
extern u8 gGfxSeqAnimationChar18[];
extern u8 gGfxPixAnimationChar19[];
extern u8 gGfxSeqAnimationChar19[];
extern u8 gGfxPixAnimationChar20[];
extern u8 gGfxSeqAnimationChar20[];
extern u8 gGfxPixAnimationChar21[];
extern u8 gGfxSeqAnimationChar21[];
extern u8 gGfxPixAnimationChar22[];
extern u8 gGfxSeqAnimationChar22[];
extern u8 gGfxPixAnimationChar23[];
extern u8 gGfxSeqAnimationChar23[];
extern u8 gGfxPixAnimationChar24[];
extern u8 gGfxSeqAnimationChar24[];
extern u8 gGfxPixAnimationChar25[];
extern u8 gGfxSeqAnimationChar25[];
extern u8 gGfxPixAnimationChar26[];
extern u8 gGfxSeqAnimationChar26[];
extern u8 gGfxPixAnimationTileset01[];
extern u8 gGfxSeqAnimation01[];
extern u8 gGfxSeqAnimation02[];
extern u8 gGfxSeqAnimation03[];
extern u8 gGfxSeqAnimation04[];
extern u8 gGfxSeqAnimation05[];
extern u8 gGfxSeqAnimation06[];
extern u8 gGfxPixAnimationTileset02[];
extern u8 gGfxSeqAnimation07[];
extern u8 gGfxSeqAnimation08[];
extern u8 gGfxSeqAnimation09[];
extern u8 gGfxSeqAnimation10[];
extern u8 gGfxSeqAnimation11[];
extern u8 gGfxSeqAnimation12[];
extern u8 gGfxSeqAnimation13[];
extern u8 gGfxSeqAnimation14[];
extern u8 gGfxSeqAnimation15[];
extern u8 gGfxSeqAnimation16[];
extern u8 gGfxSeqAnimation17[];
extern u8 gGfxSeqAnimation18[];
extern u8 gGfxSeqAnimation19[];
extern u8 gGfxSeqAnimation20[];
extern u8 gGfxSeqAnimation21[];
extern u8 gGfxSeqAnimation22[];
extern u8 gGfxSeqAnimation23[];
extern u8 gGfxSeqAnimation24[];
extern u8 gGfxSeqAnimation25[];
extern u8 gGfxSeqAnimation26[];
extern u8 gGfxSeqAnimation27[];
extern u8 gGfxSeqAnimation28[];
extern u8 gGfxSeqAnimation29[];
extern u8 gGfxSeqAnimation30[];
extern u8 gGfxSeqAnimation31[];
extern u8 gGfxSeqAnimation32[];
extern u8 gGfxSeqAnimation33[];
extern u8 gGfxSeqAnimation34[];
extern u8 gGfxSeqAnimation35[];
extern u8 gGfxSeqAnimation36[];
extern u8 gGfxSeqAnimation37[];
extern u8 gGfxSeqAnimation38[];
extern u8 gGfxSeqAnimation39[];
extern u8 gGfxSeqAnimation40[];
extern u8 gGfxSeqAnimation41[];
extern u8 gGfxSeqAnimation42[];
extern u8 gGfxSeqAnimation43[];
extern u8 gGfxSeqAnimation44[];
extern u8 gGfxSeqAnimation45[];
extern u8 gGfxSeqAnimation46[];
extern u8 gGfxSeqAnimation47[];
extern u8 gGfxSeqAnimation48[];
extern u8 gGfxSeqAnimation49[];
extern u8 gGfxSeqAnimation50[];
extern u8 gGfxSeqAnimation51[];
extern u8 gGfxSeqAnimation52[];
extern u8 gGfxSeqAnimation53[];
extern u8 gGfxSeqAnimation54[];
#endif


#endif