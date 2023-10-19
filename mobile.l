%option noyywrap
%{ 
    #include<stdio.h> 
%} 
  
%% 
  
[1-9][0-9]{9} {printf("\nMobile Number Valid\n");} 
  
.+ {printf("\nMobile Number Invalid\n");} 
  
%% 
  
// driver code  
int main()  
{ 
    printf("\nEnter Mobile Number : "); 
    yylex(); 
    printf("\n"); 
    return 0; 
} 