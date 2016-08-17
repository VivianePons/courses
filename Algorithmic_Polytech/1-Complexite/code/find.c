#include <stdio.h>

int find(int T[], int n, int a) {
    int i;
    for(i=0; i< n; i++) {
        if(T[i] == a) {
            return 1;
        }
    }
    return 0;
}


int main(void) {
    int T[10] = {2, 3, 5, 8, -5, 9, 0, 4, 1, 12};

    printf("%d\n", find(T,10,5));
    printf("%d\n", find(T,10,10));

}
