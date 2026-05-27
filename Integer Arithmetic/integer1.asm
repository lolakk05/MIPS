#pobieramy a
li $v0, 5
syscall
move $s0, $v0
#pobieramy b
li $v0, 5
syscall
move $s1, $v0

# b + b
add $t1, $s1, $s1
# a + 2b
add $t1, $t1, $s0
# a + 2b - 5
sub $t1, $t1, 5

li $v0, 1
move $a0, $t1
syscall