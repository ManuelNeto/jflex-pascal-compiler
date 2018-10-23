package generated;
import java_cup.runtime.*;
import core.Token;

%%

%public
%class Scanner
%cup

%{
   StringBuffer string = new StringBuffer();

  private Symbol symbol(int type) {
	return new Token(type);
  }

  private Symbol symbol(int type, Object value) {
	return new Token(type, value);
  }
%}

/* Integer literals */
Sign = "+" | "-"
DecimalLiteral 	= 0 | [1-9][0-9]*
DigitSequence 	= {Sign}? {DecimalLiteral}
IntegerNumber 	= {DigitSequence}

/* Real literals */
Scale = "E" | "e"
ScaleFactor = {Scale}{DigitSequence}
RealNumber = {DigitSequence}"."{DecimalLiteral}?{ScaleFactor}? | {DigitSequence}{ScaleFactor}

/* String and Character literals */
String = "'"[^\n\r\']+"'"

/* Identifiers */
Identifier = [:jletter:][:jletterdigit:]*
/* Constant = {Sign}? {Identifier} | {Number} | {String} */

/* White spaces*/
LineTerminator = \r|\n|\r\n
WhiteSpace     = {LineTerminator} | [ \t\f]

/* Comments */

%%

<YYINITIAL> {

    /* Keywords */
    "program"                      { return symbol(sym.PROGRAM); }
    "begin"						   { return symbol(sym.BEGIN); }
    "end"                          { return symbol(sym.END); }
    
    /* Booleans */

	/* Other */

    /* Identifier*/
	{Identifier} 					{ return symbol(sym.IDENTIFIER,yytext());}
	/* {Constant}                     { return symbol(sym.CONSTANT, yytext()); } */
	
    /* Comments*/

    /* Separators  MISSING*/
    "("                             { return symbol(sym.LPAREN); }
    ")"                             { return symbol(sym.RPAREN); }
    "."   		  				    { return symbol(sym.DOT); }
    ";"                             { return symbol(sym.SEMICOLON); }
    ".."                            { return symbol(sym.DOT_DOT); }
    ","                            { return symbol(sym.COMMA); }
    

    /* String literal */
    {String}                        { return symbol(sym.STRING,new String(yytext())); }
    
    /* Number literal */
    {IntegerNumber}                 { return symbol(sym.INTEGER_NUMBER,new Integer(yytext())); }
    {RealNumber}                        { return symbol(sym.REAL_NUMBER,new Float(yytext())); }
	
    /* Character literal */

    /* White spaces */
    {WhiteSpace}				    { /*just ignore it*/ }
    
    /* Logical Operators*/

    /* Arithmetical operators*/
	"+"  							{ return symbol(sym.PLUS); }
    "-" 							{ return symbol(sym.LESS); }
    "*"								{ return symbol(sym.MULT); }
    "/"								{ return symbol(sym.DIVI); }
    
    /* Operators */
    
    /* Relational Operators*/	
    

    /* Assignment */
    
}