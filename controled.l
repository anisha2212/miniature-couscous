%option noyywrap
%{
#include <stdio.h>
%}

DIGIT       [0-9]
%%
"controlLED"    { printf("CONTROL_LED\n"); }
"("             { printf("LEFT_PAREN\n"); }
")"             { printf("RIGHT_PAREN\n"); }
{DIGIT}+        { printf("ledID: %s\n", yytext); }
"on"            { printf("LED_STATE: ON\n"); }
"off"           { printf("LED_STATE: OFF\n"); }

.               { printf("UNKNOWN: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
