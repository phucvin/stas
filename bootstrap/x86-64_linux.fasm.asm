use64
format ELF64 executable
segment readable executable
entry _start
_start:
	mov [_arg_p], rsp
	mov qword [_rs_p], _rs_top
	mov rbp, rsp
	mov rsp, [_rs_p]
	call main
	xor rdi, rdi
_exit:
	mov eax, 60
	syscall
	nop
itoa:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, rbx
	mov r8, 0
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push r9
	pop rbx
	test rbx, rbx
	jz .11
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 48
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.11:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 21
	add rdi, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 8], rdi
.13:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .14
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	mov rbx, 10
	pop rax
	xor rdx, rdx
	div rbx
	mov rbx, 48
	add rdx, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov byte [rdi], dl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rdi
	push rax
	jmp .13
.14:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
fputu:
	sub rsp, 44
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, rbx
	mov r8, 0
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push rbx
	push r9
	pop rbx
	test rbx, rbx
	jz .15
	add rsp, 8
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rsi, 48
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 8
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 44
	ret
.15:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 36], rbx
	mov rsi, qword [_rs_p]
	add rsi, 8
	mov rdi, 20
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 28], rsi
.17:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .18
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 28]
	dec rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 28], rsi
	mov rbx, 10
	pop rax
	xor rdx, rdx
	div rbx
	mov rbx, 48
	add rdx, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 28]
	mov byte [rdi], dl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 36]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 36], rdi
	push rax
	jmp .17
.18:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 28]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 36]
	mov rbx, 1
	mov rax, rbx
	mov rdx, r8
	mov rbx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 44
	ret
eputc:
	sub rsp, 1
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, qword [_rs_p]
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 1
	ret
fd_stat_size:
	sub rsp, 144
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, 5
	mov rax, rsi
	mov rsi, rbx
	pop rdi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .22
	mov rbx, _slit_37
	mov rsi, 42
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.22:
	mov rbx, qword [_rs_p]
	mov rsi, 48
	add rbx, rsi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 144
	ret
fd_open_fp_readonly:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov r9, qword [rbx + 0]
	mov rbx, 0
	mov r9, 0
	mov r10, 2
	mov rax, r10
	mov rdx, r9
	mov r9, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, r8
	syscall
	mov rsi, rax
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setl r8b
	push rax
	push r8
	pop rbx
	test rbx, rbx
	jz .24
	mov rbx, _slit_35
	mov rsi, 28
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_36
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.24:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
fd_new_file_for_writing:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov r9, qword [rbx + 0]
	mov rbx, 1
	mov r9, 64
	or rbx, r9
	mov r9, 512
	or rbx, r9
	mov r9, 448
	mov r10, 2
	mov rax, r10
	mov rdx, r9
	mov r9, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, r8
	syscall
	mov rsi, rax
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setl r8b
	push rax
	push r8
	pop rbx
	test rbx, rbx
	jz .26
	mov rbx, _slit_33
	mov rsi, 28
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_34
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.26:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
open_and_mmap_fp:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov r9, qword [rbx + 0]
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd_open_fp_readonly
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd_stat_size
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 0
	xor r8, r8
	cmp rdi, rbx
	seta r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .28
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 24]
	mov rsi, 1
	mov r8, 2
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 16]
	mov r9, 0
	mov r11, 9
	mov rax, r11
	mov r11, r9
	mov r9, r11
	mov r11, r8
	mov r8, r10
	mov r10, r11
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, rax
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setl dil
	push rax
	push rdi
	pop rbx
	test rbx, rbx
	jz .30
	mov rbx, _slit_38
	mov rsi, 28
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_39
	mov rsi, 2
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.30:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	jmp .32
.28:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.32:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 3
	mov rax, rbx
	mov rdi, rsi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .33
	mov rbx, _slit_40
	mov rsi, 39
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.33:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
child_execve_and_shut_up:
	sub rsp, 40
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	pop rdi
	mov qword [rsi + 8], rdi
	mov rsi, 57
	mov rax, rsi
	syscall
	mov rsi, rax
	mov r8, 0
	xor r9, r9
	cmp rsi, r8
	sete r9b
	push rax
	push r9
	pop rbx
	test rbx, rbx
	jz .35
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, 18446744073709551516
	mov rsi, _slit_548
	mov rdi, 9
	mov rdi, 0
	mov r8, 0
	mov r9, 257
	mov rax, r9
	mov r10, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, rax
	mov rsi, 0
	xor rdi, rdi
	cmp rbx, rsi
	setl dil
	push rax
	push rdi
	pop rbx
	test rbx, rbx
	jz .37
	mov rbx, _slit_549
	mov rsi, 32
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.37:
	mov rbx, 1
	mov rsi, 33
	mov rax, rsi
	mov rsi, rbx
	pop rdi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .39
	mov rbx, _slit_550
	mov rsi, 42
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.39:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 16
	mov r8, 59
	mov rax, r8
	mov rdx, rbx
	mov rbx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .41
	mov rbx, _slit_551
	mov rsi, 29
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.41:
	mov rbx, 0
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .36
.35:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setg r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .44
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
.45:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	pop rbx
	test rbx, rbx
	jz .46
	mov rbx, 18446744073709551615
	mov rsi, qword [_rs_p]
	add rsi, 32
	mov rdi, 0
	mov r8, 0
	mov r9, 61
	mov rax, r9
	mov r10, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .47
	mov rbx, _slit_552
	mov rsi, 33
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.47:
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov rbx, [rbx]
	mov rsi, rbx
	mov rdi, 127
	and rsi, rdi
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .49
	pop rbx
	mov rsi, rbx
	mov rdi, 65280
	and rsi, rdi
	mov rdi, 8
	mov rcx, rdi
	shr rsi, cl
	mov rdi, rsi
	mov r8, 0
	xor r9, r9
	cmp rdi, r8
	setg r9b
	push rbx
	push rsi
	push r9
	pop rbx
	test rbx, rbx
	jz .51
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	mov rax, rdi
	mov rdi, rsi
	syscall
	push rbx
.51:
	add rsp, 8
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	jmp .50
.49:
	pop rbx
	mov rsi, rbx
	mov rdi, 127
	and rsi, rdi
	mov rdi, 1
	add rsi, rdi
	mov rdi, 1
	mov rcx, rdi
	shr rsi, cl
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	setg r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .54
	mov rbx, _slit_553
	mov rsi, 46
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, 127
	and rsi, rdi
	mov rdi, 2
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 255
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 24], rbx
	jmp .50
.54:
	pop rbx
	mov rsi, rbx
	mov rdi, 255
	and rsi, rdi
	mov rdi, 127
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .56
	jmp .50
.56:
	pop rbx
	mov rsi, rbx
	mov rdi, 65535
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .58
	jmp .50
.58:
	mov rbx, 0
	test rbx, rbx
	jnz .1503
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_554
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.1503:
.59:
.50:
	add rsp, 8
	jmp .45
.46:
	jmp .36
.44:
	mov rbx, _slit_555
	mov rsi, 27
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.60:
.36:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 40
	ret
memeq:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.61:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .62
	pop rbx
	pop rsi
	pop rdi
	mov r8, rsi
	xor r9, r9
	mov r9b, [r8]
	mov r8, rdi
	xor r10, r10
	mov r10b, [r8]
	inc rdi
	inc rsi
	xor r8, r8
	cmp r9, r10
	setne r8b
	push rbx
	push rsi
	push rdi
	push r8
	pop rbx
	test rbx, rbx
	jz .63
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.63:
	pop rbx
	pop rsi
	pop rdi
	inc rdi
	push rbx
	push rsi
	push rdi
	jmp .61
.62:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
streq:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 16]
	mov rsi, qword [rsp + 0]
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .65
	add rsp, 8
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbx, 0
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.65:
	add rsp, 8
	pop rbx
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memeq
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
memcpy:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rdi
	push rbx
.67:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .68
	pop rbx
	pop rsi
	pop rdi
	mov r8, rdi
	xor r9, r9
	mov r9b, [r8]
	mov r8, rsi
	mov byte [r8], r9b
	inc rdi
	inc rsi
	dec rbx
	push rdi
	push rsi
	push rbx
	jmp .67
.68:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
memset:
	mov [_rs_p], rsp
	mov rsp, rbp
.69:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	seta r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .70
	pop rbx
	pop rsi
	pop rdi
	mov r8, rdi
	mov r9, rsi
	mov byte [r8], r9b
	inc rdi
	dec rbx
	push rdi
	push rsi
	push rbx
	jmp .69
.70:
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
strlen:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
.71:
	pop rbx
	mov rsi, rbx
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, 0
	xor r8, r8
	cmp rdi, rsi
	setne r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .72
	pop rbx
	inc rbx
	push rbx
	jmp .71
.72:
	pop rbx
	pop rsi
	sub rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
args_a_b:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .76
	add rsp, 8
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.76:
	mov rbx, 8
	pop rsi
	imul rsi, rbx
	mov rbx, qword [_arg_p]
	add rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call strlen
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
str_to_num_unsafe:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, 0
	mov r8, 0
	push rbx
	push r8
.78:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .79
	pop rbx
	pop rsi
	mov rdi, 10
	imul rsi, rdi
	mov rdi, rbx
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	add rdi, r9
	xor r8, r8
	mov r8b, [rdi]
	mov rdi, 48
	sub r8, rdi
	add rsi, r8
	inc rbx
	push rsi
	push rbx
	jmp .78
.79:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
new_string_view:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword _global_string_buffer.len
	mov r8, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 0]
	mov rbx, 8
	mov r10, 1
	add rbx, r10
	add r9, rbx
	add r8, r9
	mov rbx, r8
	mov r9, 268435456
	xor r10, r10
	cmp rbx, r9
	setb r10b
	test r10, r10
	jnz .1504
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_31
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1504:
	mov rbx, qword _global_string_buffer
	mov r9, qword _global_string_buffer.len
	mov r10, qword [r9 + 0]
	add rbx, r10
	mov r9, rbx
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 0]
	mov qword [r9], r11
	mov r9, rbx
	mov r10, 8
	add r9, r10
	mov r10, qword [_rs_p]
	mov r11, qword [r10 + 8]
	mov r10, qword [_rs_p]
	mov r12, qword [r10 + 0]
	push r8
	push rbx
	push r9
	push r11
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	mov r8, 1
	add rdi, r8
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov rdi, 0
	mov byte [rsi], dil
	pop rsi
	mov rdi, qword _global_string_buffer.len
	mov qword [rdi + 0], rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
new_empty_string:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_string_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 8
	mov rdi, 1
	add rbx, rdi
	add rsi, rbx
	mov rbx, 268435456
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1505
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_31
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1505:
	mov rbx, qword _global_string_buffer
	mov rsi, qword _global_string_buffer.len
	mov rdi, qword [rsi + 0]
	add rbx, rdi
	mov rsi, rbx
	mov rdi, 0
	mov qword [rsi], rdi
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rdi, 0
	mov byte [rsi], dil
	mov rsi, qword _global_string_buffer.len
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	mov r8, 1
	add rsi, r8
	add rdi, rsi
	mov rsi, qword _global_string_buffer.len
	mov qword [rsi + 0], rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
push_char:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_string_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 268435456
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1506
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_31
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1506:
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, 8
	add r8, rdi
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 0]
	mov r9, [r9]
	add r8, r9
	mov byte [r8], bl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov rbx, [rbx]
	inc rbx
	mov qword [rdi], rbx
	mov rbx, qword _global_string_buffer.len
	mov rdi, qword [rbx + 0]
	inc rdi
	mov rbx, qword _global_string_buffer.len
	mov qword [rbx + 0], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
push_nul:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_string_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 268435456
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1507
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_31
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1507:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword _global_string_buffer.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_string_buffer.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
push_string_view:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .80
	add rsp, 8
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
.80:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_string_buffer.len
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov rdi, 268435456
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1508
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_31
	mov rdx, 97
	syscall
	mov rdi, 1
	jmp _exit
.1508:
	mov rsi, rbx
	mov rdi, qword _global_string_buffer.len
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov rdi, qword _global_string_buffer.len
	mov qword [rdi + 0], rsi
	mov r8, qword [_rs_p]
	mov qword [r8 + 0], rbx
	mov r8, qword [_rs_p]
	pop r9
	mov qword [r8 + 8], r9
	mov r8, qword [_rs_p]
	pop r10
	mov qword [r8 + 16], r10
	mov r8, qword [_rs_p]
	mov r11, qword [r8 + 16]
	mov r8, 8
	add r11, r8
	mov r8, qword [_rs_p]
	mov r12, qword [r8 + 16]
	mov r12, [r12]
	add r11, r12
	mov r8, r11
	mov r12, qword [_rs_p]
	mov r13, qword [r12 + 8]
	mov r12, qword [_rs_p]
	mov r14, qword [r12 + 0]
	push r11
	push r8
	push r13
	push r14
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	pop rbx
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rdi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 0]
	add rdi, r8
	mov qword [rsi], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
Tok.from_str:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov r9, qword [rbx + 0]
	mov rbx, _slit_51
	mov r10, 1
	push r8
	push r9
	push rbx
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .221
	mov rbx, 4
	push rbx
	jmp .222
.221:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_52
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .224
	mov rbx, 5
	push rbx
	jmp .222
.224:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_53
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .226
	mov rbx, 6
	push rbx
	jmp .222
.226:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_54
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .228
	mov rbx, 7
	push rbx
	jmp .222
.228:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_55
	mov r8, 11
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .230
	mov rbx, 8
	push rbx
	jmp .222
.230:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_56
	mov r8, 5
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .232
	mov rbx, 9
	push rbx
	jmp .222
.232:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_57
	mov r8, 6
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .234
	mov rbx, 10
	push rbx
	jmp .222
.234:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_58
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .236
	mov rbx, 11
	push rbx
	jmp .222
.236:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_59
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .238
	mov rbx, 12
	push rbx
	jmp .222
.238:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_60
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .240
	mov rbx, 13
	push rbx
	jmp .222
.240:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_61
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .242
	mov rbx, 15
	push rbx
	jmp .222
.242:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_62
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .244
	mov rbx, 16
	push rbx
	jmp .222
.244:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_63
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .246
	mov rbx, 17
	push rbx
	jmp .222
.246:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_64
	mov r8, 5
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .248
	mov rbx, 18
	push rbx
	jmp .222
.248:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_65
	mov r8, 5
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .250
	mov rbx, 19
	push rbx
	jmp .222
.250:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_66
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .252
	mov rbx, 20
	push rbx
	jmp .222
.252:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_67
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .254
	mov rbx, 21
	push rbx
	jmp .222
.254:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_68
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .256
	mov rbx, 22
	push rbx
	jmp .222
.256:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_69
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .258
	mov rbx, 23
	push rbx
	jmp .222
.258:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_70
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .260
	mov rbx, 24
	push rbx
	jmp .222
.260:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_71
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .262
	mov rbx, 25
	push rbx
	jmp .222
.262:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_72
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .264
	mov rbx, 26
	push rbx
	jmp .222
.264:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_73
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .266
	mov rbx, 27
	push rbx
	jmp .222
.266:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_74
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .268
	mov rbx, 28
	push rbx
	jmp .222
.268:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_75
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .270
	mov rbx, 29
	push rbx
	jmp .222
.270:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_76
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .272
	mov rbx, 30
	push rbx
	jmp .222
.272:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_77
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .274
	mov rbx, 31
	push rbx
	jmp .222
.274:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_78
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .276
	mov rbx, 32
	push rbx
	jmp .222
.276:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_79
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .278
	mov rbx, 33
	push rbx
	jmp .222
.278:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_80
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .280
	mov rbx, 70
	push rbx
	jmp .222
.280:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_81
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .282
	mov rbx, 34
	push rbx
	jmp .222
.282:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_82
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .284
	mov rbx, 35
	push rbx
	jmp .222
.284:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_83
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .286
	mov rbx, 36
	push rbx
	jmp .222
.286:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_84
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .288
	mov rbx, 37
	push rbx
	jmp .222
.288:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_85
	mov r8, 5
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .290
	mov rbx, 38
	push rbx
	jmp .222
.290:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_86
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .292
	mov rbx, 39
	push rbx
	jmp .222
.292:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_87
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .294
	mov rbx, 40
	push rbx
	jmp .222
.294:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_88
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .296
	mov rbx, 41
	push rbx
	jmp .222
.296:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_89
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .298
	mov rbx, 42
	push rbx
	jmp .222
.298:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_90
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .300
	mov rbx, 43
	push rbx
	jmp .222
.300:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_91
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .302
	mov rbx, 44
	push rbx
	jmp .222
.302:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_92
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .304
	mov rbx, 45
	push rbx
	jmp .222
.304:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_93
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .306
	mov rbx, 46
	push rbx
	jmp .222
.306:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_94
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .308
	mov rbx, 47
	push rbx
	jmp .222
.308:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_95
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .310
	mov rbx, 48
	push rbx
	jmp .222
.310:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_96
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .312
	mov rbx, 49
	push rbx
	jmp .222
.312:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_97
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .314
	mov rbx, 50
	push rbx
	jmp .222
.314:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_98
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .316
	mov rbx, 51
	push rbx
	jmp .222
.316:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_99
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .318
	mov rbx, 52
	push rbx
	jmp .222
.318:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_100
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .320
	mov rbx, 53
	push rbx
	jmp .222
.320:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_101
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .322
	mov rbx, 54
	push rbx
	jmp .222
.322:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_102
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .324
	mov rbx, 55
	push rbx
	jmp .222
.324:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_103
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .326
	mov rbx, 56
	push rbx
	jmp .222
.326:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_104
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .328
	mov rbx, 57
	push rbx
	jmp .222
.328:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_105
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .330
	mov rbx, 58
	push rbx
	jmp .222
.330:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_106
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .332
	mov rbx, 59
	push rbx
	jmp .222
.332:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_107
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .334
	mov rbx, 60
	push rbx
	jmp .222
.334:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_108
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .336
	mov rbx, 61
	push rbx
	jmp .222
.336:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_109
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .338
	mov rbx, 62
	push rbx
	jmp .222
.338:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_110
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .340
	mov rbx, 63
	push rbx
	jmp .222
.340:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_111
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .342
	mov rbx, 64
	push rbx
	jmp .222
.342:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_112
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .344
	mov rbx, 65
	push rbx
	jmp .222
.344:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_113
	mov r8, 8
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .346
	mov rbx, 66
	push rbx
	jmp .222
.346:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_114
	mov r8, 7
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .348
	mov rbx, 67
	push rbx
	jmp .222
.348:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_115
	mov r8, 4
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .350
	mov rbx, 68
	push rbx
	jmp .222
.350:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, _slit_116
	mov r8, 3
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .352
	mov rbx, 69
	push rbx
	jmp .222
.352:
	mov rbx, 1
	push rbx
.353:
.222:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
token_stream_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_token_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 20
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _global_token_stream.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_token_stream.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, 32768
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1509
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_48
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1509:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Token.location_print:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, 1
	mov r9, 1
	mov rax, r9
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, r8
	syscall
	mov rsi, _slit_120
	mov rdi, 1
	mov r8, 1
	mov r9, 1
	mov rax, r9
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, r8
	syscall
	mov rsi, rbx
	mov esi, [rsi]
	mov rdi, 1
	add rsi, rdi
	mov rdi, 1
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_121
	mov rsi, 1
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 4
	pop rsi
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	add rsi, rbx
	mov rbx, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_122
	mov rsi, 2
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
error.Loc:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rbx
	mov rbx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_42
	mov rsi, 1
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	pop rsi
	mov rdi, 1
	add rsi, rdi
	mov rdi, 1
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_43
	mov rsi, 1
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	pop rsi
	add rsi, rbx
	mov rbx, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fputu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_44
	mov rsi, 2
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
error.Tok.to_string_view:
	sub rsp, 29
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_empty_string
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 21], rsi
	pop rbx
	pop rdi
	pop r8
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 21]
	mov r9, 27
	push rdi
	push rbx
	push r8
	push r10
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _slit_173
	mov rdi, 3
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, 27
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _slit_174
	mov rdi, 4
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1510
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1510:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 21]
	push rbx
	push r9
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _slit_175
	mov rdi, 1
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov esi, [rsi]
	mov rdi, 1
	add rsi, rdi
	mov rdi, qword [_rs_p]
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call itoa
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	pop rbx
	pop rdi
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _slit_176
	mov rdi, 1
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4
	pop rsi
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword [_rs_p]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call itoa
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	pop rbx
	pop rdi
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _slit_177
	mov rdi, 2
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, 27
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _slit_178
	mov rdi, 4
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, 27
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	mov rbx, _slit_179
	mov rdi, 4
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	pop rbx
	pop rdi
	push rsi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 21]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 29
	ret
is_whitespace:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .354
	mov rbx, 1
	push rbx
	jmp .355
.354:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .357
	mov rbx, 1
	push rbx
	jmp .355
.357:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .359
	mov rbx, 1
	push rbx
	jmp .355
.359:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .361
	mov rbx, 1
	push rbx
	jmp .355
.361:
	mov rbx, 0
	push rbx
.362:
.355:
	pop rbx
	pop rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
stas.scan_file:
	sub rsp, 140
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 8]
	mov r9, qword [rbx + 0]
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov r8, qword [rbx + 0]
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call open_and_mmap_fp
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 24], rdi
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov r8, 0
	mov byte [rbx], r8b
	mov rbx, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 41], rbx
	mov r8, 0
	mov r9, qword [_rs_p]
	mov qword [r9 + 49], r8
	mov r9, 0
	mov r10, qword [_rs_p]
	mov qword [r10 + 57], r9
	mov r10, qword [_rs_p]
	add r10, 65
	mov r11, 0
	mov byte [r10], r11b
.363:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .364
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .365
	jmp .364
.365:
.367:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_whitespace
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .368
	mov rbx, 10
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .369
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rsi
	mov rbx, 0
	mov rdi, qword [_rs_p]
	mov qword [rdi + 57], rbx
	jmp .371
.369:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
.371:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 32]
	xor rbx, rbx
	cmp rdi, r8
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .372
	jmp .368
.372:
	jmp .367
.368:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 32]
	xor rbx, rbx
	cmp rsi, rdi
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .374
	jmp .364
.374:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 67], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 75], rdi
.376:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_whitespace
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .377
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .378
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	setae r8b
	mov rsi, 57
	xor rdi, rdi
	cmp rbx, rsi
	setbe dil
	and r8, rdi
	mov rbx, 1
	xor rsi, rsi
	cmp r8, rbx
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .380
	mov rbx, qword [_rs_p]
	add rbx, 66
	mov rsi, 0
	mov byte [rbx], sil
.380:
.378:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	mov rsi, 34
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	or r8, rdi
	push r8
	pop rbx
	test rbx, rbx
	jz .382
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 83], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 49]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 91], rdi
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 57]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 99], r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_empty_string
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 107], rsi
	mov rbx, qword [_rs_p]
	add rbx, 115
	mov rdi, 0
	mov byte [rbx], dil
.384:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .385
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 32]
	xor rbx, rbx
	cmp r8, r9
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .386
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 91]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 99]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _slit_41
	mov r9, 27
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc
	mov [_rs_p], rsp
	mov rsp, rbp
.386:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, qword [_rs_p]
	mov qword [rsi + 116], rbx
	mov rsi, qword [_rs_p]
	add rsi, 115
	xor rdi, rdi
	mov dil, [rsi]
	push rdi
	pop rbx
	test rbx, rbx
	jz .388
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .390
	mov rbx, 39
	push rbx
	jmp .391
.390:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .393
	mov rbx, 34
	push rbx
	jmp .391
.393:
	pop rbx
	mov rsi, rbx
	mov rdi, 92
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .395
	mov rbx, 92
	push rbx
	jmp .391
.395:
	pop rbx
	mov rsi, rbx
	mov rdi, 97
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .397
	mov rbx, 7
	push rbx
	jmp .391
.397:
	pop rbx
	mov rsi, rbx
	mov rdi, 98
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .399
	mov rbx, 8
	push rbx
	jmp .391
.399:
	pop rbx
	mov rsi, rbx
	mov rdi, 102
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .401
	mov rbx, 12
	push rbx
	jmp .391
.401:
	pop rbx
	mov rsi, rbx
	mov rdi, 110
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .403
	mov rbx, 10
	push rbx
	jmp .391
.403:
	pop rbx
	mov rsi, rbx
	mov rdi, 114
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .405
	mov rbx, 13
	push rbx
	jmp .391
.405:
	pop rbx
	mov rsi, rbx
	mov rdi, 116
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .407
	mov rbx, 9
	push rbx
	jmp .391
.407:
	pop rbx
	mov rsi, rbx
	mov rdi, 118
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .409
	mov rbx, 11
	push rbx
	jmp .391
.409:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _slit_46
	mov r9, 31
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.410:
.391:
	pop rbx
	pop rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 107]
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 115
	mov rsi, 0
	mov byte [rbx], sil
	jmp .384
.388:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 116]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 83]
	xor rbx, rbx
	cmp rsi, rdi
	sete bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .411
	jmp .385
.411:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 116]
	mov rbx, 92
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .413
	mov rbx, qword [_rs_p]
	add rbx, 115
	mov rsi, 1
	mov byte [rbx], sil
	jmp .384
	jmp .414
.413:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 116]
	mov rbx, 10
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .416
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 57], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 49]
	inc rdi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 49], rdi
.416:
.414:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 107]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 116]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_char
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .384
.385:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 107]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 115
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .417
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _slit_47
	mov r9, 26
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc
	mov [_rs_p], rsp
	mov rsp, rbp
.417:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .419
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 107]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.scan_file
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 0
	mov byte [rbx], sil
	jmp .421
.419:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 91]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 99]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, 2
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 107]
	push rsi
	push rdi
	push r8
	push rbx
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.421:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rdi
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov r8, 1
	mov byte [rbx], r8b
	jmp .377
	jmp .383
.382:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 59
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .423
.424:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	add rsi, rdi
	xor rbx, rbx
	mov bl, [rsi]
	mov rsi, 10
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .425
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 32]
	xor rbx, rbx
	cmp rdi, r8
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .426
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 140
	ret
.426:
	jmp .424
.425:
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 1
	mov byte [rbx], sil
	jmp .377
.423:
.383:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 57], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	inc rdi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 41], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 32]
	xor rbx, rbx
	cmp r8, r9
	setae bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .428
	jmp .377
.428:
	jmp .376
.377:
	mov rbx, qword [_rs_p]
	add rbx, 40
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .430
	mov rbx, qword [_rs_p]
	add rbx, 40
	mov rsi, 0
	mov byte [rbx], sil
	jmp .363
.430:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 67]
	add rsi, rdi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 41]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 67]
	sub rdi, r8
	mov rbx, qword [_rs_p]
	mov qword [rbx + 124], rdi
	mov qword [rbx + 132], rsi
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor r8, r8
	mov r8b, [rbx]
	push r8
	pop rbx
	test rbx, rbx
	jz .432
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 75]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _slit_49
	mov r9, 31
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc
	mov [_rs_p], rsp
	mov rsp, rbp
.432:
	mov rbx, qword [_rs_p]
	add rbx, 66
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .434
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 75]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, 3
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 132]
	mov r11, qword [r9 + 124]
	push rsi
	push rdi
	push r8
	push rbx
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call str_to_num_unsafe
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .436
.434:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 132]
	mov rdi, qword [rbx + 124]
	mov rbx, _slit_50
	mov r8, 7
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .437
	mov rbx, qword [_rs_p]
	add rbx, 65
	mov rsi, 1
	mov byte [rbx], sil
	jmp .363
.437:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 75]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 132]
	mov r10, qword [rbx + 124]
	push rsi
	push rdi
	push r8
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Tok.from_str
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .439
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 132]
	mov rdi, qword [rbx + 124]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .441
.439:
	mov rbx, 0
	push rbx
.441:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call token_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.436:
	jmp .363
.364:
	mov rbx, qword [_rs_p]
	add rbx, 65
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .442
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 49]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 57]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 16]
	mov rbx, _slit_117
	mov r9, 43
	push rsi
	push rdi
	push r8
	push rbx
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Loc
	mov [_rs_p], rsp
	mov rsp, rbp
.442:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 140
	ret
ir_stream_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_ir_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _global_ir_stream.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_ir_stream.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	mov rdi, 16384
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1511
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_144
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1511:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
var_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_var_context
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_var_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_var_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1512
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_186
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1512:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
scope_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_scope_context
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 24
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 20
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_scope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_scope_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1513
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_201
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1513:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
functions_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_functions.len
	mov rsi, qword [rbx + 0]
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 29
	add rdi, r8
	mov byte [rdi], bl
	pop rbx
	mov rdi, rsi
	mov r8, 28
	add rdi, r8
	mov byte [rdi], bl
	pop rbx
	mov rdi, rsi
	mov r8, 24
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 20
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _global_functions.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_functions.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1514
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_143
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1514:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
toplevel_constants_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_toplevel_constants
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov qword [rsi], rbx
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_toplevel_constants.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 1024
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1515
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_130
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1515:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
global_var_context_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	pop rbx
	mov rdi, rsi
	mov r8, 16
	add rdi, r8
	mov qword [rdi], rbx
	pop rbx
	mov rdi, rsi
	mov r8, 12
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov rdi, rsi
	mov r8, 4
	add rdi, r8
	mov dword [rdi], ebx
	pop rbx
	mov dword [rsi], ebx
	mov rbx, qword _global_global_var_context.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_global_var_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 512
	xor r9, r9
	cmp r8, rdi
	setb r9b
	test r9, r9
	jnz .1516
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_153
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1516:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1024
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1517
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_157
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1517:
	mov rbx, qword _global_const_stack
	mov rsi, qword _global_const_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	pop rsi
	mov qword [rbx], rsi
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack.top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1518
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_159
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1518:
	mov rbx, qword _global_const_stack
	mov rsi, qword _global_const_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
const_stack.top_e:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1519
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_158
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1519:
	mov rbx, qword _global_const_stack
	mov rsi, qword _global_const_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
eval_one_inst:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_ir_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1520
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1520:
	mov rdi, 16
	imul rsi, rdi
	mov rdi, qword _global_ir_stream
	add rsi, rdi
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, rbx
	mov r8, qword _global_ir_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1521
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1521:
	mov rdi, 16
	imul rbx, rdi
	mov rdi, qword _global_ir_stream
	add rbx, rdi
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	mov rdi, 1
	mov r8, qword [_rs_p]
	mov qword [r8 + 16], rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r8, 2
	xor r10, r10
	cmp r9, r8
	sete r10b
	push r10
	pop rbx
	test rbx, rbx
	jz .577
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.577:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 24
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .580
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top_e
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	inc rsi
	mov qword [rbx], rsi
	jmp .578
.580:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 25
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .582
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top_e
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	dec rsi
	mov qword [rbx], rsi
	jmp .578
.582:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 31
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .584
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top_e
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rsi, [rsi]
	not rsi
	mov qword [rbx], rsi
	jmp .578
.584:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 34
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .586
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.586:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 39
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .588
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	jmp .578
.588:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 19
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .590
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	add rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.590:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 20
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .592
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	sub rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.592:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 21
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .594
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	imul rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.594:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 22
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .596
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov rax, rdi
	xor rdx, rdx
	div r8
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.596:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 23
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .598
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov rax, rdi
	xor rdx, rdx
	div r8
	push rdx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.598:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 26
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .600
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov rax, rdi
	xor rdx, rdx
	div r8
	push rdx
	push rax
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.600:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 27
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .602
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov rcx, r8
	shr rdi, cl
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.602:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 28
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .604
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov rcx, r8
	shl rdi, cl
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.604:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 29
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .606
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	and rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.606:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 30
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .608
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	or rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.608:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 32
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .610
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor rdi, r8
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.610:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 33
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .612
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.612:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 35
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .614
	mov rbx, qword _global_const_stack
	mov rsi, qword _global_const_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 2
	sub rdi, rsi
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.614:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 40
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .616
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	sete r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.616:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 41
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .618
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setne r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.618:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 42
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .620
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	seta r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.620:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 43
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .622
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setb r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.622:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 44
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .624
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setae r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.624:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 45
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .626
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setbe r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.626:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 46
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .628
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setg r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.628:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 47
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .630
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setl r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.630:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 48
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .632
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setge r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.632:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 49
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .634
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	xor r9, r9
	cmp rdi, r8
	setle r9b
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.634:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 37
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .636
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	pop r9
	push r8
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.636:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 36
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .638
	mov rbx, qword _global_const_stack
	mov rsi, qword _global_const_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 3
	sub rdi, rsi
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	mov rbx, [rbx]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.638:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, 38
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 4
	xor r8, r8
	cmp rsi, rbx
	setae r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .640
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	pop r9
	pop r10
	push r9
	push r8
	push rdi
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .578
.640:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 16], rbx
.641:
.578:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
error_st.Tok:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	pop rdi
	mov r8, 27
	push rsi
	push rbx
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1522
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1522:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .642
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	push rsi
.644:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .645
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_sp.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1523
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_163
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1523:
	mov rdi, 4
	imul rsi, rdi
	mov rdi, qword _global_sp
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, _slit_164
	mov r8, 9
	mov r9, 27
	push rbx
	push rdi
	push r8
	push rsi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_165
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_166
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1524
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1524:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_167
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_168
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .646
	jmp .645
.646:
	pop rbx
	dec rbx
	push rbx
	jmp .644
.645:
	add rsp, 8
.642:
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
sp_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1024
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1525
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_147
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1525:
	mov rbx, qword _global_sp
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 4
	imul rdi, rsi
	add rbx, rdi
	pop rsi
	mov dword [rbx], esi
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
sp_push_p:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, 0
	push rbx
.648:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .649
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .648
.649:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
sp_assert:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword _global_sp.len
	mov r8, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov r9, qword [rbx + 8]
	xor rbx, rbx
	cmp r8, r9
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .650
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_183
	mov rdi, 42
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.650:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	sub rsi, rdi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	mov rdi, qword _global_pos
	mov r9, qword [rdi + 0]
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
is_global_var_name:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .652
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.652:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, 0
	push rdi
.654:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .655
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_global_var_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1526
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1526:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_global_var_context
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r10, qword [r8 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .656
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.656:
	pop rbx
	inc rbx
	push rbx
	jmp .654
.655:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
is_constant_name:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .658
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.658:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, 0
	push rdi
.660:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .661
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_toplevel_constants.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1527
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1527:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_toplevel_constants
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r10, qword [r8 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .662
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.662:
	pop rbx
	inc rbx
	push rbx
	jmp .660
.661:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
is_function_name:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_functions.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .664
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.664:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, 0
	push rdi
.666:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .667
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_functions.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1528
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1528:
	mov rdi, 30
	imul rsi, rdi
	mov rdi, qword _global_functions
	add rsi, rdi
	mov rdi, 8
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r10, qword [r8 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .668
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.668:
	pop rbx
	inc rbx
	push rbx
	jmp .666
.667:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
search_variable_name:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .670
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.670:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rbx
	mov qword [rdi + 8], rsi
	mov rdi, qword _global_var_context.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	sub r8, rdi
	push r8
.672:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .673
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_var_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1529
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_184
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1529:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_var_context
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 8]
	mov r10, qword [r8 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .674
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.674:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .676
	jmp .673
.676:
	pop rbx
	dec rbx
	push rbx
	jmp .672
.673:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
replace_as_constant:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, rbx
	mov r8, rdi
	mov r9, qword _global_token_stream.len
	mov r10, qword [r9 + 0]
	xor r9, r9
	cmp r8, r10
	setb r9b
	test r9, r9
	jnz .1530
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1530:
	mov r8, 28
	imul rdi, r8
	mov r8, qword _global_token_stream
	add rdi, r8
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 0]
	mov r8, r9
	mov r10, qword _global_toplevel_constants.len
	mov r11, qword [r10 + 0]
	xor r10, r10
	cmp r8, r11
	setb r10b
	test r10, r10
	jnz .1531
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1531:
	mov r8, 24
	imul r9, r8
	mov r8, qword _global_toplevel_constants
	add r9, r8
	mov r8, 12
	add r9, r8
	mov r9d, [r9]
	mov r8, r9
	mov r10, qword _global_token_stream.len
	mov r11, qword [r10 + 0]
	xor r10, r10
	cmp r8, r11
	setb r10b
	test r10, r10
	jnz .1532
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1532:
	mov r8, 28
	imul r9, r8
	mov r8, qword _global_token_stream
	add r9, r8
	mov r8, 28
	push rbx
	push r9
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1533
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1533:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _global_token_stream
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rdi, 3
	mov dword [rsi], edi
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1534
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1534:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	mov rsi, 20
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, rdi
	mov r8, qword _global_toplevel_constants.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1535
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1535:
	mov rsi, 24
	imul rdi, rsi
	mov rsi, qword _global_toplevel_constants
	add rdi, rsi
	mov rsi, 16
	add rdi, rsi
	mov rdi, [rdi]
	mov qword [rbx], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
parse.fn_decl:
	sub rsp, 32
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .678
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1536
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1536:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_scope_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1537
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1537:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_scope_context
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _slit_134
	mov rdi, 38
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1538
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1538:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.678:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rdi
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword _global_token_stream.len
	mov r10, qword [r8 + 0]
	xor r8, r8
	cmp r9, r10
	setae r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .680
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_135
	mov rdi, 36
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1539
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1539:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.680:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1540
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1540:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .682
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_136
	mov rdi, 38
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1541
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1541:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.682:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1542
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1542:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	add rsi, rbx
	mov rbx, rsi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1543
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1543:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 3
	xor r8, r8
	cmp rsi, rbx
	setne r8b
	or rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .684
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_137
	mov rdi, 51
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1544
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1544:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.684:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 4
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1545
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1545:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .686
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_138
	mov rdi, 44
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1546
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1546:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.686:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1547
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1547:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_function_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .688
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_139
	mov rdi, 23
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1548
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1548:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.688:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	or rbx, rsi
	push rbx
	pop rbx
	test rbx, rbx
	jz .690
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_140
	mov rdi, 45
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1549
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1549:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.690:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1550
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1550:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 3
	add rdi, rbx
	mov rbx, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1551
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1551:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _global_token_stream
	add rdi, rbx
	mov rbx, 20
	add rdi, rbx
	mov rdi, [rdi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rdi
	mov rbx, qword _global_functions.len
	mov r8, qword [rbx + 0]
	mov rbx, 30
	imul r8, rbx
	mov rbx, qword _global_functions
	add r8, rbx
	mov rbx, qword _global_function_context
	mov qword [rbx + 0], r8
	mov r9, qword _global_functions.len
	mov r10, qword [r9 + 0]
	mov r9, qword _global_function_context_idx
	mov qword [r9 + 0], r10
	mov r11, qword [_rs_p]
	mov r12, qword [r11 + 16]
	mov r11, qword [_rs_p]
	mov r13, qword [r11 + 24]
	mov r11, qword [_rs_p]
	mov r14, qword [r11 + 8]
	mov r11, qword _global_ir_stream.len
	mov r15, qword [r11 + 0]
	mov r11, 0
	mov rcx, 0
	mov rdx, qword [_rs_p]
	mov rax, qword [rdx + 8]
	mov rdx, rax
	push r12
	push r13
	push r14
	push r15
	push r11
	push rcx
	push rax
	push rdx
	mov rbx, 8
	pop rsi
	add rsi, rbx
	pop rbx
	mov rbx, [rbx]
	mov rdi, _slit_141
	mov r8, 4
	push rsi
	push rbx
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .692
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 0
	xor r8, r8
	cmp rsi, rbx
	setne r8b
	or rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .694
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_142
	mov rdi, 52
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1552
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1552:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.694:
	mov rbx, qword _global_functions.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_main_fn_idx
	mov qword [rbx + 0], rsi
	mov rdi, 1
	mov r8, 1
	push rdi
	push r8
	jmp .696
.692:
	mov rbx, 0
	mov rsi, 0
	push rbx
	push rsi
.696:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call functions_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 14
	mov rdi, qword _global_function_context_idx
	mov r8, qword [rdi + 0]
	push rsi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1553
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_145
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1553:
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1554
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_146
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1554:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 32
	ret
parse.any_variable:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rdi
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword _global_token_stream.len
	mov r10, qword [r8 + 0]
	xor r8, r8
	cmp r9, r10
	setae r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .697
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_148
	mov rdi, 41
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1555
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1555:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.697:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1556
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1556:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 67
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .699
	mov rbx, 1
	push rbx
	jmp .701
.699:
	mov rbx, 2
	push rbx
.701:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1557
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1557:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, 16
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 1
	xor r8, r8
	cmp rbx, rdi
	setne r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .702
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_149
	mov rdi, 38
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1558
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1558:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.702:
	mov rbx, 20
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_function_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .704
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_150
	mov rdi, 36
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1559
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1559:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.704:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1560
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1560:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .706
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1561
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1561:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .708
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
.708:
.706:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1562
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1562:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .710
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_151
	mov rdi, 40
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1563
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1563:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.710:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1564
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1564:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _global_token_stream
	add rdi, rbx
	mov rbx, 16
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, 67
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .712
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1565
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1565:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
	jmp .714
.712:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1566
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1566:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, 8
	imul rsi, rbx
	push rsi
.714:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
parse.fn_complex_body_tokens:
	sub rsp, 308
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1567
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1567:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, rbx
	mov r8, 67
	xor r9, r9
	cmp rdi, r8
	sete r9b
	mov rdi, 68
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	or r9, r8
	push rsi
	push r9
	pop rbx
	test rbx, rbx
	jz .715
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.any_variable
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, rbx
	mov rdi, 8
	add rsi, rdi
	mov rbx, [rbx]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	mov qword [rdi + 16], rsi
	mov rdi, qword _global_var_context.len
	mov r8, qword [rdi + 0]
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, r9
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .717
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	push rsi
.719:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .720
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_var_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1568
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_184
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1568:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_var_context
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 16]
	mov r10, qword [r8 + 8]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .721
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_185
	mov rdi, 23
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1569
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1569:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.721:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	sete dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .723
	jmp .720
.723:
	pop rbx
	dec rbx
	push rbx
	jmp .719
.720:
	add rsp, 8
.717:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 24], rsi
	pop rdi
	mov r8, qword _global_function_context
	mov r9, qword [r8 + 0]
	mov r8, 24
	add r9, r8
	mov r9d, [r9]
	mov r8, qword _global_pos
	mov r10, qword [r8 + 0]
	mov r8, 2
	sub r10, r8
	push rbx
	push r9
	push r10
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call var_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 24
	add rsi, rbx
	mov rbx, qword _global_function_context
	mov rdi, qword [rbx + 0]
	mov rbx, 24
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 24]
	add rdi, r8
	mov dword [rsi], edi
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	jmp .716
.715:
	pop rbx
	mov rsi, rbx
	mov rdi, 69
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .726
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	mov rdi, qword _global_token_stream.len
	mov r9, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, r9
	setae dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .727
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_187
	mov rdi, 31
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1570
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1570:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.727:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1571
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1571:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .729
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_188
	mov rdi, 23
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1572
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1572:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.729:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1573
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1573:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 32], rsi
	mov rbx, 18446744073709551615
	mov rdi, qword [_rs_p]
	mov qword [rdi + 40], rbx
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 48], rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 32]
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call search_variable_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .731
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, qword _global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1574
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_184
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1574:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 56], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 56]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .733
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_189
	mov rdi, 24
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1575
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1575:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .734
.733:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .736
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 56]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 64], rax
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 64]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .737
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_190
	mov rdi, 65
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.737:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 64]
	sub rsi, rdi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, 4
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 64]
	mov r8, 32
	mov rcx, r8
	shl r9, cl
	mov r8, qword [_rs_p]
	mov r10, qword [r8 + 56]
	mov r8, 8
	add r10, r8
	mov r10d, [r10]
	or r9, r10
	mov r8, qword _global_pos
	mov r10, qword [r8 + 0]
	push r10
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .734
.736:
	mov rbx, 0
	test rbx, rbx
	jnz .1576
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_191
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1576:
.739:
.734:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
.731:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .740
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 40]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .742
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1577
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1577:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 72], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 72]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .744
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_192
	mov rdi, 24
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1578
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1578:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .745
.744:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .747
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 72]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 80], rax
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 80]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .748
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_193
	mov rdi, 65
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.748:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 80]
	sub rsi, rdi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, 7
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 40]
	mov r8, qword _global_pos
	mov r10, qword [r8 + 0]
	push r10
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .745
.747:
	mov rbx, 0
	test rbx, rbx
	jnz .1579
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_194
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1579:
.750:
.745:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
.742:
.740:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .751
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_195
	mov rdi, 21
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1580
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1580:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.751:
	jmp .716
.726:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .754
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1581
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1581:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 88], rsi
	mov rbx, 18446744073709551615
	mov rdi, qword [_rs_p]
	mov qword [rdi + 96], rbx
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 104], rdi
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 88]
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_function_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 96], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .755
	mov rbx, 16
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, rdi
	mov r8, qword _global_functions.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1582
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1582:
	mov rbx, 30
	imul rdi, rbx
	mov rbx, qword _global_functions
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .757
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_196
	mov rdi, 46
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.757:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1583
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1583:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, rdi
	mov r8, qword _global_functions.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1584
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1584:
	mov rbx, 30
	imul rdi, rbx
	mov rbx, qword _global_functions
	add rdi, rbx
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 104], rbx
.755:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .759
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call search_variable_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 96], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .761
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, qword _global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1585
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_184
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1585:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 112], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 112]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .763
	mov rbx, 3
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 112]
	mov rsi, 8
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .764
.763:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .766
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 120], rax
	mov rbx, 5
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 120]
	mov rsi, 32
	mov rcx, rsi
	shl rdi, cl
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 112]
	mov rsi, 8
	add r8, rsi
	mov r8d, [r8]
	or rdi, r8
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .764
.766:
	mov rbx, 0
	test rbx, rbx
	jnz .1586
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_197
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1586:
.767:
.764:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 104], rbx
.761:
.759:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .768
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 96], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .770
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 96]
	mov rbx, rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1587
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1587:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 128], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 128]
	mov edi, [rdi]
	mov rbx, 1
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .772
	mov rbx, 6
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .773
.772:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
	mov esi, [rsi]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .775
	mov rbx, 8
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 128]
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	push rax
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .773
.775:
	mov rbx, 0
	test rbx, rbx
	jnz .1588
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_198
	mov rdx, 61
	syscall
	mov rdi, 1
	jmp _exit
.1588:
.776:
.773:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 104], rbx
.770:
.768:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .777
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 96], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 96]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .779
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 136], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 136]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .781
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, 1
	mov r8, qword [_rs_p]
	mov qword [r8 + 104], rdi
.781:
.779:
.777:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 104]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .783
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_199
	mov rdi, 33
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1589
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1589:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.783:
	jmp .716
.754:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .786
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .787
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_200
	mov rdi, 45
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1590
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1590:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.787:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_label_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _global_label_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 144], r8
	mov r10, 3
	mov r11, qword _global_sp.len
	mov r12, qword [r11 + 0]
	mov r11, 0
	mov r13, qword _global_pos
	mov r14, qword [r13 + 0]
	mov r13, qword [_rs_p]
	mov r15, qword [r13 + 144]
	mov r13, qword _global_label_c
	mov rcx, qword [r13 + 0]
	mov r13, rcx
	inc r13
	mov rdx, qword _global_label_c
	mov qword [rdx + 0], r13
	mov rax, qword _global_var_context.len
	push r10
	push r12
	push r11
	push r14
	push r15
	push rcx
	mov rbx, qword [rax + 0]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 144]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	mov rdi, qword _global_token_stream.len
	mov r9, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, r9
	setae dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .789
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_202
	mov rdi, 40
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1591
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1591:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.789:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1592
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1592:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .791
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_203
	mov rdi, 39
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1593
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1593:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.791:
	jmp .716
.786:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .794
	mov rbx, qword _global_label_c
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	inc rbx
	mov rdi, qword _global_label_c
	mov qword [rdi + 0], rbx
	mov r8, qword [_rs_p]
	mov qword [r8 + 152], rsi
	mov r8, 13
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 152]
	mov r9, qword _global_pos
	mov r11, qword [r9 + 0]
	push r11
	push r8
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 8
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword [_rs_p]
	mov r10, qword [r8 + 152]
	mov r8, 0
	mov r11, qword _global_var_context.len
	mov r12, qword [r11 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r10
	push r8
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.794:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .796
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .797
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_204
	mov rdi, 26
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1594
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1594:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.797:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 160], rbx
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	push rdi
.799:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .800
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1595
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1595:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _global_scope_context
	add rsi, rdi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 168], rsi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 168]
	mov r8d, [r8]
	mov rdi, 9
	xor r9, r9
	cmp r8, rdi
	sete r9b
	push rbx
	push r9
	pop rbx
	test rbx, rbx
	jz .801
	mov rbx, 12
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 168]
	mov rsi, 16
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 160], rbx
	jmp .800
.801:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .803
	jmp .800
.803:
	pop rbx
	dec rbx
	push rbx
	jmp .799
.800:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 160]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .805
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_205
	mov rdi, 26
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1596
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1596:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.805:
	jmp .716
.796:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .808
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .809
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_206
	mov rdi, 26
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1597
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1597:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.809:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 176], rbx
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	push rdi
.811:
	mov rbx, 1
	push rbx
	pop rbx
	test rbx, rbx
	jz .812
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1598
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1598:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _global_scope_context
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .813
	pop rbx
	mov rsi, rbx
	dec rsi
	mov rdi, rsi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1599
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1599:
	mov rdi, 28
	imul rsi, rdi
	mov rdi, qword _global_scope_context
	add rsi, rdi
	mov rdi, rsi
	mov edi, [rdi]
	mov r8, 8
	xor r9, r9
	cmp rdi, r8
	sete r9b
	test r9, r9
	jnz .1600
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_207
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1600:
	mov rdi, 12
	mov r8, 16
	add rsi, r8
	mov esi, [rsi]
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	push rbx
	push r9
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 176], rbx
	jmp .812
.813:
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .815
	jmp .812
.815:
	pop rbx
	dec rbx
	push rbx
	jmp .811
.812:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 176]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .817
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_208
	mov rdi, 26
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1601
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1601:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.817:
	jmp .716
.808:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .820
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .821
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1602
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1602:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_scope_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1603
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1603:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_scope_context
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .823
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .825
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_209
	mov rdi, 45
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1604
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1604:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.825:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_label_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _global_label_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 184], r8
	mov r10, 9
	mov r11, qword _global_sp.len
	mov r12, qword [r11 + 0]
	mov r11, 0
	mov r13, qword _global_pos
	mov r14, qword [r13 + 0]
	mov r13, qword [_rs_p]
	mov r15, qword [r13 + 184]
	mov r13, 0
	mov rcx, qword _global_var_context.len
	mov rdx, qword [rcx + 0]
	push r10
	push r12
	push r11
	push r14
	push r15
	push r13
	push rdx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 184]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .824
.823:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .828
	mov rbx, qword [_rs_p]
	add rbx, 192
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	xor r8, r8
	cmp rdi, rsi
	setne r8b
	test r8, r8
	jnz .1605
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1605:
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, rdi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1606
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1606:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_scope_context
	add rdi, rsi
	mov rsi, 28
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_scope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_sp.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor r9, r9
	cmp r8, rdi
	sete r9b
	push r9
	pop rbx
	test rbx, rbx
	jz .829
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_210
	mov rdi, 50
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1607
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1607:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.829:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_label_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _global_label_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 220], r8
	mov r10, 7
	mov r11, qword [_rs_p]
	add r11, 192
	mov r12, 4
	add r11, r12
	mov r11d, [r11]
	mov r12, qword [_rs_p]
	add r12, 192
	mov r13, 8
	add r12, r13
	mov r12d, [r12]
	mov r13, qword _global_pos
	mov r14, qword [r13 + 0]
	mov r13, qword [_rs_p]
	mov r15, qword [r13 + 220]
	mov r13, qword [_rs_p]
	add r13, 192
	mov rcx, 20
	add r13, rcx
	mov r13d, [r13]
	mov rcx, qword _global_var_context.len
	mov rdx, qword [rcx + 0]
	push r10
	push r11
	push r12
	push r14
	push r15
	push r13
	push rdx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 11
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 220]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .824
.828:
	mov rbx, 1
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, 0
	mov r10, 0
	mov r11, qword _global_var_context.len
	mov r12, qword [r11 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r8
	push r10
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.831:
.824:
	add rsp, 8
	jmp .832
.821:
	mov rbx, 1
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, 0
	mov r10, 0
	mov r11, qword _global_var_context.len
	mov r12, qword [r11 + 0]
	push rbx
	push rdi
	push rsi
	push r9
	push r8
	push r10
	push r12
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.832:
	jmp .716
.820:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .834
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .835
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	xor r8, r8
	cmp rdi, rsi
	setne r8b
	test r8, r8
	jnz .1608
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1608:
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, rdi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1609
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1609:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_scope_context
	add rdi, rsi
	mov rsi, 28
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_scope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, qword [_rs_p]
	add rdi, 228
	mov r8, 24
	add rdi, r8
	mov edi, [rdi]
	mov r8, qword _global_var_context.len
	mov qword [r8 + 0], rdi
	mov r9, qword [_rs_p]
	add r9, 228
	mov r9d, [r9]
	mov r10, r9
	mov r11, 9
	xor r12, r12
	cmp r10, r11
	sete r12b
	push r9
	push r12
	pop rbx
	test rbx, rbx
	jz .837
	mov rbx, qword [_rs_p]
	add rbx, 256
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 0
	xor r8, r8
	cmp rdi, rsi
	setne r8b
	test r8, r8
	jnz .1610
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1610:
	mov rsi, qword _global_scope_context.len
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	sub rdi, rsi
	mov rsi, rdi
	mov r8, qword _global_scope_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1611
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1611:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_scope_context
	add rdi, rsi
	mov rsi, 28
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_scope_context.len
	mov qword [rbx + 0], rsi
	mov rdi, 12
	mov r8, qword [_rs_p]
	add r8, 256
	mov r9, 16
	add r8, r9
	mov r8d, [r8]
	mov r9, qword _global_pos
	mov r10, qword [r9 + 0]
	push r10
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .838
.837:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .840
	jmp .838
.840:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .842
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .843
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _slit_211
	mov rdi, 84
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .844
.843:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 4
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .846
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _slit_212
	mov rdi, 84
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.846:
.844:
	jmp .838
.842:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .848
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword _global_token_stream.len
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	add rdi, rsi
	mov rsi, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1612
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1612:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_token_stream
	add rdi, rsi
	mov rsi, 16
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, 16
	xor r8, r8
	cmp rdi, rsi
	sete r8b
	and rbx, r8
	push rbx
	pop rbx
	test rbx, rbx
	jz .849
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_label_c
	mov r8, qword [rdi + 0]
	mov rdi, r8
	inc rdi
	mov r9, qword _global_label_c
	mov qword [r9 + 0], rdi
	mov r10, qword [_rs_p]
	mov qword [r10 + 284], r8
	mov r10, 5
	mov r11, qword _global_sp.len
	mov r12, qword [r11 + 0]
	mov r11, qword _global_sp.len
	mov r13, qword [r11 + 0]
	mov r11, qword _global_pos
	mov r14, qword [r11 + 0]
	mov r11, qword [_rs_p]
	mov r15, qword [r11 + 284]
	mov r11, 4294967295
	mov rcx, qword _global_var_context.len
	mov rdx, qword [rcx + 0]
	push r10
	push r12
	push r13
	push r14
	push r15
	push r11
	push rdx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _global_sp.len
	mov qword [rsi + 0], rbx
	mov rdi, 12
	mov r8, qword [_rs_p]
	mov r9, qword [r8 + 284]
	mov r8, qword _global_pos
	mov r10, qword [r8 + 0]
	push r10
	push rdi
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	mov rdi, qword _global_token_stream.len
	mov r9, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, r9
	setae dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .851
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_213
	mov rdi, 42
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1613
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1613:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.851:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1614
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1614:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .853
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_214
	mov rdi, 41
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1615
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1615:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.853:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .850
.849:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword _global_token_stream.len
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	add rdi, rsi
	mov rsi, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1616
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1616:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_token_stream
	add rdi, rsi
	mov rsi, 16
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, 17
	xor r8, r8
	cmp rdi, rsi
	sete r8b
	and rbx, r8
	push rbx
	pop rbx
	test rbx, rbx
	jz .856
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, 6
	mov r8, qword [_rs_p]
	add r8, 228
	mov r9, 4
	add r8, r9
	mov r8d, [r8]
	mov r9, qword _global_sp.len
	mov r10, qword [r9 + 0]
	mov r9, qword _global_pos
	mov r11, qword [r9 + 0]
	mov r9, qword _global_label_c
	mov r12, qword [r9 + 0]
	mov r9, r12
	inc r9
	mov r13, qword _global_label_c
	mov qword [r13 + 0], r9
	mov r14, qword [_rs_p]
	add r14, 228
	mov r15, 20
	add r14, r15
	mov r14d, [r14]
	mov r15, qword _global_var_context.len
	mov rcx, qword [r15 + 0]
	push rdi
	push r8
	push r10
	push r11
	push r12
	push r14
	push rcx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _global_sp.len
	mov qword [rsi + 0], rbx
	mov rdi, 12
	mov r8, qword [_rs_p]
	add r8, 228
	mov r9, 20
	add r8, r9
	mov r8d, [r8]
	mov r9, qword _global_pos
	mov r10, qword [r9 + 0]
	push r10
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .850
.856:
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	xor rsi, rsi
	cmp rbx, rdi
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .858
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_215
	mov rdi, 51
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.858:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.857:
.850:
	jmp .838
.848:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .861
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword _global_token_stream.len
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	mov rsi, 1
	add rdi, rsi
	mov rsi, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1617
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1617:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_token_stream
	add rdi, rsi
	mov rsi, 16
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, rdi
	mov r8, 17
	xor r9, r9
	cmp rsi, r8
	sete r9b
	mov rsi, 16
	xor r8, r8
	cmp rdi, rsi
	sete r8b
	or r9, r8
	and rbx, r9
	push rbx
	pop rbx
	test rbx, rbx
	jz .862
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	mov rdi, r8
	mov r9, qword _global_token_stream.len
	mov r10, qword [r9 + 0]
	xor r9, r9
	cmp rdi, r10
	setb r9b
	test r9, r9
	jnz .1618
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1618:
	mov rdi, 28
	imul r8, rdi
	mov rdi, qword _global_token_stream
	add r8, rdi
	mov rdi, 16
	add r8, rdi
	mov r8d, [r8]
	mov rdi, r8
	mov r9, 17
	xor r10, r10
	cmp rdi, r9
	sete r10b
	push r8
	push r10
	pop rbx
	test rbx, rbx
	jz .864
	mov rbx, 6
	push rbx
	jmp .865
.864:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .867
	mov rbx, 5
	push rbx
	jmp .865
.867:
	mov rbx, 0
	mov rsi, 0
	test rsi, rsi
	jnz .1619
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_216
	mov rdx, 77
	syscall
	mov rdi, 1
	jmp _exit
.1619:
	push rbx
.868:
.865:
	pop rbx
	pop rsi
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword [_rs_p]
	add rdi, 228
	mov r8, 8
	add rdi, r8
	mov edi, [rdi]
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword _global_label_c
	mov r10, qword [r8 + 0]
	mov r8, r10
	inc r8
	mov r11, qword _global_label_c
	mov qword [r11 + 0], r8
	mov r12, qword [_rs_p]
	add r12, 228
	mov r13, 20
	add r12, r13
	mov r12d, [r12]
	mov r13, qword _global_var_context.len
	mov r14, qword [r13 + 0]
	push rbx
	push rsi
	push rdi
	push r9
	push r10
	push r12
	push r14
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	xor rsi, rsi
	cmp rbx, rdi
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .869
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_217
	mov rdi, 55
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.869:
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 4
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _global_sp.len
	mov qword [rsi + 0], rbx
	mov rdi, 12
	mov r8, qword [_rs_p]
	add r8, 228
	mov r9, 20
	add r8, r9
	mov r8d, [r8]
	mov r9, qword _global_pos
	mov r10, qword [r9 + 0]
	push r10
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1620
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1620:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 16
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .871
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	mov rdi, qword _global_token_stream.len
	mov r9, qword [rdi + 0]
	xor rdi, rdi
	cmp r8, r9
	setae dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .873
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_218
	mov rdi, 42
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1621
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1621:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.873:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1622
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1622:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .875
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_219
	mov rdi, 41
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1623
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1623:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.875:
.871:
	jmp .877
.862:
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 8
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, qword _global_sp.len
	mov rdi, qword [rsi + 0]
	xor rsi, rsi
	cmp rbx, rdi
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .878
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_220
	mov rdi, 51
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.878:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 20
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.877:
	jmp .838
.861:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .881
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 8
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .882
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _slit_221
	mov rdi, 94
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .883
.882:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rdi, 8
	add rbx, rdi
	mov ebx, [rbx]
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .885
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 12
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, _slit_222
	mov rdi, 94
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.885:
.883:
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 16
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	add rbx, 228
	mov rsi, 20
	add rbx, rsi
	mov ebx, [rbx]
	mov rsi, 4294967295
	xor rdi, rdi
	cmp rbx, rsi
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .886
	mov rbx, 13
	mov rsi, qword [_rs_p]
	add rsi, 228
	mov rdi, 20
	add rsi, rdi
	mov esi, [rsi]
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.886:
	jmp .838
.881:
	mov rbx, 0
	test rbx, rbx
	jnz .1624
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_223
	mov rdx, 76
	syscall
	mov rdi, 1
	jmp _exit
.1624:
.888:
.838:
	add rsp, 8
	jmp .889
.835:
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 20
	add rsi, rbx
	mov rbx, qword _global_ir_stream.len
	mov rdi, qword [rbx + 0]
	mov dword [rsi], edi
	mov rbx, 15
	mov rsi, qword _global_function_context_idx
	mov rdi, qword [rsi + 0]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_function_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	seta bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .890
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1625
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1625:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _slit_224
	mov rdi, 27
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .891
.890:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_function_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .893
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1626
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1626:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _slit_225
	mov rdi, 49
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.893:
.891:
	mov rbx, 0
	mov rsi, qword _global_sp.len
	mov qword [rsi + 0], rbx
	mov rdi, 0
	mov r8, qword _global_var_context.len
	mov qword [r8 + 0], rdi
	mov r9, 0
	mov r10, qword _global_function_context
	mov qword [r10 + 0], r9
	mov r11, 18446744073709551615
	mov r12, qword _global_function_context_idx
	mov qword [r12 + 0], r11
.889:
	jmp .716
.834:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .895
	mov rbx, 15
	mov rsi, qword _global_function_context_idx
	mov rdi, qword [rsi + 0]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_function_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	seta bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .896
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1627
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1627:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _slit_226
	mov rdi, 27
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .897
.896:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_function_context
	mov rdi, qword [rbx + 0]
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .899
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1628
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1628:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _slit_227
	mov rdi, 49
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.899:
.897:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .900
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1629
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1629:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_scope_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1630
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1630:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_scope_context
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .902
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1631
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_132
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1631:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_scope_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1632
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_133
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1632:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_scope_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
.902:
.900:
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	jmp .716
.895:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .905
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 292], rsi
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rdi
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword _global_token_stream.len
	mov r10, qword [r8 + 0]
	xor r8, r8
	cmp r9, r10
	setae r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .906
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 292]
	mov rbx, _slit_228
	mov rdi, 41
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1633
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1633:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.906:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 292]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1634
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1634:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, rsi
	mov rdi, 16
	add rbx, rdi
	mov ebx, [rbx]
	mov rdi, 3
	xor r8, r8
	cmp rbx, rdi
	setne r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .908
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 292]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_229
	mov rdi, 52
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1635
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1635:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.908:
	mov rbx, 20
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 300], rsi
	mov rbx, 2
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 300]
	mov rdi, qword _global_sp.len
	mov r9, qword [rdi + 0]
	add r8, r9
	mov rdi, 0
	mov r9, qword [_rs_p]
	mov r10, qword [r9 + 292]
	mov r9, 0
	mov r11, 0
	mov r12, qword _global_var_context.len
	mov r13, qword [r12 + 0]
	push rbx
	push r8
	push rdi
	push r10
	push r9
	push r11
	push r13
	mov rbp, rsp
	mov rsp, [_rs_p]
	call scope_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1636
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1636:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .910
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_230
	mov rdi, 49
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1637
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1637:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.910:
	jmp .716
.905:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .913
	mov rbx, 1
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	mov rsi, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1638
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1638:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_token_stream
	add rdi, rsi
	mov rsi, 20
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.913:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .915
	mov rbx, 50
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.915:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .917
	mov rbx, 51
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.917:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .919
	mov rbx, 52
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.919:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .921
	mov rbx, 53
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.921:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .923
	mov rbx, 54
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.923:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .925
	mov rbx, 55
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.925:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .927
	mov rbx, 56
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.927:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .929
	mov rbx, 57
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.929:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .931
	mov rbx, 18
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.931:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .933
	mov rbx, 58
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.933:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .935
	mov rbx, 59
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.935:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .937
	mov rbx, 60
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.937:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .939
	mov rbx, 61
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.939:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .941
	mov rbx, 62
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 5
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.941:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .943
	mov rbx, 63
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 6
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.943:
	pop rbx
	mov rsi, rbx
	mov rdi, 66
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .945
	mov rbx, 64
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 7
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.945:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .947
	mov rbx, 9
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.947:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .949
	mov rbx, 10
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .716
.949:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_231
	mov rdi, 28
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1639
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1639:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.950:
.716:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 308
	ret
parse.assert:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .951
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_171
	mov rdi, 42
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1640
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1640:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.951:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_sp.len
	mov qword [rbx + 0], rsi
	mov rdi, 0
	mov r8, qword [_rs_p]
	mov qword [r8 + 0], rdi
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, 2
	add r9, r8
	mov r8, qword _global_token_stream.len
	mov r10, qword [r8 + 0]
	xor r8, r8
	cmp r9, r10
	setb r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .953
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1641
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1641:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 6
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, rsi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1642
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1642:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 2
	xor r8, r8
	cmp rsi, rbx
	sete r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .955
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
.955:
.953:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_172
	mov rdi, 0
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error.Tok.to_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	push rdi
	pop rbx
	test rbx, rbx
	jz .957
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _slit_180
	mov rdi, 21
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1643
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1643:
	mov rbx, 28
	imul rdi, rbx
	mov rbx, qword _global_token_stream
	add rdi, rbx
	mov rbx, 20
	add rdi, rbx
	mov rdi, [rdi]
	mov rbx, rdi
	mov r8, 8
	add rbx, r8
	mov rdi, [rdi]
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _slit_181
	mov rdi, 2
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 17
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	add rsi, rbx
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	jmp .959
.957:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, _slit_182
	mov rdi, 19
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_nul
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 17
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
.959:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
parse.fn_body_tokens:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1644
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1644:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 10
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .960
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.960:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .963
	mov rbx, 2
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	mov rsi, rdi
	mov r8, qword _global_token_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rsi, r9
	setb r8b
	test r8, r8
	jnz .1645
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1645:
	mov rsi, 28
	imul rdi, rsi
	mov rsi, qword _global_token_stream
	add rdi, rsi
	mov rsi, 20
	add rdi, rsi
	mov rdi, [rdi]
	mov rsi, qword _global_pos
	mov r8, qword [rsi + 0]
	push r8
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _global_pos
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_push_p
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.963:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .965
	mov rbx, 19
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.965:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .967
	mov rbx, 20
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.967:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .969
	mov rbx, 21
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.969:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .971
	mov rbx, 22
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.971:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .973
	mov rbx, 23
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.973:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .975
	mov rbx, 24
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.975:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .977
	mov rbx, 25
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.977:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .979
	mov rbx, 26
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.979:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .981
	mov rbx, 27
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.981:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .983
	mov rbx, 28
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.983:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .985
	mov rbx, 29
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.985:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .987
	mov rbx, 30
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.987:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .989
	mov rbx, 31
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.989:
	pop rbx
	mov rsi, rbx
	mov rdi, 70
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .991
	mov rbx, 65
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.991:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .993
	mov rbx, 32
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.993:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .995
	mov rbx, 33
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.995:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .997
	mov rbx, 34
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.997:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .999
	mov rbx, 35
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.999:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1001
	mov rbx, 36
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1001:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1003
	mov rbx, 37
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1003:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1005
	mov rbx, 38
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1005:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1007
	mov rbx, 39
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 0
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1007:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1009
	mov rbx, 40
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1009:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1011
	mov rbx, 41
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1011:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1013
	mov rbx, 42
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1013:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1015
	mov rbx, 43
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1015:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1017
	mov rbx, 44
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1017:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1019
	mov rbx, 45
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1019:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1021
	mov rbx, 46
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1021:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1023
	mov rbx, 47
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1023:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1025
	mov rbx, 48
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1025:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1027
	mov rbx, 49
	mov rsi, 0
	mov rdi, qword _global_pos
	mov r8, qword [rdi + 0]
	push r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call ir_stream_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call sp_assert
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .961
.1027:
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1029
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_complex_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1031
.1029:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1646
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1646:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 9
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1032
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_232
	mov rdi, 62
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1647
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1647:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1032:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_233
	mov rdi, 33
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1648
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1648:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1031:
.1028:
.961:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse.const_expression:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 0], rsi
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	add rdi, rbx
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rdi
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, qword _global_token_stream.len
	mov r10, qword [r8 + 0]
	xor r8, r8
	cmp r9, r10
	setae r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1034
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_119
	mov rdi, 47
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1649
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1649:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1034:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1650
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1650:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1036
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_123
	mov rdi, 50
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1651
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1651:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1036:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1652
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1652:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_function_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .1038
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_125
	mov rdi, 60
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1653
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1653:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1038:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	or rbx, rsi
	push rbx
	pop rbx
	test rbx, rbx
	jz .1040
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	add rsi, rbx
	mov rbx, _slit_128
	mov rdi, 61
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1654
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1654:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1040:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1655
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1655:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 4
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1042
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_129
	mov rdi, 43
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1656
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1656:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1042:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword _global_ir_stream.len
	mov rdi, qword [rbx + 0]
	mov rbx, qword _global_pos
	mov r8, qword [rbx + 0]
	mov rbx, 1
	sub r8, rbx
	mov rbx, 18446744073709551615
	push rsi
	push rdi
	push r8
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call toplevel_constants_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, qword _global_is_still_evaluating_constant
	mov qword [rsi + 0], rbx
	mov rdi, qword _global_sp.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor r9, r9
	cmp r8, rdi
	sete r9b
	test r9, r9
	jnz .1657
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_131
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1657:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
stas.parse:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	mov rsi, qword _global_main_fn_idx
	mov qword [rsi + 0], rbx
	mov rdi, 0
	mov r8, qword _global_pos
	mov qword [r8 + 0], rdi
.1044:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_token_stream.len
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1045
	mov rbx, qword _global_is_still_evaluating_constant
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor r8, r8
	cmp rsi, rbx
	sete r8b
	and rdi, r8
	push rdi
	pop rbx
	test rbx, rbx
	jz .1046
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1658
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1658:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 9
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .1048
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.const_expression
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1049
.1048:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1051
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_decl
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1049
.1051:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 67
	xor r9, r9
	cmp rdi, r8
	sete r9b
	mov rdi, 68
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	or r9, r8
	push rbx
	push r9
	pop rbx
	test rbx, rbx
	jz .1053
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.any_variable
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_global_var_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 18446744073709551615
	pop rdi
	xor rsi, rsi
	cmp rdi, rbx
	setne sil
	pop rbx
	or rbx, rsi
	push rbx
	pop rbx
	test rbx, rbx
	jz .1054
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_152
	mov rdi, 33
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1659
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1659:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1054:
	pop rbx
	pop rsi
	mov rdi, 0
	mov r8, qword _global_pos
	mov r9, qword [r8 + 0]
	mov r8, 2
	sub r9, r8
	push rbx
	push rdi
	push r9
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call global_var_context_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1049
.1053:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_154
	mov rdi, 22
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1660
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1660:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1056:
.1049:
	add rsp, 8
	jmp .1057
.1046:
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1058
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1661
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1661:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 5
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .1060
	mov rbx, 0
	mov rsi, qword _global_const_stack.len
	mov qword [rsi + 0], rbx
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor r9, r9
	cmp r8, rdi
	setne r9b
	test r9, r9
	jnz .1662
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_155
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1662:
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	sub r8, rdi
	mov rdi, r8
	mov r9, qword _global_toplevel_constants.len
	mov r10, qword [r9 + 0]
	xor r9, r9
	cmp rdi, r10
	setb r9b
	test r9, r9
	jnz .1663
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1663:
	mov rdi, 24
	imul r8, rdi
	mov rdi, qword _global_toplevel_constants
	add r8, rdi
	mov rdi, 8
	add r8, rdi
	mov r8d, [r8]
	push r8
.1062:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1063
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eval_one_inst
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jnz .1664
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_160
	mov rdx, 78
	syscall
	mov rdi, 1
	jmp _exit
.1664:
	pop rbx
	inc rbx
	push rbx
	jmp .1062
.1063:
	add rsp, 8
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1064
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1665
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_155
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1665:
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1666
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1666:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_toplevel_constants
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _slit_161
	mov rdi, 40
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1667
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1667:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1064:
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1066
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1668
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_155
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1668:
	mov rbx, qword _global_toplevel_constants.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, rsi
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1669
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1669:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_toplevel_constants
	add rsi, rbx
	mov rbx, 12
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, _slit_162
	mov rdi, 64
	push rsi
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call error_st.Tok
	mov [_rs_p], rsp
	mov rsp, rbp
.1066:
	mov rbx, 0
	mov rsi, qword _global_sp.len
	mov qword [rsi + 0], rbx
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 0
	xor r9, r9
	cmp r8, rdi
	setne r9b
	test r9, r9
	jnz .1670
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_155
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1670:
	mov rdi, qword _global_toplevel_constants.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	sub r8, rdi
	mov rdi, r8
	mov r9, qword _global_toplevel_constants.len
	mov r10, qword [r9 + 0]
	xor r9, r9
	cmp rdi, r10
	setb r9b
	test r9, r9
	jnz .1671
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1671:
	mov rdi, 24
	imul r8, rdi
	mov rdi, qword _global_toplevel_constants
	add r8, rdi
	mov rdi, 8
	add r8, rdi
	mov r8d, [r8]
	mov rdi, qword _global_ir_stream.len
	mov qword [rdi + 0], r8
	mov r9, qword _global_toplevel_constants.len
	mov r10, qword [r9 + 0]
	mov r9, 0
	xor r11, r11
	cmp r10, r9
	setne r11b
	test r11, r11
	jnz .1672
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_155
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1672:
	mov r9, qword _global_toplevel_constants.len
	mov r10, qword [r9 + 0]
	mov r9, 1
	sub r10, r9
	mov r9, r10
	mov r11, qword _global_toplevel_constants.len
	mov r12, qword [r11 + 0]
	xor r11, r11
	cmp r9, r12
	setb r11b
	test r11, r11
	jnz .1673
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_126
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1673:
	mov r9, 24
	imul r10, r9
	mov r9, qword _global_toplevel_constants
	add r10, r9
	mov r9, 16
	add r10, r9
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call const_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_const_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_const_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	pop r8
	mov qword [r8], rdi
	mov rdi, 0
	mov r8, qword _global_is_still_evaluating_constant
	mov qword [r8 + 0], rdi
	mov r9, qword _global_const_stack.len
	mov r10, qword [r9 + 0]
	mov r9, 0
	xor r11, r11
	cmp r10, r9
	sete r11b
	test r11, r11
	jnz .1674
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_169
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1674:
	jmp .1061
.1060:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1069
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1675
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1675:
	mov rbx, 28
	imul rsi, rbx
	mov rbx, qword _global_token_stream
	add rsi, rbx
	mov rbx, 20
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call is_constant_name
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1070
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_pos
	mov rdi, qword [rbx + 0]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call replace_as_constant
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	jmp .1072
.1070:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	mov rbx, _slit_170
	mov rdi, 25
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1676
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1676:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1072:
	jmp .1061
.1069:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.1073:
.1061:
	add rsp, 8
	jmp .1074
.1058:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse.fn_body_tokens
	mov [_rs_p], rsp
	mov rsp, rbp
.1074:
.1057:
	mov rbx, qword _global_pos
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_pos
	mov qword [rbx + 0], rsi
	jmp .1044
.1045:
	mov rbx, qword _global_var_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1677
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_234
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1677:
	mov rbx, qword _global_sp.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1678
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_235
	mov rdx, 63
	syscall
	mov rdi, 1
	jmp _exit
.1678:
	mov rbx, qword _global_scope_context.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1075
	mov rbx, qword _global_token_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_236
	mov rdi, 32
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1679
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1679:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1075:
	mov rbx, qword _global_function_context
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1077
	mov rbx, qword _global_token_stream.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, _slit_237
	mov rdi, 60
	mov r8, 27
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_token_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1680
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_118
	mov rdx, 62
	syscall
	mov rdi, 1
	jmp _exit
.1680:
	mov rsi, 28
	imul rbx, rsi
	mov rsi, qword _global_token_stream
	add rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Token.location_print
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, _slit_45
	mov rdi, 1
	mov r8, 1
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1077:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
fwrite_buffer.assert_len:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 10240
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1681
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_242
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.1681:
	mov rsi, qword _global_fwrite_buffer.len
	mov rdi, qword [rsi + 0]
	add rbx, rdi
	mov rsi, 10240
	xor rdi, rdi
	cmp rbx, rsi
	setae dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1079
	mov rbx, qword _global_fwrite_buffer.fd_loc
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_fwrite_buffer
	mov rdi, qword _global_fwrite_buffer.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	mov rax, rdi
	mov rdx, r8
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword _global_fwrite_buffer.len
	mov rsi, qword [rbx + 0]
	xor rbx, rbx
	cmp rax, rsi
	sete bl
	test rbx, rbx
	jnz .1682
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_243
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.1682:
	mov rbx, 0
	mov rsi, qword _global_fwrite_buffer.len
	mov qword [rsi + 0], rbx
.1079:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
fwritec:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite_buffer.assert_len
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_fwrite_buffer.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_fwrite_buffer
	add rsi, rbx
	pop rbx
	mov byte [rsi], bl
	mov rbx, qword _global_fwrite_buffer.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_fwrite_buffer.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
fwrite:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite_buffer.assert_len
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	pop rdi
	mov r8, qword _global_fwrite_buffer
	mov r9, qword _global_fwrite_buffer.len
	mov r10, qword [r9 + 0]
	add r8, r10
	push rsi
	push r8
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memcpy
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_fwrite_buffer.len
	mov rsi, qword [rbx + 0]
	pop rbx
	add rbx, rsi
	mov rsi, qword _global_fwrite_buffer.len
	mov qword [rsi + 0], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
fwriteu:
	sub rsp, 21
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call itoa
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 21
	ret
write_remap_ch:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 91
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1081
	mov rbx, _slit_280
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1082
.1081:
	pop rbx
	mov rsi, rbx
	mov rdi, 93
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1084
	mov rbx, _slit_281
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1082
.1084:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1086
	mov rbx, _slit_282
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1082
.1086:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1088
	mov rbx, _slit_283
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1082
.1088:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1090
	mov rbx, _slit_284
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1082
.1090:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1092
	mov rbx, _slit_285
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1082
.1092:
	pop rbx
	mov rsi, rbx
	mov rdi, 124
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1094
	mov rbx, _slit_286
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1082
.1094:
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1095:
.1082:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Function.name.fwrite_mangled:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 8
	pop rsi
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov qword [rdi + 0], rsi
	mov rdi, qword [_rs_p]
	mov qword [rdi + 8], rbx
	mov rdi, 0
	push rdi
.1096:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1097
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	add rsi, r8
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call write_remap_ch
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1096
.1097:
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
slits_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_slits.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1024
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	test rdi, rdi
	jnz .1683
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_239
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1683:
	mov rbx, qword _global_slits
	mov rsi, qword _global_slits.len
	mov rdi, qword [rsi + 0]
	mov rsi, 8
	imul rdi, rsi
	add rbx, rdi
	pop rsi
	mov dword [rbx], esi
	mov rbx, qword _global_slits.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_slits.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
dce.recurse_function:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	test rdi, rdi
	jnz .1684
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1684:
	mov rsi, 30
	imul rbx, rsi
	mov rsi, qword _global_functions
	add rbx, rsi
	mov rsi, qword [_rs_p]
	mov qword [rsi + 0], rbx
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 28
	add rdi, rsi
	mov rsi, 1
	mov byte [rdi], sil
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 0]
	mov rsi, 20
	add rdi, rsi
	mov edi, [rdi]
	mov rsi, 1
	add rdi, rsi
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 0]
	mov rsi, 16
	add r8, rsi
	mov r8d, [r8]
	sub rdi, r8
	mov rsi, 12
	xor r8, r8
	cmp rdi, rsi
	setae r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1098
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 29
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
.1098:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
.1100:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1101
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1685
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1685:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, rsi
	mov rdi, 16
	xor r8, r8
	cmp rbx, rdi
	sete r8b
	push rsi
	push r8
	pop rbx
	test rbx, rbx
	jz .1102
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1686
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1686:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1687
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1687:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov rbx, 28
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1104
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1688
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1688:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
.1104:
	jmp .1103
.1102:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 1
	xor r9, r9
	cmp rdi, r8
	sete r9b
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	or r9, r8
	push rbx
	push r9
	pop rbx
	test rbx, rbx
	jz .1107
	mov rbx, qword _global_slits.len
	mov rsi, qword [rbx + 0]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, rdi
	mov r8, qword _global_ir_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1689
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1689:
	mov rbx, 16
	imul rdi, rbx
	mov rbx, qword _global_ir_stream
	add rdi, rbx
	mov rbx, 8
	add rdi, rbx
	mov rdi, [rdi]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call slits_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1690
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1690:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	pop rbx
	mov qword [rsi], rbx
.1107:
.1103:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	jmp .1100
.1101:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1691
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1691:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 15
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1692
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_240
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1692:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
Reg.64.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1110
	mov rbx, _slit_263
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1110:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1113
	mov rbx, _slit_264
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1113:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1115
	mov rbx, _slit_265
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1115:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1117
	mov rbx, _slit_266
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1117:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1119
	mov rbx, _slit_267
	mov rsi, 2
	push rbx
	push rsi
	jmp .1111
.1119:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1121
	mov rbx, _slit_268
	mov rsi, 2
	push rbx
	push rsi
	jmp .1111
.1121:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1123
	mov rbx, _slit_269
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1123:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1125
	mov rbx, _slit_270
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1125:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1127
	mov rbx, _slit_271
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1127:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1129
	mov rbx, _slit_272
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1129:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1131
	mov rbx, _slit_273
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1131:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1133
	mov rbx, _slit_274
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1133:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1135
	mov rbx, _slit_275
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1135:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1137
	mov rbx, _slit_276
	mov rsi, 3
	push rbx
	push rsi
	jmp .1111
.1137:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1693
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_277
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.1693:
	push rbx
	push rsi
.1138:
.1111:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Reg.32.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1139
	mov rbx, _slit_489
	mov rsi, 3
	push rbx
	push rsi
	jmp .1140
.1139:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1142
	mov rbx, _slit_490
	mov rsi, 3
	push rbx
	push rsi
	jmp .1140
.1142:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1144
	mov rbx, _slit_491
	mov rsi, 3
	push rbx
	push rsi
	jmp .1140
.1144:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1146
	mov rbx, _slit_492
	mov rsi, 3
	push rbx
	push rsi
	jmp .1140
.1146:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1148
	mov rbx, _slit_493
	mov rsi, 3
	push rbx
	push rsi
	jmp .1140
.1148:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1150
	mov rbx, _slit_494
	mov rsi, 3
	push rbx
	push rsi
	jmp .1140
.1150:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1152
	mov rbx, _slit_495
	mov rsi, 4
	push rbx
	push rsi
	jmp .1140
.1152:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1154
	mov rbx, _slit_496
	mov rsi, 4
	push rbx
	push rsi
	jmp .1140
.1154:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1156
	mov rbx, _slit_497
	mov rsi, 4
	push rbx
	push rsi
	jmp .1140
.1156:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1158
	mov rbx, _slit_498
	mov rsi, 4
	push rbx
	push rsi
	jmp .1140
.1158:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1160
	mov rbx, _slit_499
	mov rsi, 4
	push rbx
	push rsi
	jmp .1140
.1160:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1162
	mov rbx, _slit_500
	mov rsi, 4
	push rbx
	push rsi
	jmp .1140
.1162:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1164
	mov rbx, _slit_501
	mov rsi, 3
	push rbx
	push rsi
	jmp .1140
.1164:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1166
	mov rbx, _slit_502
	mov rsi, 3
	push rbx
	push rsi
	jmp .1140
.1166:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1694
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_503
	mov rdx, 72
	syscall
	mov rdi, 1
	jmp _exit
.1694:
	push rbx
	push rsi
.1167:
.1140:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Reg.16.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1168
	mov rbx, _slit_472
	mov rsi, 2
	push rbx
	push rsi
	jmp .1169
.1168:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1171
	mov rbx, _slit_473
	mov rsi, 2
	push rbx
	push rsi
	jmp .1169
.1171:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1173
	mov rbx, _slit_474
	mov rsi, 2
	push rbx
	push rsi
	jmp .1169
.1173:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1175
	mov rbx, _slit_475
	mov rsi, 2
	push rbx
	push rsi
	jmp .1169
.1175:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1177
	mov rbx, _slit_476
	mov rsi, 3
	push rbx
	push rsi
	jmp .1169
.1177:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1179
	mov rbx, _slit_477
	mov rsi, 3
	push rbx
	push rsi
	jmp .1169
.1179:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1181
	mov rbx, _slit_478
	mov rsi, 4
	push rbx
	push rsi
	jmp .1169
.1181:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1183
	mov rbx, _slit_479
	mov rsi, 4
	push rbx
	push rsi
	jmp .1169
.1183:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1185
	mov rbx, _slit_480
	mov rsi, 4
	push rbx
	push rsi
	jmp .1169
.1185:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1187
	mov rbx, _slit_481
	mov rsi, 4
	push rbx
	push rsi
	jmp .1169
.1187:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1189
	mov rbx, _slit_482
	mov rsi, 4
	push rbx
	push rsi
	jmp .1169
.1189:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1191
	mov rbx, _slit_483
	mov rsi, 4
	push rbx
	push rsi
	jmp .1169
.1191:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1193
	mov rbx, _slit_484
	mov rsi, 2
	push rbx
	push rsi
	jmp .1169
.1193:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1195
	mov rbx, _slit_485
	mov rsi, 2
	push rbx
	push rsi
	jmp .1169
.1195:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1695
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_486
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1695:
	push rbx
	push rsi
.1196:
.1169:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
Reg.8.to_str:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 0
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1197
	mov rbx, _slit_389
	mov rsi, 2
	push rbx
	push rsi
	jmp .1198
.1197:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1200
	mov rbx, _slit_390
	mov rsi, 2
	push rbx
	push rsi
	jmp .1198
.1200:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1202
	mov rbx, _slit_391
	mov rsi, 3
	push rbx
	push rsi
	jmp .1198
.1202:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1204
	mov rbx, _slit_392
	mov rsi, 3
	push rbx
	push rsi
	jmp .1198
.1204:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1206
	mov rbx, _slit_393
	mov rsi, 3
	push rbx
	push rsi
	jmp .1198
.1206:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1208
	mov rbx, _slit_394
	mov rsi, 3
	push rbx
	push rsi
	jmp .1198
.1208:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1210
	mov rbx, _slit_395
	mov rsi, 4
	push rbx
	push rsi
	jmp .1198
.1210:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1212
	mov rbx, _slit_396
	mov rsi, 4
	push rbx
	push rsi
	jmp .1198
.1212:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1214
	mov rbx, _slit_397
	mov rsi, 4
	push rbx
	push rsi
	jmp .1198
.1214:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1216
	mov rbx, _slit_398
	mov rsi, 4
	push rbx
	push rsi
	jmp .1198
.1216:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1218
	mov rbx, _slit_399
	mov rsi, 4
	push rbx
	push rsi
	jmp .1198
.1218:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1220
	mov rbx, _slit_400
	mov rsi, 4
	push rbx
	push rsi
	jmp .1198
.1220:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1222
	mov rbx, _slit_401
	mov rsi, 2
	push rbx
	push rsi
	jmp .1198
.1222:
	pop rbx
	mov rsi, rbx
	mov rdi, 13
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1224
	mov rbx, _slit_402
	mov rsi, 2
	push rbx
	push rsi
	jmp .1198
.1224:
	mov rbx, 0
	mov rsi, 0
	mov rdi, 0
	test rdi, rdi
	jnz .1696
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_403
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1696:
	push rbx
	push rsi
.1225:
.1198:
	pop rbx
	pop rsi
	pop rdi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
rallocator_stack_c_c:
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1697
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_315
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1697:
	mov rsi, qword _global_rallocator_stack.len
	mov rdi, qword [rsi + 0]
	mov rsi, 2048
	xor r8, r8
	cmp rdi, rsi
	setb r8b
	test r8, r8
	jnz .1698
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_316
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1698:
	mov rsi, qword _global_rallocator_stack
	mov rdi, qword _global_rallocator_stack.len
	mov r8, qword [rdi + 0]
	add rsi, r8
	mov byte [rsi], bl
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	inc rsi
	mov rbx, qword _global_rallocator_stack.len
	mov qword [rbx + 0], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
rallocator_stack.top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	test rdi, rdi
	jnz .1699
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_300
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1699:
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 1
	sub rsi, rbx
	mov rbx, qword _global_rallocator_stack
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_ffs:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1226:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1227
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	test rdi, rdi
	sete dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1228
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
.1228:
	pop rbx
	inc rbx
	push rbx
	jmp .1226
.1227:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_index:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, 0
	push rbx
.1230:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_rallocator_stack.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1231
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_rallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, qword [_rs_p]
	mov r8, qword [rsi + 0]
	xor rsi, rsi
	cmp rdi, r8
	sete sil
	push rbx
	push rsi
	pop rbx
	test rbx, rbx
	jz .1232
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
.1232:
	pop rbx
	inc rbx
	push rbx
	jmp .1230
.1231:
	add rsp, 8
	mov rbx, 18446744073709551615
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
r_flush:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1234:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_rallocator_stack.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1235
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_rallocator_stack
	add rsi, rdi
	xor rdi, rdi
	mov dil, [rsi]
	mov rsi, _slit_262
	mov r8, 6
	push rbx
	push rdi
	push rsi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1234
.1235:
	add rsp, 8
	mov rbx, 0
	mov rsi, qword _global_rallocator_stack.len
	mov qword [rsi + 0], rbx
	mov rdi, qword _global_rallocator_mask
	mov r8, 0
	mov r9, 14
	push rdi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call memset
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_alloc:
	sub rsp, 8
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_ffs
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1236
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1238
.1236:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
.1238:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 8
	ret
r_release:
	sub rsp, 24
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, 14
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1700
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_360
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1700:
	mov rbx, qword _global_rallocator_mask
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	push rbx
	pop rbx
	test rbx, rbx
	jz .1239
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 8], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, rdi
	mov r8, 14
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1701
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1701:
	mov rbx, qword _global_rallocator_mask
	add rdi, rbx
	mov rbx, 1
	mov byte [rdi], bl
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, 14
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1702
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1702:
	mov rbx, qword _global_rallocator_mask
	add rdi, rbx
	mov rbx, 0
	mov byte [rdi], bl
	mov rbx, _slit_361
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_362
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_index
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, 18446744073709551615
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1241
	mov rbx, qword _global_rallocator_stack
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 16]
	add rbx, rdi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 8]
	mov byte [rbx], dil
.1241:
.1239:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 24
	ret
r_pop:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1243
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_rallocator_stack.len
	mov qword [rbx + 0], rsi
	jmp .1245
.1243:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_301
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1245:
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1703
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1703:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_pop_r:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	mov rbx, rdi
	mov r8, 14
	xor r9, r9
	cmp rbx, r8
	setb r9b
	test r9, r9
	jnz .1704
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_360
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1704:
	mov rbx, qword _global_rallocator_mask
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	push rbx
	pop rbx
	test rbx, rbx
	jz .1246
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
.1246:
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1248
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_rallocator_stack.len
	mov qword [rbx + 0], rsi
	mov rdi, qword [_rs_p]
	pop r8
	mov qword [rdi + 8], r8
	mov rdi, qword [_rs_p]
	mov r9, qword [rdi + 8]
	mov rdi, qword [_rs_p]
	mov r10, qword [rdi + 0]
	xor rdi, rdi
	cmp r9, r10
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1250
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
.1250:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1705
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1705:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, _slit_363
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_364
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1252
.1248:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1706
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_360
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1706:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	test rbx, rbx
	jnz .1707
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_365
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1707:
	mov rbx, _slit_366
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1252:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1708
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1708:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 1
	mov byte [rsi], bl
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
r_top:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1253
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1255
.1253:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1709
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1709:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _slit_324
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1255:
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_dup:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1710
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1710:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _slit_411
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_412
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
r_push_const:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1711
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1711:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _slit_320
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_321
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
gen_range:
	sub rsp, 152
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	mov rbx, qword [_rs_p]
	pop rdi
	mov qword [rbx + 8], rdi
.1256:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 0]
	xor rbx, rbx
	cmp rsi, rdi
	setb bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1257
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	mov rbx, rsi
	mov rdi, qword _global_ir_stream.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1712
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1712:
	mov rbx, 16
	imul rsi, rbx
	mov rbx, qword _global_ir_stream
	add rsi, rbx
	mov rbx, 8
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 16], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 8]
	mov rbx, rdi
	mov r8, qword _global_ir_stream.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rbx, r9
	setb r8b
	test r8, r8
	jnz .1713
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_156
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1713:
	mov rbx, 16
	imul rdi, rbx
	mov rbx, qword _global_ir_stream
	add rdi, rbx
	mov rbx, 4
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, rdi
	mov r8, 13
	xor r9, r9
	cmp rbx, r8
	sete r9b
	push rdi
	push r9
	pop rbx
	test rbx, rbx
	jz .1258
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 46
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 58
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1258:
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1261
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1714
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_278
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1714:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1715
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1715:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 28
	add rdi, rbx
	xor rbx, rbx
	mov bl, [rdi]
	test rbx, rbx
	sete bl
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 24]
	mov rdi, 29
	add r8, rdi
	xor rdi, rdi
	mov dil, [r8]
	test rdi, rdi
	sete dil
	or rbx, rdi
	push rbx
	pop rbx
	test rbx, rbx
	jz .1262
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 20
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	jmp .1264
.1262:
	mov rbx, qword _global_is_object_file
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1265
	mov rbx, _slit_279
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1265:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_287
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1267
	mov rbx, _slit_288
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1267:
	mov rbx, _slit_289
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_290
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1264:
	jmp .1259
.1261:
	pop rbx
	mov rsi, rbx
	mov rdi, 15
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1270
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1716
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1716:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, _slit_291
	mov rdi, 13
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_292
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1271
	mov rbx, _slit_293
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 24
	add rsi, rbx
	mov esi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1271:
	mov rbx, _slit_294
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1270:
	pop rbx
	mov rsi, rbx
	mov rdi, 16
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1274
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_functions.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1717
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_124
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1717:
	mov rbx, 30
	imul rsi, rbx
	mov rbx, qword _global_functions
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 24], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	mov rbx, 1
	add rdi, rbx
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 24]
	mov rbx, 16
	add r8, rbx
	mov r8d, [r8]
	sub rdi, r8
	mov rbx, 2
	xor r8, r8
	cmp rdi, rbx
	setne r8b
	push r8
	pop rbx
	test rbx, rbx
	jz .1275
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 29
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	test rbx, rbx
	sete bl
	push rbx
	pop rbx
	test rbx, rbx
	jz .1277
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	mov rbx, 16
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 1
	add rsi, rbx
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 24]
	mov rbx, 20
	add rdi, rbx
	mov edi, [rdi]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_range
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1279
.1277:
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_295
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_296
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_297
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 24]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Function.name.fwrite_mangled
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_298
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_299
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1279:
.1275:
	jmp .1259
.1274:
	pop rbx
	mov rsi, rbx
	mov rdi, 17
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1281
	mov rbx, qword _global_label_c
	mov rsi, qword [rbx + 0]
	mov rbx, rsi
	inc rbx
	mov rdi, qword _global_label_c
	mov qword [rdi + 0], rbx
	mov r8, qword [_rs_p]
	mov qword [r8 + 64], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_303
	mov rdi, 6
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_304
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_305
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_306
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_307
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_308
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_309
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, 1024
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1718
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_310
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1718:
	mov rbx, 8
	imul rsi, rbx
	mov rbx, qword _global_slits
	add rsi, rbx
	mov rsi, [rsi]
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_311
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_312
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_313
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 64]
	mov rbx, 46
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 58
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1719
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1719:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1281:
	pop rbx
	mov rsi, rbx
	mov rdi, 1
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1283
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1720
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1720:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _slit_317
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_318
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_319
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, 1024
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1721
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_310
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1721:
	mov rbx, 8
	imul rsi, rbx
	mov rbx, qword _global_slits
	add rsi, rbx
	mov rsi, [rsi]
	mov rsi, [rsi]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1283:
	pop rbx
	mov rsi, rbx
	mov rdi, 2
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1285
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_push_const
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1285:
	pop rbx
	mov rsi, rbx
	mov rdi, 3
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1287
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1722
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1722:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _slit_317
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_318
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_322
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1288
	mov rbx, _slit_323
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_325
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1288:
	jmp .1259
.1287:
	pop rbx
	mov rsi, rbx
	mov rdi, 4
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1291
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 4294967295
	and rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 72], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, 32
	mov rcx, rbx
	shr rdi, cl
	mov rbx, qword [_rs_p]
	mov qword [rbx + 80], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1723
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1723:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 88], rbx
	mov rsi, _slit_326
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_327
	mov rsi, 15
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1292:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 80]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1293
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	imul rsi, rdi
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 72]
	add rsi, r8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	mov rdi, _slit_328
	mov r8, 12
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_329
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_330
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1292
.1293:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 88]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1724
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1724:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1291:
	pop rbx
	mov rsi, rbx
	mov rdi, 5
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1295
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, 4294967295
	and rsi, rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 96], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 16]
	mov rbx, 32
	mov rcx, rbx
	shr rdi, cl
	mov rbx, qword [_rs_p]
	mov qword [rbx + 104], rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1725
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1725:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 112], rbx
	mov rsi, _slit_331
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_332
	mov rsi, 15
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	push rbx
.1296:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 104]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1297
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 104]
	sub r8, rsi
	mov rsi, 1
	sub r8, rsi
	mov rsi, 8
	imul r8, rsi
	mov rsi, qword [_rs_p]
	mov rdi, qword [rsi + 96]
	add r8, rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1726
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1726:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _slit_317
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_318
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_333
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_334
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_335
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1296
.1297:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 112]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1727
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1727:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1295:
	pop rbx
	mov rsi, rbx
	mov rdi, 6
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1299
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1728
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1728:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _slit_317
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_318
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_336
	mov rsi, 14
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1729
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1729:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1299:
	pop rbx
	mov rsi, rbx
	mov rdi, 7
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1301
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1730
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1730:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 120], rbx
	mov rsi, _slit_337
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_338
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1731
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1731:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1732
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1732:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 128], rax
	mov rbx, 0
	push rbx
.1302:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 128]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1303
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	imul rsi, rdi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_339
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 120]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_340
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_341
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1302
.1303:
	add rsp, 8
	jmp .1259
.1301:
	pop rbx
	mov rsi, rbx
	mov rdi, 8
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1305
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1733
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1733:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 136], rbx
	mov rsi, _slit_342
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_343
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1734
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1734:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, 16
	add rsi, rbx
	mov rsi, [rsi]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	mov rbx, rsi
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rbx, r8
	setb dil
	test rdi, rdi
	jnz .1735
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1735:
	mov rbx, 24
	imul rsi, rbx
	mov rbx, qword _global_global_var_context
	add rsi, rbx
	mov rbx, 4
	add rsi, rbx
	mov esi, [rsi]
	mov rbx, 8
	mov rax, rsi
	xor rdx, rdx
	div rbx
	mov rbx, qword [_rs_p]
	mov qword [rbx + 144], rax
	mov rbx, 0
	push rbx
.1306:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 144]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1307
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 144]
	sub r8, rsi
	mov rsi, 1
	sub r8, rsi
	mov rsi, 8
	imul r8, rsi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1736
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1736:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _slit_317
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_318
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_344
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_345
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_346
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1306
.1307:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 136]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1737
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1737:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1305:
	pop rbx
	mov rsi, rbx
	mov rdi, 9
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1309
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_347
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_348
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_349
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_350
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_351
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1738
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1738:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1309:
	pop rbx
	mov rsi, rbx
	mov rdi, 10
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1311
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_352
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_353
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_354
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_355
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1739
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1739:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1311:
	pop rbx
	mov rsi, rbx
	mov rdi, 11
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1313
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_356
	mov rdi, 6
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_357
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_358
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1740
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1740:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1313:
	pop rbx
	mov rsi, rbx
	mov rdi, 12
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1315
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_flush
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_359
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 16]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1315:
	pop rbx
	mov rsi, rbx
	mov rdi, 18
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1317
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_367
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1741
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1741:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1317:
	pop rbx
	mov rsi, rbx
	mov rdi, 19
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1319
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_368
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_369
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1742
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1742:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1743
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1743:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1319:
	pop rbx
	mov rsi, rbx
	mov rdi, 20
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1321
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_370
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_371
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1744
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1744:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1745
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1745:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1321:
	pop rbx
	mov rsi, rbx
	mov rdi, 21
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1323
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_372
	mov rdi, 6
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_373
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1746
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1746:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1747
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1747:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1323:
	pop rbx
	mov rsi, rbx
	mov rdi, 22
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1325
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_374
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_375
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1748
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1748:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1749
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1749:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1750
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1750:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1325:
	pop rbx
	mov rsi, rbx
	mov rdi, 23
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1327
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_376
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_377
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1751
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1751:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 13
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1752
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1752:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1753
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1753:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1327:
	pop rbx
	mov rsi, rbx
	mov rdi, 24
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1329
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_378
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1329:
	pop rbx
	mov rsi, rbx
	mov rdi, 25
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1331
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_379
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1331:
	pop rbx
	mov rsi, rbx
	mov rdi, 26
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1333
	mov rbx, 12
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_release
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1754
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1754:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_380
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_381
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1755
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1755:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1756
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1756:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1757
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1757:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1333:
	pop rbx
	mov rsi, rbx
	mov rdi, 27
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1335
	mov rbx, 11
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_382
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_383
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1758
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1758:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 11
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1759
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1759:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1259
.1335:
	pop rbx
	mov rsi, rbx
	mov rdi, 28
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1337
	mov rbx, 11
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_384
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_385
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1760
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1760:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 11
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1761
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1761:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1259
.1337:
	pop rbx
	mov rsi, rbx
	mov rdi, 65
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1339
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_386
	mov rdi, 6
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_387
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_388
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1762
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1762:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1339:
	pop rbx
	mov rsi, rbx
	mov rdi, 29
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1341
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_404
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_405
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1763
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1763:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1764
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1764:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1341:
	pop rbx
	mov rsi, rbx
	mov rdi, 30
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1343
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_406
	mov rdi, 4
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_407
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1765
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1765:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1766
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1766:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1343:
	pop rbx
	mov rsi, rbx
	mov rdi, 31
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1345
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_408
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1767
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1767:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1345:
	pop rbx
	mov rsi, rbx
	mov rdi, 32
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1347
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_409
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_410
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1768
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1768:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1769
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1769:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1347:
	pop rbx
	mov rsi, rbx
	mov rdi, 33
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1349
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 40]
	mov rbx, rdi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1770
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1770:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1771
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1771:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1349:
	pop rbx
	mov rsi, rbx
	mov rdi, 34
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1351
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_dup
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1259
.1351:
	pop rbx
	mov rsi, rbx
	mov rdi, 35
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1353
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1354
	mov rbx, 1
	mov rsi, qword _global_rallocator_stack.len
	mov rdi, qword [rsi + 0]
	sub rbx, rdi
	mov rsi, 8
	imul rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1772
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1772:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _slit_317
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_318
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_413
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_414
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1356
.1354:
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	sub rsi, rbx
	mov rbx, qword _global_rallocator_stack
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_dup
	mov [_rs_p], rsp
	mov rsp, rbp
.1356:
	jmp .1259
.1353:
	pop rbx
	mov rsi, rbx
	mov rdi, 36
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1358
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	xor rdi, rdi
	cmp rsi, rbx
	setb dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1359
	mov rbx, 2
	mov rsi, qword _global_rallocator_stack.len
	mov rdi, qword [rsi + 0]
	sub rbx, rdi
	mov rsi, 8
	imul rbx, rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1773
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1773:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, _slit_317
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_318
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_415
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_416
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1361
.1359:
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	sub rsi, rbx
	mov rbx, qword _global_rallocator_stack
	add rsi, rbx
	xor rbx, rbx
	mov bl, [rsi]
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_dup
	mov [_rs_p], rsp
	mov rsp, rbp
.1361:
	jmp .1259
.1358:
	pop rbx
	mov rsi, rbx
	mov rdi, 37
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1363
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 48]
	mov rbx, rdi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1774
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1774:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1775
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1775:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1776
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1776:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1363:
	pop rbx
	mov rsi, rbx
	mov rdi, 38
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1365
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 56], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 48], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, qword [_rs_p]
	mov rdi, qword [rbx + 56]
	mov rbx, rdi
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1777
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1777:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1778
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1778:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1779
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1779:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1780
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1780:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1365:
	pop rbx
	mov rsi, rbx
	mov rdi, 39
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1367
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	seta dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1368
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack.top
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_rallocator_stack.len
	mov rsi, qword [rbx + 0]
	dec rsi
	mov rbx, qword _global_rallocator_stack.len
	mov qword [rbx + 0], rsi
	pop rdi
	mov r8, rdi
	mov r9, 14
	xor r10, r10
	cmp r8, r9
	setb r10b
	test r10, r10
	jnz .1781
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1781:
	mov r8, qword _global_rallocator_mask
	add rdi, r8
	mov r8, 0
	mov byte [rdi], r8b
	jmp .1370
.1368:
	mov rbx, _slit_417
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1370:
	jmp .1259
.1367:
	pop rbx
	mov rsi, rbx
	mov rdi, 40
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1372
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1782
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1782:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_418
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_419
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_420
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_421
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_422
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1783
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1783:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1784
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1784:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1785
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1785:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1372:
	pop rbx
	mov rsi, rbx
	mov rdi, 41
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1374
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1786
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1786:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_423
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_424
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_425
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_426
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_427
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1787
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1787:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1788
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1788:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1789
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1789:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1374:
	pop rbx
	mov rsi, rbx
	mov rdi, 42
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1376
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1790
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1790:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_428
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_429
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_430
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_431
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_432
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1791
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1791:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1792
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1792:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1793
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1793:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1376:
	pop rbx
	mov rsi, rbx
	mov rdi, 43
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1378
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1794
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1794:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_433
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_434
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_435
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_436
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_437
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1795
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1795:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1796
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1796:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1797
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1797:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1378:
	pop rbx
	mov rsi, rbx
	mov rdi, 44
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1380
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1798
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1798:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_438
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_439
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_440
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_441
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_442
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1799
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1799:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1800
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1800:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1801
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1801:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1380:
	pop rbx
	mov rsi, rbx
	mov rdi, 45
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1382
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1802
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1802:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_443
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_444
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_445
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_446
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_447
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1803
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1803:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1804
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1804:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1805
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1805:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1382:
	pop rbx
	mov rsi, rbx
	mov rdi, 46
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1384
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1806
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1806:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_448
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_449
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_450
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_451
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_452
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1807
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1807:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1808
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1808:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1809
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1809:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1384:
	pop rbx
	mov rsi, rbx
	mov rdi, 47
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1386
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1810
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1810:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_453
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_454
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_455
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_456
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_457
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1811
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1811:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1812
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1812:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1813
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1813:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1386:
	pop rbx
	mov rsi, rbx
	mov rdi, 48
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1388
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1814
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1814:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_458
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_459
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_460
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_461
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_462
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1815
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1815:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1816
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1816:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1817
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1817:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1388:
	pop rbx
	mov rsi, rbx
	mov rdi, 49
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1390
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1818
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1818:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 48], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_463
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_464
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_465
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_466
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_467
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 48]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1819
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1819:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1820
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1820:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1821
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1821:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1390:
	pop rbx
	mov rsi, rbx
	mov rdi, 50
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1392
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_468
	mov rdi, 11
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_469
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1822
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1822:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1823
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1823:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1392:
	pop rbx
	mov rsi, rbx
	mov rdi, 51
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1394
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_470
	mov rdi, 11
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_471
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.16.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1824
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1824:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1825
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1825:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1394:
	pop rbx
	mov rsi, rbx
	mov rdi, 52
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1396
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_487
	mov rdi, 12
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_488
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.32.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1826
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1826:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1827
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1827:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1396:
	pop rbx
	mov rsi, rbx
	mov rdi, 53
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1398
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 40], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_504
	mov rdi, 12
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_505
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1828
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1828:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1829
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1829:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1398:
	pop rbx
	mov rsi, rbx
	mov rdi, 54
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1400
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1830
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1830:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
	mov rsi, _slit_506
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_507
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_508
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.8.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_509
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_510
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1831
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1831:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1832
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1832:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1400:
	pop rbx
	mov rsi, rbx
	mov rdi, 55
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1402
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_alloc
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 14
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1833
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1833:
	mov rdi, qword _global_rallocator_mask
	add rsi, rdi
	mov rdi, 1
	mov byte [rsi], dil
	mov rsi, qword [_rs_p]
	mov qword [rsi + 40], rbx
	mov rsi, _slit_511
	mov rdi, 5
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_512
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_513
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.16.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_514
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_515
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 40]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1834
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1834:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	mov rdi, 14
	xor r8, r8
	cmp rbx, rdi
	setb r8b
	test r8, r8
	jnz .1835
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1835:
	mov rbx, qword _global_rallocator_mask
	add rsi, rbx
	mov rbx, 0
	mov byte [rsi], bl
	jmp .1259
.1402:
	pop rbx
	mov rsi, rbx
	mov rdi, 56
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1404
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_516
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.32.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_517
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_518
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1836
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1836:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1404:
	pop rbx
	mov rsi, rbx
	mov rdi, 57
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1406
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 32], rsi
	mov rbx, _slit_519
	mov rdi, 5
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_520
	mov rsi, 3
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call Reg.64.to_str
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_521
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 32]
	mov rbx, rsi
	push rsi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1837
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1837:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1406:
	pop rbx
	mov rsi, rbx
	mov rdi, 58
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1408
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_522
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1838
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1838:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1259
.1408:
	pop rbx
	mov rsi, rbx
	mov rdi, 59
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1410
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_523
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1839
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1839:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1840
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1840:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1259
.1410:
	pop rbx
	mov rsi, rbx
	mov rdi, 60
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1412
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_524
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1841
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1841:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1842
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1842:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1843
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1843:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1259
.1412:
	pop rbx
	mov rsi, rbx
	mov rdi, 61
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1414
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_525
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1844
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1844:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1845
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1845:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1846
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1846:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1847
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1847:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1259
.1414:
	pop rbx
	mov rsi, rbx
	mov rdi, 62
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1416
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 5
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_526
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1848
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1848:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1849
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1849:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1850
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1850:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1851
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1851:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 5
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1852
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1852:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1259
.1416:
	pop rbx
	mov rsi, rbx
	mov rdi, 63
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1418
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 5
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_527
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1853
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1853:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1854
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1854:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1855
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1855:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1856
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1856:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 5
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1857
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1857:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 3
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1858
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1858:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1259
.1418:
	pop rbx
	mov rsi, rbx
	mov rdi, 64
	xor r8, r8
	cmp rsi, rdi
	sete r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1420
	mov rbx, 13
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 4
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 3
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 5
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 12
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 2
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call r_pop_r
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_528
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 13
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call rallocator_stack_c_c
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1859
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_302
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1859:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 1
	mov byte [rbx], sil
	mov rbx, 2
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1860
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1860:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 1
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1861
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1861:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 12
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1862
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1862:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 5
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1863
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1863:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 3
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1864
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1864:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 4
	mov rsi, rbx
	mov rdi, 14
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	test r8, r8
	jnz .1865
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_314
	mov rdx, 59
	syscall
	mov rdi, 1
	jmp _exit
.1865:
	mov rsi, qword _global_rallocator_mask
	add rbx, rsi
	mov rsi, 0
	mov byte [rbx], sil
	jmp .1259
.1420:
	mov rbx, 0
	test rbx, rbx
	jnz .1866
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_529
	mov rdx, 73
	syscall
	mov rdi, 1
	jmp _exit
.1866:
.1421:
.1259:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 8]
	inc rsi
	mov rbx, qword [_rs_p]
	mov qword [rbx + 8], rsi
	jmp .1256
.1257:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 152
	ret
stas.gen:
	sub rsp, 16
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_241
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_is_object_file
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1422
	mov rbx, _slit_244
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_245
	mov rsi, 26
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_246
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_247
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1424
.1422:
	mov rbx, _slit_248
	mov rsi, 23
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_249
	mov rsi, 27
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_250
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1424:
	mov rbx, _slit_251
	mov rsi, 7
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_252
	mov rsi, 18
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_253
	mov rsi, 27
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_254
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_255
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_256
	mov rsi, 10
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_257
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_258
	mov rsi, 6
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_259
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_260
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_261
	mov rsi, 4
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, qword _global_ir_stream.len
	mov rdi, qword [rsi + 0]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call gen_range
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_is_object_file
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1425
	mov rbx, _slit_530
	mov rsi, 17
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1427
.1425:
	mov rbx, _slit_531
	mov rsi, 16
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1427:
	mov rbx, 0
	push rbx
.1428:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_slits.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1429
	pop rbx
	mov rsi, rbx
	mov rdi, _slit_532
	mov r8, 6
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_533
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, 1024
	xor r9, r9
	cmp rdi, r8
	setb r9b
	test r9, r9
	jnz .1867
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_310
	mov rdx, 58
	syscall
	mov rdi, 1
	jmp _exit
.1867:
	mov rdi, 8
	imul rsi, rdi
	mov rdi, qword _global_slits
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	mov r8, qword [_rs_p]
	mov qword [r8 + 0], rsi
	mov r8, qword [_rs_p]
	mov qword [r8 + 8], rdi
	mov r8, 0
	push rbx
	push r8
.1430:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1431
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 8]
	add rsi, r8
	xor rdi, rdi
	mov dil, [rsi]
	push rbx
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_534
	mov rsi, 2
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1430
.1431:
	add rsp, 8
	mov rbx, _slit_535
	mov rsi, 1
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1428
.1429:
	add rsp, 8
	mov rbx, qword _global_is_object_file
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1432
	mov rbx, _slit_536
	mov rsi, 23
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1434
.1432:
	mov rbx, _slit_537
	mov rsi, 25
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
.1434:
	mov rbx, 0
	push rbx
.1435:
	pop rbx
	mov rsi, rbx
	mov rdi, qword _global_global_var_context.len
	mov r8, qword [rdi + 0]
	xor rdi, rdi
	cmp rsi, r8
	setb dil
	push rbx
	push rdi
	pop rbx
	test rbx, rbx
	jz .1436
	mov rbx, _slit_538
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_global_var_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1868
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1868:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_global_var_context
	add rsi, rdi
	mov rdi, 16
	add rsi, rdi
	mov rsi, [rsi]
	mov rdi, rsi
	mov r8, 8
	add rdi, r8
	mov rsi, [rsi]
	push rbx
	push rdi
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_539
	mov rsi, 5
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, rsi
	mov r8, qword _global_global_var_context.len
	mov r9, qword [r8 + 0]
	xor r8, r8
	cmp rdi, r9
	setb r8b
	test r8, r8
	jnz .1869
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_127
	mov rdx, 66
	syscall
	mov rdi, 1
	jmp _exit
.1869:
	mov rdi, 24
	imul rsi, rdi
	mov rdi, qword _global_global_var_context
	add rsi, rdi
	mov rdi, 4
	add rsi, rdi
	mov esi, [rsi]
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwriteu
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	inc rbx
	push rbx
	jmp .1435
.1436:
	add rsp, 8
	mov rbx, _slit_540
	mov rsi, 12
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_541
	mov rsi, 11
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_542
	mov rsi, 13
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_543
	mov rsi, 8
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwrite
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fwritec
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_fwrite_buffer.fd_loc
	mov rsi, qword [rbx + 0]
	mov rbx, qword _global_fwrite_buffer
	mov rdi, qword _global_fwrite_buffer.len
	mov r8, qword [rdi + 0]
	mov rdi, 1
	mov rax, rdi
	mov rdx, r8
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, qword _global_fwrite_buffer.len
	mov rsi, qword [rbx + 0]
	xor rbx, rbx
	cmp rax, rsi
	sete bl
	test rbx, rbx
	jnz .1870
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_243
	mov rdx, 60
	syscall
	mov rdi, 1
	jmp _exit
.1870:
	mov rbx, 0
	mov rsi, qword _global_fwrite_buffer.len
	mov qword [rsi + 0], rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 16
	ret
usage:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_0
	mov rsi, 40
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_1
	mov rsi, 32
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_2
	mov rsi, 61
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_3
	mov rsi, 73
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_4
	mov rsi, 67
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_5
	mov rsi, 70
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_6
	mov rsi, 66
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_7
	mov rsi, 38
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
parse_backend_type:
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _slit_14
	mov r8, 4
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1437
	mov rbx, 1
	mov rsi, qword _global_backend_type
	mov qword [rsi + 0], rbx
	jmp .1438
.1437:
	mov rbx, qword [rsp + 8]
	mov rsi, qword [rsp + 0]
	mov rdi, _slit_15
	mov r8, 4
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1440
	mov rbx, 2
	mov rsi, qword _global_backend_type
	mov qword [rsi + 0], rbx
	jmp .1438
.1440:
	mov rbx, _slit_16
	mov rsi, 15
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_19
	mov rsi, 7
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1441:
.1438:
	add rsp, 8
	add rsp, 8
	mov rbp, rsp
	mov rsp, [_rs_p]
	ret
execute_fasm:
	sub rsp, 72
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 0], rsi
	pop rdi
	mov qword [rbx + 8], rdi
	mov rbx, qword [_rs_p]
	pop r8
	mov qword [rbx + 16], r8
	pop r9
	mov qword [rbx + 24], r9
	mov rbx, qword [_rs_p]
	add rbx, 32
	mov r10, rbx
	mov r11, qword [_rs_p]
	mov r12, qword [r11 + 8]
	mov r13, qword [r11 + 0]
	mov qword [r10], r12
	mov r10, 8
	add rbx, r10
	mov r10, rbx
	mov r11, qword [_rs_p]
	mov r12, qword [r11 + 24]
	mov r13, qword [r11 + 16]
	mov qword [r10], r12
	mov r10, 8
	add rbx, r10
	mov r10, rbx
	mov r11, _slit_545
	mov r12, 2
	mov qword [r10], r11
	mov r10, 8
	add rbx, r10
	mov r10, rbx
	mov r11, _slit_546
	mov r12, 7
	mov qword [r10], r11
	mov r10, 8
	add rbx, r10
	mov r10, 0
	mov qword [rbx], r10
	mov rbx, _slit_547
	mov r10, 13
	mov r11, qword [_rs_p]
	add r11, 32
	push rbx
	push r10
	push r11
	mov rbp, rsp
	mov rsp, [_rs_p]
	call child_execve_and_shut_up
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 72
	ret
main:
	sub rsp, 81
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	mov rsi, 1
	xor rdi, rdi
	cmp rbx, rsi
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1442
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1442:
	mov rbx, qword _global_is_object_file
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, qword [_rs_p]
	mov rsi, 0
	mov byte [rbx], sil
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 1], rbx
	mov rsi, 18446744073709551615
	mov rdi, qword _global_fwrite_buffer.fd_loc
	mov qword [rdi + 0], rsi
	mov r8, 1
	mov r9, qword _global_backend_type
	mov qword [r9 + 0], r8
	mov r10, 0
	mov r11, 0
	mov r12, qword [_rs_p]
	mov qword [r12 + 33], r11
	mov qword [r12 + 41], r10
	mov r12, 0
	mov r13, 0
	mov r14, qword [_rs_p]
	mov qword [r14 + 49], r13
	mov qword [r14 + 57], r12
	mov r14, 0
	mov r15, qword [_rs_p]
	mov qword [r15 + 9], r14
	mov r15, qword _global_debug_symbols
	mov rcx, 0
	mov byte [r15], cl
	mov r15, 1
	push r15
.1444:
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_arg_p]
	mov rdi, [rdi]
	xor r8, r8
	cmp rsi, rdi
	setb r8b
	push rbx
	push r8
	pop rbx
	test rbx, rbx
	jz .1445
	pop rbx
	mov rsi, rbx
	push rbx
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call args_a_b
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 17], rsi
	pop rdi
	mov qword [rbx + 25], rdi
	mov rbx, qword [_rs_p]
	mov r8, qword [rbx + 25]
	mov r9, qword [rbx + 17]
	mov rbx, _slit_8
	mov r10, 2
	push r8
	push r9
	push rbx
	push r10
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1446
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1448
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1448:
	mov rbx, 1
	mov rsi, qword [_rs_p]
	mov qword [rsi + 9], rbx
	jmp .1447
.1446:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, _slit_9
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1451
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1452
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1452:
	mov rbx, 2
	mov rsi, qword [_rs_p]
	mov qword [rsi + 9], rbx
	jmp .1447
.1451:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, _slit_10
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1455
	mov rbx, qword _global_debug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1456
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1456:
	mov rbx, qword _global_debug_symbols
	mov rsi, 1
	mov byte [rbx], sil
	jmp .1447
.1455:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, _slit_11
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1459
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1460
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1460:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 1], rsi
	mov rbx, qword [_arg_p]
	mov rbx, [rbx]
	push rbx
	jmp .1447
.1459:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, _slit_12
	mov r8, 6
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, _slit_13
	mov r8, 2
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	pop rsi
	or rsi, rbx
	push rsi
	pop rbx
	test rbx, rbx
	jz .1463
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 0
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1447
.1463:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1465
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	mov rdi, qword [rbx + 49]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1467
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1467:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 49], rdi
	mov qword [rbx + 57], rsi
	jmp .1466
.1465:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1470
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rdi, qword [rbx + 33]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1471
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1471:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	mov rbx, qword [_rs_p]
	mov qword [rbx + 33], rdi
	mov qword [rbx + 41], rsi
	jmp .1466
.1470:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1474
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 25]
	mov rdi, qword [rbx + 17]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call parse_backend_type
	mov [_rs_p], rsp
	mov rsp, rbp
	jmp .1466
.1474:
	mov rbx, 0
	test rbx, rbx
	jnz .1871
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_22
	mov rdx, 55
	syscall
	mov rdi, 1
	jmp _exit
.1871:
.1475:
.1466:
	mov rbx, 0
	mov rsi, qword [_rs_p]
	mov qword [rsi + 9], rbx
.1464:
.1447:
	pop rbx
	inc rbx
	push rbx
	jmp .1444
.1445:
	add rsp, 8
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1476
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 1
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1478
	mov rbx, _slit_23
	mov rsi, 18
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_19
	mov rsi, 7
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
	jmp .1479
.1478:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 9]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1481
	mov rbx, _slit_24
	mov rsi, 19
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_19
	mov rsi, 7
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1481:
.1479:
.1476:
	mov rbx, qword _global_backend_type
	mov rsi, qword [rbx + 0]
	mov rbx, 2
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	test rdi, rdi
	jnz .1872
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_25
	mov rdx, 90
	syscall
	mov rdi, 1
	jmp _exit
.1872:
	mov rbx, qword _global_debug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	test rdi, rdi
	jnz .1873
	mov eax, 1
	mov edi, 2
	mov rsi, _slit_26
	mov rdx, 100
	syscall
	mov rdi, 1
	jmp _exit
.1873:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	mov rdi, qword [rbx + 49]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1482
	mov rbx, _slit_27
	mov rsi, 16
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_19
	mov rsi, 7
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call usage
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1482:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rdi, qword [rbx + 33]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1484
	mov rbx, qword _global_debug_symbols
	xor rsi, rsi
	mov sil, [rbx]
	mov rbx, qword _global_backend_type
	mov rdi, qword [rbx + 0]
	mov rbx, 2
	xor r8, r8
	cmp rdi, rbx
	sete r8b
	or rsi, r8
	push rsi
	pop rbx
	test rbx, rbx
	jz .1486
	mov rbx, _slit_28
	mov rsi, 3
	push rbx
	push rsi
	jmp .1488
.1486:
	mov rbx, _slit_29
	mov rsi, 5
	push rbx
	push rsi
.1488:
	mov rbx, qword [_rs_p]
	pop rsi
	mov qword [rbx + 33], rsi
	pop rdi
	mov qword [rbx + 41], rdi
	jmp .1489
.1484:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rdi, qword [rbx + 33]
	mov rbx, _slit_30
	mov r8, 1
	push rsi
	push rdi
	push rbx
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call streq
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	test rbx, rbx
	jz .1490
	mov rbx, qword [_rs_p]
	mov rsi, 1
	mov byte [rbx], sil
.1490:
.1489:
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	test rsi, rsi
	sete sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .1492
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rdi, qword [rbx + 33]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call new_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, _slit_32
	mov r8, 4
	push rbx
	push rsi
	push rdi
	push r8
	mov rbp, rsp
	mov rsp, [_rs_p]
	call push_string_view
	mov [_rs_p], rsp
	mov rsp, rbp
	pop rbx
	mov rsi, rbx
	mov rdi, qword [_rs_p]
	mov qword [rdi + 65], rsi
	mov rdi, rbx
	mov r8, 8
	add rdi, r8
	mov rbx, [rbx]
	push rdi
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call fd_new_file_for_writing
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_fwrite_buffer.fd_loc
	pop rsi
	mov qword [rbx + 0], rsi
	jmp .1494
.1492:
	mov rbx, 1
	mov rsi, qword _global_fwrite_buffer.fd_loc
	mov qword [rsi + 0], rbx
.1494:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 57]
	mov rdi, qword [rbx + 49]
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.scan_file
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.parse
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword _global_main_fn_idx
	mov rsi, qword [rbx + 0]
	mov rbx, 18446744073709551615
	xor rdi, rdi
	cmp rsi, rbx
	sete dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1108
	mov rbx, _slit_238
	mov rsi, 16
	mov rdi, 27
	push rbx
	push rsi
	push rdi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_17
	mov rsi, 3
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_18
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, _slit_19
	mov rsi, 7
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_20
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 27
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, _slit_21
	mov rsi, 4
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 2
	pop rsi
	pop rdi
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, rbx
	syscall
	mov rbx, 10
	push rbx
	mov rbp, rsp
	mov rsp, [_rs_p]
	call eputc
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1108:
	mov rbx, qword _global_main_fn_idx
	mov rsi, qword [rbx + 0]
	push rsi
	mov rbp, rsp
	mov rsp, [_rs_p]
	call dce.recurse_function
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbp, rsp
	mov rsp, [_rs_p]
	call stas.gen
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	xor rsi, rsi
	mov sil, [rbx]
	push rsi
	pop rbx
	test rbx, rbx
	jz .1495
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 81
	ret
.1495:
	mov rbx, qword _global_fwrite_buffer.fd_loc
	mov rsi, qword [rbx + 0]
	mov rbx, 3
	mov rax, rbx
	mov rdi, rsi
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .1497
	mov rbx, _slit_544
	mov rsi, 39
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1497:
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 65]
	mov rbx, rsi
	mov rdi, 8
	add rbx, rdi
	mov rsi, [rsi]
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 41]
	mov r9, qword [rdi + 33]
	push rbx
	push rsi
	push r8
	push r9
	mov rbp, rsp
	mov rsp, [_rs_p]
	call execute_fasm
	mov [_rs_p], rsp
	mov rsp, rbp
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 1]
	mov rbx, 0
	xor rdi, rdi
	cmp rsi, rbx
	setne dil
	push rdi
	pop rbx
	test rbx, rbx
	jz .1499
	mov rbx, qword [_rs_p]
	add rbx, 73
	mov rsi, 0
	mov qword [rbx], rsi
	mov rbx, qword [_rs_p]
	mov rsi, qword [rbx + 41]
	mov rdi, qword [rbx + 33]
	mov rbx, qword [_arg_p]
	add rbx, 8
	mov rdi, qword [_rs_p]
	mov r8, qword [rdi + 1]
	mov rdi, 1
	add r8, rdi
	mov rdi, 8
	imul r8, rdi
	add rbx, r8
	mov rdi, qword [_rs_p]
	add rdi, 73
	mov r8, 59
	mov rax, r8
	mov rdx, rdi
	mov rdi, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 0
	xor rsi, rsi
	cmp rax, rbx
	setl sil
	push rsi
	pop rbx
	test rbx, rbx
	jz .1501
	mov rbx, _slit_556
	mov rsi, 29
	mov rdi, 2
	mov r8, 1
	mov rax, r8
	mov rdx, rsi
	mov rsi, rbx
	mov rbx, rdi
	mov rdi, rbx
	syscall
	mov rbx, 1
	mov rsi, 60
	mov rax, rsi
	mov rdi, rbx
	syscall
.1501:
.1499:
	mov rbp, rsp
	mov rsp, [_rs_p]
	add rsp, 81
	ret
segment readable
_slit_0: db 115, 116, 97, 115, 32, 48, 46, 49, 46, 48, 32, 67, 111, 112, 121, 114, 105, 103, 104, 116, 32, 40, 67, 41, 32, 50, 48, 50, 50, 32, 32, 108, 45, 109, 46, 100, 101, 118, 10, 10, 0
_slit_1: db 85, 83, 65, 71, 69, 58, 32, 46, 47, 115, 116, 97, 115, 32, 91, 79, 80, 84, 73, 79, 78, 83, 93, 32, 91, 70, 73, 76, 69, 93, 10, 10, 0
_slit_2: db 9, 45, 111, 32, 60, 111, 117, 116, 112, 117, 116, 62, 32, 32, 32, 32, 32, 32, 32, 83, 112, 101, 99, 105, 102, 121, 32, 39, 45, 111, 32, 45, 39, 32, 116, 111, 32, 100, 117, 109, 112, 32, 97, 115, 115, 101, 109, 98, 108, 121, 32, 116, 111, 32, 115, 116, 100, 111, 117, 116, 10, 0
_slit_3: db 9, 45, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 68, 101, 98, 117, 103, 32, 115, 121, 109, 98, 111, 108, 115, 46, 32, 77, 111, 115, 116, 32, 101, 102, 102, 101, 99, 116, 105, 118, 101, 32, 119, 105, 116, 104, 32, 116, 104, 101, 32, 96, 110, 97, 115, 109, 96, 32, 98, 97, 99, 107, 101, 110, 100, 10, 0
_slit_4: db 9, 45, 98, 32, 60, 98, 97, 99, 107, 101, 110, 100, 62, 32, 32, 32, 32, 32, 32, 65, 115, 115, 101, 109, 98, 108, 101, 114, 115, 32, 96, 110, 97, 115, 109, 96, 32, 111, 114, 32, 96, 102, 97, 115, 109, 96, 32, 97, 115, 32, 99, 111, 109, 112, 105, 108, 101, 114, 32, 98, 97, 99, 107, 101, 110, 100, 10, 0
_slit_5: db 9, 45, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 69, 120, 101, 99, 117, 116, 101, 32, 102, 105, 108, 101, 32, 97, 102, 116, 101, 114, 32, 99, 111, 109, 112, 105, 108, 105, 110, 103, 46, 32, 65, 114, 103, 117, 109, 101, 110, 116, 115, 32, 97, 102, 116, 101, 114, 32, 116, 104, 105, 115, 10, 0
_slit_6: db 9, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 119, 105, 116, 99, 104, 32, 119, 105, 108, 108, 32, 105, 103, 110, 111, 114, 101, 100, 32, 97, 110, 100, 32, 112, 97, 115, 115, 101, 100, 32, 116, 111, 32, 116, 104, 101, 32, 112, 114, 111, 103, 114, 97, 109, 46, 10, 0
_slit_7: db 9, 45, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 83, 104, 111, 119, 32, 116, 104, 105, 115, 32, 109, 101, 115, 115, 97, 103, 101, 10, 10, 0
_slit_8: db 45, 111, 0
_slit_9: db 45, 98, 0
_slit_10: db 45, 103, 0
_slit_11: db 45, 114, 0
_slit_12: db 45, 45, 104, 101, 108, 112, 0
_slit_13: db 45, 104, 0
_slit_14: db 102, 97, 115, 109, 0
_slit_15: db 110, 97, 115, 109, 0
_slit_16: db 117, 110, 107, 110, 111, 119, 110, 32, 98, 97, 99, 107, 101, 110, 100, 0
_slit_17: db 91, 49, 109, 0
_slit_18: db 91, 51, 49, 109, 0
_slit_19: db 70, 65, 84, 65, 76, 58, 32, 0
_slit_20: db 91, 51, 57, 109, 0
_slit_21: db 91, 50, 50, 109, 0
_slit_22: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 116, 97, 115, 46, 115, 116, 97, 115, 58, 49, 53, 48, 58, 55, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_23: db 115, 117, 112, 112, 108, 121, 32, 111, 117, 116, 112, 117, 116, 32, 102, 105, 108, 101, 0
_slit_24: db 115, 117, 112, 112, 108, 121, 32, 98, 97, 99, 107, 101, 110, 100, 32, 116, 121, 112, 101, 0
_slit_25: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 116, 97, 115, 46, 115, 116, 97, 115, 58, 49, 54, 54, 58, 51, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 110, 97, 115, 109, 32, 98, 97, 99, 107, 101, 110, 100, 32, 110, 111, 116, 32, 115, 117, 112, 112, 111, 114, 116, 101, 100, 32, 121, 101, 116, 39, 10, 0
_slit_26: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 116, 97, 115, 46, 115, 116, 97, 115, 58, 49, 54, 55, 58, 50, 55, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 111, 98, 106, 101, 99, 116, 32, 102, 105, 108, 101, 32, 43, 32, 108, 105, 110, 101, 32, 110, 117, 109, 98, 101, 114, 115, 32, 110, 111, 116, 32, 115, 117, 112, 112, 111, 114, 116, 101, 100, 39, 10, 0
_slit_27: db 115, 117, 112, 112, 108, 121, 32, 115, 116, 97, 115, 32, 102, 105, 108, 101, 0
_slit_28: db 97, 46, 111, 0
_slit_29: db 97, 46, 111, 117, 116, 0
_slit_30: db 45, 0
_slit_31: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 115, 116, 114, 105, 110, 103, 98, 117, 102, 102, 101, 114, 46, 115, 116, 97, 115, 58, 56, 58, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 83, 116, 114, 105, 110, 103, 32, 109, 101, 109, 111, 114, 121, 32, 101, 120, 99, 101, 101, 100, 101, 100, 32, 108, 105, 109, 105, 116, 39, 10, 0
_slit_32: db 46, 116, 109, 112, 0
_slit_33: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 111, 112, 101, 110, 32, 102, 105, 108, 101, 32, 39, 0
_slit_34: db 39, 10, 0
_slit_35: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 111, 112, 101, 110, 32, 102, 105, 108, 101, 32, 39, 0
_slit_36: db 39, 10, 0
_slit_37: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 115, 116, 97, 116, 32, 116, 104, 101, 32, 102, 105, 108, 101, 32, 100, 101, 115, 99, 114, 105, 112, 116, 111, 114, 10, 0
_slit_38: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 109, 109, 97, 112, 32, 102, 105, 108, 101, 32, 39, 0
_slit_39: db 39, 10, 0
_slit_40: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 99, 108, 111, 115, 101, 32, 102, 105, 108, 101, 32, 100, 101, 115, 99, 114, 105, 112, 116, 111, 114, 10, 0
_slit_41: db 117, 110, 116, 101, 114, 109, 105, 110, 97, 116, 101, 100, 32, 115, 116, 114, 105, 110, 103, 32, 108, 105, 116, 101, 114, 97, 108, 0
_slit_42: db 58, 0
_slit_43: db 58, 0
_slit_44: db 58, 32, 0
_slit_45: db 10, 0
_slit_46: db 101, 115, 99, 97, 112, 101, 32, 99, 104, 97, 114, 97, 99, 116, 101, 114, 32, 100, 111, 101, 115, 32, 110, 111, 116, 32, 101, 120, 105, 115, 116, 0
_slit_47: db 117, 110, 104, 97, 110, 100, 108, 101, 100, 32, 101, 115, 99, 97, 112, 101, 32, 99, 104, 97, 114, 97, 99, 116, 101, 114, 0
_slit_48: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 116, 111, 107, 101, 110, 115, 46, 115, 116, 97, 115, 58, 51, 57, 49, 58, 51, 56, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_49: db 102, 105, 108, 101, 32, 116, 111, 32, 105, 110, 99, 108, 117, 100, 101, 32, 105, 115, 32, 110, 111, 116, 32, 97, 32, 115, 116, 114, 105, 110, 103, 0
_slit_50: db 105, 110, 99, 108, 117, 100, 101, 0
_slit_51: db 123, 0
_slit_52: db 125, 0
_slit_53: db 45, 62, 0
_slit_54: db 102, 110, 0
_slit_55: db 95, 98, 114, 101, 97, 107, 112, 111, 105, 110, 116, 0
_slit_56: db 99, 111, 110, 115, 116, 0
_slit_57: db 97, 115, 115, 101, 114, 116, 0
_slit_58: db 97, 114, 103, 99, 0
_slit_59: db 97, 114, 103, 118, 0
_slit_60: db 114, 101, 116, 0
_slit_61: db 105, 102, 0
_slit_62: db 101, 108, 115, 101, 0
_slit_63: db 101, 108, 105, 102, 0
_slit_64: db 119, 104, 105, 108, 101, 0
_slit_65: db 98, 114, 101, 97, 107, 0
_slit_66: db 99, 111, 110, 116, 105, 110, 117, 101, 0
_slit_67: db 43, 0
_slit_68: db 45, 0
_slit_69: db 42, 0
_slit_70: db 47, 0
_slit_71: db 37, 0
_slit_72: db 43, 43, 0
_slit_73: db 45, 45, 0
_slit_74: db 37, 37, 0
_slit_75: db 62, 62, 0
_slit_76: db 60, 60, 0
_slit_77: db 38, 0
_slit_78: db 124, 0
_slit_79: db 126, 0
_slit_80: db 33, 0
_slit_81: db 94, 0
_slit_82: db 115, 119, 97, 112, 0
_slit_83: db 100, 117, 112, 0
_slit_84: db 111, 118, 101, 114, 0
_slit_85: db 111, 118, 101, 114, 50, 0
_slit_86: db 114, 111, 116, 0
_slit_87: db 114, 111, 116, 52, 0
_slit_88: db 100, 114, 111, 112, 0
_slit_89: db 61, 0
_slit_90: db 33, 61, 0
_slit_91: db 62, 0
_slit_92: db 60, 0
_slit_93: db 62, 61, 0
_slit_94: db 60, 61, 0
_slit_95: db 62, 115, 0
_slit_96: db 60, 115, 0
_slit_97: db 62, 61, 115, 0
_slit_98: db 60, 61, 115, 0
_slit_99: db 119, 56, 0
_slit_100: db 119, 49, 54, 0
_slit_101: db 119, 51, 50, 0
_slit_102: db 119, 54, 52, 0
_slit_103: db 114, 56, 0
_slit_104: db 114, 49, 54, 0
_slit_105: db 114, 51, 50, 0
_slit_106: db 114, 54, 52, 0
_slit_107: db 115, 121, 115, 99, 97, 108, 108, 48, 0
_slit_108: db 115, 121, 115, 99, 97, 108, 108, 49, 0
_slit_109: db 115, 121, 115, 99, 97, 108, 108, 50, 0
_slit_110: db 115, 121, 115, 99, 97, 108, 108, 51, 0
_slit_111: db 115, 121, 115, 99, 97, 108, 108, 52, 0
_slit_112: db 115, 121, 115, 99, 97, 108, 108, 53, 0
_slit_113: db 115, 121, 115, 99, 97, 108, 108, 54, 0
_slit_114: db 114, 101, 115, 101, 114, 118, 101, 0
_slit_115: db 97, 117, 116, 111, 0
_slit_116: db 112, 111, 112, 0
_slit_117: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 102, 105, 108, 101, 32, 116, 111, 32, 105, 110, 99, 108, 117, 100, 101, 0
_slit_118: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 116, 111, 107, 101, 110, 115, 46, 115, 116, 97, 115, 58, 51, 55, 55, 58, 50, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_119: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 0
_slit_120: db 58, 0
_slit_121: db 58, 0
_slit_122: db 58, 32, 0
_slit_123: db 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 110, 97, 109, 101, 32, 109, 117, 115, 116, 32, 110, 111, 116, 32, 98, 101, 32, 105, 110, 32, 105, 110, 115, 116, 114, 105, 110, 115, 105, 99, 0
_slit_124: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 48, 51, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_125: db 100, 117, 112, 108, 105, 99, 97, 116, 101, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 110, 97, 109, 101, 32, 97, 115, 32, 101, 120, 105, 115, 116, 105, 110, 103, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 110, 97, 109, 101, 0
_slit_126: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 50, 53, 58, 51, 49, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_127: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 52, 57, 58, 51, 49, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_128: db 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 110, 97, 109, 101, 32, 97, 115, 32, 100, 117, 112, 108, 105, 99, 97, 116, 101, 32, 116, 111, 112, 32, 108, 101, 118, 101, 108, 32, 118, 97, 114, 105, 97, 98, 108, 101, 32, 110, 97, 109, 101, 0
_slit_129: db 97, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 102, 111, 108, 108, 111, 119, 32, 97, 32, 99, 111, 110, 115, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 100, 101, 99, 108, 0
_slit_130: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 51, 56, 58, 53, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_131: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 49, 50, 48, 54, 58, 49, 51, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_132: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 57, 50, 58, 50, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_133: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 55, 49, 58, 50, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_134: db 117, 110, 99, 108, 111, 115, 101, 100, 32, 115, 99, 111, 112, 101, 32, 102, 111, 114, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 0
_slit_135: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 102, 117, 110, 99, 116, 105, 111, 110, 0
_slit_136: db 102, 117, 110, 99, 116, 105, 111, 110, 32, 110, 97, 109, 101, 32, 109, 117, 115, 116, 32, 110, 111, 116, 32, 98, 101, 32, 97, 110, 32, 105, 110, 116, 114, 105, 110, 115, 105, 99, 0
_slit_137: db 102, 117, 110, 99, 116, 105, 111, 110, 32, 114, 101, 116, 117, 114, 110, 32, 97, 110, 100, 32, 97, 114, 103, 117, 109, 101, 110, 116, 32, 99, 111, 117, 110, 116, 115, 32, 109, 117, 115, 116, 32, 98, 101, 32, 110, 117, 109, 98, 101, 114, 115, 0
_slit_138: db 110, 101, 119, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 112, 114, 111, 99, 101, 101, 100, 32, 97, 102, 116, 101, 114, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 104, 101, 97, 100, 101, 114, 0
_slit_139: db 100, 117, 112, 108, 105, 99, 97, 116, 101, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 110, 97, 109, 101, 0
_slit_140: db 102, 117, 110, 99, 116, 105, 111, 110, 32, 110, 97, 109, 101, 32, 97, 108, 114, 101, 97, 100, 121, 32, 101, 120, 105, 115, 116, 115, 32, 97, 115, 32, 118, 97, 114, 105, 97, 98, 108, 101, 32, 110, 97, 109, 101, 0
_slit_141: db 109, 97, 105, 110, 0
_slit_142: db 116, 104, 101, 32, 109, 97, 105, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 109, 117, 115, 116, 32, 97, 99, 99, 101, 112, 116, 32, 97, 110, 100, 32, 114, 101, 116, 117, 114, 110, 32, 122, 101, 114, 111, 32, 118, 97, 108, 117, 101, 115, 0
_slit_143: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 50, 48, 58, 51, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_144: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 50, 52, 58, 51, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_145: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 50, 56, 57, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_146: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 50, 57, 48, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_147: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 54, 49, 58, 49, 56, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_148: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 118, 97, 114, 105, 97, 98, 108, 101, 32, 100, 101, 99, 108, 0
_slit_149: db 118, 97, 114, 105, 97, 98, 108, 101, 32, 110, 97, 109, 101, 32, 109, 117, 115, 116, 32, 110, 111, 116, 32, 98, 101, 32, 97, 110, 32, 105, 110, 116, 114, 105, 110, 115, 105, 99, 0
_slit_150: db 118, 97, 114, 105, 97, 98, 108, 101, 32, 100, 101, 99, 108, 32, 109, 117, 115, 116, 32, 110, 111, 116, 32, 98, 101, 32, 97, 32, 102, 117, 110, 99, 116, 105, 111, 110, 0
_slit_151: db 118, 97, 114, 105, 97, 98, 108, 101, 32, 100, 101, 99, 108, 32, 109, 117, 115, 116, 32, 115, 112, 101, 99, 105, 102, 121, 32, 115, 105, 122, 101, 32, 105, 110, 32, 98, 121, 116, 101, 115, 0
_slit_152: db 100, 117, 112, 108, 105, 99, 97, 116, 101, 32, 116, 111, 112, 32, 108, 101, 118, 101, 108, 32, 118, 97, 114, 105, 97, 98, 108, 101, 32, 110, 97, 109, 101, 0
_slit_153: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 54, 51, 58, 53, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_154: db 117, 110, 107, 110, 111, 119, 110, 32, 116, 111, 112, 108, 101, 118, 101, 108, 32, 116, 111, 107, 101, 110, 0
_slit_155: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 52, 52, 51, 58, 51, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_156: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 49, 48, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_157: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 101, 118, 97, 108, 46, 115, 116, 97, 115, 58, 56, 58, 51, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_158: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 101, 118, 97, 108, 46, 115, 116, 97, 115, 58, 50, 49, 58, 50, 51, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_159: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 101, 118, 97, 108, 46, 115, 116, 97, 115, 58, 49, 53, 58, 50, 51, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_160: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 49, 50, 52, 56, 58, 50, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_161: db 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 109, 117, 115, 116, 32, 99, 111, 110, 116, 97, 105, 110, 32, 97, 32, 118, 97, 108, 117, 101, 0
_slit_162: db 109, 111, 114, 101, 32, 116, 104, 97, 110, 32, 111, 110, 101, 32, 117, 110, 104, 97, 110, 100, 108, 101, 100, 32, 118, 97, 108, 117, 101, 32, 111, 110, 32, 108, 101, 102, 116, 32, 111, 110, 32, 116, 104, 101, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 0
_slit_163: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 50, 57, 58, 49, 53, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_164: db 98, 97, 99, 107, 116, 114, 97, 99, 101, 0
_slit_165: db 91, 49, 109, 0
_slit_166: db 91, 51, 51, 109, 0
_slit_167: db 91, 51, 57, 109, 0
_slit_168: db 91, 50, 50, 109, 0
_slit_169: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 49, 50, 55, 51, 58, 50, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_170: db 117, 110, 107, 110, 111, 119, 110, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 118, 97, 114, 105, 97, 98, 108, 101, 0
_slit_171: db 110, 111, 32, 118, 97, 108, 117, 101, 32, 111, 110, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 97, 115, 115, 101, 114, 116, 105, 111, 110, 0
_slit_172: db 0
_slit_173: db 91, 49, 109, 0
_slit_174: db 91, 51, 49, 109, 0
_slit_175: db 58, 0
_slit_176: db 58, 0
_slit_177: db 58, 32, 0
_slit_178: db 91, 51, 57, 109, 0
_slit_179: db 91, 50, 50, 109, 0
_slit_180: db 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 0
_slit_181: db 39, 10, 0
_slit_182: db 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_183: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 32, 118, 97, 108, 117, 101, 115, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 0
_slit_184: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 52, 55, 58, 50, 52, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_185: db 100, 117, 112, 108, 105, 99, 97, 116, 101, 32, 118, 97, 114, 105, 97, 98, 108, 101, 32, 110, 97, 109, 101, 0
_slit_186: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 54, 49, 58, 51, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_187: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 112, 111, 112, 0
_slit_188: db 101, 120, 112, 101, 99, 116, 101, 100, 32, 110, 97, 109, 101, 32, 97, 102, 116, 101, 114, 32, 112, 111, 112, 0
_slit_189: db 99, 97, 110, 110, 111, 116, 32, 112, 111, 112, 32, 105, 110, 116, 111, 32, 97, 32, 98, 117, 102, 102, 101, 114, 0
_slit_190: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 116, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 112, 111, 112, 32, 105, 110, 116, 111, 32, 97, 110, 32, 97, 117, 116, 111, 109, 97, 116, 105, 99, 32, 118, 97, 114, 105, 97, 98, 108, 101, 0
_slit_191: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 52, 53, 52, 58, 56, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_192: db 99, 97, 110, 110, 111, 116, 32, 112, 111, 112, 32, 105, 110, 116, 111, 32, 97, 32, 98, 117, 102, 102, 101, 114, 0
_slit_193: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 116, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 112, 111, 112, 32, 105, 110, 116, 111, 32, 97, 110, 32, 97, 117, 116, 111, 109, 97, 116, 105, 99, 32, 118, 97, 114, 105, 97, 98, 108, 101, 0
_slit_194: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 52, 55, 57, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_195: db 117, 110, 107, 110, 111, 119, 110, 32, 97, 117, 116, 111, 32, 118, 97, 114, 105, 97, 98, 108, 101, 0
_slit_196: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 32, 118, 97, 108, 117, 101, 115, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 99, 97, 108, 108, 0
_slit_197: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 53, 51, 50, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_198: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 53, 53, 50, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_199: db 117, 110, 107, 110, 111, 119, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 99, 97, 108, 108, 32, 111, 114, 32, 118, 97, 114, 105, 97, 98, 108, 101, 0
_slit_200: db 110, 111, 32, 118, 97, 108, 117, 101, 32, 111, 110, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 105, 102, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_201: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 100, 101, 102, 115, 46, 115, 116, 97, 115, 58, 51, 56, 55, 58, 52, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_202: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 105, 102, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_203: db 97, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 99, 111, 109, 101, 32, 97, 102, 116, 101, 114, 32, 97, 110, 32, 105, 102, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_204: db 110, 111, 116, 32, 105, 110, 115, 105, 100, 101, 32, 119, 104, 105, 108, 101, 32, 108, 111, 111, 112, 32, 98, 111, 100, 121, 0
_slit_205: db 110, 111, 116, 32, 105, 110, 115, 105, 100, 101, 32, 119, 104, 105, 108, 101, 32, 108, 111, 111, 112, 32, 98, 111, 100, 121, 0
_slit_206: db 110, 111, 116, 32, 105, 110, 115, 105, 100, 101, 32, 119, 104, 105, 108, 101, 32, 108, 111, 111, 112, 32, 98, 111, 100, 121, 0
_slit_207: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 54, 54, 48, 58, 53, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_208: db 110, 111, 116, 32, 105, 110, 115, 105, 100, 101, 32, 119, 104, 105, 108, 101, 32, 108, 111, 111, 112, 32, 98, 111, 100, 121, 0
_slit_209: db 110, 111, 32, 118, 97, 108, 117, 101, 32, 111, 110, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 119, 104, 105, 108, 101, 32, 104, 101, 97, 100, 101, 114, 0
_slit_210: db 110, 111, 32, 118, 97, 108, 117, 101, 32, 111, 110, 32, 115, 116, 97, 99, 107, 32, 116, 111, 32, 99, 111, 110, 115, 117, 109, 101, 32, 102, 111, 114, 32, 101, 108, 115, 101, 32, 105, 102, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_211: db 115, 99, 111, 112, 101, 32, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 109, 111, 114, 101, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 116, 104, 97, 110, 32, 101, 120, 112, 101, 99, 116, 101, 100, 32, 40, 84, 79, 68, 79, 58, 32, 119, 114, 105, 116, 101, 32, 99, 111, 117, 110, 116, 41, 0
_slit_212: db 115, 99, 111, 112, 101, 32, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 108, 101, 115, 115, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 116, 104, 97, 110, 32, 101, 120, 112, 101, 99, 116, 101, 100, 32, 40, 84, 79, 68, 79, 58, 32, 119, 114, 105, 116, 101, 32, 99, 111, 117, 110, 116, 41, 0
_slit_213: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 101, 108, 115, 101, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_214: db 97, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 99, 111, 109, 101, 32, 97, 102, 116, 101, 114, 32, 97, 110, 32, 101, 108, 115, 101, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_215: db 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 109, 117, 115, 116, 32, 114, 101, 109, 97, 105, 110, 32, 116, 104, 101, 32, 115, 97, 109, 101, 32, 119, 105, 116, 104, 32, 115, 105, 110, 103, 108, 101, 32, 98, 114, 97, 110, 99, 104, 101, 115, 0
_slit_216: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 56, 50, 53, 58, 49, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_217: db 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 109, 117, 115, 116, 32, 114, 101, 109, 97, 105, 110, 32, 116, 104, 101, 32, 115, 97, 109, 101, 32, 101, 97, 99, 104, 32, 119, 105, 116, 104, 32, 101, 108, 115, 101, 32, 105, 102, 32, 98, 114, 97, 110, 99, 104, 0
_slit_218: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 101, 108, 115, 101, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_219: db 97, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 99, 111, 109, 101, 32, 97, 102, 116, 101, 114, 32, 97, 110, 32, 101, 108, 115, 101, 32, 115, 116, 97, 116, 101, 109, 101, 110, 116, 0
_slit_220: db 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 109, 117, 115, 116, 32, 114, 101, 109, 97, 105, 110, 32, 116, 104, 101, 32, 115, 97, 109, 101, 32, 119, 105, 116, 104, 32, 115, 105, 110, 103, 108, 101, 32, 98, 114, 97, 110, 99, 104, 101, 115, 0
_slit_221: db 117, 110, 98, 97, 108, 97, 110, 99, 101, 100, 32, 115, 116, 97, 99, 107, 32, 111, 110, 32, 98, 111, 116, 104, 32, 105, 102, 32, 97, 110, 100, 32, 101, 108, 115, 101, 32, 98, 114, 97, 110, 99, 104, 101, 115, 44, 32, 101, 108, 115, 101, 32, 104, 97, 115, 32, 109, 111, 114, 101, 32, 116, 104, 97, 110, 32, 101, 120, 112, 101, 99, 116, 101, 100, 32, 40, 84, 79, 68, 79, 58, 32, 119, 114, 105, 116, 101, 32, 99, 111, 117, 110, 116, 41, 0
_slit_222: db 117, 110, 98, 97, 108, 97, 110, 99, 101, 100, 32, 115, 116, 97, 99, 107, 32, 111, 110, 32, 98, 111, 116, 104, 32, 105, 102, 32, 97, 110, 100, 32, 101, 108, 115, 101, 32, 98, 114, 97, 110, 99, 104, 101, 115, 44, 32, 101, 108, 115, 101, 32, 104, 97, 115, 32, 108, 101, 115, 115, 32, 116, 104, 97, 110, 32, 101, 120, 112, 101, 99, 116, 101, 100, 32, 40, 84, 79, 68, 79, 58, 32, 119, 114, 105, 116, 101, 32, 99, 111, 117, 110, 116, 41, 0
_slit_223: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 56, 55, 54, 58, 55, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_224: db 117, 110, 104, 97, 110, 100, 108, 101, 100, 32, 100, 97, 116, 97, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 0
_slit_225: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 111, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 114, 101, 116, 117, 114, 110, 0
_slit_226: db 117, 110, 104, 97, 110, 100, 108, 101, 100, 32, 100, 97, 116, 97, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 0
_slit_227: db 110, 111, 116, 32, 101, 110, 111, 117, 103, 104, 32, 118, 97, 108, 117, 101, 115, 32, 111, 110, 32, 116, 104, 101, 32, 115, 116, 97, 99, 107, 32, 111, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 114, 101, 116, 117, 114, 110, 0
_slit_228: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 99, 104, 101, 99, 107, 101, 100, 32, 115, 99, 111, 112, 101, 0
_slit_229: db 97, 32, 110, 117, 109, 98, 101, 114, 32, 109, 117, 115, 116, 32, 97, 112, 112, 101, 97, 114, 32, 97, 102, 116, 101, 114, 32, 116, 104, 101, 32, 97, 114, 114, 111, 119, 32, 97, 115, 115, 101, 114, 116, 32, 111, 112, 101, 114, 97, 116, 111, 114, 0
_slit_230: db 97, 32, 115, 99, 111, 112, 101, 32, 109, 117, 115, 116, 32, 99, 111, 109, 101, 32, 97, 102, 116, 101, 114, 32, 116, 104, 101, 32, 97, 114, 114, 111, 119, 32, 97, 115, 115, 101, 114, 116, 32, 111, 112, 101, 114, 97, 116, 111, 114, 0
_slit_231: db 117, 110, 107, 110, 111, 119, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 108, 111, 99, 97, 108, 32, 116, 111, 107, 101, 110, 0
_slit_232: db 99, 97, 110, 110, 111, 116, 32, 100, 101, 102, 105, 110, 101, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 105, 110, 115, 105, 100, 101, 32, 97, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 0
_slit_233: db 117, 110, 107, 110, 111, 119, 110, 32, 99, 111, 110, 115, 116, 97, 110, 116, 32, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 32, 116, 111, 107, 101, 110, 0
_slit_234: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 49, 50, 57, 54, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_235: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 112, 97, 114, 115, 101, 114, 46, 115, 116, 97, 115, 58, 49, 50, 57, 55, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_236: db 117, 110, 99, 108, 111, 115, 101, 100, 32, 115, 99, 111, 112, 101, 115, 32, 111, 110, 32, 112, 97, 114, 115, 101, 114, 32, 102, 105, 110, 105, 115, 104, 0
_slit_237: db 117, 110, 101, 120, 112, 101, 99, 116, 101, 100, 32, 69, 79, 70, 32, 119, 104, 101, 110, 32, 112, 97, 114, 115, 105, 110, 103, 32, 102, 117, 110, 99, 116, 105, 111, 110, 44, 32, 115, 99, 111, 112, 101, 115, 32, 109, 97, 121, 32, 98, 101, 32, 117, 110, 99, 108, 111, 115, 101, 100, 0
_slit_238: db 110, 111, 32, 109, 97, 105, 110, 32, 102, 117, 110, 99, 116, 105, 111, 110, 0
_slit_239: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 100, 99, 101, 46, 115, 116, 97, 115, 58, 49, 48, 58, 50, 52, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_240: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 100, 99, 101, 46, 115, 116, 97, 115, 58, 53, 55, 58, 52, 51, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_241: db 117, 115, 101, 54, 52, 0
_slit_242: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 119, 114, 105, 116, 101, 46, 115, 116, 97, 115, 58, 49, 55, 58, 50, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_243: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 119, 114, 105, 116, 101, 46, 115, 116, 97, 115, 58, 49, 48, 58, 50, 50, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_244: db 102, 111, 114, 109, 97, 116, 32, 69, 76, 70, 54, 52, 0
_slit_245: db 115, 101, 99, 116, 105, 111, 110, 32, 39, 46, 116, 101, 120, 116, 39, 32, 101, 120, 101, 99, 117, 116, 97, 98, 108, 101, 0
_slit_246: db 112, 117, 98, 108, 105, 99, 32, 95, 115, 116, 97, 114, 116, 0
_slit_247: db 112, 117, 98, 108, 105, 99, 32, 95, 101, 120, 105, 116, 0
_slit_248: db 102, 111, 114, 109, 97, 116, 32, 69, 76, 70, 54, 52, 32, 101, 120, 101, 99, 117, 116, 97, 98, 108, 101, 0
_slit_249: db 115, 101, 103, 109, 101, 110, 116, 32, 114, 101, 97, 100, 97, 98, 108, 101, 32, 101, 120, 101, 99, 117, 116, 97, 98, 108, 101, 0
_slit_250: db 101, 110, 116, 114, 121, 32, 95, 115, 116, 97, 114, 116, 0
_slit_251: db 95, 115, 116, 97, 114, 116, 58, 0
_slit_252: db 9, 109, 111, 118, 32, 91, 95, 97, 114, 103, 95, 112, 93, 44, 32, 114, 115, 112, 0
_slit_253: db 9, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 95, 114, 115, 95, 112, 93, 44, 32, 95, 114, 115, 95, 116, 111, 112, 0
_slit_254: db 9, 109, 111, 118, 32, 114, 98, 112, 44, 32, 114, 115, 112, 0
_slit_255: db 9, 109, 111, 118, 32, 114, 115, 112, 44, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_256: db 9, 99, 97, 108, 108, 32, 109, 97, 105, 110, 0
_slit_257: db 9, 120, 111, 114, 32, 114, 100, 105, 44, 32, 114, 100, 105, 0
_slit_258: db 95, 101, 120, 105, 116, 58, 0
_slit_259: db 9, 109, 111, 118, 32, 101, 97, 120, 44, 32, 54, 48, 0
_slit_260: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_261: db 9, 110, 111, 112, 0
_slit_262: db 9, 112, 117, 115, 104, 32, 0
_slit_263: db 114, 98, 120, 0
_slit_264: db 114, 99, 120, 0
_slit_265: db 114, 115, 105, 0
_slit_266: db 114, 100, 105, 0
_slit_267: db 114, 56, 0
_slit_268: db 114, 57, 0
_slit_269: db 114, 49, 48, 0
_slit_270: db 114, 49, 49, 0
_slit_271: db 114, 49, 50, 0
_slit_272: db 114, 49, 51, 0
_slit_273: db 114, 49, 52, 0
_slit_274: db 114, 49, 53, 0
_slit_275: db 114, 100, 120, 0
_slit_276: db 114, 97, 120, 0
_slit_277: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 52, 56, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_278: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 103, 101, 110, 46, 115, 116, 97, 115, 58, 50, 57, 58, 50, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_279: db 112, 117, 98, 108, 105, 99, 32, 0
_slit_280: db 95, 97, 0
_slit_281: db 95, 98, 0
_slit_282: db 95, 99, 0
_slit_283: db 95, 100, 0
_slit_284: db 95, 101, 0
_slit_285: db 95, 102, 0
_slit_286: db 95, 103, 0
_slit_287: db 58, 0
_slit_288: db 9, 115, 117, 98, 32, 114, 115, 112, 44, 32, 0
_slit_289: db 9, 109, 111, 118, 32, 91, 95, 114, 115, 95, 112, 93, 44, 32, 114, 115, 112, 0
_slit_290: db 9, 109, 111, 118, 32, 114, 115, 112, 44, 32, 114, 98, 112, 0
_slit_291: db 9, 109, 111, 118, 32, 114, 98, 112, 44, 32, 114, 115, 112, 0
_slit_292: db 9, 109, 111, 118, 32, 114, 115, 112, 44, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_293: db 9, 97, 100, 100, 32, 114, 115, 112, 44, 32, 0
_slit_294: db 9, 114, 101, 116, 0
_slit_295: db 9, 109, 111, 118, 32, 114, 98, 112, 44, 32, 114, 115, 112, 0
_slit_296: db 9, 109, 111, 118, 32, 114, 115, 112, 44, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_297: db 9, 99, 97, 108, 108, 32, 0
_slit_298: db 9, 109, 111, 118, 32, 91, 95, 114, 115, 95, 112, 93, 44, 32, 114, 115, 112, 0
_slit_299: db 9, 109, 111, 118, 32, 114, 115, 112, 44, 32, 114, 98, 112, 0
_slit_300: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 55, 56, 58, 50, 55, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_301: db 9, 112, 111, 112, 32, 0
_slit_302: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 57, 53, 58, 50, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_303: db 9, 116, 101, 115, 116, 32, 0
_slit_304: db 44, 32, 0
_slit_305: db 9, 106, 110, 122, 32, 46, 0
_slit_306: db 9, 109, 111, 118, 32, 101, 97, 120, 44, 32, 49, 0
_slit_307: db 9, 109, 111, 118, 32, 101, 100, 105, 44, 32, 50, 0
_slit_308: db 9, 109, 111, 118, 32, 114, 115, 105, 44, 32, 95, 115, 108, 105, 116, 95, 0
_slit_309: db 9, 109, 111, 118, 32, 114, 100, 120, 44, 32, 0
_slit_310: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 100, 99, 101, 46, 115, 116, 97, 115, 58, 49, 55, 58, 49, 56, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_311: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_312: db 9, 109, 111, 118, 32, 114, 100, 105, 44, 32, 49, 0
_slit_313: db 9, 106, 109, 112, 32, 95, 101, 120, 105, 116, 0
_slit_314: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 56, 57, 58, 50, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_315: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 55, 48, 58, 50, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_316: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 55, 49, 58, 52, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_317: db 9, 109, 111, 118, 32, 0
_slit_318: db 44, 32, 0
_slit_319: db 95, 115, 108, 105, 116, 95, 0
_slit_320: db 9, 109, 111, 118, 32, 0
_slit_321: db 44, 32, 0
_slit_322: db 113, 119, 111, 114, 100, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_323: db 9, 97, 100, 100, 32, 0
_slit_324: db 9, 112, 111, 112, 32, 0
_slit_325: db 44, 32, 0
_slit_326: db 9, 109, 111, 118, 32, 0
_slit_327: db 44, 32, 113, 119, 111, 114, 100, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_328: db 9, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 0
_slit_329: db 32, 43, 32, 0
_slit_330: db 93, 44, 32, 0
_slit_331: db 9, 109, 111, 118, 32, 0
_slit_332: db 44, 32, 113, 119, 111, 114, 100, 32, 91, 95, 114, 115, 95, 112, 93, 0
_slit_333: db 113, 119, 111, 114, 100, 32, 91, 0
_slit_334: db 32, 43, 32, 0
_slit_335: db 93, 0
_slit_336: db 113, 119, 111, 114, 100, 32, 95, 103, 108, 111, 98, 97, 108, 95, 0
_slit_337: db 9, 109, 111, 118, 32, 0
_slit_338: db 44, 32, 113, 119, 111, 114, 100, 32, 95, 103, 108, 111, 98, 97, 108, 95, 0
_slit_339: db 9, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 0
_slit_340: db 32, 43, 32, 0
_slit_341: db 93, 44, 32, 0
_slit_342: db 9, 109, 111, 118, 32, 0
_slit_343: db 44, 32, 113, 119, 111, 114, 100, 32, 95, 103, 108, 111, 98, 97, 108, 95, 0
_slit_344: db 113, 119, 111, 114, 100, 32, 91, 0
_slit_345: db 32, 43, 32, 0
_slit_346: db 93, 0
_slit_347: db 9, 109, 111, 118, 32, 0
_slit_348: db 44, 32, 113, 119, 111, 114, 100, 32, 91, 95, 97, 114, 103, 95, 112, 93, 0
_slit_349: db 9, 109, 111, 118, 32, 0
_slit_350: db 44, 32, 91, 0
_slit_351: db 93, 0
_slit_352: db 9, 109, 111, 118, 32, 0
_slit_353: db 44, 32, 113, 119, 111, 114, 100, 32, 91, 95, 97, 114, 103, 95, 112, 93, 0
_slit_354: db 9, 97, 100, 100, 32, 0
_slit_355: db 44, 32, 56, 0
_slit_356: db 9, 116, 101, 115, 116, 32, 0
_slit_357: db 44, 32, 0
_slit_358: db 9, 106, 122, 32, 46, 0
_slit_359: db 9, 106, 109, 112, 32, 46, 0
_slit_360: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 50, 48, 49, 58, 50, 48, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_361: db 9, 109, 111, 118, 32, 0
_slit_362: db 44, 32, 0
_slit_363: db 9, 109, 111, 118, 32, 0
_slit_364: db 44, 32, 0
_slit_365: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 51, 51, 52, 58, 49, 56, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 10, 0
_slit_366: db 9, 112, 111, 112, 32, 0
_slit_367: db 9, 100, 98, 32, 48, 120, 99, 99, 0
_slit_368: db 9, 97, 100, 100, 32, 0
_slit_369: db 44, 32, 0
_slit_370: db 9, 115, 117, 98, 32, 0
_slit_371: db 44, 32, 0
_slit_372: db 9, 105, 109, 117, 108, 32, 0
_slit_373: db 44, 32, 0
_slit_374: db 9, 120, 111, 114, 32, 114, 100, 120, 44, 32, 114, 100, 120, 0
_slit_375: db 9, 100, 105, 118, 32, 0
_slit_376: db 9, 120, 111, 114, 32, 114, 100, 120, 44, 32, 114, 100, 120, 0
_slit_377: db 9, 100, 105, 118, 32, 0
_slit_378: db 9, 105, 110, 99, 32, 0
_slit_379: db 9, 100, 101, 99, 32, 0
_slit_380: db 9, 120, 111, 114, 32, 114, 100, 120, 44, 32, 114, 100, 120, 0
_slit_381: db 9, 100, 105, 118, 32, 0
_slit_382: db 9, 115, 104, 114, 32, 0
_slit_383: db 44, 32, 99, 108, 0
_slit_384: db 9, 115, 104, 108, 32, 0
_slit_385: db 44, 32, 99, 108, 0
_slit_386: db 9, 116, 101, 115, 116, 32, 0
_slit_387: db 44, 32, 0
_slit_388: db 9, 115, 101, 116, 101, 32, 0
_slit_389: db 98, 108, 0
_slit_390: db 99, 108, 0
_slit_391: db 115, 105, 108, 0
_slit_392: db 100, 105, 108, 0
_slit_393: db 114, 56, 98, 0
_slit_394: db 114, 57, 98, 0
_slit_395: db 114, 49, 48, 98, 0
_slit_396: db 114, 49, 49, 98, 0
_slit_397: db 114, 49, 50, 98, 0
_slit_398: db 114, 49, 51, 98, 0
_slit_399: db 114, 49, 52, 98, 0
_slit_400: db 114, 49, 53, 98, 0
_slit_401: db 100, 108, 0
_slit_402: db 97, 108, 0
_slit_403: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 53, 54, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_404: db 9, 97, 110, 100, 32, 0
_slit_405: db 44, 32, 0
_slit_406: db 9, 111, 114, 32, 0
_slit_407: db 44, 32, 0
_slit_408: db 9, 110, 111, 116, 32, 0
_slit_409: db 9, 120, 111, 114, 32, 0
_slit_410: db 44, 32, 0
_slit_411: db 9, 109, 111, 118, 32, 0
_slit_412: db 44, 32, 0
_slit_413: db 113, 119, 111, 114, 100, 32, 91, 114, 115, 112, 32, 43, 32, 0
_slit_414: db 93, 0
_slit_415: db 113, 119, 111, 114, 100, 32, 91, 114, 115, 112, 32, 43, 32, 0
_slit_416: db 93, 0
_slit_417: db 9, 97, 100, 100, 32, 114, 115, 112, 44, 32, 56, 0
_slit_418: db 9, 120, 111, 114, 32, 0
_slit_419: db 44, 32, 0
_slit_420: db 9, 99, 109, 112, 32, 0
_slit_421: db 44, 32, 0
_slit_422: db 9, 115, 101, 116, 101, 32, 0
_slit_423: db 9, 120, 111, 114, 32, 0
_slit_424: db 44, 32, 0
_slit_425: db 9, 99, 109, 112, 32, 0
_slit_426: db 44, 32, 0
_slit_427: db 9, 115, 101, 116, 110, 101, 32, 0
_slit_428: db 9, 120, 111, 114, 32, 0
_slit_429: db 44, 32, 0
_slit_430: db 9, 99, 109, 112, 32, 0
_slit_431: db 44, 32, 0
_slit_432: db 9, 115, 101, 116, 97, 32, 0
_slit_433: db 9, 120, 111, 114, 32, 0
_slit_434: db 44, 32, 0
_slit_435: db 9, 99, 109, 112, 32, 0
_slit_436: db 44, 32, 0
_slit_437: db 9, 115, 101, 116, 98, 32, 0
_slit_438: db 9, 120, 111, 114, 32, 0
_slit_439: db 44, 32, 0
_slit_440: db 9, 99, 109, 112, 32, 0
_slit_441: db 44, 32, 0
_slit_442: db 9, 115, 101, 116, 97, 101, 32, 0
_slit_443: db 9, 120, 111, 114, 32, 0
_slit_444: db 44, 32, 0
_slit_445: db 9, 99, 109, 112, 32, 0
_slit_446: db 44, 32, 0
_slit_447: db 9, 115, 101, 116, 98, 101, 32, 0
_slit_448: db 9, 120, 111, 114, 32, 0
_slit_449: db 44, 32, 0
_slit_450: db 9, 99, 109, 112, 32, 0
_slit_451: db 44, 32, 0
_slit_452: db 9, 115, 101, 116, 103, 32, 0
_slit_453: db 9, 120, 111, 114, 32, 0
_slit_454: db 44, 32, 0
_slit_455: db 9, 99, 109, 112, 32, 0
_slit_456: db 44, 32, 0
_slit_457: db 9, 115, 101, 116, 108, 32, 0
_slit_458: db 9, 120, 111, 114, 32, 0
_slit_459: db 44, 32, 0
_slit_460: db 9, 99, 109, 112, 32, 0
_slit_461: db 44, 32, 0
_slit_462: db 9, 115, 101, 116, 103, 101, 32, 0
_slit_463: db 9, 120, 111, 114, 32, 0
_slit_464: db 44, 32, 0
_slit_465: db 9, 99, 109, 112, 32, 0
_slit_466: db 44, 32, 0
_slit_467: db 9, 115, 101, 116, 108, 101, 32, 0
_slit_468: db 9, 109, 111, 118, 32, 98, 121, 116, 101, 32, 91, 0
_slit_469: db 93, 44, 32, 0
_slit_470: db 9, 109, 111, 118, 32, 119, 111, 114, 100, 32, 91, 0
_slit_471: db 93, 44, 32, 0
_slit_472: db 98, 120, 0
_slit_473: db 99, 120, 0
_slit_474: db 115, 105, 0
_slit_475: db 100, 105, 0
_slit_476: db 114, 56, 119, 0
_slit_477: db 114, 57, 119, 0
_slit_478: db 114, 49, 48, 119, 0
_slit_479: db 114, 49, 49, 119, 0
_slit_480: db 114, 49, 50, 119, 0
_slit_481: db 114, 49, 51, 119, 0
_slit_482: db 114, 49, 52, 119, 0
_slit_483: db 114, 49, 53, 119, 0
_slit_484: db 100, 120, 0
_slit_485: db 97, 120, 0
_slit_486: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 49, 50, 48, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_487: db 9, 109, 111, 118, 32, 100, 119, 111, 114, 100, 32, 91, 0
_slit_488: db 93, 44, 32, 0
_slit_489: db 101, 98, 120, 0
_slit_490: db 101, 99, 120, 0
_slit_491: db 101, 115, 105, 0
_slit_492: db 101, 100, 105, 0
_slit_493: db 114, 56, 100, 0
_slit_494: db 114, 57, 100, 0
_slit_495: db 114, 49, 48, 100, 0
_slit_496: db 114, 49, 49, 100, 0
_slit_497: db 114, 49, 50, 100, 0
_slit_498: db 114, 49, 51, 100, 0
_slit_499: db 114, 49, 52, 100, 0
_slit_500: db 114, 49, 53, 100, 0
_slit_501: db 101, 100, 120, 0
_slit_502: db 101, 97, 120, 0
_slit_503: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 120, 56, 54, 46, 115, 116, 97, 115, 58, 56, 52, 58, 57, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_504: db 9, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 0
_slit_505: db 93, 44, 32, 0
_slit_506: db 9, 120, 111, 114, 32, 0
_slit_507: db 44, 32, 0
_slit_508: db 9, 109, 111, 118, 32, 0
_slit_509: db 44, 32, 91, 0
_slit_510: db 93, 0
_slit_511: db 9, 120, 111, 114, 32, 0
_slit_512: db 44, 32, 0
_slit_513: db 9, 109, 111, 118, 32, 0
_slit_514: db 44, 32, 91, 0
_slit_515: db 93, 0
_slit_516: db 9, 109, 111, 118, 32, 0
_slit_517: db 44, 32, 91, 0
_slit_518: db 93, 0
_slit_519: db 9, 109, 111, 118, 32, 0
_slit_520: db 44, 32, 91, 0
_slit_521: db 93, 0
_slit_522: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_523: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_524: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_525: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_526: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_527: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_528: db 9, 115, 121, 115, 99, 97, 108, 108, 0
_slit_529: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 115, 114, 99, 47, 103, 101, 110, 46, 115, 116, 97, 115, 58, 53, 52, 50, 58, 54, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_530: db 115, 101, 99, 116, 105, 111, 110, 32, 39, 46, 114, 111, 100, 97, 116, 97, 39, 0
_slit_531: db 115, 101, 103, 109, 101, 110, 116, 32, 114, 101, 97, 100, 97, 98, 108, 101, 0
_slit_532: db 95, 115, 108, 105, 116, 95, 0
_slit_533: db 58, 32, 100, 98, 32, 0
_slit_534: db 44, 32, 0
_slit_535: db 48, 0
_slit_536: db 115, 101, 99, 116, 105, 111, 110, 32, 39, 46, 98, 115, 115, 39, 32, 119, 114, 105, 116, 97, 98, 108, 101, 0
_slit_537: db 115, 101, 103, 109, 101, 110, 116, 32, 114, 101, 97, 100, 97, 98, 108, 101, 32, 119, 114, 105, 116, 97, 98, 108, 101, 0
_slit_538: db 95, 103, 108, 111, 98, 97, 108, 95, 0
_slit_539: db 58, 32, 114, 98, 32, 0
_slit_540: db 95, 97, 114, 103, 95, 112, 58, 32, 114, 113, 32, 49, 0
_slit_541: db 95, 114, 115, 95, 112, 58, 32, 114, 113, 32, 49, 0
_slit_542: db 95, 114, 115, 58, 32, 114, 98, 32, 54, 53, 53, 51, 54, 0
_slit_543: db 95, 114, 115, 95, 116, 111, 112, 58, 0
_slit_544: db 70, 65, 84, 65, 76, 58, 32, 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 99, 108, 111, 115, 101, 32, 102, 105, 108, 101, 32, 100, 101, 115, 99, 114, 105, 112, 116, 111, 114, 10, 0
_slit_545: db 45, 109, 0
_slit_546: db 49, 48, 52, 56, 53, 55, 54, 0
_slit_547: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 102, 97, 115, 109, 0
_slit_548: db 47, 100, 101, 118, 47, 110, 117, 108, 108, 0
_slit_549: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 10, 0
_slit_550: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 32, 97, 115, 32, 115, 116, 100, 111, 117, 116, 10, 0
_slit_551: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 101, 120, 101, 99, 118, 101, 32, 99, 104, 105, 108, 100, 0
_slit_552: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 119, 97, 105, 116, 32, 102, 111, 114, 32, 112, 114, 111, 99, 101, 115, 115, 0
_slit_553: db 70, 65, 84, 65, 76, 58, 32, 67, 104, 105, 108, 100, 32, 112, 114, 111, 99, 101, 115, 115, 32, 119, 97, 115, 32, 116, 101, 114, 109, 105, 110, 97, 116, 101, 100, 32, 98, 121, 32, 115, 105, 103, 110, 97, 108, 32, 0
_slit_554: db 27, 91, 49, 109, 27, 91, 51, 49, 109, 108, 105, 98, 47, 105, 111, 46, 115, 116, 97, 115, 58, 50, 57, 50, 58, 55, 58, 32, 27, 91, 51, 57, 109, 27, 91, 50, 50, 109, 97, 115, 115, 101, 114, 116, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 44, 32, 39, 117, 110, 114, 101, 97, 99, 104, 97, 98, 108, 101, 39, 10, 0
_slit_555: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 102, 111, 114, 107, 32, 99, 104, 105, 108, 100, 0
_slit_556: db 70, 65, 84, 65, 76, 58, 32, 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 101, 120, 101, 99, 118, 101, 32, 102, 105, 108, 101, 10, 0
segment readable writable
_global___curbrk: rb 8
_global_is_object_file: rb 1
_global_debug_symbols: rb 1
_global_backend_type: rb 8
_global_string_buffer.len: rb 8
_global_string_buffer: rb 268435456
_global_token_stream: rb 917504
_global_token_stream.len: rb 8
_global_functions.len: rb 8
_global_functions: rb 15360
_global_global_var_context.len: rb 8
_global_global_var_context: rb 12288
_global_toplevel_constants.len: rb 8
_global_toplevel_constants: rb 24576
_global_ir_stream.len: rb 8
_global_ir_stream: rb 262144
_global_var_context.len: rb 8
_global_var_context: rb 12288
_global_scope_context.len: rb 8
_global_scope_context: rb 14336
_global_const_stack.len: rb 8
_global_const_stack: rb 8192
_global_label_c: rb 8
_global_main_fn_idx: rb 8
_global_pos: rb 8
_global_function_context: rb 8
_global_function_context_idx: rb 8
_global_is_still_evaluating_constant: rb 8
_global_sp.len: rb 8
_global_sp: rb 4096
_global_fwrite_buffer.len: rb 8
_global_fwrite_buffer: rb 10240
_global_fwrite_buffer.fd_loc: rb 8
_global_slits.len: rb 8
_global_slits: rb 8192
_global_rallocator_mask: rb 14
_global_rallocator_stack.len: rb 8
_global_rallocator_stack: rb 2048
_arg_p: rq 1
_rs_p: rq 1
_rs: rb 65536
_rs_top:
