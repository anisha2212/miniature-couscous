%option noyywrap
%{
#include <stdio.h>
%}

%%
[a-zA-Z]+ {
    int length = yyleng;
    printf("Length of the string: %d\n", length);
}

.|\n {}

%%

int main() {
    yylex();
    return 0;
}
