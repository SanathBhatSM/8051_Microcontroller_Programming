;Check if the number is even or odd


		CLR C		;CLEAR CARRY BIT
		MOV A,#26H	;A=26H
		RRC A		;ROTATE RIGHT WITH CARRY
		JC L_ODD	;JUMP TO L_ODD IF C=1
		MOV R0,#0FFH;R0=FFH(NUMBER IS EVEN)
		SJMP SKIP	
L_ODD:	MOV R1,#0FFH;R1=FFH(NUMBER IS ODD)
SKIP:	SJMP $
		END