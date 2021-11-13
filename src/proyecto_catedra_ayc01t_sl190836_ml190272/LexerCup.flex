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
espacio=[ \t\r\n]+
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

/* Operador Division */
( "+" | "-" | "/" ) {return new Symbol(sym.Operadores, yychar, yyline, yytext());}

/* Tipo de dato */
( CHAR | VARCHAR | VARBINARY | BINARY | NCHAR | NVARCHAR ) {return new Symbol(sym.T_dato, yychar, yyline, yytext());}

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
( "(" ) {return new Symbol(sym.P_a, yychar, yyline, yytext());}

/* Parentesis de cierre */
( ")" ) {return new Symbol(sym.P_c, yychar, yyline, yytext());}

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
( ">" | "<" | "<>" | "!=" | ">=" | "<=" | "=" | "||" ) {return new Symbol(sym.Op_relacional, yychar, yyline, yytext());}

/* Operadores de Seleccion */
( "BETWEEN" | "LIKE" | "IN") {return new Symbol(sym.C_seleccion, yychar, yyline, yytext());}

/* Palabra reservada INSERT */
( INSERT ) {return new Symbol(sym.INSERT, yychar, yyline, yytext());}

/* Palabra reservada DELETE */
( DELETE ) {return new Symbol(sym.DELETE, yychar, yyline, yytext());}

/* Palabra reservada UPDATE */
( UPDATE ) {return new Symbol(sym.UPDATE, yychar, yyline, yytext());}

/* Palabra reservada INTO */
( INTO ) {return new Symbol(sym.INTO, yychar, yyline, yytext());}

/* Palabra reservada SET */
( SET ) {return new Symbol(sym.SET, yychar, yyline, yytext());}

/* Palabra reservada VALUES */
( VALUES ) {return new Symbol(sym.VALUES, yychar, yyline, yytext());}

/* Palabra reservada ORDER */
( ORDER ) {return new Symbol(sym.ORDER, yychar, yyline, yytext());}

/* Palabra reservada GROUP */
( GROUP ) {return new Symbol(sym.GROUP, yychar, yyline, yytext());}

/* Palabra reservada BY */
( BY ) {return new Symbol(sym.BY, yychar, yyline, yytext());}

/* Palabra reservada NULL */
( NULL ) {return new Symbol(sym.NULL, yychar, yyline, yytext());}

/* Palabra reservada IS */
( IS ) {return new Symbol(sym.IS, yychar, yyline, yytext());}

/* Palabra reservada AS */
( AS ) {return new Symbol(sym.AS, yychar, yyline, yytext());}

/* Palabra reservada DECLARE */
( DECLARE ) {return new Symbol(sym.DECLARE, yychar, yyline, yytext());}

/* Palabra reservada T_order */
( ASC | DESC ) {return new Symbol(sym.T_order, yychar, yyline, yytext());}

/* Palabra reservada CASE */
( CASE ) {return new Symbol(sym.CASE, yychar, yyline, yytext());}

/* Palabra reservada SHOW */
( SHOW ) {return new Symbol(sym.SHOW, yychar, yyline, yytext());}

/* Palabra reservada ALTER */
( ALTER ) {return new Symbol(sym.ALTER, yychar, yyline, yytext());}

/* Palabra reservada AFTER */
( AFTER ) {return new Symbol(sym.AFTER, yychar, yyline, yytext());}

/* Palabra reservada DEFAULT */
( DEFAULT ) {return new Symbol(sym.DEFAULT, yychar, yyline, yytext());}

/* Palabra reservada CHECK */
( CHECK ) {return new Symbol(sym.CHECK, yychar, yyline, yytext());}

/* Palabra reservada ADD */
( ADD ) {return new Symbol(sym.ADD, yychar, yyline, yytext());}

/* Palabra reservada NATURAL */
( NATURAL ) {return new Symbol(sym.NATURAL, yychar, yyline, yytext());}

/* Palabra reservada CROSS */
( CROSS ) {return new Symbol(sym.CROSS, yychar, yyline, yytext());}

/* Palabra reservada INDEX */
( INDEX ) {return new Symbol(sym.ADD, yychar, yyline, yytext());}

/* Palabra reservada BEGIN */
( BEGIN ) {return new Symbol(sym.BEGIN, yychar, yyline, yytext());}

/* Palabra reservada COLUMN */
( COLUMN ) {return new Symbol(sym.COLUMN, yychar, yyline, yytext());}

/* Palabra reservada CONNECT */
( CONNECT ) {return new Symbol(sym.CONNECT, yychar, yyline, yytext());}

/* Palabra reservada DISTINCT */
( DISTINCT ) {return new Symbol(sym.DISTINCT, yychar, yyline, yytext());}

/* Palabra reservada DO */
( DO ) {return new Symbol(sym.DO, yychar, yyline, yytext());}

/* Palabra reservada ELSE */
( ELSE ) {return new Symbol(sym.ELSE, yychar, yyline, yytext());}

/* Palabra reservada END */
( END ) {return new Symbol(sym.END, yychar, yyline, yytext());}

/* Palabra reservada EXCEPT */
( EXCEPT ) {return new Symbol(sym.EXCEPT, yychar, yyline, yytext());}

/* Palabra reservada EXISTS */
( EXISTS ) {return new Symbol(sym.EXISTS, yychar, yyline, yytext());}

/* Palabra reservada BOOLEANOS */
( TRUE | FALSE ) {return new Symbol(sym.BOOL, yychar, yyline, yytext());}

/* Palabra reservada FIRST */
( FIRST ) {return new Symbol(sym.FIRST, yychar, yyline, yytext());}

/* Palabra reservada FOR */
( FOR ) {return new Symbol(sym.FOR, yychar, yyline, yytext());}

/* Palabra reservada FULL */
( FULL ) {return new Symbol(sym.FULL, yychar, yyline, yytext());}

/* Palabra reservada FUNCTION */
( FUNCTION ) {return new Symbol(sym.FUNCTION, yychar, yyline, yytext());}

/* Palabra reservada HAVING */
( HAVING ) {return new Symbol(sym.HAVING, yychar, yyline, yytext());}

/* Palabra reservada ILKE */
( ILIKE ) {return new Symbol(sym.ILIKE, yychar, yyline, yytext());}

/* Palabra reservada INNER */
( INNER ) {return new Symbol(sym.INNER, yychar, yyline, yytext());}

/* Palabra reservada INTERSECT */
( INTERSECT ) {return new Symbol(sym.INTERSECT, yychar, yyline, yytext());}

/* Palabra reservada INTERVAL */
( INTERVAL ) {return new Symbol(sym.INTERVAL, yychar, yyline, yytext());}

/* Palabra reservada JOIN */
( JOIN ) {return new Symbol(sym.JOIN, yychar, yyline, yytext());}

/* Palabra reservada IF */
( IF ) {return new Symbol(sym.IF, yychar, yyline, yytext());}

/* Palabra reservada LEFT | RIGHT */
( LEFT | RIGHT ) {return new Symbol(sym.LR, yychar, yyline, yytext());}

/* Palabra reservada ON */
( ON ) {return new Symbol(sym.ON, yychar, yyline, yytext());}

/* Palabra reservada ONLY */
( ONLY ) {return new Symbol(sym.ONLY, yychar, yyline, yytext());}

/* Palabra reservada OTHERS */
( OTHERS ) {return new Symbol(sym.OTHERS, yychar, yyline, yytext());}

/* Palabra reservada OUT */
( OUT ) {return new Symbol(sym.OUT, yychar, yyline, yytext());}

/* Palabra reservada  OUTER*/
( OUTER ) {return new Symbol(sym.OUTER, yychar, yyline, yytext());}

/* Palabra reservada OVER */
( OVER ) {return new Symbol(sym.OVER, yychar, yyline, yytext());}

/* Palabra reservada NEW */
( NEW ) {return new Symbol(sym.NEW, yychar, yyline, yytext());}

/* Palabra reservada PRIMARY */
( PRIMARY ) {return new Symbol(sym.PRIMARY, yychar, yyline, yytext());}

/* Palabra reservada PRINT */
( PRINT ) {return new Symbol(sym.PRINT, yychar, yyline, yytext());}

/* Palabra reservada KEY  */
( KEY ) {return new Symbol(sym.KEY, yychar, yyline, yytext());}

/* Palabra reservada FOREIGN */
( FOREIGN ) {return new Symbol(sym.FOREIGN, yychar, yyline, yytext());}

/* Palabra reservada RESET */
( RESET ) {return new Symbol(sym.RESET, yychar, yyline, yytext());}

/* Palabra reservada  ROWS*/
( ROWS ) {return new Symbol(sym.ROWS, yychar, yyline, yytext());}

/* Palabra reservada  RULE*/
( RULE ) {return new Symbol(sym.RULE, yychar, yyline, yytext());}

/* Palabra reservada SEARCH */
( SEARCH ) {return new Symbol(sym.SEARCH, yychar, yyline, yytext());}

/* Palabra reservada THEN */
( THEN ) {return new Symbol(sym.THEN, yychar, yyline, yytext());}

/* Palabra reservada SYSTEM */
( SYSTEM ) {return new Symbol(sym.SYSTEM, yychar, yyline, yytext());}

/* Palabra reservada TO */
( TO ) {return new Symbol(sym.TO, yychar, yyline, yytext());}

/* Palabra reservada GO */
( GO ) {return new Symbol(sym.GO, yychar, yyline, yytext());}

/* Palabra reservada  TRANSACTION*/
( TRANSACTION ) {return new Symbol(sym.TRANSACTION, yychar, yyline, yytext());}

/* Palabra reservada  TRIGGER*/
( TRIGGER ) {return new Symbol(sym.TRIGGER, yychar, yyline, yytext());}

/* Palabra reservada UNION */
( UNION ) {return new Symbol(sym.UNION, yychar, yyline, yytext());}

/* Palabra reservada UNIQUE */
( UNIQUE ) {return new Symbol(sym.UNIQUE, yychar, yyline, yytext());}

/* Palabra reservada USING */
( USING ) {return new Symbol(sym.USING, yychar, yyline, yytext());}

/* Palabra reservada VIEW */
( VIEW ) {return new Symbol(sym.VIEW, yychar, yyline, yytext());}

/* Palabra reservada WITH */
( WITH ) {return new Symbol(sym.WITH, yychar, yyline, yytext());}

/* Palabra reservada  WRITE*/
( WRITE ) {return new Symbol(sym.WRITE, yychar, yyline, yytext());}

/* Palabra reservada START */
( START ) {return new Symbol(sym.START, yychar, yyline, yytext());}

/* Palabra reservada PRIOR */
( PRIOR ) {return new Symbol(sym.PRIOR, yychar, yyline, yytext());}

/* Palabra reservada MODIFY  */
( MODIFY ) {return new Symbol(sym.MODIFY, yychar, yyline, yytext());}

/* Palabra reservada TYPE */
( TYPE ) {return new Symbol(sym.TYPE, yychar, yyline, yytext());}

/* Palabra reservada RENAME */
( RENAME ) {return new Symbol(sym.RENAME, yychar, yyline, yytext());}

/* Palabra reservada CHANGE */
( CHANGE ) {return new Symbol(sym.CHANGE, yychar, yyline, yytext());}

/* Palabra reservada CONSTRAINT */
( CONSTRAINT ) {return new Symbol(sym.CONSTRAINT, yychar, yyline, yytext());}

/* Palabra reservada CONSTRAINT_TYPE */
( CONSTRAINT_TYPE ) {return new Symbol(sym.CONSTRAINT_TYPE, yychar, yyline, yytext());}

/* Palabra reservada  */
( AVG | COUNT | MIN | MAX | SUM | ROUND ) {return new Symbol(sym.FUN, yychar, yyline, yytext());}

/* Palabra reservada SEPARADOR */
( "," ) {return new Symbol(sym.COMA, yychar, yyline, yytext());}

/* Palabra reservada POINT */
( "." ) {return new Symbol(sym.POINT, yychar, yyline, yytext());}

/* Identificador */
{L}({L}|{D})* {return new Symbol(sym.Identificador, yychar, yyline, yytext());}


/* Numero */
("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}

/* Error de analisis */
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}