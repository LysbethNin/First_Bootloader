bits 16  ; 16 bits code
org 0x7c00 ; directive qui spécifie adr où prog commence . ici 0x7c00 puisque adresse ou se trouve le bootloader dans la RAM .
boot: ; label et point d'entrée du prog
    mov si,hello ; bouge adr mémoire de hello dans le registre source index (SI ) ( pour rappel le registre DI c'est destination index)
    mov ah,0x0e ; 0x0e -> 'Write Character in TTY mode'
.loop:
    lodsb ; charge byte depuis si dans al puis incrémente si.
    or al,al ; is al == 0 ?
    jz halt  ; if (al == 0) jump to halt label puisque indique fin string
    int 0x10 ; runs BIOS interrupt 0x10 - Video Services ( printing a character )
    jmp .loop ; recommence la loop tant que reste character 
halt:
    cli ; clear interrupt flag
    hlt ; halt execution
hello: db "J'ai envie de caner",0 ; Defines a null-terminated string "Hello world!". The null terminator (0) is used to determine the end of the string.

times 510 - ($-$$) db 0
dw 0xaa55 ; magic number 0xaa55 at the end of the 512-byte sector.