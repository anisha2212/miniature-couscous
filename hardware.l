%option noyywrap
%{
#include <stdio.h>
%}

%%
"initializeHardware()" {
    // TODO: Insert code to initialize hardware components here.
    printf("Initializing hardware components...\n");
}

. {
    // Process other input or pass it through.
    printf("Recognized: %s\n", yytext);
}
%%

int main() {
    yylex();
    return 0;
}
