Algoritmo estructurasino
	
	//Determinar si una persona es mayor o menor de edad//
	Definir edad Como Entero
    Escribir "Ingrese su edad:"
    Leer edad
    Si edad >= 18 Entonces
        Escribir "Es mayor de edad."
    Sino
        Escribir "Es menor de edad."
    FinSi	
	
	//Determinar si un número es par o impar//
	
	Definir n Como Entero
    Escribir "Ingrese un número:"
    Leer n
    Si n MOD 2 = 0 Entonces
        Escribir "El número es par."
    Sino
        Escribir "El número es impar."
    FinSi
	
	//Determinar si un número es positivo, negativo o cero//
	
    Escribir "Ingrese un número:"
    Leer n
    Si n > 0 Entonces
        Escribir "El número es positivo."
    Sino
        Si n < 0 Entonces
            Escribir "El número es negativo."
        Sino
            Escribir "El número es cero."
        FinSi
	FinSi
	
	//Determinar si un estudiante aprueba o reprueba//
	Definir nota Como Real
    Escribir "Ingrese su nota:"
    Leer nota
    Si nota >= 70 Entonces
        Escribir "Aprobado."
    Sino
        Escribir "Reprobado."
    FinSi
	
	
	
FinAlgoritmo
