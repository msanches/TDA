def mediaTotal(idh, qtd_linhas, qtd_colunas):
    lin=0
    col=0
    total=0
    for lin in range(qtd_linhas):
        for col in range(qtd_colunas):
            total = total + idh[lin][col]
    print("A média dos IDHs é: " , round(total/(qtd_linhas*qtd_colunas),2))

def mediaPaises(idh, paises, qtd_linhas, qtd_colunas):
    i=0
    j=0
    for i in range(qtd_linhas):
        total = 0
        for j in range(qtd_colunas):
            total = total + idh[i][j]
        print("O IDH do ", paises[i], " é: ", round(total/qtd_colunas,2))

def mediaAno(idh, anos, qtd_linhas, qtd_colunas):
    i = 0
    j = 0
    for j in range(qtd_colunas):
        total = 0
        for i in range(qtd_linhas):
            total = total + idh[i][j]
        print("No ano de ", anos[j], " o IDH médio dos países é: ",round(total/qtd_linhas,2))

def maiorIDH(idh, anos, paises, k, h):
    i =0
    j = 0
    maior = idh[0][0]
    pais = paises[0]
    ano = anos[0]
    for i in range(k):
        for j in range(h):
            if idh[i][j] > maior:
                maior = idh[i][j]
                pais = paises[i]
                ano = anos[j]
    print(pais, " em " , ano , " teve o maior IDH, sendo de: " , maior)



#bloco principal
anos = [2015,2016,2017,2018]
paises = ["Brasil","Angola","Austrália","EUA","Argentina"]
idh =[[0.75,0.85,0.56,0.89],
      [0.89,0.50,0.20,0.12],
      [0.10,0.45,0.12,0.78],
      [0.67,0.90,1.00,0.90],
      [0.11,0.67,0.30,0.39]]

mediaTotal(idh,5,4)
print("**********************************************************")
mediaPaises(idh, paises, len(paises), len(anos))
print("**********************************************************")
mediaAno(idh, anos, len(paises), len(anos))
print("**********************************************************")
maiorIDH(idh, anos, paises, len(paises), len(anos))
print("**********************************************************")
