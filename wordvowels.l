%option noyywrap
%{
#include <stdio.h>
%}

%%
[a-zA-Z]*[aeiouAEIOU]+[a-zA-Z]* {
    printf("%s contains at least one vowel.\n", yytext);
}

[a-zA-Z]+ {
    printf("%s does not contain any vowels.\n", yytext);
}

.|\n {}

%%

int main() {
    yylex();
    return 0;
}
