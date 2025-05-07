Xor.asm
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


abusoulutevaue.asm



@R0 // Read the address of R0
D=M // D = the value of R0

// Positive number process
@POSITIVE
D;JGE // If D >= 0 (non-negative), jump to POSITIVE

// Negative number process
@R2 // Load the address of R2
M=1 // R2 = 1 (marked as negative)
D=-D // D = -D (try to calculate the absolute value)

@OVERFLOW
D;JLT // After the negative number process, it is still negative, jump to overflow

// No overflow
@R1 // Load the address of R1
M=D // R1 = D (store absolute value)
@R3 // Load the address of R3
M=0 // R3 = 0 (mark no overflow)
@END // End without overflow
0;JMP // jum end

//overflow
(OVERFLOW)
@R3 // Load R3
M=1 // R3 = 1
@R0 // Reload the address of R0
D=M // D = the original value of R0 (restore the original value)
@R1 // Load the address of R1
M=D // R1 = original value
@END // overflow ends
0;JMP // jum end

// Positive number process
(POSITIVE)
@R1 // Load the address of R1
M=D // R1 = D (positive number is directly stored)
@R2 // Load the address of R2
M=0 // R2 = 0 (marked as positive number)
@R3 // Load the address of R3
M=0 // R3 = 0 (marked as no overflow), because the following is the end, so no need to jum end

(END)
@END
0;JMP //end