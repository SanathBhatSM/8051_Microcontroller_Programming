;Transfer a block of data starting from one address to another

MOV R1,#40H
MOV R0,#50H
MOV R2,#05H
BACK:MOV A,@R1
MOV @R0,A
INC R0
INC R1
DJNZ R2,BACK
HERE:SJMP HERE
END