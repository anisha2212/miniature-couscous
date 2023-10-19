%option noyywrap
%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
%}

DIGIT       [0-9]
%%
{DIGIT}+ {
    int num = atoi(yytext);
    printf("NUMBER: %d\n", num);
    int radius = num; // Initialize the radius with the parsed number
}

"radius" {
    printf("RADIUS\n");
}

" " {
    // Ignore whitespace
}

. {
    printf("UNKNOWN: %s\n", yytext);
}
%%

int main() {
    int radius = 0; // Initialize the radius

    printf("Enter the radius: ");
    yylex();

    double area = M_PI * radius * radius;
    printf("Area of the circle: %.2f\n", area);

    return 0;
}
