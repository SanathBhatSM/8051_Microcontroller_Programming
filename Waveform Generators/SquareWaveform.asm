; ALP to generate Sqaure waveform

L1: MOV R1,#00H
    ACALL DELAY
    MOV R1, #0FFH
    ACALL DELAY
    SJMP L1

    
DELAY:
	MOV R1,#0FFH
L5:	MOV R2,#0FFH
L3:	DJNZ R2,L3
	DJNZ R1,L5
	
	RET
	END