li $s1, 0x12345678
li $s2, 0xffff9a00
#kazdy jeden symbo w $s1/$s2 to zapis binarny bitów np. f = 1111 i na tej podstawie dzialaja wszytkie te operacje
and $s3, $s1, $s2
or $s4, $s1, $s2
xor $s5, $s1, $s2
nor $s6, $s1, $s2

li $v0, 10
syscall