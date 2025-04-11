        AREA PRGM,CODE, READONLY
 ENTRY
		MOV R0, #0xF0F0F0F
        MOV R1, #0          
        MOV R2, #32         
COUNT   ANDS R3, R0, #1     
        ADDNE R1, R1, #1   
        LSR R0, R0, #1      
        SUBS R2, R2, #1     
        BNE COUNT   
		BX LR
		END