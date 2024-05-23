# UserDMA for fiFFNTT

## SPEC

| Mode | Tasks |
| ---- | ----- |
| FFT  | Data Length to Kernel: 2049 <br>  - First Data: {27'b0, 01, 00} <br> Data Length back to DMA: 2048 <br> Both send 1024 lower bits [31:0] first then send 1024 upper bits [63:32] |
| iFFT | Data Length to Kernel: 2049 <br>  - First Data: {27'b0, 01, 01} <br> Data Length back to DMA: 2048 <br> Both send 1024 lower bits [31:0] first then send 1024 upper bits [63:32] |
| NTT  | Data Length to Kernel: 1025 <br>  - First Data: {27'b0, 01, 10}  <br> Data Length back to DMA: 1024 |
| iNTT | Data Length to Kernel: 1025 <br>  - First Data: {27'b0, 01, 11}  <br> Data Length back to DMA: 1024 |

## Interface Description
| Configuration Address | Description / Bit select |
| --------------------- | ------------------------ |
| 0x00 | Control signals <br> bit 0  - ap_start (Read/Write/COH) <br> bit 1  - ap_done (Read/COR) <br> bit 2  - ap_idle (Read) <br> bit 3  - ap_ready (Read/COR) |
| 0x10 | Data signal of kernel_mode <br> bit 1~0 - kernel_mode[1:0] (Read/Write) <br> 0: FFT <br> 1: iFFT <br> 2: NTT <br> 3: iNTT |
| 0x18 | Data signal of s2m_buf_sts <br> bit 0  - s2m_buf_sts[0] (Read) |
| 0x1c | Control signal of s2m_buf_sts <br> bit 0  - s2m_buf_sts_ap_vld (Read/COR)|
| 0x28 | Data signal of m2s_buf_sts <br> bit 0  - m2s_buf_sts[0] (Read) |
| 0x2c | Control signal of m2s_buf_sts <br> bit 0  - m2s_buf_sts_ap_vld (Read/COR) |
| 0x38 | Data signal of s2mbuf <br> bit 31~0 - s2mbuf[31:0] (Read/Write) |
| 0x3c | Data signal of s2mbuf <br> bit 31~0 - s2mbuf[63:32] (Read/Write) |
| 0x44 | Data signal of m2sbuf <br> bit 31~0 - m2sbuf[31:0] (Read/Write) |
| 0x48 | Data signal of m2sbuf <br> bit 31~0 - m2sbuf[63:32] (Read/Write) |
| 0x50 | Data signal of s2m_err <br> bit 1~0 - s2m_err[1:0] (Read) |
| 0x54 | Control signal of s2m_err <br> bit 0  - s2m_err_ap_vld (Read/COR) |
