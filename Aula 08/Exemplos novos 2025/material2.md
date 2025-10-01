# Aula – Estruturas de Repetição (faça…enquanto)

**Turma:** CC – 2º semestre • **Tema:** Laço *faça…enquanto* aplicado em cenários reais
**Professor:** Marco Sanches

---

## 1) Folha de Exercícios (6 itens)

### Básicos

**1. Login com limite de tentativas**
Implemente um sistema de login que leia CPF (string) e senha (string).

* O usuário pode tentar **até 3 vezes**.
* Se acertar, interrompa imediatamente e exiba “Bem-vindo”.
* Se errar, mostre quantas tentativas restam.
* Use **faça…enquanto** para controlar as tentativas.

**2. Cafeteria – menu fixo, [5] Sair**
Mostre o menu abaixo e permita ao cliente selecionar itens até escolher **[5] Sair**. Cada seleção soma **1 unidade** ao total.

```
[1] X-Burger (R$ 18,90)
[2] Batata Frita (R$ 9,50)
[3] Suco (R$ 9,00)
[4] Pudim (R$ 12,00)
[5] Sair
```

* Valide opções inválidas (não somar).
* Ao final, exiba **Total a pagar** com 2 casas decimais.
* Use **faça…enquanto** (`opcao != 5`).

### Intermediários

**3. Cafeteria – quantidades + resumo**
Evolua o exercício 2: ao escolher um item válido, pergunte **quantidade (≥1)**.

* Acumule quantidades por item.
* Ao sair, mostre **resumo itemizado** (nome, qtd, preço unitário, subtotal) e **TOTAL**.
* Use **faça…enquanto** e validações.

**4. Carrinho com remoção do último item**
Adapte o exercício 3 para permitir a opção **[9] Desfazer última ação**, removendo a última inclusão (1 item-code com sua quantidade).

* Mantenha uma pilha simples de ações.
* Ao final, exiba o resumo e total.

### Desafios

**5. Cupom + taxa de serviço**
No exercício 3, pergunte após sair do menu:

* Cupom **PROMO5** (5% de desconto sobre o **subtotal**).
* **Taxa de serviço 10%** opcional (aplicada após o desconto).
* Exiba **Subtotal, Desconto, Serviço, Total Final** (2 casas).
* Use **faça…enquanto** no menu e valide cupom/decisões.

**6. Jogo de adivinhação com dicas**
Sorteie um número de 1 a 100. O jogador tem **até 5 tentativas** para acertar.

* Dê dica “maior”/“menor” após cada tentativa.
* Pontuação: começa em 100 e perde 15 por tentativa errada.
* Use **faça…enquanto** (executa ao menos 1 vez).

---

## 2) Gabarito Comentado (C / Java / Python)

### 2.1 Mínimo – Cafeteria com [5] Sair (1 unidade por seleção)

#### C

```c
#include <stdio.h>

int main(void) {
    const double PRECO_XB = 18.90, PRECO_BT = 9.50, PRECO_SC = 9.00, PRECO_PD = 12.00;
    double total = 0.0;
    int opcao;

    puts("Cafeteria Anália\n");
    do { // faça
        printf("=== MENU ===\n"
               "[1] X-Burger (R$ 18,90)\n"
               "[2] Batata Frita (R$ 9,50)\n"
               "[3] Suco (R$ 9,00)\n"
               "[4] Pudim (R$ 12,00)\n"
               "[5] Sair\n"
               "Digite uma opção: ");
        if (scanf("%d", &opcao) != 1) {
            int ch; while ((ch = getchar()) != '\n' && ch != EOF) {}
            puts("Opção inválida.\n");
            opcao = -1; // mantém no laço
            continue;
        }

        switch (opcao) {
            case 1: total += PRECO_XB; break;
            case 2: total += PRECO_BT; break;
            case 3: total += PRECO_SC; break;
            case 4: total += PRECO_PD; break;
            case 5: /* sair */         break;
            default: puts("Opção inválida.\n");
        }
        if (opcao != 5) puts("");
    } while (opcao != 5); // enquanto
    printf("\nTotal a pagar: R$ %.2f\n", total);
    return 0;
}
```

#### Java

```java
import java.util.Scanner;

public class CafeteriaMinima {
    public static void main(String[] args) {
        final double XB = 18.90, BT = 9.50, SC = 9.00, PD = 12.00;
        double total = 0.0; int opcao;
        Scanner sc = new Scanner(System.in);

        System.out.println("Cafeteria Anália\n");
        do { // faça
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
                case 1 -> total += XB;
                case 2 -> total += BT;
                case 3 -> total += SC;
                case 4 -> total += PD;
                case 5 -> { /* sair */ }
                default -> System.out.println("Opção inválida.\n");
            }
            if (opcao != 5) System.out.println();
        } while (opcao != 5); // enquanto

        System.out.printf("%nTotal a pagar: R$ %.2f%n", total);
        sc.close();
    }
}
```

#### Python

```python
XB, BT, SC, PD = 18.90, 9.50, 9.00, 12.00
total = 0.0
print("Cafeteria Anália\n")

while True:  # 'faça'
    print("=== MENU ===")
    print("[1] X-Burger (R$ 18,90)")
    print("[2] Batata Frita (R$ 9,50)")
    print("[3] Suco (R$ 9,00)")
    print("[4] Pudim (R$ 12,00)")
    print("[5] Sair")
    opcao_str = input("Digite uma opção: ").strip()
    if not opcao_str.isdigit():
        print("Opção inválida.\n"); continue
    opcao = int(opcao_str)

    if   opcao == 1: total += XB
    elif opcao == 2: total += BT
    elif opcao == 3: total += SC
    elif opcao == 4: total += PD
    elif opcao == 5: break  # condição do 'enquanto'
    else: print("Opção inválida.\n"); continue
    print()

print(f"\nTotal a pagar: R$ {total:.2f}")
```

---

### 2.2 Quantidades + Resumo (acúmulo por item)

#### C

```c
#include <stdio.h>

int main(void) {
    const char *N[4] = {"X-Burger","Batata Frita","Suco","Pudim"};
    const double P[4] = {18.90, 9.50, 9.00, 12.00};
    int qtd[4] = {0,0,0,0};
    double subtotal = 0.0; int opcao;

    puts("Cafeteria Anália\n");
    do {
        printf("=== MENU ===\n"
               "[1] X-Burger (R$ 18,90)\n"
               "[2] Batata Frita (R$ 9,50)\n"
               "[3] Suco (R$ 9,00)\n"
               "[4] Pudim (R$ 12,00)\n"
               "[5] Sair\n"
               "Digite uma opção: ");
        if (scanf("%d", &opcao) != 1) {
            int ch; while ((ch = getchar()) != '\n' && ch != EOF) {}
            puts("Opção inválida.\n"); opcao = -1; continue;
        }
        if (opcao == 5) break;
        if (opcao < 1 || opcao > 4) { puts("Opção inválida.\n"); continue; }

        int q;
        printf("Quantidade (>=1): ");
        if (scanf("%d",&q) != 1 || q < 1) { puts("Quantidade inválida.\n"); continue; }

        qtd[opcao-1] += q;
        subtotal += P[opcao-1] * q;
        puts("");
    } while (opcao != 5);

    puts("\n=== RESUMO DO PEDIDO ===");
    int itens = 0;
    for (int i=0;i<4;i++) if (qtd[i]>0) {
        double sub = P[i]*qtd[i];
        printf("%s x%d (R$ %.2f) -> R$ %.2f\n", N[i], qtd[i], P[i], sub);
        itens += qtd[i];
    }
    if (itens==0) puts("Carrinho vazio.");
    else { puts("------------------------"); printf("TOTAL: R$ %.2f\n", subtotal); }
    return 0;
}
```

#### Java

```java
import java.util.*;

public class CafeteriaResumo {
    public static void main(String[] args) {
        String[] N = {"X-Burger","Batata Frita","Suco","Pudim"};
        double[] P = {18.90, 9.50, 9.00, 12.00};
        int[] qtd = new int[4];
        double subtotal = 0.0;
        Scanner sc = new Scanner(System.in);
        int opcao;

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
            if (opcao == 5) break;
            if (opcao < 1 || opcao > 4) { System.out.println("Opção inválida.\n"); continue; }

            System.out.print("Quantidade (>=1): ");
            while (!sc.hasNextInt()) { sc.nextLine(); System.out.println("Quantidade inválida."); System.out.print("Quantidade (>=1): "); }
            int q = sc.nextInt(); sc.nextLine();
            if (q < 1) { System.out.println("Quantidade inválida.\n"); continue; }

            qtd[opcao-1] += q;
            subtotal += P[opcao-1]*q;
            System.out.println();
        } while (opcao != 5);

        System.out.println("\n=== RESUMO DO PEDIDO ===");
        int itens = 0;
        for (int i=0;i<4;i++) if (qtd[i]>0) {
            double sub = P[i]*qtd[i];
            System.out.printf("%s x%d (R$ %.2f) -> R$ %.2f%n", N[i], qtd[i], P[i], sub);
            itens += qtd[i];
        }
        if (itens==0) System.out.println("Carrinho vazio.");
        else { System.out.println("------------------------"); System.out.printf("TOTAL: R$ %.2f%n", subtotal); }
        sc.close();
    }
}
```

#### Python

```python
N = {1:"X-Burger", 2:"Batata Frita", 3:"Suco", 4:"Pudim"}
P = {1:18.90, 2:9.50, 3:9.00, 4:12.00}
qtd = {k:0 for k in N}
subtotal = 0.0

print("Cafeteria Anália\n")
while True:  # 'faça'
    print("=== MENU ===")
    for i in range(1,5):
        print(f"[{i}] {N[i]} (R$ {P[i]:.2f})")
    print("[5] Sair")
    op = input("Digite uma opção: ").strip()
    if not op.isdigit():
        print("Opção inválida.\n"); continue
    opcao = int(op)
    if opcao == 5: break
    if opcao not in N:
        print("Opção inválida.\n"); continue

    qstr = input("Quantidade (>=1): ").strip()
    if not qstr.isdigit() or int(qstr) < 1:
        print("Quantidade inválida.\n"); continue
    q = int(qstr)

    qtd[opcao] += q
    subtotal += P[opcao] * q
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
    print(f"TOTAL: R$ {subtotal:.2f}")
```

---

### 2.3 Cupom (PROMO5) + Taxa de Serviço (10%)

> Ordem: **Subtotal → Desconto (5%) → Serviço (10%) → Total Final**

#### C

```c
#include <stdio.h>
#include <ctype.h>

int main(void) {
    const char *N[4] = {"X-Burger","Batata Frita","Suco","Pudim"};
    const double P[4] = {18.90, 9.50, 9.00, 12.00};
    int qtd[4]={0}; double subtotal=0.0; int opcao;

    // --- Menu de compras ---
    do {
        printf("=== MENU ===\n[1] X-Burger (R$ 18,90)\n[2] Batata Frita (R$ 9,50)\n"
               "[3] Suco (R$ 9,00)\n[4] Pudim (R$ 12,00)\n[5] Sair\nDigite uma opção: ");
        if (scanf("%d",&opcao)!=1){int ch;while((ch=getchar())!='\n'&&ch!=EOF){} puts("Opção inválida.\n"); opcao=-1; continue;}
        if (opcao==5) break;
        if (opcao<1||opcao>4){puts("Opção inválida.\n"); continue;}
        int q; printf("Quantidade (>=1): ");
        if (scanf("%d",&q)!=1||q<1){puts("Quantidade inválida.\n"); continue;}
        qtd[opcao-1]+=q; subtotal+=P[opcao-1]*q; puts("");
    } while (opcao!=5);

    // --- Cupom ---
    double desconto=0.0; char cupom[32];
    printf("\nPossui cupom? (PROMO5/nao): ");
    scanf("%31s", cupom);
    for (char *p=cupom; *p; ++p) *p = toupper(*p);
    if (cupom[0]=='P' && cupom[1]=='R') desconto = subtotal * 0.05;

    // --- Serviço ---
    char s; double servico=0.0;
    printf("Adicionar taxa de serviço 10%%? (S/N): ");
    scanf(" %c", &s);
    if (toupper(s)=='S') servico = (subtotal - desconto) * 0.10;

    double total = subtotal - desconto + servico;

    // --- Resumo ---
    puts("\n=== RESUMO DO PEDIDO ===");
    int itens=0; for(int i=0;i<4;i++) if(qtd[i]>0){
        double sub=P[i]*qtd[i];
        printf("%s x%d (R$ %.2f) -> R$ %.2f\n", N[i], qtd[i], P[i], sub);
        itens += qtd[i];
    }
    if (itens==0) puts("Carrinho vazio.");
    else {
        puts("------------------------");
        printf("Subtotal: R$ %.2f\n", subtotal);
        printf("Desconto: R$ %.2f\n", desconto);
        printf("Serviço:  R$ %.2f\n", servico);
        printf("TOTAL:    R$ %.2f\n", total);
    }
    return 0;
}
```

#### Java

```java
import java.util.*;

public class CafeteriaCupomServico {
    public static void main(String[] args) {
        String[] N = {"X-Burger","Batata Frita","Suco","Pudim"};
        double[] P = {18.90, 9.50, 9.00, 12.00};
        int[] qtd = new int[4];
        double subtotal = 0.0;
        Scanner sc = new Scanner(System.in);

        int opcao;
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
            if (opcao == 5) break;
            if (opcao < 1 || opcao > 4) { System.out.println("Opção inválida.\n"); continue; }

            System.out.print("Quantidade (>=1): ");
            while (!sc.hasNextInt()) { sc.nextLine(); System.out.println("Quantidade inválida."); System.out.print("Quantidade (>=1): "); }
            int q = sc.nextInt(); sc.nextLine();
            if (q < 1) { System.out.println("Quantidade inválida.\n"); continue; }

            qtd[opcao-1] += q;
            subtotal += P[opcao-1]*q;
            System.out.println();
        } while (opcao != 5);

        // Cupom
        System.out.print("\nPossui cupom? (PROMO5/nao): ");
        String cupom = sc.nextLine().trim().toUpperCase();
        double desconto = cupom.equals("PROMO5") ? subtotal * 0.05 : 0.0;

        // Serviço
        System.out.print("Adicionar taxa de serviço 10%? (S/N): ");
        String s = sc.nextLine().trim().toUpperCase();
        double servico = s.equals("S") ? (subtotal - desconto) * 0.10 : 0.0;

        double total = subtotal - desconto + servico;

        System.out.println("\n=== RESUMO DO PEDIDO ===");
        int itens = 0;
        for (int i=0;i<4;i++) if (qtd[i]>0) {
            double sub = P[i]*qtd[i];
            System.out.printf("%s x%d (R$ %.2f) -> R$ %.2f%n", N[i], qtd[i], P[i], sub);
            itens += qtd[i];
        }
        if (itens==0) System.out.println("Carrinho vazio.");
        else {
            System.out.println("------------------------");
            System.out.printf("Subtotal: R$ %.2f%n", subtotal);
            System.out.printf("Desconto: R$ %.2f%n", desconto);
            System.out.printf("Serviço:  R$ %.2f%n", servico);
            System.out.printf("TOTAL:    R$ %.2f%n", total);
        }
        sc.close();
    }
}
```

#### Python

```python
N = {1:"X-Burger", 2:"Batata Frita", 3:"Suco", 4:"Pudim"}
P = {1:18.90, 2:9.50, 3:9.00, 4:12.00}
qtd = {k:0 for k in N}
subtotal = 0.0

# --- Menu de compras ---
while True:  # 'faça'
    print("=== MENU ===")
    for i in range(1,5): print(f"[{i}] {N[i]} (R$ {P[i]:.2f})")
    print("[5] Sair")
    op = input("Digite uma opção: ").strip()
    if not op.isdigit(): print("Opção inválida.\n"); continue
    opcao = int(op)
    if opcao == 5: break
    if opcao not in N: print("Opção inválida.\n"); continue

    qstr = input("Quantidade (>=1): ").strip()
    if not qstr.isdigit() or int(qstr) < 1: print("Quantidade inválida.\n"); continue
    q = int(qstr)

    qtd[opcao] += q
    subtotal += P[opcao]*q
    print()

# --- Cupom ---
cupom = input("\nPossui cupom? (PROMO5/nao): ").strip().upper()
desconto = subtotal * 0.05 if cupom == "PROMO5" else 0.0

# --- Serviço ---
srv = input("Adicionar taxa de serviço 10%? (S/N): ").strip().upper()
servico = (subtotal - desconto) * 0.10 if srv == "S" else 0.0

total = subtotal - desconto + servico

# --- Resumo ---
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
    print(f"Serviço:  R$ {servico:.2f}")
    print(f"TOTAL:    R$ {total:.2f}")
```

> **Observação didática**: Em projetos reais, prefira tipos decimais exatos (Java `BigDecimal`, Python `decimal.Decimal`) para valores monetários.

---

## 3) Caça-Bugs (2 trechos) + Gabarito

### Bug 1 — Atribuição vs. Comparação (login)

**Trecho com erro**

```pseudocode
logado <- falso
tentativas <- 0
faca {
    leia(cpf); leia(senha)
    se (cpf == "123" e senha == "123") entao
        logado == verdadeiro   // <-- ERRO: comparação no lugar de atribuição
    senao
        tentativas <- tentativas + 1
    fimse
} enquanto (NAO logado E tentativas < 3)
```

**Como corrigir**

```pseudocode
se (cpf == "123" e senha == "123") entao
    logado <- verdadeiro
senao
    tentativas <- tentativas + 1
fimse
```

**Comentário:** `==` compara; **`<-`** (ou `=` em muitas linguagens) **atribui**.

---

### Bug 2 — Condição de laço incorreta (OU vs. E)

**Trecho com erro**

```pseudocode
tentativas <- 0; logado <- falso
faca {
    // ... lê credenciais ...
    se (correto) entao logado <- verdadeiro senao tentativas <- tentativas + 1
} enquanto (tentativas <= 3 OU logado)  // <-- ERRO
```

**Como corrigir**

```pseudocode
} enquanto (NAO logado E tentativas < 3)
```

**Comentário:** Deve **continuar** apenas enquanto **não** estiver logado **E** **ainda houver** tentativas. Usar `OU` pode causar laço infinito após logar (porque `logado` é verdadeiro).

---

Pronto! Se quiser, eu compacto esse material em um **handout** com capa e sumário, ou preparo uma **versão “lista de exercícios”** separada do **gabarito**, para você distribuir em sala.
