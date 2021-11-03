%define NUMBER 100
section .data
quine: db `%%define NUMBER %1$d%2$csection .data%2$cquine: db %3$c%4$s%3$c,0%2$cfilename: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0%2$cfmt: db %3$cSully_%%d.s%3$c, 0%2$ccompile: db %3$cnasm -fmacho64 Sully_%%1$d.s -o sully.o && ld sully.o -o Sully_%%1$d -lsystem && rm -f sully.o && ./Sully_%%1$d%3$c, 0xa, 0%2$cfd: db 0%2$cbuff: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0%2$csection .text%2$cextern _printf%2$cextern _system%2$cextern _dprintf%2$cextern _sprintf%2$cextern _open%2$cextern _close%2$cglobal _main%2$cbuild_filename:%2$cpush rbx%2$cmov rdi, filename%2$cmov rsi, fmt%2$cmov rdx, NUMBER - 1%2$ccmp rdx, 0%2$cje end%2$ccall _sprintf%2$ccmp rax, 0%2$cjle end%2$cmov rax, rdi%2$cpop rbx%2$cret%2$cwrite_quine:%2$cpush rbx%2$cmov rdi, filename%2$cmov rsi, 0x601%2$cmov rdx, 644o%2$ccall _open%2$cmov r14, rax%2$cmov rdi, r14%2$cmov rsi, quine%2$cmov rdx, NUMBER - 1%2$cmov rcx, 0xa%2$cmov r8, 0x60%2$cmov r9, quine%2$ccall _dprintf%2$cmov rdi, r14%2$ccall _close%2$cjc end%2$cpop rbx%2$cret%2$cbuild_command:%2$cpush rbx%2$ccall build_filename%2$cmov rdi, rax%2$ccall write_quine%2$cmov rdi, buff%2$cmov rsi, compile%2$cmov rdx, NUMBER - 1%2$ccall _sprintf%2$cmov rdi, buff%2$ccall _system%2$cpop rbx%2$cret%2$c_main:%2$cpush rbx%2$cmov r10, NUMBER - 1%2$ccmp r10, 0%2$cje end%2$ccall build_command%2$cpop rbx%2$cret%2$cend:%2$cpop rbx%2$cmov rax, 0%2$cret%2$c`,0
filename: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
fmt: db `Sully_%d.s`, 0
compile: db `nasm -fmacho64 Sully_%1$d.s -o sully.o && ld sully.o -o Sully_%1$d -lsystem && rm -f sully.o && ./Sully_%1$d`, 0xa, 0
fd: db 0
buff: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
section .text
extern _printf
extern _system
extern _dprintf
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
je end
call _sprintf
cmp rax, 0
jle end
mov rax, rdi
pop rbx
ret
write_quine:
push rbx
mov rdi, filename
mov rsi, 0x601
mov rdx, 644o
call _open
mov r14, rax
mov rdi, r14
mov rsi, quine
mov rdx, NUMBER - 1
mov rcx, 0xa
mov r8, 0x60
mov r9, quine
call _dprintf
mov rdi, r14
call _close
jc end
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
call _system
pop rbx
ret
_main:
push rbx
mov r10, NUMBER - 1
cmp r10, 0
je end
call build_command
pop rbx
ret
end:
pop rbx
mov rax, 0
ret
