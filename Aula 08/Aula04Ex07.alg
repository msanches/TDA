algoritmo exercicio7
    real alt, dist, tamescada
    inicio
        escreva ("Entre com o tamanho da escada (lembrando que a escada tem que ser maior que a altura que se deseja alcançar): ")
        leia (tamescada)
        escreva ("Entre com a altura em que deseja pregar o quadro: ")
        leia (alt)
        dist = raizQ(tamescada^2 - alt^2)
        escreva ("A distância em que a escada deveria ficar é: " + dist + "metros") 
    fim