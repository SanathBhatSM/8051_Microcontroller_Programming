;Dividing 2 8-bit numbers
MOV A,#0FFH	;A=FFH
MOV B,#55H	;B=55H
DIV AB 		;A=03H,B=00H
SJMP $		
END