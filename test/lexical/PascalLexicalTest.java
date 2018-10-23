package lexical;

import static org.junit.Assert.*;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Paths;

import org.junit.BeforeClass;
import org.junit.Test;

import core.GeneratorLexical;
import core.PascalToken;
import generated.LexicalAnalyzer;
import generated.Parser;
import generated.Scanner;
import java_cup.runtime.Symbol;


public class PascalLexicalTest {

	private static String rootPath;
	private static String subPath;

	@BeforeClass
	public static void setUp() {
		// Generate New Lexical Analyzer with pascal.lex
		GeneratorLexical.main(null);
		rootPath = Paths.get("").toAbsolutePath().toString();
		subPath = "/pascal/";

		System.out.println("Setup OK");
	}

	@Test
	public void helloTest() {	
        //Load Hello Lexical
		String testCode1Path = rootPath + subPath + "/hello.pas";
        LexicalAnalyzer helloLexical = null;
		try {
			helloLexical = new LexicalAnalyzer(new FileReader(testCode1Path));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		//Print Tokens
		PascalToken token;
		try {
			while ((token = helloLexical.yylex()) != null) {
				    System.out.println("<" + token.name + ", " + token.value + "> (" + token.line + " - " + token.column + ")");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void ifTest() {	
        //Load Hello Lexical
		String testCode1Path = rootPath + subPath + "/if.pas";
        LexicalAnalyzer helloLexical = null;
		try {
			helloLexical = new LexicalAnalyzer(new FileReader(testCode1Path));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		//Print Tokens
		PascalToken token;
		try {
			while ((token = helloLexical.yylex()) != null) {
				    System.out.println("<" + token.name + ", " + token.value + "> (" + token.line + " - " + token.column + ")");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void addTest() {	
        //Load Hello Lexical
		String testCode1Path = rootPath + subPath + "/add.pas";
        LexicalAnalyzer helloLexical = null;
		try {
			helloLexical = new LexicalAnalyzer(new FileReader(testCode1Path));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		//Print Tokens
		PascalToken token;
		try {
			while ((token = helloLexical.yylex()) != null) {
				    System.out.println("<" + token.name + ", " + token.value + "> (" + token.line + " - " + token.column + ")");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


}