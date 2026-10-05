# группа 138
# номер в списке группы - 12
for:
	li a7, 5
	ecall
	mv t0, a0
	li a1, 138
	li a2, 12
	bgt t0, a1, t0_bigger
	
next:
	mv a0, t0
	li a7, 1
	ecall
	add t0, t0, a2
	bgt t0, a1, end
	li a7, 11
	li a0, ' '
	ecall
	j next
	
t0_bigger:
	mv a0, a1
	li a7, 1
	ecall
	add a1, a1, a2
	bgt a1, t0, end
	li a7, 11
	li a0, ' '
	ecall
	j t0_bigger
	
end:
