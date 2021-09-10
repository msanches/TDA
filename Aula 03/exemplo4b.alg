algoritmo calculaMinutos
inteiro  a, b
início
   escreva ("Digite a quantidade de horas:")
   leia (a)
   escreva ("Digite a quantidade de minutos:")
   leia (b)
   escreva ("A quantidade de minutos que passaram é " +  minutos(a, b))
fim
inteiro minutos (inteiro horas, inteiro min)
  inteiro res
  res ← horas*60 + min
  retorne (res)
fim

