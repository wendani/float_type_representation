#include <stdio.h>

int main(int argc, char *argv[])
{
	float x   = 0.5;
	char *ptr = (char *)&x;

	printf("%f: 0x%02x %02x %02x %02x\n", x, *(ptr + 3), *(ptr + 2), *(ptr + 1), *ptr);

	return 0;
}
