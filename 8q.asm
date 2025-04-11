	AREA MemoryDemo, CODE, READONLY
ENTRY
    LDR r1, =0x40000000  

    LDR r5, [r1]        
    LDR r6, [r1, #4]     
    LDR r7, [r1, #8]     

    ADD r2, r5, r6       
    SUB r2, r2, r7            
    BX LR  

END