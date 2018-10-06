package core;

import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Paths;

public class PascaLexicalAnalyzer {

    public static void main(String[] args) throws IOException {

    	String rootPath = Paths.get("").toAbsolutePath().toString();
		String subPath = "/pascal/";

        String sourceCode = rootPath + subPath + "/program.pas";

        LexicalAnalyzer lexical = new LexicalAnalyzer(new FileReader(sourceCode));

        PascalToken token;

        while ((token = lexical.yylex()) != null) {
            System.out.println("<" + token.name + ", " + token.value + "> (" + token.line + " - " + token.column + ")");
        }
    }
}