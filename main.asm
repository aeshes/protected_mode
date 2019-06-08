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
