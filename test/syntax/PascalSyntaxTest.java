package syntax;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Paths;

import org.junit.BeforeClass;
import org.junit.Test;

import core.GeneratorLexical;
import core.GeneratorPascal;
import core.PascalToken;
import generated.Parser;
import generated.Scanner;
import java_cup.Lexer;
import java_cup.runtime.Symbol;


public class PascalSyntaxTest {

	private static String rootPath;
	private static String subPath;

	@BeforeClass
	public static void setUp() {
		
		GeneratorLexical.main(null);
		GeneratorPascal.main(null);
		System.out.println("Setup OK");
		
		rootPath = Paths.get("").toAbsolutePath().toString();
		subPath = "/pascal/";
	}

	@Test
	public void helloTest() {	
		String sourcecode = rootPath + subPath + "hello.pas";
        
        try {
			Parser parser = new Parser(new Scanner(new FileReader(sourcecode)));
			parser.parse();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}