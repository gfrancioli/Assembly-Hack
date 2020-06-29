ADR		r0, vetor1
				MOV		r1, #tam1
EncontraRetangulo	
				LDR 		r4, [r0]	;passo para outro reg para usar o r0 e r1
				MOV 		r5, r1	
				MOV		r6, #0	;xinf = 0
				MOV		r7, #0	;yinf = 0
				MOV 		r8, #0	;xsup = 0
				MOV 		r9, #0	;ysup = 0
				MOV 		r10, #0	;i=0
loop
				CMP		r10, r1
				BEQ		fim
				MOV		r0, r6	;r0 = xinf
				MOV		r1, r7	;r1 = yinf
				LDR 		r2, [r4]!		;x
				LDR		r3, [r4, #4]!	;y
				BL		AjustaBordaInfEsq
				MOV		r6,r0	;xinf = r0 (att)
				MOV		r7,r1	;yinf = r1 (att)
				MOV		r0,r8	;r0 = xsup 
				MOV		r1,r9	;r1 = ysup
				BL		AjustaBordaSupDir
				MOV		r8,r0	;xsup = r0 (att)
				MOV		r9,r1	;ysup = r1 (att)
				BAL		loop
AjustaBordainfEsq	
				STMFD	r13! {r6-r9}
				CMP		r6
AjustaBordaSupDir				
fim				
vetor1			DCD		7,8,15,10
tam1				EQU		2