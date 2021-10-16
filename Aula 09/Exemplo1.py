salario = []
contador = 0
for i in range(6):
    sal = input(f"Digite o salário do {i+1}º funcionário: ")
    salario.append(sal)

for i in range(6):
    print(f"Salario do {i+1}º funcionário: R$ {salario[i]}")
    if (salario[i] > 1000):
        contador+=1