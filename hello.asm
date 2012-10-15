section .data
msg:    db      "Hello, World", 10
.len:   equ     $ - msg

section .text
global  _start
_start:
        mov     eax, 4
        mov     ebx, 1
        mov     ecx, msg
        mov     edx, msg.len
        int     0x80

        mov     eax, 1;exit
        mov     ebx, 0
        int     0x80
