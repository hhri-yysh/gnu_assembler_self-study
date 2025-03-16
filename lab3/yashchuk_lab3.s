.global _start
	
.section .rodata
	A:	.word 0x6745
	B:	.byte 0x65
	C:	.long 0x342376
	E:	.byte 0xAA
	F:	.byte 0x89
	K	= 0xA77627	
message:
	.ascii " Yashchuk Heorhi\n"
message_len = . - message


.section .data
	X:	.long 0
	buffer:	.space 12

.section .text
_start:
	movswl A, %edx
	movsbl B, %eax
	mov %edx, %ecx
	imul %eax, %ecx

	movsbl E, %edx
	movsbl F, %eax
	imul %edx, %eax

	mov $K, %edx
	mov %edx, %esi
	sub %eax, %esi

	mov C, %eax
	cdq
	idiv %esi
	add %ecx, %eax
	mov %eax, X

	mov X, %eax
	mov $buffer, %rdi
	call _to_ascii

	mov $1, %rax
	mov $1, %rdi
	mov $buffer, %rsi
	mov $12, %rdx
	syscall
	
	mov $1, %rax
	mov $1, %rdi
	mov $message, %rsi
	mov $message_len, %rdx
	syscall

	mov $60, %rax
	xor %rdi, %rdi
	syscall

_to_ascii:
	mov $buffer+11, %rdi
	movb $0, (%rdi)
	dec %rdi
	mov $10, %ecx

.loop:
	xor %edx, %edx
        div %ecx
        add $'0', %dl
        mov %dl, (%rdi)
        dec %rdi
        test %eax, %eax
        jnz .loop

        inc %rdi
        ret
