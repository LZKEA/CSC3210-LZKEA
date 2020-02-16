.section .data
val1: .word 6
val2: .word 11
val3: .word 16
val4: .word 0
.section .text
.globl _start
_start:
	ldr r1, =val2
	ldr r1, [r1]
	add r1, r1, #9
	ldr r2, =val3
	ldr r2, [r2]
	ldr r3, =val1
	ldr r3, [r3]
	sub r2, r2, r3
	add r1, r1, r2
	ldr r0, =val4
	str r1, [r0]

	mov r7, #1
	svc #0
.end

