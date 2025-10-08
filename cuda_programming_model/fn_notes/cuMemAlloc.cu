// Note this code is non-functional. Just adding snips w/ notes

// Example cuda return type
enum cudaError_t { cudaSuccess, cudaErrorMemoryAllocation };

cudaError_t cudaMalloc(/* void** devPtr, size_t size */) {
} // allocates device memory which is accessed via devPtr

// These are copy ops allowed
enum cudaMemcpyKind {
  cudaMemcpyHostToHost,
  cudaMemcpyHostToDevice,
  cudaMemcpyDeviceToHost,
  cudaMemcpyDeviceToDevice
};

char *cudaGetErrorString(cudaError_t error) { // returns human readable error}

  cudaError_t cudaMemcpy(
      /* void* dst, const void* src, size_t count, cudaMemcpyKind kind */) {
  } // xfers data from host to device

  /*
          GPU has different memory models: for now the most common
                  - Global - similar to CPU memory
                  - Shared - similar to CPU cache
  */
