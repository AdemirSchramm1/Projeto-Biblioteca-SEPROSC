
import java.util.ArrayList;
import java.util.Scanner;

public class Main_Usuario {
	static ArrayList<Livro> livros = new ArrayList<Livro>();
	static ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
	static Scanner scanner = new Scanner(System.in);
	static Usuario usuarioLogado = null;

	static void logarUsuario() {
		if (usuarios.isEmpty()) {
			System.out.println("Não existe nenhum usuario. Deseja ser o primeiro? S/N");
			if (respostaSim())
				registrarUsuario();
		} else {
			System.out.print("Digite seu nome: ");
			String existeNome = scanner.next();
			System.out.print("Digite seu cpf: ");
			String existeCpf = scanner.next();
			boolean entrou = false;
			for (Usuario u : usuarios) {
				if (u.getNome().equals(existeNome) && u.getCpf().equals(existeCpf)) {
					entrou = true;
					usuarioLogado = u;
					break;
				}
			}
			if (entrou) {
				System.out.println("Você entrou com sucesso");
			} else {
				System.out.println("usuario não encontrado tente novamente!");
			}
		}
	}

	static Usuario registrarUsuario() {
		System.out.print("Digite seu nome: ");
		String nome = scanner.next();
		System.out.print("Digite seu CPF: ");
		String cpf = scanner.next();
		if (cpf.length() == 11 && nome.length() > 2) {
			Usuario u = new Usuario(nome, cpf);
			usuarios.add(u);
			System.out.println("Registrado com sucesso!");
			usuarioLogado = u;
		} else {
			System.out.printf("Cpf invalido / Nome invalido! O cpf deve conter 11 digitos %n"
					+ "e o nome deve termais de dois digitos %n");
		}
		return null;
	}

	static void listarUsuarios() {
		System.out.println("Digite a senha da biblioteca");
		String entrar = scanner.next();
		if (entrar.equals("Biblioteca123")) {
			for (Usuario encontrados : usuarios)
				System.out.println(encontrados);
		}
	}

	static void adicionarLivro() {
		while (true) {
			System.out.println("Digite a senha da biblioteca");
			String entrar = scanner.next();

			if (entrar.equals("Biblioteca123")) {
				Livro l = new Livro();
				livros.add(l);
				l.setAlugado(false);
				System.out.println("Deseja adicionar mais livros? S/N");
				if (!respostaSim())
					break;
			}
		}
	}

	static void listarLivros() {
		for (Livro a : livros) {
			System.out.println(a);
		}
	}

	static void alugarLivro() {
		if (usuarioLogado == null) {
			System.out.println("Você precisa se registrar! Deseja registrarse? S/N");
			if (respostaSim())
				usuarioLogado = registrarUsuario();
		} else {

		}
		if (usuarioLogado.getLivrosAlugados() >= 3) {
			System.out.println("Você alcançou o limite de livros alugados (3)! Deseja devolver algum? S/N");
			if (respostaSim()) {
				devolverLivro();
			} else {
				return;
			}
		}

		System.out.print("Digite a ISBN do livro: ");
		String isbn = scanner.next();

		Livro livroEncontrado = null;
		for (Livro livro : livros) {
			if (livro.getIsbn().equals(isbn)) {
				livroEncontrado = livro;
				break;
			}
		}

		if (livroEncontrado == null) {
			System.out.println("Livro não encontrado! Deseja tentar novamente?");
			if (respostaSim())
				alugarLivro();
			return;
		}

		if (livroEncontrado.isAlugado()) {
			System.out.println("Este livro já foi alugado!");
			return;
		}

		livroEncontrado.setAlugado(true);
		usuarioLogado.incrementarLivrosAlugados();
		System.out.println("Livro alugado com sucesso!");
	}

	static void devolverLivro() {
		System.out.print("Digite a isbn do livro: ");
		String isbn = scanner.next();
		for (Livro livro : livros) {
			if (livro.getIsbn().equals(isbn) && livro.isAlugado() == false) {
				System.out.println("Este livro ja foi devolvido");
				break;
			} else if (livro.getIsbn().equals(isbn)) {
				System.out.println("Livro devolvido!");
				livro.setAlugado(false);
				usuarioLogado.decrementarLivrosAlugados();
				break;
			}
		}
	}

	static boolean respostaSim() {
		String opcao = scanner.next();
		return opcao.equalsIgnoreCase("Sim") || opcao.equalsIgnoreCase("S");
	}
}