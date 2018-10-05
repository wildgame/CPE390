	.globl _z4facti
_z4facti:
	mov	r1,#1
	mov	r3,r0
.L1:	add	r2,r1,#1
	mul	r2,r2,r1
	cmp	r2,r3
	ble	.L1
	bx	lr
