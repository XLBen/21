
@R0
D=M
@NON_NEGATIVE
D;JGE          

@R0
D=M
@temp
M=D            

@32767         
D=A
@temp
D=D&M          
@NOT_MIN
D;JNE          


@temp
D=M
@NOT_MIN
D;JGE          


@R1
M=D            
@R2
M=1            
@R3
M=1            
@END
0;JMP



@R0
D=M
@R1
M=-D   
@R2
M=1            
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