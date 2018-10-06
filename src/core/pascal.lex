package core;

import java_cup.runtime.*;

%%

%{


private PascalToken createToken(String name, String value) {
    return new PascalToken( name, value, yyline, yycolumn);
}

%}

%public
%class LexicalAnalyzer
%type PascalToken
%line
%column

inteiro = 0|[1-9][0-9]*
brancos = [\n| |\t]
id = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
separador = [(|)|{|}|[|]|;|,|.]
literal = [\'|\"]
texto = [\'|\"][_|a-z|A-Z][a-z|A-Z|0-9|_]*[\'|\"]

program = "Program"

%%

{inteiro} { return createToken("inteiro", yytext());}
{program} { return createToken("PROGRAMA", yytext());} 
{brancos} { /**/ }
{id} {return createToken("identificador", yytext());}
{separador} {return createToken("separador", yytext());}
{texto} {return createToken("texto", yytext());}

. { throw new RuntimeException("Caractere inválido " + yytext() + " na linha " + yyline + ", coluna " +yycolumn); }

