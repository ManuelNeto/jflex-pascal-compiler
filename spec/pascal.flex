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
    "label"                        { return symbol(sym.LABEL); }
    "const"                        { return symbol(sym.CONST); }
    "type"                         { return symbol(sym.TYPE); }
    "packed"                       { return symbol(sym.PACKED); }
    "array"                        { return symbol(sym.ARRAY); }
    "of"                           { return symbol(sym.OF); }
    "record"                       { return symbol(sym.RECORD); }
    "begin"						   { return symbol(sym.BEGIN); }
    "end"                          { return symbol(sym.END); }
    "case"                         { return symbol(sym.CASE); }
    "set"                          { return symbol(sym.SET); }
    "file"                         { return symbol(sym.FILE); }
    "var"                          { return symbol(sym.VAR); }
    "procedure"                    { return symbol(sym.PROCEDURE); }
    "function"                     { return symbol(sym.FUNCTION); }
    "forward"                      { return symbol(sym.FORWARD); }
    "goto"						   { return symbol(sym.GOTO); }
    "while"						   { return symbol(sym.WHILE); }
    "do"						   { return symbol(sym.DO); }
    "for"						   { return symbol(sym.FOR); }
    "repeat"					   { return symbol(sym.REPEAT); }
    "until"						   { return symbol(sym.UNTIL); }
    "to"						   { return symbol(sym.TO); }
    "downto"					   { return symbol(sym.DOWNTO); }
    "with"					   	   { return symbol(sym.WITH); }
    "then"						   { return symbol(sym.THEN); }
    "or"						   { return symbol(sym.OR); }
    "div"						   { return symbol(sym.DIV); }
    "mod"						   { return symbol(sym.MOD); }
    "and"						   { return symbol(sym.AND); }
    "nil"						   { return symbol(sym.NIL); }
    "not"						   { return symbol(sym.NOT); }
    "if"						   { return symbol(sym.IF); }
    "else"						   { return symbol(sym.ELSE); }
    
    /* Booleans */
    "true"                          { return symbol(sym.BOOLEAN_LITERAL, new Boolean(true)); }
    "false"                         { return symbol(sym.BOOLEAN_LITERAL, new Boolean(false)); }

	/* Other */
    "in"							{ return symbol(sym.IN); }

    /* Identifier*/
	{Identifier} 					{ return symbol(sym.IDENTIFIER,yytext());}
	/* {Constant}                     { return symbol(sym.CONSTANT, yytext()); } */
	
    /* Comments*/

    /* Separators */
    "("                             { return symbol(sym.LPAREN); }
    ")"                             { return symbol(sym.RPAREN); }
    "["                             { return symbol(sym.LBRACK); }
    "]"                             { return symbol(sym.RBRACK); }
    "."   		  				    { return symbol(sym.DOT); }
    ","                             { return symbol(sym.COMMA); }
    ":"                             { return symbol(sym.COLON); }
    ";"                             { return symbol(sym.SEMICOLON); }
    ".."                            { return symbol(sym.DOT_DOT); }
    "^"                             { return symbol(sym.POINTER); }

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
    "<>" 							{ return symbol(sym.DIF); }
    "<" 							{ return symbol(sym.LESST); }
    "<="							{ return symbol(sym.LESSEQ); }
    ">" 							{ return symbol(sym.GREAT); }
    ">=" 							{ return symbol(sym.GREATEQ); }
    

    /* Assignment */
    "="								{ return symbol(sym.EQ); }
    ":="                            { return symbol(sym.ASSIGNMENT); }
    
    /*gambis*/
    "~"								{ return symbol(sym.TIL); }
    "^" 							{ return symbol(sym.FUNC); }
}