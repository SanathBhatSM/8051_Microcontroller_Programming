;Add 2 8-bit numbers

	MOV R4,#00H		;CLEAR R4 TO STORE CARRY
	MOV A,#0FFH		;A=OFFH
	ADD A,#02H		;A=02H
	MOV R3,A		;A=R3
	JNC NEXT		;JUMP TO NEXT OF CARRY NOT EQUAL TO 1
	INC R4			;INCREMENT R4
NEXT:SJMP $			
	END