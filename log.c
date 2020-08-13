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
        /*
            if(add <= DoubleToFixed(1)){
            m_fixed = add;
            res = shift;
        */
        add <= x ? m_fixed = add, res = shift : ;
    ]
    return FixedToDouble(res);
}

double main()
{


    int i;
    int table[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};


    for(i=0; i <= (K-1); i++){
        table[i] = DoubleToFixed(log(1+pow(2, -i)));
         printf(" table location %d, value:  %d \n",i,table[i] );
    }
    Log(table);
        /*
        asm ("cmp %2, %3 ; movle %0, %2; movle %1, %4;" 
             : "=r"(m_fixed), "=r"(res) 
             : "r"(add), "r"(x) , "r"(shift));  
       */   
    }

    printf("\nThe log Value is = %.4f\n", FixedToDouble(res));
    return 0;
}
