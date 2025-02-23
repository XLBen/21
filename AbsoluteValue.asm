
@R0
D=M
@NON_NEGATIVE
D;JGE         


@R0
D=M
@32768         
D=D+A          
@IS_MIN
D;JEQ


@R0
D=M
@R1
M=-D           
@R2
M=1            
@R3
M=0            
@END
0;JMP

(IS_MIN)
@R0
D=M
@R1
M=D            
@R2
M=1           
@R3
M=1            
@END
0;JMP

(NON_NEGATIVE)
@R0
D=M
@R1
M=D            
@R2
M=0            
@R3
M=0            

(END)
@END
0;JMP          