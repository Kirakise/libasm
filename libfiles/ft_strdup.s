section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	cmp rdi, 0
	je err
	call _ft_strlen
	inc rax
	push rdi
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je err
	pop rsi
	mov rdi, rax
	xor rax, rax
	call _ft_strcpy
	ret
	
err:
	xor rax, rax
	ret
