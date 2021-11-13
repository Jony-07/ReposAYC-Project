package proyecto_catedra_ayc01t_sl190836_ml190272;
import static proyecto_catedra_ayc01t_sl190836_ml190272.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ \t\r]+
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

/* Operador Operadores */
( "+" | "-" | "/" ) {lexeme=yytext(); return Operadores;}

/* Tipo de dato */
( CHAR | VARCHAR | VARBINARY | BINARY | NCHAR | NVARCHAR ) {lexeme=yytext(); return T_dato;}

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
( "(" ) {lexeme=yytext(); return P_a;}

/* Parentesis de cierre */
( ")" ) {lexeme=yytext(); return P_c;}

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
( "AND" | "OR" | "NOT" | "||" ) {lexeme=yytext(); return Op_logico;}

/*Operadores Relacionales */
( ">" | "<" | "<>" | "!=" | ">=" | "<=" | "=" ) {lexeme = yytext(); return Op_relacional;}

/* Operadores de Selección */
( "BETWEEN" | "LIKE" | "IN") {lexeme=yytext(); return C_seleccion;}

/* Palabra reservada  INSERT */
( INSERT ) {lexeme=yytext(); return INSERT;}

/* Palabra reservada DELETE */
( DELETE ) {lexeme=yytext(); return DELETE;}

/* Palabra reservada UPDATE */
( UPDATE ) {lexeme=yytext(); return UPDATE;}

/* Palabra reservada  INTO */
( INTO ) {lexeme=yytext(); return INTO;}

/* Palabra reservada SET */
( SET ) {lexeme=yytext(); return SET;}

/* Palabra reservada VALUES */
( VALUES ) {lexeme=yytext(); return UPDATE;}

/* Palabra reservada ORDER */
( ORDER ) {lexeme=yytext(); return ORDER;}

/* Palabra reservada GROUP */
( GROUP ) {lexeme=yytext(); return GROUP;}

/* Palabra reservada BY */
( BY ) {lexeme=yytext(); return BY;}

/* Palabra reservada NULL */
( NULL ) {lexeme=yytext(); return NULL;}

/* Palabra reservada IS */
( IS ) {lexeme=yytext(); return IS;}

/* Palabra reservada AS */
( AS ) {lexeme=yytext(); return AS;}

/* Palabra reservada Tipo orden */
( ASC | DESC ) {lexeme=yytext(); return T_order;}

/* Palabra reservada CASE */
( CASE ) {lexeme=yytext(); return CASE;}

/* Palabra reservada SHOW */
( SHOW ) {lexeme=yytext(); return SHOW;}

/* Palabra reservada DECLARE */
( DECLARE ) {lexeme=yytext(); return DECLARE;}

/* Palabra reservada ALTER */
( ALTER ) {lexeme=yytext(); return ALTER;}

/* Palabra reservada AFTER */
( AFTER ) {lexeme=yytext(); return AFTER;}

/* Palabra reservada DEFAULT */
( DEFAULT ) {lexeme=yytext(); return DEFAULT;}

/* Palabra reservada CHECK */
( CHECK ) {lexeme=yytext(); return CHECK;}

/* Palabra reservada ADD */
( ADD ) {lexeme=yytext(); return ADD;}

/* Palabra reservada NATURAL */
( NATURAL ) {lexeme=yytext(); return NATURAL;}

/* Palabra reservada CROSS */
( CROSS ) {lexeme=yytext(); return CROSS;}

/* Palabra reservada INDEX */
( INDEX ) {lexeme=yytext(); return INDEX;}

/* Palabra reservada BEGIN */
( BEGIN ) {lexeme=yytext(); return BEGIN;}

/* Palabra reservada COLUMN */
( COLUMN ) {lexeme=yytext(); return COLUMN;}

/* Palabra reservada CONNECT */
( CONNECT ) {lexeme=yytext(); return CONNECT;}

/* Palabra reservada DISTINCT */
( DISTINCT ) {lexeme=yytext(); return DISTINCT;}

/* Palabra reservada DO */
( DO ) {lexeme=yytext(); return DO;}

/* Palabra reservada ELSE */
( ELSE ) {lexeme=yytext(); return ELSE;}

/* Palabra reservada END */
( END ) {lexeme=yytext(); return END;}

/* Palabra reservada EXCEPT */
( EXCEPT ) {lexeme=yytext(); return EXCEPT;}

/* Palabra reservada EXISTS */
( EXISTS ) {lexeme=yytext(); return EXISTS;}

/* BOOLEANOS */
( TRUE | FALSE ) {lexeme=yytext(); return BOOL;}

/* Palabra reservada FIRST */
( FIRST ) {lexeme=yytext(); return FIRST;}

/* Palabra reservada FOR */
( FOR ) {lexeme=yytext(); return FOR;}

/* Palabra reservada FULL */
( FULL ) {lexeme=yytext(); return FULL;}

/* Palabra reservada FUNCTION */
( FUNCTION ) {lexeme=yytext(); return FUNCTION;}

/* Palabra reservada HAVING */
( HAVING ) {lexeme=yytext(); return HAVING;}

/* Palabra reservada ILKE */
( ILIKE ) {lexeme=yytext(); return ILIKE;}

/* Palabra reservada INNER */
( INNER ) {lexeme=yytext(); return INNER;}

/* Palabra reservada INTERSECT */
( INTERSECT ) {lexeme=yytext(); return INTERSECT;}

/* Palabra reservada INTERVAL */
( INTERVAL ) {lexeme=yytext(); return INTERVAL;}

/* Palabra reservada JOIN */
( JOIN ) {lexeme=yytext(); return JOIN;}

/* Palabra reservada IF */
( IF ) {lexeme=yytext(); return IF;}

/* Palabra reservada JOINS */
( LEFT | RIGHT ) {lexeme=yytext(); return LR;}

/* Palabra reservada ON */
( ON ) {lexeme=yytext(); return ON;}

/* Palabra reservada ONLY */
( ONLY ) {lexeme=yytext(); return ONLY;}

/* Palabra reservada OTHERS */
( OTHERS ) {lexeme=yytext(); return OTHERS;}

/* Palabra reservada OUT */
( OUT ) {lexeme=yytext(); return OUT;}

/* Palabra reservada OUTER */
( OUTER ) {lexeme=yytext(); return OUTER;}

/* Palabra reservada OVER */
( OVER ) {lexeme=yytext(); return OVER;}

/* Palabra reservada NEW */
( NEW ) {lexeme=yytext(); return NEW;}

/* Palabra reservada PRIMARY */
( PRIMARY ) {lexeme=yytext(); return PRIMARY;}

/* Palabra reservada PRINT */
( PRINT ) {lexeme=yytext(); return PRINT;}

/* Palabra reservada KEY */
( KEY ) {lexeme=yytext(); return KEY;}

/* Palabra reservada FOREIGN */
( FOREIGN ) {lexeme=yytext(); return FOREIGN;}

/* Palabra reservada RESET */
( RESET ) {lexeme=yytext(); return RESET;}

/* Palabra reservada ROWS */
( ROWS ) {lexeme=yytext(); return ROWS;}

/* Palabra reservada RULE */
( RULE ) {lexeme=yytext(); return RULE;}

/* Palabra reservada SEARCH*/
( SEARCH ) {lexeme=yytext(); return SEARCH;}

/* Palabra reservada THEN*/
( THEN ) {lexeme=yytext(); return THEN;}

/* Palabra reservada SYSTEM*/
( SYSTEM ) {lexeme=yytext(); return SYSTEM;}

/* Palabra reservada TO*/
( TO ) {lexeme=yytext(); return TO;}

/* Palabra reservada GO*/
( GO ) {lexeme=yytext(); return GO;}

/* Palabra reservada TRANSACTION*/
( TRANSACTION ) {lexeme=yytext(); return TRANSACTION;}

/* Palabra reservada TRIGGER*/
( TRIGGER ) {lexeme=yytext(); return TRIGGER;}

/* Palabra reservada UNION*/
( UNION ) {lexeme=yytext(); return UNION;}

/* Palabra reservada UNIQUE*/
( UNIQUE ) {lexeme=yytext(); return UNIQUE;}

/* Palabra reservada USING*/
( USING ) {lexeme=yytext(); return USING;}

/* Palabra reservada VIEW*/
( VIEW ) {lexeme=yytext(); return VIEW;}

/* Palabra reservada WHEN*/
( WHEN ) {lexeme=yytext(); return WHEN;}

/* Palabra reservada WITH*/
( WITH ) {lexeme=yytext(); return WITH;}

/* Palabra reservada WRITE*/
( WRITE ) {lexeme=yytext(); return WRITE;}

/* Palabra reservada START*/
( START ) {lexeme=yytext(); return START;}

/* Palabra reservada PRIOR*/
( PRIOR ) {lexeme=yytext(); return PRIOR;}

/* Palabra reservada MODIFY*/
( MODIFY ) {lexeme=yytext(); return MODIFY;}

/* Palabra reservada TYPE*/
( TYPE ) {lexeme=yytext(); return TYPE;}

/* Palabra reservada RENAME*/
( RENAME ) {lexeme=yytext(); return RENAME;}

/* Palabra reservada CHANGE*/
( CHANGE ) {lexeme=yytext(); return CHANGE;}

/* Palabra reservada CONSTRAINT*/
( CONSTRAINT ) {lexeme=yytext(); return CONSTRAINT;}

/* Palabra reservada CONSTRAINT_TYPE*/
( CONSTRAINT_TYPE ) {lexeme=yytext(); return CONSTRAINT;}

/* Palabra reservada FUNCIONES*/
( AVG | COUNT | MIN | MAX | SUM | ROUND  ) {lexeme=yytext(); return FUN;}

/* Palabra reservada SEPARADOR*/
( "," ) {lexeme=yytext(); return COMA;}

/* Palabra reservada POINT*/
( "." ) {lexeme=yytext(); return POINT;}

/* Identificador */
{L}({L}|{D})* {lexeme=yytext(); return Identificador;}

/* Numero */ 
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}

/* Error de analisis */
 . {return ERROR;}