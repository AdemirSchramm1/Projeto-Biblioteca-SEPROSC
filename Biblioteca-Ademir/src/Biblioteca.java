import java.util.InputMismatchException;
public class Biblioteca extends Main_Usuario{
	public static void main(String[] args) {
		while (true) {
			System.out.println("== Biblioteca ==");
			System.out.println("1 - Entrar");
			System.out.println("2 - Registrar-se");
			System.out.println("3 - Listar Usuarios");
			System.out.println("4 - Adiconario Livro");
			System.out.println("5 - Listar Livros");
			System.out.println("6 - Alugar Livro");
			System.out.println("7 - Devolver Livro");
			System.out.println("0 - Sair");
			try {
				
				int opcao = scanner.nextInt();
				switch (opcao) {
				case 1:
					logarUsuario();
					break;
				case 2:
					registrarUsuario();
					break;
				case 3:
					listarUsuarios();
					break;
				case 4:
					adicionarLivro();
					break;
				case 5:
					listarLivros();
					break;
				case 6:
					alugarLivro();
					break;
				case 7:
					devolverLivro();
					break;
				case 0:
					System.out.println("saindo...");
					return;
					
				}
			}catch(InputMismatchException e){
				 System.out.println("Erro: Por favor, digite apenas números inteiros.");
				 scanner.nextLine();
			}
			}
	}	
	}