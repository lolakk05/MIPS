.data

equal: .asciiz "equal"
notequal: .asciiz "not equal"

.text
li $v0, 5
syscall
move $s0, $v0
li $v0, 5
syscall
move $s1, $v0

beq $s0, $s1, if_equal
li $v0, 4
la $a0, notequal
syscall
li $v0, 10
syscall

if_equal:
li $v0, 4
la $a0, equal
syscall
li $v0, 10
syscall