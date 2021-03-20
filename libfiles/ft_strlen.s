section .text
	global _ft_strlen

_ft_strlen:
	xor rax, rax

cmpr:
	cmp BYTE [rdi + rax], 0
	jne add1
	je	exit

add1:
	add rax, 1
	jmp cmpr
exit:
	ret
