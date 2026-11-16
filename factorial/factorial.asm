section .data
fmt_prompt_for_input:
	db `Enter the number to calculate factorial: \0`
fmt_input:
	db `%ld\0`
fmt_output:
	db `The result of %ld! is: %ld\n\0`

section .bss
n:
	resq 1
factorial:
	resq 1

extern printf, scanf
global main

section .text
main:
    ; Call your algorithm here.
    push rbp		; saving the old frame-pointer
	mov rbp, rsp		; establishing the new frame
	and rsp, -16		; align the stack downward at the 16-byte level

	; printf(fmt_prompt_for_input)
	mov rdi, fmt_prompt_for_input ; the format-string for printf
	mov rax, 0		      ; 0 floating-point registers in use
	call printf
    
	mov rdi, fmt_input	; the format string for scanf
	mov rsi, n		; the address of n
	mov rax, 0		; 0 floating-point registers in use
	call scanf

    xor eax, eax       ; Return exit status 0.
    leave              ; Restore rsp and the caller's rbp.
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
