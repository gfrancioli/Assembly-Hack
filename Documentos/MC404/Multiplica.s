Multiplica	stmdb	sp!,{lr}
			add		r2, r2, r0
			sub		r1, r1 , #1
			cmp		r1, #0
			beq		fim_mul
			bl		Multiplica
fim_mul		ldmia	sp!,{lr}
			mov		pc, lr
			
