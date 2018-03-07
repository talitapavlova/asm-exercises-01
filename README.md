Exercises - Assembler Session 01
================================

1. Open Atmel Studio and on the Start Page select *Download Documentation* (alternatively: Help > Add and Remove Help Content)
    * Download the "AVR Instruction Set Manual" and documentation for Atmel Studio and STK600 AVR Flash MCU Start Kit.
    * Open the "AVR Instruction Set Manual" and find the description of `LDI`. Which registers can we load data into with `LDI`? Explain how this is related to the 16-bit Opcode for `LDI`.

1. Create a new assembler project for atmega2560 in Atmel Studio
    * How big is the program memory of the atmega2560 and how much ram does it have?
    * Replace the default code with 
        ```avrasm 
            ldi r16, 0b0100_0010    ; load value into register r16
            nop                     ; does nothing, but provides a place to put a breakpoint
        ```  
    * Place a breakpoint before `nop` and start debugging(F5). 
    * Open the *Processor Status* window and verify that register *R16* contains the correct value.


*Use the simulator in Atmel Studio 7 to verify your solutions to the following exercises.*

3. Write a program that:
    * puts the decimal value 42 into register R16
    * puts the hexadecimal value 33 into register R17
    * puts the binary value 10110010 into register R18

1. Write a program that add the values 0x08 and 0xb3. Place the result in R18.

*Do the following exercises using the STK600 development board.*

5. Create a new Atmel Studio project and replace the default code with this:  
    ```avrasm
        ldi r16, 0xff       ; load the bit pattern 1111 1111 into r16
        out ddra, r16       ; write the bit pattern to port a's data direction register
        ldi r16, ~(1<<pina) ; invert the bit pattern 0000 0001 and write it to r16
        out porta, r16      ; write the pattern to port a's output control register
    ```
    * Make sure that port a and the leds are connected.
    * Build the project, and program the stk600 board
    * Verify that the rightmost led got turned on