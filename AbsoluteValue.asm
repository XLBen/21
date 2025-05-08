
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