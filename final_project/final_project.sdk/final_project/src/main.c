// ECE527 Fall 2017
// University of Illinois, Urbana-Champaign
// Author - Ashutosh Dhar
// Demo Code for deploying simple
// vector multiplier accelerator in bare metal SDK app
// HLS code of accelerator provided separately

#include <stdio.h>
#include "malloc.h"
#include "platform.h"
#include "xil_printf.h"
#include "xdwt_accel.h"
#include "xparameters.h"
#include "xtmrctr.h"
#include "xil_cache.h"
#include "sleep.h"
#include "xtime_l.h"

#include "xsdps.h"			/* SD device driver */
#include "ff.h"				/* FAT File System */
#include "xplatform_info.h"

#define TMRCTR_DEVICE_ID    XPAR_AXI_TIMER_0_DEVICE_ID

static char *SD_File;

#define IMAGE_WIDTH  640
#define IMAGE_LENGTH  480

unsigned short IR_gray_image[IMAGE_WIDTH*IMAGE_LENGTH];

unsigned short BW_gray_image[IMAGE_WIDTH*IMAGE_LENGTH];

unsigned short fin_image[IMAGE_WIDTH*IMAGE_LENGTH];
unsigned char IR_header[4698];
unsigned char color_header[4596];
unsigned char color_ir_header[4598];
unsigned char color_red_image[IMAGE_WIDTH*IMAGE_LENGTH];
unsigned char color_blue_image[IMAGE_WIDTH*IMAGE_LENGTH];
unsigned char color_green_image[IMAGE_WIDTH*IMAGE_LENGTH];
unsigned char ir_red_image[IMAGE_WIDTH*IMAGE_LENGTH];
unsigned char ir_blue_image[IMAGE_WIDTH*IMAGE_LENGTH];
unsigned char ir_green_image[IMAGE_WIDTH*IMAGE_LENGTH];
unsigned char fin_red_image[IMAGE_WIDTH*IMAGE_LENGTH];
unsigned char fin_blue_image[IMAGE_WIDTH*IMAGE_LENGTH];
unsigned char fin_green_image[IMAGE_WIDTH*IMAGE_LENGTH];
unsigned char aval_image[IMAGE_WIDTH*IMAGE_LENGTH];


unsigned short IR_gray_image_1[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_1[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_1[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_2[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_2[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_2[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_3[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_3[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_3[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_4[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_4[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_4[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_5[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_5[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_5[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_6[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_6[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_6[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_7[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_7[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_7[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_8[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_8[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_8[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_9[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_9[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_9[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_10[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_10[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_10[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_11[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_11[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_11[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_12[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_12[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_12[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_13[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_13[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_13[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_14[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_14[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_14[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_15[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_15[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_15[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

unsigned short IR_gray_image_16[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short BW_gray_image_16[IMAGE_LENGTH/4][IMAGE_WIDTH/4];
unsigned short fin_image_16[IMAGE_LENGTH/4][IMAGE_WIDTH/4];

static FIL fil;		/* File object */
static FATFS fatfs;


// Parse MNIST test images
int parse_image(char* filename, unsigned short *images)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;
    unsigned int header[4];
    UINT br;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening mnist images data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist images data file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)IR_header, sizeof(unsigned char)*4698, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file and read %u of bytes\n\r", NumBytesRead);
	}

	Res = f_read(&fil, (void*)images, sizeof(unsigned short)*IMAGE_WIDTH*IMAGE_LENGTH, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read images from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read images from file and read %u of bytes\n\r", NumBytesRead);
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close images file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed images file\n\r");
	}

	xil_printf("Returning...\n\r");


	return XST_SUCCESS;
}
int parse_color_image(char* filename, unsigned char *red_image,unsigned char *green_image, unsigned char *blue_image )
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;
    unsigned int header[4];
    UINT br;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening mnist images data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist images data file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)color_header, sizeof(unsigned char)*4596, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file and read %u of bytes\n\r", NumBytesRead);
	}

	for(int count=0; count<(IMAGE_WIDTH*IMAGE_LENGTH); count++)
	{
		Res = f_read(&fil, (void*)red_image+(count*sizeof(unsigned char)), sizeof(unsigned char), &NumBytesRead);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		Res = f_read(&fil, (void*)green_image+(count*sizeof(unsigned char)), sizeof(unsigned char), &NumBytesRead);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		Res = f_read(&fil, (void*)blue_image+(count*sizeof(unsigned char)), sizeof(unsigned char), &NumBytesRead);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		Res = f_read(&fil, (void*)aval_image+(count*sizeof(unsigned char)), sizeof(unsigned char), &NumBytesRead);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		if(count<5)
		{
			xil_printf("R:%x G:%x B:%x A:%x\n\r",(void*)red_image[count], (void*)green_image[count], (void*)blue_image[count],(void*)aval_image[count]);
		}
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close images file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed images file\n\r");
	}

	xil_printf("Returning...\n\r");


	return XST_SUCCESS;
}

int parse_color_ir_image(char* filename, unsigned char *red_image,unsigned char *green_image, unsigned char *blue_image )
{
	FRESULT Res;
	UINT NumBytesRead;
	UINT NumBytesReadb;
    SD_File = (char *)filename;
    unsigned int header[4];
    UINT br;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening mnist images data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist images data file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)color_ir_header, sizeof(unsigned char)*4598, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file and read %u of bytes\n\r", NumBytesRead);
	}

	for(int count=0; count<(IMAGE_WIDTH*IMAGE_LENGTH); count++)
	{
		Res = f_read(&fil, (void*)red_image+(count*sizeof(unsigned char)), sizeof(unsigned char), &NumBytesRead);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		Res = f_read(&fil, (void*)green_image+(count*sizeof(unsigned char)), sizeof(unsigned char), &NumBytesRead);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		Res = f_read(&fil, (void*)blue_image+(count*sizeof(unsigned char)), sizeof(unsigned char), &NumBytesReadb);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		Res = f_read(&fil, (void*)aval_image+(count*sizeof(unsigned char)), sizeof(unsigned char), &NumBytesRead);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		if(count<5)
		{
			xil_printf("R:%x G:%x B:%x A:%x and Bytes:%u\n\r",red_image[count],green_image[count],blue_image[count],aval_image[count], NumBytesReadb);
		}
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close images file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed images file\n\r");
	}

	xil_printf("Returning...\n\r");


	return XST_SUCCESS;
}

int write_image_SD(char* filename, unsigned short *images)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_CREATE_ALWAYS| FA_WRITE);
	if (Res)
	{
		xil_printf("ERROR when opening mnist images data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist images data file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_write(&fil, (void*)IR_header, sizeof(unsigned char)*4698, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file and read %u of bytes\n\r", NumBytesRead);
	}

	Res = f_write(&fil, (void*)images, sizeof(unsigned short)*IMAGE_WIDTH*IMAGE_LENGTH, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read images from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read images from file and read %u of bytes\n\r", NumBytesRead);
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close images file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed images file\n\r");
	}

	xil_printf("Returning...\n\r");


	return XST_SUCCESS;
}

int write_color_image_SD(char* filename, unsigned char *red_image, unsigned char *green_image, unsigned char *blue_image )
{
	FRESULT Res;
	UINT NumBytesRead;
	UINT NumBytesReadb;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_CREATE_ALWAYS| FA_WRITE);
	if (Res)
	{
		xil_printf("ERROR when opening mnist images data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist images data file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start and RED:%x\n\r", *(red_image+(1)));
	}

	Res = f_write(&fil, (void*)color_ir_header, sizeof(unsigned char)*4598, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file and read %u of bytes\n\r", NumBytesRead);
	}


	for(int count=0; count<(IMAGE_WIDTH*IMAGE_LENGTH); count++)
	{
		//xil_printf("RED POINTER: %p", (red_image+(count*sizeof(unsigned char))));
		Res = f_write(&fil, (void*)(red_image+(count*sizeof(unsigned char))), sizeof(unsigned char), &NumBytesRead);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		Res = f_write(&fil, (void*)(green_image+(count*sizeof(unsigned char))), sizeof(unsigned char), &NumBytesRead);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		Res = f_write(&fil, (void*)(blue_image+(count*sizeof(unsigned char))), sizeof(unsigned char), &NumBytesReadb);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		Res = f_write(&fil, (void*)(aval_image+(count)), sizeof(unsigned char), &NumBytesRead);
		if (Res)
		{
			xil_printf("Cant read images from file\n\r");
			return XST_FAILURE;
		}
		if(count<5)
		{
			xil_printf("R:%x G:%x B:%x A:%x Bytes:%u\n\r",red_image[count], green_image[count],blue_image[count],aval_image[count],&NumBytesReadb);
		}

	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close images file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed images file\n\r");
	}

	xil_printf("Returning...\n\r");


	return XST_SUCCESS;
}


//read color image and buffer (may be grayscale, depends on end implementation)
void read_color(unsigned char a[1][480][640], unsigned char A_buffer[1][480][640])
{
	memcpy(A_buffer, a, 1 * 480 * 640 * sizeof(unsigned char));
}
//Read IR image and buffer
void read_IR(unsigned char b[1][480][640], unsigned char B_buffer[1][480][640])
{
	memcpy(B_buffer, b, 1 * 480 * 640 * sizeof(unsigned char));
}
//write combined image
void write_image(unsigned char C_buffer[1][480][640], unsigned char c[1][480][640])
{
	memcpy(c, C_buffer, 1 * 480 * 640 * sizeof(unsigned char));
}
// performs HAAR Wavelet Transform on color image
void DWT_color(unsigned char A[1][480][640])
{
	float row[640];
	float col[480];
	float tempr[640];
	float tempc[480];
	float w0 = 0.5;
	float w1 = -0.5;
	float s0 = 0.5;
	float s1 = 0.5;
	for (int k = 0; k < 2; k++) //number of iterations
	{
		int lev = 1 << k;
		int levCols = 480 / lev;
		int levRows = 640 / lev;
		for (int i = 0; i < 480; i++) // iterate through each row
		{
			if(i<levCols)
			{
				for (int j = 0; j < 640; j++) //iterate through each item in each row aka columns
				{
					row[j] = A[0][i][j];
				}
				for (int l = 0; l < 320; l++) // iterate through each item in each row, max 320 given two assigned at a time
				{
					if(l<levRows/2)
					{
						int m = (l << 1);
						tempr[l] = row[m] * s0 + row[m + 1] * s1; // A[0][i][m] * s0 + A[0][i][m + 1] * s1;
						tempr[l + (levRows/2)] = row[m] * w0 + row[m + 1] * w1; // A[0][i][m] * w0 + A[0][i][m + 1] * w1;
					}
				}
				for (int o = 0; o < 640; o++) //320
				{
					if (o < levRows)
					{
						A[0][i][o] = (unsigned char)tempr[o];
					}
				}
			}
		}
		for (int n = 0; n < 320; n++) // iterate through each column,(only half given horizontal has already taken place)
	    {
			if(n < (levRows/2))
			{
				for (int j = 0; j < 480; j++) //iterate through each item in each column, aka number of rows
				{
					col[j] = A[0][j][n];
				}
				for (int l = 0; l < 480; l++)
				{
					if(l<levCols/2)
					{
						int m = (l << 1);
						tempc[l] = col[m] * s0 + col[m + 1] * s1; //A[0][m][n] * s0 + A[0][m + 1][n] * s1;
						tempc[l + (levCols/2)] = col[m] * w0 + col[m + 1] * w1; //A[0][m][n] * w0 + A[0][m + 1][n] * w1;
					}
				}
				for (int o = 0; o < 480; o++)
				{
					if (o < levCols)
					{
						A[0][o][n] = (unsigned char)tempc[o];
					}
				}
			}
	    }
	}
}
// performs HAAR Wavelet Transform on IR image
void DWT_IR(unsigned char B[1][480][640])
{
	float row[640];
		float col[480];
		float tempr[640];
		float tempc[480];
		float w0 = 0.5;
		float w1 = -0.5;
		float s0 = 0.5;
		float s1 = 0.5;
		for (int k = 0; k < 2; k++) //number of iterations
		{
			int lev = 1 << k;
			int levCols = 480 / lev;
			int levRows = 640 / lev;
			for (int i = 0; i < 480; i++) // iterate through each row
			{
				if(i<levCols)
				{
					for (int j = 0; j < 640; j++) //iterate through each item in each row aka columns
					{
						row[j] = B[0][i][j];
					}
					for (int l = 0; l < 320; l++) // iterate through each item in each row, max 320 given two assigned at a time
					{
						if(l<levRows/2)
						{
							int m = (l << 1);
							tempr[l] = B[0][i][m] * s0 + B[0][i][m + 1] * s1;//row[m] * s0 + row[m + 1] * s1;
							tempr[l + (levRows/2)] = B[0][i][m] * w0 + B[0][i][m + 1] * w1;//row[m] * w0 + row[m + 1] * w1;
						}
					}
					for (int o = 0; o < 640; o++)
					{
						if (o < levRows)
						{
							B[0][i][o] = (unsigned char)tempr[o];
						}
					}
				}
			}
			for (int n = 0; n < 320; n++) // iterate through each column,(only half given horizontal has already taken place)
		    {
				if(n < (levRows/2))
				{
	//				for (int j = 0; j < 480; j++) //iterate through each item in each column, aka number of rows
	//				{
	//					col[j] = A[0][j][n];
	//				}
						for (int l = 0; l < 480; l++)
						{
							if(l<levCols/2)
							{
								int m = (l << 1);
								tempc[l] = B[0][m][n] * s0 + B[0][m + 1][n] * s1; //col[m] * s0 + col[m + 1] * s1;
								tempc[l + (levCols/2)] = B[0][m][n] * w0 + B[0][m + 1][n] * w1;//col[m] * w0 + col[m + 1] * w1;
							}
						}
					for (int o = 0; o < 480; o++)
					{
						if (o < levCols)
						{
							B[0][o][n] = (unsigned char)tempc[o];
						}
					}
				}
		    }
		}
}

void Filter(unsigned char A[1][480][640],unsigned char B[1][480][640],unsigned char C[1][480][640])
{
    for(int i = 0; i < 640; i++)
    {
        for(int j = 0; j < 480; j++)
        {
            if(i>319)
            {
                C[0][j][i] = (unsigned char)((0.10*A[0][j][i]) + (0.90*B[0][j][i]));//High frequency horizontal iteration 1
            }
            else if ((j>239) && (i<320))
            {
                C[0][j][i] = (unsigned char)((0.10*A[0][j][i]) + (0.90*B[0][j][i]));//High frequency vertical iteration 1
            }
            else if((j<240) && (159<i<320))
            {
                C[0][j][i] = (unsigned char)((0.5*A[0][j][i]) + (0.5*B[0][j][i]));//High frequency horizontal iteration 2
            }
            else if((119<j<240) && (i<160))
            {
                C[0][j][i] = (unsigned char)((0.5*A[0][j][i]) + (0.5*B[0][j][i]));//High frequency vertical iteration 2
            }
            else
            {
                C[0][j][i] = A[0][j][i];//approximate image
            }
        }
    }
}

void IDWT (unsigned char C[1][480][640])
{
	float row[640];
	float col[480];
	float tempr[640];
	float tempc[480];
	float w0 = 0.5;
	float w1 = -0.5;
	float s0 = 0.5;
	float s1 = 0.5;
	for (int k = 1; k >= 0; k--)
	{
	    int lev = 1 << k;
	    int levCols = 480 / lev;
	    int levRows = 640 / lev;
	    for (int j = 0; j < 320; j++)
	    {
	    	if(j < (levRows/2))
	        {
				for (int i = 0; i < 480; i++)
				{
					col[i] = C[0][i][j];
				}
	        	for (int l = 0; l < 480; l++)
	        	{
	        		if(l<levCols)
	        		{
	        			int m = (l << 1);
	        			tempc[m] = (col[l] * s0 + col[l + (levCols/2)] * w0)/w0; //(C[0][l][j] * s0 + C[0][l + (levCols/2)][j] * w0)/w0;
	        			tempc[m+1] = (col[l] * s1 + col[l + (levCols/2)] * w1)/s0; //(C[0][l][j] * s1 + C[0][l + (levCols/2)][j] * w1)/s0;
	        		}
	        	}
	        	for (int o = 0; o < 480; o++)
	        	{
	        		if (o < levCols)
	        		{
	        			C[0][o][j] = (unsigned char)tempc[o];
	        		}
	        	}
	        }
	    }
	    for (int i = 0; i < 480; i++)
	    {
	    	if(i < levCols)
	        {
	        	for (int j = 0; j < 640; j++)
	        	{
	        		row[j] = (float)C[0][i][j];
	        	}
	        	for (int l = 0; l < 640; l++)
	        	{
	        		if(l<levRows/2)
	        		{
	        			int m = (l << 1);
	        			tempr[m] = (row[l] * s0 + row[l + (levRows/2)] * w0)/w0; // (C[0][i][l] * s0 + C[0][i][l + (levRows/2)] * w0)/w0;
	        			tempr[m+1] = (row[l] * s1 + row[l + (levRows/2)] * w1)/s0; //(C[0][i][l] * s1 + C[0][i][l + (levRows/2)] * w1)/s0;
	        		}
	        	}
	        	for (int o = 0; o < 640; o++)
	        	{
	        		if (o < levRows)
	        		{
	        			C[0][i][o] = (unsigned char)tempr[o];
	        		}
	        	}
	        }
	    }
	}
}

void DWT_Accel(unsigned char a[1][480][640], unsigned char b[1][480][640], unsigned char c[1][480][640])
{
	unsigned char A_buffer[1][480][640];
	unsigned char B_buffer[1][480][640];
	unsigned char C_buffer[1][480][640];
	read_color(a, A_buffer);
	read_IR(b, B_buffer);
	DWT_color(a); //DWT_color(A_buffer);
	DWT_IR(b); //DWT_IR(B_buffer);
	Filter(a, b, c);//Filter(A_buffer, B_buffer, C_buffer);
	IDWT(c);//IDWT(C_buffer);
	write_image(C_buffer, c);
}



int main()
{
	//Init platform
	init_platform();

	xil_printf("Starting DWT\n\r");

	xil_printf("Mounting SD\n\r");
	FRESULT Res;
	TCHAR *Path = "0:/";
    Res = f_mount(&fatfs, Path, 0);
	if (Res != FR_OK)
	{
		xil_printf("Failed to open filesystem\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Mounted card\n\r");
	}

	xil_printf("Parsing IR images\n\r");
	parse_image("IR.tif", IR_gray_image);
	//parse_color_ir_image("irc.tif", ir_red_image, ir_green_image, ir_blue_image);
	//read another image

	xil_printf("Parsing BW images\n\r");
	parse_image("c.tif", BW_gray_image);
	//parse_color_image("c1.tif", color_red_image, color_green_image, color_blue_image);


    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
        	sleep(1);
        	if(j==0 && i==0)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_1[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_1[y][x] = BW_gray_image[originalIndex];


                    }
                }
                xil_printf("READ 1\n\r");
        	}
        	else if(j==1 && i==0)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_2[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_2[y][x] = BW_gray_image[originalIndex];

                    }
                }
                xil_printf("READ 2\n\r");
        	}
        	else if(j==2 && i==0)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_3[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_3[y][x] = BW_gray_image[originalIndex];

                    }
                }
                xil_printf("READ 3\n\r");
        	}
        	else if(j==3 && i==0)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_4[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_4[y][x] = BW_gray_image[originalIndex];


                    }
                }
                xil_printf("READ 4\n\r");
        	}
        	else if(j==0 && i==1)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_5[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_5[y][x] = BW_gray_image[originalIndex];

                    }
                }
                xil_printf("READ 5\n\r");
        	}
        	else if(j==1 && i==1)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_6[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_6[y][x] = BW_gray_image[originalIndex];

                    }
                }
                xil_printf("READ 6\n\r");
        	}
        	else if(j==2 && i==1)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_7[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_7[y][x] = BW_gray_image[originalIndex];

                    }
                }
                xil_printf("READ 7\n\r");
        	}
        	else if(j==3 && i==1)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_8[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_8[y][x] = BW_gray_image[originalIndex];

                    }
                }
                xil_printf("READ 8\n\r");
        	}
        	else if(j==0 && i==2)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_9[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_9[y][x] = BW_gray_image[originalIndex];

                    }
                }
                xil_printf("READ 9\n\r");
        	}
        	else if(j==1 && i==2)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_10[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_10[y][x] = BW_gray_image[originalIndex];

                    }
                }
                xil_printf("READ 10\n\r");
        	}
        	else if(j==2 && i==2)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_11[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_11[y][x] = BW_gray_image[originalIndex];

                    }
                }
                xil_printf("READ 11\n\r");
        	}
        	else if(j==3 && i==2)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                        // Copy pixel data from original to small_img
                    	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                    	IR_gray_image_12[y][x] = IR_gray_image[originalIndex];
                    	BW_gray_image_12[y][x] = BW_gray_image[originalIndex];

                    }
                }
                xil_printf("READ 12\n\r");
        	}
        	else if(j==0 && i==3)
        	{
                for (int y = 0; y < (IMAGE_WIDTH/4); y++)
                 {
                     for (int x = 0; x < (IMAGE_LENGTH/4); x++)
                     {
                         // Copy pixel data from original to small_img
                     	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                     	IR_gray_image_13[y][x] = IR_gray_image[originalIndex];
                     	BW_gray_image_13[y][x] = BW_gray_image[originalIndex];

                     }
                 }
                xil_printf("READ 13\n\r");
        	}
        	else if(j==1 && i==3)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                         // Copy pixel data from original to small_img
                     	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                     	IR_gray_image_14[y][x] = IR_gray_image[originalIndex];
                     	BW_gray_image_14[y][x] = BW_gray_image[originalIndex];

                     }
                 }
                xil_printf("READ 14\n\r");
        	}
        	else if(j==2 && i==3)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                         // Copy pixel data from original to small_img
                     	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                     	IR_gray_image_15[y][x] = IR_gray_image[originalIndex];
                     	BW_gray_image_15[y][x] = BW_gray_image[originalIndex];

                     }
                 }
                xil_printf("READ 15\n\r");
        	}
        	else
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                    for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                    {
                         // Copy pixel data from original to small_img
                     	int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                     	IR_gray_image_16[y][x] = IR_gray_image[originalIndex];
                     	BW_gray_image_16[y][x] = BW_gray_image[originalIndex];

                     }
                 }
                xil_printf("READ 16\n\r");
        	}
        }
    }

    if(IR_gray_image_1[0][5] != IR_gray_image[5])
    {
    	xil_printf("Image division fail small:%u and big:%u\n\r", IR_gray_image_1[0][0], IR_gray_image[0]);
    	return XST_FAILURE;
    }



	//Timer variables to measure time
	u32 timerCount_Stop;
	u32 timerCount_Start;

	//AXI device object for AXI Timer
	XTmrCtr timer;

	//Initialize timer object
	int status;
	status = XTmrCtr_Initialize(&timer, TMRCTR_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		xil_printf("Timer init fail\n\r");
		return XST_FAILURE;
	}

	status = XTmrCtr_SelfTest(&timer, 0);
	if (status != XST_SUCCESS)
	{
		xil_printf("Timer self test fail\n\r");
		return XST_FAILURE;
	}



	/*

	unsigned char c_red_image_temp [1][480][640] = {0};
	unsigned char c_green_image_temp [1][480][640] = {0};
	unsigned char c_blue_image_temp [1][480][640] = {0};
	unsigned char IR_red_image_temp [1][480][640] = {0};
	unsigned char IR_green_image_temp [1][480][640] = {0};
	unsigned char IR_blue_image_temp [1][480][640] = {0};
	unsigned char fin_red_image_temp [1][480][640] = {0};
	unsigned char fin_green_image_temp [1][480][640] = {0};
	unsigned char fin_blue_image_temp [1][480][640] = {0};



	for(int b =0; b<480; b++)
	{
		for(int c=0; c<640; c++)
		{
			if(b<1 && c<5)
			{
				xil_printf("R:%x G:%x B:%x A:%x\n\r",color_red_image[b*640+c], color_green_image[b*640+c], color_blue_image[b*640+c], aval_image[b*640+c]);

			}

			c_red_image_temp[0][b][c]= color_red_image[b*640+c];
			c_green_image_temp[0][b][c]= color_green_image[b*640+c];
			c_blue_image_temp[0][b][c]= color_blue_image[b*640+c];
			IR_red_image_temp[0][b][c]= ir_red_image[b*640+c];
			IR_green_image_temp[0][b][c]= ir_green_image[b*640+c];
			IR_blue_image_temp[0][b][c]= ir_blue_image[b*640+c];
		}
	}

	xil_printf("SETUP DWT\n\r");
	XTmrCtr_Reset(&timer, 0);
	XTmrCtr_ClearStats(&timer);
	XTmrCtr_Start(&timer, 0);
	//Start the timer
	timerCount_Start = (u64)XTmrCtr_GetValue(&timer, 0);
	XTime start_s;
	XTime_GetTime(&start_s);

	//for(int try=0; try<25; try++)
	//{
		DWT_Accel(c_red_image_temp, IR_red_image_temp, fin_red_image_temp);
		xil_printf("Running software implemenation\n\r");
		DWT_Accel(c_green_image_temp, IR_green_image_temp, fin_green_image_temp);
		xil_printf("Running software implemenation\n\r");
		DWT_Accel(c_blue_image_temp, IR_blue_image_temp, fin_blue_image_temp);
		xil_printf("Running software implemenation\n\r");
	//}
	XTime end_s;
	XTime_GetTime(&end_s);
	timerCount_Stop = (u64)XTmrCtr_GetValue(&timer, 0);
	double time_taken_sub = ((double)(end_s - start_s));
	double time_sw= (time_taken_sub/COUNTS_PER_SECOND)*1000.0;
	printf("TIME: %f", time_sw);
	xil_printf("FINISHED software implemenation\n\r");
	u64 fin_count =(timerCount_Stop-timerCount_Start);
	xil_printf("Time Accelerator: %f\n\r", time_sw);
	xil_printf("Software Test Done\n\r");


	for(int t =0; t<480; t++)
	{
		for(int q=0; q<640; q++)
		{
			if(t<1 && q<5)
			{
				xil_printf("COPYING FIN DATA\n\r");
				xil_printf("R:%x G:%x B:%x A:%x\n\r",fin_red_image_temp[0][t][q], fin_green_image_temp[0][t][q], fin_blue_image_temp[0][t][q], aval_image[t*640+q]);
			}
			fin_red_image[t*640+q] = fin_red_image_temp[0][t][q];
			fin_green_image[t*640+q] = fin_green_image_temp[0][t][q];
			fin_blue_image[t*640+q] = fin_blue_image_temp[0][t][q];

		}
	}


	*/



	//Data arrays
	unsigned short *src_a_0;
	unsigned short *src_b_0;
	unsigned short *src_c_0;
	/*
	unsigned char *src_a_1;
	unsigned char *src_b_1;
	unsigned char *src_c_1;
	unsigned char *src_a_2;
	unsigned char *src_b_2;
	unsigned char *src_c_2;
	unsigned char *src_a_3;
	unsigned char *src_b_3;
	unsigned char *src_c_3;
	unsigned char *src_a_4;
	unsigned char *src_b_4;
	unsigned char *src_c_4;
	unsigned char *src_a_5;
	unsigned char *src_b_5;
	unsigned char *src_c_5;
	unsigned char *src_a_6;
	unsigned char *src_b_6;
	unsigned char *src_c_6;
	unsigned char *src_a_7;
	unsigned char *src_b_7;
	unsigned char *src_c_7;

	int ret = 0;

	*/

	//dwt objects from header in bsp
	XDwt_accel accelerator;
	XDwt_accel_Config *accelerator_config;

	// Get config data struct
	accelerator_config = XDwt_accel_LookupConfig(XPAR_XDWT_ACCEL_0_DEVICE_ID);
	if(!accelerator_config)
	{
		xil_printf("No acc config found!\n\r");
		return 1;
	}
	else
	{
		xil_printf("Got acc config\n\r");
	}

	// Using config object to initialize the accelerator object
	status = XDwt_accel_CfgInitialize(&accelerator, accelerator_config);

	if(status != XST_SUCCESS)
	{
		xil_printf("Initialization of acc failed\n\r");
	}
	else
	{
		xil_printf("Initialization of acc successful\n\r");
	}

	//Allocating arrays
	//Make sure you have updated the lscript.ld file to adjust stack and heap sizes.
	src_a_0 = (unsigned short*)malloc(sizeof(unsigned short)*(IMAGE_WIDTH/4)*(IMAGE_LENGTH/4));///8));
	if(src_a_0==NULL)
	{
		xil_printf("Malloc src a 0 fail\n\r");
		return 1;
	}

	src_b_0 = (unsigned short*)malloc(sizeof(unsigned short)*(IMAGE_WIDTH/4)*(IMAGE_LENGTH/4));///8));
	if(src_b_0==NULL)
	{
		xil_printf("Malloc src b fail\n\r");
		return 1;
	}

	src_c_0 = (unsigned short*)malloc(sizeof(unsigned short)*(IMAGE_WIDTH/4)*(IMAGE_LENGTH/4));///8));
	if(src_c_0==NULL)
	{
		xil_printf("Malloc src c fail\n\r");
		return 1;
	}

	/*
	src_a_1 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_a_1==NULL)
	{
		xil_printf("Malloc src a fail\n\r");
		return 1;
	}

	src_b_1 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_b_1==NULL)
	{
		xil_printf("Malloc src b fail\n\r");
		return 1;
	}

	src_c_1 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_c_1==NULL)
	{
		xil_printf("Malloc src c fail\n\r");
		return 1;
	}

	src_a_2 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_a_2==NULL)
	{
		xil_printf("Malloc src a fail\n\r");
		return 1;
	}

	src_b_2 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_b_2==NULL)
	{
		xil_printf("Malloc src b fail\n\r");
		return 1;
	}

	src_c_2 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_c_2==NULL)
	{
		xil_printf("Malloc src c fail\n\r");
		return 1;
	}

	src_a_3 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_a_3==NULL)
	{
		xil_printf("Malloc src a fail\n\r");
		return 1;
	}

	src_b_3 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_b_3==NULL)
	{
		xil_printf("Malloc src b fail\n\r");
		return 1;
	}

	src_c_3 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_c_3==NULL)
	{
		xil_printf("Malloc src c fail\n\r");
		return 1;
	}

	src_a_4 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_a_4==NULL)
	{
		xil_printf("Malloc src a fail\n\r");
		return 1;
	}

	src_b_4 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_b_4==NULL)
	{
		xil_printf("Malloc src b fail\n\r");
		return 1;
	}

	src_c_4 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_c_4==NULL)
	{
		xil_printf("Malloc src c fail\n\r");
		return 1;
	}

	src_a_5 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_a_5==NULL)
	{
		xil_printf("Malloc src a fail\n\r");
		return 1;
	}

	src_b_5 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_b_5==NULL)
	{
		xil_printf("Malloc src b fail\n\r");
		return 1;
	}

	src_c_5 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_c_5==NULL)
	{
		xil_printf("Malloc src c fail\n\r");
		return 1;
	}

	src_a_6 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_a_6==NULL)
	{
		xil_printf("Malloc src a fail\n\r");
		return 1;
	}

	src_b_6 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_b_6==NULL)
	{
		xil_printf("Malloc src b fail\n\r");
		return 1;
	}

	src_c_6 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_c_6==NULL)
	{
		xil_printf("Malloc src c fail\n\r");
		return 1;
	}

	src_a_7 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_a_7==NULL)
	{
		xil_printf("Malloc src a fail\n\r");
		return 1;
	}

	src_b_7 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_b_7==NULL)
	{
		xil_printf("Malloc src b fail\n\r");
		return 1;
	}

	src_c_7 = (unsigned char*)malloc(sizeof(unsigned char)*IMAGE_WIDTH*(IMAGE_LENGTH/8));
	if(src_c_7==NULL)
	{
		xil_printf("Malloc src c fail\n\r");
		return 1;
	}


	*/
	//Start initializing data
	xil_printf("Init data\r\n\r");

	for(int p=0; p<(IMAGE_LENGTH/8); p++)
	{
		for(int q=0; q<(IMAGE_WIDTH/8);q++)
		{
			src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_1[p][q];
			src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_1[p][q];
			src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
		}
	}




	/*

    for (int i = 0; i < IMAGE_WIDTH*(IMAGE_LENGTH); i++)///8); i++)
    {
        src_a_0[i] = color_red_image[i];
        src_b_0[i] = ir_red_image[i];
        src_c_0[i] = 0;
        /*
        src_a_1[i] = color_red_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)];
        src_b_1[i] = ir_red_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)];
        src_c_1[i] = 0;
        src_a_2[i] = color_red_image[i+IMAGE_WIDTH*(2*IMAGE_LENGTH/8)];
        src_b_2[i] = ir_red_image[i+IMAGE_WIDTH*(2*IMAGE_LENGTH/8)];
        src_c_2[i] = 0;
        src_a_3[i] = color_red_image[i+IMAGE_WIDTH*(3*IMAGE_LENGTH/8)];
        src_b_3[i] = ir_red_image[i+IMAGE_WIDTH*(3*IMAGE_LENGTH/8)];
        src_c_3[i] = 0;
        src_a_4[i] = color_red_image[i+IMAGE_WIDTH*(4*IMAGE_LENGTH/8)];
        src_b_4[i] = ir_red_image[i+IMAGE_WIDTH*(4*IMAGE_LENGTH/8)];
        src_c_4[i] = 0;
        src_a_5[i] = color_red_image[i+IMAGE_WIDTH*(5*IMAGE_LENGTH/8)];
        src_b_5[i] = ir_red_image[i+IMAGE_WIDTH*(5*IMAGE_LENGTH/8)];
        src_c_5[i] = 0;
        src_a_6[i] = color_red_image[i+IMAGE_WIDTH*(6*IMAGE_LENGTH/8)];
        src_b_6[i] = ir_red_image[i+IMAGE_WIDTH*(6*IMAGE_LENGTH/8)];
        src_c_6[i] = 0;
        src_a_7[i] = color_red_image[i+IMAGE_WIDTH*(7*IMAGE_LENGTH/8)];
        src_b_7[i] = ir_red_image[i+IMAGE_WIDTH*(7*IMAGE_LENGTH/8)];
        src_c_7[i] = 0;


    }

	*/



	xil_printf("Init data done\r\n");

	//Flush caches!
	// Make sure that all writes have propogated to DRAM,
	// since accelerator is not cache coherent
	Xil_L1DCacheFlush();
	Xil_L2CacheFlush();

	//Set the offset address on the accelerator
	//Note that src_a is a pointer to the data in the array
	//The pointer is an address which is being typecast to u32
	//so that we can send the address over AXI
	XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
	XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
	XDwt_accel_Set_c(&accelerator, (u32)src_c_0);
	/*
	XDwt_accel_Set_a_1(&accelerator, (u32)src_a_1);
	XDwt_accel_Set_b_1(&accelerator, (u32)src_b_1);
	XDwt_accel_Set_c_1(&accelerator, (u32)src_c_1);
	XDwt_accel_Set_a_2(&accelerator, (u32)src_a_2);
	XDwt_accel_Set_b_2(&accelerator, (u32)src_b_2);
	XDwt_accel_Set_c_2(&accelerator, (u32)src_c_2);
	XDwt_accel_Set_a_3(&accelerator, (u32)src_a_3);
	XDwt_accel_Set_b_3(&accelerator, (u32)src_b_3);
	XDwt_accel_Set_c_3(&accelerator, (u32)src_c_3);
	XDwt_accel_Set_a_4(&accelerator, (u32)src_a_4);
	XDwt_accel_Set_b_4(&accelerator, (u32)src_b_4);
	XDwt_accel_Set_c_4(&accelerator, (u32)src_c_4);
	XDwt_accel_Set_a_5(&accelerator, (u32)src_a_5);
	XDwt_accel_Set_b_5(&accelerator, (u32)src_b_5);
	XDwt_accel_Set_c_5(&accelerator, (u32)src_c_5);
	XDwt_accel_Set_a_6(&accelerator, (u32)src_a_6);
	XDwt_accel_Set_b_6(&accelerator, (u32)src_b_6);
	XDwt_accel_Set_c_6(&accelerator, (u32)src_c_6);
	XDwt_accel_Set_a_7(&accelerator, (u32)src_a_7);
	XDwt_accel_Set_b_7(&accelerator, (u32)src_b_7);
	XDwt_accel_Set_c_7(&accelerator, (u32)src_c_7);
	*/

	//Read back the offsets to confirm they were correctly written
	u32 offset_a = XDwt_accel_Get_a(&accelerator);
	u32 offset_b = XDwt_accel_Get_b(&accelerator);
	u32 offset_c = XDwt_accel_Get_c(&accelerator);

	xil_printf("Base offset set as %x %x %x on accelerator, from proc as %x %x %x\n\r", offset_a, offset_b, offset_c ,(u32)src_a_0, (u32)src_b_0, (u32)src_c_0);
	xil_printf("Starting acc\n\r");


	//Reset the timer
	XTmrCtr_Reset(&timer, 0);
	XTmrCtr_ClearStats(&timer);
	XTmrCtr_Start(&timer, 0);
	//Start the timer
	timerCount_Start = (u64)XTmrCtr_GetValue(&timer, 0);

	//Start the accelerator
	XTime start_h;
	XTime_GetTime(&start_h);
	XDwt_accel_Start(&accelerator);
	//Wait till the accelerator is not done
	//for(int try_h=0; try_h<25; try_h++)
	//{
		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc\n\r");
		}



		/*

	    for (int i = 0; i < IMAGE_WIDTH*(IMAGE_LENGTH);i++)///8); i++)
	    {

	    	fin_red_image[i] = src_c_0[i];

	    	fin_red_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)]= src_c_1[i];
	    	fin_red_image[i+IMAGE_WIDTH*((2*IMAGE_LENGTH)/8)] = src_c_2[i];
	    	fin_red_image[i+IMAGE_WIDTH*((3*IMAGE_LENGTH)/8)]= src_c_3[i];
	    	fin_red_image[i+IMAGE_WIDTH*((4*IMAGE_LENGTH)/8)] = src_c_4[i];
	    	fin_red_image[i+IMAGE_WIDTH*((5*IMAGE_LENGTH)/8)]= src_c_5[i];
	    	fin_red_image[i+IMAGE_WIDTH*((6*IMAGE_LENGTH)/8)] = src_c_6[i];
	    	fin_red_image[i+IMAGE_WIDTH*((7*IMAGE_LENGTH)/8)]= src_c_7[i];

	    	if(i<5)
	    	{
	    		xil_printf("SNAFOO C: %u\n\r", src_c_0[i]);
	    	}
	    	if(i<5)
	    	{
	    		xil_printf("SNAFOO FIN: %u\n\r", fin_red_image[i]);
	    	}
	    }
		*/

	    /*
	    for (int i = 0; i < IMAGE_WIDTH*(IMAGE_LENGTH);i++)///8); i++)
	    {
	        src_a_0[i] = color_green_image[i];
	        src_b_0[i] = ir_green_image[i];
	        src_c_0[i] = 0;

	        src_a_1[i] = color_green_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)];
	        src_b_1[i] = ir_green_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)];
	        src_c_1[i] = 0;
	        src_a_2[i] = color_green_image[i+IMAGE_WIDTH*(2*IMAGE_LENGTH/8)];
	        src_b_2[i] = ir_green_image[i+IMAGE_WIDTH*(2*IMAGE_LENGTH/8)];
	        src_c_2[i] = 0;
	        src_a_3[i] = color_green_image[i+IMAGE_WIDTH*(3*IMAGE_LENGTH/8)];
	        src_b_3[i] = ir_green_image[i+IMAGE_WIDTH*(3*IMAGE_LENGTH/8)];
	        src_c_3[i] = 0;
	        src_a_4[i] = color_green_image[i+IMAGE_WIDTH*(4*IMAGE_LENGTH/8)];
	        src_b_4[i] = ir_green_image[i+IMAGE_WIDTH*(4*IMAGE_LENGTH/8)];
	        src_c_4[i] = 0;
	        src_a_5[i] = color_green_image[i+IMAGE_WIDTH*(5*IMAGE_LENGTH/8)];
	        src_b_5[i] = ir_green_image[i+IMAGE_WIDTH*(5*IMAGE_LENGTH/8)];
	        src_c_5[i] = 0;
	        src_a_6[i] = color_green_image[i+IMAGE_WIDTH*(6*IMAGE_LENGTH/8)];
	        src_b_6[i] = ir_green_image[i+IMAGE_WIDTH*(6*IMAGE_LENGTH/8)];
	        src_c_6[i] = 0;
	        src_a_7[i] = color_green_image[i+IMAGE_WIDTH*(7*IMAGE_LENGTH/8)];
	        src_b_7[i] = ir_green_image[i+IMAGE_WIDTH*(7*IMAGE_LENGTH/8)];
	        src_c_7[i] = 0;


	    }
	    */

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_1[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_2[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_2[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);
		/*
		XDwt_accel_Set_a_1(&accelerator, (u32)src_a_1);
		XDwt_accel_Set_b_1(&accelerator, (u32)src_b_1);
		XDwt_accel_Set_c_1(&accelerator, (u32)src_c_1);
		XDwt_accel_Set_a_2(&accelerator, (u32)src_a_2);
		XDwt_accel_Set_b_2(&accelerator, (u32)src_b_2);
		XDwt_accel_Set_c_2(&accelerator, (u32)src_c_2);
		XDwt_accel_Set_a_3(&accelerator, (u32)src_a_3);
		XDwt_accel_Set_b_3(&accelerator, (u32)src_b_3);
		XDwt_accel_Set_c_3(&accelerator, (u32)src_c_3);
		XDwt_accel_Set_a_4(&accelerator, (u32)src_a_4);
		XDwt_accel_Set_b_4(&accelerator, (u32)src_b_4);
		XDwt_accel_Set_c_4(&accelerator, (u32)src_c_4);
		XDwt_accel_Set_a_5(&accelerator, (u32)src_a_5);
		XDwt_accel_Set_b_5(&accelerator, (u32)src_b_5);
		XDwt_accel_Set_c_5(&accelerator, (u32)src_c_5);
		XDwt_accel_Set_a_6(&accelerator, (u32)src_a_6);
		XDwt_accel_Set_b_6(&accelerator, (u32)src_b_6);
		XDwt_accel_Set_c_6(&accelerator, (u32)src_c_6);
		XDwt_accel_Set_a_7(&accelerator, (u32)src_a_7);
		XDwt_accel_Set_b_7(&accelerator, (u32)src_b_7);
		XDwt_accel_Set_c_7(&accelerator, (u32)src_c_7);
		*/

		u32 offset_r = XDwt_accel_Get_a(&accelerator);
		u32 offset_g = XDwt_accel_Get_b(&accelerator);
		u32 offset_v = XDwt_accel_Get_c(&accelerator);

		if((offset_r != (u32)src_a_0) || (offset_g != (u32)src_b_0) || (offset_v != (u32)src_c_0))
		{
			xil_printf("CRITICAL ERROR\n\r");
			return 3;
		}
		xil_printf("Base offset set as %x %x %x on accelerator, from proc as %x %x %x\n\r", offset_r, offset_g, offset_v ,(u32)src_a_0, (u32)src_b_0, (u32)src_c_0);


		while(!XDwt_accel_IsReady(&accelerator))
		{
			xil_printf("ACC NOT READY\n\r");
		}

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 2\n\r");
		}
		/*
	    for (int i = 0; i < IMAGE_WIDTH*(IMAGE_LENGTH);i++)///8); i++)
	    {
	    	fin_green_image[i] = src_c_0[i];

	    	fin_green_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)]= src_c_1[i];
	    	fin_green_image[i+IMAGE_WIDTH*((2*IMAGE_LENGTH)/8)] = src_c_2[i];
	    	fin_green_image[i+IMAGE_WIDTH*((3*IMAGE_LENGTH)/8)]= src_c_3[i];
	    	fin_green_image[i+IMAGE_WIDTH*((4*IMAGE_LENGTH)/8)] = src_c_4[i];
	    	fin_green_image[i+IMAGE_WIDTH*((5*IMAGE_LENGTH)/8)]= src_c_5[i];
	    	fin_green_image[i+IMAGE_WIDTH*((6*IMAGE_LENGTH)/8)] = src_c_6[i];
	    	fin_green_image[i+IMAGE_WIDTH*((7*IMAGE_LENGTH)/8)]= src_c_7[i];

	    }

	    for (int i = 0; i < IMAGE_WIDTH*(IMAGE_LENGTH);i++)///8); i++)
	    {
	        src_a_0[i] = color_blue_image[i];
	        src_b_0[i] = ir_blue_image[i];
	        src_c_0[i] = 0;
	        /*
	        src_a_1[i] = color_blue_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)];
	        src_b_1[i] = ir_blue_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)];
	        src_c_1[i] = 0;
	        src_a_2[i] = color_blue_image[i+IMAGE_WIDTH*(2*IMAGE_LENGTH/8)];
	        src_b_2[i] = ir_blue_image[i+IMAGE_WIDTH*(2*IMAGE_LENGTH/8)];
	        src_c_2[i] = 0;
	        src_a_3[i] = color_blue_image[i+IMAGE_WIDTH*(3*IMAGE_LENGTH/8)];
	        src_b_3[i] = ir_blue_image[i+IMAGE_WIDTH*(3*IMAGE_LENGTH/8)];
	        src_c_3[i] = 0;
	        src_a_4[i] = color_blue_image[i+IMAGE_WIDTH*(4*IMAGE_LENGTH/8)];
	        src_b_4[i] = ir_blue_image[i+IMAGE_WIDTH*(4*IMAGE_LENGTH/8)];
	        src_c_4[i] = 0;
	        src_a_5[i] = color_blue_image[i+IMAGE_WIDTH*(5*IMAGE_LENGTH/8)];
	        src_b_5[i] = ir_blue_image[i+IMAGE_WIDTH*(5*IMAGE_LENGTH/8)];
	        src_c_5[i] = 0;
	        src_a_6[i] = color_blue_image[i+IMAGE_WIDTH*(6*IMAGE_LENGTH/8)];
	        src_b_6[i] = ir_blue_image[i+IMAGE_WIDTH*(6*IMAGE_LENGTH/8)];
	        src_c_6[i] = 0;
	        src_a_7[i] = color_blue_image[i+IMAGE_WIDTH*(7*IMAGE_LENGTH/8)];
	        src_b_7[i] = ir_blue_image[i+IMAGE_WIDTH*(7*IMAGE_LENGTH/8)];
	        src_c_7[i] = 0;


	    }
		 */

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_2[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_3[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_3[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);
		/*
		XDwt_accel_Set_a_1(&accelerator, (u32)src_a_1);
		XDwt_accel_Set_b_1(&accelerator, (u32)src_b_1);
		XDwt_accel_Set_c_1(&accelerator, (u32)src_c_1);
		XDwt_accel_Set_a_2(&accelerator, (u32)src_a_2);
		XDwt_accel_Set_b_2(&accelerator, (u32)src_b_2);
		XDwt_accel_Set_c_2(&accelerator, (u32)src_c_2);
		XDwt_accel_Set_a_3(&accelerator, (u32)src_a_3);
		XDwt_accel_Set_b_3(&accelerator, (u32)src_b_3);
		XDwt_accel_Set_c_3(&accelerator, (u32)src_c_3);
		XDwt_accel_Set_a_4(&accelerator, (u32)src_a_4);
		XDwt_accel_Set_b_4(&accelerator, (u32)src_b_4);
		XDwt_accel_Set_c_4(&accelerator, (u32)src_c_4);
		XDwt_accel_Set_a_5(&accelerator, (u32)src_a_5);
		XDwt_accel_Set_b_5(&accelerator, (u32)src_b_5);
		XDwt_accel_Set_c_5(&accelerator, (u32)src_c_5);
		XDwt_accel_Set_a_6(&accelerator, (u32)src_a_6);
		XDwt_accel_Set_b_6(&accelerator, (u32)src_b_6);
		XDwt_accel_Set_c_6(&accelerator, (u32)src_c_6);
		XDwt_accel_Set_a_7(&accelerator, (u32)src_a_7);
		XDwt_accel_Set_b_7(&accelerator, (u32)src_b_7);
		XDwt_accel_Set_c_7(&accelerator, (u32)src_c_7);
		*/

		for(int jy=0; jy<5; jy++)
		{
			xil_printf("READ COLOR: %u\n\r", src_a_0[jy]);
		}

		while(!XDwt_accel_IsReady(&accelerator))
		{
			xil_printf("ACC NOT READY\n\r");
		}

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 3\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_3[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_4[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_4[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 4\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_4[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_5[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_5[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 5\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_5[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_6[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_6[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 6\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_6[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_7[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_7[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 7\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_7[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_8[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_8[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 8\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_8[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_9[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_9[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 9\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_9[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_10[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_10[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 10\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_10[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_11[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_11[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 11\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_11[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_12[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_12[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 12\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_12[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_13[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_13[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 13\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_13[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_14[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_14[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 14\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_14[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_15[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_15[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 15\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_15[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
				src_a_0[p*(IMAGE_WIDTH/8)+q] = IR_gray_image_16[p][q];
				src_b_0[p*(IMAGE_WIDTH/8)+q] = BW_gray_image_16[p][q];
				src_c_0[p*(IMAGE_WIDTH/8)+q] =0;
			}
		}

		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		XDwt_accel_Set_a(&accelerator, (u32)src_a_0);
		XDwt_accel_Set_b(&accelerator, (u32)src_b_0);
		XDwt_accel_Set_c(&accelerator, (u32)src_c_0);

		XDwt_accel_Start(&accelerator);

		while(!XDwt_accel_IsDone(&accelerator))
		{
			xil_printf("Waiting on acc 16\n\r");
		}

		for(int p=0; p<(IMAGE_LENGTH/8); p++)
		{
			for(int q=0; q<(IMAGE_WIDTH/8);q++)
			{
				fin_image_16[p][p]= src_c_0[p*(IMAGE_WIDTH/8)+q];
			}
		}

		/*

	    for (int i = 0; i < IMAGE_WIDTH*(IMAGE_LENGTH);i++)///8); i++)
	    {
	    	fin_blue_image[i] = src_c_0[i];

	    	fin_blue_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)]= src_c_1[i];
	    	fin_blue_image[i+IMAGE_WIDTH*((2*IMAGE_LENGTH)/8)] = src_c_2[i];
	    	fin_blue_image[i+IMAGE_WIDTH*((3*IMAGE_LENGTH)/8)]=src_c_3[i];
	    	fin_blue_image[i+IMAGE_WIDTH*((4*IMAGE_LENGTH)/8)] = src_c_4[i];
	    	fin_blue_image[i+IMAGE_WIDTH*((5*IMAGE_LENGTH)/8)]= src_c_5[i];
	    	fin_blue_image[i+IMAGE_WIDTH*((6*IMAGE_LENGTH)/8)] = src_c_6[i];
	    	fin_blue_image[i+IMAGE_WIDTH*((7*IMAGE_LENGTH)/8)]= src_c_7[i];

	    }


	    /*


	    for (int i = 0; i < IMAGE_WIDTH*(IMAGE_LENGTH/8); i++)
	    {
	    	fin_image[i] = src_c_0[i];
	    	fin_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)]= src_c_1[i];
	    	fin_image[i+IMAGE_WIDTH*((2*IMAGE_LENGTH)/8)] = src_c_2[i];
	    	fin_image[i+IMAGE_WIDTH*((3*IMAGE_LENGTH)/8)]= src_c_3[i];
	    	fin_image[i+IMAGE_WIDTH*((4*IMAGE_LENGTH)/8)] = src_c_4[i];
	    	fin_image[i+IMAGE_WIDTH*((5*IMAGE_LENGTH)/8)]= src_c_5[i];
	    	fin_image[i+IMAGE_WIDTH*((6*IMAGE_LENGTH)/8)] = src_c_6[i];
	    	fin_image[i+IMAGE_WIDTH*((7*IMAGE_LENGTH)/8)]= src_c_7[i];
	    }
	    */


	//}
	XTime end_h;
	XTime_GetTime(&end_h);
	double time_taken_h = (double)(((double) (end_h - start_h)) / COUNTS_PER_SECOND)*1000.0;
	printf("TIME: %f", time_taken_h);

	//Stop the timer since the accelerator is done
	timerCount_Stop = (u64)XTmrCtr_GetValue(&timer, 0);
	xil_printf("FIN DWT\n\r");
	u64 fin_count_h =(timerCount_Stop-timerCount_Start);
	xil_printf("Accelerator Done\n\r");

	//Display time
	xil_printf("Time Accelerator: %f\n\r", time_taken_h);

    //for (int i = 0; i < IMAGE_WIDTH*(IMAGE_LENGTH/8); i++)
    //{

        //fin_image[i] = src_c_0[i];
        //fin_image[i+IMAGE_WIDTH*(IMAGE_LENGTH/8)]= src_c_1[i];
        //fin_image[i+IMAGE_WIDTH*((2*IMAGE_LENGTH)/8)] = src_c_2[i];
        //fin_image[i+IMAGE_WIDTH*((3*IMAGE_LENGTH)/8)]= src_c_3[i];
        //fin_image[i+IMAGE_WIDTH*((4*IMAGE_LENGTH)/8)] = src_c_4[i];
        //fin_image[i+IMAGE_WIDTH*((5*IMAGE_LENGTH)/8)]= src_c_5[i];
        //fin_image[i+IMAGE_WIDTH*((6*IMAGE_LENGTH)/8)] = src_c_6[i];
        //fin_image[i+IMAGE_WIDTH*((7*IMAGE_LENGTH)/8)]= src_c_7[i];

	/*

	for (int i = 0; i < IMAGE_WIDTH*(IMAGE_LENGTH/8); i++)
    {

        free((void*)src_a_0[i]);
        free((void*)src_b_0[i]);
        free((void*)src_c_0[i]);
        free((void*)src_a_1[i]);
        free((void*)src_b_1[i]);
        free((void*)src_c_1[i]);
        free((void*)src_a_2[i]);
        free((void*)src_b_2[i]);
        free((void*)src_c_2[i]);
        free((void*)src_a_3[i]);
        free((void*)src_b_3[i]);
        free((void*)src_c_3[i]);
        free((void*)src_a_4[i]);
        free((void*)src_b_4[i]);
        free((void*)src_c_4[i]);
        free((void*)src_a_5[i]);
        free((void*)src_b_5[i]);
        free((void*)src_c_5[i]);
        free((void*)src_a_6[i]);
        free((void*)src_b_6[i]);
        free((void*)src_c_6[i]);
        free((void*)src_a_7[i]);
        free((void*)src_b_7[i]);
        free((void*)src_c_7[i]);

    }
    free((void*)src_a_0);
    free((void*)src_b_0);
    free((void*)src_c_0);
    free((void*)src_a_1);
    free((void*)src_b_1);
    free((void*)src_c_1);
    free((void*)src_a_2);
    free((void*)src_b_2);
    free((void*)src_c_2);
    free((void*)src_a_3);
    free((void*)src_b_3);
    free((void*)src_c_3);
    free((void*)src_a_4);
    free((void*)src_b_4);
    free((void*)src_c_4);
    free((void*)src_a_5);
    free((void*)src_b_5);
    free((void*)src_c_5);
    free((void*)src_a_6);
    free((void*)src_b_6);
    free((void*)src_c_6);
    free((void*)src_a_7);
    free((void*)src_b_7);
    free((void*)src_c_7);

	*/

    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {

        	if(j==0 && i==0)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	  fin_image[originalIndex] = fin_image_1[y][x];
                      }
                }
        	}
        	else if(j==1 && i==0)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_2[y][x];
                      }
                }
        	}
        	else if(j==2 && i==0)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_3[y][x];
                      }
                }
        	}
        	else if(j==3 && i==0)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_4[y][x];
                      }
                }
        	}
        	else if(j==0 && i==1)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_5[y][x];
                      }
                }
        	}
        	else if(j==1 && i==1)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_6[y][x];
                      }
                }
        	}
        	else if(j==2 && i==1)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_7[y][x];
                      }
                }
        	}
        	else if(j==3 && i==1)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_8[y][x];
                      }
                }
        	}
        	else if(j==0 && i==2)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_9[y][x];
                      }
                }
        	}
        	else if(j==1 && i==2)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_10[y][x];
                      }
                }
        	}
        	else if(j==2 && i==2)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_11[y][x];
                      }
                }
        	}
        	else if(j==3 && i==2)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_12[y][x];
                      }
                }
        	}
        	else if(j==0 && i==3)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_13[y][x];
                      }
                }
        	}
        	else if(j==1 && i==3)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_14[y][x];
                      }
                }
        	}
        	else if(j==2 && i==3)
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_15[y][x];
                      }
                }
        	}
        	else
        	{
                for (int y = 0; y < (IMAGE_LENGTH/4); y++)
                {
                      for (int x = 0; x < (IMAGE_WIDTH/4); x++)
                      {
                          // Copy pixel data from original to small_img
                    	  int originalIndex = (y + i * (IMAGE_WIDTH / 4)) * IMAGE_LENGTH + (x + j * (IMAGE_LENGTH / 4));
                      	fin_image[originalIndex] = fin_image_16[y][x];
                      }
                }
        	}
        }
    }

	//write_color_image_SD("fc.tif", fin_red_image, fin_green_image, fin_blue_image);
	write_image_SD("f.tif", fin_image);
	xil_printf("FINISHED\n\r");


	cleanup_platform();
	return 0;
}
