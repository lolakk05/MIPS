.data 
inputNameText: .asciiz "Podaj swoje imie: "
inputAgeText: .asciiz "Podaj swoj wiek: "

outputNameText: .asciiz "Twoje imie: "
outputAgeText: .asciiz "Twoj wiek: "

inputNameData: .space 20

.text
#pobieranie imienia od uzytkownika
li $v0, 4 #printowanie stringa do syscalla
la $a0, inputNameText #argument syscall co ma wypisac
syscall
li $v0, 8 #ustawiamy syscall na input string
la $a0, inputNameData #ladujemy adres naszego stringa
la $a1, 100 #maksymalna dlugosc jaka mozemy pobrac
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
la $a0 outputAgeText 
syscall
li $v0, 1 #ustawiamy operacje wypisania inta
move $a0, $s0 #argumentem naszego inta z rejestru $s0
syscall
li $v0, 10 #koniec programu
syscall
