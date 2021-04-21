#include <main.h>
#include <module.h>
#include <stdio.h>

int module_test(void)
{
    printf("Hello world from module!\n");
    return 0;
}

module_init(module_test);