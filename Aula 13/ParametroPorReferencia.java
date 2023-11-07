import java.util.Scanner;

public class ParametroPorReferencia {
    public static void main(String[] args) {
        int[] num = new int[3];
        Scanner sc = new Scanner(System.in);
        for(int i=0; i<3; i++){
            System.out.print("Digite o "+(i+1)+"º número: ");
            num[i] = sc.nextInt();
        }
        multiplica(num);
        System.out.println("\nValores após a chamada do método");
        for(int i=0; i<3; i++)
            System.out.println("Numero: " + num[i]);
    }

    public static void multiplica(int num[]){
        for(int i=0; i<3; i++)
            num[i] = num[i] * 2;
    }
}
