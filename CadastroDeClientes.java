import java.util.Date;
import java.util.Scanner;

public class CadastroDeClientes extends Email {
    // importe da classe scanner para o sistema

    Scanner scanner = new Scanner(System.in);

    //  Aqui vai as intacias do sistema

    //  Aqui vai ter todas as variaveis que serão usados no cadastro do cliente

    String nomeCompleto, CPF, telefone, email, nomeDoResposavel, CEP, Logradouro, complemento, bairro, cidade, estado;
    Date dataNsacimento;
    int numero;
    char sexo;

    //  Aqui vai os metodos do sistema onde vai as funcionalidades de cadastro a validações

    public void obterEmail() {
        System.out.println("Digite o seu email por favor: ");
        email = scanner.nextLine();
    }

    @Override
    public boolean validEmail() {
        boolean continuar;

        if(email.contains("@") && email.contains(".com")) {
            System.out.println("Email Valido");
            continuar = true;
        } else {
            System.out.println("Email Invalido");
            continuar = false;
        }

        return continuar;
    }
}
