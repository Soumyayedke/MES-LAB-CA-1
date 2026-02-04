ORG 0000H

; -------- Given test values --------
MOV 50H,#07H     ; Value A (given)
MOV 51H,#04H     ; Value B (given)
; ----------------------------------

; Move data into registers
MOV R2,50H
MOV R3,51H

COMPARE_LOOP:
MOV A,R2
JZ CHECK_A_ZERO

MOV A,R3
JZ CHECK_B_ZERO

DEC R2
DEC R3
SJMP COMPARE_LOOP

; -------- A becomes zero first --------
CHECK_A_ZERO:
MOV A,R3
JZ BOTH_EQUAL

MOV R7,#0FFH     ; A < B
SJMP FINISH

; -------- B becomes zero first --------
CHECK_B_ZERO:
MOV R7,#01H      ; A > B
SJMP FINISH

; -------- Both values equal --------
BOTH_EQUAL:
MOV R7,#00H

FINISH:
SJMP FINISH

END
