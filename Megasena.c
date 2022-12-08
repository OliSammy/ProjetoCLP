#include <stdio.h>
#include <stdlib.h>

int main() {
  int **combinations;

  // Aloca memória para o vetor de combinações
  combinations = malloc(sizeof(int*) * 500000);
  for (int i = 0; i < 500000; i++) {
    combinations[i] = malloc(sizeof(int) * 6);
  }

  // Gera as combinações
  int count = 0;
  for (int num1 = 1; num1 <= 60; num1++) {
    for (int num2 = 1; num2 <= 60; num2++) {
      for (int num3 = 1; num3 <= 60; num3++) {
        for (int num4 = 1; num4 <= 60; num4++) {
          for (int num5 = 1; num5 <= 60; num5++) {
            for (int num6 = 1; num6 <= 60; num6++) {
              combinations[count][0] = num1;
              combinations[count][1] = num2;
              combinations[count][2] = num3;
              combinations[count][3] = num4;
              combinations[count][4] = num5;
              combinations[count][5] = num6;
              count++;

            }
          }
        }
      }
    }
  }

  // Imprime as combinações
  for (int i = 0; i < 500000; i++) {
    printf("%d %d %d %d %d %d\n", combinations[i][0], combinations[i][1], combinations[i][2], combinations[i][3], combinations[i][4], combinations[i][5]);
  }

  // Libera a memória alocada
  for (int i = 0; i < 500000; i++) {
    free(combinations[i]);
  }
  free(combinations);

  return 0;
}