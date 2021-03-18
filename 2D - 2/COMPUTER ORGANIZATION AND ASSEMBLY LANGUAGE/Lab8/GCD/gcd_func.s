    .global gcd_func
gcd_func:
	mov r4, #0

gcd_loop:
	cmp r1, r4
	beq end_gcd

mod_loop:
	cmp r0, r1
	blt end_mod
	sub r0, r0, r1
	b mod_loop

end_mod:
	mov r2, r0
	mov r0, r1
	mov r1, r2
	b gcd_loop

end_gcd:
	bx lr
