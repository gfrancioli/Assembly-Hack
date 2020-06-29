vet		mov		r2, r0
		ldr		r3, [r0]
for
		cmp		r3, r2
		blt		menor
		bal		pula
menor
		mov		r2, r3
		bal		pula
pula
		ldr		r3, [r0,#4]!
		add		r4, r4, #1
		cmp		r4, r1
		beq		fim
		bal		for
fim
