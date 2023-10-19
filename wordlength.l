%option noyywrap
%{
#include <stdio.h>
int max_word_length = 0;
int current_word_length = 0;
%}

%%
[a-zA-Z]+ {
    current_word_length = yyleng;
    if (current_word_length > max_word_length) {
        max_word_length = current_word_length;
    }
}

.|\n {}

%%

int main() {
    yylex();
    printf("Length of the largest word: %d\n", max_word_length);
    return 0;
}
