#include<stdio.h>
 
void main()
{

#include <stdio.h>
#include <math.h>
 
double main()
{
    int i, K = 10;
    float M;
    double res = 1.0, add, shift; 
    double table[10] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
    printf("Please enter a number between .5 and 1: ");
    scanf("%f", &M);
    // Flood table with information required     
    for(i=0; i <= (K-1); i++){
        table[i] = log(1+pow(2, -i));
    }
    /* Loop to calculate the value of Exponential */
    for(i=0;i<=(K-1);i++)
    {
        add = M * (1+pow(2, -i));
        shift = res - table[i];
        if(add <= 1){
            M = add;
            res = shift;
        }
    }
     
    printf("\nThe log Value is = %.4f\n", res);
    return res;
}

