%{
#include<stdio.h>
int sf=0,pf=0;
%}

%%
"scanf" {sf++;fprintf(yyout,"readf");}
"printf" {pf++;fprintf(yyout,"writef");}
; {fprintf(yyout,"%s",yytext);}
"\n" {fprintf(yyout,"\n");}
%%

int main(){
	yyin=fopen("o.c","r+");
	yyout=fopen("new.c","w+");
	yylex();
	printf("Number of printf =%d\nNumber of scanf =%d\n",pf,sf);
	return 0;
	
}
	/* NO OF printf and scanf statments */
