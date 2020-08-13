#include <stdio.h>
#include <math.h>
#include <stdint.h>

const int scale = 16;

#define DoubleToFixed(x) (x * (double)(1<<scale)) 
#define FixedToDouble(x) ((double)x / (double)(1<<scale))

#define MUL(x,y) ((((x)>>4)*((y)>>4))>>8)
#define DIV(x,y) (((x)<<8)/(y)<<8)

double main()
{
    int i, K = 10;
    float M;

    int res = DoubleToFixed(1), add, shift; 
    int table[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    printf("Please enter a number between 0 and 1: ");
    scanf("%f", &M);
    int m_fixed = DoubleToFixed(M);
    int x = DoubleToFixed(0.0);

    // Flood table with information required     
    for(i=0; i <= (K-1); i++){
        table[i] = DoubleToFixed(log(1+pow(2, -i)));
    }
    /* Loop to calculate the value of Exponential */
    for(i=0;i<=(K-1);i++)
    {
        int temp = DoubleToFixed((1+pow(2, -i)));
        add = m_fixed - table[i];
        shift = MUL(res, temp);
        /* if(add >= DoubleToFixed(0)){
            m_fixed = add;
            res = shift;
        } */ 
        printf("res: %d -- m: %d -- add: %d -- shift: %d", res, m_fixed, add, shift);
        asm ("cmp %3, %2 ; movlt %2, %0; movlt %4, %1;" : "=r"(m_fixed), "=r"(res) : "r"(add), "r"(x) , "r"(shift));
        printf("res: %d -- m: %d -- add: %d -- shift: %d", res, m_fixed, add, shift);
    }
     
    printf("\nThe Exponential Value is = %.4f\n", FixedToDouble(res));
    return FixedToDouble(res);
}