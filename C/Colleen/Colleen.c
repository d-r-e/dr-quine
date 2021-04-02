#include <stdio.h>
/*
   darodrig
*/
void f(){}
char *s = "#include <stdio.h>%c/*%c   darodrig%c*/%cvoid f(){}%cchar *s = %c%s%c;%cint main(){%c/*%c   darodrig%c*/%c%cf();%c%cprintf(s,10,10,10,10,10,34,s,34,10,10,10,10,10,9,10,9,10,10);%c}%c";
int main(){
/*
   darodrig
*/
	f();
	printf(s,10,10,10,10,10,34,s,34,10,10,10,10,10,9,10,9,10,10);
}
