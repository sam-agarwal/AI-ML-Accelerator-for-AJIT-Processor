/**
A simple example to demonstrate running two functions on
two separate Ajit Threads.
*/

#include <stdlib.h>
#include <stdint.h>
#include "ajit_access_routines.h"
#include "core_portme.h"
#include <cortos.h>
#include<math.h>
/* PFP */
void print_matrix(int *m, int x, int y);

//void conv_odd(uint8_t* img_ptr,int kernel_size,int dim_image,uint8_t* kernel_ptr,uint8_t* result_ptr);
void conv_even(uint8_t* img_ptr,int kernel_size,int dim_image,uint8_t* kernel_ptr,uint8_t* result_ptr);


volatile uint32_t init_00 = 0, init_01 = 0, b = 0;
int __attribute__((aligned(8))) res[2025];
uint8_t __attribute__((aligned(8))) img[2304];
uint8_t __attribute__((aligned(8))) kernel[16] = {1, 0, 0, 1,
                                                  0, 1, 1, 0,
                                                  0, 1, 1, 0,
                                                  1, 0, 0, 1};
int kernel_size = 4, n = 48;
int res_rows = (45), res_cols = (45);

void main() {} // important, but kept empty

void ajit_entry_func_001()
{

  int i = 0, j = 0;
  int temp, temp1, w, h;
  int pos = 0;
  // Image Generation

  for (i = 0; i < n; i++)
  {
    for (j = 0; j < n; j += 2)
      // img2d[i][j] = (uint8_t)(j + 1);
      img[i * n + j] = (uint8_t)(j + 1);
  }

  init_00 = 1;
  while (!init_01)
    ;
  //  convolution in C , without any vectorisation

 /* for (i = 0; i < res_rows; i += 1)
  {
    temp = n * i;
    for (j = 0; j < res_cols; j += 2)
    {
      temp1 = temp + j;
      for (h = 0; h < kernel_size; h++)   // h is used to traverse vertically
        for (w = 0; w < kernel_size; w++) // w is used to traverse horizontally
          res[pos] = res[pos] + (kernel[kernel_size * h + w]) * img[(n * h) + temp1 + w];
      pos += 2;
    }
    pos--;
  }
*/
	uint32_t start_time = ajit_barebones_clock();

conv_even(img,4,n,kernel,res);
  while (!b)
    ;

	uint32_t end_time   = ajit_barebones_clock();
	ee_printf("main: start_time=%d, end_time=%d, elapsed=%d\n", 
				start_time, end_time, end_time-start_time);
  //print_matrix(res, (n - kernel_size + 1), (n - kernel_size + 1));
  cortos_exit(b); // safely exit
}

void ajit_entry_func_010()
{
  int i = 0, j = 0;
  int temp, temp1, w, h;
  int pos = 1;

  // Image Generation

  for (i = 0; i < n; i++)
  {
    for (j = 1; j < n; j += 2)
      img[i * n + j] = (uint8_t)(j + 1);
  }

  init_01 = 1;

  while (!init_00)
    ;

 /* for (i = 0; i < res_rows; i += 1)
  {
    temp = n * i;
    for (j = 1; j < res_cols; j += 2)
    {
      temp1 = temp + j;
      for (h = 0; h < kernel_size; h++)   // h is used to traverse vertically
        for (w = 0; w < kernel_size; w++) // w is used to traverse horizontally
          res[pos] = res[pos] + (kernel[kernel_size * h + w]) * img[(n * h) + temp1 + w];
      pos += 2;
    }
    pos++;
  }*/
  b = 1;
  cortos_exit(b); // safely exit
}

void print_matrix(int *m, int x, int y)
{
  int i = 0, j = 0;
  int temp = 0;
  for (i = 0; i < x; i++)
  {
    for (j = 0; j < y; j++)
    {
      cortos_printf("%d ", *(m + temp));
      temp++;
    }
    cortos_printf("\n");
  }
}
