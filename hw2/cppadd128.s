	.global	z6_BigNumii

	Push	{r2,r3,r4,r5,r6,r7,r8,r9}
BigNum:
	ldr	r2,r0,[#12]
        ldr     r3,r0,[#8]
        ldr     r4,r0,[#4]
        ldr     r5,r0,[#0]
        ldr     r6,r1,[#12]
        ldr     r7,r1,[#8]
        ldr     r8,r1,[#4]
        ldr     r9,r1,[#0]
	adc	r0,r2,r6
	adc	r0,r3,r7
	adc	r0.r4,r8
	adc	r0,r5,r9
	bx	lr

