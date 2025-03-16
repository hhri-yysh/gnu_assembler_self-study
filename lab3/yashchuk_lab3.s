.global _start
	
.section .rodata
	A:	.word 0x6745
	B:	.byte 0x65
	C:	.long 0x342376
	E:	.byte 0xAA
	F:	.byte 0x89
	K	= 0xA77627	

.section .code
_start:
	; X = A2 * B1 + C4 / ( K - E1 * F1 ) 
