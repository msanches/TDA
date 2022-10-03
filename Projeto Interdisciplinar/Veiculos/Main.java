import java.util.Scanner;
import javax.swing.JOptionPane;

public class Main {
    public static void main(String[] args) {
        int op, id = 0;

        Scanner sc = new Scanner(System.in);
        Veiculo v = new Veiculo();
        Cliente c = new Cliente();
        
        while(true){
            op = Integer.parseInt(JOptionPane.showInputDialog(null,"Menu Principal"
            +"\n1- Cadastrar veículo"
            +"\n2- Consultar veículo"
            +"\n3- Consultar Estoque"
            +"\n4- Consultar cliente"
            +"\n5- Sair"
            +"\nDigite uma opção: "));
            if(op == 5){
                JOptionPane.showMessageDialog(null, "Obrigado por utilizar nossos serviços!");
                break;
            }
            switch(op){
                case 1:
                    System.out.println();
                    v.setId(id);
                    System.out.print("Digite a marca do veículo: ");
                    v.setMarca(sc.next());
                    System.out.print("Digite o modelo do veículo: ");
                    v.setModelo(sc.next());
                    System.out.print("Digite o ano do veículo: ");
                    v.setAno(sc.nextInt());
                    System.out.print("Digite a placa do veículo: ");
                    v.setPlaca(sc.next());
                    System.out.print("Digite o valor do veículo: ");
                    v.setValor(sc.nextFloat());
                    id = v.cadastrar();
                break;
                case 2: 
                    System.out.println("\nConsulta veículo");
                    v.setPlaca(JOptionPane.showInputDialog(null, "Digite a placa para consultar: "));
                    v.consulta();
                break;
                case 3: v.estoque();
                break;
                case 4: //solicitar o cpf para consultar o cliente
                        //mesma implementação de consulta veículo
                        //chamar o método c.consulta();
                break;
                default:
                    System.out.println("Opção inválida!");
            }   
        }
        sc.close();
    }
}