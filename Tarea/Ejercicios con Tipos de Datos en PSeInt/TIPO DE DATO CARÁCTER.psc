Algoritmo tipodedatoscaracter
// vocal o consonante//
	Definir letra Como Caracter
    Escribir "Ingrese una letra:"
    Leer letra
    Si letra = "a" O letra = "e" O letra = "i" O letra = "o" O letra = "u" Entonces
        Escribir "Es vocal"
    Sino
        Escribir "Es consonante"
    FinSi
	
	//mayuscula o minuscula//
	Definir c Como Caracter
    Escribir "Ingrese un carácter:"
    Leer c
    Si c >= "A" Y c <= "Z" Entonces
        Escribir "Es mayúscula"
    Sino
        Escribir "Es minúscula"
    FinSi
	
	//codigo ASCII//
	
    Escribir "Ingrese un carácter:"
    Leer c
    Escribir "Su código ASCII es:", Asc (c)
	
	//determinar si es dumero//
	
    Escribir "Ingrese un carácter:"
    Leer c
    Si c >= "0" Y c <= "9" Entonces
        Escribir "Es un número"
    Sino
        Escribir "No es un número"
    FinSi
	
	
FinAlgoritmo
