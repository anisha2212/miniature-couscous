%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4} {
    printf("Valid Email %s\n", yytext);
}

.+ {printf("Invalid email\n");
}


%%
int yywrap() {
}
int main() {
    printf("\nEnter email id : "); 
    yylex(); 
    printf("\n"); 
    return 0; 
}
