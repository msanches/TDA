def calculaSalario(salario, i):
    salario[i] = salario[i] * 1.03
    
salario = []
for i in range(5):
    leia = float(input(f'Digite o salário do {i+1}º funcionário >_ '))
    salario.append(leia)

print(f'Salário do 4º funcionário antes do método: {salario[3]}')
print(salario)
calculaSalario(salario, 3)
print(f'Salário do 4º funcionário após o método: {salario[3]}')
print(salario)