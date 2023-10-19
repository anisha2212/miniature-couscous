%option noyywrap
%{
#include <stdio.h>
%}

%%
[0-9]+ {
    int num = atoi(yytext);
    int reversed = 0;
    int original = num;

    while (num > 0) {
        reversed = reversed * 10 + num % 10;
        num /= 10;
    }

    if (original == reversed) {
        printf("%d is a palindrome.\n", original);
    } else {
        printf("%d is not a palindrome.\n", original);
    }
}

.|\n {}

%%

int main() {
    yylex();
    return 0;
}
