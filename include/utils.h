#ifndef GUARD_UTILS_H
#define GUARD_UTILS_H

struct Point 
{
    /* +0x00 */ u16 x;
    /* +0x02 */ u16 y;
};

struct Point4 // shamelessly stolen from unity
{
    /* +0x00 */ struct Point points[4];
};

struct Rect
{
    /* +0x00 */ s16 x;
    /* +0x02 */ s16 y;
    /* +0x04 */ s16 w;
    /* +0x06 */ s16 h;
};

extern const s16 gSineTable[256+64];

#define _Sin( a ) (gSineTable[(a)])
#define _Cos( a ) (gSineTable[(a)+64])

// Converts a number to Q8.8 fixed-point format
#define Q_8_8(n) ((s16)((n) * 256))

void MoveSpritesToOAM();
bool32 CheckPointInArea(const struct Point * point, const struct Point4 * area);
bool32 CheckRectCollisionWithArea(const struct Rect * rect, const struct Point4 * area);
s16 fix_mul(s16 a, s16 b);
s16 fix_div(s16 a, s16 b);
s16 fix_inverse(s16 b);
u8 Random();
void ChangeFlag(u32, u32, bool32);
bool32 GetFlag(u32 arg0, u32 arg1);

#endif//GUARD_UTILS_H