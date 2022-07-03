	.file	"ee_printf.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"0123456789abcdefghijklmnopqrstuvwxyz"
	.align 8
.LC1:
	.asciz	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.section	".text"
	.align 4
	.type	number, #function
	.proc	0102
number:
	save	%sp, -168, %sp
	andcc	%i5, 64, %g0
	be	.L58
	 sethi	%hi(.LC0), %o7
	sethi	%hi(.LC1), %o7
	or	%o7, %lo(.LC1), %o7
.L2:
	andcc	%i5, 16, %g0
	bne,a	.L3
	 and	%i5, -2, %i5
.L3:
	add	%i2, -2, %g1
	cmp	%g1, 34
	bgu	.L59
	 and	%i5, 1, %g1
	subcc	%g0, %g1, %g0
	mov	0, %o2
	addx	%g0, -1, %o5
	andcc	%i5, 2, %g0
	and	%o5, 240, %o5
	be	.L6
	 add	%o5, 48, %o5
	cmp	%i1, 0
	bl	.L111
	 andcc	%i5, 4, %g0
	bne,a	.L112
	 add	%i3, -1, %i3
	andcc	%i5, 8, %g0
	be	.L120
	 andcc	%i5, 32, %o1
	add	%i3, -1, %i3
	mov	32, %o2
.L6:
	andcc	%i5, 32, %o1
.L120:
	be	.L121
	 cmp	%i1, 0
	cmp	%i2, 16
.L118:
	be	.L113
	 xor	%i2, 8, %g1
	subcc	%g0, %g1, %g0
	addx	%i3, -1, %i3
.L9:
	cmp	%i1, 0
.L121:
	bne	.L122
	 mov	0, %g1
	mov	48, %g1
.L119:
	add	%fp, -72, %g4
	stb	%g1, [%fp-72]
	mov	1, %g1
.L12:
	cmp	%g1, %i4
	bge	.L13
	 mov	%g1, %o4
	mov	%i4, %o4
.L13:
	andcc	%i5, 17, %g0
	bne	.L14
	 sub	%i3, %o4, %i3
	cmp	%i3, 0
	ble	.L64
	 add	%i3, -1, %o7
	sub	%g0, %i0, %g2
	mov	%i3, %l1
	and	%g2, 3, %g2
	cmp	%i3, %g2
	bleu	.L15
	 mov	%i3, %i4
	mov	%g2, %i4
.L15:
	cmp	%i3, 3
	bleu,a	.L16
	 mov	%i3, %i4
.L16:
	cmp	%i4, 0
	be	.L17
	 mov	%i0, %g2
	mov	32, %o3
.L18:
	stb	%o3, [%g2]
	add	%g2, 1, %g2
	sub	%g2, %i0, %g3
	cmp	%i4, %g3
	bgu	.L18
	 add	%o7, -1, %o7
	cmp	%i3, %i4
	be,a	.L123
	 mov	-1, %i3
.L17:
	sub	%i3, %i4, %i3
	srl	%i3, 2, %o3
	sll	%o3, 2, %l0
	cmp	%l0, 0
	be	.L20
	 add	%i0, %i4, %i4
	sethi	%hi(538976256), %o0
	mov	0, %g3
	or	%o0, 32, %o0
.L21:
	st	%o0, [%i4]
	add	%g3, 1, %g3
	cmp	%g3, %o3
	blu	.L21
	 add	%i4, 4, %i4
	add	%g2, %l0, %g2
	cmp	%i3, %l0
	be	.L19
	 sub	%o7, %l0, %o7
.L20:
	mov	0, %g3
	add	%o7, 1, %o7
	mov	32, %i3
	stb	%i3, [%g2+%g3]
.L124:
	add	%g3, 1, %g3
	sub	%o7, %g3, %i4
	cmp	%i4, 0
	bg,a	.L124
	 stb	%i3, [%g2+%g3]
.L19:
	mov	-1, %i3
.L123:
	add	%i0, %l1, %i0
.L14:
	andcc	%o2, 0xff, %g0
	be	.L125
	 cmp	%o1, 0
	stb	%o2, [%i0]
	add	%i0, 1, %i0
.L125:
	be	.L126
	 andcc	%i5, 16, %g0
	cmp	%i2, 8
	be	.L114
	 cmp	%i2, 16
	be,a	.L115
	 mov	48, %g2
.L25:
	andcc	%i5, 16, %g0
.L126:
	bne	.L127
	 cmp	%o4, %g1
	cmp	%i3, 0
	ble	.L66
	 add	%i3, -1, %i4
	sub	%g0, %i0, %i5
	and	%i5, 3, %i5
	cmp	%i5, %i3
	bgu,a	.L28
	 mov	%i3, %i5
.L28:
	cmp	%i3, 3
	bleu,a	.L29
	 mov	%i3, %i5
.L29:
	cmp	%i5, 0
	be	.L30
	 mov	%i0, %g2
.L31:
	stb	%o5, [%g2]
	add	%g2, 1, %g2
	sub	%g2, %i0, %g3
	cmp	%i5, %g3
	bgu	.L31
	 add	%i4, -1, %i4
	cmp	%i3, %i5
	be,a	.L128
	 add	%i0, %i3, %i0
.L30:
	sub	%i3, %i5, %o2
	srl	%o2, 2, %i2
	sll	%i2, 2, %o3
	cmp	%o3, 0
	be	.L33
	 add	%i0, %i5, %i5
	and	%o5, 0xff, %o7
	sll	%o7, 16, %g3
	sll	%o7, 24, %o0
	sll	%o7, 8, %o1
	or	%o0, %g3, %o0
	or	%o0, %o1, %o1
	mov	0, %g3
	or	%o1, %o7, %o7
.L34:
	st	%o7, [%i5]
	add	%g3, 1, %g3
	cmp	%g3, %i2
	blu	.L34
	 add	%i5, 4, %i5
	add	%g2, %o3, %g2
	cmp	%o2, %o3
	be	.L32
	 sub	%i4, %o3, %i4
.L33:
	mov	0, %g3
	add	%i4, 1, %i4
	stb	%o5, [%g2+%g3]
.L129:
	add	%g3, 1, %g3
	sub	%i4, %g3, %i5
	cmp	%i5, 0
	bg,a	.L129
	 stb	%o5, [%g2+%g3]
.L32:
	add	%i0, %i3, %i0
.L128:
	mov	-1, %i3
.L27:
	cmp	%o4, %g1
.L127:
	ble	.L37
	 add	%o4, -1, %i4
	sub	%o4, %g1, %o5
	sub	%g0, %i0, %i5
	and	%i5, 3, %i5
	cmp	%i5, %o5
	bgu,a	.L38
	 mov	%o5, %i5
.L38:
	cmp	%o5, 3
	bleu,a	.L39
	 mov	%o5, %i5
.L39:
	cmp	%i5, 0
	be	.L40
	 mov	%i0, %g2
	mov	48, %i2
.L41:
	stb	%i2, [%g2]
	add	%g2, 1, %g2
	sub	%g2, %i0, %g3
	cmp	%i5, %g3
	bgu	.L41
	 add	%i4, -1, %i4
	cmp	%o5, %i5
	be,a	.L37
	 add	%i0, %o5, %i0
.L40:
	sub	%o5, %i5, %o3
	srl	%o3, 2, %i2
	sll	%i2, 2, %o4
	cmp	%o4, 0
	be	.L43
	 add	%i0, %i5, %i5
	sethi	%hi(808464384), %o7
	mov	0, %g3
	or	%o7, 48, %o7
.L44:
	st	%o7, [%i5]
	add	%g3, 1, %g3
	cmp	%i2, %g3
	bgu	.L44
	 add	%i5, 4, %i5
	add	%g2, %o4, %g2
	cmp	%o3, %o4
	be	.L42
	 sub	%i4, %o4, %i4
.L43:
	mov	0, %g3
	add	%i4, 1, %i4
	mov	48, %i2
	stb	%i2, [%g2+%g3]
.L130:
	add	%g3, 1, %g3
	sub	%i4, %g3, %i5
	cmp	%g1, %i5
	bl,a	.L130
	 stb	%i2, [%g2+%g3]
.L42:
	add	%i0, %o5, %i0
.L37:
	mov	%i1, %g1
	mov	%i0, %g2
.L47:
	ldub	[%g4+%g1], %g3
	stb	%g3, [%g2]
	add	%g1, -1, %g1
	add	%g1, 1, %g3
	cmp	%g3, 0
	bg	.L47
	 add	%g2, 1, %g2
	xnor	%g0, %i1, %g1
	add	%i3, -1, %g4
	sra	%g1, 31, %g1
	cmp	%i3, 0
	and	%i1, %g1, %g1
	add	%g1, 1, %g1
	ble	.L132
	 add	%i0, %g1, %i0
	sub	%g0, %i0, %g3
	and	%g3, 3, %g3
	cmp	%g3, %i3
	bgu,a	.L49
	 mov	%i3, %g3
.L49:
	cmp	%i3, 3
	bleu,a	.L50
	 mov	%i3, %g3
.L50:
	cmp	%g3, 0
	be	.L51
	 mov	%i0, %g1
	mov	32, %i5
.L52:
	stb	%i5, [%g1]
	add	%g1, 1, %g1
	sub	%g1, %i0, %g2
	cmp	%g3, %g2
	bgu	.L52
	 add	%g4, -1, %g4
	cmp	%i3, %g3
	be	.L53
	 nop
.L51:
	sub	%i3, %g3, %i1
	srl	%i1, 2, %i5
	sll	%i5, 2, %i2
	cmp	%i2, 0
	be	.L54
	 add	%i0, %g3, %g3
	sethi	%hi(538976256), %i4
	mov	0, %g2
	or	%i4, 32, %i4
.L55:
	st	%i4, [%g3]
	add	%g2, 1, %g2
	cmp	%g2, %i5
	blu	.L55
	 add	%g3, 4, %g3
	add	%g1, %i2, %g1
	cmp	%i1, %i2
	be	.L53
	 sub	%g4, %i2, %g4
.L54:
	mov	0, %g2
	add	%g4, 1, %g4
	mov	32, %i5
	stb	%i5, [%g1+%g2]
.L131:
	add	%g2, 1, %g2
	sub	%g4, %g2, %g3
	cmp	%g3, 0
	bg,a	.L131
	 stb	%i5, [%g1+%g2]
.L53:
	jmp	%i7+8
	 restore %i0, %i3, %o0
.L58:
	b	.L2
	 or	%o7, %lo(.LC0), %o7
.L63:
	mov	0, %g1
.L122:
	add	%fp, -72, %g4
.L11:
	wr	%g0, 0, %y
	nop
	nop
	nop
	udiv	%i1, %i2, %g2
	smul	%g2, %i2, %g3
	sub	%i1, %g3, %i1
	ldub	[%o7+%i1], %g3
	stb	%g3, [%g4+%g1]
	mov	%g2, %i1
	cmp	%g2, 0
	bne	.L11
	 add	%g1, 1, %g1
	b	.L12
	 add	%g1, -1, %i1
.L59:
	mov	0, %i0
.L132:
	jmp	%i7+8
	 restore
.L112:
	andcc	%i5, 32, %o1
	be	.L9
	 mov	43, %o2
	b	.L118
	 cmp	%i2, 16
.L114:
	mov	48, %g2
	stb	%g2, [%i0]
	b	.L25
	 add	%i0, 1, %i0
.L113:
	cmp	%i1, 0
	bne	.L63
	 add	%i3, -2, %i3
	b	.L119
	 mov	48, %g1
.L111:
	sub	%g0, %i1, %i1
	add	%i3, -1, %i3
	andcc	%i5, 32, %o1
	be	.L9
	 mov	45, %o2
	b	.L118
	 cmp	%i2, 16
.L115:
	stb	%g2, [%i0]
	mov	120, %g2
	stb	%g2, [%i0+1]
	b	.L25
	 add	%i0, 2, %i0
.L64:
	b	.L14
	 mov	%o7, %i3
.L66:
	b	.L27
	 mov	%i4, %i3
	.size	number, .-number
	.align 4
	.global uart_send_char
	.type	uart_send_char, #function
	.proc	020
uart_send_char:
	save	%sp, -96, %sp
.L134:
	call	__ajit_serial_putchar__, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be	.L134
	 sethi	%hi(-53248), %g2
	or	%g2, 512, %g2
.L140:
#APP
! 631 "/home/sammyyy/Internship/ajit-toolchain/AjitPublicResources/tools/minimal_printf_timer/src/ee_printf.c" 1
	lda [%g2] 32, %g1
	
! 0 "" 2
#NO_APP
	and	%g1, 9, %g1
	cmp	%g1, 9
	be	.L140
	 nop
	jmp	%i7+8
	 restore
	.size	uart_send_char, .-uart_send_char
	.section	.rodata.str1.8
	.align 8
.LC2:
	.asciz	"<NULL>"
	.section	".text"
	.align 4
	.global ee_printf
	.type	ee_printf, #function
	.proc	04
ee_printf:
	save	%sp, -1152, %sp
	st	%i3, [%fp+80]
	add	%fp, 72, %l4
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	st	%l4, [%fp-1052]
	ldub	[%i0], %g2
	add	%fp, -1024, %i3
	sll	%g2, 24, %g1
	cmp	%g1, 0
	be	.L146
	 mov	%i3, %o0
	sethi	%hi(538976256), %l3
	sethi	%hi(.L155), %l5
	mov	37, %i1
	sethi	%hi(.L178), %i5
	mov	46, %i4
	mov	32, %l2
	or	%l3, 32, %l3
	sethi	%hi(.LC0), %i2
	sethi	%hi(.LC1), %l1
	b	.L305
	 sethi	%hi(.LC2), %l0
.L428:
	add	%o0, 1, %o0
	ldub	[%i0+1], %g2
.L148:
	sll	%g2, 24, %g1
	cmp	%g1, 0
	be	.L146
	 add	%i0, 1, %i0
.L305:
	sra	%g1, 24, %g1
	cmp	%g1, 37
	bne,a	.L428
	 stb	%g2, [%o0]
	mov	0, %o5
.L147:
	ldub	[%i0+1], %g1
	add	%g1, -32, %g3
	and	%g3, 0xff, %g3
	cmp	%g3, 16
	bleu	.L429
	 add	%i0, 1, %g2
.L149:
	add	%g1, -48, %g3
	and	%g3, 0xff, %g3
	cmp	%g3, 9
	bgu	.L157
	 sll	%g1, 24, %g3
	mov	0, %o3
.L158:
	add	%o3, %o3, %g3
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sll	%o3, 3, %o3
	add	%g2, 1, %g2
	add	%g3, %o3, %o3
	add	%o3, %g1, %o3
	ldub	[%g2], %g1
	add	%g1, -48, %g3
	and	%g3, 0xff, %g3
	cmp	%g3, 9
	bleu	.L158
	 add	%o3, -48, %o3
.L425:
	sll	%g1, 24, %g3
	mov	%g2, %i0
	sra	%g3, 24, %g3
	cmp	%g3, 46
	be	.L430
	 mov	-1, %o4
.L161:
	and	%g1, -33, %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	cmp	%g2, 76
	bne	.L166
	 mov	-1, %g3
	sll	%g1, 24, %g3
	ldub	[%i0+1], %g1
	sra	%g3, 24, %g3
	add	%i0, 1, %i0
.L166:
	add	%g1, -65, %g2
	and	%g2, 0xff, %g2
	cmp	%g2, 55
	bleu	.L431
	 or	%i5, %lo(.L178), %g4
.L167:
	sll	%g1, 24, %g2
	sra	%g2, 24, %g2
	cmp	%g2, 37
	be,a	.L451
	 stb	%g1, [%o0]
	stb	%i1, [%o0]
	add	%o0, 1, %o0
	ldsb	[%i0], %g2
	cmp	%g2, 0
	be	.L146
	 ldub	[%i0], %g1
	stb	%g1, [%o0]
.L451:
	add	%o0, 1, %o0
	ldub	[%i0+1], %g2
	sll	%g2, 24, %g1
	cmp	%g1, 0
	bne	.L305
	 add	%i0, 1, %i0
.L146:
	stb	%g0, [%o0]
	ldub	[%fp-1024], %i5
	sll	%i5, 24, %i5
	cmp	%i5, 0
	be	.L473
	 mov	0, %i0
	sethi	%hi(-53248), %i4
	or	%i4, 512, %i4
.L417:
	call	__ajit_serial_putchar__, 0
	 sra	%i5, 24, %o0
	cmp	%o0, 0
	be	.L417
	 nop
.L367:
#APP
! 631 "/home/sammyyy/Internship/ajit-toolchain/AjitPublicResources/tools/minimal_printf_timer/src/ee_printf.c" 1
	lda [%i4] 32, %g1
	
! 0 "" 2
#NO_APP
	and	%g1, 9, %g1
	cmp	%g1, 9
	be	.L367
	 nop
	add	%i0, 1, %i0
	ldub	[%i3+%i0], %i5
	sll	%i5, 24, %i5
	cmp	%i5, 0
	bne	.L417
	 nop
.L473:
	jmp	%i7+8
	 restore
.L429:
	or	%l5, %lo(.L155), %g4
	sll	%g3, 2, %g3
	ld	[%g4+%g3], %g3
	jmp	%g3
	 nop
	.section	".rodata"
	.section	".text"
.L154:
	or	%o5, 1, %o5
	b	.L147
	 mov	%g2, %i0
.L153:
	or	%o5, 16, %o5
	b	.L147
	 mov	%g2, %i0
.L152:
	or	%o5, 4, %o5
	b	.L147
	 mov	%g2, %i0
.L151:
	or	%o5, 32, %o5
	b	.L147
	 mov	%g2, %i0
.L150:
	or	%o5, 8, %o5
	b	.L147
	 mov	%g2, %i0
.L157:
	sra	%g3, 24, %g4
	cmp	%g4, 42
	be	.L432
	 sra	%g3, 24, %g3
	mov	%g2, %i0
	mov	-1, %o3
	cmp	%g3, 46
	bne	.L161
	 mov	-1, %o4
.L430:
	ldub	[%i0+1], %g1
	add	%g1, -48, %g3
	and	%g3, 0xff, %g3
	cmp	%g3, 9
	bgu	.L162
	 add	%i0, 1, %g2
	mov	0, %o4
.L163:
	add	%o4, %o4, %g3
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sll	%o4, 3, %o4
	add	%g2, 1, %g2
	add	%g3, %o4, %o4
	add	%o4, %g1, %o4
	ldub	[%g2], %g1
	add	%g1, -48, %g3
	and	%g3, 0xff, %g3
	cmp	%g3, 9
	bleu	.L163
	 add	%o4, -48, %o4
.L164:
	b	.L161
	 mov	%g2, %i0
.L431:
	sll	%g2, 2, %g2
	ld	[%g4+%g2], %g2
	jmp	%g2
	 nop
	.section	".rodata"
	.section	".text"
.L168:
	or	%o5, 64, %o5
.L170:
	cmp	%g3, 108
	be	.L433
	 ld	[%l4], %g2
	ldub	[%g2], %g3
	cmp	%g3, 0
	be	.L255
	 add	%l4, 4, %l4
	cmp	%g3, 99
	ble	.L434
	 cmp	%g3, 9
	sra	%g3, 31, %o2
	wr	%o2, 0, %y
	nop
	nop
	nop
	sdiv	%g3, 100, %g4
	or	%i2, %lo(.LC0), %g1
	smul	%g4, 100, %o7
	ldub	[%g1+%g4], %g4
	sub	%g3, %o7, %g3
	stb	%g4, [%fp-1048]
	sra	%g3, 31, %g4
	wr	%g4, 0, %y
	nop
	nop
	nop
	sdiv	%g3, 10, %o7
	ldub	[%g1+%o7], %o2
	add	%o7, %o7, %o4
	sll	%o7, 3, %o7
	add	%o4, %o7, %o4
	mov	4, %g4
	sub	%g3, %o4, %g3
	stb	%o2, [%fp-1047]
	mov	3, %o7
	mov	2, %o4
.L259:
	add	%fp, %o4, %o4
	ldub	[%g1+%g3], %g1
	stb	%g1, [%o4-1048]
	add	%fp, %o7, %o4
	stb	%i4, [%o4-1048]
	ldub	[%g2+1], %g3
	cmp	%g3, 0
	be	.L452
	 add	%fp, %g4, %g1
.L446:
	cmp	%g3, 99
	ble	.L435
	 cmp	%g3, 9
	sra	%g3, 31, %g1
	wr	%g1, 0, %y
	nop
	nop
	nop
	sdiv	%g3, 100, %o2
	add	%fp, %g4, %g4
	or	%i2, %lo(.LC0), %g1
	ldub	[%g1+%o2], %o1
	smul	%o2, 100, %o2
	stb	%o1, [%g4-1048]
	sub	%g3, %o2, %g3
	add	%o7, 3, %g4
	sra	%g3, 31, %o2
	wr	%o2, 0, %y
	nop
	nop
	nop
	sdiv	%g3, 10, %o7
	ldub	[%g1+%o7], %o1
	add	%o7, %o7, %o2
	stb	%o1, [%o4-1046]
	sll	%o7, 3, %o7
	add	%o2, %o7, %o7
	sub	%g3, %o7, %g3
.L264:
	add	%fp, %g4, %o7
	ldub	[%g1+%g3], %g1
	stb	%g1, [%o7-1048]
	add	%g4, 1, %g4
	add	%fp, %g4, %o4
	stb	%i4, [%o4-1048]
	ldub	[%g2+2], %g3
	cmp	%g3, 0
	be	.L265
	 add	%g4, 1, %o7
.L447:
	cmp	%g3, 99
	ble	.L436
	 cmp	%g3, 9
	sra	%g3, 31, %g1
	wr	%g1, 0, %y
	nop
	nop
	nop
	sdiv	%g3, 100, %o2
	add	%fp, %o7, %o7
	or	%i2, %lo(.LC0), %g1
	ldub	[%g1+%o2], %o1
	smul	%o2, 100, %o2
	stb	%o1, [%o7-1048]
	sub	%g3, %o2, %g3
	add	%g4, 3, %o7
	sra	%g3, 31, %o2
	wr	%o2, 0, %y
	nop
	nop
	nop
	sdiv	%g3, 10, %g4
	ldub	[%g1+%g4], %o1
	add	%g4, %g4, %o2
	stb	%o1, [%o4-1046]
	sll	%g4, 3, %g4
	add	%o2, %g4, %g4
	sub	%g3, %g4, %g3
.L269:
	add	%fp, %o7, %g4
	ldub	[%g1+%g3], %g1
	stb	%g1, [%g4-1048]
	add	%o7, 1, %g3
	add	%fp, %g3, %g4
	stb	%i4, [%g4-1048]
	ldub	[%g2+3], %g2
	cmp	%g2, 0
	be	.L270
	 add	%g3, 1, %o4
.L448:
	cmp	%g2, 99
	ble	.L437
	 cmp	%g2, 9
	sra	%g2, 31, %g1
	wr	%g1, 0, %y
	nop
	nop
	nop
	sdiv	%g2, 100, %o7
	add	%fp, %o4, %o4
	or	%i2, %lo(.LC0), %g1
	ldub	[%g1+%o7], %o2
	smul	%o7, 100, %o7
	stb	%o2, [%o4-1048]
	sub	%g2, %o7, %g2
	add	%g3, 3, %o4
	sra	%g2, 31, %o2
	wr	%o2, 0, %y
	nop
	nop
	nop
	sdiv	%g2, 10, %g3
	ldub	[%g1+%g3], %o2
	add	%g3, %g3, %o7
	stb	%o2, [%g4-1046]
	sll	%g3, 3, %g3
	add	%o7, %g3, %g3
	sub	%g2, %g3, %g2
.L274:
	add	%fp, %o4, %g3
	ldub	[%g1+%g2], %g1
	add	%o4, 1, %o4
	stb	%g1, [%g3-1048]
.L273:
	andcc	%o5, 16, %g0
	bne	.L453
	 orcc	%o4, 0, %o2
	cmp	%o3, %o4
	ble	.L334
	 add	%o3, -1, %g4
	sub	%o3, %o4, %o3
	sub	%g0, %o0, %g1
	and	%g1, 3, %g1
	cmp	%o3, %g1
	bleu	.L276
	 mov	%o3, %g3
	mov	%g1, %g3
.L276:
	cmp	%o3, 3
	bleu,a	.L277
	 mov	%o3, %g3
.L277:
	cmp	%g3, 0
	be	.L278
	 mov	%o0, %g1
.L279:
	stb	%l2, [%g1]
	add	%g1, 1, %g1
	sub	%g1, %o0, %g2
	cmp	%g3, %g2
	bgu	.L279
	 add	%g4, -1, %g4
	cmp	%o3, %g3
	be,a	.L454
	 add	%o0, %o3, %o0
.L278:
	sub	%o3, %g3, %o2
	srl	%o2, 2, %o7
	sll	%o7, 2, %o5
	cmp	%o5, 0
	be	.L281
	 add	%o0, %g3, %g3
	mov	0, %g2
.L282:
	st	%l3, [%g3]
	add	%g2, 1, %g2
	cmp	%g2, %o7
	blu	.L282
	 add	%g3, 4, %g3
	add	%g1, %o5, %g1
	cmp	%o2, %o5
	be	.L280
	 sub	%g4, %o5, %g4
.L281:
	mov	0, %g2
	add	%g4, 1, %g4
	stb	%l2, [%g1+%g2]
.L455:
	add	%g2, 1, %g2
	sub	%g4, %g2, %g3
	cmp	%o4, %g3
	bl,a	.L455
	 stb	%l2, [%g1+%g2]
.L280:
	add	%o0, %o3, %o0
.L454:
	add	%o4, -1, %o3
.L275:
	orcc	%o4, 0, %o2
.L453:
	ble,a	.L285
	 mov	1, %o2
.L285:
	srl	%o2, 2, %o5
	andcc	%o0, 3, %g0
	bne	.L336
	 sll	%o5, 2, %g1
	cmp	%g1, 0
	be	.L336
	 mov	0, %g2
	mov	0, %g3
	add	%fp, -1048, %g4
.L287:
	ld	[%g4+%g2], %o7
	st	%o7, [%o0+%g2]
	add	%g3, 1, %g3
	cmp	%o5, %g3
	bgu	.L287
	 add	%g2, 4, %g2
	cmp	%o2, %g1
	be	.L288
	 add	%o0, %g1, %g3
.L286:
	sub	%g3, %g1, %g3
	ldub	[%g4+%g1], %g2
.L456:
	stb	%g2, [%g3+%g1]
	add	%g1, 1, %g1
	cmp	%o4, %g1
	bg,a	.L456
	 ldub	[%g4+%g1], %g2
.L288:
	add	%o0, %o2, %o0
	cmp	%o3, %o4
	ble	.L427
	 add	%o3, -1, %g4
	sub	%o3, %o4, %o3
	sub	%g0, %o0, %g3
	and	%g3, 3, %g3
	cmp	%g3, %o3
	bgu,a	.L291
	 mov	%o3, %g3
.L291:
	cmp	%o3, 3
	bleu,a	.L292
	 mov	%o3, %g3
.L292:
	cmp	%g3, 0
	be	.L293
	 mov	%o0, %g1
.L294:
	stb	%l2, [%g1]
	add	%g1, 1, %g1
	sub	%g1, %o0, %g2
	cmp	%g3, %g2
	bgu	.L294
	 add	%g4, -1, %g4
	cmp	%o3, %g3
	be,a	.L457
	 add	%o0, %o3, %o0
.L293:
	sub	%o3, %g3, %o2
	srl	%o2, 2, %o7
	sll	%o7, 2, %o5
	cmp	%o5, 0
	be	.L296
	 add	%o0, %g3, %g3
	mov	0, %g2
.L297:
	st	%l3, [%g3]
	add	%g2, 1, %g2
	cmp	%g2, %o7
	blu	.L297
	 add	%g3, 4, %g3
	add	%g1, %o5, %g1
	cmp	%o2, %o5
	be	.L295
	 sub	%g4, %o5, %g4
.L296:
	mov	0, %g2
	add	%g4, 1, %g4
	stb	%l2, [%g1+%g2]
.L458:
	add	%g2, 1, %g2
	sub	%g4, %g2, %g3
	cmp	%g3, %o4
	bg,a	.L458
	 stb	%l2, [%g1+%g2]
.L295:
	add	%o0, %o3, %o0
.L427:
.L457:
	b	.L148
	 ldub	[%i0+1], %g2
.L162:
	sll	%g1, 24, %g3
	sra	%g3, 24, %g3
	cmp	%g3, 42
	be	.L439
	 mov	0, %o4
	b	.L161
	 mov	%g2, %i0
.L316:
	mov	16, %o2
.L177:
	call	number, 0
	 ld	[%l4], %o1
	add	%l4, 4, %l4
	b	.L148
	 ldub	[%i0+1], %g2
.L176:
	b	.L177
	 mov	10, %o2
.L175:
	ld	[%l4], %g4
	cmp	%g4, 0
	be	.L440
	 add	%l4, 4, %l4
.L200:
	ldsb	[%g4], %g1
	cmp	%g1, 0
	be	.L322
	 cmp	%o4, 0
	be,a	.L201
	 mov	0, %g3
	b	.L203
	 mov	%g4, %g3
.L202:
	be,a	.L201
	 sub	%g3, %g4, %g3
.L203:
	add	%g3, 1, %g3
	ldsb	[%g3], %g1
	cmp	%g1, 0
	bne,a	.L202
	 addcc	%o4, -1, %o4
	sub	%g3, %g4, %g3
.L201:
	andcc	%o5, 16, %g0
	bne	.L459
	 cmp	%g3, 0
	cmp	%o3, %g3
	ble	.L323
	 add	%o3, -1, %o5
	sub	%o3, %g3, %o3
	sub	%g0, %o0, %g1
	and	%g1, 3, %g1
	cmp	%o3, %g1
	bleu	.L205
	 mov	%o3, %o7
	mov	%g1, %o7
.L205:
	cmp	%o3, 3
	bleu,a	.L206
	 mov	%o3, %o7
.L206:
	cmp	%o7, 0
	be	.L207
	 mov	%o0, %g1
.L208:
	stb	%l2, [%g1]
	add	%g1, 1, %g1
	sub	%g1, %o0, %g2
	cmp	%o7, %g2
	bgu	.L208
	 add	%o5, -1, %o5
	cmp	%o3, %o7
	be,a	.L460
	 add	%o0, %o3, %o0
.L207:
	sub	%o3, %o7, %o1
	srl	%o1, 2, %o4
	sll	%o4, 2, %o2
	cmp	%o2, 0
	be	.L210
	 add	%o0, %o7, %o7
	mov	0, %g2
.L211:
	st	%l3, [%o7]
	add	%g2, 1, %g2
	cmp	%g2, %o4
	blu	.L211
	 add	%o7, 4, %o7
	add	%g1, %o2, %g1
	cmp	%o1, %o2
	be	.L209
	 sub	%o5, %o2, %o5
.L210:
	mov	0, %g2
	add	%o5, 1, %o5
	stb	%l2, [%g1+%g2]
.L461:
	add	%g2, 1, %g2
	sub	%o5, %g2, %o7
	cmp	%g3, %o7
	bl,a	.L461
	 stb	%l2, [%g1+%g2]
.L209:
	add	%o0, %o3, %o0
.L460:
	add	%g3, -1, %o3
.L204:
	cmp	%g3, 0
.L459:
	ble	.L214
	 srl	%g3, 2, %o5
	add	%o0, 4, %g1
	cmp	%g4, %g1
	add	%g4, 4, %g1
	subx	%g0, -1, %g2
	cmp	%o0, %g1
	subx	%g0, -1, %g1
	or	%g2, %g1, %g2
	sll	%o5, 2, %o4
	cmp	%g3, 3
	bleu	.L441
	 mov	1, %g1
.L216:
	or	%o0, %g4, %o7
	and	%o7, 3, %o7
	subcc	%g0, %o7, %g0
	and	%g2, %g1, %g1
	subx	%g0, -1, %g2
	andcc	%g1, %g2, %g0
	be	.L325
	 cmp	%o4, 0
	be	.L325
	 mov	0, %g2
	mov	0, %g1
.L217:
	ld	[%g4+%g1], %o7
	st	%o7, [%o0+%g1]
	add	%g2, 1, %g2
	cmp	%o5, %g2
	bgu	.L217
	 add	%g1, 4, %g1
	mov	%o4, %g1
	add	%g4, %o4, %g4
	cmp	%g3, %g1
	be	.L218
	 add	%o0, %o4, %o4
.L215:
	sub	%g0, %g1, %g2
	add	%g4, %g2, %o5
	add	%o4, %g2, %o7
.L462:
	ldub	[%o5+%g1], %o5
	stb	%o5, [%o7+%g1]
	add	%g1, 1, %g1
	cmp	%g3, %g1
	bg	.L462
	 add	%g4, %g2, %o5
.L218:
	add	%o0, %g3, %o0
.L214:
	cmp	%o3, %g3
	ble	.L427
	 add	%o3, -1, %o7
	sub	%o3, %g3, %o3
	sub	%g0, %o0, %g4
	and	%g4, 3, %g4
	cmp	%g4, %o3
	bgu,a	.L221
	 mov	%o3, %g4
.L221:
	cmp	%o3, 3
	bleu,a	.L222
	 mov	%o3, %g4
.L222:
	cmp	%g4, 0
	be	.L223
	 mov	%o0, %g1
.L224:
	stb	%l2, [%g1]
	add	%g1, 1, %g1
	sub	%g1, %o0, %g2
	cmp	%g4, %g2
	bgu	.L224
	 add	%o7, -1, %o7
	cmp	%o3, %g4
	be,a	.L457
	 add	%o0, %o3, %o0
.L223:
	sub	%o3, %g4, %o2
	srl	%o2, 2, %o5
	sll	%o5, 2, %o4
	cmp	%o4, 0
	be	.L226
	 add	%o0, %g4, %g4
	mov	0, %g2
.L227:
	st	%l3, [%g4]
	add	%g2, 1, %g2
	cmp	%g2, %o5
	blu	.L227
	 add	%g4, 4, %g4
	add	%g1, %o4, %g1
	cmp	%o2, %o4
	be	.L295
	 sub	%o7, %o4, %o7
.L226:
	mov	0, %g2
	add	%o7, 1, %o7
	stb	%l2, [%g1+%g2]
.L463:
	add	%g2, 1, %g2
	sub	%o7, %g2, %g4
	cmp	%g3, %g4
	bl,a	.L463
	 stb	%l2, [%g1+%g2]
	b	.L427
	 add	%o0, %o3, %o0
.L174:
	cmp	%o3, -1
	be,a	.L443
	 or	%o5, 1, %o5
.L230:
	ld	[%l4], %o1
	call	number, 0
	 mov	16, %o2
	add	%l4, 4, %l4
	b	.L148
	 ldub	[%i0+1], %g2
.L173:
	b	.L177
	 mov	8, %o2
.L172:
	or	%o5, 2, %o5
	b	.L177
	 mov	10, %o2
.L171:
	andcc	%o5, 16, %g0
	be,a	.L444
	 add	%o3, -1, %o3
.L179:
	ld	[%l4], %g1
	stb	%g1, [%o0]
	add	%o3, -1, %o3
	add	%o0, 1, %o4
	orcc	%o3, 0, %g2
	ble	.L445
	 add	%l4, 4, %l4
	sub	%g0, %o4, %g4
	and	%g4, 3, %g4
	cmp	%g4, %o3
	bgu,a	.L191
	 mov	%o3, %g4
.L191:
	cmp	%o3, 3
	bleu,a	.L192
	 mov	%o3, %g4
.L192:
	cmp	%g4, 0
	be	.L193
	 mov	%o4, %g1
	xnor	%g0, %o0, %o7
.L194:
	stb	%l2, [%g1]
	add	%g1, 1, %g1
	add	%g1, %o7, %g3
	cmp	%g3, %g4
	blu	.L194
	 add	%g2, -1, %g2
	cmp	%o3, %g4
	be,a	.L464
	 add	%o4, %o3, %o0
.L193:
	sub	%o3, %g4, %o2
	srl	%o2, 2, %o7
	sll	%o7, 2, %o5
	cmp	%o5, 0
	be	.L369
	 add	%g4, 1, %g4
	mov	0, %g3
	add	%o0, %g4, %o0
.L197:
	st	%l3, [%o0]
	add	%g3, 1, %g3
	cmp	%g3, %o7
	blu	.L197
	 add	%o0, 4, %o0
	add	%g1, %o5, %g1
	cmp	%o2, %o5
	be	.L195
	 sub	%g2, %o5, %g2
.L369:
	stb	%l2, [%g1]
	add	%g2, -1, %g2
	cmp	%g2, 0
	bg	.L369
	 add	%g1, 1, %g1
.L195:
	add	%o4, %o3, %o0
.L464:
	b	.L148
	 ldub	[%i0+1], %g2
.L169:
	or	%o5, 64, %o5
	b	.L177
	 mov	16, %o2
.L432:
	ld	[%l4], %o3
	add	%i0, 2, %g2
	add	%l4, 4, %l4
	cmp	%o3, 0
	bge	.L425
	 ldub	[%i0+2], %g1
	sub	%g0, %o3, %o3
	b	.L425
	 or	%o5, 16, %o5
.L255:
	mov	48, %g1
	stb	%g1, [%fp-1048]
	mov	1, %o7
	add	%fp, %o7, %o4
	stb	%i4, [%o4-1048]
	ldub	[%g2+1], %g3
	cmp	%g3, 0
	bne	.L446
	 mov	2, %g4
	add	%fp, %g4, %g1
.L452:
	mov	48, %g3
	stb	%g3, [%g1-1048]
	add	%o7, 2, %g4
	add	%fp, %g4, %o4
	stb	%i4, [%o4-1048]
	ldub	[%g2+2], %g3
	cmp	%g3, 0
	bne	.L447
	 add	%g4, 1, %o7
.L265:
	add	%fp, %o7, %o7
	mov	48, %g1
	stb	%g1, [%o7-1048]
	add	%g4, 2, %g3
	add	%fp, %g3, %g4
	stb	%i4, [%g4-1048]
	ldub	[%g2+3], %g2
	cmp	%g2, 0
	bne	.L448
	 add	%g3, 1, %o4
.L270:
	add	%fp, %o4, %g1
	mov	48, %g2
	add	%g3, 2, %o4
	b	.L273
	 stb	%g2, [%g1-1048]
.L433:
	andcc	%o5, 64, %g0
	be	.L327
	 add	%l4, 4, %l4
	or	%l1, %lo(.LC1), %g1
.L232:
	ldub	[%g2], %o1
	and	%o1, 0xff, %l7
	and	%o1, 15, %o1
	srl	%l7, 4, %l7
	ldub	[%g1+%o1], %l6
	ldub	[%g1+%l7], %o1
	ldub	[%g2+1], %o2
	stb	%l6, [%fp-1047]
	stb	%o1, [%fp-1048]
	and	%o2, 0xff, %l6
	and	%o2, 15, %o2
	ldub	[%g1+%o2], %o1
	ldub	[%g2+2], %o4
	stb	%o1, [%fp-1044]
	srl	%l6, 4, %l6
	and	%o4, 0xff, %o1
	ldub	[%g1+%l6], %o2
	and	%o4, 15, %o4
	stb	%o2, [%fp-1045]
	srl	%o1, 4, %o1
	ldub	[%g1+%o4], %o2
	ldub	[%g1+%o1], %o4
	ldub	[%g2+3], %o7
	stb	%o2, [%fp-1041]
	stb	%o4, [%fp-1042]
	and	%o7, 0xff, %o2
	and	%o7, 15, %o7
	ldub	[%g1+%o7], %o4
	mov	58, %g3
	ldub	[%g2+4], %g4
	stb	%o4, [%fp-1038]
	srl	%o2, 4, %o2
	and	%g4, 0xff, %o4
	ldub	[%g1+%o2], %o7
	and	%g4, 15, %g4
	ldub	[%g2+5], %g2
	stb	%g3, [%fp-1046]
	stb	%g3, [%fp-1043]
	stb	%g3, [%fp-1040]
	stb	%o7, [%fp-1039]
	stb	%g3, [%fp-1037]
	ldub	[%g1+%g4], %o7
	stb	%g3, [%fp-1034]
	srl	%o4, 4, %o4
	and	%g2, 0xff, %g3
	ldub	[%g1+%o4], %g4
	stb	%o7, [%fp-1035]
	stb	%g4, [%fp-1036]
	srl	%g3, 4, %g3
	ldub	[%g1+%g3], %g3
	stb	%g3, [%fp-1033]
	and	%g2, 15, %g2
	andcc	%o5, 16, %g0
	ldub	[%g1+%g2], %g1
	bne	.L233
	 stb	%g1, [%fp-1032]
	cmp	%o3, 17
	ble	.L328
	 add	%o3, -1, %g4
	add	%o3, -17, %o3
	sub	%g0, %o0, %g1
	and	%g1, 3, %g1
	cmp	%o3, %g1
	bgu	.L449
	 mov	%o3, %g3
.L234:
	cmp	%o3, 3
	bleu,a	.L235
	 mov	%o3, %g3
.L235:
	cmp	%g3, 0
	be	.L236
	 mov	%o0, %g1
.L237:
	stb	%l2, [%g1]
	add	%g1, 1, %g1
	sub	%g1, %o0, %g2
	cmp	%g3, %g2
	bgu	.L237
	 add	%g4, -1, %g4
	cmp	%o3, %g3
	be,a	.L465
	 add	%o0, %o3, %o0
.L236:
	sub	%o3, %g3, %o4
	srl	%o4, 2, %o7
	sll	%o7, 2, %o5
	cmp	%o5, 0
	be	.L239
	 add	%o0, %g3, %g3
	mov	0, %g2
.L240:
	st	%l3, [%g3]
	add	%g2, 1, %g2
	cmp	%g2, %o7
	blu	.L240
	 add	%g3, 4, %g3
	add	%g1, %o5, %g1
	cmp	%o4, %o5
	be	.L238
	 sub	%g4, %o5, %g4
.L239:
	mov	0, %g2
	add	%g4, 1, %g4
	stb	%l2, [%g1+%g2]
.L466:
	add	%g2, 1, %g2
	sub	%g4, %g2, %g3
	cmp	%g3, 17
	bg,a	.L466
	 stb	%l2, [%g1+%g2]
.L238:
	add	%o0, %o3, %o0
.L465:
	mov	16, %o3
.L233:
	andcc	%o0, 3, %g0
	bne	.L330
	 ld	[%fp-1048], %g1
	st	%g1, [%o0]
	ld	[%fp-1044], %g1
	st	%g1, [%o0+4]
	ld	[%fp-1040], %g1
	add	%o0, 16, %g3
	st	%g1, [%o0+8]
	mov	1, %o7
	ld	[%fp-1036], %g1
	mov	16, %g2
	st	%g1, [%o0+12]
.L243:
	mov	%g2, %g1
	add	%g2, %o7, %o7
	sub	%g3, %g2, %g3
	add	%fp, -1048, %g4
	ldub	[%g4+%g1], %g2
.L467:
	stb	%g2, [%g3+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %o7
	bne,a	.L467
	 ldub	[%g4+%g1], %g2
	add	%o0, 17, %o5
	cmp	%o3, 17
	ble	.L331
	 add	%o3, -1, %g3
	add	%o3, -17, %o3
	sub	%g0, %o5, %g4
	and	%g4, 3, %g4
	cmp	%g4, %o3
	bgu,a	.L246
	 mov	%o3, %g4
.L246:
	cmp	%o3, 3
	bleu,a	.L247
	 mov	%o3, %g4
.L247:
	cmp	%g4, 0
	be	.L248
	 mov	%o5, %g1
	mov	-17, %o7
	sub	%o7, %o0, %o7
.L249:
	stb	%l2, [%g1]
	add	%g1, 1, %g1
	add	%g1, %o7, %g2
	cmp	%g4, %g2
	bgu	.L249
	 add	%g3, -1, %g3
	cmp	%o3, %g4
	be,a	.L468
	 add	%o5, %o3, %o0
.L248:
	sub	%o3, %g4, %o2
	srl	%o2, 2, %o7
	sll	%o7, 2, %o4
	cmp	%o4, 0
	be	.L251
	 add	%g4, 17, %g4
	mov	0, %g2
	add	%o0, %g4, %o0
.L252:
	st	%l3, [%o0]
	add	%g2, 1, %g2
	cmp	%g2, %o7
	blu	.L252
	 add	%o0, 4, %o0
	add	%g1, %o4, %g1
	cmp	%o2, %o4
	be	.L250
	 sub	%g3, %o4, %g3
.L251:
	mov	0, %g2
	add	%g3, 1, %g3
	stb	%l2, [%g1+%g2]
.L469:
	add	%g2, 1, %g2
	sub	%g3, %g2, %g4
	cmp	%g4, 17
	bg,a	.L469
	 stb	%l2, [%g1+%g2]
.L250:
	add	%o5, %o3, %o0
.L468:
	b	.L148
	 ldub	[%i0+1], %g2
.L444:
	orcc	%o3, 0, %g2
	ble	.L179
	 sub	%g0, %o0, %g1
	and	%g1, 3, %g1
	cmp	%o3, %g1
	bleu	.L180
	 mov	%o3, %g4
	mov	%g1, %g4
.L180:
	cmp	%o3, 3
	bleu,a	.L181
	 mov	%o3, %g4
.L181:
	cmp	%g4, 0
	be	.L182
	 mov	%o0, %g1
.L183:
	stb	%l2, [%g1]
	add	%g1, 1, %g1
	sub	%g1, %o0, %g3
	cmp	%g4, %g3
	bgu	.L183
	 add	%g2, -1, %g2
	cmp	%o3, %g4
	be,a	.L470
	 ld	[%l4], %g2
.L182:
	sub	%o3, %g4, %o4
	srl	%o4, 2, %o7
	sll	%o7, 2, %o5
	cmp	%o5, 0
	be,a	.L471
	 stb	%l2, [%g1]
	add	%o0, %g4, %g4
	mov	0, %g3
.L186:
	st	%l3, [%g4]
	add	%g3, 1, %g3
	cmp	%g3, %o7
	blu	.L186
	 add	%g4, 4, %g4
	add	%g1, %o5, %g1
	cmp	%o4, %o5
	be	.L184
	 sub	%g2, %o5, %g2
.L368:
	stb	%l2, [%g1]
.L471:
	add	%g2, -1, %g2
	cmp	%g2, 0
	bg	.L368
	 add	%g1, 1, %g1
.L184:
	ld	[%l4], %g2
.L470:
	add	%o0, %o3, %g1
	stb	%g2, [%o0+%o3]
	add	%l4, 4, %l4
	add	%g1, 1, %o0
	b	.L148
	 ldub	[%i0+1], %g2
.L441:
	b	.L216
	 mov	0, %g1
.L443:
	b	.L230
	 mov	8, %o3
.L439:
	ld	[%l4], %o4
	add	%i0, 2, %g2
	add	%l4, 4, %l4
	cmp	%o4, 0
	bge	.L164
	 ldub	[%i0+2], %g1
	mov	0, %o4
	b	.L161
	 mov	%g2, %i0
.L437:
	ble	.L274
	 or	%i2, %lo(.LC0), %g1
	add	%fp, %o4, %o4
	sra	%g2, 31, %o7
	wr	%o7, 0, %y
	nop
	nop
	nop
	sdiv	%g2, 10, %g4
	add	%g4, %g4, %o7
	ldub	[%g1+%g4], %o2
	sll	%g4, 3, %g4
	stb	%o2, [%o4-1048]
	add	%o7, %g4, %g4
	add	%g3, 2, %o4
	b	.L274
	 sub	%g2, %g4, %g2
.L436:
	bg,a	.L422
	 add	%fp, %o7, %o7
	b	.L269
	 or	%i2, %lo(.LC0), %g1
.L434:
	ble,a	.L333
	 mov	2, %g4
	sra	%g3, 31, %g1
	wr	%g1, 0, %y
	nop
	nop
	nop
	sdiv	%g3, 10, %g4
	or	%i2, %lo(.LC0), %g1
	add	%g4, %g4, %o7
	ldub	[%g1+%g4], %o4
	sll	%g4, 3, %g4
	add	%o7, %g4, %o7
	stb	%o4, [%fp-1048]
	sub	%g3, %o7, %g3
	mov	3, %g4
	mov	2, %o7
	b	.L259
	 mov	1, %o4
.L435:
	bg,a	.L420
	 add	%fp, %g4, %g4
	b	.L264
	 or	%i2, %lo(.LC0), %g1
.L327:
	b	.L232
	 or	%i2, %lo(.LC0), %g1
.L422:
	sra	%g3, 31, %g1
	wr	%g1, 0, %y
	nop
	nop
	nop
	sdiv	%g3, 10, %o4
	add	%o4, %o4, %o2
	or	%i2, %lo(.LC0), %g1
	ldub	[%g1+%o4], %o1
	sll	%o4, 3, %o4
	stb	%o1, [%o7-1048]
	add	%o2, %o4, %o4
	add	%g4, 2, %o7
	b	.L269
	 sub	%g3, %o4, %g3
.L333:
	mov	1, %o7
	mov	0, %o4
	b	.L259
	 or	%i2, %lo(.LC0), %g1
.L420:
	sra	%g3, 31, %o2
	wr	%o2, 0, %y
	nop
	nop
	nop
	sdiv	%g3, 10, %o4
	or	%i2, %lo(.LC0), %g1
	add	%o4, %o4, %o2
	ldub	[%g1+%o4], %o1
	sll	%o4, 3, %o4
	stb	%o1, [%g4-1048]
	add	%o2, %o4, %o4
	add	%o7, 2, %g4
	b	.L264
	 sub	%g3, %o4, %g3
.L449:
	b	.L234
	 mov	%g1, %g3
.L440:
	b	.L200
	 or	%l0, %lo(.LC2), %g4
.L322:
	b	.L201
	 mov	0, %g3
.L334:
	b	.L275
	 mov	%g4, %o3
.L331:
	mov	%o5, %o0
	b	.L148
	 ldub	[%i0+1], %g2
.L323:
	b	.L204
	 mov	%o5, %o3
.L328:
	b	.L233
	 mov	%g4, %o3
.L330:
	mov	%o0, %g3
	mov	17, %o7
	b	.L243
	 mov	0, %g2
.L445:
	mov	%o4, %o0
	b	.L148
	 ldub	[%i0+1], %g2
.L325:
	mov	%o0, %o4
	b	.L215
	 mov	0, %g1
.L336:
	mov	%o0, %g3
	mov	0, %g1
	b	.L286
	 add	%fp, -1048, %g4
	.align 4
	.subsection	-1
	.align 4
.L178:
	.word	.L168
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L169
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L170
	.word	.L167
	.word	.L171
	.word	.L172
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L172
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L167
	.word	.L173
	.word	.L174
	.word	.L167
	.word	.L167
	.word	.L175
	.word	.L167
	.word	.L176
	.word	.L167
	.word	.L167
	.word	.L316
	.previous
	.subsection	-1
	.align 4
.L155:
	.word	.L150
	.word	.L149
	.word	.L149
	.word	.L151
	.word	.L149
	.word	.L149
	.word	.L149
	.word	.L149
	.word	.L149
	.word	.L149
	.word	.L149
	.word	.L152
	.word	.L149
	.word	.L153
	.word	.L149
	.word	.L149
	.word	.L154
	.previous
	.size	ee_printf, .-ee_printf
	.ident	"GCC: (Buildroot 2014.08-g538713e) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
