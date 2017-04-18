How does it works :

1) a sedoric .dsk
2) sedoric does autoload for menu.com which is a basic program
3) menu.com start disk.com

menu.com is in src/menu_com.bas
disk.com is in src/real_loader.asm

How to build :

1) Use extract.bat

In Extraction, you will find a lot of files.

2) Edit with a hex editor introBars.bar
	replace the 3 first bytes ($20 $33 $20) with $ea $ea $ea
	
start osdk_build.bat
start osdk_execute.bat

The first part will run
	
