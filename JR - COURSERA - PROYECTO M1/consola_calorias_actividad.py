import calculadora_indices as cal
from calculadora_indices import calcular_calorias_en_actividad

peso = float(input("Peso de la persona (en Kilogramos): "))
altura = float(input("Altura de la persona (en centimetros): "))
edad = int(input("Edad de la persona: "))
valor_genero = float(input("Masculino 5 y Femenino -161: "))
valor_actividad = float(input("Valor que depende de la actividad física semanal:"))
"""
• 1.2: poco o ningún ejercicio 
• 1.375: ejercicio ligero (1 a 3 días a la semana) 
• 1.55: ejercicio moderado (3 a 5 días a la semana) 
• 1.725: deportista (6 -7 días a la semana) 
• 1.9: atleta (entrenamientos mañana y tarde)
"""

calorias = calcular_calorias_en_actividad(peso, altura, edad, valor_genero, valor_actividad)
print(f"Calorias que quema en reposo: {calorias} cal")