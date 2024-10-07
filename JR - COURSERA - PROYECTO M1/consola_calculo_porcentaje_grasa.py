import calculadora_indices as cal
from calculadora_indices import calcular_porcentaje_grasa

peso = float(input("Peso de la persona (en Kilogramos): "))
altura = float(input("Altura de la persona (en metros): "))
edad = int(input("Edad de la persona: "))
valor_genero = float(input("Masculino 10.8 y Femenino 0: "))

porcentaje_grasa = calcular_porcentaje_grasa(peso, altura, edad, valor_genero)
print(f"Porcentaje de grasa: {porcentaje_grasa}%")