#include "ctest.h"
#include "../calculator.h"

#include <stdlib.h>
#include <stdio.h>
#include <strings.h>

CTEST(simple_test, num_compare)
{
    ASSERT_EQUAL(1, 1);
}

CTEST(simple_test, basic_sum)
{
    const double first_num = 7;
    const double second_num = 8;

    ASSERT_EQUAL(15, sum(first_num, second_num));
}

CTEST_DATA(operations_test)
{
    char *buffer;
};

CTEST_SETUP(operations_test)
{
    data->buffer = malloc(1024 * sizeof(char));
}

CTEST_TEARDOWN(operations_test)
{
    free(data->buffer);
}

// Belangrijk dat de eerste arg dezelfde heet als de setup arg
CTEST2(operations_test, string_compare)
{
    const char string[] = "Simple string to test";
    strcpy(data->buffer, string);
    ASSERT_STR(string, data->buffer);
}

CTEST(operations_test, null_compare)
{
    char *null_ptr = NULL;
    ASSERT_NULL(null_ptr);
}