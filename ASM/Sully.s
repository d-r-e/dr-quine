%define NUMBER 9
section .data
quine: db ``
number: db 0x00000005
filename: db `\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`
fmt: db `Sully_%d.s`, 0
compile: db `nasm -fmacho64 Sully_%1$d.s -o sully.o && gcc -m64 -c sully.o -o Sully_%1$d && ./Sully_%1$d`, 0xa, 00
fd: db 0
buff: db `\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`
section .text
extern _printf
extern _system
extern _sprintf
extern _open
extern _close
global _main
build_filename:
push rbx
mov rdi, filename
mov rsi, fmt
mov rdx, NUMBER - 1
cmp rdx, 0
je exit
call _sprintf
cmp rax, 0
jle err
mov rax, rdi
pop rbx
ret
write_quine:
push rbx
mov rdi, filename
mov rsi, 0x601
mov rdx, 644o
call _open
mov r14, rax ;fd
mov rdi, r14
call _close
jc err
pop rbx
ret
build_command:
push rbx
call build_filename
mov rdi, rax
call write_quine
mov rdi, buff
mov rsi, compile
mov rdx, NUMBER - 1
call _sprintf
mov rdi, buff
call _printf
pop rbx
ret
_main:
push rbx
call build_command

pop rbx
ret
err:
mov rax, -1
ret
exit:
mov rax, 0
ret
