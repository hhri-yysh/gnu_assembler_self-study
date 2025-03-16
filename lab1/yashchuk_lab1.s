.global _start

.section .text

_start:
	mov $1, %rax
	mov $1, %rdi
	mov $message, %rsi
	mov $message_len, %rdx
	syscall
	
	mov $1, %rax
	mov $1, %rdi
	mov $art, %rsi
	mov $art_len, %rdx
	syscall

	mov $60, %rax
	xor %rdi, %rdi
	syscall

.section .rodata
message:
	.ascii "Yashchuk Heorhi\n"
message_len = . - message

art:
	.byte 0x20
	.rept 5
		.byte 0x2D
	.endr
	.byte 0x0a, 0x2f
	.rept 5
		.byte 0x20
	.endr
	.byte 0x5c
	.byte 0x0a, 0x7c
	.rept 5 
		.byte 0x20
	.endr
	.byte 0x7c, 0x0a
	.byte 0x5c
	.rept 5
		.byte 0x20
	.endr
	.byte 0x2f, 0x0a
	.byte 0x20
	.rept 5
		.byte 0x2d
	.endr
	.rept 5
		.byte 0x0a
		.byte 0x7c
	.endr
	.byte 0x0a
art_len = . - art
