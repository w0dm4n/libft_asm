#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int     ft_puts(const char*);
int     ft_strlen(const char *);
int     ft_bzero(void *, size_t);
char    *ft_strcat(char *, char *);

int main()
{
    char *hello = malloc(100);
    strcat(hello, "Bonjour");
    char *res = ft_strcat(hello, "monsieur                     ca va?            oui ;p\n");
    ft_strcat(hello, "Coucou keskispasse\nPK CA BUG???????????");
    ft_puts(res);

    /*int res = ft_puts(hello);
    ft_puts(hello);
    printf("res : %d\nindex: %d\n", res, ft_strlen(hello));
    int coucou = ft_bzero(hello, ft_strlen(hello));
   int i = 0;
    while (i < 17)
        printf("char: %c\n", hello[i++]);*/
    return (0);
}