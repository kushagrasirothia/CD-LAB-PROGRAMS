%{
int pi=0,pf=0,ni=0,nf=0;
%}

%%
\n {return 0;}
[0-9]+[ ] {pi++;}
[0-9]+[/][1-9]+ {pf++;}

[0-9]+[.][0]+ {pi++;}
[0-9]+[.][0-9]+ {pf++;}

[+][0-9]+[ ] {pi++;}
[+][0-9]+[/][1-9]+ {pf++;}

[+][0-9]+[.][0]+ {pi++;}
[+][0-9]+[.][0-9]+ {pf++;}

[-][0-9]+[ ] {ni++;}
[-][0-9]+[/][1-9]+ {nf++;}

[-][0-9]+[.][0]+ {ni++;}
[-][0-9]+[.][0-9]+ {nf++;}
%%


int yywrap(){}

int main(){
    yylex();
    printf("Counts:\npositive integers:%d\npositive fractions:%d\nnegative integers:%d\nnegative fractions:%d\n",pi,pf,ni,nf);
    return 0;
}
