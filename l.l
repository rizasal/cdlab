%{

int nchar, nword, nline;

%}

%%
#.* {printf("%s is a preprocesor\n", yytext);
	fprintf(yyout,"%s", yytext); }
[ \n\t] ;

int |
float |
char |
double |
while |
for |
struct |
typedef |
do |
if |
break |
continue |
void |
switch |
return |
else |
goto {fprintf(yyout,"%s",yytext);
	printf("%s is keyword\n", yytext);}


. {fprintf(yyout,"%s",yytext);} 

%%

int main(void) {
FILE *fp = fopen("out.c","w");
yyout=fp;
yylex();


return 0;

}
int yywrap(){
	return 1;
}
