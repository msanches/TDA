def calculaSalario(salario, i):
    salario[i] = salario[i] * 1.03
    
salario = []
for i in range(3):
    leia = float(input(f'Digite o salário do {i+1}º funcionário >_ '))
    salario.append(leia)

try:
    i = int(input('Qual o funcionário vc deseja verificar? '))
    print(f'Salário do {i+1}º funcionário antes do método: {salario[i]}')
    calculaSalario(salario, i)
    print(f'Salário do {i+1}º funcionário após o método: {salario[i]}')
except:
    print('Funcionário não encontrado')