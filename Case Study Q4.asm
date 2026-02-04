ORG 0000H

; -------- LOW BYTE (01H) --------

CLR A
ORL A,#01H        ; A = 01H
MOV R7,A          ; Save low byte in R7

; -------- HIGH BYTE (20H) --------

CLR A
ORL A,#20H        ; A = 20H
MOV B,A           ; Move to B

; Restore low byte

MOV A,R7          ; A = 01H

; Final:
; B:A = 2001H = 8193

HERE: SJMP HERE

END
