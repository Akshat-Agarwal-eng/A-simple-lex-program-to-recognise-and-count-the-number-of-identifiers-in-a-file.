%{
#include<stdio.h>
int i=0;
%}
digit[0-9]
letter[a-zA-z_]
%%
{letter}({letter}|{digit})* {i++;}
{digit}({letter}|{digit})* {i;}
%%
int yywrap(){
return 1;
}
int main()
{
printf("enter the values\n");
yylex();
printf("number of identifiers=%d\n",i);
return 0;
}
