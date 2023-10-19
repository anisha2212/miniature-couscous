%option noyywrap
%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}

%option noyywrap

%%

[0-9]+ { // rule for digits
    char *rev = strdup(yytext); // copy the matched text
    int len = strlen(rev); // get the length
    for (int i = 0; i < len / 2; i++) { // reverse the string
        char temp = rev[i];
        rev[i] = rev[len - i - 1];
        rev[len - i - 1] = temp;
    }
    printf("Reversed number: %s\n", rev); // print the reversed number
    free(rev); // free the memory
}


%%

int main() {
    yylex(); // call the lexer
    return 0;
}