global main
extern printf
extern scanf 

section .text
main:
	push rbp

	mov rdi, msg1
	mov rax, 0
	call printf

	mov rdi, formatin
	mov rsi, number
	mov rax, 0
	call scanf 

	mov rdi, formatout
	mov rsi, [number]
	mov rax,0
	call printf

	mov rdi, msg2
	mov rax, 0
	call printf

	mov rdi, formatins
	mov rsi, string
	mov rax,0
	call scanf

	mov rdi, formatouts
	mov rsi, string
	mov rax, 0
	call printf
	
	pop rbp
	ret

section .data
	msg1: db "Enter a number: ",0
	newline: db "    ",0
	formatin: db "%d",0
	formatout: dd " %d",10,0	
	msg2: dw "Enter a string: ",0
	formatins: db "%s",0,10
	formatouts: dd "%s",10,0

section .bss
	number resb 4
	string resb 100
