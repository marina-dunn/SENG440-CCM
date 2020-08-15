	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"exponentialfn.c"
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_d2iz
	.global	__aeabi_i2d
	.text
	.align	2
	.global	exponential
	.type	exponential, %function
exponential:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	sub	sp, sp, #8
	ldr	r0, .L3
	bl	printf
	add	r1, sp, #4
	ldr	r0, .L3+4
	bl	scanf
	ldr	r0, [sp, #4]	@ float
	bl	__aeabi_f2d
	mov	r3, #1073741824
	mov	r2, #0
	add	r3, r3, #15728640
	bl	__aeabi_dmul
	bl	__aeabi_d2iz
	ldr	r3, [r4, #0]
	mov	ip, #0
	mov	r2, #131072
	rsb	r0, r3, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, ip ; movge r0, r0; movge r2, r3;
@ 0 "" 2
	mov	r3, r3, asr #4
	ldr	r1, [r4, #4]
	mov	r2, r3, asl #13
	sub	r2, r2, r3, asl #11
	rsb	r0, r1, r0
	mov	r2, r2, asr #8
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, ip ; movge r0, r0; movge r2, r3;
@ 0 "" 2
	mov	r3, r3, asr #4
	mov	r1, r3, asl #12
	ldr	r2, [r4, #8]
	mov	r3, r3, asl #10
	add	r3, r3, r1
	mov	r3, r3, asr #8
	rsb	r0, r2, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, ip ; movge r0, r0; movge r3, r2;
@ 0 "" 2
	mov	r2, r2, asr #4
	mov	r1, r2, asl #12
	ldr	r3, [r4, #12]
	mov	r2, r2, asl #9
	add	r2, r2, r1
	mov	r2, r2, asr #8
	rsb	r0, r3, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, ip ; movge r0, r0; movge r2, r3;
@ 0 "" 2
	mov	r3, r3, asr #4
	mov	r1, r3, asl #12
	ldr	r2, [r4, #16]
	mov	r3, r3, asl #8
	add	r3, r3, r1
	mov	r3, r3, asr #8
	rsb	r0, r2, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, ip ; movge r0, r0; movge r3, r2;
@ 0 "" 2
	mov	r2, r2, asr #4
	mov	r1, r2, asl #12
	ldr	r3, [r4, #20]
	mov	r2, r2, asl #7
	add	r2, r2, r1
	mov	r2, r2, asr #8
	rsb	r0, r3, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, ip ; movge r0, r0; movge r2, r3;
@ 0 "" 2
	mov	r3, r3, asr #4
	mov	r1, r3, asl #12
	ldr	r2, [r4, #24]
	mov	r3, r3, asl #6
	add	r3, r3, r1
	mov	r3, r3, asr #8
	rsb	r0, r2, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, ip ; movge r0, r0; movge r3, r2;
@ 0 "" 2
	mov	r2, r2, asr #4
	mov	r1, r2, asl #12
	ldr	r3, [r4, #28]
	mov	r2, r2, asl #5
	add	r2, r2, r1
	mov	r2, r2, asr #8
	rsb	r0, r3, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, ip ; movge r0, r0; movge r2, r3;
@ 0 "" 2
	mov	r3, r3, asr #4
	mov	r1, r3, asl #12
	ldr	r2, [r4, #32]
	mov	r3, r3, asl #4
	add	r3, r3, r1
	mov	r3, r3, asr #8
	rsb	r0, r2, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, ip ; movge r0, r0; movge r3, r2;
@ 0 "" 2
	mov	r2, r2, asr #4
	mov	r3, r2, asl #12
	ldr	r1, [r4, #36]
	mov	r2, r2, asl #3
	add	r2, r2, r3
	mov	r2, r2, asr #8
	rsb	r0, r1, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, ip ; movge r0, r3; movge r2, r0;
@ 0 "" 2
	bl	__aeabi_i2d
	mov	r3, #1052770304
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	add	sp, sp, #8
	ldmfd	sp!, {r4, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.size	exponential, .-exponential
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	ip, .L7
	mov	r4, ip
	sub	sp, sp, #48
	ldmia	r4!, {r0, r1, r2, r3}
	add	lr, sp, #4
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	mov	r3, #45312
	add	r3, r3, #114
	str	r3, [sp, #4]
	mov	r3, #14592
	add	r3, r3, #31
	mov	r2, #26368
	str	r3, [sp, #12]
	add	r2, r2, #204
	mov	r3, #3968
	str	r2, [sp, #8]
	add	r3, r3, #5
	mov	r2, #7680
	ldmia	r4, {r0, r1}
	str	r3, [sp, #20]
	add	r2, r2, #39
	mov	r3, #508
	str	r2, [sp, #16]
	add	r3, r3, #2
	mov	r2, #2016
	stmia	lr, {r0, r1}
	str	r2, [sp, #24]
	mov	r1, #1016
	mov	r2, #255
	str	r3, [sp, #32]
	ldr	r0, .L7+4
	mov	r3, #127
	str	r2, [sp, #36]
	str	r3, [sp, #40]
	str	r1, [sp, #28]
	bl	printf
	add	r1, sp, #44
	ldr	r0, .L7+8
	bl	scanf
	ldr	r0, [sp, #44]	@ float
	bl	__aeabi_f2d
	mov	r3, #1073741824
	mov	r2, #0
	add	r3, r3, #15728640
	bl	__aeabi_dmul
	bl	__aeabi_d2iz
	ldr	r3, [sp, #4]
	mov	r4, #0
	mov	r2, #131072
	rsb	r0, r3, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, r4 ; movge r0, r0; movge r2, r3;
@ 0 "" 2
	mov	r3, r3, asr #4
	ldr	r1, [sp, #8]
	mov	r2, r3, asl #13
	sub	r2, r2, r3, asl #11
	rsb	r0, r1, r0
	mov	r2, r2, asr #8
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, r4 ; movge r0, r0; movge r2, r3;
@ 0 "" 2
	mov	r3, r3, asr #4
	ldr	r2, [sp, #12]
	mov	r1, r3, asl #12
	mov	r3, r3, asl #10
	add	r3, r3, r1
	mov	r3, r3, asr #8
	rsb	r0, r2, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, r4 ; movge r0, r0; movge r3, r2;
@ 0 "" 2
	mov	r2, r2, asr #4
	ldr	r3, [sp, #16]
	mov	r1, r2, asl #12
	mov	r2, r2, asl #9
	add	r2, r2, r1
	mov	r2, r2, asr #8
	rsb	r0, r3, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, r4 ; movge r0, r0; movge r2, r3;
@ 0 "" 2
	mov	r3, r3, asr #4
	ldr	r2, [sp, #20]
	mov	r1, r3, asl #12
	mov	r3, r3, asl #8
	add	r3, r3, r1
	mov	r3, r3, asr #8
	rsb	r0, r2, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, r4 ; movge r0, r0; movge r3, r2;
@ 0 "" 2
	mov	r2, r2, asr #4
	ldr	r3, [sp, #24]
	mov	r1, r2, asl #12
	mov	r2, r2, asl #7
	add	r2, r2, r1
	mov	r2, r2, asr #8
	rsb	r0, r3, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, r4 ; movge r0, r0; movge r2, r3;
@ 0 "" 2
	mov	r3, r3, asr #4
	ldr	r2, [sp, #28]
	mov	r1, r3, asl #12
	mov	r3, r3, asl #6
	add	r3, r3, r1
	mov	r3, r3, asr #8
	rsb	r0, r2, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, r4 ; movge r0, r0; movge r3, r2;
@ 0 "" 2
	mov	r2, r2, asr #4
	ldr	r3, [sp, #32]
	mov	r1, r2, asl #12
	mov	r2, r2, asl #5
	add	r2, r2, r1
	rsb	r0, r3, r0
	mov	r2, r2, asr #8
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, r4 ; movge r0, r0; movge r2, r1;
@ 0 "" 2
	mov	r1, r1, asr #4
	ldr	r3, [sp, #36]
	mov	r2, r1, asl #12
	mov	r1, r1, asl #4
	add	r1, r1, r2
	mov	r1, r1, asr #8
	rsb	r0, r3, r0
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, r4 ; movge r0, r0; movge r1, r3;
@ 0 "" 2
	mov	r3, r3, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #3
	add	r3, r3, r2
	sub	r0, r0, #127
	mov	r3, r3, asr #8
#APP
@ 28 "exponentialfn.c" 1
	cmp r0, r4 ; movge r0, r3; movge r3, r0;
@ 0 "" 2
	bl	__aeabi_i2d
	mov	r3, #1052770304
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L7+12
	bl	printf
	mov	r0, r4
	add	sp, sp, #48
	ldmfd	sp!, {r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.global	scale
	.global	K
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.13.2323, %object
	.size	C.13.2323, 40
C.13.2323:
	.space	40
	.type	scale, %object
	.size	scale, 4
scale:
	.word	16
	.type	K, %object
	.size	K, 4
K:
	.word	10
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Please enter a number between 0 and 1: \000"
.LC1:
	.ascii	"%f\000"
	.space	1
.LC2:
	.ascii	"\012The Exponential Value is = %.4f\012\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
