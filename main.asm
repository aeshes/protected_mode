use32
org 100h

start:
; clear screen
  mov ax, 3
  int 10h

; open A20 gate (switch on 32-bit addressing)
  in al, 92h
  or al, 2
  out 92h, al

; calculate entry point' linear address
  xor eax, eax
  mov ax, cs
  shl eax, 4
  add eax, PROTECTED_MODE_ENTRY_POINT

use32
PROTECTED_MODE_ENTRY_POINT:
  ; load segment registers
  nop
