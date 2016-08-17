#include <stdio.h>

void overflow(int a){
    overflow(a);
}

int main(void) {
    overflow(3);
    return 0;

}
