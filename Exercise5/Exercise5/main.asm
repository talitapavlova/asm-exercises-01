;
; Exercise5.asm
;
; Created: 3/16/2018 7:42:26 AM
; Author : Talita
;


	ldi r16, 34					; load 34 (0x22) into r16

	ldi r17, 55					; load 55 (0x37) into r17
	subi r17, 12				; 55 - 12 = 43 (0x2b), store the result into r17
	add r16, r17				; 34 + 43 = 77 (0x4d), store the result into r16

	ldi r17, 33					; load 33 (0x21) into r17
	ldi r18, 3					; load 3 into r18
	mul r17, r18				; 3*33 = 99 (0x63), the result is automatically stored into r0
	add r16, r0					; 77 + 99 = 176 (0xb0), store the result into r16
	nop