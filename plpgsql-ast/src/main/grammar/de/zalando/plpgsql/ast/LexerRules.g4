lexer grammar LexerRules;

// NOTE: 0 is default channel that's why we should start with a channel id > 0
@lexer::members {
	public static final int COMMENTS_CHANNEL = 1;
}

// ---------
// -- lexer rules
// ---------

L_BRACKET : '(';
R_BRACKET : ')';


// -- severity levels

DEBUG1  : [Dd] [Ee] [Bb] [Uu] [Gg] '1';
DEBUG2  : [Dd] [Ee] [Bb] [Uu] [Gg] '2';
DEBUG3  : [Dd] [Ee] [Bb] [Uu] [Gg] '3';
DEBUG4  : [Dd] [Ee] [Bb] [Uu] [Gg] '4';
DEBUG5  : [Dd] [Ee] [Bb] [Uu] [Gg] '5';
INFO    : [Ii] [Nn] [Ff] [Oo];
NOTICE  : [Nn] [Oo] [Tt] [Ii] [Cc] [Ee];
WARNING : [Ww] [Aa] [Rr] [Nn] [Ii] [Nn] [Gg];
ERROR   : [Ee] [Rr] [Rr] [Oo] [Oo] [Rr];
LOG     : [Ll] [Oo] [Gg];
FATAL   : [Ff] [Aa] [Tt] [Aa] [Ll];
PANIC   : [Pp] [Aa] [Nn] [Ii] [Cc];


// -- operators

LIKE 	    : ([Ii])? [Ll][iI][Kk][eE];
SIMILAR     : [Ss] [iI] [mM] [iI] [Ll] [Aa] [Rr];
TO          : [Tt] [Oo];
AND         : [Aa][Nn][Dd];
OR          : [Oo][Rr];
ASSIGN_OP   :  ':=' ;
BETWEEN     : [Bb][eE][Tt][wW][eE][eE][nN];
IS      : [Ii][Ss];
NOT     : [Nn][Oo][Tt];
ISNULL  : [Ii][Ss][Nn][uU][Ll][Ll];
NOTNULL : [Nn][Oo][Tt][Nn][uU][Ll][Ll];


MUL : '*';
DIV : '/';
MOD : '%';
ADD : '+';
SUB : '-';

EQ  : '=';
NEQ : '<>' | '!=';
LT  : '<';
LTE : '<=';
GT  : '>';
GTE : '>=';

SQLSTATE  : [Ss] [Qq] [Ll] [Ss] [Tt] [Aa] [Tt] [Ee];
RAISE     : [Rr] [Aa] [Ii] [Ss] [Ee];
DIAGNOSTICS : [Dd] [Ii] [Aa] [Gg] [Nn] [Oo] [Ss] [Tt] [Ii] [Cc] [Ss];
GET       : [Gg] [Ee] [Tt];
ARRAY     : [Aa] [Rr] [Rr] [Aa] [Yy];
SLICE     : [Ss] [Ll] [Ii] [Cc] [Ee];
FOREACH   : [Ff] [Oo] [Rr] [Ee] [Aa] [Cc] [Hh];
REVERSE   : [Rr] [Ee] [Vv] [Ee] [Rr] [Ss] [Ee];
WHILE     : [Ww] [Hh] [Ii] [Ll] [Ee];
CONTINUE  : [Cc] [Oo] [Nn] [Tt] [Ii] [Nn] [Uu] [Ee];
EXIT      : [Ee] [Xx] [Ii] [Tt];
LOOP      : [Ll] [Oo] [Oo] [Pp];
CASE      : [Cc] [Aa] [Ss] [Ee];
IF        : [Ii] [Ff];
ELSIF     : [Ee] [Ll] [Ss] [Ii] [Ff];
ELSE      : [Ee] [Ll] [Se] [eE];

QUERY     : [Qq] [Uu] [Ee] [Rr] [Yy];
RETURN    : [Rr] [Ee] [Tt] [Uu] [Rr] [Nn];
EXECUTE   : [Ee] [xX] [Ee] [Cc] [Uu] [Tt] [Ee];
PERFORM   : [Pp] [Ee] [Rr] [Ff] [Oo] [Rr] [Mm];
WITH      : [Ww] [iI] [Tt] [Hh];
RECURSIVE : [Rr] [Ee] [cC] [Uu] [Rr] [Ss] [Ii] [Vv] [Ee];

DELETE    : [Dd]  [Ee] [Ll] [Ee] [Tt] [Ee];
RETURNING : [Rr] [eE] [Tt] [Uu] [Rr] [Nn] [Ii] [Nn] [Gg];
INSERT    : [Ii] [Nn] [Ss] [Ee] [Rr] [Tt];
VALUES    : [Vv] [Aa] [Ll] [Uu] [Ee] [Ss];
SET       : [Ss] [Ee] [tT];

JOIN      : [Jj] [oO] [Ii] [nN];
INNER     : [Ii] [nN] [Nn] [Ee] [Rr];
LEFT      : [Ll] [eE] [Ff] [Tt];
RIGHT     : [Rr] [iI] [Gg] [Hh] [Tt];
FULL      : [Ff] [Uu] [lL] [Ll];
CROSS     : [Cc] [rR] [Oo] [sS] [Ss];
OUTER     : [Oo] [Uu] [Tt] [eE] [Rr];


NATURAL   : [Nn][aA][Tt][Uu][Rr][aA][Ll];
SELECT    : [Ss][eE][Ll][Ee][cC][Tt];
ALL       : [Aa][lL][lL];
DISTINCT  : [Dd][iI][Ss][tT][iI][nN][Cc][tT];
FROM      : [Ff][rR][Oo][Mm];
WHERE     : [Ww][Hh][Ee][Rr][Ee];
GROUP_BY  : GROUP BY;
GROUP     : [Gg][rR][Oo][Uu][Pp];
BY        : [Bb][yY];
ORDER_BY  : ORDER BY;
ORDER     : [Oo][Rr][Dd][Ee][Rr];
LIMIT     : [Ll][Ii][mM][Ii][Tt];
OFFSET    : [Oo][Ff][Ff][Ss][eE][Tt];
ROW       : [Rr][Oo][wW];
ROWS      : ROW [Ss];
FETCH     : [Ff][eE][Tt][cC][Hh];
ONLY      : [Oo][nN][Ll][Yy];
UPDATE    : [Uu][pP][Dd][Aa][Tt][Ee];
SHARE     : [Ss][hH][aA][Rr][Ee];
OF        : [Oo][Ff];
NOWAIT    : [Nn][Oo][Ww][aA][iI][Tt];
INTO      : [Ii][Nn][Tt][oO];
STRICT    : [Ss][Tt][Rr][Ii][Cc][Tt];
UNION     : [Uu][Nn][Ii][Oo][Nn];
INTERSECT : [Ii][Nn][Tt][Ee][Rr][Ss][eE][Cc][Tt];
EXCEPT    : [Ee][Xx][Cc][eE][pP][Tt];
ASC       : [Aa][Ss][Cc];
DESC	  : [Dd][Ee][Ss][Cc];
USING     : [Uu][sS][iI][nN][Gg];
NULLS     : [Nn][Uu][Ll][Ll][sS];
FIRST     : [Ff][iI][rR][sS][Tt];
NEXT      : [Nn][eE][xX][tT];
LAST      : [Ll][Aa][sS][tT];
CAST        : [Cc][Aa][sS][Tt];
ALIAS       : [Aa][Ll][iI][aA][Ss];
FOR         : [Ff][Oo][Rr];
CREATE      : [Cc][Rr][Ee][Aa][Tt][eE];
REPLACE     : [Rr][Ee][pP][Ll][Aa][cC][Ee];
FUNCTION    : [Ff][uU][nN][cC][Tt][iI][Oo][Nn];
IN    		: [Ii][Nn];
OUT   		: [Oo][Uu][Tt];
INOUT 		: [Ii][Nn][Oo][Uu][Tt];
VARIADIC 	: [Vv][Aa][rR][Ii][aA][Dd][iI][cC];
ON          : [Oo][Nn];
HAVING      : [Hh][Aa][vV][Ii][Nn][Gg];

LANGUAGE      : [Ll][Aa][Nn][Gg][Uu][Aa][Gg][Ee];
LANGUAGE_NAME : [Pp][lL][Pp][Gg][Ss][qQ][Ll]; // we allow PLPGSQL only

EXCEPTION  : [Ee][xX][Cc][eE][pP][Tt][Ii][oO][Nn];


DEFAULT     : [Dd][eE][Ff][Aa][Uu][lL][Tt];
RETURNS     : [Rr][eE][tT][uU][rR][nN][sS];
TABLE       : [Tt][Aa][Bb][lL][eE];

AS : [Aa][sS];

DECLARE : [Dd][eE][cC][Ll][aA][rR][Ee];
BEGIN   : [Bb][eE][Gg][Ii][nN];
END     : [Ee][nN][Dd];
WHEN    : [Ww][hH][eE][nN];
THEN    : [Tt][Hh][eE][Nn];

WINDOW       : [Ww][Ii][nN][dD][oO][Ww];
IMMUTABLE    : [Ii][Mm][Mm][Uu][Tt][aA][Bb][Ll][eE];
STABLE       : [Ss][tT][aA][Bb][Ll][eE];
VOLATILE     : [Vv][oO][Ll][aA][tT][iI][Ll][eE];


CALLED_ON_NULL_INPUT       : [Cc][aA][Ll][lL][eE][Dd] [Oo][Nn] NULL [Ii][nN][Pp][Uu][Tt];
RETURNS_NULL_ON_NULL_INPUT : RETURNS NULL  [Oo][Nn] NULL [Ii][nN][Pp][Uu][Tt];



EXTERNAL         : [Ee][xX][Tt][Ee][Rr][Nn][Aa][Ll];
SECURITY         : [Ss][Ee][Cc][Uu][Rr][iI][Tt][Yy];
SECURITY_INVOKER : EXTERNAL? SECURITY [Ii][nN][Vv][Oo][Kk][Ee][Rr];
SECURITY_DEFINER : EXTERNAL? SECURITY [Dd][Ee][Ff][iI][nN][eE][Rr];

COST       : [Cc][oO][sS][Tt];


CONSTANT : [Cc][Oo][Nn][sS][tT][aA][Nn][tT];
COLLATE  : [Cc][Oo][Ll][Ll][Aa][Tt][eE];


// --

NULL    : [Nn][uU][Ll][Ll];
TRUE    : [Tt][Rr][Uu][eE];
FALSE   : [Ff][Aa][lL][sS][Ee];
UNKNOWN : [Uu][nN][Kk][nN][Oo][wW][nN];


F_DOLLAR_QUOTE : AS WS* DOLLAR_QUOTE;
F_QUOTE        : AS WS* QUOTE;

DOLLAR_QUOTE : '$' ID? '$';
QUOTE        : '\'';


INTEGER_VALUE   : DIGIT+ ;

// ~['.'] is a hack to enable for integer loop: for i in 1..2
// Otherwise, for 1..2 is tokenized as '1.' and '.2'
DECIMAL_VALUE   : DIGIT+ '.' ~['.'] DIGIT*
			    | ~['.'] '.' DIGIT+
			    | DIGIT+ ('.' DIGIT*)? EXPONENT
			    | ~['.'] '.' DIGIT+ EXPONENT
			    ;

ANONYMOUS_PARAMETER : '$' DIGIT+;

ID         : [a-zA-Z_] ([a-zA-Z_] | DIGIT)*;
QNAME      : ID '.' ID;


// TYPE 	   : ( ID | QNAME ) ;   // ordinary type e.g. INTEGER or z.custom_type
ARRAY_TYPE : ( ID | QNAME )   ('[' ']')+ ;
COPY_TYPE  : ( ID | QNAME )   ('.' ID)? '%' 'TYPE';  // variable%TYPE  e.g. user_id z.my_table.user_id%TYPE
ROW_TYPE   : ( ID | QNAME )   '%' 'ROWTYPE';         // e.g. t2_row z.my_table%ROWTYPE;


// TODO not perfect! see p 77 in The Definitive ANTLR 4 Reference (didn't work at my first try)
// STRING          : ~[AS] QUOTE 		  (ESC |  .)*?  QUOTE
//  				| ~[AS] DOLLAR_QUOTE  (ESC |  .)*?  DOLLAR_QUOTE
//  				;


STRING  : QUOTE 		(ESC|.)*?  QUOTE
		| DOLLAR_QUOTE  (ESC|.)*?  DOLLAR_QUOTE
 		;

WS         : [ \t\r\n]+              -> skip ; // skip spaces, tabs, newlines
SL_COMMENT : '--' .*? ('\r')? '\n'   -> channel(COMMENTS_CHANNEL); // we might need comments later on e.g. for code formatting
ML_COMMENT : '/*' .*? '*/'           -> channel(COMMENTS_CHANNEL); // we might need comments later on e.g. for code formatting



fragment EXPONENT
    : 'E' ('+' | '-')? DIGIT+
    ;

fragment DIGIT
    : [0-9]
    ;



ESC : '\\' QUOTE
  	| '\\\\'
  	| '\\$'
  	;


