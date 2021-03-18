	.global main
main:
	mov	r1, #1
	mov	r2, #2

	str	r1, [sp, #-4]!
	str	r2, [sp, #-4]!

	ldr	r0, [sp], #+4
	ldr	r0, [sp], #+4
end:
	bx lr
