Algoritmo contador_positivo_repetir
	
	//Leer números hasta ingresar un negativo//
	Definir n, contador Como Entero
    contador <- 0
    Repetir
        Escribir "Ingrese un número (negativo para salir):"
        Leer n
        Si n >= 0 Entonces
            contador <- contador + 1
        FinSi
    Hasta Que n < 0
    Escribir "Cantidad de números positivos: ", contador	
	
	
	
	
FinAlgoritmo
