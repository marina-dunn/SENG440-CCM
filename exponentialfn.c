#include <stdio.h>
#include <math.h>
#include <stdint.h>

const int scale = 16;

#define DoubleToFixed(x) (x * (double)(1<<scale)) 
#define FixedToDouble(x) ((double)x / (double)(1<<scale))

#define MUL(x,y) ((((x)>>4)*((y)>>4))>>8)
#define DIV(x,y) (((x)<<8)/(y)<<8)

typedef int12_t ;
 
double main()
{
    int i, K = 10;
    float M;
    double res = 1.0, add, shift; 
    double table[10] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
    printf("Please enter a number between 0 and 1: ");
    scanf("%f", &M);
    // Flood table with information required     
    for(i=0; i <= (K-1); i++){
        table[i] = log(1+pow(2, -i));
    }
    /* Loop to calculate the value of Exponential */
    for(i=0;i<=(K-1);i++)
    {
        add = M - table[i];
        shift = res * (1+pow(2, -i));
        if(add >= 0){
            M = add;
            res = shift;
        }
    }
     
    printf("\nThe Exponential Value is = %.4f\n", res);
    return res;
}