#include <string.h>
#include "test.h"
void DWT_Accel(int a[8][8], int b[8][8], int c[8][8])
{
//#pragma HLS dataflow
//	int A_buffer[8][8];
//	int B_buffer[8][8];
//	int C_buffer[8][8];
//#pragma HLS INTERFACE m_axi depth=x port=a offset=slave bundle=DATA_A
//#pragma HLS INTERFACE m_axi depth=x port=b offset=slave bundle=DATA_B
//#pragma HLS INTERFACE m_axi depth=x port=c offset=slave bundle=DATA_C
//#pragma HLS INTERFACE s_axilite register port=return bundle=CTL
//	read_color(a, A_buffer);
//	read_ir(b, B_buffer);
	DWT_color(a);
//	DWT_IR(B_buffer);
//	Filter(A_buffer, B_buffer, C_buffer);
//	IDWT(C_buffer);
//	write_image(C_buffer, c);
}

void DWT_color(int A[8][8])
{
	float row[8];
	float col[8];
	float w0 = 0.5;
	float w1 = -0.5;
	float s0 = 0.5;
	float s1 = 0.5;
	for (int i = 0; i < 8; i++) // iterate through each row
    {
	    for (int j = 0; j < 8; j++) //iterate through each item in each row
	    {
	    	row[j] = A[i][j];
	    }
		for (int k = 0; k < 3; k++) //number of iterations
		{
	        int lev = 1 << k;
	        int levRows = 8 / lev;
	    	for (int l = 0; l < 8; l++)
	    	{
	    		if(l<levRows)
	    		{
	    			int m = (l << 1);
	    			row[l] = row[m] * s0 + row[m + 1] * s1;
	    			row[l + (levRows/2)] = row[m] * w0 + row[m + 1] * w1;
	    		}
	    	}
		}
	    for (int o = 0; o < 8; o++)
	    {
	    	A[i][o] = row[o];
	    }
	}
	for (int n = 0; n < 8; n++) // iterate through each column
	    {
		    for (int j = 0; j < 8; j++) //iterate through each item in each column
		    {
		    	col[j] = A[j][n];
		    }
			for (int k = 0; k < 3; k++) //number of iterations
			{
		        int lev = 1 << k;
		        int levCols = 8 / lev;
		    	for (int l = 0; l < 8; l++)
		    	{
		    		if(l<levCols)
		    		{
		    			int m = (l << 1);
		    			row[l] = row[m] * s0 + row[m + 1] * s1;
		    			row[l + (levCols/2)] = row[m] * w0 + row[m + 1] * w1;
		    		}
		    	}
			}
		    for (int o = 0; o < 8; o++)
		    {
		    	A[o][n] = col[o];
		    }
		}
}
