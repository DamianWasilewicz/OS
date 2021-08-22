# OS

Working on implementing an OS from scratch! Updates will be made in order of ascending recency (Following https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf)

## PRINTING FROM OUR OS

We will use the ax register to store 0x0e, indicating tele-type mode to BIOS ("scrolling teletype routine, which will print a single character on the screen and advance the cursor, ready for the next character"), then use the 0x10 interrupt and store one char byte at a time in the al register.

### Interrupts
Interrupts allow us to pause a CPUs task and give it a higher priority set of instructions to run, before having it resume its original task.
BIOS has a table of Interrupt Service Routines (ISRs). Each has machine instructions for a particular interrupt (screen related, disc related, etc).

### Registers
Registers allow us to store variables in assembly language. This typically involves copying data into registers.


## BASIC BOOTUP (LOOP) AND BIOS
BIOS (Basic Input/Output System) is the system that launched upon booting up our computer. It has no notion of an Operating System and as such must load one in. It checks a known area (cyclinder 0, head 0, sector 0), often referred to as the boot sector. Before loading in this data, it makes sure that the data is indeed OS data and not just any other data by checking the last two bits for the magic number - 0xAA55.
![Alt-text](./images/loop_boot_up.png?raw=true "Loop boot up")

## NASM and QEMU
NASM will be the assembler we will use to assemble and dissassemble code into machine code, QEMU will be the PC emulator that we will use

