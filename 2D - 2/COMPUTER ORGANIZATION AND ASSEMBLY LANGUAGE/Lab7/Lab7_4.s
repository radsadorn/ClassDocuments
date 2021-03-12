	.data
numbers:	.byte 1, 2, 3, 4, 5

	.text
	.global main
main:
	ldr r3, =numbers
	ldrb r0, [r3, #2]
end:
	bx lr
