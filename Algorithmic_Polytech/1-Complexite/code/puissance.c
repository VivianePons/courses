#include <stdio.h>
#include <stdlib.h>

double puissance(double a, int n) {
    int i;
    double r = 1;
    for(i = 0; i < n; i++) {
        r = r*a;
    }
    return r;
}

int main(int argc, char *argv[]) {
    double a = 1;
    int n = 1;

    if(argc > 1) a = atof(argv[1]);
    if(argc > 2) n = atoi(argv[2]);

    printf("%f\n",puissance(a,n));

    return 0;

}
