# Combine FFT & NTT and Share the Memory

## Improvement

- Combine two algorithms(FFT/NTT) in one hardware
- Improve the memory usage by sharing their buffer

## Interface Description

- For FFT: 
  - Input/Output 64-bit value (type: `double`, fully using the memory with 64-bit data width)
- For NTT:
  - Input/Output unsigned 16-bit value. (reuse the first 16-bit of memory)
- See `~/maxi` for more details

## Demonstration

- Include all files under `~/jupyter_notebook`

### Result:

![result](https://github.com/vic9112/PQC_Falcon/assets/137171415/1b97f53f-02b6-4baa-baeb-2487722306fe)



