# Gyakuten Saiban (Japan)

This is a disassembly of Gyakuten Saiban (Japan)

It builds the following ROM:
* GS1.gba `sha1: 15C0E3389709BB275C42E99ED25212D09E49E361`

### Setting up the repository

* it is advised to use WSL for making this repository on Windows 10 but if you use Win 8.1 or older then i can't help unless we get a proper tutorial for this.  

* **THIS README ASSUMES YOU HAVE EXPERIENCE WITH VARIOUS OTHER GBA DECOMPILATION REPOSITORIES AND A LINUX TERMINAL** 

* You must have a copy of the Gyakuten Saiban (Japan) Rev 0 ROM named `baserom.gba` in the repository directory.

* get the source code for the gbafix tool from https://github.com/pret/pokefirered. Copy the `gbafix` folder into the repository directory.

* go into the `gbafix` directory and run `make` in the terminal.

* go into the root folder of the repository.

* Then compile agbcc using the following command.

```
  git clone https://github.com/luckytyphlosion/agbcc -b new_layout_with_libs

	cd ./agbcc
	make
	make install prefix=../
	make install-sdk prefix=../
```

* You can then build GS1 using `make` in your linux/wsl terminal.
