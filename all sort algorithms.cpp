#include <stdio.h>
#include <windows.h>

int e[10],mo[10]={0,1,2,3,4,5,6,7,8,9};
char n[30][10];
void burbuja ();
void seleccion ();
void insercion();
void shell();
void quicksort(int izq, int der);
void mergesort(int i, int f);
void merge(int i, int m, int f);
void imprimir();

int main ()
{
	int x, m, t;
	do
	{
	for(t=0;t<=9;t++)
	{
		mo[t]=t;
	}
	system("cls");
	printf("Elija el metodo por el cual quiere organizar la informacion\n");
	printf("1-Burbuja\n2-Metodo de seleccion\n3-Insercion\n4-Quiksort\n5-shell\n6-mergesort\n7-salir\n");
	scanf("%i",&m);
	switch(m)
	{
		case 1:
			for(x=0;x<=9;x++)
			{
				printf("Ingrese el nombre %i\n",x+1);
				scanf("%s",&n[x]);
				printf("Ingrese la edad correspondiente\n");
				scanf("%i",&e[x]);
			}
			burbuja ();
		break;
		case 2:
			for(x=0;x<=9;x++)
			{
				printf("Ingrese el nombre %i\n",x+1);
				scanf("%s",&n[x]);
				printf("Ingrese la edad correspondiente\n");
				scanf("%i",&e[x]);
			}
			seleccion ();
		break;
		case 3:
			for(x=0;x<=9;x++)
			{
				printf("Ingrese el nombre %i\n",x+1);
				scanf("%s",&n[x]);
				printf("Ingrese la edad correspondiente\n");
				scanf("%i",&e[x]);
			}
			insercion ();
		break;
		case 4:
			for(x=0;x<=9;x++)
			{
				printf("Ingrese el nombre %i\n",x+1);
				scanf("%s",&n[x]);
				printf("Ingrese la edad correspondiente\n");
				scanf("%i",&e[x]);
			}
			quicksort( 0, 9);
		break;
		case 5:
			for(x=0;x<=9;x++)
			{
				printf("Ingrese el nombre %i\n",x+1);
				scanf("%s",&n[x]);
				printf("Ingrese la edad correspondiente\n");
				scanf("%i",&e[x]);
			}
			shell();
		break;
		case 6:
			for(x=0;x<=9;x++)
			{
				printf("Ingrese el nombre %i\n",x+1);
				scanf("%s",&n[x]);
				printf("Ingrese la edad correspondiente\n");
				scanf("%i",&e[x]);
			}
			mergesort(0, 9);
		break;
		case 7:
		break;
		default:
			printf("opcion no valida");
	}
	if(m<7)
	{
		imprimir();
    }
	system("pause");
	}while(m!=7);
	return 0;
}

void burbuja (){
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
void insercion(){
	int aux, p, aum;
	for(int i=1;i<10;i++)
	{
		aux=e[i];
		aum=mo[i];
		p=i-1;
		while(aux<e[p]&&p>=1)
		{
			e[p+1]=e[p];
			mo[p+1]=mo[p];
			p=p-1;
		}
		if(e[p]<=aux)
		{
			e[p+1]=aux;
			mo[p+1]=aum;
		}
		else
		{
			e[p+1]=e[p];
			e[p]=aux;
			mo[p+1]=mo[p];
			mo[p]=aum;
		}
	}
}
void seleccion (){
	int n=10, i, d, pos, swap, aum;
	for(i=0;i<n;i++)
	{
		pos=i;
		for(d=i+1;d<n;d++)
		{
			if(e[pos]>e[d])
			{
				pos=d;
			}
		}
		if(pos!=i)
		{
			swap=e[i];
			e[i]=e[pos];
			e[pos]=swap;
			aum=mo[i];
			mo[i]=mo[pos];
			mo[pos]=aum;
		}
	}
}
void quicksort( int izq, int der ){ 
    int i = 0, j = 0, x = 0, aux = 0, aum; 
    i = izq;  			             
    j = der; 			            
    x = e [ (izq + der) /2 ]; 
    do{ 
        while( (e[i] < x) && (j <= der) ){ 
                i++;}                      
        while( (x < e[j]) && (j > izq) ){ 
                j--;} 
        if( i <= j ){      
            aux = e[i]; 
            e[i] = e[j]; 	           
            e[j] = aux; 
            aum = mo[i];
            mo[i] = mo[j];
            mo[j] = aum;
            i++;  j--;      
        } 
    }while( i <= j );
    if( izq < j ) {	
        quicksort( izq, j );
	}
    if( i < der ){
    	quicksort( i, der );
	}
}
void shell(){
	int cont, pasos, i, temp, aum;
	for(cont=10/2;cont!=0;cont/=2)
		for(pasos=1;pasos!=0;)
		{
			pasos=0;
			for(i=cont;i<10;i++)
			{
				if(e[i-cont]>e[i])
				{
					temp=e[i];
					e[i]=e[i-cont];
					e[i-cont]=temp;
					aum=mo[i];
					mo[i]=mo[i-cont];
					mo[i-cont]=aum;
					pasos++;
				}
			}
		}
}
void mergesort(int i, int f) {
 if(i!=f) {
  int m = (i+f)/2;
  mergesort(i, m);
  mergesort(m+1, f); 
  merge(i, m, f);
 }
} 
void merge(int i, int m, int f) {
	int k=0, j=0;
 int *aux = new int[m-i+1];
 for(j=i; j<=m; j++)
  aux[j-i] = e[j];
  
 int c1=0, c2=m+1;
 for(int j=i; j<=f; j++) {
  if(aux[c1] < e[c2]) {
   e[j] = aux[c1++];
   if(c1==m-i+1)
    for(k=c2; k<=f; k++)
     e[++j] = e[k];
  }
  else {
   e[j] = e[c2++];
   if(c2==f+1)
    for(k=c1; k<=m-i; k++)
     e[++j] = aux[k];
  }
 } 
}
void imprimir(){
	FILE *fichero;
char arch[15]={"lista.txt"};
int x;
fichero = fopen( arch, "w+" );
	for(x=0;x<10;x++)
	{
		fseek(fichero, 0L, SEEK_END);
		printf("%i---%s\n",e[x],n[mo[x]]);
		fprintf(fichero,"%i",e[x]);
        fprintf(fichero,"---%s\n",n[mo[x]]);
	}
	if(!fclose(fichero))
      printf( "Fichero cerrado\n" );
}


