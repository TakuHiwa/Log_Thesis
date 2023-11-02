#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

void lntrim(char *str) {  
  char *p;  
  p = strchr(str, '\n');  
  if(p != NULL) {  
    *p = '\0';  
  }  
}  
  

int main(){
    char filename[100];
    scanf("%s", filename);
    FILE* f = fopen(filename, "r");
    char valu[256];
    while(fgets(valu, 256, f) != NULL){
        lntrim(valu);
        printf("req <= 'b%s; #30;\n", valu);
    }
    fclose(f);
}