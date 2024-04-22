ORG 00H      ; Set the origin of the code to address 00H.
mov r0, #20H ; Load the hexadecimal value 20H into register R0.
mov r1, #21H ; Load the hexadecimal value 21H into register R1.

BACK:        ; Label for the loop.
mov A, @R0   ; Move the byte from the memory location pointed to by R0 into accumulator A.
mov @r1, A   ; Move the byte in accumulator A to the memory location pointed to by R1.
INC R0       ; Increment the value of register R0.
INC R1       ; Increment the value of register R1.
DJNZ R0, BACK ; Decrement the value of register R0 and jump back to the label BACK if it's not zero.

END          ; End of the program.
