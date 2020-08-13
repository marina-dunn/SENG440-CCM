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
	ldr	r0, .L15
	bl	printf
	add	r1, sp, #4
	ldr	r0, .L15+4
	bl	scanf
	ldr	r0, [sp, #4]	@ float
	bl	__aeabi_f2d
	mov	r3, #1073741824
	mov	r2, #0
	add	r3, r3, #15728640
	bl	__aeabi_dmul
	bl	__aeabi_d2iz
	ldr	r3, [r4, #0]
	rsb	r3, r3, r0
	cmp	r3, #0
	ldr	r2, [r4, #4]
	movge	r0, r3
	movge	r1, #131072
	movlt	r1, #65536
	subs	ip, r0, r2
	movpl	r2, r1, asr #4
	movpl	r3, r2, asl #13
	subpl	r3, r3, r2, asl #11
	movpl	r1, r3, asr #8
	ldr	r3, [r4, #8]
	movpl	r0, ip
	subs	ip, r0, r3
	bmi	.L5
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #10
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L5:
	ldr	r3, [r4, #12]
	subs	ip, r0, r3
	bmi	.L6
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #9
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L6:
	ldr	r3, [r4, #16]
	subs	ip, r0, r3
	bmi	.L7
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #8
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L7:
	ldr	r3, [r4, #20]
	subs	ip, r0, r3
	bmi	.L8
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #7
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L8:
	ldr	r3, [r4, #24]
	subs	ip, r0, r3
	bmi	.L9
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #6
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L9:
	ldr	r3, [r4, #28]
	subs	ip, r0, r3
	bmi	.L10
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L10:
	ldr	r3, [r4, #32]
	subs	ip, r0, r3
	bmi	.L11
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L11:
	ldr	r3, [r4, #36]
	rsb	r3, r3, r0
	cmp	r3, #0
	movge	r3, r1, asr #4
	movge	r2, r3, asl #12
	movge	r3, r3, asl #3
	addge	r3, r3, r2
	movge	r1, r3, asr #8
	mov	r0, r1
	bl	__aeabi_i2d
	mov	r3, #1052770304
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	add	sp, sp, #8
	ldmfd	sp!, {r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
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
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	ip, .L30
	mov	lr, ip
	sub	sp, sp, #48
	ldmia	lr!, {r0, r1, r2, r3}
	add	r4, sp, #4
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	mov	r3, #45312
	mov	r2, #26368
	ldmia	lr, {r0, r1}
	add	r3, r3, #114
	add	r2, r2, #204
	str	r3, [sp, #4]
	str	r2, [sp, #8]
	mov	r3, #2016
	mov	r2, #1016
	mov	ip, #14592
	mov	lr, #7680
	mov	r5, #3968
	mov	r6, #508
	add	ip, ip, #31
	add	lr, lr, #39
	stmia	r4, {r0, r1}
	str	r3, [sp, #24]
	str	r2, [sp, #28]
	mov	r3, #255
	mov	r2, #127
	add	r5, r5, #5
	add	r6, r6, #2
	ldr	r0, .L30+4
	str	ip, [sp, #12]
	str	lr, [sp, #16]
	str	r3, [sp, #36]
	str	r2, [sp, #40]
	str	r5, [sp, #20]
	str	r6, [sp, #32]
	bl	printf
	add	r1, sp, #44
	ldr	r0, .L30+8
	bl	scanf
	ldr	r0, [sp, #44]	@ float
	bl	__aeabi_f2d
	mov	r3, #1073741824
	mov	r2, #0
	add	r3, r3, #15728640
	bl	__aeabi_dmul
	bl	__aeabi_d2iz
	ldr	r3, [sp, #4]
	rsb	r3, r3, r0
	cmp	r3, #0
	ldr	r2, [sp, #8]
	movge	r0, r3
	movge	r1, #131072
	movlt	r1, #65536
	subs	ip, r0, r2
	movpl	r2, r1, asr #4
	movpl	r3, r2, asl #13
	subpl	r3, r3, r2, asl #11
	movpl	r1, r3, asr #8
	ldr	r3, [sp, #12]
	movpl	r0, ip
	subs	ip, r0, r3
	bmi	.L21
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #10
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L21:
	ldr	r3, [sp, #16]
	subs	ip, r0, r3
	bmi	.L22
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #9
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L22:
	ldr	r3, [sp, #20]
	subs	ip, r0, r3
	bmi	.L23
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #8
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L23:
	ldr	r3, [sp, #24]
	subs	ip, r0, r3
	bmi	.L24
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #7
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L24:
	ldr	r3, [sp, #28]
	subs	ip, r0, r3
	bmi	.L25
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #6
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L25:
	ldr	r3, [sp, #32]
	subs	ip, r0, r3
	bmi	.L26
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L26:
	ldr	r3, [sp, #36]
	subs	ip, r0, r3
	bmi	.L27
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r1, r3, asr #8
	mov	r0, ip
.L27:
	cmp	r0, #126
	movgt	r3, r1, asr #4
	movgt	r2, r3, asl #12
	movgt	r3, r3, asl #3
	addgt	r3, r3, r2
	movgt	r1, r3, asr #8
	mov	r0, r1
	bl	__aeabi_i2d
	mov	r3, #1052770304
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L30+12
	bl	printf
	mov	r0, #0
	add	sp, sp, #48
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
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
	.type	C.14.2324, %object
	.size	C.14.2324, 40
C.14.2324:
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
