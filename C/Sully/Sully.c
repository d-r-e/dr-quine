#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
int main(){
	int i=5;
	char filename[30], compile[50];
	char *quine="#include <stdio.h>%c#include <fcntl.h>%c#include <unistd.h>%c#include <stdlib.h>%cint main(){%c%cint i=%d;%c%cchar filename[30], compile[50];%c%cchar *quine=%c%s%c;%c%c%ci--;sprintf(filename, %cSully_%%d.c%c, i);%c%cint f = open(filename, O_CREAT|O_TRUNC|O_WRONLY, 655);%c%cdprintf(f,quine,10,10,10,10,10,9,i,10,9,10,9,34,quine,34,10,10,9,34,34,10,9,10,9,10,9,34,34,10,9,34,34,10,9,10,10);%c%csprintf(compile,%cgcc Sully_%%d.c -o Sully_%%d%c,i,i);system(compile);%c%cif (i > 0){sprintf(compile,%c./Sully_%%d%c, i);system(compile);}%c%cclose(f);%c}%c";

	i--;sprintf(filename, "Sully_%d.c", i);
	int f = open(filename, O_CREAT|O_TRUNC|O_WRONLY, 655);
	dprintf(f,quine,10,10,10,10,10,9,i,10,9,10,9,34,quine,34,10,10,9,34,34,10,9,10,9,10,9,34,34,10,9,34,34,10,9,10,10);
	sprintf(compile,"gcc Sully_%d.c -o Sully_%d",i,i);system(compile);
	if (i > 0){sprintf(compile,"./Sully_%d", i);system(compile);}
	close(f);
}
