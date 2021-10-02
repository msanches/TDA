import java.util.Scanner;

public class Aula03Ex05{
    public static void main(String[] args) {
        double dist, tempo;
        int i;
        Scanner sc = new Scanner(System.in);
        for(i=1; i<=3; i++){
            System.err.println("\nObjeto " + i);
            System.out.print("Digite a distância percorridade em metros: ");
            dist = sc.nextDouble();
            System.out.print("Digite o tempo gasto em segundos: ");
            tempo = sc.nextDouble();
            System.out.printf("A velocidade é %.2f m/s\n", calculaVelocidade(dist, tempo) );
            sc.close();
        }
    }
    public static double calculaVelocidade(double dist, double tempo){
        return(dist/tempo);
    }
}