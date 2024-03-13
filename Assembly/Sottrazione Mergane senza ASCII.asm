section .data
msg db "sottrazione: " 
boh db "Mergane----> "
len equ $ - msg  
lun equ $ - boh

section .bss
res resb 1

section .text
global _start

_start:
mov	eax, 7
mov	ebx, 4

sub	eax, ebx
add	eax, '0'
mov	[res], eax

mov	ecx, msg
mov	edx, len
mov	ebx, 1
mov	eax, 4
int	80h

mov	ecx, res
mov	edx, 1
mov	ebx, 1
mov	eax, 4
int	80h

mov esi, boh
mov	edx, lun
mov	ebx, 1
mov	eax, 2
int	80h


mov	eax, 1
mov	ebx, 0
int	80h