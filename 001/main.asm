
global Start               ; Le informo al linkeador de la etiqueta "Start" 

extern MessageBoxA         ; Declaro que usaré MessageBoxA y ExitProcess de las WinAPI del Windows
extern ExitProcess



;--------------------------------------------------------------------

section .data

	mensaje db 'Dame toda la plata wacho',0
	titulo db 'SOY UN VIRUH',0
	
;--------------------------------------------------------------------

section .text

	
Start:


;_______Creo lo que se llama un stackframe
	
	push rbp
	mov rbp, rsp
	sub rsp, 32


;_______Paso los parametros a MessageBox

	mov rcx, 0
	mov rdx, mensaje
	mov r8, titulo
	mov r9, 0

;_______Una vez pasados, llamo a MessageBoxA

	call MessageBoxA


;_______Quito el stackframe

	mov rsp, rbp
	pop rbp
	
;_______Paso parametros al ExitProcess
	
	mov rcx, 0
	
;_______Llamo al ExitProcess

	call ExitProcess
	
;--------------------------------------------------------------------
