#include <stdio.h>
void f(){};
char*s="#include <stdio.h>%cvoid f(){};%cchar*s=%c#include <stdio.h>%ccvoid f(){};%ccchar*s=%cc#include <stdio.h";
int main(){
	f();
	printf(s,10,10,34,37,37);
}