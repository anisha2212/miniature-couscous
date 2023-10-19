%option noyywrap
%{
#include <stdio.h>
%}

DIGIT       [0-9]
%%
{DIGIT}+ {
    int num = atoi(yytext);
    printf("NUMBER: %d\n", num);
}

" " {
    // Ignore whitespace
}

"length" {
    printf("LENGTH\n");
}

"width" {
    printf("WIDTH\n");
}

. {
    printf("UNKNOWN: %s\n", yytext);
}
%%

int main() {
    int length = 0;
    int width = 0;

    printf("Enter the length: ");
    yylex();
    printf("Enter the width: ");
    yylex();

    int area = length * width;
    printf("Area of the rectangle: %d\n", area);

    
}
