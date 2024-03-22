# Fast-Fourier Transform Hardware IP

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
| tmp  | AXI-M     | 64-bit| Input a array which used to temporarily store data |
| logn | AXI-Lite  | 32-bit| Coefficient `logn` |


##  Verification on FPGA

### Target board: `xck26-sfvc784-2LV-c` - KV260

### Include files:
- All files in `~/bitstream` and `~/jupyter_notebook`
  - where `f_in.txt`, `g_in` is the test input, `h_out.txt` is the golden output value
  - `compute_pk.bit` is the bitstream, `compute_pk.hwh` is the header (metadata) file for `compute_pk.bit`
  
### Result

