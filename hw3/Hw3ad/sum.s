	.globl _z3sumii
_z3sumii:
	mov	r2,r0
	mov	r3,r1
.L1:	add	r2,r2,#1
	add	r2,r2,r0;
	cmp	r2,r3
	ble	.L1
	bx	lr
