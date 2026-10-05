# группа 138
# номер в списке группы - 12
main:
	li a7, 5
	ecall
	
	li t0, 12
	beq t0, a0, equal
	
	li a0, 0
	j print
	
equal:
	li a0, 1
	
print:
	li a7, 1
	ecall
