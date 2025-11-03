Algoritmo Operaciónaritmética
//Operación aritmética según tipo//	
	
	Definir a, b, resultado Como Real
    Definir op Como Caracter
    Escribir "Ingrese dos números:"
    Leer a, b
    Escribir "Ingrese la operación (+, -, *, /):"
    Leer op
    Segun op Hacer
        "+": resultado <- a + b
        "-": resultado <- a - b
        "*": resultado <- a * b
        "/": resultado <- a / b
        De Otro Modo: Escribir "Operador inválido."
    FinSegun
    Escribir "Resultado: ", resultado
	
	
	
	
	
	
FinAlgoritmo
