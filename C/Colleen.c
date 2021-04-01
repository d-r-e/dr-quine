#include <stdio.h>
char *s = "%c%s%c;%cint main(){%c";
int main(){
	printf(s, 34,s,34,10,10);
}