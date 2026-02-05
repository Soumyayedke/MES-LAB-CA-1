ORG 0000H

; -------- LOW BYTE (35H) --------
CLR A
ORL A,#35H        ; Construct low byte
MOV R5,A          ; Save low byte

; -------- HIGH BYTE (25H) --------
CLR A
ORL A,#25H        ; Construct high byte
MOV B,A           ; Store high byte in B

; -------- RESTORE RESULT --------
MOV A,R5          ; Final result in Accumulator

; Final value:
; B : A = 25H : 35H = 2535H = 9525 (decimal)

HERE: SJMP HERE

END
