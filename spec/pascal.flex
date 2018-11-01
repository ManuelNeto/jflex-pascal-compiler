package generated;
import java_cup.runtime.*;
import core.PascalSymbol;

%%

%public
%class Scanner
%cup

%{

   StringBuffer string = new StringBuffer();

private Symbol symbol(int type) {
	return new PascalSymbol(type, yyline+1, yycolumn+1);
 }

private Symbol symbol(int type, Object value) {
	return new PascalSymbol(type, yyline+1, yycolumn+1, value);
 }
  
%}


/* Integer literals */
Sign = "+" | "-"
DecimalLiteral 	= 0 | [1-9][0-9]*
DigitSequence 	= {Sign}? {DecimalLiteral}
IntegerNumber 	= {DigitSequence}

/* Identifiers */
Identifier = [:jletter:][:jletterdigit:]+

/* White spaces*/
LineTerminator = \r|\n|\r\n
WhiteSpace     = {LineTerminator} | [ \t\f]


%%


<YYINITIAL> {

    /* Keywords */
    "program"                      { return symbol(sym.PROGRAM); }
    "begin"						   { return symbol(sym.BEGIN); }
    "end"                          { return symbol(sym.END); }
    "var"                          { return symbol(sym.VAR); }
    
    /* Booleans */

	/* Other */

    /* Identifier*/
    {Identifier} 					{ return symbol(sym.IDENTIFIER, yytext());}
    
    /* Comments*/

    /* Separators */
    ";"                             { return symbol(sym.SEMICOLON); }
    "."   		  				    { return symbol(sym.DOT); }
    ":"   		  				    { return symbol(sym.COLON); }

    /* String literal */
    
    /* Number literal */
    {IntegerNumber}                 { return symbol(sym.INTEGER_NUMBER, new Integer(yytext())); }
	
    /* Character literal */

    /* White spaces */
    {WhiteSpace}				    { /*Ignore*/ }
    
    /* Logical Operators*/

    /* Arithmetical operators*/
    "+"  							{ return symbol(sym.PLUS); }
    "-" 							{ return symbol(sym.MINUS); }
    "*"								{ return symbol(sym.MULT); }
    "/"								{ return symbol(sym.DIV); }
    
    /* Operators */
    
    /* Relational Operators*/	

    /* Assignment */
    
}