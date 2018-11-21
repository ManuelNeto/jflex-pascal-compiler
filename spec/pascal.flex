package generated;
import java_cup.runtime.*;
import core.PascalSymbol;

%%

%public
%class Scanner
%unicode
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

/* Comments */
startComment = \{ 
endComment = \}
contentComment= [^}]*
Comment = {startComment}{contentComment}{endComment}

/* Integer  */
Sign = "+" | "-"
DecimalLiteral 	= 0 | [1-9][0-9]*
DigitSequence 	= {Sign}? {DecimalLiteral}
IntegerNumber 	= {DigitSequence}

/* Real */
RealLiteral = [0-9][0-9]*
RealNumber = {DigitSequence}"."{RealLiteral}

/*String*/
String = "'"[^\n\r\']+"'"

UnicodeLetter  = [:letter:]
UnicodeDigit   = [:digit:]
Letter         = {UnicodeLetter}|"_"

/* Identifiers */
Identifier     = {Letter}({Letter} | {UnicodeDigit})*
Number = {IntegerNumber}


/* White spaces*/
LineTerminator = \r|\n|\r\n
WhiteSpace     = {LineTerminator} | [ \t\f]


%%


<YYINITIAL> {

	/* Reserved Words */
	"program"                      	{ return symbol(sym.PROGRAM); }
	"begin"						   	{ return symbol(sym.BEGIN); }
	"and"							{ return symbol(sym.AND); }
	"array"							{ return symbol(sym.ARRAY); }
	"case"							{ return symbol(sym.CASE); }
	"const"						   	{ return symbol(sym.CONST); }
	"do"							{ return symbol(sym.DO); }
	"if"							{ return symbol(sym.IF); }
	"else"							{ return symbol(sym.ELSE); }
	"for"							{ return symbol(sym.FOR);}
	"function"					   	{ return symbol(sym.FUNCTION); }
	"not"							{ return symbol(sym.NOT); }
	"or"							{ return symbol(sym.OR); }
	"procedure"						{ return symbol(sym.PROCEDURE); }
	"program"						{ return symbol(sym.PROGRAM); }
	"repeat"						{ return symbol(sym.REPEAT); }
	"set"							{ return symbol(sym.SET); }
	"then"							{ return symbol(sym.THEN); }
	"type"							{ return symbol(sym.TYPE); }
	"var"                          	{ return symbol(sym.VAR); }
	"while"							{ return symbol(sym.WHILE); }
	"string"						{ return symbol(sym.STRINGTERMINAL); }
	"end"                          	{ return symbol(sym.END); }

    /* Booleans */

	/* Other */

    /* Identifier*/
    {Identifier} 					{ return symbol(sym.IDENTIFIER, yytext());}
    
    /* Separators */
    ";"                             { return symbol(sym.SEMICOLON); }
    "."   		  				    { return symbol(sym.DOT); }
    ":"   		  				    { return symbol(sym.COLON); }
    "("								{ return symbol(sym.LPAREN); }
    ")"								{ return symbol(sym.RPAREN); }
    ","								{ return symbol(sym.COMMA); }

    /* String literal */
    
    {String}                        { return symbol(sym.STRING,new String(yytext())); }
    
    /* Number literal */
    {IntegerNumber}                 { return symbol(sym.INTEGER_NUMBER, new Integer(yytext())); }
    {RealNumber}                    { return symbol(sym.REAL_NUMBER, new Float(yytext())); }
    
	
    /* Character literal */

    /* White spaces */
    {WhiteSpace}				    { /*Ignore*/ }
    
    /*Comments*/
    {Comment}						{ /*Ignore*/ }
    
    /* Logical Operators*/
    "=="							{ return symbol(sym.EQEQ); }
    "!="							{ return symbol(sym.DIF); }
    ">="							{ return symbol(sym.GTEQ); }
    "<="							{ return symbol(sym.LTEQ); }
    "<"								{ return symbol(sym.LT); }
    ">"								{ return symbol(sym.GT); }
    "="								{ return symbol(sym.EQ); }
    
    /* Arithmetical operators*/
    "+"  							{ return symbol(sym.PLUS); }
    "-" 							{ return symbol(sym.MINUS); }
    "*"								{ return symbol(sym.MULT); }
    "/"								{ return symbol(sym.DIV); }
    
    /* Operators */
    
    /* Relational Operators*/	

    /* Assignment */
    
}