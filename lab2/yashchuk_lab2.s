.global _start

.section .rodata
	A:	.long	0xFFF, 0xABC, -9843
	B:	.long	0x00A5A5, 0x0AB390
	C:	.word	0x5122
	D:	.single 3.14	
	E:	.quad 0b1110110100111011
	F:	.quad 0xABCD8923FE11AABB
	K:	.long 0xA77627
	HelloMessage:	.asciz "Hello ,world!\n"
