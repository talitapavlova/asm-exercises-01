;
; Exercise4.asm
;
; Created: 3/16/2018 7:36:50 AM
; Author : Talita
;


	ldi r16, 0x08			; load 8 into register 16
	ldi r18, 0xb3			; load 179 into register 18
	add r18, r16			; 179 + 8 = 187 (0xbb) store the result into r18
	nop
