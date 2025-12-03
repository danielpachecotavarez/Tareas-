
from datetime import datetime   # Biblioteca para manejar fechas y horas

# ==============================
# Sistema de Monitoreo de Accesos
# ==============================

usuarios = []        # Vector de usuarios
servidores = []      # Vector de servidores

# Matriz: [usuario, ip, servidor, tipo_acceso, hora]
intentos = []


# ------------------------------
# FUNCION: Registrar intento
# ------------------------------
def RegistrarIntento():
    print("\n=== Registrar Intento de Acceso ===")

    usuario = input("Usuario: ")
    ip = input("Dirección IP: ")
    servidor = input("Servidor: ")
    tipo = input("Tipo de acceso (Permitido / Denegado): ").upper()

    if tipo not in ["PERMITIDO", "DENEGADO"]:
        print("Tipo inválido, se marcará como 'DENEGADO'.")
        tipo = "DENEGADO"

    # Registrar si no existen en los vectores
    if usuario not in usuarios:
        usuarios.append(usuario)

    if servidor not in servidores:
        servidores.append(servidor)

    # Registrar hora real usando datetime
    hora = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    # Agregar a la matriz
    intentos.append([usuario, ip, servidor, tipo, hora])

    print("\nIntento registrado correctamente.")


# ------------------------------
# FUNCION: Reporte Completo
# ------------------------------
def MostrarReporte():
    print("\n=== Reporte de Accesos ===")

    if len(intentos) == 0:
        print("No hay intentos registrados.")
        return

    for i in intentos:
        print(f"Usuario: {i[0]} | IP: {i[1]} | Servidor: {i[2]} | "
              f"Acceso: {i[3]} | Hora: {i[4]}")


# ------------------------------
# FUNCION: Alertas de seguridad
# ------------------------------
def GenerarAlertas():
    print("\n=== Alertas de Seguridad ===")

    # Intentos denegados
    alertas = [i for i in intentos if i[3] == "DENEGADO"]

    if len(alertas) == 0:
        print("No hay alertas. Todos los accesos son permitidos.")
    else:
        for a in alertas:
            print(f"⚠ ALERTA: Acceso DENEGADO para usuario {a[0]}, "
                  f"IP {a[1]}, Servidor {a[2]} a las {a[4]}")


# ------------------------------
# MENÚ PRINCIPAL
# ------------------------------
def Menu():
    while True:
        print("\n==============================")
        print("   SISTEMA DE MONITOREO")
        print("==============================")
        print("1. Registrar intento de acceso")
        print("2. Mostrar reporte completo")
        print("3. Generar alertas")
        print("4. Salir")

        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            RegistrarIntento()
        elif opcion == "2":
            MostrarReporte()
        elif opcion == "3":
            GenerarAlertas()
        elif opcion == "4":
            print("Saliendo del sistema...")
            break
        else:
            print("Opción inválida. Intente de nuevo.")


# Ejecutar el menú
Menu()
