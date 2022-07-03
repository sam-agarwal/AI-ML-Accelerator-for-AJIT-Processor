	.file	"main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"%d "
	.align 8
.LC1:
	.asciz	"\n"
	.section	".text"
	.align 4
	.global print_matrix
	.type	print_matrix, #function
	.proc	020
print_matrix:
	save	%sp, -96, %sp
	mov	0, %l0
	cmp	%i1, 0
	ble	.L13
	 mov	0, %l1
	sethi	%hi(.LC0), %i3
	sethi	%hi(.LC1), %l2
	add	%i2, -1, %l3
	or	%i3, %lo(.LC0), %i3
	or	%l2, %lo(.LC1), %l2
	cmp	%i2, 0
.L11:
	ble	.L5
	 nop
	sll	%l1, 2, %i5
	mov	0, %i4
	add	%i0, %i5, %i5
.L4:
	ld	[%i5], %o1
	call	cortos_printf, 0
	 mov	%i3, %o0
	add	%i4, 1, %i4
	cmp	%i4, %i2
	bne	.L4
	 add	%i5, 4, %i5
	add	%l1, 1, %l1
	add	%l1, %l3, %l1
.L5:
	call	cortos_printf, 0
	 mov	%l2, %o0
	add	%l0, 1, %l0
	cmp	%l0, %i1
	bne	.L11
	 cmp	%i2, 0
.L13:
	jmp	%i7+8
	 restore
	.size	print_matrix, .-print_matrix
	.section	.rodata.str1.8
	.align 8
.LC2:
	.asciz	"main: start_time=%d, end_time=%d, elapsed=%d\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	020
main:
	save	%sp, -96, %sp
	sethi	%hi(img), %l0
	or	%l0, %lo(img), %l0
	add	%l0, 2304, %g4
	mov	%l0, %g3
	mov	0, %g1
.L16:
	add	%g1, 1, %g2
	stb	%g2, [%g3+%g1]
	cmp	%g2, 48
	bne	.L16
	 mov	%g2, %g1
	add	%g3, 48, %g3
	cmp	%g3, %g4
	bne	.L16
	 mov	0, %g1
	call	cortos_get_clock_time, 0
	 sethi	%hi(res), %i0
	sethi	%hi(7168), %o4
	or	%i0, %lo(res), %o7
	or	%o4, 932, %o4
	sethi	%hi(kernel), %o5
	mov	%o1, %l1
	or	%o5, %lo(kernel), %o5
	add	%o7, %o4, %o4
	add	%o5, 16, %i2
.L22:
	mov	%l0, %i1
	mov	0, %i3
.L21:
	ld	[%o7+%i3], %g2
	mov	%o5, %i5
	mov	%i1, %i4
.L18:
	mov	0, %g1
.L19:
	ldub	[%i5+%g1], %g4
	ldub	[%i4+%g1], %g3
	add	%g1, 1, %g1
	smul	%g4, %g3, %g3
	cmp	%g1, 4
	bne	.L19
	 add	%g2, %g3, %g2
	add	%i5, 4, %i5
	cmp	%i5, %i2
	bne	.L18
	 add	%i4, 48, %i4
	st	%g2, [%o7+%i3]
	add	%i3, 4, %i3
	cmp	%i3, 180
	bne	.L21
	 add	%i1, 1, %i1
	add	%o7, 180, %o7
	cmp	%o7, %o4
	bne	.L22
	 add	%l0, 48, %l0
	call	cortos_get_clock_time, 0
	 or	%i0, %lo(res), %i0
	sethi	%hi(.LC2), %o0
	mov	%o1, %o2
	or	%o0, %lo(.LC2), %o0
	mov	%l1, %o1
	call	cortos_printf, 0
	 sub	%o2, %l1, %o3
	mov	45, %i1
	call	print_matrix, 0
	 restore %g0, 45, %o2
	.size	main, .-main
	.section	".text"
	.align 4
	.global print_matrix_u8
	.type	print_matrix_u8, #function
	.proc	020
print_matrix_u8:
	save	%sp, -96, %sp
	mov	0, %l0
	cmp	%i1, 0
	ble	.L41
	 mov	0, %l1
	sethi	%hi(.LC0), %i3
	sethi	%hi(.LC1), %l2
	add	%i2, -1, %l3
	or	%i3, %lo(.LC0), %i3
	or	%l2, %lo(.LC1), %l2
	mov	0, %i5
.L39:
	cmp	%i2, 0
	ble	.L31
	 add	%i0, %l1, %i4
	ldub	[%i4+%i5], %o1
.L38:
	call	cortos_printf, 0
	 mov	%i3, %o0
	add	%i5, 1, %i5
	cmp	%i5, %i2
	bne,a	.L38
	 ldub	[%i4+%i5], %o1
	add	%l1, 1, %l1
	add	%l1, %l3, %l1
.L31:
	call	cortos_printf, 0
	 mov	%l2, %o0
	add	%l0, 1, %l0
	cmp	%l0, %i1
	bne	.L39
	 mov	0, %i5
.L41:
	jmp	%i7+8
	 restore
	.size	print_matrix_u8, .-print_matrix_u8
	.global kernel
	.section	".data"
	.align 8
	.type	kernel, #object
	.size	kernel, 16
kernel:
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.common	img,2304,8
	.common	res,8100,8
	.ident	"GCC: (Buildroot 2014.08-g538713e) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
