	.data
	.balign 4
twenty:		.word 0
	.balign 4
thirty:		.word 0

	.text
	.global main
main:
	ldr r1, addr_twenty
	mov r3, #20
	str r3, [r1]
	ldr r2, addr_thirty
	mov r3, #30
	str r3, [r2]

	ldr r1, addr_twenty
	ldr r1, [r1]
	ldr r2, addr_thirty
	ldr r2, [r2]
	add r0, r1, r2
end:
	bx lr

addr_twenty:	.word twenty
addr_thirty:	.word thirty
