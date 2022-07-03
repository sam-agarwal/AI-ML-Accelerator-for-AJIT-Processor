#include <stdlib.h>
#include <stdint.h>
#include "ajit_access_routines.h"
#include "core_portme.h"

int 	__attribute__((aligned(8))) res[2025];
uint8_t __attribute__((aligned(8))) img[2304];
uint8_t __attribute__((aligned(8))) kernel[16] = 	 {1,0,0,1,
							  0,1,1,0,
							  0,1,1,0,
							  1,0,0,1};
void enable_serial()
{
	// enable the serial device.
	__ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE | RX_INTR_ENABLE );
	ee_printf("enabled serial.\n"); 
}

void main () 
{
	
		
	int n = 48;	
	int i = 0, j = 0;

	// Image Matrix Generation

	for(i = 0; i < n ; i++)
	{
		for(j = 0; j < n ; j++)
			img[i*n + j] = (uint8_t) j+1;
	}

	

	
	int kernel_size = 4, res_rows = n-kernel_size+1, res_cols = n-kernel_size+1;
	int temp , temp1 , w , h;
	int pos=0;
	/*
	for (i=0; i< res_rows ; i++)
            for (j=0; j<res_cols ; j++)
            {
		for (h=i ; h<i+kernel_size ; h++)
                    for (w=j ; w<j+kernel_size ; w++)
                    {
			im2col_matrix[pos] = img[ny*h+w];
			pos++;
		    }
	    }*/

	
		
	

	//convolution in C , without any vectorisation
	uint32_t start_time = ajit_barebones_clock();

	for(i=0; i < res_rows ; i++)
        {
	    temp = n*i;
	    for(j=0; j < res_cols ; j++)
            {	
		temp1 = temp+j;
		for(h = 0 ; h < kernel_size ; h++)	//h is used to traverse vertically
                    for(w = 0 ; w < kernel_size ; w++)	//w is used to traverse horizontally
                        res[pos] = res[pos] + (kernel[kernel_size*h + w]) * img[(n*h) + temp1 + w];
		pos++;
	    }
	}

	//print_matrix_u8(img, nx, nx);

	uint32_t end_time   = ajit_barebones_clock();

	ee_printf("main: start_time=%d, end_time=%d, elapsed=%d\n", 
				start_time, end_time, end_time-start_time);

	print_matrix(res, n-kernel_size+1, n-kernel_size+1);



	
}

void print_matrix(int* m, int x, int y)
{
	int i = 0, j = 0;
	int temp = 0;
	for(i = 0; i < x ; i++)
	{
		for(j = 0; j < y ; j++)
		{
			ee_printf("%d ",*(m+temp) );
			temp++;
		}
	ee_printf("\n");
	}
}

void print_matrix_u8(uint8_t* m, int x, int y)
{
	int i = 0, j = 0;
	int temp = 0;
	for(i = 0; i < x ; i++)
	{
		for(j = 0; j < y ; j++)
		{
			ee_printf("%d ",*(m+temp) );
			temp++;
		}
	ee_printf("\n");
	}
}
