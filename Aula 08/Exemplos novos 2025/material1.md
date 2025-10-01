# Folha de exercícios – “faça…enquanto” (6 itens)

## Básicos

1. **Login com 3 tentativas**
   Implemente um sistema de login que leia CPF (string) e senha (string). O usuário tem até **3 tentativas**. Ao acertar, mostre “Bem-vindo!”. Ao errar 3 vezes, “Acesso bloqueado”.
   **Regras:** use **faça…enquanto**; só incremente tentativas em **falha**; mostre tentativas restantes.

2. **Cafeteria – menu simples**
   Mostre um menu fixo e permita adicionar **1 unidade** por seleção até o usuário escolher **[5] Sair**. Ao final, exiba o **total** com 2 casas decimais.
   **Regras:** use **faça…enquanto**; valide opção; preços centralizados em constantes.

## Intermediários

3. **Cafeteria – quantidades e resumo**
   Evolua o exercício 2: ao escolher um item válido, pergunte a **quantidade (≥1)** e acumule por item. Ao sair, imprima um **resumo itemizado** (nome, qtd, preço, subtotal) e o **total geral**.

4. **Cafeteria – cupom e taxa de serviço**
   Sobre o exercício 3, aceite **cupom “PROMO5”** (−5% sobre subtotal) e opção de **taxa de serviço 10%** (sobre valor após desconto). Mostre **subtotal, desconto, serviço, total**.
   **Ordem:** subtotal → desconto → serviço → total.

## Desafios

5. **Adivinhação com dica e limite**
   O programa sorteia um número entre 1 e 100. O jogador tem **até 5 tentativas**. Após cada palpite, informe “maior/menor”. Exiba pontuação (5 no acerto de 1ª; 4 na 2ª; …; 0 ao fracassar). Use **faça…enquanto**.

6. **Login com backoff exponencial (simulado)**
   Amplie o login (ex. 1): a cada falha, “aguarde Xs” onde X = 1, 2, 4… (não precisa realmente aguardar; apenas simule a mensagem). Registre tentativas usadas no final.

---

# Gabarito comentado – C / Java / Python

> Abaixo estão três **soluções-modelo**:
> (A) **Cafeteria – mínima** (soma 1 unidade por seleção)
> (B) **Cafeteria – quantidades + resumo**
> (C) **Cafeteria – cupom + serviço**
> Todas com o padrão do seu enunciado, em **C**, **Java** e **Python**.

## (A) Cafeteria – mínima

### C

```c
#include <stdio.h>

int main(void) {
    const double P1 = 18.90, P2 = 9.50, P3 = 9.00, P4 = 12.00;
    double total = 0.0;
    int opcao;

    puts("Cafeteria Anália\n");
    do {
        puts("=== MENU ===");
        puts("[1] X-Burger (R$ 18,90)");
        puts("[2] Batata Frita (R$ 9,50)");
        puts("[3] Suco (R$ 9,00)");
        puts("[4] Pudim (R$ 12,00)");
        puts("[5] Sair");
        printf("Digite uma opção: ");

        if (scanf("%d", &opcao) != 1) {
            int ch; while ((ch = getchar())!='\n' && ch!=EOF) {}
            puts("Opção inválida.\n"); opcao = -1; continue;
        }
        switch (opcao) {
            case 1: total += P1; break;
            case 2: total += P2; break;
            case 3: total += P3; break;
            case 4: total += P4; break;
            case 5: break;
            default: puts("Opção inválida.\n");
        }
        if (opcao != 5) puts("");
    } while (opcao != 5);

    printf("\nTotal a pagar: R$ %.2f\n", total);
    return 0;
}
```

### Java

```java
import java.util.Scanner;
public class CafeteriaMinima {
    public static void main(String[] args) {
        final double P1=18.90, P2=9.50, P3=9.00, P4=12.00;
        double total = 0.0; int opcao;
        Scanner sc = new Scanner(System.in);
        System.out.println("Cafeteria Anália\n");
        do {
            System.out.println("=== MENU ===");
            System.out.println("[1] X-Burger (R$ 18,90)");
            System.out.println("[2] Batata Frita (R$ 9,50)");
            System.out.println("[3] Suco (R$ 9,00)");
            System.out.println("[4] Pudim (R$ 12,00)");
            System.out.println("[5] Sair");
            System.out.print("Digite uma opção: ");

            while (!sc.hasNextInt()) { sc.nextLine(); System.out.println("Opção inválida.\n"); System.out.print("Digite uma opção: "); }
            opcao = sc.nextInt(); sc.nextLine();

            switch (opcao) {
                case 1 -> total += P1;
                case 2 -> total += P2;
                case 3 -> total += P3;
                case 4 -> total += P4;
                case 5 -> {}
                default -> System.out.println("Opção inválida.\n");
            }
            if (opcao != 5) System.out.println();
        } while (opcao != 5);
        System.out.printf("%nTotal a pagar: R$ %.2f%n", total);
        sc.close();
    }
}
```

### Python

```python
P1, P2, P3, P4 = 18.90, 9.50, 9.00, 12.00
total = 0.0
print("Cafeteria Anália\n")
while True:  # 'faça'
    print("=== MENU ===")
    print("[1] X-Burger (R$ 18,90)")
    print("[2] Batata Frita (R$ 9,50)")
    print("[3] Suco (R$ 9,00)")
    print("[4] Pudim (R$ 12,00)")
    print("[5] Sair")
    s = input("Digite uma opção: ").strip()
    if not s.isdigit():
        print("Opção inválida.\n"); continue
    op = int(s)
    if   op == 1: total += P1
    elif op == 2: total += P2
    elif op == 3: total += P3
    elif op == 4: total += P4
    elif op == 5: break
    else: print("Opção inválida.\n"); continue
    print()
print(f"\nTotal a pagar: R$ {total:.2f}")
```

---

## (B) Cafeteria – quantidades + resumo

### C

```c
#include <stdio.h>

int main(void) {
    const char *N[4] = {"X-Burger","Batata Frita","Suco","Pudim"};
    const double P[4] = {18.90, 9.50, 9.00, 12.00};
    int qtd[4] = {0,0,0,0};
    double total = 0.0;
    int op;

    puts("Cafeteria Anália\n");
    do {
        puts("=== MENU ===");
        puts("[1] X-Burger (R$ 18,90)");
        puts("[2] Batata Frita (R$ 9,50)");
        puts("[3] Suco (R$ 9,00)");
        puts("[4] Pudim (R$ 12,00)");
        puts("[5] Sair");
        printf("Digite uma opção: ");
        if (scanf("%d", &op) != 1) { int ch; while((ch=getchar())!='\n'&&ch!=EOF){}; puts("Opção inválida.\n"); op=-1; continue; }

        if (op == 5) break;
        if (op < 1 || op > 4) { puts("Opção inválida.\n"); continue; }

        int q;
        do {
            printf("Quantidade (>=1): ");
            if (scanf("%d",&q)!=1){ int ch; while((ch=getchar())!='\n'&&ch!=EOF){}; puts("Quantidade inválida."); q=0; }
            if (q < 1) puts("Quantidade inválida.");
        } while (q < 1);

        qtd[op-1] += q;
        total += P[op-1] * q;
        puts("");
    } while (1);

    puts("\n=== RESUMO DO PEDIDO ===");
    int itens = 0;
    for (int i=0;i<4;i++) if (qtd[i]>0) {
        double sub = P[i]*qtd[i];
        printf("%s x%d (R$ %.2f) -> R$ %.2f\n", N[i], qtd[i], P[i], sub);
        itens += qtd[i];
    }
    if (!itens) puts("Carrinho vazio.");
    else { puts("------------------------"); printf("TOTAL: R$ %.2f\n", total); }
    return 0;
}
```

### Java

```java
import java.util.*;

public class CafeteriaResumo {
    public static void main(String[] args) {
        String[] N = {"X-Burger","Batata Frita","Suco","Pudim"};
        double[] P = {18.90, 9.50, 9.00, 12.00};
        int[] qtd = {0,0,0,0};
        double total = 0.0;

        Scanner sc = new Scanner(System.in);
        System.out.println("Cafeteria Anália\n");
        while (true) {
            System.out.println("=== MENU ===");
            System.out.println("[1] X-Burger (R$ 18,90)");
            System.out.println("[2] Batata Frita (R$ 9,50)");
            System.out.println("[3] Suco (R$ 9,00)");
            System.out.println("[4] Pudim (R$ 12,00)");
            System.out.println("[5] Sair");
            System.out.print("Digite uma opção: ");
            while (!sc.hasNextInt()) { sc.nextLine(); System.out.println("Opção inválida.\n"); System.out.print("Digite uma opção: "); }
            int op = sc.nextInt(); sc.nextLine();
            if (op == 5) break;
            if (op < 1 || op > 4) { System.out.println("Opção inválida.\n"); continue; }

            int q;
            do {
                System.out.print("Quantidade (>=1): ");
                while (!sc.hasNextInt()) { sc.nextLine(); System.out.println("Quantidade inválida."); System.out.print("Quantidade (>=1): "); }
                q = sc.nextInt(); sc.nextLine();
                if (q < 1) System.out.println("Quantidade inválida.");
            } while (q < 1);

            qtd[op-1] += q;
            total += P[op-1] * q;
            System.out.println();
        }

        System.out.println("\n=== RESUMO DO PEDIDO ===");
        int itens = 0;
        for (int i=0;i<4;i++) if (qtd[i]>0) {
            double sub = P[i]*qtd[i];
            System.out.printf("%s x%d (R$ %.2f) -> R$ %.2f%n", N[i], qtd[i], P[i], sub);
            itens += qtd[i];
        }
        if (itens == 0) System.out.println("Carrinho vazio.");
        else { System.out.println("------------------------"); System.out.printf("TOTAL: R$ %.2f%n", total); }
        sc.close();
    }
}
```

### Python

```python
N = {1:"X-Burger", 2:"Batata Frita", 3:"Suco", 4:"Pudim"}
P = {1:18.90, 2:9.50, 3:9.00, 4:12.00}
qtd = {k:0 for k in N}
total = 0.0

print("Cafeteria Anália\n")
while True:
    print("=== MENU ===")
    for i in range(1,5):
        print(f"[{i}] {N[i]} (R$ {P[i]:.2f})")
    print("[5] Sair")
    s = input("Digite uma opção: ").strip()
    if not s.isdigit(): print("Opção inválida.\n"); continue
    op = int(s)
    if op == 5: break
    if op not in N: print("Opção inválida.\n"); continue

    while True:
        q = input("Quantidade (>=1): ").strip()
        if q.isdigit() and int(q) >= 1:
            q = int(q); break
        print("Quantidade inválida.")
    qtd[op] += q
    total += P[op] * q
    print()

print("\n=== RESUMO DO PEDIDO ===")
itens = sum(qtd.values())
if itens == 0:
    print("Carrinho vazio.")
else:
    for i in range(1,5):
        if qtd[i] > 0:
            sub = P[i]*qtd[i]
            print(f"{N[i]} x{qtd[i]} (R$ {P[i]:.2f}) -> R$ {sub:.2f}")
    print("------------------------")
    print(f"TOTAL: R$ {total:.2f}")
```

---

## (C) Cafeteria – cupom + serviço

> **Regras implementadas:** cupom `"PROMO5"` (−5% sobre subtotal), serviço opcional 10%.

### C

```c
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main(void) {
    const char *N[4] = {"X-Burger","Batata Frita","Suco","Pudim"};
    const double P[4] = {18.90, 9.50, 9.00, 12.00};
    int qtd[4] = {0,0,0,0};
    double subtotal = 0.0; int op;

    puts("Cafeteria Anália\n");
    do {
        puts("=== MENU ===");
        puts("[1] X-Burger (R$ 18,90)");
        puts("[2] Batata Frita (R$ 9,50)");
        puts("[3] Suco (R$ 9,00)");
        puts("[4] Pudim (R$ 12,00)");
        puts("[5] Sair");
        printf("Digite uma opção: ");
        if (scanf("%d",&op)!=1){ int ch; while((ch=getchar())!='\n'&&ch!=EOF){}; puts("Opção inválida.\n"); op=-1; continue; }
        if (op==5) break; if (op<1||op>4){ puts("Opção inválida.\n"); continue; }

        int q; do {
            printf("Quantidade (>=1): ");
            if (scanf("%d",&q)!=1){ int ch; while((ch=getchar())!='\n'&&ch!=EOF){}; puts("Quantidade inválida."); q=0; }
            if (q<1) puts("Quantidade inválida.");
        } while(q<1);
        qtd[op-1]+=q; subtotal += P[op-1]*q; puts("");
    } while(1);

    // Cupom
    char cupom[32]; double desconto=0.0;
    printf("Cupom (PROMO5 ou Enter p/ nenhum): ");
    int ch; while((ch=getchar())!='\n'&&ch!=EOF){} // limpa NL
    if (fgets(cupom,sizeof(cupom),stdin)){
        for(char *p=cupom; *p; ++p){ if(*p=='\n') *p=0; else *p=toupper(*p); }
        if (strcmp(cupom,"PROMO5")==0) desconto = 0.05 * subtotal;
    }

    // Serviço
    char sn='N'; printf("Adicionar taxa de serviço (10%%)? (S/N): ");
    sn = getchar(); sn = toupper(sn);
    double apos_desc = subtotal - desconto;
    double servico = (sn=='S') ? 0.10 * apos_desc : 0.0;
    double total = apos_desc + servico;

    // Saída
    puts("\n=== RESUMO DO PEDIDO ===");
    int itens=0;
    for(int i=0;i<4;i++) if(qtd[i]>0){
        double sub=P[i]*qtd[i];
        printf("%s x%d (R$ %.2f) -> R$ %.2f\n", N[i], qtd[i], P[i], sub);
        itens+=qtd[i];
    }
    if(!itens) puts("Carrinho vazio.");
    else{
        puts("------------------------");
        printf("Subtotal: R$ %.2f\n", subtotal);
        printf("Desconto: R$ %.2f\n", desconto);
        printf("Serviço : R$ %.2f\n", servico);
        printf("TOTAL   : R$ %.2f\n", total);
    }
    return 0;
}
```

### Java

```java
import java.util.*;

public class CafeteriaCupomServico {
    public static void main(String[] args) {
        String[] N = {"X-Burger","Batata Frita","Suco","Pudim"};
        double[] P = {18.90, 9.50, 9.00, 12.00};
        int[] qtd = {0,0,0,0};
        double subtotal = 0.0;

        Scanner sc = new Scanner(System.in);
        System.out.println("Cafeteria Anália\n");
        while (true) {
            System.out.println("=== MENU ===");
            System.out.println("[1] X-Burger (R$ 18,90)");
            System.out.println("[2] Batata Frita (R$ 9,50)");
            System.out.println("[3] Suco (R$ 9,00)");
            System.out.println("[4] Pudim (R$ 12,00)");
            System.out.println("[5] Sair");
            System.out.print("Digite uma opção: ");
            while(!sc.hasNextInt()){ sc.nextLine(); System.out.println("Opção inválida.\n"); System.out.print("Digite uma opção: "); }
            int op = sc.nextInt(); sc.nextLine();
            if (op == 5) break;
            if (op < 1 || op > 4) { System.out.println("Opção inválida.\n"); continue; }

            int q;
            do {
                System.out.print("Quantidade (>=1): ");
                while(!sc.hasNextInt()){ sc.nextLine(); System.out.println("Quantidade inválida."); System.out.print("Quantidade (>=1): "); }
                q = sc.nextInt(); sc.nextLine();
                if (q < 1) System.out.println("Quantidade inválida.");
            } while (q < 1);

            qtd[op-1] += q;
            subtotal += P[op-1] * q;
            System.out.println();
        }

        // Cupom
        System.out.print("Cupom (PROMO5 ou Enter p/ nenhum): ");
        String cup = sc.nextLine().trim().toUpperCase();
        double desconto = cup.equals("PROMO5") ? 0.05 * subtotal : 0.0;

        // Serviço
        System.out.print("Adicionar taxa de serviço (10%)? (S/N): ");
        String sn = sc.nextLine().trim().toUpperCase();
        double aposDesc = subtotal - desconto;
        double servico = sn.equals("S") ? 0.10 * aposDesc : 0.0;
        double total = aposDesc + servico;

        System.out.println("\n=== RESUMO DO PEDIDO ===");
        int itens = 0;
        for (int i=0;i<4;i++) if (qtd[i]>0) {
            double sub = P[i]*qtd[i];
            System.out.printf("%s x%d (R$ %.2f) -> R$ %.2f%n", N[i], qtd[i], P[i], sub);
            itens += qtd[i];
        }
        if (itens == 0) System.out.println("Carrinho vazio.");
        else {
            System.out.println("------------------------");
            System.out.printf("Subtotal: R$ %.2f%n", subtotal);
            System.out.printf("Desconto: R$ %.2f%n", desconto);
            System.out.printf("Serviço : R$ %.2f%n", servico);
            System.out.printf("TOTAL   : R$ %.2f%n", total);
        }
        sc.close();
    }
}
```

### Python

```python
N = {1:"X-Burger", 2:"Batata Frita", 3:"Suco", 4:"Pudim"}
P = {1:18.90, 2:9.50, 3:9.00, 4:12.00}
qtd = {k:0 for k in N}
subtotal = 0.0

print("Cafeteria Anália\n")
while True:
    print("=== MENU ===")
    for i in range(1,5):
        print(f"[{i}] {N[i]} (R$ {P[i]:.2f})")
    print("[5] Sair")
    s = input("Digite uma opção: ").strip()
    if not s.isdigit(): print("Opção inválida.\n"); continue
    op = int(s)
    if op == 5: break
    if op not in N: print("Opção inválida.\n"); continue

    while True:
        q = input("Quantidade (>=1): ").strip()
        if q.isdigit() and int(q) >= 1:
            q = int(q); break
        print("Quantidade inválida.")
    qtd[op] += q
    subtotal += P[op] * q
    print()

cup = input("Cupom (PROMO5 ou Enter p/ nenhum): ").strip().upper()
desconto = 0.05 * subtotal if cup == "PROMO5" else 0.0
sn = input("Adicionar taxa de serviço (10%)? (S/N): ").strip().upper()
apos_desc = subtotal - desconto
servico = 0.10 * apos_desc if sn == "S" else 0.0
total = apos_desc + servico

print("\n=== RESUMO DO PEDIDO ===")
itens = sum(qtd.values())
if itens == 0:
    print("Carrinho vazio.")
else:
    for i in range(1,5):
        if qtd[i] > 0:
            sub = P[i]*qtd[i]
            print(f"{N[i]} x{qtd[i]} (R$ {P[i]:.2f}) -> R$ {sub:.2f}")
    print("------------------------")
    print(f"Subtotal: R$ {subtotal:.2f}")
    print(f"Desconto: R$ {desconto:.2f}")
    print(f"Serviço : R$ {servico:.2f}")
    print(f"TOTAL   : R$ {total:.2f}")
```

---

# Caça-bugs – 2 trechos com correção esperada

## Bug 1 – Login: atribuição vs comparação + condição do laço

```pseudocode
// BUGADO
tentativas <- 0
logado <- falso
faca {
    leia(cpf, senha)
    se (cpf == "123" e senha == "abc") entao
        logado == verdadeiro    // BUG: comparação em vez de atribuição
    senao
        tentativas <- tentativas + 1
    fimse
} enquanto (tentativas <= 3 ou logado == verdadeiro) // BUG: OU mantém laço

// CORRETO
tentativas <- 0
logado <- falso
faca {
    leia(cpf, senha)
    se (cpf == "123" e senha == "abc") entao
        logado <- verdadeiro
    senao
        tentativas <- tentativas + 1
    fimse
} enquanto (NAO logado E tentativas < 3)
```

**O que discutir em sala:**

* Atribuição (`<-`) vs comparação (`==`);
* Condição de parada: continuar **enquanto** não logado **E** ainda há tentativas.

---

## Bug 2 – Cafeteria: validação de opção antes da quantidade

```pseudocode
// BUGADO: pergunta quantidade mesmo com código inválido
leia(opcao)
leia(qtd) // lê antes de validar!
se (opcao < 1 ou opcao > 4) entao
    escreva("Opção inválida")
senao
    total <- total + preco[opcao] * qtd
fimse

// CORRETO: valide primeiro; só então peça quantidade
leia(opcao)
se (opcao < 1 ou opcao > 4) entao
    escreva("Opção inválida")
senao
    repita
        escreva("Quantidade (>=1): ")
        leia(qtd)
    ate (qtd >= 1)
    total <- total + preco[opcao] * qtd
fimse
```

**Ponto didático:** ordem de validação evita “lixo” de entrada e cálculos indevidos.

---

Se quiser, eu junto tudo isso em um **PDF** de handout (com capa e índice) ou separo em **três arquivos `.md`** prontos para seu repositório/AVA.
