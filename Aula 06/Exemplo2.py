import os
os.system('cls' or 'clear')

num = int(input("Digite um número inteiro: "))
for i in range(num+1):
    if i%2 == 0 and i%3 == 0:
        print(f'O número {i} é divisível por 2 e 3')
input("Enter continua...")        