global main

section .text
main:
    ; Call your algorithm here.
    xor eax, eax       ; Return exit status 0.
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
