import java.util.Scanner;

public class Detetive {
    public static void main(String[] args) {
        int i, cont=0;
        char resp;
        String perguntas[] = {"Telefonou para a vítima?", "Esteve no local do crime?", 
                "Mora perto da vítima", "Devia $$ para a vítima",  "Já trabalhou com a vítima"};
        Scanner sc = new Scanner(System.in);
        for(i=0; i<5; i++){
            System.out.print(perguntas[i] + ">_ ");
            resp = sc.next().charAt(0);
            if(resp == 's' || resp == 'S'){
                cont++;
            }
        }

        if(cont == 2)
            System.out.println("Você é Suspeito");
        else if(cont == 3 || cont == 4)
            System.out.println("Você é Cúmplice");
        else if(cont == 5)
            System.out.println("Você é Assassino");
        else
            System.out.println("Você é Inocente");      
    }
}