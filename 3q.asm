		AREA RESET, DATA, READONLY
ENTRY

        AREA CODE, CODE, READONLY

START
        LDR     R0, =Numbers       ; R0 points to input numbers
        LDR     R1, =Sum           ; R1 points to result
        MOV     R2, #0             ; R2 will hold the sum
        MOV     R3, #5             ; Loop counter = 5 numbers

LOOP
        LDR     R4, [R0], #4       ; Load number into R4, post-increment R0
        MUL     R5, R4, R4         ; R5 = R4 * R4 (square)
        ADD     R2, R2, R5         ; R2 = R2 + square
        SUBS    R3, R3, #1         ; Decrement counter
        BNE     LOOP               ; Repeat if not zero

        STR     R2, [R1]           ; Store final sum in memory

STOP
        B       STOP               ; Infinite loop to end

        AREA DATA, DATA, READWRITE

Numbers  DCD  2, 3, 4, 5, 6        ; Example numbers (change as needed)
Sum      DCD  0                   ; Memory location to store result

        END