ORG 0000H

; --------- Test values (change for cases) ----------
MOV 50H,#05H     ; Number A
MOV 51H,#05H     ; Number B
; --------------------------------------------------

; Copy data to registers
MOV R2,50H
MOV R3,51H

CHECK:
MOV A,R2
JZ A_FINISHED

MOV A,R3
JZ B_FINISHED

DEC R2
DEC R3
SJMP CHECK

; -------- When A becomes zero first --------
A_FINISHED:
MOV A,R3
JZ SAME_VALUE

MOV R7,#0FFH     ; A < B
SJMP STOP

; -------- When B becomes zero first --------
B_FINISHED:
MOV R7,#01H      ; A > B
SJMP STOP

; -------- When both are equal --------
SAME_VALUE:
MOV R7,#00H

STOP:
SJMP STOP

END
