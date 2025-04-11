	AREA RESET, CODE, READONLY
ENTRY

     MOV     R0, #13          ; Number to check (change here)
     MOV     R1, #2           ; Divisor = 2
     MOV     R2, #1           ; Assume number is prime

CHECK
      CMP     R1, R0           ; If divisor >= number
      BGE     DONE             ; We're done, it's prime

      
      MUL     R4, R3, R1       ; R4 = (quotient * divisor)
      CMP     R0, R4           ; If number == result, it's divisible
      BEQ     NOT_PRIME

      ADD     R1, R1, #1       ; divisor++
      B       CHECK

NOT_PRIME
      MOV     R2, #0           ; Set result = 0 (not prime)

DONE
      LDR     R5, =Result
      STR     R2, [R5]

STOP
      B       STOP             ; Infinite loop

      AREA DATA, DATA, READWRITE
Result  DCD     0
      END