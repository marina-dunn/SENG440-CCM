const int scale = 16;


#include <stdio.h>
#include <math.h>
#include <stdint.h>

#define DoubleToFixed(x) (x * (double)(1<<scale))
#define FixedToDouble(x) ((double)x / (double)(1<<scale))


#define MUL(x,y) ((((x)>>4)*((y)>>4))>>8)
#define DIV(x,y) (((x)<<8)/(y)<<8)


double main()
{
    int i, K = 10;
    float M;

    int r = 0, add, shift;
    int res = DoubleToFixed(r);
    int table[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    printf("Please enter a number between .5 and 1: ");
    scanf("%f", &M);
    int m_fixed = DoubleToFixed(M);
    int x = DoubleToFixed(1);

    for(i=0; i <= (K-1); i++){
        table[i] = DoubleToFixed(log(1+pow(2, -i)));
         printf(" table location %d, value:  %d \n",i,table[i] );
    }

    for(i=0;i<=(K-1);i++)
    {
        int temp = DoubleToFixed((1.0+pow(2, -i)));
        add = MUL(m_fixed, temp);
        shift = res - table[i];

        asm ("cmp %2, %3 ; movle %0, %2; movle %1, %4;" : "=r"(m_fixed), "=r"(res) : "r"(add), "r"(x) , "r"(shift));    
        
/*
  asm ("cmp %2 %3 ;
  movle %3 %0;
  movle %4 %1;
  "  : "=r"(m_fixed), "=r"(res) : "r"(add), "r"(x) , "r"(shift));     
        */
        
            
          
        
        
    }

    printf("\nThe log Value is = %.4f\n", FixedToDouble(res));
    return FixedToDouble(res);
}
