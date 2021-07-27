addi $s0, $zero, 0  		# s0 = entrada;

add $a0, $s0, $zero 		# a0 = s0;

addi $s7, $zero, 1  		# s7 = 1;

bne $zero, $s0, While 		# if (s0 == 0)
addi $a0, $zero, 1    		# 	a0 = 1;
j Exit                		# 	goto Exit;

While: beq $s0, $s7, Exit 	# while (s0 != 1)

addi $t0, $s0, -1         	#	t0 = s0 - 1;
mul $a0, $a0, $t0	  	# 	a0 = a0 * t0;
addi $s0, $s0, -1	  	#	s0 = s0 - 1;

j While

Exit:
addi $v0, $zero, 1
syscall 			# print a0

