ORG 000H      ; Set the origin of the code to address 000H.
MOV R3, #09H ; Load the hexadecimal value 09H into register R3.
MOV R4, #20H ; Load the hexadecimal value 20H into register R4.
MOV A, @R0   ; Move the byte from the memory location pointed to by R0 into accumulator A.
MOV R1, A    ; Move the byte in accumulator A to register R1.

BACK:        ; Label for the loop.
INC R0       ; Increment the value of register R0.
MOV A, @R0   ; Move the byte from the memory location pointed to by R0 into accumulator A.
MOV R2, A    ; Move the byte in accumulator A to register R2.
CLR C        ; Clear the carry flag.
SUBB A, R1   ; Subtract the byte in register R1 from the byte in accumulator A, with borrow.
JNC SKIP     ; Jump to the label SKIP if there is no carry after the subtraction.
MOV A, R2    ; Move the byte in register R2 to accumulator A.
MOV R1. A    ; Move the byte in accumulator A to register R1.

SKIP:        ; Label to skip if there is no carry.
DJNZ R3, BACK ; Decrement the value of register R3 and jump back to the label BACK if it's not zero.

END          ; End of the program.
