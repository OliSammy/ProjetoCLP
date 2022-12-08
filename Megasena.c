#include <stdio.h>
#include <stdlib.h>

#define N 6 // Número de números na cartela

int main() {
  // Criamos um arquivo para armazenar as cartelas
  FILE *combinacoes = fopen("cartelas.txt", "w");

  // Criamos um vetor que irá armazenar os números da cartela
  int cartelas[N];

  // Geramos todas as combinações de cartelas
  for (int a = 1; a <= 60; a++) {
    cartelas[0] = a;
    for (int b = a + 1; b <= 60; b++) {
      cartelas[1] = b;
      for (int c = b + 1; c <= 60; c++) {
        cartelas[2] = c;
        for (int d = c + 1; d <= 60; d++) {
          cartelas[3] = d;
          for (int e = d + 1; e <= 60; e++) {
            cartelas[4] = e;
            for (int f = e + 1; f <= 60; f++) {
              cartelas[5] = f;

              // Escrevemos a cartela atual no arquivo
              for (int i = 0; i < N; i++) {
                fprintf(combinacoes, "%d ", cartelas[i]);
              }
              fprintf(combinacoes, "\n");
            }
          }
        }
      }
    }
  }

  // Fechamos o arquivo
  fclose(combinacoes);

  return 0;
}
