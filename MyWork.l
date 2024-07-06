%{
    

/*definitions*/    
%}

/*rules*/
%%
ARRAY {printf("Keyword\n");}
BEGIN {printf("Keyword\n");}
BOOLEAN {printf("Keyword\n");}
COMMENT {printf("Keyword\n");}
CONTINUE {printf("Keyword\n");}
DO {printf("Keyword\n");}
DOUBLE {printf("Keyword\n");}
ELSE {printf("Keyword\n");}
END {printf("Keyword\n");}
FALSE {printf("Keyword\n");}
FOR {printf("Keyword\n");}
IF {printf("Keyword\n");}
INTEGER {printf("Keyword\n");}
LABEL {printf("Keyword\n");}
LIST {printf("Keyword\n");}
LONG {printf("Keyword\n");}
OWN {printf("Keyword\n");}
PROCEDURE {printf("Keyword\n");}
STEP {printf("Keyword\n");}
SWITCH {printf("Keyword\n");}
THEN {printf("Keyword\n");}
TRUE {printf("Keyword\n");}
UNTIL {printf("Keyword\n");}
VALUE {printf("Keyword\n");}
WHILE {printf("Keyword\n");}

^"+" {printf("Operator\n");}
^"*" {printf("Operator\n");}
^"/" {printf("Operator\n");}
^"^" {printf("Operator\n");}
- {printf("Operator\n");}
%% {printf("Operator\n");}
| { printf("Operator\n");}
& {printf("Operator\n");}
<< {printf("Operator\n");}
>> {printf("Operator\n");}
<= {printf("Operator\n");}
>= {printf("Operator\n");}

^\{ { printf("Delimiters\n"); }
^\[ { printf("Delimiters\n"); }
^\" { printf("Delimiters\n"); }
} {printf("Delimiters\n");}
] {printf("Delimiters\n");}
; {printf("Delimiters\n");}
: {printf("Delimiters\n");}
, {printf("Delimiters\n");}
' {printf("Delimiters\n");}

[a-zA-Z][a-zA-Z0-9]* {printf("Identifier\n");}
.+ {printf("Invalid input\n");}
\n {return 0;}
%%

yywrap() {}

int main(){
printf("Enter string: ");
yylex();

return 0;

}