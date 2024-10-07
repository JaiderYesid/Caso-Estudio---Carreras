import calculadora_indices as cal
from calculadora_indices import calcular_IMC

peso = float(input("Ingrese el peso de la persona (en Kilogramos): "))
altura = float(input("Ingrese la altura de la persona (en metros): "))

imc = calcular_IMC(peso, altura)
print(f"IMC: {imc}")