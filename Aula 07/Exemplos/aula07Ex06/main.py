idade = []
acima = 0
soma = 0
for i in range(5):
  num = int(input("Entre com a idade do aluno: " )) 
  idade.append(num)
  soma = soma + num
media = soma / 5

for i in range(5):
  if idade[i] > media:
      acima = acima + 1

print("A média de idade dos alunos é: ", media)
print("A quantidade de aluno com idade acima da média é de: ", acima)
