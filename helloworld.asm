section .data
    message db 'Hello, World!',0

section .text
    global _start

_start:
    ; write the string to stdout
    mov eax, 4             ; write system call
    mov ebx, 1             ; file descriptor (stdout)
    mov ecx, message       ; message to write
    mov edx, 13            ; message length
    int 0x80               ; invoke the kernel

    ; exit the program
    mov eax, 1             ; exit system call
    xor ebx, ebx           ; exit status (success)
    int 0x80               ; invoke the kernel
