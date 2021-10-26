section .data
quine: db `section .data%c%cquine: db %c%s%3$c%1$csection .text%1$c%2$cextern _printf%1$c%2$cglobal _main%1$c_main:%1$c%2$cpush rbx%1$c%2$cmov rdi, quine%1$c%2$c%mov rsi, 0x0a ; nl %%1$c%1$c%2$cmov rdx, 0x09 ; tab %%2$c%1$c%2$cmov rcx, 0x60 ; inverted apostrophe %%3$c%1$c%2$cmov r8, quine ; %%1$s%1$c%2$cmov r9, 0x60%1$c%2$cxor rax,rax%1$c%2$ccall _printf%1$c%2$cpop rbp%1$c%2$cmov rax, 0%1$c%2$cret%1$c`
echo: db `echo cualquier cosa`,0
number: db 5
filename: db `Sully_6.s`,0
fd: db 0
buff: db `\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`
section .text
extern _printf
extern _system
extern _strcpy
extern _dprintf
extern _open
global _main
_main:
push rbx
mov r10, number
dec r10
mov rdi, 2
mov rsi, echo
mov rax, 0
call _dprintf
pop rbx
ret
drquine:
push rbx
mov rdi, quine
mov rsi, 0x0a ; nl %1$c
mov rdx, 0x09 ; tab %2$c
mov rcx, 0x60 ; inverted apostrophe %3$c
mov r8, quine ; %1$s
mov r9, 0x60
xor rax,rax
; call _printf
pop rbx
mov rax, 0
ret
