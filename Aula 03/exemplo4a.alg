algoritmo calculaMinutos
inteiro  a, b, resmin
início
   escreva ("Digite a quantidade de horas:")
   leia (a)
   escreva ("Digite a quantidade de minutos:")
   leia (b)
   resmin ← minutos(a, b)
   escreva ("A quantidade de minutos que passaram é " + resmin)
fim
inteiro minutos (inteiro horas, inteiro min){
    inteiro res
    res ← horas*60 + min
    retorne (res)
}

