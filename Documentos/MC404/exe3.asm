//pego a posicao 999
@999
D=A
@i
M=D

//zero r0
@0
D=A
@R0
M=D

(loop)
@i
A=M
D=M
@945
D=D-A
@somai
D;JLT

(loopup)
@i
A=M
D=M
@1045
D=D-A
@somaiup
D;JLT
@END
D;JGT

(incrementa)
@R0
M=M+1
@loopup
0;JMP

(somai)
@i
M=M+1
A=M
D=M
@loop
0;JMP

(somaiup)
@i
M=M+1
A=M
D=M
@incrementa
0;JMP

(END)
@END
0;JMP





 


