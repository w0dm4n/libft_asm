#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>

int     ft_puts(const char*);
int     ft_strlen(const char *);
void    ft_bzero(void *, size_t);
char    *ft_strcat(char *, char *);
char    *ft_strdup(char *str);
int     ft_isalpha(int c);
int     ft_isdigit(int c);
int     ft_isalnum(int c);
int     ft_isascii(int c);
int     ft_isprint(int c);
int     ft_toupper(int c);
int     ft_tolower(int c);
void    *ft_memset(void *ptr, int c, size_t length);
void    *ft_memcpy(void *dest, const void *src, size_t n);
void    ft_cat(size_t fd);

/* BONUS */
int     ft_isupper(int c);
int     ft_islower(int c);
void    *ft_memchr(const void *ptr, void *c, size_t n);
char    *ft_strndup(char *str, size_t n);
void    ft_replace(char *str, void *find, void *set);
int main()
{
    /* TEST strcat, strdup, puts
    char *hello = malloc(110);
    ft_strcat(hello, "Bonjour");
    char *resu = ft_strcat(hello, "monsieur                     ca va?            oui ;p\n");
    ft_strcat(resu, "Coucou est-ce que tu vas bien ??\n moi oui cv :P \n");
    ft_puts(resu);

    char *strdup = ft_strdup("Bonjour les petits homme verts\n");
    ft_puts(strdup);
    free (strdup);
    printf("index: %d\n", ft_strlen(hello));
    */
  
    /* TEST bzero 
    char *hello = ft_strdup("abcdefgtfr");
    ft_bzero(hello, ft_strlen(hello));
   int i = 0;
    while (i < 10)
        printf("char: %c\n", hello[i++]);
    */
 
    /* TEST isalpha
    int i = 0;
    while (i <= 127)
    {
        printf("isalpha %c = %d\n", i, ft_isalpha(i));
        i++;
    }
    */

   /* TEST isdigit
    int i = 0;
    while (i <= 127)
    {
        printf("isdigit %c = %d\n", i, ft_isdigit(i));
        i++;
    }
    */
    
    /* TEST isalnum
    int i = 0;
    while (i <= 127)
    {
        printf("isalnum %c = %d\n", i, ft_isalnum(i));
        i++;
    }
    */

    /* TEST isascii
    int i = 0;
    while (i <= 150)
    {
        printf("isascii %c = %d\n", i, ft_isascii(i));
        i++;
    }
    */

    /* TEST isprint
    int i = 0;
    while (i <= 127)
    {
        printf("isprint %c = %d\n", i, ft_isprint(i));
        i++;
    }
    */

    /* TEST toupper
    int i = 97;
    while (i <= 122)
    {
        printf("char %c -> %c\n", i, ft_toupper(i));
        i++;
    }
    */
    
    /* TEST tolower
    int i = 65;
    while (i <= 90)
    {
        printf("char %c -> %c\n", i, ft_tolower(i));
        i++;
    }
    */

    /* TEST memset
    char *coucou = malloc(100);
    coucou = ft_memset(coucou, 'a', 10);
    int i = 0;
    while (i <= 15)
    {
        printf("i = %d, char = %c\n", i, coucou[i]);
        i++;
    }*/

    /* TEST memcpy
    char *str1 = ft_strdup("je t'aime bien le monsieur tout dur\n");
    char *str2 = ft_strdup("je t'aime pas ");
    str1 = ft_memcpy(str1, str2, ft_strlen(str2));
    ft_puts(str1);
    */

    /* TEST ft_cat
    int fd = open("Makefile", O_RDONLY);
    if (fd > 0)
    {
        ft_cat(fd);
        while (42)
            ft_cat(0);
    }
    */


    /* BONUS TEST*/
    /*if (ft_isupper('A'))
        ft_puts("A is upper !\n");
    if (ft_islower('a'))
        ft_puts("a is lower !\n");
    
    char *a = ft_strdup("abcdefZghijkl\n");
    void *res = ft_memchr(a, "Z", ft_strlen(a));
    if (res != NULL)
    {
        ft_puts((char*)res);
    }
    res = ft_memchr(a, "S", ft_strlen(a));
    if (res == NULL)
        ft_puts("res is null\n");
    char *strndup = ft_strndup("Hello donne moi un bout de toi", 6);
    ft_puts(strndup);
    char *replace = ft_strdup("Bonjour aaaaa remplace aaaaa moi tout aaaaa les caracteres !aaaa\n");
    ft_replace(replace, "a", "b");
    ft_puts(replace);*/

    return (0);
}