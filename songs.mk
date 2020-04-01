STD_REVERB = 0

$(MID_BUILDDIR)/%.o: $(MID_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -I sound -o $@ $<

$(MID_SUBDIR)/bgm000.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G029

$(MID_SUBDIR)/bgm001.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G018

$(MID_SUBDIR)/bgm002.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G000

$(MID_SUBDIR)/bgm003.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G003

$(MID_SUBDIR)/bgm004.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G006

$(MID_SUBDIR)/bgm005.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G011

$(MID_SUBDIR)/bgm006.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G004

$(MID_SUBDIR)/bgm007.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G005

$(MID_SUBDIR)/bgm008.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G013

$(MID_SUBDIR)/bgm009.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G007

$(MID_SUBDIR)/bgm010.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G008

$(MID_SUBDIR)/bgm011.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G009

$(MID_SUBDIR)/bgm012.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G013

$(MID_SUBDIR)/bgm013.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G010

$(MID_SUBDIR)/bgm014.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G025

$(MID_SUBDIR)/bgm015.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G025

$(MID_SUBDIR)/bgm016.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G023

$(MID_SUBDIR)/bgm017.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G025

$(MID_SUBDIR)/bgm018.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G015

$(MID_SUBDIR)/bgm019.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G012

$(MID_SUBDIR)/bgm020.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G016

$(MID_SUBDIR)/bgm021.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G017

$(MID_SUBDIR)/bgm022.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G019

$(MID_SUBDIR)/bgm023.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G020

$(MID_SUBDIR)/bgm024.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G020

$(MID_SUBDIR)/bgm025.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G021

$(MID_SUBDIR)/bgm026.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G022

$(MID_SUBDIR)/bgm027.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G029

$(MID_SUBDIR)/bgm028.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G024

$(MID_SUBDIR)/bgm029.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G028

$(MID_SUBDIR)/bgm030.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G027

$(MID_SUBDIR)/bgm031.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G026

$(MID_SUBDIR)/bgm032.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G025

$(MID_SUBDIR)/bgm033.s: %.s: %.mid
	$(MID) $< $@ -E -R$(STD_REVERB) -G025
