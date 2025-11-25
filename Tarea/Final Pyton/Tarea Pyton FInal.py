

# ==========================
# Sistema de Inventario de Equipos de Red
# ==========================

equipos = []        # Vector: nombres de equipos
ubicaciones = []    # Vector: ubicaciones registradas

# Matriz: cada fila contiene [equipo, ip, tipo, ubicación, estado]
inventario = []

# --------------------------
# FUNCION: Registrar Equipo
# --------------------------
def RegistrarEquipo():
    print("\n=== Registrar Equipo de Red ===")

    equipo = input("Nombre del equipo: ")
    ip = input("Dirección IP: ")
    tipo = input("Tipo de equipo (Router, Switch, AP, etc.): ")
    ubicacion = input("Ubicación física: ")
    estado = input("Estado (OK / FALLA): ").upper()

    # Validación básica
    if estado not in ["OK", "FALLA"]:
        print("Estado inválido. Se asignará 'OK' por defecto.")
        estado = "OK"

    # Agregar a vectores si no existen
    if equipo not in equipos:
        equipos.append(equipo)

    if ubicacion not in ubicaciones:
        ubicaciones.append(ubicacion)

    # Agregar a la matriz inventario
    inventario.append([equipo, ip, tipo, ubicacion, estado])

    print("\nEquipo registrado correctamente!")

# --------------------------
# FUNCION: Mostrar Inventario
# --------------------------
def MostrarInventario():
    print("\n=== Inventario Completo ===")

    if len(inventario) == 0:
        print("No hay equipos registrados.")
        return

    for fila in inventario:
        print(f"Equipo: {fila[0]}  |  IP: {fila[1]}  |  Tipo: {fila[2]}  | "
              f"Ubicación: {fila[3]}  |  Estado: {fila[4]}")

# --------------------------
# FUNCION: Generar Alertas
# --------------------------
def GenerarAlertas():
    print("\n=== Alertas de Equipos en Falla ===")

    alertas = [fila for fila in inventario if fila[4] == "FALLA"]

    if len(alertas) == 0:
        print("No hay alertas. Todos los equipos están funcionando.")
    else:
        for a in alertas:
            print(f"⚠ ALERTA: Equipo {a[0]} en {a[3]} con IP {a[1]} está en FALLA.")

# --------------------------
# MENÚ PRINCIPAL
# --------------------------
def Menu():
    while True:
        print("\n==========================")
        print(" SISTEMA DE INVENTARIO")
        print("==========================")
        print("1. Registrar equipo")
        print("2. Mostrar inventario")
        print("3. Generar alertas")
        print("4. Salir")

        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            RegistrarEquipo()
        elif opcion == "2":
            MostrarInventario()
        elif opcion == "3":
            GenerarAlertas()
        elif opcion == "4":
            print("Saliendo del sistema...")
            break
        else:
            print("Opción inválida. Intente de nuevo.")

# Ejecutar el menú
Menu()
