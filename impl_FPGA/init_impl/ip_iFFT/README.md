# Inverse-Fast-Fourier Transform Hardware IP

- Tools
  - Vitis_HLS
  - Vivado
  - PYNQ, KV260 (jupyter notebook)

## Interface Description

- More details in `xifft_hw.h` under `/pynq`, `/kv260`

| Port | Interface | Width | Description |
| ---- | --------- | ----- | ----------- |
| f    | AXI-M     | 64-bit| Input the `double type` number from memory at an address, generate the FFT result, and write it back to the original address. |
| logn | AXI-Lite  | 32-bit| Coefficient `logn` |

## Utilization

- Target Board: `xc7z020clg400-1`-PYNQ, `xck26-sfvc784-2LV-c`-KV260
- Here I use PYNQ for some brief outline, details please see under `/pynq`, `/kv260`

### Slice Logic
``` txt=
+----------------------------+------+-------+------------+-----------+-------+
|          Site Type         | Used | Fixed | Prohibited | Available | Util% |
+----------------------------+------+-------+------------+-----------+-------+
| Slice LUTs*                | 4192 |     0 |          0 |     53200 |  7.88 |
|   LUT as Logic             | 3858 |     0 |          0 |     53200 |  7.25 |
|   LUT as Memory            |  334 |     0 |          0 |     17400 |  1.92 |
|     LUT as Distributed RAM |    0 |     0 |            |           |       |
|     LUT as Shift Register  |  334 |     0 |            |           |       |
| Slice Registers            | 5551 |     0 |          0 |    106400 |  5.22 |
|   Register as Flip Flop    | 5551 |     0 |          0 |    106400 |  5.22 |
|   Register as Latch        |    0 |     0 |          0 |    106400 |  0.00 |
| F7 Muxes                   |  130 |     0 |          0 |     26600 |  0.49 |
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
  - where `iFFT_in.txt` is the test input, `iFFT_out.txt` is the golden output value
  - `iFFT.bit` is the bitstream, `iFFT.hwh` is the header (metadata) file for `iFFT.bit`
  
### Result
![result](https://github.com/vic9112/PQC_Falcon/assets/137171415/680e734f-21d1-4f46-bec3-a94bb256baa5)
