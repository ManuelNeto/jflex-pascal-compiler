package syntax;

import java.io.BufferedReader;
import java.io.FileReader;
import java.nio.file.Paths;

import generated.Parser;
import generated.Scanner;

public class SyntaxTest {
	public static void main(String[] args) throws Exception {
		
		String rootPath = Paths.get("").toAbsolutePath().toString();
		String subPath = "/pascal/";
		String file = "exemploGit.pas";
		
		String filePath = rootPath + subPath + file;
		
		Scanner scanner = new Scanner(new BufferedReader(new FileReader(filePath)));
		
		Parser parser = new Parser(scanner);
		
		parser.debug_parse();
		System.out.println("The compilation process was successfully finished!");
	}

}
