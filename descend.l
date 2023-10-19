%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap
%{
int numbers[5];
int count = 0;
%}

%%
[0-9]+ {
    if (count < 5) {
        numbers[count] = atoi(yytext);
        count++;
    }
    if (count == 5) {
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 4 - i; j++) {
                if (numbers[j] < numbers[j + 1]) {
                    int temp = numbers[j];
                    numbers[j] = numbers[j + 1];
                    numbers[j + 1] = temp;
                }
            }
        }

        for (int i = 0; i < 5; i++) {
            printf("%d ", numbers[i]);
        }
        printf("\n");

        count = 0; 
    }
}

. ;

%%
int main() {
    yylex();
    return 0;
}
