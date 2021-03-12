	.data
	.balign 4
message:	.asciz "GCD : Greatest Common Divisor"

	.balign 4
get_num_1:	.asciz "Number 1 : "

	.balign 4
get_num_2:	.asciz "Number 2 : "

	.balign 4
pattern:	.asciz "%d"

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
	ldr r2, addr_lr_bu_3
	str lr, [r2]
mod_loop:
	cmp r0, r1
	blt end_mod
	sub r0, r0, r1
	bl mod_loop
end_mod:
	ldr lr, addr_lr_bu_3
	ldr lr, [lr]

	bx lr

gcd_func:
	ldr r2, addr_lr_bu_2
	str lr, [r2]
gcd_loop:
	cmp r1,b #0
	beq end_gcd
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bl gcd_loop
end_gcd:
	ldr lr, addr_lr_bu_2
	ldr lr, [lr]

	bx lr

	.global main

main:
	ldr r1, addr_lr_bu
	str lr, [r1]

	ldr r0, addr_message
	bl printf

	ldr r0, addr_get_num_1
	bl printf
	
	ldr r0, addr_pattern
	ldr r1, addr_num_1
	bl scanf

	ldr r0, addr_get_num_2
	bl printf

	ldr r0, addr_pattern
	ldr r1, addr_num_2
	bl scanf

	ldr r0, addr_num_1
	ldr r0, [r0]
	ldr r1, addr_num_2
	ldr r1, [r1]
	bl gcd_func

	mov r3, r0

	ldr r0, addr_output
	ldr r1, addr_num_1
	ldr r1, [r1]
	ldr r2, addr_num_2
	ldr r2, [r2]
	bl printf

	ldr lr, addr_lr_bu
	ldr lr, [lr]
	bx lr

addr_message:	.word message
addr_get_num_1:	.word get_num_1
addr_get_num_2:	.word get_num_2
addr_pattern:	.word pattern
addr_num_1:	.word num_1
addr_num_2:	.word num_2
addr_lr_bu:	.word lr_bu
addr_lr_bu_2:	.word lr_bu_2
addr_lr_bu_3:	.word lr_bu_3
addr_output:	.word output

.global printf
.global scanf
