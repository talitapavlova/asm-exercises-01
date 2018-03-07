Exercises - Assembler Session 01
================================


Prerequisite
------------
Install Atmel Studio 7
   * Get it from https://www.microchip.com/avr-support/atmel-studio-7
   * install support for AVR 8-bit MCU only
   * don't install ASF and example projects


Atmel Studio Tutorial
---------------------

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


Exercises
---------

*Use the simulator in Atmel Studio 7 to verify your solutions to the following exercises.*

1. Write a program that:
    * puts the decimal value 42 into register R16
    * puts the hexadecimal value 33 into register R17
    * puts the binary value 10110010 into register R18

1. Write a program that add the values 0x08 and 0xb3. Place the result in R18.

