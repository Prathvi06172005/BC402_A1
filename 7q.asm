	AREA Reset, CODE, READONLY
ENTRY
    MRS R0, CPSR         ; Move Current Program Status Register value to R0
    MOV R1, #0x13        ; Load a value into R1 (representing new mode bits)
    MSR CPSR_c, R1       ; Update the CPSR control field with R1 value

loop
    B loop
	BX LR
	END