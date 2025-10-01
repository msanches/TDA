MAX_TENTATIVAS = 3
tentativas = 0
logado = False

print("Para iniciar o atendimento, digite as credenciais de acesso!")

while True:  # simula o 'faça'
    cpf = input("Digite o seu CPF (11 dígitos): ").strip()
    senha = input("Digite a sua senha: ")

    if cpf == "12345678901" and senha == "123":
        logado = True
    else:
        tentativas += 1
        if tentativas < MAX_TENTATIVAS:
            restantes = MAX_TENTATIVAS - tentativas
            print(f"Credenciais inválidas. Você ainda tem {restantes} tentativa{'s' if restantes != 1 else ''}.")
    # condição do 'enquanto'
    if logado or tentativas >= MAX_TENTATIVAS:
        break

if logado:
    print("Bem-vindo ao Banco Anália!")
    print("[1] Saldo\n[2] Saque\n[3] Sair")
else:
    print("Você atingiu o limite de tentativas. Acesso bloqueado. Tente mais tarde.")
