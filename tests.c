#include <stdlib.h>
#include <stdio.h>
#include "ctest.h"
#include "calculator.h"

CTEST_DATA(operations_test)
{
    double first_num;
    double second_num;
};

CTEST_SETUP(operations_test)
{
    data->first_num = 10;
    data->second_num = 6;
}

CTEST(simple_test, num_compare)
{
    ASSERT_EQUAL(1, 1);
}

CTEST2(operations_test, basic_sum)
{
    ASSERT_EQUAL(15, sum(data->first_num, data->second_num));
}