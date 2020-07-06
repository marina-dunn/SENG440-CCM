/* Program for Exponential Series */
#include<stdio.h>
 
void main()
{
    int i, m;
    float x, sum=1, t=1;
    clrscr();
     
    printf("Enter the value for x : ");
    scanf("%f", &x);
     
    printf("\nEnter the value for m : ");
    scanf("%d", &m);
     
    /* Loop to calculate the value of Exponential */
    for(i=1;i<=m;i++)
    {
        t=t*x/i;
        sum=sum+t;
    }
     
    printf("\nThe Exponential Value of %f = %.4f", x, sum);
    return;
}