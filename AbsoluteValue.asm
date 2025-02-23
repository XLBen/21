
@R0
D=M
@NON_NEGATIVE
D;JGE          


@R0
D=M
@aads    
M=0
@32767
D=A
@aads
M=D            

@R0
D=M
@aads
M=D& M         
@aads
D=M
@NOT_MIN
D;JNE          


@R0
D=M
@NOT_MIN
D;JGE          

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

(NOT_MIN)
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