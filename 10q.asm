		AREA BlockTransfer, CODE, READONLY   
 ENTRY                               

        LDR r0, =SourceAddr                
        LDR r1, =DestAddr                  
        LDR r2, =BlockSize                 

TransferLoop
        LDMIA r0!, {r3-r6}
        STMIA r1!, {r3-r6}                 
        SUB r2, r2, #16                    
        CMP r2, #0                        
        BNE TransferLoop                   


        AREA BlockData, DATA, READWRITE   
SourceAddr    DCD 0x11111111, 0x22222222, 0x33333333, 0x44444444 
DestAddr      SPACE 16
BlockSize     DCD 16                       
	    END