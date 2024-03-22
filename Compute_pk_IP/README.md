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
| tmp  | AXI-M     | 64-bit| Input a array which used to temporarily store data |
| logn | AXI-Lite  | 32-bit| Coefficient `logn` |


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
- Jupyter notebook `~/jupyter_notebook/test_ip_on_falconipynb`
- Python source code `~/python`
  ![files](https://github.com/vic9112/PQC_Falcon/assets/137171415/1b7be2b5-ae7c-4233-a2bc-f5306c0db19d)
  
#### Result
- ![result](https://github.com/vic9112/PQC_Falcon/assets/137171415/93a67df1-860e-4d3e-bb26-cfc08b2da983)


