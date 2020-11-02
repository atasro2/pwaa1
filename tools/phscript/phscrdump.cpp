// Copyright (c) 2020 easyaspi314
// MIT license
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <wchar.h>
// UGLY HACK: reuse charmap from preproc
#include "../preproc/charmap.cpp"
#include "../preproc/utf8.cpp"

// Reads a 16-bit little endian integer from f.
static int fgetu16(FILE *f)
{
    int c = fgetc(f);
    if (c == EOF) return EOF;
    int d = fgetc(f);
    if (d == EOF) return EOF;
    return c | (d << 8);
}

int main(int argc, char *argv[])
{
    if (argc != 3) {
       printf("usage: %s file.phscr charmap.txt\n", argv[0]);
       printf("dumps a .phscr to a somewhat readable format\n");
       return 1;
    }
    FILE *f = fopen(argv[1], "rb");
    if (!f) {
       printf("could not open %s\n", argv[1]);
       return 1;
    }
    Charmap *charmap = new Charmap(argv[2]);

    int c;
// TODO: Exceptions?
#define NEXT ({ \
    int _tmp = fgetu16(f); \
    if (_tmp == EOF) { \
        goto error; \
    } \
    _tmp; \
})
    // TODO:
    //   Implement all opcodes
    //   Prettify output
    //   Add labels
    //   Better error handling
    //   String detection
    //   Figure out the header.
    //   Convert to .s
    //   Basically everything else
    int offset = 0;
    int in_text = 0;
    while ((c = fgetu16(f)) != EOF) {
        // TODO: figure out which tokens should be in text, and which should be
        // asm macros.
        /*if (!in_text && (c == 0x00 || c >= 0x80 || c == 0x03 || c == 0x05 || c == 0x0B || c == 0x0C)) {
            in_text = 1;
            printf("\n\t.string \"");
        }*/
        switch (c) {
        case 0x00:
            printf("\ninit_section\n"); // ?
            break;
        case 0x01:
            printf("\\n\n");
            in_text = 0;
            break;
        case 0x02:
            printf("\\p\n"); // next textbox
            in_text = 0;
            break;
        case 0x03: {
            int color = NEXT;
            printf("{COLOR %04X}", color);
            break;
        }
        case 0x04: {
            int key = NEXT;
            printf("\nkeywait 0x%04X\n", key);
            break;
        }
        case 0x05: {
            int bgmNum = NEXT;
            int fadeType = NEXT;
            printf("{BGM %04X %04X}",  bgmNum, fadeType);
            break;
        }
        case 0x06: {
            int tmp = NEXT;
            int flag = tmp & 1;
            int soundNum = tmp >> 8;
            if (flag) {
                printf("\nsfx_play 0x%02X\n", soundNum);
            } else {
                printf("\nsfx_stop 0x%02X\n", soundNum);
            }
            break;
        }
        case 0x0B: {
            int speed = NEXT;
            printf("{SPEED %02X}", speed);
            break;
        }
        case 0x0C: {
            int waitTime = NEXT;
            printf("{PAUSE %04X}", waitTime);
            break;
        }
        case 0x0D:
            printf("\nnext_section\n");
            break;
        case 0x0E: {
            int tmp = NEXT;
            int nameId = tmp >> 8;
            int unk = tmp & 0xFF;
            printf("\ntextbox 0x%02X, 0x%02X\n", nameId, unk);
            in_text = 0;
            break;
        }
        case 0x0F: {
            int section = NEXT;
            int flag = NEXT;
            printf("\nhold_it 0x%04X, 0x%04X\n", section, flag);
            break;
        }
        case 0x12: {
            int var0 = NEXT;
            int var1 = NEXT;
            int var2 = NEXT;
            printf("\nfade_bg 0x%02X, 0x%02X, 0x%02X, 0x%04X\n", var0 >> 8, var0 & 0xff, var1, var2);
            break;
        }
        case 0x17: {
            int tmp = NEXT;
            int evidenceId = tmp & 0x3FFF;
            if (tmp & 0x8000) {
                printf("\nadd_profile 0x%04X\n", evidenceId);
            } else {
                printf("\nadd_evidence\t0x%04X\n", evidenceId);
            }
            break;
        }
        case 0x18: {
            int tmp = NEXT;
            int evidenceId = tmp & 0x3FFF;
            if (tmp & 0x8000) {
                printf("\ndel_profile 0x%04X\n", evidenceId);
            } else {
                printf("\ndel_evidence 0x%04X\n", evidenceId);
            }
            break;
        }
        case 0x1B: {
            int bgId = NEXT;
            printf("{NEXT_BG %04X}", bgId);
            break;
        }
        case 0x1D: {
            int tmp = NEXT;
            switch(tmp >> 8) {
            case 0:
                printf("\nscroll_left 0x%02X\n", tmp & 0xff);
                break;
            case 1:
                printf("\nscroll_right 0x%02X\n", tmp & 0xff);
                break;
            case 2:
                printf("\nscroll_up 0x%02X\n", tmp & 0xff);
                break;
            case 3:
                printf("\nscroll_down 0x%02X\n", tmp & 0xff);
                break;
            default: goto error;
            }
            break;
        }
        case 0x1C: {
            int tmp = NEXT;
            switch(tmp) {
            case 0:
                printf("\nenable_textbox\n");
                break;
            case 1:
                printf("\ndisable_textbox\n");
                break;
            default: // TODO
                printf("{unk_1C}{%04X}", tmp);
                break;
            }
            break;
        }
        case 0x1E: {
            int animId = NEXT;
            int talkingOffset = NEXT;
            int idleOffset = NEXT;
            printf("\nperson_anim 0x%04X, 0x%04X, 0x%04X\n", animId, talkingOffset, idleOffset);
            break;
        }
        case 0x1F:
            printf("{FADEOUT}\n"); // fade to black
            break;
        case 0x20: {
            int sectId = NEXT;
            printf("\nset_next_section 0x%04X\n", sectId);
            break;
        }
        case 0x22: {
            int unused = NEXT; // unused token
            int fade = NEXT;
            if (fade) {
                printf("\nfade_bgm 0x%04X, 0x%04X\n", unused, fade);
            } else {
                printf("\nstop_bgm 0x%04X\n", unused);
            }
            break;
        }
        case 0x23: {
            int unused = NEXT; // unused token
            int unpause = NEXT;
            if (unpause) {
                printf("\nunpause_bgm 0x%04X, 0x%04X\n", unused, unpause);
            } else {
                printf("\npause_bgm 0x%04X\n", unused);
            }
            break;
        }
        case 0x25: {
            int sectId = NEXT;
            in_text = 0;
            printf("\nset_prev_section 0x%04X\n", sectId);
            break;
        }
        case 0x27: {
            int duration = NEXT;
            int intensity = NEXT;
            printf("{SHAKE %04X %04X}", duration, intensity);
            break;
        }
        case 0x2E: {
            printf("\nclear\n");
            break;
        }
        case 0x2F: {
            int animId = NEXT;
            int play = NEXT;
            if (play) {
                printf("\nplay_anim 0x%04X, 0x%04X\n", animId, play);
            } else {
                printf("\nstop_anim 0x%04X\n", animId);
            }
            break;
        }
        case 0x30: {
            int cueId = NEXT;
            printf("\nset_cue 0x%04X\n", cueId);
            break;
        }
        case 0x31: {
            int unk0 = NEXT;
            int unk1 = NEXT;
            printf("\nblend_anim 0x%04X, 0x%04X\n", unk0, unk1);
            break;
        }
        case 0x47: {
            int volume = NEXT;
            int fadeAmt = NEXT;
            printf("\nfade_vol 0x%04X, 0x%04X\n", volume, fadeAmt);
            break;
        }
        case 0x4C:
            printf("\nwait_for_bg_scroll\n");
            break;
        default: {
            int32_t codepoint = charmap->ToUnicode(c);
            if (codepoint != -1) {
                in_text = 1;
                // TODO: proper UTF-8 output
                printf("%lc", (wchar_t)codepoint);
            } else {
                if (c < 0x80) // unknown opcode
                    printf("{unk_%02X}", c);
                else { // unknown char
                    in_text = 1;
                    printf("{%04X}", c);
                }
            }
            break;
        }
        }
    }
goto cleanup;
error:
    printf("Error.\n");
cleanup:
    fclose(f);
    delete charmap;
    return 0;
}

