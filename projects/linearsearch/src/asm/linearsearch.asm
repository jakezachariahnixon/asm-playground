; Create a C-callable function to linearsearch an array of integers
; Call as linearsearch(uint64_t[] array, uint64_t length, uint64_t search_term)
; Returns index of item as an integer (uint64_t)

    global _linsearch
    section .text

_linsearch:
    ; RDI is array pointer
    ; RSI is length
    ; RDX is search term
    mov         r9,     0           ; current index
    cmp         rsi,    0           ; don't check empty array
    je          done
next:
    cmp         rdx,    [rdi]       ; Compare val + search val
    je          done                ; If found, go to found
    inc         r9                  ; Increment our index
    add         rdi,    8           ; Move to next index
    cmp         r9,     rsi         ; Check if end of array
    jne         next                ; If values left, continue
done:
    mov         rax,    r9          ; Return index if found
    ret                             ; Length of array if not found
