# Simple Bootloader

This is a simple bootloader written in x86 assembly language using NASM syntax. It prints a message to the screen and then halts the CPU.

# Disclaimer

Note: This project is solely for my personal learning and to keep track of my progress and understanding in the field of low-level programming. I do not recommend running this code.

# To run this bootloader, I used :

An emulator
NASM assembler

## Usage

   
Assemble the bootloader using NASM: `nasm -f bin bootloader.asm -o bootloader.bin` 

Run the bootloader with Qemu :

   `qemu-system-i386 -fda bootloader.bin`

