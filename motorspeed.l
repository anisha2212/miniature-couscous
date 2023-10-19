%option noyywrap
%{
#include <stdio.h>
%}

%%
"configureMotorSpeed(" {
    printf("CONFIGURE_MOTOR_SPEED: ");
    int c;
    while ((c = getchar()) != EOF) {
        if (c == ')') {
            printf(")\n");
            break;
        }
        putchar(c);
    }
}

[0-9]+ {
    printf("NUMBER: %s\n", yytext);
}

"," {
    printf(", ");
}

. {
    // Handle other characters if needed
}

%%

int main() {
    yylex();
    return 0;
}
