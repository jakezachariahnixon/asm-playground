; Create a C-callable function to sum an array of doubles
; Call as sum(double[] array, uint64_t length)

    global _sum
    section .text

_sum:

    xorpd       xmm0,   xmm0
    cmp         rsi,    0
    je          done

next:

    addsd       xmm0,   [rdi]
    add         rdi,    8
    dec         rsi
    jnz         next

done:

    ret
