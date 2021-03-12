	.data
	.balign 4
message:	.asciz "GCD : Greatest Common Divisor\n"

	.balign 4
get_num_1:	.asciz "Number 1 : "
	.balign 4
get_num_2:	.asciz "Number 2 : "

	.balign 4
pattern:	.asciz "%d"
	.balign 4
test:		.asciz "Test %d\n"

	.balign 4
num_1:		.word 0
	.balign 4
num_2:		.word 0

	.balign 4
output:		.asciz "GCD of %d and %d is %d.\n"

	.balign 4
lr_bu:		.word 0
	.balign 4
lr_bu_2:	.word 0
	.balign 4
lr_bu_3:	.word 0

	.text
mod_func:
	ldr r2, =lr_bu_3
	str lr, [r2]
mod_loop:
	cmp r0, r1
	blt end_mod
	sub r0, r0, r1
	bl mod_loop
end_mod:
	ldr lr, =lr_bu_3
	ldr lr, [lr]

	bx lr

gcd_func:
	ldr r2, =lr_bu_2
	str lr, [r2]
	mov r4, #0
gcd_loop:
	cmp r1, r4
	beq end_gcd
	bl mod_func

	mov r2, r0
	mov r0, r1
	mov r1, r2
	bl gcd_loop
end_gcd:
	ldr lr, =lr_bu_2
	ldr lr, [lr]

	bx lr

	.global main

main:
	ldr r1, =lr_bu
	str lr, [r1]

	ldr r0, =message
	bl printf

	ldr r0, =get_num_1
	bl printf
	ldr r0, =pattern
	ldr r1, =num_1
	bl scanf

	ldr r0, =get_num_2
	bl printf
	ldr r0, =pattern
	ldr r1, =num_2
	bl scanf

	ldr r0, =num_1
	ldr r0, [r0]
	ldr r1, =num_2
	ldr r1, [r1]
	bl gcd_func

	mov r3, r0

	ldr r0, =output
	ldr r1, =num_1
	ldr r1, [r1]
	ldr r2, =num_2
	ldr r2, [r2]
	bl printf

	ldr lr, =lr_bu
	ldr lr, [lr]
	bx lr

.global printf
.global scanf
