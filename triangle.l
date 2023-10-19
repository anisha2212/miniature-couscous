%option noyywrap
%{
#include <stdio.h>
#include <stdlib.h>
%}

DIGIT       [0-9]
%%
{DIGIT}+ {
    int num = atoi(yytext);
    printf("NUMBER: %d\n", num);
}

"base" {
    printf("BASE\n");
}

"height" {
    printf("HEIGHT\n");
}

" " {
    // Ignore whitespace
}

. {
    printf("UNKNOWN: %s\n", yytext);
}
%%

int main() {
    int base;
    int height;

    printf("Enter the base: ");
    yylex();
    printf("Enter the height: ");
    yylex();

    double area = 0.5 * base * height;
    printf("Area of the triangle: %.2f\n", area);

    return 0;
}
