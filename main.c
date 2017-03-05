#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>

int main()
{
	void * handle;
	int (*funadd)(int a, int b);
	int (*funsub)(int a, int b);
	int (*funmul)(int a, int b);

	handle = dlopen("./so.so", RTLD_NOW);

	funadd = dlsym(handle, "funadd");
	funsub = dlsym(handle, "funsub");
	funmul = dlsym(handle, "funmul");

	printf("add(%d), sub(%d), mul(%d)\n", funadd(15,3),
										funsub(15, 3),
										funmul(15, 3));
	return 0;
}
