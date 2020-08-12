	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"exponentialfn.c"
	.global	scale
	.section	.rodata
	.align	2
	.type	scale, %object
	.size	scale, 4
scale:
	.word	16
	.align	2
	.type	C.1.2188, %object
	.size	C.1.2188, 40
C.1.2188:
	.space	40
	.global	__aeabi_i2d
	.global	__aeabi_d2iz
	.align	2
.LC0:
	.ascii	"Please enter a number between 0 and 1: \000"
	.align	2
.LC1:
	.ascii	"%f\000"
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_dcmpge
	.global	__aeabi_ddiv
	.align	2
.LC2:
	.ascii	"\012The Exponential Value is = %.4f\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #76
	mov	r3, #10
	str	r3, [fp, #-52]
	ldr	r3, .L10
	ldr	r2, [r3, #0]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2iz
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, .L10+4
	sub	r4, fp, #100
	mov	ip, r3
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r0, .L10+8
	bl	printf
	sub	r3, fp, #60
	ldr	r0, .L10+12
	mov	r1, r3
	bl	scanf
	ldr	r3, [fp, #-60]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, .L10
	ldr	r2, [r3, #0]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2iz
	mov	r3, r0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L2
.L3:
	ldr	r7, [fp, #-56]
	ldr	r3, [fp, #-56]
	rsb	r3, r3, #0
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, #0
	mov	r1, #1073741824
	mov	r2, r3
	mov	r3, r4
	bl	pow
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1069547520
	add	r6, r6, #3145728
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	log
	mov	r5, r0
	mov	r6, r1
	ldr	r3, .L10
	ldr	r2, [r3, #0]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2iz
	mov	r1, r0
	mvn	r2, #71
	mov	r3, r7, asl #2
	sub	r0, fp, #28
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L2:
	ldr	r3, [fp, #-52]
	sub	r2, r3, #1
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	bge	.L3
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L4
.L7:
	ldr	r3, [fp, #-56]
	rsb	r3, r3, #0
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, #0
	mov	r1, #1073741824
	mov	r2, r3
	mov	r3, r4
	bl	pow
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1069547520
	add	r6, r6, #3145728
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r5, r3
	mov	r6, r4
	ldr	r3, .L10
	ldr	r2, [r3, #0]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2iz
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-56]
	mvn	r2, #71
	mov	r3, r3, asl #2
	sub	r1, fp, #28
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asr #4
	ldr	r3, [fp, #-32]
	mov	r3, r3, asr #4
	mul	r3, r2, r3
	mov	r3, r3, asr #8
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-44]
	bl	__aeabi_i2d
	mov	r7, r0
	mov	r8, r1
	ldr	r3, .L10
	ldr	r2, [r3, #0]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #0
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r7
	mov	r1, r8
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dcmpge
	mov	r3, r0
	cmp	r3, #0
	beq	.L5
.L9:
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-48]
.L5:
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L4:
	ldr	r3, [fp, #-52]
	sub	r2, r3, #1
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	bge	.L7
	ldr	r0, [fp, #-48]
	bl	__aeabi_i2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, .L10
	ldr	r2, [r3, #0]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L10+16
	mov	r2, r3
	mov	r3, r4
	bl	printf
	ldr	r0, [fp, #-48]
	bl	__aeabi_i2d
	mov	r5, r0
	mov	r6, r1
	ldr	r3, .L10
	ldr	r2, [r3, #0]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	scale
	.word	C.1.2188
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
