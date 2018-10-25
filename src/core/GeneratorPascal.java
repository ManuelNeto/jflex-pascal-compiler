package core;

import java.io.IOException;
import java.nio.file.Paths;

import java_cup.internal_error;
import java_cup.runtime.*;

import jflex.SilentExit;

public class GeneratorPascal {

    public static void main(String[] args) throws internal_error, IOException, Exception{

    	String rootPath = Paths.get("").toAbsolutePath().toString();
		String corePath = "/spec/";

		String genPath = rootPath + "/src/generated/";
        String file = rootPath + corePath + "pascal.flex";

        String options = "-d";
        String[] generateArgs = {options,genPath,file};

		jflex.Main.generate(generateArgs);
		
		
		String op1 = "-compact_red";
		String op2 = "-expect 10000";
		String op3 = "-package generated";
		String op4 = "-destdir " + genPath;
		String file_cup = rootPath + corePath + "parser.cup";
		String op5 = "-parser Parser";
		
		String [] genArgs = {op4, op5, file_cup};
		
		String [] opts = new String[10];
		opts[0] = "-compact_red";
		opts[1] = "-expect";
		opts[2] = "10000";
		opts[3] = "-package";
		opts[4] = "generated";
		opts[5] = "-destdir";
		opts[6] = genPath;
		opts[7] = "-parser";
		opts[8] = "Parser";
		opts[9] = file_cup;
		
		System.out.println("COMEÇANDO O CUP\n");
		
		java_cup.Main.main(opts);


    }
}