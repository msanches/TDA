import javax.swing.JOptionPane;

public class ExemploChar2 {
    public static void main(String[] args) {
        char op = JOptionPane.showInputDialog(null, 
                            "Digite uma opção: ").charAt(0);
        
        switch(op){
            case 'a', 'A' ->{
                System.out.println("A");
                System.out.println("Até mais");
            }
            case 'b', 'B' ->{
                System.out.println("B");
                JOptionPane.showMessageDialog(null, "Olá mundo");
            }
            default -> 
                System.out.println("Opção inválida");
        }
    }
}
