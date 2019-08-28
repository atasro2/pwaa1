AS := tools/binutils/bin/arm-none-eabi-as
CPP := $(CC) -E
LD := tools/binutils/bin/arm-none-eabi-ld
OBJCOPY := tools/binutils/bin/arm-none-eabi-objcopy
SHA1SUM := sha1sum -c
GBAFIX := tools/gbafix/gbafix

ASFLAGS := -mcpu=arm7tdmi

CC1             := tools/agbcc/bin/old_agbcc
override CFLAGS += -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm

CPPFLAGS := -I tools/agbcc -I tools/agbcc/include -iquote include -nostdinc

ASFILE := $(wildcard asm/*.s data/*.s)
CFILE := $(wildcard src/*.c)
ASOBJFILE := $(ASFILE:.s=.o)
COBJFILE := $(CFILE:.c=.o)
NAME := GS1
ROM := $(NAME).gba
ELF := $(NAME).elf
TITLE := GYAKUTEN_SAI
GAMECODE := ASBJ

.PHONY: all compare clean

all: $(ROM)

compare: $(ROM)
	$(SHA1SUM) rom.sha1

clean:
	rm -f $(ROM) $(ELF) $(ASOBJFILE) $(COBJFILE) src/*.s

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@

$(ELF): %.elf: $(ASOBJFILE) $(COBJFILE) ld_script.txt
	$(LD) -T ld_script.txt -Map $*.map -o $@ $(ASOBJFILE) $(COBJFILE) -L tools/agbcc/lib -lgcc -lc
	$(GBAFIX) -t"$(TITLE)" -c$(GAMECODE) -m08 --silent $@

$(ASOBJFILE): %.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<
	
$(COBJFILE): %.o: %.c
	$(CPP) $(CPPFLAGS) $< | $(CC1) $(CFLAGS) -o $*.s
	$(AS) $(ASFLAGS) -o $@ $*.s