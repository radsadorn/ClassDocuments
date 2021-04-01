    .data
    .balign 4
intro:	.asciz "LED blinking by wiringPi\n"
errMsg: .asciz "Setting up problem ... Abort!\n"
pin:	.int	0
	.int    2
	.int    3
i:	    .int 	0
duration:	.int	1000
OUTPUT	= 1


    .text
	.global main
	.extern printf
	.extern wiringPiSetup
	.extern delay
	.extern digitalWrite
	.extern pinMode

main:	PUSH	{ip, lr}
	ldr	r0, =intro
	bl 	printf
	bl	wiringPiSetup
	mov	r1, #-1
	cmp	r0, r1
	bne	init
	ldr	r0, =errMsg
	bl	printf
	b	done

init:
	ldr	r1, =i
	ldr	r0, =pin1
	ldr	r0, [r0, r1]
	mov	r2, #OUTPUT
	bl	pinMode
	cmp	r1, #8
	bne	init
	ldr	r4, =i
	ldr 	r4, [r4]
	mov	r5, #8

forLoop:
	cmp	r4, r5
	bge	done
	ldr	r2, =i
forPin:
	ldr	r0, =pin
	ldr	r0, [r0, r2]
	mov	r1, #
