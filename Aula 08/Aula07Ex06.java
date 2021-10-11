import java.util.Scanner;

public class Aula07Ex06{
    public static void main(String[] args) {
        float num, menor=0;
        int positivo = 0, negativo = 0;
        boolean controle = false;
        Scanner sc = new Scanner(System.in);
        do{
            System.out.print("Digite um número (0 para sair): ");
            num = sc.nextFloat();

            if(controle == false){
                menor = num;
                controle = true;
            } else if(num < menor){
                menor = num;
            }
            if(num>0)
                positivo++;
            else if(num<0)
                negativo++;

        }while(num !=0);
        sc.close();
        System.out.println("Quantidade de positivos: " + positivo);
        System.out.println("Quantidade de negativos: " + negativo);
        System.out.println("Menor número digitado: " + menor);
    }
}