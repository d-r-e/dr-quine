#include<stdio.h>
#include<unistd.h>
#include<fcntl.h>
#define GRACE "#include<stdio.h>%c#include<unistd.h>%c#include<fcntl.h>%c#define GRACE %c%s%c%c#define quine(x) int main(){int f=open(%cGrace_kid.c%c, O_WRONLY|O_TRUNC, 644);dprintf(f,x,10,10,10,34,GRACE,34,10,34,34,10,10,10);close(f);}%c%cquine(GRACE)%c"
#define quine(x) int main(){int f=open("Grace_kid.c", O_WRONLY|O_TRUNC, 644);dprintf(f,x,10,10,10,34,GRACE,34,10,34,34,10,10,10);close(f);}

quine(GRACE)
