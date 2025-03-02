// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of kernel_mode
//        bit 1~0 - kernel_mode[1:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of s2m_buf_sts
//        bit 0  - s2m_buf_sts[0] (Read)
//        others - reserved
// 0x1c : Control signal of s2m_buf_sts
//        bit 0  - s2m_buf_sts_ap_vld (Read/COR)
//        others - reserved
// 0x28 : Data signal of m2s_buf_sts
//        bit 0  - m2s_buf_sts[0] (Read)
//        others - reserved
// 0x2c : Control signal of m2s_buf_sts
//        bit 0  - m2s_buf_sts_ap_vld (Read/COR)
//        others - reserved
// 0x38 : Data signal of s2mbuf
//        bit 31~0 - s2mbuf[31:0] (Read/Write)
// 0x3c : Data signal of s2mbuf
//        bit 31~0 - s2mbuf[63:32] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of m2sbuf
//        bit 31~0 - m2sbuf[31:0] (Read/Write)
// 0x48 : Data signal of m2sbuf
//        bit 31~0 - m2sbuf[63:32] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of s2m_err
//        bit 1~0 - s2m_err[1:0] (Read)
//        others  - reserved
// 0x54 : Control signal of s2m_err
//        bit 0  - s2m_err_ap_vld (Read/COR)
//        others - reserved
// 0x60 : Data signal of clr_s2m_sts
//        bit 0  - clr_s2m_sts[0] (Read/Write)
//        others - reserved
// 0x64 : reserved
// 0x68 : Data signal of clr_m2s_sts
//        bit 0  - clr_m2s_sts[0] (Read/Write)
//        others - reserved
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL          0x00
#define CONTROL_ADDR_GIE              0x04
#define CONTROL_ADDR_IER              0x08
#define CONTROL_ADDR_ISR              0x0c
#define CONTROL_ADDR_KERNEL_MODE_DATA 0x10
#define CONTROL_BITS_KERNEL_MODE_DATA 2
#define CONTROL_ADDR_S2M_BUF_STS_DATA 0x18
#define CONTROL_BITS_S2M_BUF_STS_DATA 1
#define CONTROL_ADDR_S2M_BUF_STS_CTRL 0x1c
#define CONTROL_ADDR_M2S_BUF_STS_DATA 0x28
#define CONTROL_BITS_M2S_BUF_STS_DATA 1
#define CONTROL_ADDR_M2S_BUF_STS_CTRL 0x2c
#define CONTROL_ADDR_S2MBUF_DATA      0x38
#define CONTROL_BITS_S2MBUF_DATA      64
#define CONTROL_ADDR_M2SBUF_DATA      0x44
#define CONTROL_BITS_M2SBUF_DATA      64
#define CONTROL_ADDR_S2M_ERR_DATA     0x50
#define CONTROL_BITS_S2M_ERR_DATA     2
#define CONTROL_ADDR_S2M_ERR_CTRL     0x54
#define CONTROL_ADDR_CLR_S2M_STS_DATA 0x60
#define CONTROL_BITS_CLR_S2M_STS_DATA 1
#define CONTROL_ADDR_CLR_M2S_STS_DATA 0x68
#define CONTROL_BITS_CLR_M2S_STS_DATA 1
