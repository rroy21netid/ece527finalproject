//#include "test.h"
#include "DWT_Accel.h"
#include <stdio.h>
#include <stdlib.h>

int main ()
{
	unsigned char a[1][480][640];
	unsigned char b[1][480][640];
	unsigned char c[1][480][640];

	a[0][0][0] =2;
	a[0][0][1] =43;
	a[0][0][2] =78;


	for(int i; i < 480; i++)
	{

		for (int j; j < 640; j++)
		{
				if((i == 0) && i <3)
				{
					a[0][i][j] = (unsigned char)rand();

				}
				b[0][i][j] = 0;
		}

	}
	for(int k; k < 8; k++)
	{
		for (int j; j < 8; j++)
		{
			printf("input is %u\n", a[k][j]);
		}
	}
	DWT_Accel(a,b,c);
	for(int l; l < 8; l++)
	{
		for (int j; j < 8; j++)
		{
			printf("output is %u\n", c[l][j]);
		}
	}
}
