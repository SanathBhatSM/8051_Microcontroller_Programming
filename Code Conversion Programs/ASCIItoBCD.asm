;Code Conversion ASCII to BCD

MOV A,#'4'
MOV B,#'7'
ANL A,#0FH
SWAP A
MOV R0,A
MOV A,B
ANL A,#0FH
ADD A,R0
MOV R1,A
SJMP $
END