package core;

import java.nio.file.Paths;

import jflex.SilentExit;

public class GeneratorLexical {
    public static void main(String[] args) throws Exception{

    	String rootPath = Paths.get("").toAbsolutePath().toString();
		String corePath = "/spec/";

		String genPath = rootPath + "/src/generated/";
        String file = rootPath + corePath + "pascal.flex";

        String options = "-d";
        String[] generateArgs = {options,genPath,file};

		jflex.Main.generate(generateArgs);


    }
}
