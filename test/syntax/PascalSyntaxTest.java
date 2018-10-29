package syntax;


import java.io.FileReader;
import java.nio.file.Paths;

import org.junit.BeforeClass;
import org.junit.Test;

import core.GeneratorLexical;
import core.GeneratorPascal;
import generated.Parser;
import generated.Scanner;
import java_cup.runtime.ComplexSymbolFactory;


public class PascalSyntaxTest {

	private static String rootPath;
	private static String subPath;

	@BeforeClass
	public static void setUp() {
		
		GeneratorLexical.main(null);
		GeneratorPascal.main(null);
		
		rootPath = Paths.get("").toAbsolutePath().toString();
		subPath = "/pascal/";
		System.out.println("Setup Syntax OK");
	}

	@Test
	public void helloTest() {	
		ComplexSymbolFactory csf = new ComplexSymbolFactory();
		String sourcecode = rootPath + subPath + "hello.pas";
        try {
        	System.out.println("HELLO Parse Test Init");
			Parser parser = new Parser(new Scanner(new FileReader(sourcecode)));
			parser.debug_parse();
			System.out.println("HELLO Parse Test Out");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}