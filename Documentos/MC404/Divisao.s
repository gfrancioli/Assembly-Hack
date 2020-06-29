Divisao	cmp		r0, r1
		bge		Calculo
		mov		PC, LR		
Calculo	sub		r0, r0, r1
		add		r2, r2, #1
		bal		Divisao
		
