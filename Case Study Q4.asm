ORG 0000H

; -------- Store lower byte (03H) --------

CLR A
ORL A,#03H        ; A = 03H
MOV R6,A          ; Save lower byte

; -------- Store higher byte (1FH) --------

CLR A
ORL A,#1FH        ; A = 1FH
MOV B,A           ; Save higher byte in B

; -------- Restore lower byte --------

MOV A,R6          ; A = 03H

; Final result:
; B:A = 1F03H  (decimal equivalent = last 4 digits)

LOOP: SJMP LOOP

END
