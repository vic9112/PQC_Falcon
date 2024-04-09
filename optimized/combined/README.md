# Combining Forward/Inverse FFT & NTT and Share their Memories

## Improvement

- Combine four algorithms(FFT/iFFT/NTT/iNTT) in one hardware (`~/fiFFNTT`)
- Combine two algorithms(FFT/NTT) in one hardware (`~/FFT_NTT`)
- Improve the memory usage by sharing their buffer

### Update:

- Ver1:
  - Replace the multiplication(dividing N) of iFFT to `double_shifter`
  - Initial Interval of `OUTMEMCPY` from **3** to **1**, (total cycles from 3000 to 1000)
  - DSP usage: from **78** to **67** (eliminate the usage of 64-bit floating-multiplication for "dividing N" in iFFT)
- Ver2:
  - Add the `fft_adj` and `fft_mul` mode for falcon's flow
- Ver3:
  - Add C++ code and add double negate function and unroll adj


## Interface Description

- For FFT/iFFT: 
  - Input/Output 64-bit value (type: `double`, fully using the memory with 64-bit data width)
- For NTT/iNTT:
  - Input/Output unsigned 16-bit value. (reuse the first 16-bit of memory)
- See `~/maxi` for more details

## Demonstration (FFT/NTT)

- Include all files under `~/FFT_NTT/jupyter_notebook`
- ![include](https://github.com/vic9112/PQC_Falcon/assets/137171415/58350d74-daaf-48d8-a206-1561a9309e8a)

### Result:

![result](https://github.com/vic9112/PQC_Falcon/assets/137171415/1b97f53f-02b6-4baa-baeb-2487722306fe)

