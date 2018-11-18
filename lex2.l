%{
	int yylineno;

%}
%%
^(.*)\n printf("%4d\t%s", ++yylineno, yytext);
%%

int main(){
	yylex();
	

} 
int yywrap(){return 1;}
