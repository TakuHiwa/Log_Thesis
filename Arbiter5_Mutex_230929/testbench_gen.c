#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <math.h>

typedef struct Bins{
  struct Bins * next;
  struct Bins * prev;
  int value;
} Bin_t;

int gen(int v){
  if(v == 0)
    return 1;

  int add = pow(10, v);

  return add + gen(v-1);
}

void genprint(){
  Bin_t head;
  Bin_t *blist = &head;
  blist->prev = NULL;
  blist->value = 1;

  for (int count = 0; count < 5; count++)
  {
    Bin_t * next = malloc(sizeof(Bin_t));
        
    next->value = 0;

    blist->next = next;
    blist = next;
  }

  blist = &head;
  for (int i = 0; i < 5; i++)
  {
    printf("%d", blist->value);
    blist = blist->next;
  }
  
}

int main(){
  printf("%d", gen(5));
}