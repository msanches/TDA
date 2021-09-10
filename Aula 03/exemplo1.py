# Exemplo: programa Python que utiliza uma função.
# A função somaDoisValores deve ser declarada antes de ser chamada.
def somaDoisValores(a,b):
    result = a + b
    return result

x = float(input("Digite o primeiro valor: "))
y = float(input("Digite o segundo valor: "))
print("A soma dos valores é: ", somaDoisValores(x, y))