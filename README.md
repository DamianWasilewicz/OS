# OS

Working on implementing an OS from scratch!

## NASM and QEMU
NASM will be the assembler we will use to assemble and dissassemble code into machine code, QEMU will be the PC emulator that we will use

## BOOTUP AND BIOS
BIOS (Basic Input/Output System) is the system that launched upon booting up our computer. It has no notion of an Operating System and as such must load one in. It checks a known area (cyclinder 0, head 0, sector 0), often referred to as the boot sector. Before loading in this data, it makes sure that the data is indeed OS data and not just any other data by checking the last two bits for the magic number - 0xAA55.


