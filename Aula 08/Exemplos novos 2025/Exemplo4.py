import os

os.system('cls')

menu = ['X-Burger (R$ 18,90)', 'Batata frita (R$ 9,50)', 'Suco (R$ 10,00)', 'Pudim (R$ 12,00)', 'Sair']
print('\nCafeteria Anália\n')
for i, item in enumerate(menu, start= 1):
    print(f'{[i]} {item}')
            
opção = int(input('\nDigite uma opção: '))