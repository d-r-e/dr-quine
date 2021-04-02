#include<stdio.h>
#include<unistd.h>
#include<fcntl.h>
#define START main
#define GRACE "#include<stdio.h>%c#include<unistd.h>%c#include<fcntl.h>%c#define START main%c#define GRACE %c%s%c%c#define quine(x) int START(){int f=open(%cGrace_kid.c%c, O_WRONLY|O_TRUNC, 644);dprintf(f,x,10,10,10,10,34,x,34,10,34,34,10,10,9,10,10,10);close(f);}%c/*%c%cdarodrig%c*/%cquine(GRACE)%c"
#define quine(x) int START(){int f=open("Grace_kid.c", O_WRONLY|O_TRUNC, 644);dprintf(f,x,10,10,10,10,34,x,34,10,34,34,10,10,9,10,10,10);close(f);}
/*
	darodrig
*/
quine(GRACE)
