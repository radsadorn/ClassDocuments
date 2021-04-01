	.data
	.balign 4
intro:	.asciz "LED blinking by wiringPi\n"
errMsg: .asciz "Setting up problem ... Abort!\n"
pin:	.int	7
i:	.int 	0
duration:	.int	500
OUTPUT	= 1

#-------------------
# text segment
#-------------------

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

init:	ldr	r0, =pin
	ldr	r0, [r0]
	mov	r1, #OUTPUT
	bl	pinMode
	ldr	r4, =i
	ldr	r4, [r4]
	mov	r5, #10

forLoop:
	cmp	r4, r5
	bgt	done
	ldr 	r0, =pin
	ldr	r0, [r0]
	mov	r1, #1
	bl	digitalWrite
	ldr	r0, =duration
	ldr	r0, [r0]
	bl	delay
	ldr	r0, =pin
	ldr	r0, [r0]
	mov	r1, #0
	bl	digitalWrite
	ldr	r0, =duration
	ldr	r0, [r0]
	bl	delay
	add	r4, #1
	b	forLoop

done:
	POP	{ip, pc}
