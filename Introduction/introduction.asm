.data 
inputNameText: .asciiz "Podaj swoje imie: "
inputAgeText: .asciiz "Podaj swoj wiek: "

outputNameText: .asciiz "Twoje imie: "
outputAgeText: .asciiz "Twoj wiek: "

task1Output: .asciiz "\nPodwojony wiek: "

inputNameData: .space 20

repeatText: .asciiz "\nrepeat [y/n]: "

.globl main
.text
main:

main_loop:
#pobieranie imienia od uzytkownika
li $v0, 4 #printowanie stringa do syscalla
la $a0, inputNameText #argument syscall co ma wypisac
syscall
li $v0, 8 #ustawiamy syscall na input string
la $a0, inputNameData #ladujemy adres naszego stringa
la $a1, 20 #maksymalna dlugosc jaka mozemy pobrac
syscall
#pobieranie wieku od uzytkownika
li $v0, 4 #ustawiamy operacje wypisania string
la $a0, inputAgeText #co ma wypisac
syscall
li $v0, 5 #ustawiamy operacje pobierania int
syscall
move $s0, $v0 #naszego inta zapisujemy w rejestrze $s0
#wyswietlanie danych uzytkownika
li $v0, 4 #ustawiamy operacje wypisania string
la $a0, outputNameText 
syscall
la $a0, inputNameData
syscall
la $a0, outputAgeText 
syscall
li $v0, 1 #ustawiamy operacje wypisania inta
move $a0, $s0 #argumentem naszego inta z rejestru $s0
syscall

#task 1, podwojenie wieku 
li $v0, 4
la $a0, task1Output
syscall

li $v0, 1
add $t0, $s0, $s0
move $a0, $t0
syscall

#task 2, pytac uzytkownika czy chce jeszcze raz
li $v0, 4 #wypisujemy text
la $a0, repeatText
syscall 

li $v0, 12 #bierzemy pojedynczy znak
syscall

beq $v0, 'y', main_loop # if($v0 == "y") main_loop
li $v0, 10
syscall
