%option noyywrap
%{
#include <stdio.h>
%}

%%
"readSensorData"  {
    printf("Function: readSensorData");
}

"(" { 
    printf("Open Parenthesis\n");
}

[0-9]+ {
    printf("Sensor ID: %s\n", yytext);
}

")" { 
    printf("Close Parenthesis\n");
}

. {
    printf("Unknown: %s\n", yytext);
}
%%

int main() {
    yylex();
    return 0;
}
