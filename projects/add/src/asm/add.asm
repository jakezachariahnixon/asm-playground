; Create a C-callable function to linearsearch an array of integers
; Call as linearsearch(int[] array, uint64_t length)
; Returns index of item as an integer

    global _add
    section .text
_add:
    mov     rax,    rdi
    add     rax,    rsi
    ret
