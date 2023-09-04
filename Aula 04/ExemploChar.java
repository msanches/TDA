import javax.swing.JOptionPane;

public class ExemploChar{
    public static void main(String[] args) {
        char op;
        op = JOptionPane.showInputDialog(null, "Digite uma opção \n[A]ritmética\n[P]onderada").charAt(0);

        switch(op){
            case 'A':
            case 'a':
                JOptionPane.showMessageDialog(null, "Você escolheu média aritmética");
                break;
            case 'P':
            case 'p':
                JOptionPane.showMessageDialog(null, "Você escolheu média ponderada");
                break;
            default:
                JOptionPane.showMessageDialog(null, "Opção inválida");
        }
    }
}