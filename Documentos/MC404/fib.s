fib		mov		r2, #0		;a=1
		mov		r3, #1		;b=1
		cmp		r0, r3		;um?
		beq		um
		mov		r4, #1		;i=1
for		add		r1, r2, r3	;fib=a+b
		mov		r2, r3		;a=b
		mov		r3, r1		;b=fib
		add		r4, r4, #1	;i++
		cmp		r4, r0		;i<n
		beq		fim
		bal		for
um		mov		r1, r0
fim
