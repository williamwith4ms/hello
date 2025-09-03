section .data
  msg db "hello, world!", 0xA
  len equ $ - msg

section .text 
  global _start 

_start:
  MOV eax, 4
  MOV ebx, 1
  MOV ecx, msg
  MOV edx, len
  int 0x80

  mov eax, 1
  xor ebx, ebx 
  int 0x80
