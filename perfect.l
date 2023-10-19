%option noyywrap
%{
#include <stdio.h>
%}

%%
[0-9]+ {
    int num = atoi(yytext);
    int sum = 1;
    int i;
    
    for (i = 2; i * i <= num; i++) {
        if (num % i == 0) {
            if (i * i != num) {
                sum += i + num / i;
            } else {
                sum += i;
            }
        }
    }
    
    if (num == sum) {
        printf("%d is a perfect number.\n", num);
    } else {
        printf("%d is not a perfect number.\n", num);
    }
}

.|\n {}

%%

int main() {
    yylex();
    return 0;
}
