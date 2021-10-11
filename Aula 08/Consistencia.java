import java.util.Scanner;

public class Consistencia {
    public static void main(String[] args) {
        double nota, media, soma;
        soma = 0;
        Scanner sc = new Scanner(System.in);
        for(int i=1; i<=3; i++){
            do{
                System.out.print("Digite a nota "+i+"ª do aluno: ");
                nota = sc.nextDouble();
                if(nota<0 || nota>10)
                    System.out.println("Nota inválida! Digite uma nota entre 0 e 10");
            }while(nota<0 || nota>10);
            
            soma += nota;
        }
        media = soma/3;
        System.out.printf("A média do aluno é: %.2f ", media);
    }
}
