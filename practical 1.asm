ORG 000H;    ; Set the origin of the code to address 000H.
mov a, #09H; ; Load the hexadecimal value 09H (which is 9 in decimal) into accumulator A.
mov b, #03H; ; Load the hexadecimal value 03H (which is 3 in decimal) into register B.
mov R2, a;   ; Move the value of accumulator A into register R2.
mov R3, b;   ; Move the value of register B into register R3.
add a, b;    ; Add the value in register B to the value in accumulator A.
mov 20h, a;  ; Move the value in accumulator A to memory location 20h.
mov R2, a;   ; Move the value in accumulator A to register R2.

subb a, b;   ; Subtract the value in register B from the value in accumulator A, with borrow.
mov 21h, a;  ; Move the result of the subtraction to memory location 21h.
mov a, R2;   ; Move the value in register R2 to accumulator A.

mul ab;      ; Multiply the value in accumulator A by the value in register B, result in A and B.
mov 23h, a;  ; Move the result of the multiplication to memory location 23h.
mov 23h, b;  ; Move the second byte of the result of the multiplication to memory location 23h.
mov a, R2;   ; Move the value in register R2 to accumulator A.
mov b, R3;   ; Move the value in register R3 to accumulator B.

div ab;      ; Divide the value in accumulator A (dividend) by the value in accumulator B (divisor), quotient in A, remainder in B.
mov 24h, a;  ; Move the quotient of the division to memory location 24h.
mov 25H, b;  ; Move the remainder of the division to memory location 25h.
mov a, R2;   ; Move the value in register R2 to accumulator A.
mov b, R3;   ; Move the value in register R3 to accumulator B.
end;         ; End of the program.


