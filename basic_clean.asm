section .text
	global _start

_start:
	jmp exit            ;call diz que o sistema vai continuar executando algo além dessa
	                    ;chamada, como estamos usando apenas o exit (saída) não faz difen-
exit:                 ;ça alguma. Porém vamos usar jmp, para chamar e parar de executar.

	mov rax, 60
	mov rdi, 0 
	syscall             ; output : [Execution complete with exit code 0]