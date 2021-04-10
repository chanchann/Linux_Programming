global _start

section .data
    hello : db `hello, world!\n`
; https://stackoverflow.com/questions/19760002/nasm-segmentation-fault-on-ret-in-start

section .text
_start:
    mov     rax, 1          ; system call number should be stored in rax
    mov     rdi, 1          ; argument #1 in rdi: where to write (descriptor)?
    mov     rsi, hello      ; argument #2 in rsi: where does the string start?
    mov     rdx, 14         ; argument #3 in rdx: how many bytes to write?
    syscall                 ; this instruction invokes a system call


    mov     rax, 60         ; 'exit' syscall number
    xor     rdi, rdi        ;
    syscall