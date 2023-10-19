%option noyywrap
%{
#include <stdio.h>
%}

%%
"writeToDevice(" {
    printf("FUNCTION_CALL: writeToDevice\n");
}

[0-9]+ {
    printf("DEVICE_ID: %s\n", yytext);
}

"," {
    printf("COMMA\n");
}

[0-9]+(\.[0-9]+)? {
    printf("DATA: %s\n", yytext);
}

")" {
    printf("RIGHT_PAREN\n");
}

. {
    printf("UNKNOWN: %s\n", yytext);
}
%%

int main() {
    yylex();
    return 0;
}
