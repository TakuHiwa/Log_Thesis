#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>

void printb(unsigned int v) {
  unsigned int mask = (int)1 << (sizeof(v) * CHAR_BIT - 1);
  do putchar(mask & v ? '1' : '0');
  while (mask >>= 1);
}

void putb(unsigned int v) {
  putchar('0'), putchar('b'), printb(v), putchar('\n');
}

int main(){
    int valu = 1;
    for (int i = 0; i < 1 << 5; i++)
    {
        if(i % (1 << 2) == 0) printf("中央!\n");
        putb(i);
    }
    
}