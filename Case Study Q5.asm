ORG 0000H

; Initialize pointers and counter
MOV R0,#40H      ; Source pointer
MOV R1,#40H      ; Destination pointer
MOV R2,#20H      ; Total 32 bytes

CHECK:
MOV A,@R0
INC R0

CJNE A,#0FFH,STORE_DATA
SJMP SKIP_DATA

STORE_DATA:
MOV @R1,A
INC R1

SKIP_DATA:
DJNZ R2,CHECK

; -------- Fill unused locations with 00H --------

MOV R2,#20H      ; Max range limit

CLEAR:
MOV A,R1
CJNE A,#60H,WRITE_ZERO
SJMP END_PROG

WRITE_ZERO:
MOV @R1,#00H
INC R1
SJMP CLEAR

END_PROG:
SJMP END_PROG

END
