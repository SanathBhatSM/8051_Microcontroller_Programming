;ALP to generate Triangular waveform

     MOV A,#00H   ; LOWER VALUE OF THE SQUARE WAVE 00
UP:  MOV P0, A   ; OUTPUT IT THROUGH PORT0
     INC A    ; NEXT VALUE OF THE PLOT
     CJNE A, #0FFH, UP  ; COMPARE THE CONTENTS OF             ACCUMLATOR WITH  MAXMIMUM VALUE IF 
      ; NOT REACHED REPEAT PEAK VALUE OUTPUT 
DOWN: MOV P0, A   ; OUTPUT IT THROUGH PORT0
     DEC A    ; NEXT VALUE OF THE PLOT
     CJNE A, #00H, DOWN ; COMPARE THE CONTENTS OF ACCUMLATOR WITH MAXMIMUM VALUE IF 
      ; NOT REACHED REPEAT
      SJMP UP    ; GENERATE THE WAVE INFINITE TIMES
     END     ; END OF PROGRAM
