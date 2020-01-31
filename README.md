# Gyakuten Saiban (Japan)

This is a disassembly of Gyakuten Saiban (Japan)

It builds the following ROM:
* GS1.gba `sha1: 15C0E3389709BB275C42E99ED25212D09E49E361`

### Setting up the repository

* it is advised to use WSL for making this repository on Windows 10 but if you use Win 8.1 or older then i can't help unless we get a proper tutorial for this.  

* **THIS README ASSUMES YOU HAVE EXPERIENCE WITH VARIOUS OTHER GBA DECOMPILATION REPOSITORIES AND A LINUX TERMINAL** 

* Go into the root folder of the repository.

* **Note (until further notice):** If this is your first time building Gyakuten Saiban 1 (Rev 0), an unmodified copy of the game is required in the project root under the name `baserom.gba`. To generate this, you should run the following commands:
```
make ips_patch -C tools/br_ips
head -c 16777216 /dev/zero > tmp.bin
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
