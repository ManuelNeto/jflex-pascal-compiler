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
		
		String [] opts = new String[13];
//		opts[0] = "-compact_red";
//		opts[1] = "-expect";
//		opts[2] = "10000";
		opts[0] = "-package";
		opts[1] = "generated";
		opts[2] = "-parser";
		opts[3] = "Parser";
		opts[4] = "-destdir";
		opts[5] = genPath;
		opts[6] = "-symbols";
		opts[7] = "sym";
		opts[8] = "-interface";
		opts[9] = "-expect";
		opts[10] = "10000";
		opts[11] = "-compact_red";
		opts[12] = file_cup;
		
		System.out.println("COMEÇANDO O CUP\n");
		
		java_cup.Main.main(opts);


    }
}