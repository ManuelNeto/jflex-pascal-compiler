package lexical;

import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.file.Paths;

import org.junit.BeforeClass;
import org.junit.Test;

import core.GeneratorLexical;
import generated.Scanner;
import java_cup.runtime.Symbol;
import generated.sym;

public class PascalLexicalTest {

	private static String rootPath;
	private static String subPath;

	@BeforeClass
	public static void setUp() throws Exception {
		// Generate New Lexical Analyzer with pascal.lex
		GeneratorLexical.main(null);
		rootPath = Paths.get("").toAbsolutePath().toString();
		subPath = "/pascal/";

		System.out.println("Setup OK");
	}

	@Test
	public void helloTest() {
		// Load Hello Lexical
		System.out.println("Hello test");
		String testCode1Path = rootPath + subPath + "/teste0.pas";
		try {
			String rootPath = Paths.get("").toAbsolutePath().toString();
			FileInputStream stream = new FileInputStream(testCode1Path);
			Reader reader = new InputStreamReader(stream);
			Scanner lexer = new Scanner(reader);

			Symbol symb = lexer.next_token();
			while (symb.sym != sym.EOF) {
				System.out.println(symb + " Name: " + sym.terminalNames[symb.sym]);
				symb = lexer.next_token();
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getMessage());
		}
	}

	@Test
	public void functionTest() {
		// Load If Lexical
		System.out.println("Teste funçao");
		String testCode1Path = rootPath + subPath + "/teste1.pas";
		try {
			String rootPath = Paths.get("").toAbsolutePath().toString();
			FileInputStream stream = new FileInputStream(testCode1Path);
			Reader reader = new InputStreamReader(stream);
			Scanner lexer = new Scanner(reader);

			Symbol symb = lexer.next_token();
			while (symb.sym != sym.EOF) {
				symb = lexer.next_token();
				System.out.println(symb + " Name: " + sym.terminalNames[symb.sym]);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getMessage());
		}
	}

	@Test
	public void setTest() {
		// Load Add Lexical
		System.out.println("Teste Set e Comentarios");
		String testCode1Path = rootPath + subPath + "/teste2.pas";
		try {
			String rootPath = Paths.get("").toAbsolutePath().toString();
			FileInputStream stream = new FileInputStream(testCode1Path);
			Reader reader = new InputStreamReader(stream);
			Scanner lexer = new Scanner(reader);

			Symbol symb = lexer.next_token();
			while (symb.sym != sym.EOF) {
				symb = lexer.next_token();
				System.out.println(symb + " Name: " + sym.terminalNames[symb.sym]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getMessage());
		}
	}

	@Test
	public void conditionalFlowTest() {
		// Load Add Lexical
		System.out.println("Teste fluxo condicional");
		String testCode1Path = rootPath + subPath + "/teste3.pas";
		try {
			String rootPath = Paths.get("").toAbsolutePath().toString();
			FileInputStream stream = new FileInputStream(testCode1Path);
			Reader reader = new InputStreamReader(stream);
			Scanner lexer = new Scanner(reader);

			Symbol symb = lexer.next_token();
			while (symb.sym != sym.EOF) {
				symb = lexer.next_token();
				System.out.println(symb + " Name: " + sym.terminalNames[symb.sym]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getMessage());
		}
	}

	@Test
	public void conditionalTeste2() {
		// Load Add Lexical
		System.out.println("Teste fluxo condicional envolvendo procedures");
		String testCode1Path = rootPath + subPath + "/teste4.pas";
		try {
			String rootPath = Paths.get("").toAbsolutePath().toString();
			FileInputStream stream = new FileInputStream(testCode1Path);
			Reader reader = new InputStreamReader(stream);
			Scanner lexer = new Scanner(reader);

			Symbol symb = lexer.next_token();
			while (symb.sym != sym.EOF) {
				symb = lexer.next_token();
				System.out.println(symb + " Name: " + sym.terminalNames[symb.sym]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getMessage());
		}
	}

	@Test
	public void logicalOperator() {
		// Load Add Lexical
		System.out.println("Teste logical Operator");
		String testCode1Path = rootPath + subPath + "/teste5.pas";
		try {
			String rootPath = Paths.get("").toAbsolutePath().toString();
			FileInputStream stream = new FileInputStream(testCode1Path);
			Reader reader = new InputStreamReader(stream);
			Scanner lexer = new Scanner(reader);

			Symbol symb = lexer.next_token();
			while (symb.sym != sym.EOF) {
				symb = lexer.next_token();
				System.out.println(symb + " Name: " + sym.terminalNames[symb.sym]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getMessage());
		}
	}

	@Test
	public void procedureTest() {
		// Load Add Lexical
		System.out.println("Teste procedure");
		String testCode1Path = rootPath + subPath + "/teste6.pas";
		try {
			String rootPath = Paths.get("").toAbsolutePath().toString();
			FileInputStream stream = new FileInputStream(testCode1Path);
			Reader reader = new InputStreamReader(stream);
			Scanner lexer = new Scanner(reader);

			Symbol symb = lexer.next_token();
			while (symb.sym != sym.EOF) {
				symb = lexer.next_token();
				System.out.println(symb + " Name: " + sym.terminalNames[symb.sym]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getMessage());
		}
	}

}