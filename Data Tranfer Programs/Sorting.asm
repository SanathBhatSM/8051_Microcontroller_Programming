;Sorting in a block of data(array)

MOV R2,#04H ;INITIALIZING PASS COUNTER
BEGIN:MOV R3,02H ;INITIALIZING ITERATION COUNTER
	 MOV RO,#40H; INITIALIZING LOCATION COUNTER
	 BACK:MOV A,@R0; 
		  INC R0; INCREMENT R0
		  MOV B,@R0; 
		  CJNE A,B,L1;
		  SJMP L2;
		  L1:JC L2
		  MOV @R0,A;
		  DEC R0;
		  MOV @R0,B;
		  INC R0;
		  L2:DJNZ R3,BACK;
		     DJNZ R2,BEGIN;
SJMP $;
END	