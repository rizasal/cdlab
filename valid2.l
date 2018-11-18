%{
#include "y.tab.h"
%}
%%
[a-zA-Z] {return id;}
[0-9]+ {return num;}
[ \t] {;}
\n {return 0;}
. { return yytext[0];}
%%
int yywrap(){return 1;}
int main(){
yylex();

return 0;

}
