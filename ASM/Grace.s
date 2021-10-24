;a:rdi, b:rsi, c:rdx, c:rcx, e:r8, f:r9, rest: stack
%define SYSCALL(x) 0x2000000 | x
%define grace _main
section .data
	quine: db `;a:rdi, b:rsi, c:rdx, c:rcx, e:r8, f:r9, rest: stack%2$c%%define SYSCALL(x) 0x2000000 | x%2$c%%define grace _main%2$csection .data%2$c%3$cquine: db %4$c%1$s%4$c%2$csection .text%2$c%3$cextern _dprintf%2$c%3$cextern _open%2$c%3$cextern _close%2$c%3$cglobal grace%2$cgrace:%2$c%3$cpush rbx%2$c%3$cmov rdx, 644o%2$c%3$cmov rsi, 0x601%2$c%3$ccall open%2$c%3$cdb %4$cGrace_kid.s%4$c,0%2$copen:%2$c%3$cpop rdi%2$c%3$ccall _open%2$c%3$ccmp rax, 0%2$c%3$cjle end%2$c%3$cmov rdi, rax%2$c%3$cmov r15, rdi%2$c%3$cmov rsi, quine%2$c%3$cmov rdx, quine%2$c%3$cmov rcx, 0x0a%2$c%3$cmov r8, 0x9%2$c%3$cmov r9, 0x60%2$c%3$ccall _dprintf%2$c%3$cmov rdi, r15%2$c%3$ccall _close%2$cend:%2$c%3$cxor rax, rax%2$c%3$cxor rsi, rsi%2$c%3$cxor rdi, rdi%2$c%3$cpop rbx%2$c%3$cret%2$c`
section .text
	extern _dprintf
	extern _open
	extern _close
	global grace
grace:
	push rbx
	mov rdx, 644o
	mov rsi, 0x601
	call open
	db `Grace_kid.s`,0
open:
	pop rdi
	call _open
	cmp rax, 0
	jle end
	mov rdi, rax
	mov r15, rdi
	mov rsi, quine
	mov rdx, quine
	mov rcx, 0x0a
	mov r8, 0x9
	mov r9, 0x60
	call _dprintf
	mov rdi, r15
	call _close
end:
	xor rax, rax
	xor rsi, rsi
	xor rdi, rdi
	pop rbx
	ret
