// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(START)
	@SCREEN
	D=A
	@arr
	M=D
	
	@8192 // i=8192
	D=A
	@i
	M=D

(LOOP)
	@KBD
	D=M
	
	@WHITE
	D;JEQ
	
	@BLACK
	D;JGT
	
	@LOOP
	0;JMP


(WHITE)
	@arr
	A=M
	M=0
	
	@i
	M=M-1
	D=M
	
	@arr
	M=M+1
	
	@START
	D;JEQ
	@WHITE
	D;JMP	
	

(BLACK)
	@arr	
	A=M
	M=-1

	@i
	M=M-1
	D=M
	
	@arr
	M=M+1
	
	@START
	D;JEQ	
	@BLACK
	D;JMP
	


