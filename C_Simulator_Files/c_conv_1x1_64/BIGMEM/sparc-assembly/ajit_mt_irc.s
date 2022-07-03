	.file	"ajit_mt_irc.c"
	.section	".text"
	.align 4
	.global ajit_initialize_interrupt_handlers_to_null
	.type	ajit_initialize_interrupt_handlers_to_null, #function
	.proc	020
ajit_initialize_interrupt_handlers_to_null:
	sethi	%hi(ajit_global_interrupt_handlers), %g2
	or	%g2, %lo(ajit_global_interrupt_handlers), %g1
	st	%g0, [%g2+%lo(ajit_global_interrupt_handlers)]
	st	%g0, [%g1+4]
	st	%g0, [%g1+8]
	st	%g0, [%g1+12]
	st	%g0, [%g1+16]
	st	%g0, [%g1+20]
	st	%g0, [%g1+24]
	st	%g0, [%g1+28]
	st	%g0, [%g1+32]
	st	%g0, [%g1+36]
	st	%g0, [%g1+40]
	st	%g0, [%g1+44]
	st	%g0, [%g1+48]
	st	%g0, [%g1+52]
	st	%g0, [%g1+56]
	jmp	%o7+8
	 st	%g0, [%g1+60]
	.size	ajit_initialize_interrupt_handlers_to_null, .-ajit_initialize_interrupt_handlers_to_null
	.align 4
	.global ajit_set_interrupt_handler
	.type	ajit_set_interrupt_handler, #function
	.proc	020
ajit_set_interrupt_handler:
	cmp	%o0, 15
	bgu	.L5
	 sll	%o0, 2, %o0
	sethi	%hi(ajit_global_interrupt_handlers), %g1
	or	%g1, %lo(ajit_global_interrupt_handlers), %g1
	st	%o1, [%g1+%o0]
.L5:
	jmp	%o7+8
	 nop
	.size	ajit_set_interrupt_handler, .-ajit_set_interrupt_handler
	.align 4
	.global ajit_generic_interrupt_handler
	.type	ajit_generic_interrupt_handler, #function
	.proc	020
ajit_generic_interrupt_handler:
	save	%sp, -104, %sp
	add	%fp, -4, %o1
	call	ajit_get_core_and_thread_id, 0
	 add	%fp, -8, %o0
	ldub	[%fp-8], %g1
	add	%g1, %g1, %g1
	ldub	[%fp-4], %i5
	sethi	%hi(-53248), %i4
	add	%i5, %g1, %i5
	sll	%i5, 2, %i5
	add	%i5, %i4, %i5
	call	__ajit_load_word_mmu_bypass__, 0
	 mov	%i5, %o0
	mov	%i5, %o1
	call	__ajit_store_word_mmu_bypass__, 0
	 and	%o0, -2, %o0
	srl	%i0, 4, %i0
	and	%i0, 255, %i0
	add	%i0, -17, %g1
	cmp	%g1, 14
	bgu	.L12
	 sethi	%hi(-53248), %g2
	add	%i0, -16, %i0
	sethi	%hi(ajit_global_interrupt_handlers), %g1
	sll	%i0, 2, %i0
	or	%g1, %lo(ajit_global_interrupt_handlers), %g1
	ld	[%g1+%i0], %g1
	cmp	%g1, 0
	be,a	.L13
	 ldub	[%fp-8], %g1
	call	%g1, 0
	 nop
	ldub	[%fp-4], %g2
	ldub	[%fp-8], %g1
	add	%g1, %g1, %g1
	add	%g2, %g1, %g1
	sll	%g1, 2, %g1
	add	%g1, %i4, %i4
	call	__ajit_load_word_mmu_bypass__, 0
	 mov	%i4, %o0
	mov	%i4, %o1
	call	__ajit_store_word_mmu_bypass__, 0
	 or	%o0, 1, %o0
	jmp	%i7+8
	 restore
.L12:
	ldub	[%fp-8], %g1
.L13:
	add	%g1, %g1, %g1
	ldub	[%fp-4], %i5
	add	%i5, %g1, %i5
	sll	%i5, 2, %i5
	add	%i5, %g2, %i5
	call	__ajit_load_word_mmu_bypass__, 0
	 mov	%i5, %o0
	mov	%i5, %o1
	call	__ajit_store_word_mmu_bypass__, 0
	 or	%o0, 1, %o0
#APP
! 52 "/home/sammyyy/Internship/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_mt_irc.c" 1
	ta 0;
! 0 "" 2
#NO_APP
	jmp	%i7+8
	 restore
	.size	ajit_generic_interrupt_handler, .-ajit_generic_interrupt_handler
	.align 4
	.global readInterruptControlRegister
	.type	readInterruptControlRegister, #function
	.proc	016
readInterruptControlRegister:
	add	%o0, %o0, %o0
	sethi	%hi(-53248), %g1
	add	%o0, %o1, %o1
	sll	%o1, 2, %o0
	add	%o0, %g1, %o0
	or	%o7, %g0, %g1
	call	__ajit_load_word_mmu_bypass__, 0
	 or	%g1, %g0, %o7
	.size	readInterruptControlRegister, .-readInterruptControlRegister
	.align 4
	.global writeInterruptControlRegister
	.type	writeInterruptControlRegister, #function
	.proc	020
writeInterruptControlRegister:
	add	%o0, %o0, %o0
	sethi	%hi(-53248), %g1
	add	%o0, %o1, %o1
	mov	%o2, %o0
	sll	%o1, 2, %o1
	add	%o1, %g1, %o1
	or	%o7, %g0, %g1
	call	__ajit_store_word_mmu_bypass__, 0
	 or	%g1, %g0, %o7
	.size	writeInterruptControlRegister, .-writeInterruptControlRegister
	.align 4
	.global enableInterruptController
	.type	enableInterruptController, #function
	.proc	020
enableInterruptController:
	save	%sp, -96, %sp
	sethi	%hi(-53248), %g1
	add	%i0, %i0, %i0
	add	%i1, %i0, %i1
	sll	%i1, 2, %i1
	add	%i1, %g1, %i1
	call	__ajit_load_word_mmu_bypass__, 0
	 mov	%i1, %o0
	or	%o0, 1, %i0
	call	__ajit_store_word_mmu_bypass__, 0
	 restore
	.size	enableInterruptController, .-enableInterruptController
	.align 4
	.global disableInterruptController
	.type	disableInterruptController, #function
	.proc	020
disableInterruptController:
	save	%sp, -96, %sp
	sethi	%hi(-53248), %g1
	add	%i0, %i0, %i0
	add	%i1, %i0, %i1
	sll	%i1, 2, %i1
	add	%i1, %g1, %i1
	call	__ajit_load_word_mmu_bypass__, 0
	 mov	%i1, %o0
	and	%o0, -2, %i0
	call	__ajit_store_word_mmu_bypass__, 0
	 restore
	.size	disableInterruptController, .-disableInterruptController
	.align 4
	.global enableInterrupt
	.type	enableInterrupt, #function
	.proc	020
enableInterrupt:
	save	%sp, -96, %sp
	sethi	%hi(-53248), %g1
	add	%i0, %i0, %i0
	add	%i1, %i0, %i1
	sll	%i1, 2, %i1
	add	%i1, %g1, %i1
	call	__ajit_load_word_mmu_bypass__, 0
	 mov	%i1, %o0
	mov	1, %g1
	sll	%g1, %i2, %i0
	or	%o0, %i0, %i0
	call	__ajit_store_word_mmu_bypass__, 0
	 restore
	.size	enableInterrupt, .-enableInterrupt
	.align 4
	.global enableAllInterrupts
	.type	enableAllInterrupts, #function
	.proc	020
enableAllInterrupts:
	save	%sp, -96, %sp
	sethi	%hi(-53248), %g1
	add	%i0, %i0, %i0
	add	%i1, %i0, %i1
	sethi	%hi(64512), %i0
	sll	%i1, 2, %i1
	or	%i0, 1022, %i0
	add	%i1, %g1, %i1
	call	__ajit_load_word_mmu_bypass__, 0
	 mov	%i1, %o0
	or	%o0, %i0, %i0
	call	__ajit_store_word_mmu_bypass__, 0
	 restore
	.size	enableAllInterrupts, .-enableAllInterrupts
	.align 4
	.global enableInterruptControllerAndAllInterrupts
	.type	enableInterruptControllerAndAllInterrupts, #function
	.proc	020
enableInterruptControllerAndAllInterrupts:
	add	%o0, %o0, %o0
	sethi	%hi(-53248), %g1
	add	%o1, %o0, %o1
	sethi	%hi(64512), %o0
	sll	%o1, 2, %o1
	or	%o0, 1023, %o0
	add	%o1, %g1, %o1
	or	%o7, %g0, %g1
	call	__ajit_store_word_mmu_bypass__, 0
	 or	%g1, %g0, %o7
	.size	enableInterruptControllerAndAllInterrupts, .-enableInterruptControllerAndAllInterrupts
	.align 4
	.global setInterruptMask
	.type	setInterruptMask, #function
	.proc	020
setInterruptMask:
	save	%sp, -96, %sp
	sethi	%hi(-53248), %g1
	add	%i0, %i0, %i0
	add	%i1, %i0, %i1
	sll	%i1, 2, %i1
	add	%i1, %g1, %i1
	call	__ajit_load_word_mmu_bypass__, 0
	 mov	%i1, %o0
	sethi	%hi(-65536), %i0
	sethi	%hi(64512), %g1
	or	%i0, 1, %i0
	or	%g1, 1022, %g1
	and	%o0, %i0, %i0
	and	%i2, %g1, %i2
	or	%i0, %i2, %i0
	call	__ajit_store_word_mmu_bypass__, 0
	 restore
	.size	setInterruptMask, .-setInterruptMask
	.align 4
	.global disableInterrupt
	.type	disableInterrupt, #function
	.proc	020
disableInterrupt:
	save	%sp, -96, %sp
	sethi	%hi(-53248), %g1
	add	%i0, %i0, %i0
	add	%i1, %i0, %i1
	sll	%i1, 2, %i1
	add	%i1, %g1, %i1
	call	__ajit_load_word_mmu_bypass__, 0
	 mov	%i1, %o0
	mov	1, %g1
	sll	%g1, %i2, %i0
	andn	%o0, %i0, %i0
	call	__ajit_store_word_mmu_bypass__, 0
	 restore
	.size	disableInterrupt, .-disableInterrupt
	.common	ajit_global_interrupt_handlers,64,4
	.ident	"GCC: (Buildroot 2014.08-g538713e) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
