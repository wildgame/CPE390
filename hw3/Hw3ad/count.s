	.globl	_z5counti
_z5counti:
	mov r0,#1
	mov r1,#10
.L1:	add r0,r0,#1
	cmp r0,r1
	ble .L1
	bx lr
