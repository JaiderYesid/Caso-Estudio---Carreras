def calcular_IMC(peso:float, altura:float):
    return peso/(altura*altura)

def calcular_porcentaje_grasa(peso:float, altura:float, edad:int, valor_genero:float):
    imc = calcular_IMC(peso, altura)
    return 1.2 *imc+0.23*edad-5.4-valor_genero

def calcular_calorias_en_reposo(peso:float, altura:float, edad:int, valor_genero:int):
    return (10*peso)+(6.25*altura)-(5*edad)+valor_genero

def calcular_calorias_en_actividad(peso:float, altura:int, edad:int, valor_genero:float, valor_actividad:float):
    calorias = calcular_calorias_en_reposo(peso, altura, edad, valor_genero)
    return calorias*valor_actividad
