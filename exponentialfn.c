#include <stdio.h>
#include <math.h>
#include <stdint.h>

const int scale = 16;
const int K =10;
#define DoubleToFixed(x) (x * (double)(1<<scale)) 
#define FixedToDouble(x) ((double)x / (double)(1<<scale))

#define MUL(x,y) ((((x)>>4)*((y)>>4))>>8)
#define DIV(x,y) (((x)<<8)/(y)<<8)


double exponential(int table[10]){
    
    float M;

    int res = DoubleToFixed(1), add, shift,i; 
    printf("Please enter a number between 0 and 1: ");
    scanf("%f", &M);
    int m_fixed = DoubleToFixed(M);
    int x = DoubleToFixed(0.0);
    for(i=0;i<=(K-1);i++)
    {
        int temp = DoubleToFixed((1+pow(2, -i)));
        add = m_fixed - table[i];
        shift = MUL(res, temp);
        add >= x ? m_fixed = add, res = shift : 0;
    }
    return FixedToDouble(res);
}
int main()
{
    int i;
    int table[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    for(i=0; i <= (K-1); i++){
        table[i] = DoubleToFixed(log(1+pow(2, -i)));
    }
    /* Loop to calculate the value of Exponential */

     
    printf("\nThe Exponential Value is = %.4f\n", exponential(table));
    return 0;
}
