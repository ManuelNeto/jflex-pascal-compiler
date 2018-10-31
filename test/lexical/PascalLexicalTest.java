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
        //Load Hello Lexical
		System.out.println("INICIO Hello");
		String testCode1Path = rootPath + subPath + "/hello.pas";
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
	public void ifTest() {	
        //Load If Lexical
		System.out.println("INICIO If");
		String testCode1Path = rootPath + subPath + "/if.pas";
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
	public void addTest() {	
        //Load Add Lexical
		System.out.println("INICIO Add");
		String testCode1Path = rootPath + subPath + "/add.pas";
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
        //Load Add Lexical
		System.out.println("INICIO Set");
		String testCode1Path = rootPath + subPath + "/set.pas";
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
	public void logicalOprTest() {	
        //Load Add Lexical
		System.out.println("INICIO Logical Opr");
		String testCode1Path = rootPath + subPath + "/logicalOpr.pas";
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