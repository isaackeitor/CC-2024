%{
#include <cstdlib>
#include <string>
#include "y.tab.h"
%}

%%

[a-zA-Z][a-zA-Z0-9]*    { yylval.str = new std::string(yytext); return ID; }
[0-9]+                  { yylval.num = strtol(yytext, NULL, 10); return NUMBER; }
"+"                     { return '+'; }
"-"                     { return '-'; }
"*"                     { return '*'; }
"/"                     { return '/'; }
"%"                     { return '%'; }
"^"                     { return '^'; }
"="                     { return '='; }
"("                     { return '('; }
")"                     { return ')'; }
\n                      { return '\n'; }
[ \t]                   ;  // skip whitespace
.                       { 
                            printf("Please verify the token and try again. Invalid token: %s\n", yytext); 
                            return yytext[0]; 
                        }

%%

int yywrap() {
    return 1;
}
