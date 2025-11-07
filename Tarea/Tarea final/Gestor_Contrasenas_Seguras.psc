Algoritmo Gestor_Contrasenas_Seguras
    Definir opcion, totalUsuarios Como Entero
    Dimension usuarios[50]
    Dimension contrasena[50]
    totalUsuarios <- 0
	
    Repetir
        Escribir "===== GESTOR DE CONTRASEÑAS SEGURAS ====="
        Escribir "1. Registrar usuario"
        Escribir "2. Verificar contraseñas"
        Escribir "3. Generar alertas de contraseñas débiles"
        Escribir "4. Salir"
        Escribir "Seleccione una opción:"
        Leer opcion
		
        Si opcion = 1 Entonces
            RegistrarUsuario(usuarios, contrasena, totalUsuarios)
        FinSi
		
        Si opcion = 2 Entonces
            VerificarContrasena(usuarios, contrasena, totalUsuarios)
        FinSi
		
        Si opcion = 3 Entonces
            GenerarAlertas(usuarios, contrasena, totalUsuarios)
        FinSi
		
        Si opcion = 4 Entonces
            Escribir "Saliendo del sistema..."
        FinSi
		
        Si opcion < 1 O opcion > 4 Entonces
            Escribir "Opción inválida."
        FinSi
		
    Hasta Que opcion = 4
FinAlgoritmo

SubProceso RegistrarUsuario(usuarios Por Referencia, contrasenas Por Referencia, totalUsuarios Por Referencia)
    Definir nombre, clave Como Cadena
    Escribir "Ingrese el nombre de usuario:"
    Leer nombre
    Escribir "Ingrese la contraseña:"
    Leer clave
	
    totalUsuarios <- totalUsuarios + 1
    usuarios[totalUsuarios] <- nombre
    
    Escribir "Usuario registrado correctamente."
FinSubProceso

SubProceso VerificarContrasena(usuarios, contrasenas, totalUsuarios)
    Definir i Como Entero
    Definir fuerte Como Logico
	
    Si totalUsuarios = 0 Entonces
        Escribir "No hay usuarios registrados."
    Sino
        Para i <- 1 Hasta totalUsuarios Con Paso 1 Hacer
            fuerte <- contrasenas(contrasenas[i])
            Si fuerte Entonces
                Escribir usuarios[i], ": Contraseña fuerte."
            Sino
                Escribir usuarios[i], ": Contraseña débil."
            FinSi
        FinPara
    FinSi
FinSubProceso

SubProceso GenerarAlertas(usuarios, contrasenas, totalUsuarios)
    Definir i Como Entero
    Definir fuerte Como Logico
	
    Si totalUsuarios = 0 Entonces
        Escribir "No hay usuarios registrados."
    Sino
        Escribir "===== ALERTAS DE CONTRASEÑAS DÉBILES ====="
        Para i <- 1 Hasta totalUsuarios Con Paso 1 Hacer
            fuerte <- contrasenas(contrasenas[i])
            Si No fuerte Entonces
                Escribir "ALERTA: ", usuarios[i], " tiene una contraseña débil (", contrasenas[i], ")"
            FinSi
        FinPara
    FinSi
FinSubProceso

Funcion resultado <- contrasenas(clave)
    Definir tieneMayus, tieneMinus, tieneNumero, tieneLongitud Como Logico
    Definir i Como Entero
    Definir c Como Caracter
    Definir resultado Como Logico
	
    tieneMayus <- Falso
    tieneMinus <- Falso
    tieneNumero <- Falso
    tieneLongitud <- Falso
	
    Si Longitud(clave) >= 8 Entonces
        tieneLongitud <- Verdadero
    FinSi
	
    Para i <- 1 Hasta Longitud(clave) Con Paso 1 Hacer
        c <- Subcadena(clave, i, i)
        Si c >= "A" Y c <= "Z" Entonces
            tieneMayus <- Verdadero
        FinSi
        Si c >= "a" Y c <= "z" Entonces
            tieneMinus <- Verdadero
        FinSi
        Si c >= "0" Y c <= "9" Entonces
            tieneNumero <- Verdadero
        FinSi
    FinPara
	
    Si tieneMayus Y tieneMinus Y tieneNumero Y tieneLongitud Entonces
        resultado <- Verdadero
    Sino
        resultado <- Falso
    FinSi
FinFuncion