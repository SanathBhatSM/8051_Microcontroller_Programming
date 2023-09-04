;Multiplying 16-bit number with 8-bit number 


	MOV A,40H	;MOVE LOWER BYTE OF 16 BIT OPERAND TO A 
	MOV B,50H	;MOV 8 BIT OPERAND TO B
	MUL AB		;MULTIPLY A AND B,A AND B ARE STORED WITH LOWER AND HIGHER BYTE OF RESULT RESPECTIVELY
	MOV 62H,A	;MOVE CONTENT OF A TO 62H LOCATION
	MOV 61H,B	;MOVE CONTENT OF B TO 61H LOCATION
	MOV A,41H	;MOVE HIGHER BYTE OF 16 BIT OPERAND TO A 
	MOV B,50H	;MOV 8 BIT OPERAND TO B
	MUL AB		;MULTIPLY A AND B,A AND B ARE STORED WITH LOWER AND HIGHER BYTE OF RESULT RESPECTIVELY
	ADD A,61H	;CONTENT OF 61H AND A ARE ADDED
	MOV 61H,A	;CONTENT OF A IS MOVED TO 61H
	MOV A,B		;MOVE CONTENT OF B TO A
	ADDC A,#00H	;ADD CONTENT OF A AND 00H WITH CARRY
	MOV 60H,A	;MOV CONTENT OF A TO 60H LOCATION
	SJMP $
	END