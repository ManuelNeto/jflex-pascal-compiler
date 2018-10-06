package core;

import java.io.File;
import java.nio.file.Paths;

public class GeneratorPascal {

    public static void main(String[] args) {

    	String rootPath = Paths.get("").toAbsolutePath().toString();
		String subPath = "/src/core/";

        String file = rootPath + subPath + "pascal.lex";

        File sourceCode = new File(file);

        jflex.Main.generate(sourceCode);

    }
}