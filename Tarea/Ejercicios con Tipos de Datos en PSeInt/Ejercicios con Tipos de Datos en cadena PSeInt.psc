Algoritmo tipodecadena 
	//nombre completo//
	
		Definir nombre, apellido Como Cadena
		Escribir "Ingrese su nombre:"
		Leer nombre
		Escribir "Ingrese su apellido:"
		Leer apellido
		Escribir "Su nombre completo es: ", nombre, " ", apellido	
		
		//contar letras de una palabra//
		
			Definir palabra Como Cadena
			Escribir "Ingrese una palabra:"
			Leer palabra
			Escribir "Tiene ", Longitud(palabra), " letras"
	
			//frase en mayuscula//
			Definir frase Como Cadena
			Escribir "Ingrese una frase:"
			Leer frase
			Escribir "En mayúsculas: ", Mayusculas(frase)
			
			//cadena larga//
			Definir c1, c2 Como Cadena
			Escribir "Ingrese la primera cadena:"
			Leer c1
			Escribir "Ingrese la segunda cadena:"
			Leer c2
			Si Longitud(c1) > Longitud(c2) Entonces
				Escribir "La primera es más larga"
			Sino
				Escribir "La segunda es más larga"	
			FinSi
			//primera y ultima letra//
			
			Escribir "Ingrese una palabra:"
			Leer palabra
			Escribir "Primera letra: ", Subcadena(palabra,1,1)
			Escribir "Última letra: ", Subcadena(palabra, Longitud(palabra), Longitud(palabra))
			
			
			
FinAlgoritmo
