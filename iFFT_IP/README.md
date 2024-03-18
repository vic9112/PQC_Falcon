# Fast-Fourier Transform Hardware IP

- Tools
  - Vitis_HLS
  - Vivado
  - PYNQ (jupyter notebook)

## Interface Description

- More details in `xifft_hw.h`

| Port | Interface | Width | Description |
| ---- | --------- | ----- | ----------- |
| f    | AXI-M     | 64-bit| Input the `double type` number from memory at an address, generate the FFT result, and write it back to the original address. |
| logn | AXI-Lite  | 32-bit| Coefficient `logn` |

## Utilization

- Target Board: `xc7z020clg400-1` - Zynq7000

### Slice Logic
``` txt=
+----------------------------+------+-------+------------+-----------+-------+
|          Site Type         | Used | Fixed | Prohibited | Available | Util% |
+----------------------------+------+-------+------------+-----------+-------+
| Slice LUTs*                | 3779 |     0 |          0 |     53200 |  7.10 |
|   LUT as Logic             | 3510 |     0 |          0 |     53200 |  6.60 |
|   LUT as Memory            |  269 |     0 |          0 |     17400 |  1.55 |
|     LUT as Distributed RAM |    0 |     0 |            |           |       |
|     LUT as Shift Register  |  269 |     0 |            |           |       |
| Slice Registers            | 5069 |     0 |          0 |    106400 |  4.76 |
|   Register as Flip Flop    | 5069 |     0 |          0 |    106400 |  4.76 |
|   Register as Latch        |    0 |     0 |          0 |    106400 |  0.00 |
| F7 Muxes                   |   66 |     0 |          0 |     26600 |  0.25 |
| F8 Muxes                   |    1 |     0 |          0 |     13300 | <0.01 |
+----------------------------+------+-------+------------+-----------+-------+
```
### Memory
``` txt=
+-------------------+------+-------+------------+-----------+-------+
|     Site Type     | Used | Fixed | Prohibited | Available | Util% |
+-------------------+------+-------+------------+-----------+-------+
| Block RAM Tile    |    6 |     0 |          0 |       140 |  4.29 |
|   RAMB36/FIFO*    |    6 |     0 |          0 |       140 |  4.29 |
|     RAMB36E1 only |    6 |       |            |           |       |
|   RAMB18          |    0 |     0 |          0 |       280 |  0.00 |
+-------------------+------+-------+------------+-----------+-------+
```

### DSP
``` txt=
+----------------+------+-------+------------+-----------+-------+
|    Site Type   | Used | Fixed | Prohibited | Available | Util% |
+----------------+------+-------+------------+-----------+-------+
| DSPs           |   25 |     0 |          0 |       220 | 11.36 |
|   DSP48E1 only |   25 |       |            |           |       |
+----------------+------+-------+------------+-----------+-------+
```

### Timing

#### Timing Summary
- ![timing_sum](https://github.com/vic9112/PQC_Falcon/assets/137171415/cdbc74ae-df35-4f0c-9d3a-959cd6afcb79)
#### Intra-Clock Path
- ![timing_clk](https://github.com/vic9112/PQC_Falcon/assets/137171415/544ca74c-7ac9-4e50-9c2e-b953c71748cd)

##  Verification on FPGA

### Target board: PYNQ


### Include files:
- All files in `~/bitstream` and `~/jupyter_notebook`
  ![ex](https://github.com/vic9112/PQC_Falcon/assets/137171415/7a4e64c6-29cf-40f3-9b2d-7bfa1890b0a3)
  - where `FFT_in.txt` is the test input, `FFT_out.txt` is the golden output value
  - `FFT.bit` is the bitstream, `FFT.hwh` is the header (metadata) file for `FFT.bit`
  
### Result
![result](https://github.com/vic9112/PQC_Falcon/assets/137171415/680e734f-21d1-4f46-bec3-a94bb256baa5)
