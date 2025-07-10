
section .data 

	msg1 db "hello user , what is your name" , 0xA 
	len equ $ - msg1 
	msg2 db "your name is: "
	len2 equ $ - msg2

section .bss
	buffer resb 20



section .text

	global _start
		_start:
	
	;syscall write 
	mov rax , 1
	mov rdi , 1
	mov rsi , msg1
	mov rdx , len
	syscall


	;syscall read
	mov rax , 0
	mov rdi , 0
	mov rsi , buffer
	mov rdx , 20 
	syscall


	;print the second message
	mov rax ,1 
	mov rdi , 1
	mov rsi , msg2
	mov rdx , len2
	syscall	


	;print the name of the user 
	mov rax , 1
	mov rax , 1
	mov rsi , buffer
	mov rdx , 20
	syscall




	;exit syscall
	mov rax , 60
	syscall





















