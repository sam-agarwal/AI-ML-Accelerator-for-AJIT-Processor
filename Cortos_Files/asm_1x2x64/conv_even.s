.section ".text"
.align 4
.global conv_even
.type conv_even, #function
conv_even:
	save %sp, -120, %sp
	! %i0 is image ptr
	! %i1 is 16
	! %i2 is n
	! %i3 is kernel ptr
	! %i4 is result ptr

	set 0xFF, %i5		! mask for adddreduce8
	set 2, %g2
	set 2, %g3
	set 2, %o2
	set 2, %o3

	ldd [%i3],   %l0	! l0 - l3 hold the kernel values (16 8bit elements in total)
	ldd [%i3+8], %l2 
	
	umul %i2, 2, %o0
	add %i0, %o0, %i1       ! i1 is having ptr of the lower half of the sliding window of image
	
	clr %o0 		!o0 is used as x ptr
	clr %o1			!o1 is used as y ptr

	sub %i2, 3, %g4

load:	ldub [%i0], %l4		! load img window one byte at a time

	sll %l4, 8, %l4
	ldub [%i0+1], %o4 
	or %l4,%o4,%l4

	sll %l4, 8, %l4
	ldub [%i0+2], %o4 
	or %l4,%o4,%l4

	sll %l4, 8, %l4
	ldub [%i0+3], %o4 
	or %l4,%o4,%l4
	
	add %i0, %i2, %o5

	ldub [%o5-1], %l5

	sll %l5, 8, %l5
	ldub [%o5], %o4
	or %l5,%o4, %l5

	sll %l5, 8, %l5
	ldub [%o5+1], %o4
	or %l5,%o4, %l5

	sll %l5, 8, %l5
	ldub [%o5+2], %o4
	or %l5,%o4, %l5

	ldub [%i1], %l6

	sll %l6, 8, %l6
	ldub [%i1+1], %o4 
	or %l6,%o4,%l6

	sll %l6, 8, %l6
	ldub [%i1+2], %o4 
	or %l6,%o4,%l6

	sll %l6, 8, %l6
	ldub [%i1+3], %o4 
	or %l6,%o4,%l6

	add %i1, %i2, %o5

	ldub [%o5], %l7

	sll %l5, 8, %l7						
	ldub [%o5+1], %o4
	or %l5,%o4, %l7

	sll %l5, 8, %l7
	ldub [%o5+2], %o4
	or %l5,%o4, %l7

	sll %l5, 8, %l5
	ldub [%o5+3], %o4
	or %l5,%o4, %l7

	vumuld8 %l0, %l4, %l4		! l4-l7 is having dot product 
	vumuld8 %l2, %l6, %l6
	
	adddreduce8 %l4, %i5, %l4
	adddreduce8 %l6, %i5, %l6

	add %l4, %l6, %g1		! g1 has result of one convolution

	st %g1, [%i4]
	add %i4, 8, %i4			!reult ptr updated here	

	add %o0, 2, %o0

	cmp %o0,%g4	
	bl load			! if the x ptr is not equal to ending ptr, go to load. if equal, we have to update the ptr differently
	vaddd32 %g2, %i0, %i0   	! the image ptrs are updated

	sub %i4, 4, %i4  	! Once we have reached the end of inner x loop, the result ptr has to be decreased.

	clr %o0
	inc %o1! increase the y ptr

	cmp %o1, %g4
	bl load
	vaddd32 %o2 ,%i0, %i0
	
	ret
	restore
