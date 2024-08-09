#ifndef GUARD_DEBUG_H
#define GUARD_DEBUG_H

#include "animation.h"
#include "main.h"

struct DebugContext {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 process[4];
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u8 unk18;
    u8 unk19;
    u8 fill1A[0x2];
    /* +0x1C */ struct AnimationListEntry anim;
    u8 unk60;
    u8 unk61;
    u8 fill62[0x2];
    /* +0x64 */ u16 map[0x400];
    /* +0x864 */ struct OamAttrs oam[128];
    /* +0xC64 */ union {
        struct VramDebug {
            u16 unk00;
            u16 unk02;
            u8 unk04;
            u8 unk05;
            u8 unk06;
            s8 unk07;
            u16 unk08;
        } vram;
        struct FlagDebug {
            s16 unk00;
            s8 unk02;
        } flag;
        struct ScenarioDebug {
            s8 unk00;
        } scenario;
        struct SoundDebug {
            s16 unk0;
            s16 unk2;
            s16 unk4;
            s8 unk6;
            s16 unk8;
            s16 unkA;
            s16 unkC;
            s16 unkE;
        } sound;
        struct CourtScrollDebug {
            struct AnimationListEntry anim;
            struct AnimationListEntry * animPtr;
            s8 unk48;
            s8 unk49;
        } courtScroll;
    } menu;
};

extern struct DebugContext gDebugCtx;

void sub_800156C(void);
void DebugProcess(struct Main * main);

#endif//GUARD_DEBUG_H