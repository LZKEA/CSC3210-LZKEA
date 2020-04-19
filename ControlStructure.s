.section .data
x: .word 3

.section .text
.globl _start
_start:
	ldr r1, =x
	ldr r1, [r1]

	cmp r1, #3
	ble thenpart

	sub r0, r1, #2
	ldr r3, =x
	str r0, [r3]
	b endofif

thenpart:
	sub r0, r1, #1
	ldr r3, =x
	str r0, [r3]

endofif:
	mov r7, #1
	svc #0
	.end
