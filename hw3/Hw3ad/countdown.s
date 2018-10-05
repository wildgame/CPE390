	.globl	_z9countDowni
_z9countDowni:
	mov	r0,#10
.L1:	sub	r1,r1 #1
	bne	.L1
	bx	lr
