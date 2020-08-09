/* Program for Exponential Series */
#include<stdio.h>
 
void main()
{
    int i;
    float sum=1, t=1;
     
    /* Loop to calculate the value of Exponential */
    for(i=1;i<=10;i++)
    {
        t=t*3/i;
        sum=sum+t;
    }
     
    printf("\nThe Exponential Value of 3 = %.4f\n", sum);
    return;
}