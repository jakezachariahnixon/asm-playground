; Using system call 0x02000004 to write "Hello, World!" to the console.

	global	_main

	section	.text
_main:	mov	rax, 	0x02000004
	mov	rdi, 	1
	mov	rsi,	message
	mov	rdx,	14		; 14 chars inc: "\n"
	syscall
	mov	rax,	0x02000001
	xor	rdi,	rdi
	syscall

	section	.data
message:db	"Hello, World!", 10
