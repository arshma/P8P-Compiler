	.386
	.model	flat,stdcall
	.code
main	proc
	call	_inf
	fstp	v53
	fld	v53
	fld	c50
	fcompp
	fstsw	ax
	sahf
	jle	_0
	jmp	_1
_0:
	ret
_1:
	fld	c51
	call	_outf
	fld	v53
	fld	c50
	fcompp
	fstsw	ax
	sahf
	jne	_2
	jmp	_3
_2:
	ret
_3:
	mov	eax,c52
	mov	v51,eax
	fld	v51
	call	_outf
	mov	eax,c51
	mov	v52,eax
_4:
	fld	v52
	fld	v53
	fcompp
	fstsw	ax
	sahf
	jle	_5
	jmp	_6
_5:
	mov	eax,v51
	add	eax,c51
	mov	v51,eax
	mov	eax,c52
	mov	v50,eax
	mov	eax,c50
	mov	v54,eax
_7:
	mov	eax,v50
	imul	v50
	fld	v51
	fcompp
	fstsw	ax
	sahf
	je	_8
	jmp	_9
_8:
	push	eax
	mov	eax,v51
	cdq
	idiv	v50
	mov	ebx,eax
	pop	eax
	push	eax
	mov	eax,v50
	imul	ebx
	mov	ebx,eax
	pop	eax
	fld	ebx
	fld	v51
	fcompp
	fstsw	ax
	sahf
	add	_10
	jmp	_11
_10:
	mov	ecx,v50
	add	ecx,c51
	mov	v50,ecx
	jmp	_12
_11:
	mov	eax,c53
	mov	v54,eax
	jmp	_9
_12:
	jmp	_7
_9:
	fld	v54
	fld	c50
	fcompp
	fstsw	ax
	sahf
	jne	_13
	jmp	_14
_13:
	fld	v51
	call	_outf
	mov	ecx,v52
	add	ecx,c50
	mov	v52,ecx
_14:
	jmp	_4
_6:
	xor	eax,eax
	ret
main	endp
	.data
c50	dd	1
c51	dd	2
c52	dd	3
c53	dd	0
v50	dd	?	;d
v51	dd	?	;n
v52	dd	?	;np
v53	dd	?	;nwp
v54	dd	?	;p
	extern	inf@0:near
	extern	outf@0:near
	end
