#include <stdio.h>

int main(void) {
    int T[10] = {1,2,3,4,5,6,7,8,9,10};
    int i;
    int *p = T;

    for(i=0; i<10; i++) printf("%d ",T[i]);
    printf("\n");

    for(i=0; i<10; i++) printf("%d ",*(p+i));
    printf("\n");

}
