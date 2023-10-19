%{
	#include <stdio.h>
	#include <string.h> 
%}

%%
[a-zA-Z0-9]+    {
    for(int i = yyleng - 1; i >= 0; i--) {
        printf("%c", yytext[i]);
    }
}
.|\n    ECHO;

%%

int main()
{
	printf("Enter a string of words:\n");
	/*call the yylex function.*/
	yylex();					
	return 0;
}

/*call the yywrap function*/
int yywrap()					
{
	return 1;
}