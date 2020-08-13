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
	.file	"log.c"
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_d2iz
	.global	__aeabi_i2d
	.text
	.align	2
	.global	Log
	.type	Log, %function
Log:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	sub	sp, sp, #8
	ldr	r0, .L14
	bl	printf
	add	r1, sp, #4
	ldr	r0, .L14+4
	bl	scanf
	ldr	r0, [sp, #4]	@ float
	bl	__aeabi_f2d
	mov	r3, #1073741824
	mov	r2, #0
	add	r3, r3, #15728640
	bl	__aeabi_dmul
	bl	__aeabi_d2iz
	mov	r0, r0, asr #4
	mov	r2, r0, asl #13
	cmp	r2, #16777216
	ldr	r3, [r4, #0]
	movle	r0, r2, asr #12
	rsble	ip, r3, #0
	mov	r3, r0, asl #13
	sub	r3, r3, r0, asl #11
	movgt	ip, #0
	ldr	r2, [r4, #4]
	cmp	r3, #16777216
	movle	r0, r3, asr #12
	rsble	ip, r2, ip
	mov	r3, r0, asl #12
	mov	r2, r0, asl #10
	add	r2, r2, r3
	cmp	r2, #16777216
	ldr	r3, [r4, #8]
	movle	r0, r2, asr #12
	rsble	ip, r3, ip
	mov	r2, r0, asl #9
	mov	r3, r0, asl #12
	add	r2, r2, r3
	cmp	r2, #16777216
	ldr	r3, [r4, #12]
	movle	r0, r2, asr #12
	rsble	ip, r3, ip
	mov	r2, r0, asl #8
	mov	r3, r0, asl #12
	add	r2, r2, r3
	cmp	r2, #16777216
	ldr	r3, [r4, #16]
	movle	r0, r2, asr #12
	rsble	ip, r3, ip
	mov	r2, r0, asl #12
	mov	r3, r0, asl #7
	add	r3, r3, r2
	mov	r1, r3, asr #8
	cmp	r1, #65536
	ldr	r2, [r4, #20]
	movle	r0, r3, asr #12
	rsble	ip, r2, ip
	mov	r3, r0, asl #6
	mov	r2, r0, asl #12
	add	r3, r3, r2
	mov	r1, r3, asr #8
	cmp	r1, #65536
	ldr	r2, [r4, #24]
	movle	r0, r3, asr #12
	rsble	ip, r2, ip
	mov	r3, r0, asl #5
	mov	r2, r0, asl #12
	add	r3, r3, r2
	mov	r1, r3, asr #8
	cmp	r1, #65536
	ldr	r2, [r4, #28]
	movle	r0, r3, asr #12
	rsble	ip, r2, ip
	mov	r3, r0, asl #4
	mov	r2, r0, asl #12
	add	r3, r3, r2
	mov	r1, r3, asr #8
	cmp	r1, #65536
	ldr	r2, [r4, #32]
	movle	r0, r3, asr #12
	rsble	ip, r2, ip
	mov	r3, r0, asl #3
	mov	r2, r0, asl #12
	add	r3, r3, r2
	mov	r3, r3, asr #8
	ldr	r0, [r4, #36]
	cmp	r3, #65536
	rsble	ip, r0, ip
	mov	r0, ip
	bl	__aeabi_i2d
	mov	r3, #1052770304
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	add	sp, sp, #8
	ldmfd	sp!, {r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LC0
	.word	.LC1
	.size	Log, .-Log
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	ip, .L37
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
	add	lr, lr, #39
	add	ip, ip, #31
	stmia	r4, {r0, r1}
	str	r3, [sp, #24]
	str	r2, [sp, #28]
	mov	r3, #255
	mov	r2, #127
	add	r5, r5, #5
	add	r6, r6, #2
	ldr	r0, .L37+4
	str	lr, [sp, #16]
	str	ip, [sp, #12]
	str	r3, [sp, #36]
	str	r2, [sp, #40]
	str	r5, [sp, #20]
	str	r6, [sp, #32]
	bl	printf
	add	r1, sp, #44
	ldr	r0, .L37+8
	bl	scanf
	ldr	r0, [sp, #44]	@ float
	bl	__aeabi_f2d
	mov	r3, #1073741824
	mov	r2, #0
	add	r3, r3, #15728640
	bl	__aeabi_dmul
	bl	__aeabi_d2iz
	mov	r3, r0, asr #4
	mov	r3, r3, asl #13
	mov	ip, r3, asr #8
	cmp	ip, #65536
	mov	r2, r0
	movgt	ip, r2
	mov	r2, ip, asr #4
	mov	r3, r2, asl #13
	ldr	r0, [sp, #4]
	sub	r3, r3, r2, asl #11
	mov	r1, r3, asr #8
	movgt	r0, #0
	rsble	r0, r0, #0
	ldr	r3, [sp, #8]
	cmp	r1, #65536
	movgt	r1, ip
	rsble	r0, r3, r0
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #10
	add	r3, r3, r2
	mov	ip, r3, asr #8
	cmp	ip, #65536
	ldr	r3, [sp, #12]
	movgt	ip, r1
	rsble	r0, r3, r0
	mov	r3, ip, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #9
	add	r3, r3, r2
	mov	r1, r3, asr #8
	cmp	r1, #65536
	ldr	r3, [sp, #16]
	movgt	r1, ip
	rsble	r0, r3, r0
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #8
	add	r3, r3, r2
	mov	ip, r3, asr #8
	cmp	ip, #65536
	ldr	r3, [sp, #20]
	movgt	ip, r1
	rsble	r0, r3, r0
	mov	r3, ip, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #7
	add	r3, r3, r2
	mov	r1, r3, asr #8
	cmp	r1, #65536
	ldr	r3, [sp, #24]
	movgt	r1, ip
	rsble	r0, r3, r0
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #6
	add	r3, r3, r2
	mov	ip, r3, asr #8
	cmp	ip, #65536
	ldr	r3, [sp, #28]
	movgt	ip, r1
	rsble	r0, r3, r0
	mov	r3, ip, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r1, r3, asr #8
	cmp	r1, #65536
	ldr	r3, [sp, #32]
	movgt	r1, ip
	rsble	r0, r3, r0
	mov	r3, r1, asr #4
	mov	r2, r3, asl #12
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asr #8
	cmp	r3, #65536
	ldr	r2, [sp, #36]
	movgt	r3, r1
	mov	r3, r3, asr #4
	rsble	r0, r2, r0
	mov	r2, r3, asl #12
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asr #8
	cmp	r3, #65536
	suble	r0, r0, #127
	bl	__aeabi_i2d
	mov	r3, #1052770304
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L37+12
	bl	printf
	mov	r0, #0
	add	sp, sp, #48
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L38:
	.align	2
.L37:
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
	.type	C.14.2327, %object
	.size	C.14.2327, 40
C.14.2327:
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
	.ascii	"Please enter a number between .5 and 1: \000"
	.space	3
.LC1:
	.ascii	"%f\000"
	.space	1
.LC2:
	.ascii	"\012The log Value is = %.4f\012\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
