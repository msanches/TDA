num = int(input('Digite um número inteiro: '))
print('-'*20)
print('Tabuada do', num)
for i in range(11):
    print(f'{num} x {i} = {num*i}')