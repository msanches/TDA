import javax.swing.JOptionPane;
 
public class Aula07Ex03 {
    public static void main(String arg[]) {
        int i, n;
        float soma;
        soma = 0;
        n = solicitaNumero("Digite um numero");
        for(i = 1; i<= n; i++){
            soma += (float) 1/i;
        }
        JOptionPane.showMessageDialog(null,
                        "Soma:  " + soma,
                        "Teste Procedimento",
                        JOptionPane.WARNING_MESSAGE);
    }
    static int solicitaNumero(String msg) {
        return Integer.parseInt(JOptionPane.showInputDialog(null,
                msg,
                "Entrada de Dados",
                JOptionPane.WARNING_MESSAGE));
    }
}