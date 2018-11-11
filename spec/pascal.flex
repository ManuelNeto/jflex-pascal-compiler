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

/* Identifiers */
Identifier = [:jletter:][:jletterdigit:]+
Number = {IntegerNumber}


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
    "const"						   { return symbol(sym.CONST); }
    "function"					   { return symbol(sym.FUNCTION); }
    
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