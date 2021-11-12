package proyecto_catedra_ayc01t_sl190836_ml190272;
import static proyecto_catedra_ayc01t_sl190836_ml190272.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r]+
%{
    public String lexeme;
%}
%%

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}

/* Salto de linea */
( "\n" ) {return Linea;}

/* Tipo de dato */
( CHAR | VARCHAR | FLOAT | INT | DECIMAL | MONEY | NUMERIC | NCHAR | NVARCHAR) {lexeme=yytext(); return T_dato;}

/* Palabra reservada CREATE */
( CREATE ) {lexeme=yytext(); return CREATE;}

/* Palabra reservada DATABASE */
( DATABASE ) {lexeme=yytext(); return DATABASE;}

/* Palabra reservada DROP */
( DROP ) {lexeme=yytext(); return DROP;}

/* Palabra reservada USE */
( USE ) {lexeme=yytext(); return USE;}

/* Palabra reservada TABLE */
( TABLE ) {lexeme=yytext(); return TABLE;}

/* Palabra reservada SELECT */
( SELECT ) {lexeme=yytext(); return SELECT;}

/* Operador Simbolo */
( "*" ) {lexeme=yytext(); return All;}

/* Palabra reservada FROM */
( FROM ) {lexeme=yytext(); return FROM;}

/* Palabra reservada WHERE */
( WHERE ) {lexeme=yytext(); return WHERE;}

/* Operador Simbolo */
( "'" ) {lexeme=yytext(); return COMILLA;}

/* Parentesis de apertura */
( "(" ) {lexeme=yytext(); return Parentesis_a;}

/* Parentesis de cierre */
( ")" ) {lexeme=yytext(); return Parentesis_c;}

/* Llave de apertura */
( "{" ) {lexeme=yytext(); return Llave_a;}

/* Llave de cierre */
( "}" ) {lexeme=yytext(); return Llave_c;}

/* Corchete de apertura */
( "[" ) {lexeme = yytext(); return Corchete_a;}

/* Corchete de cierre */
( "]" ) {lexeme = yytext(); return Corchete_c;}

/* Punto y coma */
( ";" ) {lexeme=yytext(); return P_coma;}

/* Operadores logicos */
( "AND" | "OR" | "NOT") {lexeme=yytext(); return Op_logico;}

/*Operadores Relacionales */
( ">" | "<" | "<>" | "!=" | ">=" | "<=" | "=" ) {lexeme = yytext(); return Op_relacional;}

/* Operadores de Selección */
( "BETWEEN" | "LIKE" | "IN") {lexeme=yytext(); return C_seleccion;}

/* Identificador */
{L}({L}|{D})* {lexeme=yytext(); return Identificador;}

/* Numero */
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}

/* Error de analisis */
 . {return ERROR;}