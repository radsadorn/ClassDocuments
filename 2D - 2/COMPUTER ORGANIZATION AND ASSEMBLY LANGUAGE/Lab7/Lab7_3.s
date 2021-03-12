	.data
primes:
	.word 2
	.word 3
	.word 5
	.word 7

	.text
	.global main
main:
	ldr r3, =primes
	ldr r0, [r3, #4]
end:
	bx lr
