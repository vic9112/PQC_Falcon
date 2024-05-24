# Compute Public Key Hardware IP

- Tools
  - Vitis_HLS
  - Vivado
  - KV260 (jupyter notebook)

## Interface Description

- More details in `xfft_hw.h` under `/pynq`, `/kv260`

| Port | Interface | Width | Description |
| ---- | --------- | ----- | ----------- |
| h    | AXI-M     | 64-bit| Output the compute public key `h` |
| g    | AXI-M     | 64-bit| Input the `g` compute from NTRU |
| f    | AXI-M     | 64-bit| Input the `f` compute from NTRU |
| tmp  | AXI-M     | 64-bit| Input a array which is used to temporarily storing data |
| logn | AXI-Lite  | 32-bit| Coefficient `logn` |

- In Falcon, we replace the function with our IP:
  ![screenshot](https://github.com/vic9112/PQC_Falcon/assets/137171415/c264aa6f-ad77-4dd1-a9ba-b8f03d0ce58b)

##  Verification on FPGA

### Target board: `xck26-sfvc784-2LV-c` - KV260

### Include files for testing the test vectors
- All files in `~/bitstream` and `~/jupyter_notebook` except `test_ip_on_falcon.ipynb`
  ![files](https://github.com/vic9112/PQC_Falcon/assets/137171415/8489db9b-a444-4290-94b6-3b12d924e0dc)
  - where `f_in.txt`, `g_in` is the test input, `h_out.txt` is the golden output value
  - `compute_pk.bit` is the bitstream, `compute_pk.hwh` is the header (metadata) file for `compute_pk.bit`
  
#### Result
- ![result](https://github.com/vic9112/PQC_Falcon/assets/137171415/5e92c48d-3d93-412a-b31e-73a3edd74e8b)

### Include files for testing the workflows of falcon:
- All files in `~/bitstream`
- Jupyter notebook `~/jupyter_notebook/test_ip_on_falcon.ipynb`
- Python source code `~/python`
  ![files](https://github.com/vic9112/PQC_Falcon/assets/137171415/92323317-972c-4440-a143-c036e41c0ccc)

## Compare the Speed

### Run with IP
**Result:**
- ![After](https://github.com/vic9112/PQC_Falcon/assets/137171415/26126f90-886b-41f3-a31f-e3c36426dd82)

### Original code without IP acceleratation:
- Replace the code at line 278,279 in `~/python/falcon.py` with:
- ![test function](https://github.com/vic9112/PQC_Falcon/assets/137171415/ec346d5a-e29b-4900-a44b-3bc6d5b78d38)

**Result:**
- ![Before](https://github.com/vic9112/PQC_Falcon/assets/137171415/9f4fb2d3-94a5-4b8d-a182-9fb83e20f56f)

**Conclusion:**
- We can see that IP is 8.53 times faster than the original function

## Utilization on KV260

- CLB Logic
``` txt=
+----------------------------+------+-------+------------+-----------+-------+
|          Site Type         | Used | Fixed | Prohibited | Available | Util% |
+----------------------------+------+-------+------------+-----------+-------+
| CLB LUTs*                  | 5365 |     0 |          0 |    117120 |  4.58 |
|   LUT as Logic             | 4591 |     0 |          0 |    117120 |  3.92 |
|   LUT as Memory            |  774 |     0 |          0 |     57600 |  1.34 |
|     LUT as Distributed RAM |    0 |     0 |            |           |       |
|     LUT as Shift Register  |  774 |     0 |            |           |       |
| CLB Registers              | 6171 |     0 |          0 |    234240 |  2.63 |
|   Register as Flip Flop    | 6171 |     0 |          0 |    234240 |  2.63 |
|   Register as Latch        |    0 |     0 |          0 |    234240 |  0.00 |
| CARRY8                     |  353 |     0 |          0 |     14640 |  2.41 |
| F7 Muxes                   |    3 |     0 |          0 |     58560 | <0.01 |
| F8 Muxes                   |    0 |     0 |          0 |     29280 |  0.00 |
| F9 Muxes                   |    0 |     0 |          0 |     14640 |  0.00 |
+----------------------------+------+-------+------------+-----------+-------+
```

- Block RAM
``` txt=
+-------------------+------+-------+------------+-----------+-------+
|     Site Type     | Used | Fixed | Prohibited | Available | Util% |
+-------------------+------+-------+------------+-----------+-------+
| Block RAM Tile    |    2 |     0 |          0 |       144 |  1.39 |
|   RAMB36/FIFO*    |    0 |     0 |          0 |       144 |  0.00 |
|   RAMB18          |    4 |     0 |          0 |       288 |  1.39 |
|     RAMB18E2 only |    4 |       |            |           |       |
| URAM              |    0 |     0 |          0 |        64 |  0.00 |
+-------------------+------+-------+------------+-----------+-------+
```

- DSP
``` txt=
+----------------+------+-------+------------+-----------+-------+
|    Site Type   | Used | Fixed | Prohibited | Available | Util% |
+----------------+------+-------+------------+-----------+-------+
| DSPs           |   43 |     0 |          0 |      1248 |  3.45 |
|   DSP48E2 only |   43 |       |            |           |       |
+----------------+------+-------+------------+-----------+-------+
```
