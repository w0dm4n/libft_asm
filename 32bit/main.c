#include <stdlib.h>

extern int ft_puts(const char*);

int main()
{
    char *hello = malloc(100);
    hello = "hello";
    ft_puts(hello);
    return (0);
}