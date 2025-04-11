	AREA RESET, CODE, READONLY
 ENTRY

      MOV r1, #0          ; r1 = 0
      MOV r2, #15         ; r2 = 15
      MOV r3, #12         ; r3 = 12
        
      MVN r0, r1          ; r0 = NOT r1 (bitwise NOT of 0 is 0xFFFFFFFF)
      AND r4, r0, r2      ; r4 = r0 AND r2 (0xFFFFFFFF AND 15 = 15)
      EOR r4, r4, r3      ; r4 = r4 XOR r3 (15 XOR 12 = 3)

      END