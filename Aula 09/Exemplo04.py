idade = []
acima = 0
soma = 0
n = 20

for i in range(n):
  num = int(input(f'Entre com a idade do {i+1}º aluno: ' )) 
  idade.append(num)
  soma = soma + num
  
media = soma / len(idade)

for i in range(n):
  if idade[i] > media:
      acima = acima + 1

print(f'A média de idade dos alunos é: {media:.2f}')
print(f'A quantidade de aluno com idade acima da média é de: {acima}')