# jflex-pascal-compiler

A Pascal compiler implemented usid JFlex + CUP

# Lexical Analysis 

* escopo comum
   * Realizar checagem de tipos e contextos:
     - [X] Tipos existentes (considerando String, float, int, bool);
     - [X] Abstrações (nome, quantidade e tipos de parâmetros de entrada e tipo de retorno);
     - [X] Declaração;
     - [X] Uso de Variáveis;
     - [X] Comandos de atribuição;
     - [X] Expressões aritméticas;
     - [X] literais (inteiros, string, booleanos).


* escopo B
     - [X] sets
     - [X] Expressões booleanas
     - [X] Comandos condicionais: if-else

# Syntax and Semantic Analysis

* escopo B
     - [X] sets
     - [X] Expressões booleanas
     - [X] Comandos condicionais: if-else

## Dependencies

* Java 1.8.X
* jflex 1.6.1


## Running it

### Lexical Analysis

run test/lexical/PascalLexicalTest.java

### Syntax Analysis

run test/syntax/PascalSyntaxTest.java

### Semantic Analysis
