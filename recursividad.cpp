#include <stdio.h>
#include <windows.h>
int y=0, x=0;

int proceso(void) //Omar Ildefonso Godinez Q.
{
	y++;
	printf("Entrando a funcion %i\n",y);
	if(x>y)
	{
		proceso();
		y--;
	}
	printf("Saliedo de funcion %i\n",y);
	return 0;
}

int main ()
{
	printf("Cuantas veces quieres repetir la funcion\n");
	scanf("%i",&x);
	if(x>0)
	{
		proceso ();
	}
	printf("Fin\n");
	system("pause");
	return 0;
}
