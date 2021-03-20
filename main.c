#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int ft_strlen(char *s);
int ft_strcmp(char *s1, char *s2);
char *ft_strcpy(char *dst, char *src);
int ft_write(int fd, char *s, int bytes);
int ft_read(int fd, char *s, int bytes);
char *ft_strdup(char *s);

int main()
{
	char *s1 = "asdb123123";
	char *s2 = malloc(5);
	s2 = ft_strdup(s1);
	printf("%s", s2);
	return (0);
}
