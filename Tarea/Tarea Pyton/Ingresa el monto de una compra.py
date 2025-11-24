
monto = float(input("Ingresa el monto de tu compra: "))

if monto > 500:
    descuento = monto * 0.10
    total = monto - descuento
    print("Se aplicó un 10% de descuento. Total a pagar:", total)
else:
    print("No hay descuento. Total a pagar:", monto)
