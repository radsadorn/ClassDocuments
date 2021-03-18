	.global main
main:
	mov	r1, #0
	mov	r2, #1
	mov	r4, #2
	mov	r5, #3

	stmdb	sp!, {r4, r5}

	ldmia	sp!, {r1, r2}
	add	r0, r1, #0
	add	r0, r0, r2

end:
	bx lr
