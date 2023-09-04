;Find wheather the given number is bitwise palindrome or not


		CLR C			;CLEAR C FOR ROTATION
		MOV A,#0A5H		;MOVE NUMBER TO ACCUMULATOR 
		MOV B,A			;SAVE COPY OF A IN B
		MOV R1,#00H		;RESERVE REGISTER TO STORE REVERSED NUMBER
		MOV R2,#08H		;INITIALIZE R2 FOR COUNTER
AGAIN:	RRC A			;ROTATE RIGHT ACCUMULATOR WITH CARRY
		MOV R3,A		;MOV A CONTENT TO R3
		MOV A,R1		;MOV R1 CONTENT TO A
		RLC A			;ROTATE LEFT ACCUMULATOR WITH CARRY
		MOV R1,A		;MOV LEFT ROTATED DATA TO R1
		MOV A,R3		;MOV RIGHT ROTATED DATA TO R3
		DJNZ R2,AGAIN
		MOV A,R1 		;MOV REVERSED NUMBER TO A
		CJNE A,B,NEXT
		MOV R0,#0FFH	;STORE R0 WITH FFH(GIVEN NUMBER IS BITWISE PALINDROME)
		SJMP SKIP
NEXT:	MOV R0,#00H		;STORE R0 WITH 00H(GIVEN NUMBER IS NOT BITWISE PALINDROME)
SKIP:	SJMP $
		END