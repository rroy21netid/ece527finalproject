#include <string.h>
#include "DWT_Accel.h"
void DWT_Accel(unsigned short a[1][120][160], unsigned short b[1][120][160], unsigned short c[1][120][160])
{
	unsigned short A_buffer[1][120][160];
	unsigned short B_buffer[1][120][160];
	unsigned short C_buffer[1][120][160];
#pragma HLS INTERFACE m_axi depth=19200 port=a offset=slave bundle=DATA_A
#pragma HLS INTERFACE m_axi depth=19200 port=b offset=slave bundle=DATA_B
#pragma HLS INTERFACE m_axi depth=19200 port=c offset=slave bundle=DATA_C
#pragma HLS INTERFACE s_axilite register port=return bundle=CTL
	read_color(a, A_buffer);
	read_IR(b, B_buffer);
	DWT_color(A_buffer);
	DWT_IR(B_buffer);
	Filter(A_buffer, B_buffer, C_buffer);
	IDWT(C_buffer);
	write_image(C_buffer, c);
}


//read color image and buffer (may be grayscale, depends on end implementation)
void read_color(unsigned short a[1][120][160], unsigned short A_buffer[1][120][160])
{
	memcpy(A_buffer, a, 1 * 120 * 160 * sizeof(unsigned short));
}
//Read IR image and buffer
void read_IR(unsigned short b[1][120][160], unsigned short B_buffer[1][120][160])
{
	memcpy(B_buffer, b, 1 * 120 * 160 * sizeof(unsigned short));
}
//write combined image
void write_image(unsigned short C_buffer[1][120][160], unsigned short c[1][120][160])
{
	memcpy(c, C_buffer, 1 * 120 * 160 * sizeof(unsigned short));
}
// performs HAAR Wavelet Transform on color image
void DWT_color(unsigned short A[1][120][160])
{
	float row[160];
	float column[120];
	float tempr[160];
	float tempc[120];
	for (int k = 0; k < 2; k++) //number of iterations
	{
		int lev = 1 << k;
		int level_col = 120 / lev;
		int level_row = 160 / lev;
		for (int i = 0; i < 120; i++) // iterate through each row
		{
			if(i<level_col)
			{
				for (int j = 0; j < 160; j++) //iterate through each item in each row aka columns
				{
					row[j] = A[0][i][j];
				}
				for (int l = 0; l < 80; l++) // iterate through each item in each row, max 320 given two assigned at a time
				{
#pragma HLS unroll factor=8
#pragma HLS pipeline
					if(l < (level_row >> 1))
					{
						int m = (l << 1);
						tempr[l] = (0.5 * row[m]) + (0.5 * row[m + 1]);//A[0][i][m] * s0 + A[0][i][m + 1] * s1;
						tempr[l + (level_row >> 1)] = (0.5 * row[m]) - (0.5 * row[m + 1]);//A[0][i][m] * w0 + A[0][i][m + 1] * w1;
					}
				}
				for (int o = 0; o < 160; o++) //320
				{
					if (o < level_row)
					{
						A[0][i][o] = (unsigned short)tempr[o];
					}
				}
			}
		}
		for (int n = 0; n < 80; n++) // iterate through each column,(only half given horizontal has already taken place)
	    {
			if(n < (level_row*0.5))
			{
				for (int j = 0; j < 120; j++) //iterate through each item in each column, aka number of rows
				{
					column[j] = A[0][j][n];
				}
				for (int l = 0; l < 120; l++)
				{
#pragma HLS unroll factor=8
#pragma HLS pipeline
					if(l<(level_col >> 1))
					{
						int m = (l << 1);
						tempc[l] = (0.5 * column[m]) + (0.5 * column[m + 1]); //A[0][m][n] * s0 + A[0][m + 1][n] * s1;
						tempc[l + (level_col >> 1)] = (0.5 * column[m]) - (0.5 * column[m + 1]); //A[0][m][n] * w0 + A[0][m + 1][n] * w1;
					}
				}
				for (int o = 0; o < 120; o++)
				{
					if (o < level_col)
					{
						A[0][o][n] = (unsigned short)tempc[o];
					}
				}
			}
	    }
	}
}
// performs HAAR Wavelet Transform on IR image
void DWT_IR(unsigned short B[1][120][160])
{
	float row[160];
	float column[120];
	float tempr[160];
	float tempc[120];
	for (int k = 0; k < 2; k++) //number of iterations
	{
		int lev = 1 << k;
		int level_col = 120 / lev;
		int level_row = 160 / lev;
		for (int i = 0; i < 120; i++) // iterate through each row
		{
			if(i<level_col)
			{
				for (int j = 0; j < 160; j++) //iterate through each item in each row aka columns
				{
					row[j] = B[0][i][j];
				}
				for (int l = 0; l < 80; l++) // iterate through each item in each row, max 320 given two assigned at a time
				{
#pragma HLS unroll factor=8
#pragma HLS pipeline
					if(l< (level_row >> 1))
					{
						int m = (l << 1);
						tempr[l] = (0.5 * row[m]) + (0.5 * row[m + 1]);//A[0][i][m] * s0 + A[0][i][m + 1] * s1;
						tempr[l + (level_row >> 1)] = (0.5 * row[m]) - (0.5 * row[m + 1]);//A[0][i][m] * w0 + A[0][i][m + 1] * w1;
					}
				}
				for (int o = 0; o < 160; o++) //320
				{
					if (o < level_row)
					{
						B[0][i][o] = (unsigned short)tempr[o];
					}
				}
			}
		}
		for (int n = 0; n < 80; n++) // iterate through each column,(only half given horizontal has already taken place)
	    {
			if(n < (level_row >> 1))
			{
				for (int j = 0; j < 120; j++) //iterate through each item in each column, aka number of rows
				{
					column[j] = B[0][j][n];
				}
				for (int l = 0; l < 120; l++)
				{
#pragma HLS unroll factor=8
#pragma HLS pipeline
					if(l < (level_col >> 1))
					{
						int m = (l << 1);
						tempc[l] = (0.5 * column[m]) + (0.5 * column[m + 1]); //A[0][m][n] * s0 + A[0][m + 1][n] * s1;
						tempc[l + (level_col >> 1)] = (0.5 * column[m]) - (0.5 * column[m + 1]); //A[0][m][n] * w0 + A[0][m + 1][n] * w1;
					}
				}
				for (int o = 0; o < 120; o++)
				{
					if (o < level_col)
					{
						B[0][o][n] = (unsigned short)tempc[o];
					}
				}
			}
	    }
	}
}

void Filter(unsigned short A[1][120][160],unsigned short B[1][120][160],unsigned short C[1][120][160])
{
    for(int i = 0; i < 160; i++)
    {
        for(int j = 0; j < 120; j++)
        {
            if(i>159)
            {
                C[0][j][i] = (unsigned short)((0.10*A[0][j][i]) + (0.90*B[0][j][i]));//High frequency horizontal iteration 1
            }
            else if ((j>119) && (i<160))
            {
                C[0][j][i] = (unsigned short)((0.10*A[0][j][i]) + (0.90*B[0][j][i]));//High frequency vertical iteration 1
            }
            else if((j<120) && (79<i<160))
            {
                C[0][j][i] = (unsigned short)((0.5*A[0][j][i]) + (0.5*B[0][j][i]));//High frequency horizontal iteration 2
            }
            else if((59<j<120) && (i<80))
            {
                C[0][j][i] = (unsigned short)((0.5*A[0][j][i]) + (0.5*B[0][j][i]));//High frequency vertical iteration 2
            }
            else
            {
                C[0][j][i] = A[0][j][i];//approximate image
            }
        }
    }
}

void IDWT (unsigned short C[1][120][160])
{
	float row[160];
	float column[120];
	float tempr[160];
	float tempc[120];
	for (int k = 1; k >= 0; k--)
	{
	    int lev = 1 << k;
	    int level_col = 120 / lev;
	    int level_row = 160 / lev;
	    for (int j = 0; j < 160; j++)
	    {
	    	if(j < (level_row >> 1))
	        {
				for (int i = 0; i < 120; i++)
				{
					column[i] = C[0][i][j];
				}
	        	for (int l = 0; l < 120; l++)
	        	{
#pragma HLS unroll factor=8
#pragma HLS pipeline
	        		if(l<level_col)
	        		{
	        			int m = (l << 1);
	        			tempc[m] = 2 * ((0.5 * column[l]) + (0.5 * column[l + (level_col >> 1)])); //(C[0][l][j] * s0 + C[0][l + (level_col >> 1)][j] * w0)/w0;
	        			tempc[m+1] = 2 * ((0.5 * column[l]) - (0.5 * column[l + (level_col >> 1)])); //(C[0][l][j] * s1 + C[0][l + (level_col >> 1)][j] * w1)/s0;
	        		}
	        	}
	        	for (int o = 0; o < 120; o++)
	        	{
	        		if (o < level_col)
	        		{
	        			C[0][o][j] = (unsigned short)tempc[o];
	        		}
	        	}
	        }
	    }
	    for (int i = 0; i < 120; i++)
	    {
	    	if(i < level_col)
	        {
	        	for (int j = 0; j < 160; j++)
	        	{
	        		row[j] = (float)C[0][i][j];
	        	}
	        	//memcpy(row, C[0][i], sizeof(short)*640);
	        	for (int l = 0; l < 160; l++)
	        	{
#pragma HLS unroll factor=8
#pragma HLS pipeline
	        		if(l < (level_row >> 1))
	        		{
	        			int m = (l << 1);
	        			tempr[m] = 2 * ((0.5 * row[l]) + (0.5 * row[l + (level_row >> 1)])); // (C[0][i][l] * s0 + C[0][i][l + (level_row >> 1)] * w0)/w0;
	        			tempr[m+1] = 2 * ((0.5 * row[l]) - (0.5 * row[l + (level_row >> 1)])); //(C[0][i][l] * s1 + C[0][i][l + (level_row >> 1)] * w1)/s0;
	        		}
	        	}
	        	for (int o = 0; o < 160; o++)
	        	{
	        		if (o < level_row)
	        		{
	        			C[0][i][o] = (unsigned short)tempr[o];
	        		}
	        	}
	        }
	    }
	}
}
