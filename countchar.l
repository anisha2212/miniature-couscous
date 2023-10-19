%{
#include <stdio.h>
int c=0;
int n1=0;
%}

%%
[a-z, A-Z, 0-9, " "] {c++;}
\t;
. ;
%%

int yywrap()
{
return 1;
}
int main()
{
printf("Enter string-");
yylex();
printf("\n No. of character: %d \n ", c);
}