	.file	"main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"enabled serial.\n"
	.section	".text"
	.align 4
	.global enable_serial
	.type	enable_serial, #function
	.proc	020
enable_serial:
	save	%sp, -96, %sp
	mov	7, %o0
	call	__ajit_write_serial_control_register__, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	enable_serial, .-enable_serial
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	020
main:
	sethi	%hi(img), %g3
	or	%g3, %lo(img), %g3
	add	%g3, 2304, %g4
	mov	0, %g1
.L4:
	add	%g1, 1, %g2
	stb	%g2, [%g3+%g1]
	cmp	%g2, 48
	bne	.L4
	 mov	%g2, %g1
	add	%g3, 48, %g3
	cmp	%g3, %g4
	bne	.L4
	 mov	0, %g1
	jmp	%o7+8
	 nop
	.size	main, .-main
	.section	.rodata.str1.8
	.align 8
.LC1:
	.asciz	"%d "
	.align 8
.LC2:
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
	ble	.L19
	 mov	0, %l1
	sethi	%hi(.LC1), %i3
	sethi	%hi(.LC2), %l2
	add	%i2, -1, %l3
	or	%i3, %lo(.LC1), %i3
	or	%l2, %lo(.LC2), %l2
	cmp	%i2, 0
.L17:
	ble	.L12
	 nop
	sll	%l1, 2, %i5
	mov	0, %i4
	add	%i0, %i5, %i5
.L11:
	ld	[%i5], %o1
	call	cortos_printf, 0
	 mov	%i3, %o0
	add	%i4, 1, %i4
	cmp	%i4, %i2
	bne	.L11
	 add	%i5, 4, %i5
	add	%l1, 1, %l1
	add	%l1, %l3, %l1
.L12:
	call	cortos_printf, 0
	 mov	%l2, %o0
	add	%l0, 1, %l0
	cmp	%l0, %i1
	bne	.L17
	 cmp	%i2, 0
.L19:
	jmp	%i7+8
	 restore
	.size	print_matrix, .-print_matrix
	.align 4
	.global print_matrix_u8
	.type	print_matrix_u8, #function
	.proc	020
print_matrix_u8:
	save	%sp, -96, %sp
	mov	0, %l0
	cmp	%i1, 0
	ble	.L34
	 mov	0, %l1
	sethi	%hi(.LC1), %i3
	sethi	%hi(.LC2), %l2
	add	%i2, -1, %l3
	or	%i3, %lo(.LC1), %i3
	or	%l2, %lo(.LC2), %l2
	mov	0, %i5
.L32:
	cmp	%i2, 0
	ble	.L24
	 add	%i0, %l1, %i4
	ldub	[%i4+%i5], %o1
.L31:
	call	cortos_printf, 0
	 mov	%i3, %o0
	add	%i5, 1, %i5
	cmp	%i5, %i2
	bne,a	.L31
	 ldub	[%i4+%i5], %o1
	add	%l1, 1, %l1
	add	%l1, %l3, %l1
.L24:
	call	cortos_printf, 0
	 mov	%l2, %o0
	add	%l0, 1, %l0
	cmp	%l0, %i1
	bne	.L32
	 mov	0, %i5
.L34:
	jmp	%i7+8
	 restore
	.size	print_matrix_u8, .-print_matrix_u8
	.global kernel_ret
	.section	".bss"
	.align 8
	.type	kernel_ret, #object
	.size	kernel_ret, 16
kernel_ret:
	.skip	16
	.global kernel
	.section	".data"
	.align 8
	.type	kernel, #object
	.size	kernel, 16
kernel:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.common	img,2304,8
	.common	res,8100,8
	.ident	"GCC: (Buildroot 2014.08-g538713e) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
