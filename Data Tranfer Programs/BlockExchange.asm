;Exchange a block of data with another block of data

MOV R0,#30H
MOV R1,#40H
MOV R4,#05H
BACK:MOV A,@R0
XCH A,@R1
MOV @R0,A
INC R0
INC R1
DJNZ R4,BACK
HERE:SJMP HERE
END