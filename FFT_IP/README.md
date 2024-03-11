# Fast-Fourier Transform

## Interface

| Port | Interface | Width | Description |
| ---- | --------- | ----- | ----------- |
| f    | AXI-M     | 64-bit| Input the `double type` number from memory at an address, generate the FFT result, and write it back to the original address. |
| logn | AXI-Lite  | 32-bit| Coefficient `logn` |

