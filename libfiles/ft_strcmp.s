section .text
	global _ft_strcmp

_ft_strcmp:
	xor rcx, rcx
	xor al, al
	cmp rdi, 0
	je checkex1
	cmp rsi, 0
	je checkex1
	jmp compar

checkex1:
	cmp rdi, rsi
	je reteq
	jl retle
	jg retgr


compar:
	cmp BYTE [rdi + rcx], 0
	je lastcomp
	add al, BYTE [rdi + rcx]
	cmp BYTE [rsi + rcx], 0
	je retgr
	sub al, BYTE [rsi + rcx]
	cmp al, 0
	jg retgr
	jl retle
	inc rcx
	jmp compar

lastcomp:
	cmp BYTE [rsi + rcx], 0
	je reteq
	jne retle

reteq:
	xor rax, rax
	ret
retgr:
	mov rax, 1
	ret
retle:
	mov rax, -1
	ret
