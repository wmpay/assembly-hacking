SECTION .text
global start
start:
  mov rax, 0x2000001
  mov rdi, 0
  syscall

SECTION .data