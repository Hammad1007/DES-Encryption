[org 0x0100]
jmp start

; Data Labels
;------------------------------------------------

; Sbox1
S1_1: dw 14, 4, 13, 1, 2, 15, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7
S1_2: dw 0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, 11, 9, 5, 3, 8
S1_3: dw 4, 1, 14, 8, 13, 6, 2, 11, 15, 12, 9, 7, 3, 10, 5, 0
S1_4: dw 15, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, 14, 10, 0, 6, 13
; Sbox2
S2_1: dw 15, 1, 8, 14, 6, 11, 3, 4, 9, 7, 2, 13, 12, 0, 5, 10
S2_2: dw 3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, 11, 5
S2_3: dw 0, 14, 7, 11, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15
S2_4: dw 13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9
; Sbox3
S3_1: dw 10, 0, 9, 14, 6, 3, 15, 5, 1, 13, 12, 7, 11, 4, 2, 8
S3_2: dw 13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, 14, 12, 11, 15, 1
S3_3: dw 13, 6, 4, 9, 8, 15, 3, 0, 11, 1, 2, 12, 5, 10, 14, 7
S3_4: dw 1, 10, 13, 0, 6, 9, 8, 7, 4, 15, 14, 3, 11, 5, 2, 12
; Sbox4
S4_1: dw 7, 13, 14, 3, 0, 6, 9, 10, 1, 2, 8, 5, 11, 12, 4, 15
S4_2: dw 13, 8, 11, 5, 6, 15, 0, 3, 4, 7, 2, 12, 1, 10, 14, 9
S4_3: dw 10, 6, 9, 0, 12, 11, 7, 13, 15, 1, 3, 14, 5, 2, 8, 4
S4_4: dw 3, 15, 0, 6, 10, 1, 13, 8, 9, 4, 5, 11, 12, 7, 2, 14
; Sbox5
S5_1: dw 2, 12, 4, 1, 7, 10, 11, 6, 8, 5, 3, 15, 13, 0, 14, 9
S5_2: dw 14, 11, 2, 12, 4, 7, 13, 1, 5, 0, 15, 10, 3, 9, 8, 6
S5_3: dw 4, 2, 1, 11, 10, 13, 7, 8, 15, 9, 12, 5, 6, 3, 0, 14
S5_4: dw 11, 8, 12, 7, 1, 14, 2, 13, 6, 15, 0, 9, 10, 4, 5, 3
; Sbox6
S6_1: dw 12, 1, 10, 15, 9, 2, 6, 8, 0, 13, 3, 4, 14, 7, 5, 11
S6_2: dw 10, 15, 4, 2, 7, 12, 9, 5, 6, 1, 13, 14, 0, 11, 3, 8
S6_3: dw 9, 14, 15, 5, 2, 8, 12, 3, 7, 0, 4, 10, 1, 13, 11, 6
S6_4: dw 4, 3, 2, 12, 9, 5, 15, 10, 11, 14, 1, 7, 6, 0, 8, 13
; Sbox7
S7_1: dw 4, 11, 2, 14, 15, 0, 8, 13, 3, 12, 9, 7, 5, 10, 6, 1
S7_2: dw 13, 0, 11, 7, 4, 9, 1, 10, 14, 3, 5, 12, 2, 15, 8, 6
S7_3: dw 1, 4, 11, 13, 12, 3, 7, 14, 10, 15, 6, 8, 0, 5, 9, 2
S7_4: dw 6, 11, 13, 8, 1, 4, 10, 7, 9, 5, 0, 15, 14, 2, 3, 12
; Sbox8
S8_1: dw 13, 2, 8, 4, 6, 15, 11, 1, 10, 9, 3, 14, 5, 0, 10, 7
S8_2: dw 1, 15, 13, 8, 10, 3, 7, 4, 12, 5, 6, 11, 0, 14, 9, 2
S8_3: dw 7, 11, 4, 1, 9, 12, 14, 2, 0, 6, 10, 13, 15, 3, 5, 8
S8_4: dw 2, 1, 14, 7, 4, 10, 8, 13, 15, 12, 9, 0, 3, 5, 6, 11

data:				dd 10101010101010101010101010101010b ; 32 bit data
num:				db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
num2:				db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
answer:				db 1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0
arrayData:			db 32,1,2,3,4,5,4,5,6,7,8,9,8,9,10,11,12,13,12,13,14,15,16,17,16,17,18,19,20,21,20,21,22,23,24,25,24,25,26,27,28,29,28,29,30,31,32,1 ; Expansion Array
encrypted_data:		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;
pointer:			dw 0
permutation_arr:	db 16,7,20,21,29,12,28,17,1,15,23,26,5,18,31,10,2,8,24,14,32,27,3,9,19,13,30,6,22,11,4,25
shuffeled_arr:		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
output:				dd 00000000000000000000000000000000b ; 32 bit output

plaintext:	db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0

changePT:	db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			

tempLabel:	db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0
			db 0, 0, 0, 0, 0, 0, 0, 0



LeftPlainText:	db 0, 0, 0, 0, 0, 0, 0, 0
				db 0, 0, 0, 0, 0, 0, 0, 0
				db 0, 0, 0, 0, 0, 0, 0, 0
				db 0, 0, 0, 0, 0, 0, 0, 0

RightPlainText:	db 0, 0, 0, 0, 0, 0, 0, 0
				db 0, 0, 0, 0, 0, 0, 0, 0
				db 0, 0, 0, 0, 0, 0, 0, 0
				db 0, 0, 0, 0, 0, 0, 0, 0

IP:		db 58, 50, 42, 34, 26, 18, 10, 2
		db 60, 52, 44, 36, 28, 20, 12, 4
		db 62, 54, 46, 38, 30, 22, 14, 6
		db 64, 56, 48, 40, 32, 24, 16, 8
		db 57, 49, 41, 33, 25, 17, 9, 1
		db 59, 51, 43, 35, 27, 19, 11, 3
		db 61, 53, 45, 37, 29, 21, 13, 5
		db 63, 55, 47, 39, 31, 23, 15, 7

IP_1:	db 40, 8, 48, 16, 56, 24, 64, 32
		db 39, 7, 47, 15, 55, 23, 63, 31
		db 38, 6, 46, 14, 54, 22, 62, 30
		db 37, 5, 45, 13, 53, 21, 61, 29
		db 36, 4, 44, 12, 52, 20, 60, 28
		db 35, 3, 43, 11, 51, 19, 59, 27
		db 34, 2, 42, 10, 50, 18, 58, 26
		db 33, 1, 41, 9, 49, 17, 57, 25


PC_1:	db 57, 49, 41, 33, 25, 17, 09, 01
		db 58, 50, 42, 34, 26, 18, 10, 02
		db 59, 51, 43, 35, 27, 19, 11, 03
		db 60, 52, 44, 36, 63, 55, 47, 39
		db 31, 23, 15, 07, 62, 54, 46, 38
		db 30, 22, 14, 06, 61, 53, 45, 37
		db 29, 21, 13, 05, 28, 20, 12, 04

PC_2:	db 14, 17, 11, 21, 01, 05, 03, 28
		db 15, 06, 21, 10, 23, 19, 12, 04
		db 26, 08, 16, 07, 27, 20, 13, 02
		db 41, 52, 31, 37, 47, 55, 30, 40
		db 51, 45, 33, 48, 44, 49, 39, 56
		db 34, 53, 46, 42, 50, 36, 29, 32

input:	db 0, 1, 0, 1, 0, 1, 0, 1
		db 0, 1, 0, 1, 0, 1, 0, 1
		db 0, 1, 0, 1, 0, 1, 0, 1
		db 0, 1, 0, 1, 0, 1, 0, 1
		db 0, 1, 0, 1, 0, 1, 0, 1
		db 0, 1, 0, 1, 0, 1, 0, 1
		db 0, 1, 0, 1, 0, 1, 0, 1
		db 0, 1, 0, 1, 0, 1, 0, 1

convertTo56:	db  0, 0, 0, 0, 0, 0, 0, 0
				db  0, 0, 0, 0, 0, 0, 0, 0
				db  0, 0, 0, 0, 0, 0, 0, 0
				db  0, 0, 0, 0, 0, 0, 0, 0
				db  0, 0, 0, 0, 0, 0, 0, 0
				db  0, 0, 0, 0, 0, 0, 0, 0
				db  0, 0, 0, 0, 0, 0, 0, 0

convertTo28Part1:	db 0, 0, 0, 0, 0, 0, 0
					db 0, 0, 0, 0, 0, 0, 0
					db 0, 0, 0, 0, 0, 0, 0
					db 0, 0, 0, 0, 0, 0, 0
					
convertTo28Part2:	db 0, 0, 0, 0, 0, 0, 0
					db 0, 0, 0, 0, 0, 0, 0
					db 0, 0, 0, 0, 0, 0, 0
					db 0, 0, 0, 0, 0, 0, 0

merge:	db  0, 0, 0, 0, 0, 0, 0, 0
		db  0, 0, 0, 0, 0, 0, 0, 0
		db  0, 0, 0, 0, 0, 0, 0, 0
		db  0, 0, 0, 0, 0, 0, 0, 0
		db  0, 0, 0, 0, 0, 0, 0, 0
		db  0, 0, 0, 0, 0, 0, 0, 0
		db  0, 0, 0, 0, 0, 0, 0, 0

Shift1:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

Shift2:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		
key1:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		
key2:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key3:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key4:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key5:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key6:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key7:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key8:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key9:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key10:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key11:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key12:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key13:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key14:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		
key15:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0

key16:	db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
		db 0, 0, 0, 0, 0, 0, 0
;------------------------------------------------

inputConvert:
	pusha
	push di
	push si
	
	
	mov di, 0
	mov si, 0
	
	mov cx, 56
	
	loop1:
		mov si, [PC_1 + di]
		dec si
		
		mov al, [input + si]
		mov [input + di], al
		
		inc di	
	loop loop1
	
	pop si
	pop di
	popa
	
	ret
;------------------------------------------------
copyData:
	pusha
	push di
	push si
	
	mov cx, 28
	mov di, 0
	
	loop2:
		mov al, [input + di]
		mov [convertTo28Part1 + di], al
		inc di	
	loop loop2
	
	mov cx, 28
	
	loop3:
		mov al, [input + di]
		mov [convertTo28Part2 + di], al
		inc di	
	loop loop3
	
	pop si
	pop di
	popa
	
	ret
	
;------------------------------------------------
rotateLeft:
	push bp
	mov bp, sp
	pusha
	push di
	push si
	
	r1:
		mov di, 26
		mov si, 27
		mov cx, 27
		
		loop4:
			mov al, [convertTo28Part1 + si]
			mov bl, [convertTo28Part2 + si]
			
			mov [Shift1 + di], al
			mov [Shift2 + di], bl
			
			dec si
			dec di
		loop loop4
		
		mov al, [convertTo28Part1 + 0]
		mov bl, [convertTo28Part2 + 0]
		
		mov [Shift1 + 27], al
		mov [Shift2 + 27], al
	
	mov ax, [bp + 4]
	
	cmp ax, 1
		jz r1
	cmp ax, 2
		jz r1
	cmp ax, 9
		jz r1
	cmp ax, 16
		jz r1
	
	pop si
	pop di
	popa
	pop bp
	
	ret 2
;------------------------------------------------
copyDataAfterRotation:
	pusha
	push di
	push si
	
	mov di, 0
	
	loop5:
		mov al, [Shift1 + di]
		mov bl, [Shift2 + di]
		
		mov [convertTo28Part1 + di], al
		mov [convertTo28Part2 + di], bl
		inc di
	loop loop5
	
	pop si
	pop di
	popa
	
	ret
;------------------------------------------------
copyDataInTheMerge:
	pusha
	push di
	push si
	
	mov cx, 28
	mov di, 0
	
	loop8:
		mov al, [convertTo28Part1 + di]
		mov [merge + di], al
		inc di	
	loop loop8
	
	mov cx, 28
	mov si, 0
	
	loop9:
		mov al, [convertTo28Part2 + si]
		mov [merge + di], al
		inc di
		inc si
	loop loop9
	
	pop si
	pop di
	popa
	
	ret
;------------------------------------------------
copyDataInTheKey:
	push bp
	mov bp, sp
	pusha
	
	push di
	push si
	
	mov di, 0
	mov si, 0
	
	mov bx, [bp + 4]
	mov cx, 48
	
	loop6:
		mov si, [PC_2 + di]
		dec si
		
		mov al, [merge + si]
		mov [bx + di], al
		inc di
	loop loop6
	
	
	pop si
	pop di
	
	popa
	pop bp
	ret 2
;------------------------------------------------
pushKey:
	push bp
	mov bp, sp
	pusha
	
	mov ax, [bp + 4]
	cmp ax, 1
		jz push1
	cmp ax, 2
		jz push2
	cmp ax, 3
		jz push3
	cmp ax, 4
		jz push4
	cmp ax, 5
		jz push5
	cmp ax, 6
		jz push6
	cmp ax, 7
		jz push7
	cmp ax, 8
		jz push8
	cmp ax, 9
		jz push9
	cmp ax, 10
		jz push10
	cmp ax, 11
		jz push11
	cmp ax, 12
		jz push12
	cmp ax, 13
		jz push13
	cmp ax, 14
		jz push14
	cmp ax, 15
		jz push15
	
	push key16
	jmp endl
	
	push1:
		push key1
		jmp endl
	push2:
		push key2
		jmp endl
	push3:
		push key3
		jmp endl
	push4:
		push key4
		jmp endl
	push5:
		push key5
		jmp endl
	push6:
		push key6
		jmp endl
	push7:
		push key7
		jmp endl
	push8:
		push key8
		jmp endl
	push9:
		push key9
		jmp endl
	push10:
		push key10
		jmp endl
	push11:
		push key11
		jmp endl
	push12:
		push key12
		jmp endl
	push13:
		push key13
		jmp endl
	push14:
		push key14
		jmp endl
	push15:
		push key15
		jmp endl
	
endl:
	call copyDataInTheKey
	popa
	ret 2
;------------------------------------------------
transform:
	pusha
	push di
	push si
	
	mov cx, 1
	
	loop7:
		push cx
		
		call rotateLeft
		call copyDataAfterRotation
		call copyDataInTheMerge
		
		
		push cx
		call pushKey
		
		inc cx
		cmp ax, 17
			jnz loop7 
	
	pop si
	pop di
	popa
	ret
;------------------------------------------------
enc:  ;
	push bp
	mov bp, sp

	sub sp, 4
	push ax
	
	push bx
	push cx
	push dx
	push si

	mov dl, [bp + 12]
	mov bx, 1
	mov cx, 0
	mov ax, 0

	loop10:       ; For 1st and 6th bit
		cmp cx, 8
			je store
		add cx, 1
		
		cmp cx, 1
			je match
		cmp cx, 6
			je match

		ror dl, 1

		jmp loop10

	match:
		ror dl, 1
		jc sum
		
		add bx, bx
		jmp loop10


	sum:
		add ax, bx
		add bx, bx
		jmp loop10
	
store:
	mov word[bp-2], ax

	mov ax, 0
	mov bx, 1
	mov cx, 0

loop20:         ; For 2,3,4,5th bit

	cmp cx, 8
		je save2
	
	add cx, 1

	cmp cx, 2
		je match2
	cmp cx, 3
		je match2
	cmp cx, 4
		je match2
	cmp cx, 5
		je match2
	ror dl, 1

	jmp loop20

match2:

	ror dl, 1
	jc sum2

	add bx, bx
	jmp loop20

sum2:
	add ax, bx
	add bx, bx

	jmp loop20

save2:
	mov word[bp-4], ax

	mov ax, [bp-2]

	cmp ax, 0
		je copy1
	cmp ax, 1
		je copy2
	cmp ax, 2
		je copy3
	cmp ax, 3
		je copy4

copy1:
	mov bx, [bp+10]
	jmp next

copy2:
	mov bx, [bp+8]
	jmp next

copy3:
	mov bx, [bp+6]
	jmp next

copy4:
	mov bx, [bp+4]
	jmp next

next:
	mov ax, [bp-4]
	mov cx, 0
	mov si, 0
loop30:
	cmp cx, ax
		je save3
	add cx, 1
	add si, 2
	jmp loop30

save3:
	mov ax, [bx+si]
	shl al, 4
	
	mov cx, 0
	mov bx, [pointer]

loop40:
	cmp cx, 4
		je entity

	shl al, 1
	adc byte[encrypted_data + bx], 0

	add bx,1
	add cx, 1

	jmp loop40

entity:

	mov word[pointer], bx
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	mov sp, bp
	pop bp
	
	ret 10

;--------------------------------------------------------------------------------------------------

plaintextDivider:
	push bp
	mov bp, sp
	pusha
	push di
	push si
	
	mov ax, 0
	mov cx, 64
	mov dx, 0
	
	mov bx, 0
	mov si, 0
	mov di, 0
	
	
	loop11:
		mov si, [IP + bx]
		dec si
		
		mov dx, [plaintext + si]
		
		mov [changePT + bx], dx
		inc bx
	loop loop11
	
	
	mov cx, 32
	mov bx, 0
	
	loop12:
		mov si, [changePT + bx]
		mov [LeftPlainText + bx], si
		
		inc bx
	loop loop12
	
	mov cx, 32
	
	loop13:
		mov si, [changePT + bx]
		mov [RightPlainText + bx], si
		
		inc bx
	loop loop13
	
	
	pop si
	pop di
	popa
	pop bp
	ret

;--------------------------------------------------------------------------------------------------
ExchangeData:
	push bp
	mov bp, sp
	pusha
	push di
	push si
	
	mov cx, 32
	
	mov si, 0
	mov di, 0
	
	loop14:
	
		mov ax, [LeftPlainText + si]
		
		mov [tempLabel + si], ax
		
		inc si
	loop loop14
	
	mov si, 0
	mov cx, 32
	
	loop15:
	
		mov ax, [RightPlainText + si]
		
		mov [LeftPlainText + si], ax
		
		inc si
	
	loop loop15
	
	mov si, 0
	mov cx, 32
	
	loop19:
	
		mov ax, [tempLabel + si]
		
		mov [RightPlainText + si], ax
		
		inc si
	
	loop loop19
	
	
	pop si
	pop di
	popa
	pop bp
	ret
;--------------------------------------------------------------------------------------------------

FinalDataText:
	push bp
	mov bp, sp
	
	pusha
	push di
	push si
	
	
	mov cx, 32
	mov si, 0
	mov di, 0
	
	loop16:
		mov ax, [RightPlainText + si]
		mov [changePT + di], ax
		
		inc si
		inc di
	loop loop16
	
	mov cx, 32
	mov si, 0
	
	loop17:
		mov ax, [LeftPlainText + si]
		mov [changePT + di], ax
		
		inc si
		inc di
	loop loop17
	
	mov cx, 64
	mov si, 0
	mov di, 0
	
	loop18:
		mov ax, [changePT + si]
		mov [plaintext + si], ax
		inc si
	loop loop18
	
	
	pop si
	pop di
	popa
	pop bp
	
	ret


assignment6:
	push bp
	mov bp, sp
	pusha
	push di
	push si
	
	mov bx, 0
	mov ax, [data]
convert:
	cmp bx, 16
		je n1

	shl ax, 1
	adc byte[num+bx], 0
	add bx, 1
	jmp convert

n1: 
	mov ax, [data+2]

convert2:
	cmp bx, 32
		je nextc2

	shl ax, 1
	adc byte[num+bx], 0
	add bx, 1
	jmp convert2

nextc2:
	mov si, 0
	mov cx, 0
l1:
	cmp si, 48
		je answer1

	mov bl, [arrayData+si]
	sub bl, 1
	mov ax, [num+bx]
	mov byte[num2+si],al
	add si, 1
	jmp l1

answer1:
	mov bx, 0

answer2:
	cmp bx, 48
		je n
	
	mov al, [num2+bx]
	mov dl, [answer+bx]
	
	xor ax, dx
	
	mov byte[num2+bx],al
	add bx, 1
	
	jmp answer2

n:
	mov bx, 0
	mov di, 1
n2: 
	mov si, 0
	mov cl, 32
	mov ax, 0

	jmp l2

l2:
	cmp bx, 48
		je n4
	cmp si, 6
		je n3

	mov dx, [num2+bx]
	cmp dl, 1
		je add1
	
	shr cl, 1
	add bx, 1
	add si, 1
	jmp l2

add1:
	add al, cl
	shr cl, 1
	add bx, 1
	add si, 1
	
	jmp l2

n3:
	cmp di, 1
		je Sbox1
	cmp di, 2
		je Sbox2
	cmp di, 3
		je Sbox3
	cmp di, 4
		je Sbox4

	jmp next_part
n4:
	jmp Sbox8



Sbox1:
	push ax
	mov ax, S1_1
	
	push ax
	mov ax, S1_2
	
	push ax

	mov ax, S1_3
	push ax

	mov ax, S1_4
	push ax

	call enc
	
	add di, 1
	jmp n2

Sbox2:
	push ax
	mov ax, S2_1

	push ax
	mov ax, S2_2

	push ax
	mov ax, S2_3

	push ax
	mov ax, S2_4

	push ax
	call enc

	add di, 1
	jmp n2

Sbox3:
	push ax
	mov ax, S3_1
	
	push ax
	mov ax, S3_2

	push ax
	mov ax, S3_3
	
	push ax
	mov ax, S3_4

	push ax
	call enc

	add di, 1
	jmp n2

Sbox4:
	push ax
	mov ax, S4_1

	push ax
	mov ax, S4_2

	push ax
	mov ax, S4_3

	push ax
	mov ax, S4_4

	push ax
	call enc

	add di, 1
	jmp n2


next_part:
	cmp di, 5
		je  Sbox5
	cmp di, 6
		je  Sbox6
	cmp di, 7
		je  Sbox7
	cmp di, 8
		je  Sbox8

Sbox5:
	push ax
	mov ax, S5_1

	push ax
	mov ax, S5_2
	
	push ax
	mov ax, S5_3

	push ax
	mov ax, S5_4

	push ax
	call enc

	add di, 1
	jmp n2

Sbox6:
	push ax
	mov ax, S6_1

	push ax
	mov ax, S6_2

	push ax
	mov ax, S6_3

	push ax
	mov ax, S6_4

	push ax
	call enc

	add di, 1
	jmp n2

Sbox7:
	push ax
	mov ax, S7_1

	push ax
	mov ax, S7_2

	push ax
	mov ax, S7_3

	push ax
	mov ax, S7_4

	push ax
	call enc

	add di, 1
	jmp n2

Sbox8:
	push ax
	mov ax, S8_1

	push ax
	mov ax, S8_2

	push ax
	mov ax, S8_3

	push ax
	mov ax, S8_4

	push ax
	call enc

	add di, 1
	jmp permutation

permutation:
	mov si, 0
	mov bx, 0

loop50:
	mov ax, 0
	cmp si, 32
		je jmp5

	mov bl, [permutation_arr+si]
	sub bl, 1

	mov ax, [encrypted_data+bx]
	mov byte[shuffeled_arr+si],al

	add si,1
	jmp loop50



jmp5:
	mov ax, [output]
	mov cx, 1000000000000000b
	mov bx, 0

loop60:
	cmp bx, 16
		je next2

	mov dl,[shuffeled_arr+bx]
	
	cmp dl, 1
		je add2
	
	ror cx,1
	add bx, 1

	jmp loop60

add2:
	or ax, cx
	ror cx, 1

	add bx, 1
	jmp loop60

next2:
	mov word[output], ax
	mov ax, [output+2]

	mov cx, 1000000000000000b

loop70:
	cmp bx, 32
		je e
	mov dl,[shuffeled_arr+bx]

	cmp dl, 1
		je add3

	ror cx,1
	add bx, 1

	jmp loop70

add3:
	or ax, cx
	ror cx, 1

	add bx, 1
	jmp loop70

e:
	mov word[output+2], ax
	
	pop si
	pop di
	popa
	pop bp
	ret

;--------------------------------------------------------------------------------------------------
start:
	call plaintextDivider
	call assignment6
	
	call inputConvert ; This Sub-Routine Converts the 64-bit input into 56 bit input
	call copyData ; This Sub-Routine Divides The 56-bit input into two 28-bit input 
	call transform

mov ax, 0x4c00
int 21h
;---------------------------------------------------------------------------------------------------
