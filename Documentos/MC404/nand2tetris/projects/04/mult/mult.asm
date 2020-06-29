// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
	
	@R2// zero R2 no inicio
	M=0
	
	@R1
	D=M
	@END // fim se b=0
	D;JEQ
	
	@R0 // pego o valor de a
	D=M
	@R3 // salvo em uma variavel auxiliar
	M=D
	@END // fim se a=0
	D;JEQ

	@pula
	D;JGT

(pula)
	@R2 // pego o valor de r2
	D=M

	@R1 // somo o valor de b
	D=D+M
	
	@R2 //guardo em r2
	M=D
	
	@R3
	M=M-1
	D=M
	
	@pula
	D;JGT

(END)
	@END
	0;JMP
	
	
	
	
	
