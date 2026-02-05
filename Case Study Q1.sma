ORG 0000H

; Load first value (100 decimal)
MOV A, #64H        ; A ← 100

; Load multiplier (11 decimal)
MOV B, #0BH        ; B ← 11

; Perform multiplication
MUL AB             ; Result → B:A (1100 = 044CH)

; Add extra value to get PRN 1124
ADD A, #18H        ; Add 24 (decimal)

; Check for carry and adjust higher byte
JNC SKIP_INC
INC B

SKIP_INC:
; Final output:
; B:A = 0464H → 1124 decimal (PRN)

STOP: SJMP STOP   ; Infinite loop
END
