# Simulation:
if you want to run simulation
```
cd vivado
./run_vivado_fsic_sim
```
## 可以更改testbench來做FFT/IFFT/NTT/INTT
結果會產生log file
注意FFT iFFT可以經由 https://jupyter.org/try-jupyter/lab/ 來寫python code 轉換:

``` python
import struct
hex_value_to_double = "your test hex"
int_value_to_double = int(hex_value_to_double, 16)
double_value_converted = struct.unpack('>d', int_value_to_double.to_bytes(8, byteorder='big'))[0]
print(double_value_converted)

```

# FSM design:
本次設計放在uspj2

跑完一種大約需要10分鐘，為了方面你們加快dma simulation，可以自行更改FSM來減少時間。


# testbench design:
## 想要看wv，可以把tb中註解拿掉:

![image](https://github.com/vic9112/PQC_Falcon/assets/145022311/c41d1dcb-02f8-487c-91e8-7ec1e2b0bb73)

注意要設成正確的路徑

## tb dma setting:
對應下面的spec 

![image](https://github.com/vic9112/PQC_Falcon/assets/145022311/417f8539-130c-41ca-8477-48ea35de2cdc)

## loading dma setting 
在NTT跟INTT因為只有16 bit所以在給入時我們要每次增加8bytes。

![image](https://github.com/vic9112/PQC_Falcon/assets/145022311/f61ed847-df74-4246-a60f-0a486ab1b014)


# UserDMA for fiFFNTT

## SPEC

| Mode | Tasks |
| ---- | ----- |
| FFT  | Data Length to Kernel: 2049 <br>  - First Data: {27'b0, 01, 00} <br> Data Length back to DMA: 2048 <br> Both send lower bits [31:0] first then send upper bits [63:32], for 1024 times |
| iFFT | Data Length to Kernel: 2049 <br>  - First Data: {27'b0, 01, 01} <br> Data Length back to DMA: 2048 <br> Both send lower bits [31:0] first then send upper bits [63:32], for 1024 times |
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
