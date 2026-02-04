ORG 0000H

; -------- Test values (change for cases) --------
MOV 50H,#03H;
MOV 51H,#06H;

; -----------------------------------------------

; Copy to registers
MOV R0,50H
MOV R1,51H

COMPARE:

MOV A,R0
JZ A_ZERO

MOV A,R1
JZ B_ZERO

DEC R0
DEC R1
SJMP COMPARE

; ------------ A reached zero first ------------
A_ZERO:
MOV A,R1
JZ EQUAL

MOV R7,#0FFH     ; A < B
SJMP DONE

; ------------ B reached zero first ------------
B_ZERO:
MOV R7,#01H      ; A > B
SJMP DONE

; ------------ Equal ------------
EQUAL:
MOV R7,#00H

DONE:
SJMP DONE

END
