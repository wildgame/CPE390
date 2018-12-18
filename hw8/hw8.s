	.global	_z12eratosthenesii
_z12eratosthenes:
	push	{r2,r3,r4,r5,r6,r7,r8}
	mov	r2,r0
	mov	r3,r1
	mov	r4,#2
	mov	r5,#3
	mov	r6,r9
	mov	r7,#0
	mov	r8,#0xffffff
	add	r5,#63
	ls	r5,#6
.setprime:
	str	r0,[r0,r2]
	add	r2,#4
	add	r7,#1
	cmp	r3,r7
	bgt	.setprime
.valueset:
	mov	r5,#1
	add	r8,r6,#1
	lsr	r4,r8,#5
	lsl	r4,#2
	and	r7,r8,#31
	lsl	r3,r7
	cmp	r6,r5
	beq	.primecheck
.remove:
	ldr	r0,[r0,r2]
	bic	r8,r3
	str	r8,[r0,r2]
	add	r6,r5
	add	r6,r3
	cmp	r6,r1
	bmi	.valueset
.nextprime:
	add	r5,#2
	cmp	r3,r1
	bge	.complete
	mov	r6,r5
	bale	.valueset
.primecheck:
	ldr	r8,[r0,r2]
	ands	r3,r8
	beq	.nextprime
	mul	r6,r5,r5
	add	r2,#1
	bal	.valueset
.complete:
	mov	r0,r2
	pop	{r2,r3,r4,r5,r6,r7,r8}
	bx	lr
