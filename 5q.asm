		AREA SwapValues, CODE, READONLY
ENTRY

		MOV R0, #7         
        MOV R1, #3        

        
        ADD R0, R0, R1      
        SUB R1, R0, R1       
        SUB R0, R0, R1  
		BX LR

      

        END