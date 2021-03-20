section .text
	global _ft_strcpy

_ft_strcpy:
	xor rcx, rcx
	xor al, al
	cmp rsi, 0
	je ex1
	cmp rdi, 0
	je ex1
	jmp fonc

inc:
	inc rcx

fonc:
	mov al, BYTE [rsi + rcx]
	mov BYTE [rdi + rcx], al
	cmp al, 0
	jne inc

ex1:
	mov rax, rdi
	ret
