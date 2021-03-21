# Gyakuten Saiban (Japan)

This is a disassembly of Gyakuten Saiban (Japan)

It builds the following ROMs:
* pwaa1.gba `sha1: 15C0E3389709BB275C42E99ED25212D09E49E361`
* pwaa1_rev1.gba `sha1: D23B788C80732898C6CFE344A6811900EB060F23` [1]

1. Slightly edited ROM because 8 bytes from the release version exist in rev1 and unless the game somehow reads these values it shouldn't matter

### Setting up the repository

* it is advised to use WSL for making this repository on Windows 10 but if you use Win 8.1 or older then i can't help unless we get a proper tutorial for this.  

* **THIS README ASSUMES YOU HAVE EXPERIENCE WITH VARIOUS OTHER GBA DECOMPILATION REPOSITORIES AND A LINUX TERMINAL** 

* Clone this repository and go into the root folder of it.

* **Note (until further notice):** If this is your first time building Gyakuten Saiban 1 (Rev 0), an unmodified copy of the game is required in the project root under the name `baserom.gba`. To generate this, you should run the following commands:
```
make ips_patch -C tools/br_ips
head -c 8388608 /dev/zero > tmp.bin
tools/br_ips/ips_patch tmp.bin baserom.ips baserom.gba
```

* Then compile agbcc using the following command:
```
git clone https://github.com/luckytyphlosion/agbcc -b new_layout_with_libs
cd ./agbcc
make
make install prefix=../
make install-sdk prefix=../
```
* Compile the tools by running the `build_tools.sh` script

* You can then build GS1 using `make` in your linux/wsl terminal.
