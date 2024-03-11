# Fast-Fourier Transform

## Interface

| Port | Interface | Width | Description |
| ---- | --------- | ----- | ----------- |
| f    | AXI-M     | 64-bit| Input the `double type` number from memory at an address, generate the FFT result, and write it back to the original address. |
| logn | AXI-Lite  | 32-bit| Coefficient `logn` |

## Co-simulation

![cosim](https://github.com/vic9112/PQC_Falcon/assets/137171415/5386d757-343f-48f9-ac84-1f1b24a64569)
