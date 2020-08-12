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
	.file	"log.c"
	.global	scale
	.section	.rodata
	.align	2
	.type	scale, %object
	.size	scale, 4
scale:
	.word	16
	.align	2
	.type	C.1.2191, %object
	.size	C.1.2191, 40
C.1.2191:
	.space	40
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_d2iz
	.align	2
.LC0:
	.ascii	"Please enter a number between .5 and 1: \000"
	.align	2
.LC1:
	.ascii	"%f\000"
	.global	__aeabi_f2d
	.global	__aeabi_dadd
	.align	2
.LC2:
	.ascii	" table location %d, value:  %d \012\000"
	.global	__aeabi_dcmple
	.global	__aeabi_ddiv
	.align	2
.LC3:
	.ascii	"\012The log Value is = %.4f\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, fp, lr}
	add	fp, sp, #20
	sub	sp, sp, #80
	mov	r3, #10
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r0, [fp, #-44]
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
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2iz
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, .L10+4
	sub	r4, fp, #96
	mov	ip, r3
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r0, .L10+8
	bl	printf
	sub	r3, fp, #56
	ldr	r0, .L10+12
	mov	r1, r3
	bl	scanf
	ldr	r3, [fp, #-56]	@ float
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
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L2
.L3:
	ldr	r7, [fp, #-52]
	ldr	r3, [fp, #-52]
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
	mvn	r2, #75
	mov	r3, r7, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-52]
	mvn	r2, #75
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, .L10+16
	ldr	r1, [fp, #-52]
	mov	r2, r3
	bl	printf
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L2:
	ldr	r3, [fp, #-48]
	sub	r2, r3, #1
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bge	.L3
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L4
.L7:
	ldr	r3, [fp, #-52]
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
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-28]
	mov	r2, r3, asr #4
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #4
	mul	r3, r2, r3
	mov	r3, r3, asr #8
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-52]
	mvn	r2, #75
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	rsb	r3, r3, #0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-40]
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
	bl	__aeabi_dcmple
	mov	r3, r0
	cmp	r3, #0
	beq	.L5
.L9:
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-32]
.L5:
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L4:
	ldr	r3, [fp, #-48]
	sub	r2, r3, #1
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bge	.L7
	ldr	r0, [fp, #-32]
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
	ldr	r0, .L10+20
	mov	r2, r3
	mov	r3, r4
	bl	printf
	ldr	r0, [fp, #-32]
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
	sub	sp, fp, #20
	ldmfd	sp!, {r4, r5, r6, r7, fp, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	scale
	.word	C.1.2191
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
