@R0
D=M
@R1
D=D+M

@R2
M=D
@R3
M=0

@R0
D=M
@postive
D;JGE
(postive)
@R1
D=M
@overflowcheck
D;JLT
@END
0;JMP
(postive)
@R1
D=M
@overflowcheck
D;JGE
@END
0;JMP

(overflowcheck)
@R2D=M
@overflow
D;JLT

@R2
D=M
@END
D;JGE

(overflow)
@R3
M=1

(END)

