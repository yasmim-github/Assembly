section .data
    msg db "Hello World"

section .text
    global _start
    
_start:
    call write
    jmp exit

write: 
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 11
    syscall

exit:
    mov rax, 60
    mov rdi, 0
    syscall

