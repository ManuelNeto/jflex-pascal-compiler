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

/* Identifiers */
Identifier = [:jletter:][:jletterdigit:]+

/* White spaces*/
LineTerminator = \r|\n|\r\n
WhiteSpace     = {LineTerminator} | [ \t\f]


%%


<YYINITIAL> {

    /* Keywords */
    "program"                      { return symbol(sym.PROGRAM); }
    
    /* Booleans */

	/* Other */

    /* Identifier*/
    {Identifier} 					{ return symbol(sym.IDENTIFIER, yytext());}
    
    /* Comments*/

    /* Separators */
    ";"                             { return symbol(sym.SEMICOLON); }

    /* String literal */
    
    /* Number literal */
	
    /* Character literal */

    /* White spaces */
    {WhiteSpace}				    { /*Ignore*/ }
    
    /* Logical Operators*/

    /* Arithmetical operators*/
    
    /* Operators */
    
    /* Relational Operators*/	
    

    /* Assignment */
    
}