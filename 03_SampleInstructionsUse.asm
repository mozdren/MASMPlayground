.386
.model flat, stdcall
option casemap :none

; includes ---------------------------------------------------------------

include d:\masm32\include\windows.inc
include d:\masm32\include\kernel32.inc
include d:\masm32\include\masm32.inc

; libs -------------------------------------------------------------------

includelib d:\masm32\lib\kernel32.lib
includelib d:\masm32\lib\masm32.lib

; data -------------------------------------------------------------------

.data
			ProgramText db		"Hello, World", 0				; text to be shown
			BadText		db		"Error: Sum is incorrect", 0	; bad text
			GoodText	db		"Excellent! Sub is 6", 0		; good text
			Sum			sdword	0								; sum

; code -------------------------------------------------------------------

.code
start:
			mov ecx, 6						; sets the counter register to 6
			xor eax, eax					; set eax to 0 (clear)		
_label:		add eax, ecx					; add the numbers
			dec ecx							; decrease counter
			jnz _label						; jump to _label if not zero
			mov edx, 7						; set the data register to 7
			mul edx							; multiply eax by edx (eax * 7)
			push eax						; push eax to stack
			pop Sum							; pops stack value (eax) and pusts it into the sum
			cmp Sum, 147					; compare sum to 147 (substracts 147 from Sum and sets the flags)
			jz _good						; jump to good if the sum is 147
_bad:		invoke StdOut, addr BadText		; printout bad text
			jmp	_quit						; jump to the end
_good:		invoke StdOut, addr GoodText	; printout good text
_quit:		invoke ExitProcess, 0			; end the program

end start
