	.data
	.balign 4
fifteen:	.word 15

	.balign 4
thirty:		.word 30

	.text
	.global main
main:
	LDR R1, addr_fifteen
	LDR R1, [R1]
	LDR R2, addr_thirty
	LDR R2, [R2]
	ADD r0, r1, r2
end:
	bx lr

addr_fifteen:	.word fifteen
addr_thirty:	.word thirty
