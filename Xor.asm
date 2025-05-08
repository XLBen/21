@0 // Select R0
D=!M // D = NOT(M) 

@1 // Select R1
D=D&M // D = AND(a=D,b=M，output=D) 

@2 // Select memory address 2 (R2)
M=D // R2 = D 

@1 // Reselect memory address 1 (R1)
D=!M // D = NOT(M) 

@0 // Select memory address 0 (R0)
D=D&M // D = AND(a=D,b=M，output=D) 

@2 // Select memory address 2 (R2)
M=D|M // R2 = D | R2 ，R2 = (NOT R0 AND R1) OR (NOT R1 AND R0) = R0 XOR R1
