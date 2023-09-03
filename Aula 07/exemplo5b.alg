algoritmo volumeCaixa
    real  larg, alt, prof, vol
    início
        escreva ("Digite a largura da caixa em cm:")
        leia (larg)
        escreva ("Digite a altura da caixa em cm:")
        leia (alt)
        escreva ("Digite a profundidade da caixa em cm:")
        leia (prof)
        vol  =  volume (larg,alt,prof)
        escreva ("O volume da caixa é "  + vol + " m³")
    fim
    real volume (real l, real a, real p)
        real res
        res  =  (l/100 * a/100 * p/100)
        retorne (res)
    fim
