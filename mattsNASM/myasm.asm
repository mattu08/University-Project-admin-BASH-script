;---------------------------NSAM--By-Matthew-Utin--------------------
section .data                  ; Initialized data, can be variable's
userg:      db "Type in the usergroup to add to the system:  ",10  ; 1st string, 10 is used to drop down a line.
userg_L:    equ $-userg ; string length, automatically updates how long the string is, so you don't have to type 10 etc. every time its changed
respns:     db "You have added the system usergroup: ",10          ; 2nd string, 10 is used to drop down a line. 0 is used to end the line.
respns_L    equ $-respns ; 2nd string length, automatically updates how long the string is, so you don't have to type 10 etc. every time its changed
command:         db      '/usr/sbin/groupadd', 0h    ; Command to execute.
argu:            dd      command	    ; Variable is passed to, then be executed.
                 dd      userg_V            ; Arguments passed to the command line.
                 dd      0h                 ; Struct.
enviro:          dd      0h                 ; No arguments are needed for the environment variables.

;========================================================
section .bss                    ; Uninitialised data, also can be variable's
	userg_V resb    255     ; Reserves 255 bytes of data.

;========================================================

section .text                   ; Asm core code. any of the sections can be in any order.
	global _start:          ; Makes _start the global function

_start:                         ; Makes _start the global function
	mov     eax, 0x04       ; Store the system call code = 4 e.g. = kernel function (SYS_WRITE) opcode (04)
	mov     ebx, 0x01       ; 1 is the code to where to write the Asm out to. 1= The terminal
	mov     ecx, userg      ; Contains the label of the string.
	mov     edx, userg_L    ; This is the length of the string.
	int     80h             ; Calls the Linux kernel

	mov     eax, 0x03       ; 3 is the code to read user input. e.g. kernel function (SYS_READ) opcode (03)
	mov     ebx, 0x00       ; This is the error code memory block.
	mov     ecx, userg_V    ; Reserves 255 bytes of data name of string.
	mov     edx, 255        ; Reserves 255 bytes of data.
	int     80h             ; Calls the Linux kernel.
	push    eax             ; Save length of input

	mov     eax, 0x04       ; Store the system call code = 4 e.g. = kernel function (SYS_WRITE) opcode (04)
	mov     ebx, 0x01       ; 1 is the code to where to write the Asm out to. 1= The terminal
	mov     ecx, respns     ; Calls the variable
	mov     edx, respns_L   ; Calls the userg variable length
	int     80h             ; Calls the Linux kernel.

	mov     eax, 0x04       ; Store the system call code = 4 e.g. = kernel function (SYS_WRITE) opcode (04)
	mov     ebx, 0x01       ; 1 is the code to where to write the Asm out to. 1= The terminal
	mov     ecx, userg_V    ; The input text
	mov     edx, [esp]      ; This is the length of the input text
	int     80h             ; Calls the Linux kernel.
	jmp	adduser         ; Calls the adduser function name below.

adduser:			; Start of adduser function below.
	pop     eax             ; Get back the input length
	mov     [eax + userg_V - 1], byte 0 ; Chop off the trailing newline to 0 bytes
	mov     edx, enviro     ; Environment variable's
	mov     ecx, argu       ; Arguments to pass to the command line
	mov     ebx, command    ; Address to execute
	mov     eax, 11         ; (SYS_EXECVE) kernel function opcode (11)
	int     80h		; Calls the Linux kernel.
	call	exit		; Calls the exit function.


;---------------------------------ASM exit code below!-------------------------------------------
exit:
	mov     eax, 0x01       ; [EAX] is 1 this is the exit code! e.g. = kernel function (SYS_EXIT) opcode (01)
	mov     ebx, 0x00       ; This is the error code memory block.
	int     80h         	; Calls the Linux kernel.
