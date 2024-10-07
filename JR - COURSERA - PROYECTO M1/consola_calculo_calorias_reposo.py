import calculadora_indices as cal
from calculadora_indices import calcular_calorias_en_reposo

peso = float(input("Peso de la persona (en Kilogramos): "))
altura = float(input("Altura de la persona (en centimetros): "))
edad = int(input("Edad de la persona: "))
valor_genero = int(input("Masculino 5 y Femenino -161: "))

calorias = calcular_calorias_en_reposo(peso, altura, edad, valor_genero)
print(f"Calorias que quema en reposo: {calorias} cal")