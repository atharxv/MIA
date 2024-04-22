ORG 000H      ; Set the origin of the code to address 000H.
LJMP START   ; Long Jump to the address labeled START.
ORG 0030H    ; Set the origin of the code to address 0030H.
START :      ; Label for the start of the code.
CPL P1.0     ; Complement the bit at P1.0 (toggle the LED, assuming P1.0 is connected to an LED).
ACALL WAIT   ; Call the subroutine WAIT.
SJMP START   ; Jump back to the START label to continue looping.
WAIT :       ; Subroutine for waiting.
MOV R0, #00FH  ; Load the value 00FH into register R0.
HERE :       ; Label for the loop.
DJNZ R0, HERE  ; Decrement R0 and jump back to HERE if it's not zero.
RET          ; Return from the subroutine.
END          ; End of the program.
