.section .data
.section .text
.globl _start
_start:
    mov r1, #10
    mov r2, #11
    mov r3, #7
    mov r4, #2
    add r5, r1, r2
    mul r6, r3, r4
    sub r0, r5, r6

    mov r7, #1
    svc #0
.end
