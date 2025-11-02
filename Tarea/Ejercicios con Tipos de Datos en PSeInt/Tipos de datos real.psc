
//tres notas y calcule el promedio//
Proceso Promedio_Notas
    Definir n1, n2, n3, promedio Como Real
    Escribir "Ingrese tres notas:"
    Leer n1, n2, n3
    promedio <- (n1 + n2 + n3) / 3
    Escribir "El promedio es: ", promedio
	
	//convertir grados celsius a Fahrenheit//
	Definir c, f Como Real
    Escribir "Ingrese temperatura en grados Celsius:"
    Leer c
    f <- (c * 9/5) + 32
    Escribir "Equivale a ", f, " grados Fahrenheit"
	
	//calcule el area de un triangulo//
	

		Definir base, altura, area Como Real
		Escribir "Ingrese la base y la altura:"
		Leer base, altura
		area <- (base * altura) / 2
		Escribir "El área es: ", area
	
		//area de un circulo//
		
		Definir radio Como Real 
		Escribir "Ingrese el radio del círculo:"
		Leer radio
		area <- PI * radio * radio
		Escribir "El área del círculo es: ", area
		
		//valor absoluto//
		
		Definir n, absoluto Como Real
		Escribir "Ingrese un número real:"
		Leer n
		Si n < 0 Entonces
			absoluto <- -n
		Sino
			absoluto <- n
		FinSi
		Escribir "El valor absoluto es: ", absoluto
		
		
FinProceso
