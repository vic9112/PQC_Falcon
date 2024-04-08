# FFT_NTT with AXI-Master

## Interface Description

| Address | Description / Bit select |
| ------- | ------------------------ |
| `0x00` | Control signals <br> bit 0  - ap_start (Read/Write/COH) <br> bit 1  - ap_done (Read/COR) <br> bit 2  - ap_idle (Read) <br> bit 3  - ap_ready (Read/COR) <br> bit 7  - auto_restart (Read/Write) <br> bit 9  - interrupt (Read) <br> others - reserved |
| `0x04` | Global Interrupt Enable Register <br> bit 0  - Global Interrupt Enable (Read/Write) <br> others - reserved |
| `0x08` | IP Interrupt Enable Register (Read/Write) <br> bit 0 - enable ap_done interrupt (Read/Write) <br> bit 1 - enable ap_ready interrupt (Read/Write) <br> others - reserved |
| `0x0c` | IP Interrupt Status Register (Read/COR) <br> bit 0 - ap_done (Read/COR) <br> bit 1 - ap_ready (Read/COR) <br> others - reserved |
| `0x10` | Data signal of in <br> bit 31~0 - in[31:0] (Read/Write) |
| `0x14` | Data signal of in <br> bit 31~0 - in[63:32] (Read/Write) |
| `0x18` | reserved|
| `0x1c` | Data signal of mode <br> bit 0  - mode[0] (Read/Write) <br> others - reserved |



