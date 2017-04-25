#include <stdlib.h>
#include <stdio.h>
#include <string.h>

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

int main()
{
    /* TEST strcat, strdup, puts
   char *hello = malloc(100);
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
    return (0);
}