#include <stdio.h>
#include <windows.h>

int e[10],mo[10]={0,1,2,3,4,5,6,7,8,9};
char n[30][10];
void burbuja ();

int main ()
{
	int x;
	for(x=0;x<=9;x++)
	{
		printf("Ingrese el nombre %i\n",x+1);
		scanf("%s",&n[x]);
		printf("Ingrese la edad correspondiente\n");
		scanf("%i",&e[x]);
	}
	burbuja ();
	for(x=0;x<10;x++)
	{
		printf("%i---%s\n",e[x],n[mo[x]]);
	}
	system("pause");
	return 0;
}

void burbuja ()
{
	int x, y, tempy;
	char temp[30];
	for(x=0;x<10;x++)
	{
		for(y=0;y<9;y++)
		{
			if(e[y]>e[y+1])
			{
				tempy=e[y];
				e[y]=e[y+1];
				e[y+1]=tempy;
				tempy=mo[y];
				mo[y]=mo[y+1];
				mo[y+1]=tempy;
			}
		}
	}
}
