%{
#include<stdio.h>
#include <stdlib.h>
%}
%token ID NUMBER
%left '+' '-'
%left '*' '/'
%%
stmt:expr
    | ID '=' expr;
expr: expr '+' expr 
    | expr '-' expr
    | expr '*' expr
    | expr '/' expr
    | '(' expr ')'
    | NUMBER
    | ID
    ;
%%
void main()
{
printf("enter expr : \n");
yyparse();
printf("valid exp");
exit(0);
}
int yyerror(char * a)
{
  printf("invalid exp");
exit(0);
}