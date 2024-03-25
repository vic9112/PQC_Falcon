# Fast-Fourier Transform Hardware IP

- Tools
  - Vitis_HLS
  - Vivado
  - PYNQ, KV260 (jupyter notebook)
  
## IP Description
- For testing the functionality on PYNQ, KV260, please go through `~/kv260` or `~/pynq`
- For comparing the IP to the python function, include `test_ip_fft.ipynb` and `FFT_in.txt` under `~/jupyter_notebook` with all files under `~/python` and `~/kv260/bitstream`
- For testing the IP under falcon implementation, include `test_ip_on_falcon` under `~/jupyter_notebook` with all files under `~/python` and `~/kv260/bitstream`

## Interface Description

- More details in `xfft_hw.h` under `/pynq`, `/kv260`

| Port | Interface | Width | Description |
| ---- | --------- | ----- | ----------- |
| f    | AXI-M     | 64-bit| Input the `double type` number from memory at an address, generate the FFT result, and write it back to the original address. |
| logn | AXI-Lite  | 32-bit| Coefficient `logn` |

## Co-simulation Waveform

![cosim](https://github.com/vic9112/PQC_Falcon/assets/137171415/5386d757-343f-48f9-ac84-1f1b24a64569)

## Utilization

- Target Board: `xc7z020clg400-1`-PYNQ, `xck26-sfvc784-2LV-c`-KV260
- Here I use PYNQ for some brief outline, details please see under `/pynq` or `/kv260`

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
- ![timing_slack](https://github.com/vic9112/PQC_Falcon/assets/137171415/f3367de3-e3ef-42f6-8abc-40b4c83dae37)
#### Intra-Clock Path
- ![timing_clk](https://github.com/vic9112/PQC_Falcon/assets/137171415/7cfc3cc0-3253-4a1e-8ae6-2194a5db1236)

##  Verification on FPGA

### Target board: PYNQ

### Include files:
- All files in `~/bitstream` and `~/jupyter_notebook`
  ![example](https://github.com/vic9112/PQC_Falcon/assets/137171415/240474fb-3a1b-4d83-8fea-da2a396be559)
  - where `FFT_in.txt` is the test input, `FFT_out.txt` is the golden output value
  - `FFT.bit` is the bitstream, `FFT.hwh` is the header (metadata) file for `FFT.bit`
  
### Result
![Result](https://github.com/vic9112/PQC_Falcon/assets/137171415/81a44eac-9c7b-4c5f-92d1-00b3449a4b07)

### Compare to FFT in `falcon.py`
![Result](https://github.com/vic9112/PQC_Falcon/assets/137171415/1056177d-1c32-4ace-9ced-3ade5a202d45)

