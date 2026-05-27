#task 3, s = (a + b) – (c + 101)
li $v0, 5
syscall
move $s0, $v0 #zapisujemy wartosc a pod $s0
li $v0, 5
syscall 
move $s1, $v0 #zapisujemy b do $s1
li $v0, 5
syscall  
move $s2, $v0 #zapisujemy c do $s2

add $t0, $s0, $s1
move $s3, $t0 #zapisujemy (a+b) do $s3

add $t0, $s2, 101

sub $t1, $s3, $t0

li $v0, 1
move $a0, $t1
syscall
