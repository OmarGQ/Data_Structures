#include <stdio.h>
#include <stdlib.h>
int cont=0;
int e[10]={4,6,8,13,15,22,31,33,45,49};
void lineal(int a);
void binario(int a);
 
int main()
{
	int n, el;
 	FILE *archivo;
 	
 	char caracteres[10];
 	
 	archivo = fopen("lista.txt","r");
 	
 	if (archivo == NULL)
 		exit(1);
 	else
        {
 	    printf("El contenido del archivo es \n\n");
 	    while (feof(archivo) == 0)
 	    {
 		fgets(caracteres,10,archivo);
 		printf("%s",caracteres);
 	    }
        }
        fclose(archivo);
        printf("\nque numero busca\n");
        scanf("%i",&n);
	printf("como lo quiere buscar\n1-metodo lineal\n2-metodo binario\n");
	scanf("%i",&el);
	if(el==1){
		lineal(n);
		printf("se realizaron %i busquedas\n",cont);
	}
	else if(el==2){
		binario(n);
		printf("se realizaron %i busquedas\n",cont);
	}
	else{
		printf("opcion no valida\n");
	}
	system("pause");
	return 0;
}
void lineal(int a){
	int i=0, con=1;
	while(e[i]!=a){
	i++;
	con++;
	}
	cont=con;
}
void binario(int a){
	int izq, der, dato, mit, n=9, i=1;
	izq=0; 
	der=n;
	mit=(9+1)/2;
	while(e[mit]!=a&&izq<der){
		if(e[mit]>a){
			der=mit-1;
		}
		else{
			izq=mit+1;
		}
		mit=(izq+der)/2;
		i++;
	}
	if(e[mit]==a){
		cont=i;
	}
	else{
		printf("no encontrado");
	}
}
