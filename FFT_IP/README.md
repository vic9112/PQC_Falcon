# Fast-Fourier Transform Hardware IP

## Interface Description

| Port | Interface | Width | Description |
| ---- | --------- | ----- | ----------- |
| f    | AXI-M     | 64-bit| Input the `double type` number from memory at an address, generate the FFT result, and write it back to the original address. |
| logn | AXI-Lite  | 32-bit| Coefficient `logn` |

## Co-simulation Waveform

![cosim](https://github.com/vic9112/PQC_Falcon/assets/137171415/5386d757-343f-48f9-ac84-1f1b24a64569)

## Utilization

### FF/LUT
- ![Utilization_slice_logic](https://github.com/vic9112/PQC_Falcon/assets/137171415/2674009e-dd9b-4f32-af05-2655ff69a560)
### DSP
- ![Utilization_DSP](https://github.com/vic9112/PQC_Falcon/assets/137171415/7330c709-17ae-4553-a2ce-ae3a218e8de6)

## Timing

### Timing Summary
- ![timing_slack](https://github.com/vic9112/PQC_Falcon/assets/137171415/f3367de3-e3ef-42f6-8abc-40b4c83dae37)
### Intra-Clock Path
- ![timing_clk](https://github.com/vic9112/PQC_Falcon/assets/137171415/7cfc3cc0-3253-4a1e-8ae6-2194a5db1236)
