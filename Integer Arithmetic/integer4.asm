#zmiana case'a znaku, glownie chodzi o to ze A i a roznia sie bitem o wadze 32 wiec nakladamy xor
.data

input: .asciiz "Podaj litere: " 

.text
main:
	li $v0, 4
	la $a0, input
	syscall
	
	li $v0, 12
	syscall
	move $s0, $v0
	
	xori $s0, $s0, 32
	li $v0, 11 
	move $a0, $s0
	syscall