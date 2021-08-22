; infinite loop
loop:
	jmp loop

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0
; Add magic number to identify code as boot sector data
dw 0xaa55
