%option noyywrap
%{
#include<stdio.h>
%}

digit [0-9]+

%%

{digit} { return atoi(yytext); }

%%

int main () {
    float sum=0, num, n=0;
    while( (num=yylex ())>0) {
        sum = sum+num;
        n = n+1;
    }
    printf("The average of given numbers is %f\n",sum/n);
    yylex ();
    return 0;
}

