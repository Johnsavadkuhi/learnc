section .text 

global _start 

_start: 

xor eax , eax 
mov al , 1  
mov ebx , ebx  
int 0x80 

