 ORG 0000H
 
 
; -------- Test values (change for cases) --------
; --------- Test values (change for cases) ----------
MOV 50H,#05H;
MOV 50H,#05H     ; Number A
MOV 51H,#05H;
MOV 51H,#05H     ; Number B
; -----------------------------------------------
; --------------------------------------------------
 
 
; Copy to registers
; Copy data to registers
MOV R0,50H
MOV R2,50H
MOV R1,51H
MOV R3,51H
 
 
COMPARE:
CHECK:
MOV A,R2
JZ A_FINISHED
 
 
MOV A,R0
MOV A,R3
JZ A_ZERO
JZ B_FINISHED
 
 
MOV A,R1
DEC R2
JZ B_ZERO
DEC R3
SJMP CHECK
 
 
DEC R0
; -------- When A becomes zero first --------
DEC R1
A_FINISHED:
SJMP COMPARE
MOV A,R3

JZ SAME_VALUE
; ------------ A reached zero first ------------
A_ZERO:
MOV A,R1
JZ EQUAL
 
 
 MOV R7,#0FFH     ; A < B
 MOV R7,#0FFH     ; A < B
SJMP DONE
SJMP STOP
 
 
; ------------ B reached zero first ------------
; -------- When B becomes zero first --------
B_ZERO:
B_FINISHED:
 MOV R7,#01H      ; A > B
 MOV R7,#01H      ; A > B
SJMP DONE
SJMP STOP
 
 
; ------------ Equal ------------
; -------- When both are equal --------
EQUAL:
SAME_VALUE:
 MOV R7,#00H
 MOV R7,#00H
 
 
DONE:
STOP:
SJMP DONE
SJMP STOP
 
 
 END
 END
