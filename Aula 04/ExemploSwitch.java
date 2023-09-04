import java.util.Scanner;

public class ExemploSwitch {
    public static void main(String[] args) {
        int opcao;
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite uma opção: ");
        opcao = sc.nextInt();

        switch(opcao){
            case 1 ->
                System.out.println("você escolheu um");
            case 2 ->
                System.out.println("Você escolheu dois");
        }

        sc.close();
    }
}
