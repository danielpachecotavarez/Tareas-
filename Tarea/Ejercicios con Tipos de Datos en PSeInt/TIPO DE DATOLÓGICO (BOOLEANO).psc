Algoritmo numeropositivo
	//numero positivo o negativo//
	Definir n Como Real
    Definir esPositivo Como Logico
    Escribir "Ingrese un número:"
    Leer n
    esPositivo <- n > 0
    Escribir "¿Es positivo?: ", esPositivo
	
	//mayor de edad//
	Definir edad Como Entero
    Definir mayor Como Logico
    Escribir "Ingrese su edad:"
    Leer edad
    mayor <- edad >= 18
    Escribir "¿Es mayor de edad?: ", mayor
	
	//dos numero iguales//
	Definir a, b Como Entero
    Definir iguales Como Logico
    Escribir "Ingrese dos números:"
    Leer a, b
    iguales <- a = b
    Escribir "¿Son iguales?: ", iguales
	
	//par o impar (verdadero/falso)
	
    Definir esPar Como Logico
    Escribir "Ingrese un número:"
    Leer n
    esPar <- n MOD 2 = 0
    Escribir "¿Es par?: ", esPar
	
	//entre 1 y 100//
	
    Definir dentroRango Como Logico
    Escribir "Ingrese un número:"
    Leer n
    dentroRango <- n >= 1 Y n <= 100
    Escribir "¿Está entre 1 y 100?: ", dentroRango
	
FinAlgoritmo
