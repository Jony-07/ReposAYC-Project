package proyecto_catedra_ayc01t_sl190836_ml190272;
import java_cup.runtime.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}
%%

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}



/* Tipo de dato */
( CHAR | VARCHAR | FLOAT | INT | DECIMAL | MONEY | NUMERIC | NCHAR | NVARCHAR) {return new Symbol(sym.T_dato, yychar, yyline, yytext());}

/* Palabra reservada CREATE */
( CREATE ) {return new Symbol(sym.CREATE, yychar, yyline, yytext());}

/* Palabra reservada DATABASE */
( DATABASE ) {return new Symbol(sym.DATABASE, yychar, yyline, yytext());}

/* Palabra reservada DROP */
( DROP ) {return new Symbol(sym.DROP, yychar, yyline, yytext());}

/* Palabra reservada USE */
( USE ) {return new Symbol(sym.USE, yychar, yyline, yytext());}

/* Palabra reservada TABLE */
( TABLE ) {return new Symbol(sym.TABLE, yychar, yyline, yytext());}

/* Palabra reservada SELECT */
( SELECT ) {return new Symbol(sym.SELECT, yychar, yyline, yytext());}

/* Palabra reservada TABLE */
( "*" ) {return new Symbol(sym.All, yychar, yyline, yytext());}

/* Palabra reservada FROM */
( FROM ) {return new Symbol(sym.FROM, yychar, yyline, yytext());}

/* Palabra reservada WHERE */
( WHERE ) {return new Symbol(sym.WHERE, yychar, yyline, yytext());}

/* Palabra reservada TABLE */
( "'" ) {return new Symbol(sym.COMILLA, yychar, yyline, yytext());}

/* Parentesis de apertura */
( "(" ) {return new Symbol(sym.Parentesis_a, yychar, yyline, yytext());}

/* Parentesis de cierre */
( ")" ) {return new Symbol(sym.Parentesis_c, yychar, yyline, yytext());}

/* Llave de apertura */
( "{" ) {return new Symbol(sym.Llave_a, yychar, yyline, yytext());}

/* Llave de cierre */
( "}" ) {return new Symbol(sym.Llave_c, yychar, yyline, yytext());}

/* Corchete de apertura */
( "[" ) {return new Symbol(sym.Corchete_a, yychar, yyline, yytext());}

/* Corchete de cierre */
( "]" ) {return new Symbol(sym.Corchete_c, yychar, yyline, yytext());}

/* Corchete de Punto y coma */
( ";" ) {return new Symbol(sym.P_coma, yychar, yyline, yytext());}

/* Operadores logicos */
( "AND" | "OR" | "NOT") {return new Symbol(sym.Op_logico, yychar, yyline, yytext());}

/*Operadores Relacionales */
( ">" | "<" | "<>" | "!=" | ">=" | "<=" | "=" ) {return new Symbol(sym.Op_relacional, yychar, yyline, yytext());}

/* Operadores de Seleccion */
( "BETWEEN" | "LIKE" | "IN") {return new Symbol(sym.C_seleccion, yychar, yyline, yytext());}

/* Identificador */
{L}({L}|{D})* {return new Symbol(sym.Identificador, yychar, yyline, yytext());}

/* Numero */
("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}

/* Error de analisis */
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}