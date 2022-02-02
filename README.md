# Gyakuten Saiban (Japan)

This is a decompilation of Gyakuten Saiban (Japan)

It builds the following ROMs:
* pwaa1.gba `sha1: 15C0E3389709BB275C42E99ED25212D09E49E361`
* pwaa1_rev1.gba `sha1: D23B788C80732898C6CFE344A6811900EB060F23` [1]

1. Slightly edited ROM because 8 bytes from the release version exist in rev1 and unless the game somehow reads these values it shouldn't matter

### Setting up the repository

* it is advised to use WSL for making this repository on Windows 10 but if you use Win 8.1 or older then i can't help unless we get a proper tutorial for this.  

* **THIS README ASSUMES YOU HAVE EXPERIENCE WITH VARIOUS OTHER GBA DECOMPILATION REPOSITORIES AND A LINUX TERMINAL** 

* Clone this repository and go into the root folder of it.

* Then compile agbcc using the following command:
```
git clone https://github.com/luckytyphlosion/agbcc -b new_layout_with_libs
cd ./agbcc
make
make install prefix=../
make install-sdk prefix=../
```
* Compile the tools by running `make tools`

* You can then build GS1 using `make` in your linux/wsl terminal.
