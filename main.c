#define CTEST_MAIN
#define CTEST_COLOR_OK

#include "ctest.h"
#include <stdio.h>
#include "calculator.h"

int main(int argc, const char *argv[])
{
	printf("\nTest Examples\n");
	// printf("%lf\n", sum(10, 5));
	return ctest_main(argc, argv);
}