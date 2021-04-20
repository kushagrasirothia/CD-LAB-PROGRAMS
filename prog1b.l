%{
#include <stdio.h>
int op=0,key=0,var=0,l=0;
%}
%%
if|then|begin|end|int|float|byte|short|long|while|for|switch|case|struct|goto printf("keyword");
[a-zA-Z_][a-zA-Z0-9]* printf("identifier");
"+"|"-"|"*"|"/"|"<"|">"|"\\"|"=" printf("operator");
. printf("invalid");
%%
int main()
{
	printf("Enter the individual C Tokens\n");
	yylex();
}
/* tokens IDENTIFICATION*/
