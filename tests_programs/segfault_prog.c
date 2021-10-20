#include <unistd.h>

int	main(void)
{
	int	*faulty_pointer = NULL;
	
	printf("%d", *faulty_pointer);
	return (0);
}