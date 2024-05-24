# Combining Forward/Inverse FFT & NTT and Share their Memories

## Improvement

- Combine four algorithms(FFT/iFFT/NTT/iNTT) in one hardware (`~/fiFFNTT`)
- Combine two algorithms(FFT/NTT) in one hardware (`~/FFT_NTT`)
- Improve the memory usage by sharing their buffer

### Update:

- Ver1:
  - Replace the multiplication(dividing N) of iFFT to `double_shifter`
  - Initial Interval of `OUTMEMCPY` from **3** to **1**, (total cycles from 3000 to 1000)
  - DSP usage: from **78** to **67** (eliminate the usage of DSP in 64-bit floating-multiplication for "dividing N" in iFFT)
- Ver2:
  - Add the `fft_adj` and `fft_mul` mode for falcon's flow
- Ver3:
  - Add C++ code and add double negate function and unroll negate of fft_adj
- Ver4:
  - Delete negate of fft_adj unroll
  - let dadd and dmul use LUT (default use dsp)
- Ver5:
  - Use only one buffer for in/out (inplace buffer)
  - Re-construct the code structure
- Ver6:
  - share the adder of FFT/iFFT/NTT/iNTT (20000 cycles)
- Ver7:
  - Some unfixed issues
- Ver8:
  - Share the multiplier of FFT/iFFT/NTT/iNTT
  - Control the lantecy to approximately 10000 cycles
- Ver9:
  - Create a wrapper for falcon flows which includes fiFFNTT
  - Change the interface signals (input buffer, mode select(6 modes))
  - See under `~/fiFFNTT_ver9/ip/drivers/top_v1_0/src/xtop_hw.h` or `~/fiFFNTT_ver9/hls_code/fiFFNTT_wrapper.cpp` for more details about interface signals
  - See under `~/fiFFNTT_ver9` for synthesis report & co-simulation log file/report
  
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

