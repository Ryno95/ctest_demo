#include <strings.h>
#include "calculator.h"

int main(int argc, char *argv[])
{
    (void)argc;
    if (!argv[1])
        return (2);
    if (strlen(argv[1]) > 5)
        return (1);
    return (0);
}