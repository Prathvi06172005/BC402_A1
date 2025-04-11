		AREA CODE, CODE, READONLY

START
        LDR     R0, =FibArray   ; R0 points to the Fibonacci array in memory
        MOV     R1, #0          ; First Fibonacci number
        MOV     R2, #1          ; Second Fibonacci number
        MOV     R3, #10         ; Counter (generate 10 numbers)

        STR     R1, [R0], #4    ; Store R1 in FibArray, post-increment R0
        STR     R2, [R0], #4    ; Store R2 in FibArray, post-increment R0
        SUB     R3, R3, #2      ; Already stored two numbers

LOOP
        ADD     R4, R1, R2      ; R4 = R1 + R2 (next Fibonacci number)
        STR     R4, [R0], #4    ; Store R4 in memory, post-increment R0
        MOV     R1, R2          ; R1 = R2
        MOV     R2, R4          ; R2 = R4
        SUBS    R3, R3, #1      ; Decrement counter
        BNE     LOOP            ; Repeat until R3 == 0

        B       STOP

STOP
        NOP                     ; Infinite loop / program end
        B       STOP

        AREA DATA, DATA, READWRITE
FibArray SPACE 40              ; Reserve space for 10 integers (4 bytes each)

        END


