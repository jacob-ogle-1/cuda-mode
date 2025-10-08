#include <stdio.h>

// Kernel Func
__global__ void helloFromTheGPU(void) { printf("Hello from the GPU\n"); }

int main(void) {
  printf("Hello from cuda-mode!\n");
  helloFromTheGPU<<<1, 10>>>();
  cudaDeviceReset();
  return 0;
}
