import numpy as np
# ================== PYNQ Library ====================
from pynq import Overlay
from pynq import allocate

ol = Overlay("FFT_iFFT.bit")
ipFFT = ol.FFT_0
ipiFFT = ol.iFFT_0

# Memory allocate
inBufferFFT = allocate(shape=(1024,), dtype=np.float64)
inBufferiFFT = allocate(shape=(1024,), dtype=np.float64)

# ============= Set Kernel Argument ==============
# control
# 0x00 : Control signals
#        bit 0  - ap_start (Read/Write/COH)
#        bit 1  - ap_done (Read/COR)
#        bit 2  - ap_idle (Read)
# 0x10 : Data signal of f
#        bit 31~0 - f[31:0] (Read/Write)
# 0x14 : Data signal of f
#        bit 31~0 - f[63:32] (Read/Write)
# 0x1c : Data signal of logn
#        bit 31~0 - logn[31:0] (Read/Write)
ipFFT.write(0x10, inBufferFFT.device_address)

ipiFFT.write(0x10, inBufferiFFT.device_address)
