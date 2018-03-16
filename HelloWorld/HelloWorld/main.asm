;
; HelloWorld.asm
;
; Created: 3/7/2018 9:21:47 PM
; Author : chfs
;

    
start:
	                        ; SETUP
    ldi r16, 0xff           ; load the bit pattern 1111 1111 into r16
    out ddra, r16           ; write the bit pattern to port a's data direction register
	
                            ; MAIN
    ldi r16, ~(4<<pa0)      ; invert the bit pattern 0000 0000 and write it to r16
    out porta, r16          ; write the pattern to port a's output control register
	nop
	rjmp start				; start from begining