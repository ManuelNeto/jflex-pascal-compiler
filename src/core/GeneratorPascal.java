package core;

import java.nio.file.Paths;

import jflex.SilentExit;

public class GeneratorPascal {

    public static void main(String[] args){

    	String rootPath = Paths.get("").toAbsolutePath().toString();
		String corePath = "/spec/";

		String genPath = rootPath + "/src/generated/";
        String file = rootPath + corePath + "pascal.lex";

        String options = "-d";
        String[] generateArgs = {options,genPath,file};

		try {
			jflex.Main.generate(generateArgs);
		} catch (SilentExit e) {
			e.printStackTrace();
		}


    }
}