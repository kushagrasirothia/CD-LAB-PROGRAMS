%{
int l=0,w=0,s=0,c=0;
%}
%%
[\n] l++;
[ ] s++;
[\t] s=s+3;
[a-zA-Z0-9]+ {w++;c=c+yyleng;}
. ;
%%
int main()
{
printf("Enter the string\n");
yylex();
printf("no of lines=%d\n\twords=%d\n\tcharacters=%d\ttspaces=%d\n",l,w,c,s);
}
/* NO OF CHARACTERS, LINES , WORDS, SPACES*/
