#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int main(){
    int i,j,randReg;
    srand(time(NULL));
    printf("#5 enc <= 1;\n");
    for(i = 0, j = 10; i < 32; i++,j+=4){
        printf("#%d datac <= 32'd%d;\n",j+1,rand()%100);
        printf("#%d addrc <= 5'd%d;\n",j+3,i);
    }
    printf("#%d enc <= 0;\n",++j);
    for(i = 0; i < 32; i+=2,j+=4){
        printf("#%d addra <= 5'd%d;\n",j+1,i);
        printf("#%d addrb <= 5'd%d;\n",j+3,i+1);
    }
    printf("#%d reset <= 0;\n",++j);
     for(i = 0; i < 32; i+=2,j+=4){
        printf("#%d addra <= 5'd%d;\n",j+1,i);
        printf("#%d addrb <= 5'd%d;\n",j+3,i+1);
    }
    randReg = rand()%32;
    printf("#%d enc <= 1;\n",++j);
    printf("#%d addrc <= 5'd%d;\n",++j,randReg);
    printf("#%d datac <= 32'd%d;\n",++j,rand()%100);
    printf("#%d addra <= 5'd%d;\n",++j,randReg);
    printf("#%d reset <= ~reset;\n",++j);
    printf("#%d reset <= ~reset;\n",++j);
    return 0;
}
