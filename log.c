const int scale = 16;


#include <stdio.h>
#include <math.h>
#include <stdint.h>

#define DoubleToFixed(x) (x * (double)(1<<scale))
#define FixedToDouble(x) ((double)x / (double)(1<<scale))


#define MUL(x,y) ((((x)>>4)*((y)>>4))>>8)
#define DIV(x,y) (((x)<<8)/(y)<<8)
const int K = 10; //precision

double Log(int table[10]){
    int i;
    float M;
    printf("Please enter a number between .5 and 1: ");
    scanf("%f", &M);
    int m_fixed = DoubleToFixed(M);
    int x = DoubleToFixed(1);    
    int r = 0, add, shift;
    int res = DoubleToFixed(r);  
    for(i=0;i<=(K-1);i++)
    {
        int temp = DoubleToFixed((1.0+pow(2, -i)));
        add = MUL(m_fixed, temp);
        shift = res - table[i];
        add <= x ? m_fixed = add, res = shift : 0;
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

    printf("\nThe log Value is = %.4f\n", Log(table));
    return 0;
}
