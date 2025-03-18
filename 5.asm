%macro io 4 
	mov rax,%1
	mov rdi,%2
	mov rsi,%3
	mov rdx,%4
	syscall
%endmacro

%macro exit 0
	mov rax,60
	mov rdi,0
	syscall
%endmacro

section.data
	msg1 db "Write an x86/64 ALP to convert a 4 digit hex to equivalent 5-digit BCD and vice versa",10,\
	'Name- Ashish Kumar',10,'Roll No- 7215',10,'Date of Performance- 18-03-25',10
	msg1len equ $-msg1

	msg2 db "A 16-bit haxadecimal number: ",10
	msg2len equ $-msg2

	msg3 db "The BCD conversion of the Number= ",10
	msg3len equ $-msg3

	msg4 db "The Hexadecimal conversion of BCD= ",10
	msg4len equ $-msg4

	newline db 10
	len db 0

section .bss
	choice resb 2
	hexnum resb 5
	bcdnum resb 6

section.code
global _start
	_start:
	
	
