.section .data
x: .word 0
y: .word 0

.section .text
.globl _start
_start:
	ldr r1, =x	@load address of x to r1
	ldr r1, [r1]	@load x to rl

	cmp r1, #0	@comparison values that determine branch
	bne thenpart	@branch on not equal

thenpart:		@branch here if condition is met
	mov r2, #1
	ldr r3, =y	@load the address of y into r3
	str r2, [r3]	@store r2 value into y address


	mov r7, #1
	svc #0
	.end
