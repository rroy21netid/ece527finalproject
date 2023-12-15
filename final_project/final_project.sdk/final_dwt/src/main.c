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

#include "xvector_multiplier.h"
#include "xparameters.h"
#include "xtmrctr.h"
#include "xil_cache.h"
#include "sleep.h"

#include "xsdps.h"			/* SD device driver */
#include "ff.h"				/* FAT File System */
#include "xplatform_info.h"

#define TMRCTR_DEVICE_ID    XPAR_AXI_TIMER_0_DEVICE_ID

#define NUM_TESTS 10000

//Size of Array. Fixed in HLS code to 64 as well.
#define SIZE 32
static char *SD_File;


unsigned char images[NUM_TESTS*28*28];

float images_processed[NUM_TESTS*SIZE*SIZE];
float params_post[51902] ={0};

unsigned char labels[NUM_TESTS];

float image_temp[10000][SIZE][SIZE] = {0};

static FIL fil;		/* File object */
static FATFS fatfs;

// Parse MNIST test images
int parse_mnist_images(char* filename, unsigned char *images)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;
    unsigned int header[4];

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

	Res = f_read(&fil, (void*)header, sizeof(unsigned int)*4, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file\n\r");
	}

	Res = f_read(&fil, (void*)images, sizeof(unsigned char)*NUM_TESTS*28*28, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read images from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read images from file\n\r");
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


void get_image(unsigned char *images, unsigned int idx, float *images_processed)
{
    for(int i = 0; i < 32; i++)
        for(int j = 0; j < 32; j++)
        {
        	unsigned int target_index = idx * 32 * 32 + i * 32 + j;
            if (i < 2 || i > 29 || j < 2 || j > 29)
            	images_processed[target_index] = (float)-1;
            else
            	images_processed[target_index] = images[idx*28*28 + (i-2)*28 + j-2] / 255.0 * 2.0 - 1.0;
        }
}

void get_image_ori(unsigned char *images, float image[10000][32][32])
{
	for(int idx=0; idx < NUM_TESTS; idx++)
	{
	    for(int i = 0; i < 32; i++)
	    {
	    	//xil_printf("i: (%d)",i);
	        for(int j = 0; j < 32; j++)
	        {
	        	//xil_printf("j: (%d)",j);
	            if ((i < 2) || (i > 29) || (j < 2) || (j > 29))
	            {
	            	image[idx][i][j] = -1.0;
	            	//xil_printf("THIS IS OUTER VAL: %d AND VALS are (%d)\n\r", image[idx][i][j], idx);
	            }
	            else
	            {
	            	float lma = images[idx*28*28 + (i-2)*28 + j-2] / 255.0 * 2.0 - 1.0;
	            	image[idx][i][j] = lma;
	            	if(idx==0)
	            	{
	            		//printf("DA VAL GOING IN: %d\r\n", lma);
	            		//printf("THIS IS IMAGE REAL VAL: %f\n\r", image[idx][i][j]);
	            	}



	            }
	        }
	    }
	}

}

void get_image_CNN(unsigned char *images, unsigned int idx, float image[32][32])
{
    for(int i = 0; i < 32; i++)
        for(int j = 0; j < 32; j++)
        {
            if (i < 2 || i > 29 || j < 2 || j > 29)
                image[i][j] = -1.0;
            else
                image[i][j] = images[idx*28*28 + (i-2)*28 + j-2] / 255.0 * 2.0 - 1.0;
        }
}

// Parse MNIST test image labels
int parse_mnist_labels(char* filename, unsigned char *labels)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;
    unsigned int header[2];

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening mnist label data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist labels data file\n\r");
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

	Res = f_read(&fil, (void*)header, sizeof(unsigned int)*2, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file\n\r");
	}

	Res = f_read(&fil, (void*)labels, sizeof(unsigned char)*NUM_TESTS, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read labels from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read labels from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close labels file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed labels file\n\r");
	}

	return 0;


}

// Parse parameter file and load it in to the arrays
int parse_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening parameter file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened parameter file\n\r");
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

	Res = f_read(&fil, (void*)params_post, sizeof(float)*51902, &NumBytesRead);
	//printf("NUM WE READ %u and what we want %u", NumBytesRead,sizeof(float)*51902 );
	if (Res)
	{
		xil_printf("Cant read conv1_weights from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read params from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close labels file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed labels file\n\r");
	}

	return 0;

}

int main()
{
	//Init platform
	init_platform();
	xil_printf("Accelerator Demo Code\n\r");

	xil_printf("Starting LeNet\n\r");

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

	xil_printf("Parsing MNIST images\n\r");
	parse_mnist_images("images.bin", images);

	for(int v=0; v<NUM_TESTS; v++)
	{
		get_image_CNN(images, v, image_temp[v]);
	}

	parse_mnist_labels("labels.bin", labels);

	parse_parameters("params.bin");

	//Data arrays
	float *src_a;

	float *src_b;
	float *src_c;
	int ret = 0;
	int status;

	//Timer variables to measure time
	u32 timerCount_Stop;
	u32 timerCount_Start;

	//AXI device object for AXI Timer
	XTmrCtr timer;

	//Vector multiplier objects from xvector_multiplier.h
	XVector_multiplier accelerator;
	XVector_multiplier_Config *accelerator_config;

	// Get config data struct for vector mult
	accelerator_config = XVector_multiplier_LookupConfig(XPAR_XVECTOR_MULTIPLIER_0_DEVICE_ID);
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
	status = XVector_multiplier_CfgInitialize(&accelerator, accelerator_config);

	if(status != XST_SUCCESS)
	{
		xil_printf("Initialization of acc failed\n\r");
	}
	else
	{
		xil_printf("Initialization of acc successful\n\r");
	}

	//Initialize timer object
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

	//Allocating arrays
	//Make sure you have updated the lscript.ld file to adjust stack and heap sizes.
	src_a = (float*)malloc(sizeof(float)*NUM_TESTS*SIZE*SIZE);
	if(src_a==NULL)
	{
		xil_printf("Malloc src a fail\n\r");
		return 1;
	}

	src_b = (float*)malloc(sizeof(float)*NUM_TESTS*10);
	if(src_b==NULL)
	{
		xil_printf("Malloc src b fail\n\r");
		return 1;
	}

	src_c = (float*)malloc(sizeof(float)*51902);
	if(src_c==NULL)
	{
		xil_printf("Malloc src c fail\n\r");
		return 1;
	}

	//Start initializing data
	xil_printf("Init data\r\n\r");


    for (int i = 0; i < NUM_TESTS; i++) {
        for (int j = 0; j < SIZE; j++) {
            for (int k = 0; k < SIZE; k++) {
                src_a[i * SIZE * SIZE + j * SIZE + k] = image_temp[i][j][k];
                //printf("IN:%f and OUT:%f",image_temp[i][j][k], src_a[i * SIZE * SIZE + j * SIZE + k]);
            }
        }
    }
    for (int i = 0; i < NUM_TESTS; i++) {
    	for(int r=0;r<10;r++)
    	{
    		src_b[i*10+r]= 0;
    	}
    }

    for(int c = 0; c < 51902; c++)
    {
    	src_c[c]= params_post[c];
    }

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
	XVector_multiplier_Set_a(&accelerator, (u32)src_a);
	XVector_multiplier_Set_b(&accelerator, (u32)src_b);
	XVector_multiplier_Set_c(&accelerator, (u32)src_c);

	//Read back the offsets to confirm they were correctly written
	u32 offset_a = XVector_multiplier_Get_a(&accelerator);
	u32 offset_b = XVector_multiplier_Get_b(&accelerator);
	u32 offset_c = XVector_multiplier_Get_c(&accelerator);

	xil_printf("Base offset set as %x %x %x on accelerator, from proc as %x %x %x\n\r", offset_a, offset_b, offset_c ,(u32)src_a, (u32)src_b, (u32)src_c);
	xil_printf("Starting acc\n\r");

	//Reset the timer
	XTmrCtr_Reset(&timer, 0);
	XTmrCtr_ClearStats(&timer);
	XTmrCtr_Start(&timer, 0);
	//Start the timer
	timerCount_Start = (u64)XTmrCtr_GetValue(&timer, 0);

	//Start the accelerator
	XVector_multiplier_Start(&accelerator);
	//Wait till the accelerator is not done
	u64 tt=0;
	while(!XVector_multiplier_IsDone(&accelerator))
	{
		xil_printf("Waiting on acc\n\r");
		/*
		tt++;
    	if(tt%1000 == 0)
    	{
    		timerCount_Stop = XTmrCtr_GetValue(&timer, 0);
    		//printf("STOP: %u\n\r", timerCount_Stop);
    		//printf("START: %u\n\r", timerCount_Start);
    		u64 bah = timerCount_Stop-timerCount_Start;
    		//printf("COMBO: %u\n\r",bah);
    		fin_count +=(timerCount_Stop-timerCount_Start);
    		XTmrCtr_Reset(&timer, 0);
    		XTmrCtr_ClearStats(&timer);
    		XTmrCtr_Start(&timer, 0);
    		timerCount_Start = XTmrCtr_GetValue(&timer, 0);
    	}
    	*/
	}

	//Stop the timer since the accelerator is done
	timerCount_Stop = (u64)XTmrCtr_GetValue(&timer, 0);
	u64 fin_count =(timerCount_Stop-timerCount_Start);
	xil_printf("Accelerator Done\n\r");

	//Display time
	xil_printf("Time Accelerator: %lli\n\r", fin_count);

	//Get the value returned by the accelerator
	//This is the value passed by the "return" at the end of your HLS kernel
	//It is not necessary unless you pass back something useful, like a debug value
	//ret = XVector_multiplier_Get_return(&accelerator);
	//xil_printf("Return acc flag %x \n\r", ret);
	/*
	for (int k = 0; k < NUM_TESTS; k++)
	{
	   for(int l =0; l<10; l++)
	   {
		   if(k<5)
		   {
		   printf("ANS: %f   k:%d   l:%d\n\r", src_b[k*10+l], k, l);
		   }
	   }
	}
	*/


	//Sanity Check
	//Print out A and B, and check whether the values in C are correct
	//C should have been calculated by the accelerator
	int num_correct = 0;

    for (int k = 0; k < NUM_TESTS; k++)
    {
    	int result = 0;
    	float p = -1000000.0;
    	for(int i = 0; i < 10; i++)
    	{
    		if(src_b[k*10+i] > p)
    		{
    			p = src_b[k*10+i];
    			result = i;
    		}
    	}

    	//printf("labels: %d  res: %d and num correct: %d\n\r", labels[k], result,num_correct);
    	if(result == labels[k])
    	{
    		num_correct++;

    		//std::cout << "correct" << std::endl;
    	}
    	else
    	{
    		//std::cout << "WRONG" << std::endl;
    	}
    }

	xil_printf("Test done START: %li STOP: %li\n\r", timerCount_Start, timerCount_Stop);
	float acc = ((float)num_correct/NUM_TESTS) * 100.0;
	printf("Accuracy = %f\n\r", acc);

	cleanup_platform();
	return 0;
}
