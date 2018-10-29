package syntax;

import java.io.FileReader;
import java.nio.file.Paths;

import core.GeneratorLexical;
import core.GeneratorPascal;
import generated.Parser;
import generated.Scanner;

public class MainSyntax {

		public static void main(String[] args) {
			GeneratorLexical.main(null);
			GeneratorPascal.main(null);
			System.out.println("Setup OK");
			
			String rootPath = Paths.get("").toAbsolutePath().toString();
			String subPath = "/pascal/";
			
			String sourcecode = rootPath + subPath + "hello.pas";
	        
	        try {
				Parser parser = new Parser(new Scanner(new FileReader(sourcecode)));
				parser.parse();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
}
