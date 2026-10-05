# группа 138
# номер в списке группы - 12

.data
	array: .space 112 	# (16 + 12) * 4
	
.text	
	la t0, array	# t0 - адрес элемента массива
	li t2, 0	# t2 - счетчик
	li t3, 28	# t3 = 28
	for:
		li a7, 5
		ecall
		mv t1, a0	# t1- введенное число
		beq t1, zero, end
		sw t1, 0(t0)
		addi t0, t0, 4
		addi t2, t2, 1
		beq t2, t3, end
		j for
	end: