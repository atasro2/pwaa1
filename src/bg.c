#include "global.h"
#include "background.h"
#include "script.h"
#include "investigation.h"
#include "graphics.h"

// window_name_char_tbl
const u8 gNameTagTiles[24] = {
	0x54, 0x55, 0x56, 0x57, 0x58, 0x59, // top
    0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, // middle
	0x0a, 0x0b, 0x0b, 0x0b, 0x0b, 0x0c, // left side bottom tiles
    0x0d, 0x0b, 0x0b, 0x0b, 0x0b, 0x0e  // right side bottom tiles
};

// mess_window_char_tbl
const u8 gTextboxTiles[0x400] = { 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x02, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
	0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x03, 0x00, 0x00,
	0x06, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x07, 0x00, 0x00,
	0x06, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x07, 0x00, 0x00,
	0x06, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x07, 0x00, 0x00,
	0x06, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x07, 0x00, 0x00,
	0x04, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09,
	0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x05, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

};

const u16 gUnknown_08013F70[32 * 12] = {
	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0041, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0043, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x004a, 0x0000,
	0x0000, 0x0044, 0x1140, 0x1141, 0x1142, 0x1143, 0x1144, 0x1145, 0x1146, 0x1147, 0x0045, 0x00a0, 0x00a1, 0x00a2, 0x00a3, 0x00b0, 0x00b1, 0x00b2, 0x00b3, 0x00c0, 0x00c1, 0x00c2, 0x00c3, 0x00d0, 0x00d1, 0x00d2, 0x00d3, 0x00e0, 0x00e1, 0x00e2, 0x004b, 0x0000,
	0x0000, 0x0044, 0x1148, 0x1149, 0x114a, 0x114b, 0x114c, 0x114d, 0x114e, 0x114f, 0x0045, 0x00a4, 0x00a5, 0x00a6, 0x00a7, 0x00b4, 0x00b5, 0x00b6, 0x00b7, 0x00c4, 0x00c5, 0x00c6, 0x00c7, 0x00d4, 0x00d5, 0x00d6, 0x00d7, 0x00e4, 0x00e5, 0x00e6, 0x004b, 0x0000,
	0x0000, 0x0044, 0x1150, 0x1151, 0x1152, 0x1153, 0x1154, 0x1155, 0x1156, 0x1157, 0x0045, 0x00a8, 0x00a9, 0x00aa, 0x00ab, 0x00b8, 0x00b9, 0x00ba, 0x00bb, 0x00c8, 0x00c9, 0x00ca, 0x00cb, 0x00d8, 0x00d9, 0x00da, 0x00db, 0x00e8, 0x00e9, 0x00ea, 0x004b, 0x0000,
	0x0000, 0x0044, 0x1158, 0x1159, 0x115a, 0x115b, 0x115c, 0x115d, 0x115e, 0x115f, 0x0045, 0x00ac, 0x00ad, 0x00ae, 0x00af, 0x00bc, 0x00bd, 0x00be, 0x00bf, 0x00cc, 0x00cd, 0x00ce, 0x00cf, 0x00dc, 0x00dd, 0x00de, 0x00df, 0x00ec, 0x00ed, 0x00ee, 0x004b, 0x0000,
	0x0000, 0x0044, 0x1160, 0x1161, 0x1162, 0x1163, 0x1164, 0x1165, 0x1166, 0x1167, 0x0045, 0x00f0, 0x00f1, 0x00f2, 0x00f3, 0x0100, 0x0101, 0x0102, 0x0103, 0x0110, 0x0111, 0x0112, 0x0113, 0x0120, 0x0121, 0x0122, 0x0123, 0x0130, 0x0131, 0x0132, 0x004b, 0x0000,
	0x0000, 0x0044, 0x1168, 0x1169, 0x116a, 0x116b, 0x116c, 0x116d, 0x116e, 0x116f, 0x0045, 0x00f4, 0x00f5, 0x00f6, 0x00f7, 0x0104, 0x0105, 0x0106, 0x0107, 0x0114, 0x0115, 0x0116, 0x0117, 0x0124, 0x0125, 0x0126, 0x0127, 0x0134, 0x0135, 0x0136, 0x004b, 0x0000,
	0x0000, 0x0044, 0x1170, 0x1171, 0x1172, 0x1173, 0x1174, 0x1175, 0x1176, 0x1177, 0x0045, 0x00f8, 0x00f9, 0x00fa, 0x00fb, 0x0108, 0x0109, 0x010a, 0x010b, 0x0118, 0x0119, 0x011a, 0x011b, 0x0128, 0x0129, 0x012a, 0x012b, 0x0138, 0x0139, 0x013a, 0x004b, 0x0000,
	0x0000, 0x0044, 0x1178, 0x1179, 0x117a, 0x117b, 0x117c, 0x117d, 0x117e, 0x117f, 0x0045, 0x00fc, 0x00fd, 0x00fe, 0x00ff, 0x010c, 0x010d, 0x010e, 0x010f, 0x011c, 0x011d, 0x011e, 0x011f, 0x012c, 0x012d, 0x012e, 0x012f, 0x013c, 0x013d, 0x013e, 0x004b, 0x0000,
	0x0000, 0x0046, 0x0047, 0x0047, 0x0047, 0x0047, 0x0047, 0x0047, 0x0047, 0x0047, 0x0048, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004d, 0x0000
};

const u16 gUnknown_08014270[32 * 12] = {
	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x004e, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x004a, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x004f, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0060, 0x0061, 0x0062, 0x0063, 0x0040, 0x0040, 0x0040, 0x0040, 0x0070, 0x0071, 0x0072, 0x0073, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004b, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x004f, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0064, 0x0065, 0x0066, 0x0067, 0x0040, 0x0040, 0x0040, 0x0040, 0x0074, 0x0075, 0x0076, 0x0077, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004b, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x004f, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0068, 0x0069, 0x006a, 0x006b, 0x0040, 0x0040, 0x0040, 0x0040, 0x0078, 0x0079, 0x007a, 0x007b, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004b, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x004f, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x006c, 0x006d, 0x006e, 0x006f, 0x0040, 0x0040, 0x0040, 0x0040, 0x007c, 0x007d, 0x007e, 0x007f, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004b, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x004f, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004b, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x004f, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004b, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x004f, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004b, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x004f, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004b, 0x0000, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x0050, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004c, 0x004d, 0x0000, 0x0000, 0x0000, 0x0000
};

const u16 gUnknown_08014570[0x2C0] = {
	0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
	0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
	0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
	0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
	0x2276, 0x2000, 0x2001, 0x2002, 0x2003, 0x2004, 0x2005, 0x2006,
	0x2007, 0x2008, 0x2009, 0x200a, 0x200b, 0x200c, 0x200d, 0x200e,
	0x200f, 0x2010, 0x2011, 0x2012, 0x2013, 0x2014, 0x2015, 0x2016,
	0x2017, 0x2018, 0x2019, 0x201a, 0x201b, 0x201c, 0x201d, 0x2276,
	0x2276, 0x201e, 0x201f, 0x2020, 0x2021, 0x2022, 0x2023, 0x2024,
	0x2025, 0x2026, 0x2027, 0x2028, 0x2029, 0x202a, 0x202b, 0x202c,
	0x202d, 0x202e, 0x202f, 0x2030, 0x2031, 0x2032, 0x2033, 0x2034,
	0x2035, 0x2036, 0x2037, 0x2038, 0x2039, 0x203a, 0x203b, 0x2276,
	0x2276, 0x203c, 0x203d, 0x203e, 0x203f, 0x2040, 0x2041, 0x2042,
	0x2043, 0x2044, 0x2045, 0x2046, 0x2047, 0x2048, 0x2049, 0x204a,
	0x204b, 0x204c, 0x204d, 0x204e, 0x204f, 0x2050, 0x2051, 0x2052,
	0x2053, 0x2054, 0x2055, 0x2056, 0x2057, 0x2058, 0x2059, 0x2276,
	0x2276, 0x205a, 0x205b, 0x205c, 0x205d, 0x205e, 0x205f, 0x2060,
	0x2061, 0x2062, 0x2063, 0x2064, 0x2065, 0x2066, 0x2067, 0x2068,
	0x2069, 0x206a, 0x206b, 0x206c, 0x206d, 0x206e, 0x206f, 0x2070,
	0x2071, 0x2072, 0x2073, 0x2074, 0x2075, 0x2076, 0x2077, 0x2276,
	0x2276, 0x2078, 0x2079, 0x207a, 0x207b, 0x207c, 0x207d, 0x207e,
	0x207f, 0x2080, 0x2081, 0x2082, 0x2083, 0x2084, 0x2085, 0x2086,
	0x2087, 0x2088, 0x2089, 0x208a, 0x208b, 0x208c, 0x208d, 0x208e,
	0x208f, 0x2090, 0x2091, 0x2092, 0x2093, 0x2094, 0x2095, 0x2276,
	0x2276, 0x2096, 0x2097, 0x2098, 0x2099, 0x209a, 0x209b, 0x209c,
	0x209d, 0x209e, 0x209f, 0x20a0, 0x20a1, 0x20a2, 0x20a3, 0x20a4,
	0x20a5, 0x20a6, 0x20a7, 0x20a8, 0x20a9, 0x20aa, 0x20ab, 0x20ac,
	0x20ad, 0x20ae, 0x20af, 0x20b0, 0x20b1, 0x20b2, 0x20b3, 0x2276,
	0x2276, 0x20b4, 0x20b5, 0x20b6, 0x20b7, 0x20b8, 0x20b9, 0x20ba,
	0x20bb, 0x20bc, 0x20bd, 0x20be, 0x20bf, 0x20c0, 0x20c1, 0x20c2,
	0x20c3, 0x20c4, 0x20c5, 0x20c6, 0x20c7, 0x20c8, 0x20c9, 0x20ca,
	0x20cb, 0x20cc, 0x20cd, 0x20ce, 0x20cf, 0x20d0, 0x20d1, 0x2276,
	0x2276, 0x20d2, 0x20d3, 0x20d4, 0x20d5, 0x20d6, 0x20d7, 0x20d8,
	0x20d9, 0x20da, 0x20db, 0x20dc, 0x20dd, 0x20de, 0x20df, 0x20e0,
	0x20e1, 0x20e2, 0x20e3, 0x20e4, 0x20e5, 0x20e6, 0x20e7, 0x20e8,
	0x20e9, 0x20ea, 0x20eb, 0x20ec, 0x20ed, 0x20ee, 0x20ef, 0x2276,
	0x2276, 0x20f0, 0x20f1, 0x20f2, 0x20f3, 0x20f4, 0x20f5, 0x20f6,
	0x20f7, 0x20f8, 0x20f9, 0x20fa, 0x20fb, 0x20fc, 0x20fd, 0x20fe,
	0x20ff, 0x2100, 0x2101, 0x2102, 0x2103, 0x2104, 0x2105, 0x2106,
	0x2107, 0x2108, 0x2109, 0x210a, 0x210b, 0x210c, 0x210d, 0x2276,
	0x2276, 0x210e, 0x210f, 0x2110, 0x2111, 0x2112, 0x2113, 0x2114,
	0x2115, 0x2116, 0x2117, 0x2118, 0x2119, 0x211a, 0x211b, 0x211c,
	0x211d, 0x211e, 0x211f, 0x2120, 0x2121, 0x2122, 0x2123, 0x2124,
	0x2125, 0x2126, 0x2127, 0x2128, 0x2129, 0x212a, 0x212b, 0x2276,
	0x2276, 0x212c, 0x212d, 0x212e, 0x212f, 0x2130, 0x2131, 0x2132,
	0x2133, 0x2134, 0x2135, 0x2136, 0x2137, 0x2138, 0x2139, 0x213a,
	0x213b, 0x213c, 0x213d, 0x213e, 0x213f, 0x2140, 0x2141, 0x2142,
	0x2143, 0x2144, 0x2145, 0x2146, 0x2147, 0x2148, 0x2149, 0x2276,
	0x2276, 0x214a, 0x214b, 0x214c, 0x214d, 0x214e, 0x214f, 0x2150,
	0x2151, 0x2152, 0x2153, 0x2154, 0x2155, 0x2156, 0x2157, 0x2158,
	0x2159, 0x215a, 0x215b, 0x215c, 0x215d, 0x215e, 0x215f, 0x2160,
	0x2161, 0x2162, 0x2163, 0x2164, 0x2165, 0x2166, 0x2167, 0x2276,
	0x2276, 0x2168, 0x2169, 0x216a, 0x216b, 0x216c, 0x216d, 0x216e,
	0x216f, 0x2170, 0x2171, 0x2172, 0x2173, 0x2174, 0x2175, 0x2176,
	0x2177, 0x2178, 0x2179, 0x217a, 0x217b, 0x217c, 0x217d, 0x217e,
	0x217f, 0x2180, 0x2181, 0x2182, 0x2183, 0x2184, 0x2185, 0x2276,
	0x2276, 0x2186, 0x2187, 0x2188, 0x2189, 0x218a, 0x218b, 0x218c,
	0x218d, 0x218e, 0x218f, 0x2190, 0x2191, 0x2192, 0x2193, 0x2194,
	0x2195, 0x2196, 0x2197, 0x2198, 0x2199, 0x219a, 0x219b, 0x219c,
	0x219d, 0x219e, 0x219f, 0x21a0, 0x21a1, 0x21a2, 0x21a3, 0x2276,
	0x2276, 0x21a4, 0x21a5, 0x21a6, 0x21a7, 0x21a8, 0x21a9, 0x21aa,
	0x21ab, 0x21ac, 0x21ad, 0x21ae, 0x21af, 0x21b0, 0x21b1, 0x21b2,
	0x21b3, 0x21b4, 0x21b5, 0x21b6, 0x21b7, 0x21b8, 0x21b9, 0x21ba,
	0x21bb, 0x21bc, 0x21bd, 0x21be, 0x21bf, 0x21c0, 0x21c1, 0x2276,
	0x2276, 0x21c2, 0x21c3, 0x21c4, 0x21c5, 0x21c6, 0x21c7, 0x21c8,
	0x21c9, 0x21ca, 0x21cb, 0x21cc, 0x21cd, 0x21ce, 0x21cf, 0x21d0,
	0x21d1, 0x21d2, 0x21d3, 0x21d4, 0x21d5, 0x21d6, 0x21d7, 0x21d8,
	0x21d9, 0x21da, 0x21db, 0x21dc, 0x21dd, 0x21de, 0x21df, 0x2276,
	0x2276, 0x21e0, 0x21e1, 0x21e2, 0x21e3, 0x21e4, 0x21e5, 0x21e6,
	0x21e7, 0x21e8, 0x21e9, 0x21ea, 0x21eb, 0x21ec, 0x21ed, 0x21ee,
	0x21ef, 0x21f0, 0x21f1, 0x21f2, 0x21f3, 0x21f4, 0x21f5, 0x21f6,
	0x21f7, 0x21f8, 0x21f9, 0x21fa, 0x21fb, 0x21fc, 0x21fd, 0x2276,
	0x2276, 0x21fe, 0x21ff, 0x2200, 0x2201, 0x2202, 0x2203, 0x2204,
	0x2205, 0x2206, 0x2207, 0x2208, 0x2209, 0x220a, 0x220b, 0x220c,
	0x220d, 0x220e, 0x220f, 0x2210, 0x2211, 0x2212, 0x2213, 0x2214,
	0x2215, 0x2216, 0x2217, 0x2218, 0x2219, 0x221a, 0x221b, 0x2276,
	0x2276, 0x221c, 0x221d, 0x221e, 0x221f, 0x2220, 0x2221, 0x2222,
	0x2223, 0x2224, 0x2225, 0x2226, 0x2227, 0x2228, 0x2229, 0x222a,
	0x222b, 0x222c, 0x222d, 0x222e, 0x222f, 0x2230, 0x2231, 0x2232,
	0x2233, 0x2234, 0x2235, 0x2236, 0x2237, 0x2238, 0x2239, 0x2276,
	0x2276, 0x223a, 0x223b, 0x223c, 0x223d, 0x223e, 0x223f, 0x2240,
	0x2241, 0x2242, 0x2243, 0x2244, 0x2245, 0x2246, 0x2247, 0x2248,
	0x2249, 0x224a, 0x224b, 0x224c, 0x224d, 0x224e, 0x224f, 0x2250,
	0x2251, 0x2252, 0x2253, 0x2254, 0x2255, 0x2256, 0x2257, 0x2276,
	0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
	0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
	0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
	0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276

};

void SetTextboxSize(u32 unk0)
{
    struct ScriptContext * scriptCtx = &gScriptContext;
    u16 * map;
    u32 i;
    switch(unk0)
    {
    case 0:
        map = gBG1MapBuffer;
        for(i = 0; i < 0x2C0; i++, map++)
        {
            *map = gTextboxTiles[i];
        }
        scriptCtx->textboxState = 0;
        SetTextboxNametag(scriptCtx->textboxNameId & 0x7F, (u8)(scriptCtx->textboxNameId & 0x80));
        break;
    case 1:
        scriptCtx->unk3A = 0;
        scriptCtx->textboxYPos = 14;
        scriptCtx->textboxState = 2;
        SetTextboxNametag(0, FALSE);
        break;
    case 2:
        map = gBG1MapBuffer;
        for(i = 0; i < 0x1C0; i++, map++)
        {
            *map = gTextboxTiles[i];
        }
        map = gBG1MapBuffer + 0x1C0;
        for(i = 0x1C0; i < 0x220; i++, map++)
        {
            *map = 0;
        }
        map = gBG1MapBuffer + 0x200;
        for(i = 0x1C0; i < 0x1E0; i++, map++)
        {
            *map = gTextboxTiles[i];
        }
        scriptCtx->textboxState = 0;
        break;
    default:
        break;
    }
}

void UpdateTextbox()
{
    struct ScriptContext * scriptCtx = &gScriptContext;
    u32 tiley;
    u32 i;
    switch(scriptCtx->textboxState)
    {
    case 0:
    case 1:
        break;
    case 2:
        scriptCtx->unk3A += 2;
        if(scriptCtx->unk3A < 2)
            break;
        scriptCtx->unk3A = 0;
        tiley = scriptCtx->textboxYPos * 32;
        for(i = 0; i < 32; i++)
        {
            u16 * dest = &gBG1MapBuffer[tiley - 32 + i];
            u16 * src = &gBG1MapBuffer[tiley + i];
            *dest = *src;
        }
        for(i = 0; i < 32; i++)
        {
            u16 * dest = &gBG1MapBuffer[tiley + i];
            u16 * src = &gBG1MapBuffer[tiley + 32 + i];
            *dest = *src;
        }
        scriptCtx->textboxYPos--;
        if(scriptCtx->textboxYPos == 0)
        {
            gMain.showTextboxCharacters = TRUE;
            scriptCtx->textboxState = 0;
        }
        break;
    case 3:
        gIORegisters.lcd_bg1vofs += 4;
        if(gIORegisters.lcd_bg1vofs < (u16)-80u)
        {
            gMain.advanceScriptContext = TRUE;
            gMain.showTextboxCharacters = TRUE;
            gIORegisters.lcd_bg1vofs = 0;
            scriptCtx->textboxState = 0;
        }
        break;
    case 4:
        gIORegisters.lcd_bg1vofs -= 4;
        if(gIORegisters.lcd_bg1vofs < (u16)-80u)
        {
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            scriptCtx->textboxState = 1;
        }
        break;
    }
}

void SlideTextbox(u32 slideUp)
{
    gMain.advanceScriptContext = 0;
    gMain.showTextboxCharacters = 0;
    SetTextboxNametag(0, FALSE);
    if(slideUp)
    {
        gScriptContext.textboxState = 3;
        gInvestigation.actionState = 3;
        gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
        gBG1MapBuffer[622] = 9;
        gBG1MapBuffer[623] = 9;
    }
    else
    {
        gScriptContext.textboxState = 4;
        gInvestigation.actionState = 1;
    }
}

// St_bg2_set
void SlideInBG2Window(u32 mode, u32 speed)
{
    struct CourtRecord * courtRecord = &gCourtRecord;
    if(mode > 4) // is for save screens
    {
        courtRecord->windowIsSaveScreen = TRUE;
        mode -= 4;
    }
    else
    {
        courtRecord->windowIsSaveScreen = FALSE;
    }
    courtRecord->windowMode = mode;
    courtRecord->windowOffset = 0;
    courtRecord->windowPrevX = courtRecord->windowX;
    courtRecord->flags &= ~0x4;
    switch(mode)
    {
    case 0:
        break;
    case 1:
        courtRecord->windowScrollSpeed = speed;
        courtRecord->windowTileX = 0;
        courtRecord->windowX = 0x100;
        break;
    case 2:
        courtRecord->windowScrollSpeed = -speed;
        courtRecord->windowTileX = 31;
        courtRecord->windowX = 0x110;
        break;
    case 3:
        courtRecord->windowScrollSpeed = speed;
        break;
    case 4:
        courtRecord->windowScrollSpeed = -speed;
        break;
    default:
        break;
    }
}

// St_bg2_main00
void WindowDummy(struct CourtRecord * courtRecord)
{

}

// St_bg2_main01
void ScrollWindowWithPrevWindow(struct CourtRecord * courtRecord)
{
    u32 i;
    courtRecord->windowOffset += courtRecord->windowScrollSpeed;
    courtRecord->windowX -= courtRecord->windowScrollSpeed;
    courtRecord->windowX &= 0x1FF;
    courtRecord->windowPrevX -= courtRecord->windowScrollSpeed;
    courtRecord->windowPrevX &= 0x1FF;
    while(courtRecord->windowOffset >= 8)
    {
        courtRecord->windowOffset -= 8;
        courtRecord->windowTileX++;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0x1F)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
            courtRecord->windowX = 8;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer+1, &gBG2MapBuffer[i*0x20], 0x3E);
        }
        if(courtRecord->windowIsSaveScreen)
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i + 31] = gUnknown_08014270[courtRecord->windowTileX + i];
            }
        }
        else
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i + 31] = gUnknown_08013F70[courtRecord->windowTileX + i];
            }
        }
    }
    while(courtRecord->windowOffset <= -8)
    {
        courtRecord->windowOffset += 8;
        courtRecord->windowTileX--;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
            courtRecord->windowX = 8;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer, &gBG2MapBuffer[i*0x20+1], 0x3E);
        }
        if(courtRecord->windowIsSaveScreen)
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i] = gUnknown_08014270[courtRecord->windowTileX + i];
            }
        }
        else
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i] = gUnknown_08013F70[courtRecord->windowTileX + i];
            }
        }
    }
}

// St_bg2_main02
void ScrollWindowWithoutPrevWindow(struct CourtRecord * courtRecord)
{
    u32 i;
    courtRecord->windowOffset += courtRecord->windowScrollSpeed;
    courtRecord->windowX -= courtRecord->windowScrollSpeed;
    courtRecord->windowX &= 0x1FF;
    while(courtRecord->windowOffset >= 8)
    {
        courtRecord->windowOffset -= 8;
        courtRecord->windowTileX++;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0x1F)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer+1, &gBG2MapBuffer[i*0x20], 0x3E);
        }
        for(i = 0x40; i < 0x180; i += 0x20)
        {
            gBG2MapBuffer[i+31] = 0;
        }
    }
    while(courtRecord->windowOffset <= -8)
    {
        courtRecord->windowOffset += 8;
        courtRecord->windowTileX--;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer, &gBG2MapBuffer[i*0x20+1], 0x3E);
        }
        for(i = 0x40; i < 0x180; i += 0x20)
        {
            gBG2MapBuffer[i] = 0;
        }
    }
}

// st_bg2_main_proc_tbl
void (*gWindowFunctions[])(struct CourtRecord *) = {
    WindowDummy,
	ScrollWindowWithPrevWindow,
	ScrollWindowWithPrevWindow,
	ScrollWindowWithoutPrevWindow,
	ScrollWindowWithoutPrevWindow,
};

void UpdateBG2Window(struct CourtRecord * courtRecord)
{
    if(gMain.blendMode == 0)
    {
        gWindowFunctions[courtRecord->windowMode](courtRecord);
        gIORegisters.lcd_bg2hofs = courtRecord->windowOffset + 8;
    }
}

// Mess_win_name_set
void SetTextboxNametag(u32 nametagId, u32 rightSide)
{
    u32 i;
    u32 j;
    void * tiles;
    const u8 * tileId;
    u16 * map;
    u32 offset = rightSide;
    
    if(nametagId == 0)
    {
        for(i = 0x180; i < 0x1E0; i++)
            gBG1MapBuffer[i] = gTextboxTiles[i];
        return;
    }
    i = (nametagId / 5);
    j = (nametagId % 5);
    i *= 0x800;
    j *= 0xC0;
    tiles = gGfx4bppNametags + j + i;
    DmaCopy16(3, tiles, VRAM+0xA80, 0xC0);
    DmaCopy16(3, tiles+0x400, VRAM+0xB40, 0xC0);
    if(rightSide)
    {
        offset = 24;
        tileId = gNameTagTiles+18;
    }
    else
    {
        offset = 0;
        tileId = gNameTagTiles+12;
    }

    map = gBG1MapBuffer + 0x1C0;
    map += offset;
    for(i = 0; i < 6; i++)
    {
        *map = *tileId;
        map++;
        tileId++;
    }
    map = gBG1MapBuffer + 0x180;
    map += offset;
    tileId = gNameTagTiles;
    for(i = 0; i < 6; i++)
    {
        *map = *tileId;
        map++;
        tileId++;
    }
    map = gBG1MapBuffer + 0x1A0;
    map += offset;
    tileId = gNameTagTiles+6;
    for(i = 0; i < 6; i++)
    {
        *map = *tileId;
        map++;
        tileId++;
    }
}

void UpdateBGTilemaps()
{
    if(gMain.tilemapUpdateBits & 1)
        DmaCopy16(3, gBG0MapBuffer, BG_SCREEN_ADDR(28), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 2)
        DmaCopy16(3, gBG1MapBuffer, BG_SCREEN_ADDR(29), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 4)
        DmaCopy16(3, gBG2MapBuffer, BG_SCREEN_ADDR(30), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 8)
        DmaCopy16(3, gBG3MapBuffer, BG_SCREEN_ADDR(31), BG_SCREEN_SIZE);
}
